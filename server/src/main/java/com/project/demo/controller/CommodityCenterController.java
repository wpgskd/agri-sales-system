package com.project.demo.controller;

import com.project.demo.entity.CommodityCenter;
import com.project.demo.service.CommodityCenterService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.*;


/**
 * 商品中心：(CommodityCenter)表控制层
 *
 */
@RestController
@RequestMapping("/commodity_center")
public class CommodityCenterController extends BaseController<CommodityCenter, CommodityCenterService> {

    /**
     * 商品中心对象
     */
    @Autowired
    public CommodityCenterController(CommodityCenterService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }
    /**
     * 协同过滤算法
     */
    public class UserBasedCF {
        private Map<Integer, Map<Integer, Double>> userRatings; // 用户点击数据
        private Map<Integer, Set<Integer>> itemByUser; // 物品被哪些用户点击过
        private Map<Integer, Double> itemAverageRating; // 物品平均得分

        public UserBasedCF(Map<Integer, Map<Integer, Double>> userRatings) {
            this.userRatings = userRatings;
            itemByUser = new HashMap<>();
            itemAverageRating = new HashMap<>();

            // 遍历用户点击数据，并根据物品统计出物品所被哪些用户点击过以及物品的平均得分
            for (int userId : userRatings.keySet()) {
                Map<Integer, Double> ratings = userRatings.get(userId);
                for (int itemId : ratings.keySet()) {
                    if (!itemByUser.containsKey(itemId)) {
                        itemByUser.put(itemId, new HashSet<>());
                    }
                    itemByUser.get(itemId).add(userId);
                }
            }

            for (int itemId : itemByUser.keySet()) {
                Set<Integer> users = itemByUser.get(itemId);
                double totalRating = 0.0;
                for (int userId : users) {
                    totalRating += userRatings.get(userId).get(itemId);
                }
                itemAverageRating.put(itemId, totalRating / users.size());
            }
        }

        // 给定用户和最大推荐数，返回推荐的物品列表
        public List<Integer> recommendItems(int userId, int numItems) {
            PriorityQueue<ItemScore> topItems = new PriorityQueue<ItemScore>(numItems); // 定义一个最小堆，用于排序

            Set<Integer> ratedItems = userRatings.get(userId).keySet(); // 获取用户已评分物品列表

            // 遍历所有物品，并针对没有被用户点击过的物品计算预测得分值
            for (int itemId : itemByUser.keySet()) {
                if (ratedItems.contains(itemId)) { // 如果该物品已经被用户点击过，则跳过
                    continue;
                }

                // 对每个未点击的物品进行预测分数计算
                Set<Integer> users = itemByUser.get(itemId);
                double weightedSum = 0.0; // 权重总和
                double similaritySum = 0.0; // 相似度总和

                for (int otherUserId : users) {
                    if (otherUserId == userId) { // 如果是当前用户，则跳过
                        continue;
                    }

                    double similarity = calculateSimilarity(userId, otherUserId); // 计算两个用户之间的相似度
                    double rating = userRatings.get(otherUserId).get(itemId); // 获取其他用户对该物品的点击
                    weightedSum += similarity * (rating - itemAverageRating.get(itemId)); // 加权累加
                    similaritySum += similarity; // 相似度累加
                }

                if (similaritySum == 0.0) { // 如果相似度为0，则跳过
                    continue;
                }

                double predictedRating = itemAverageRating.get(itemId) + weightedSum / similaritySum; // 预测评分值

                topItems.offer(new ItemScore(itemId, predictedRating)); // 将预测评分值加入最小堆

                while (topItems.size() > numItems) { // 如果最小堆的大小大于numItems，则弹出最小的一个
                    topItems.poll();
                }
            }

            // 最后，将所有推荐项从最小堆中弹出并逆序存入List中，并返回该列表
            List<Integer> recommendedItems = new ArrayList<>();
            ItemScore itemScore;
            while ((itemScore = topItems.poll()) != null) {
                recommendedItems.add(itemScore.itemId);
            }
            Collections.reverse(recommendedItems);
            return recommendedItems;
        }

        // 计算两个用户之间的相似度
        private double calculateSimilarity(int userId1, int userId2) {
            Map<Integer, Double> ratings1 = userRatings.get(userId1); // 用户1的点击情况
            Map<Integer, Double> ratings2 = userRatings.get(userId2); // 用户2的点击情况
            double dotProduct = 0.0; // 向量点积
            double magnitude1 = 0.0; // 向量1的模
            double magnitude2 = 0.0; // 向量2的模

            for (int itemId : ratings1.keySet()) { // 遍历用户1点击过的物品
                if (ratings2.containsKey(itemId)) { // 如果用户2也点击了这个物品，则进行运算
                    dotProduct += ratings1.get(itemId) * ratings2.get(itemId); // 点积累加
                }
                magnitude1 += Math.pow(ratings1.get(itemId), 2); // 向量1模累加
            }

            for (int itemId : ratings2.keySet()) { // 遍历用户2点击过的物品
                magnitude2 += Math.pow(ratings2.get(itemId), 2); // 向量2模累加
            }

            if (magnitude1 == 0.0 || magnitude2 == 0.0) { // 如果向量模为0，则相似度为0
                return 0.0;
            }

            return dotProduct / Math.sqrt(magnitude1 * magnitude2); // 返回两个向量之间的余弦相似度
        }

        private class ItemScore implements Comparable<ItemScore> {
            public int itemId; // 物品ID
            public double score; // 物品得分

            public ItemScore(int itemId, double score) {
                this.itemId = itemId;
                this.score = score;
            }

            @Override
            public int compareTo(ItemScore other) {
                return Double.compare(score, other.score);
            }
        }
    }
    @RequestMapping("/get_hits_list")
    public Map<String, Object> getHits(HttpServletRequest request) {
        Map<String, String> paramMap = service.readQuery(request);
        if (paramMap.get("user_id") == null || paramMap.get("user_id").equals("")) {
            return this.getList(request);
        } else {
            String hitsCountSql = "SELECT COUNT( hits_id ) AS hits_count, source_id FROM hits WHERE source_table = 'commodity_center' AND user_id = " + paramMap.get("user_id") + " GROUP BY source_id";
            String maxHitsCountSql = "SELECT t1.source_id FROM ( " + hitsCountSql + " ) t1 ORDER BY hits_count DESC LIMIT 0,1";
            String typeSql = "SELECT product_type FROM commodity_center WHERE commodity_center_id = ( " + maxHitsCountSql + " )";
            String productListSql = "SELECT * FROM commodity_center WHERE product_type = ( " + typeSql + " )";
            String sql = productListSql + " ORDER BY hits DESC LIMIT 0,4";
            Query select = service.runEntitySql(sql);
            Map<String, Object> map = new HashMap<>();
            map.put("list", select.getResultList());
            map.put("count", select.getResultList().size());
            return success(map);
        }
    }

}

