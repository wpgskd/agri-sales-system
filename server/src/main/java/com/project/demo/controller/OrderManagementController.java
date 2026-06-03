package com.project.demo.controller;

import com.project.demo.entity.OrderManagement;
import com.project.demo.service.OrderManagementService;
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
 * 订单管理：(OrderManagement)表控制层
 *
 */
@RestController
@RequestMapping("/order_management")
public class OrderManagementController extends BaseController<OrderManagement, OrderManagementService> {

    /**
     * 订单管理对象
     */
    @Autowired
    public OrderManagementController(OrderManagementService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        String sql = "SELECT MAX(order_management_id) AS max FROM "+"`order_management`";
        Query select = service.runCountSql(sql);
        Integer max = (Integer) select.getSingleResult();
        sql = ("SELECT count(*) count FROM `commodity_center` INNER JOIN `order_management` ON commodity_center.item_number=order_management.item_number WHERE commodity_center.commodity_inventory < order_management.purchase_quantity AND order_management.order_management_id="+max).replaceAll("&#60;","<");
        select = service.runCountSql(sql);
        Integer count = Integer.valueOf(String.valueOf(select.getSingleResult()));
        if(count>0){
            sql = "delete from "+"order_management"+" WHERE "+"order_management_id"+" ="+max;
            select = service.runCountSql(sql);
            select.executeUpdate();
            return error(30000,"库存不足!");
        }
        sql = "UPDATE `commodity_center` INNER JOIN `order_management` ON commodity_center.item_number=order_management.item_number SET commodity_center.commodity_inventory= commodity_center.commodity_inventory - order_management.purchase_quantity WHERE order_management.order_management_id="+max;
        select = service.runCountSql(sql);
        select.executeUpdate();
        return success(1);
    }

}
