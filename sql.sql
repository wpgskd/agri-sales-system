/*
 Navicat Premium Dump SQL

 Source Server         : MySQL 5.7
 Source Server Type    : MySQL
 Source Server Version : 50714 (5.7.14-log)
 Source Host           : localhost:3306
 Source Schema         : cs_76702

 Target Server Type    : MySQL
 Target Server Version : 50714 (5.7.14-log)
 File Encoding         : 65001

 Date: 13/11/2025 17:11:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_token
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token`  (
  `token_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '临时访问牌',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `maxage` int(2) NOT NULL DEFAULT 2 COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登陆访问时长' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO `access_token` VALUES (57, '5accf85cb6a7f06f0aa2968deadaec1b', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (58, '46ff1d4d07714f046ba07b34bffe0af9', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (59, 'ed9d6cba9826fda1beafcd9326be7a86', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (60, 'c99763c1833ea0785d9e2b81da3fd28f', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (61, '33fbfaccd6d1cb9143e4129bd919d4b0', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (62, '493e13da5f293ba67a56a0fe3e1fa6cf', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (63, 'c4b48e9e2160db09c703041a8fee0a1f', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (64, 'd13cdaefd3823c360c959a02a262f71d', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (65, '6c6ff426fd77ea5a2025ce5ed2e42c8a', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (66, '80930065a61ffcdd5cbb75f60932973c', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (67, '94114763cf2e3b020495d8a27096d4ef', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (68, '761052c551c97c9317bc3aa475c85b84', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (69, '7c44ef14131a0ba7c16aa16cef104065', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (70, '96380f3d9542c80d04bdade1cf7635a5', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (71, 'bfdc7acfcbf5763fda81945b60961222', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (72, '170a598e51ae8ae2badde20a42fe171d', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (73, 'c82c357488c75926a92d8a9608d4b367', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (74, '4d35290c023f407a820f37dbbb1ceb09', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (75, '8d19162776682b695c0f62f3c7a92fec', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (76, 'a7ea2cdc9a2be179e19200e593ad5a69', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (77, 'c79a554f9832adc01f19682c5d576bc4', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (78, '1c7d95001fa09951a679841c8100ad1f', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (79, '776da1bcdd01ddb3cbf0a37fa13fc5b0', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (80, 'd336e88e57c329d0166931292c1fac41', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (81, '37a40f526a6c82fc6110b512802d35bf', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (82, '691ad331771f4109206d58aeee572371', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (83, '9942e458886219960d3344b4a6a6fbec', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (84, 'e9939a8b7ccf9f548f0bbb5664981f96', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (85, 'f5b27912060d1909bef61fab9d96faae', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (86, '7c5888682f1d449eb1b62f0054a79fbf', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (87, '00dfdc6ac21c4a9da80fd71c990764d1', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (88, '3cce592bc72840ab932ce96d85a194da', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (89, '43fdaa989a644ad683ef4b4d488e8629', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (90, 'd6a3cecadacff0dbd6b43b25372cc2a2', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (91, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (92, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (93, '26c553bd2ee2ab6605d18dfd310d85f9', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (94, '3fd52f81236ed2c37ff91a6696d4e47a', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (95, '893332e9ee67d60d8312b3700c58a359', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (96, 'b7844068ade535b2e517df4a40948703', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (97, '179b37a5e1893c3af6b946bd5a1c8625', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (98, '3a47b8a040a83ebbc9194cb255dc668c', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (99, 'afa60196afb77dcc2b520ed13a817560', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (100, '7fc6d9b324f8c0a3a1784d04ef132692', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (101, '84e31b291f2bde6b7ceb27af5fe8eee3', NULL, 2, '2026-05-30 18:21:49', '2026-05-30 18:21:49', 1);
INSERT INTO `access_token` VALUES (102, '0ada3454d2ff4d2f9245e2d060e360cc', NULL, 2, '2025-11-13 15:34:44', '2025-11-13 15:34:44', 1);
INSERT INTO `access_token` VALUES (114, '74719d0aa77a4019a0436dbc0ee236d2', NULL, 2, '2025-11-13 17:08:27', '2025-11-13 17:08:27', 2);
INSERT INTO `access_token` VALUES (109, '228a1a4d02cd4d63b00cf643a72502fe', NULL, 2, '2025-11-13 16:57:13', '2025-11-13 16:57:13', 2);
INSERT INTO `access_token` VALUES (110, 'c63dd6e204724a7aba81f7a0dd512334', NULL, 2, '2025-11-13 17:00:56', '2025-11-13 17:00:56', 2);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文：文章的主体内容',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面图',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章描述',
  PRIMARY KEY (`article_id`, `title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章：用于内容管理系统的文章' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '青海绿色、有机和地理标志农产品数量累计认证1015个', '农产品', 58, 1, '2026-05-25 16:54:11', '2025-11-13 17:01:41', NULL, NULL, NULL, '<p>青藏高原，雪域净土，近年来，青海省蓄力打造绿色有机农畜产品输出地，农畜产品生产绿色有机基础不断夯实。</p><p><br></p><p>2022年，青海省坚持质量兴农、绿色兴农、品牌强农方针，全省绿色、有机、地标农产品认证稳步增长。截至目前，青海省累计认证绿色食品、有机农产品和农产品地理标志产品共1015个，其中，绿色食品（含绿色食品生产资料）572个，有机农产品366个，有机认证环境监测面积达到1.025亿亩，地理标志农产品77个。</p><p><br></p><p>青海省农业农村系统有序开展绿色食品原料标准化基地建设，全省累计创建马铃薯、油菜、枸杞、燕麦等全国绿色食品标准化原料基地8个，绿色食品标准化原料（油菜、青稞）基地创建期基地1个，面积8.5万亩；累计创建河南、甘德、久治、祁连和泽库等5个全国有机农产品（牦牛、藏羊）基地，面积达5007.28万亩。完成绿色食品生产企业45家，有机产品生产企业6家，地理标志农产品生产主体11家认证补助250万元。</p><p><br></p><p>下一步，青海省农业农村厅将持续实行省级例行监测、风险监测、监督抽查、检测机构资质双认证等监管制度，进一步加大绿色食品、有机农产品认证和农产品地理标志登记保护力度，增加安全优质、绿色有机农畜产品供给，打造一批标准引领高质量发展的示范典型，不断夯实农畜产品生产绿色有机基础。</p>', '/api/upload/1612367613227171841.jpg', NULL);
INSERT INTO `article` VALUES (2, '广西：2天调配105吨农产品助力百色抗疫', '农产品', 113, 0, '2026-05-25 16:54:11', '2025-11-13 15:30:42', NULL, NULL, NULL, '<p class=\"ql-align-justify\">央广网南宁2月15日消息（记者唐志强 通讯员李素芳）百色疫情发生以来，广西迅速对百色市12个县（市、区）的生活物资市场供应和价格情况进行监测，高效有序开展组织、储备、调运工作。2月13日至2月14日，在南宁国际铁路港，一批由广西壮族自治区商务厅牵头组织采购回来的新鲜蔬菜发往百色。这批物资包括90吨蔬菜、15吨肉类，并设立农产品质量安全快速检测点对蔬菜产品进行质量安全检测。</p><p class=\"ql-align-justify\">南宁国际铁路港工作人员在搬物资（央广网发 雷琦竣 摄）</p><p class=\"ql-align-justify\">广西农产品质量检测创新联盟工作人员在对蔬菜进行采样（央广网发 雷琦竣 摄）</p><p class=\"ql-align-justify\">广西农业农村厅组织指导广西农产品质量检测创新联盟等单位靠前服务、送检上门，为供应百色农产品提供农产品质量安全免费检测，确保供给百色的农产品供应稳定、质量安全。南宁海关技术中心是广西农产品质量检测创新联盟理事单位，该中心副主任罗兆飞说：“为了保证供应百色的农产品能够快速到达市民手中，我们技术团队采用快速检测的方法对农产品开展检测，24小时待命，随到随检，确保农产品能够让老百姓吃得放心、安全、健康。”</p><p class=\"ql-align-justify\">百色农产品质量安全快速检测点质量检测员对土豆进行检测（央广网发 雷琦竣 摄）</p><p class=\"ql-align-justify\">据悉，本次供应百色的蔬菜物资包括土豆、萝卜、白菜以及卷筒青，2月14日12时，该批物资的蔬菜质量快检工作全部完成，检测结果全部合格。</p><p><br></p>', '/api/upload/1587736716037324800.jpg', NULL);
INSERT INTO `article` VALUES (3, '广西百色番茄上市 产量预计达100万吨', '农产品', 810, 0, '2026-05-25 16:54:11', '2026-05-25 16:54:11', NULL, NULL, NULL, '<p class=\"ql-align-justify\">		<a href=\"http://www.gxnews.com.cn/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(89, 87, 87);\">广西新闻网</a>百色10月25日讯（通讯员 欧丽萍）近日，在百色市田阳区农产品批发市场内，一辆辆装满番茄的小货车整齐排列在分拣场门口等待卸货，分拣场内，从货车上被卸下来的番茄通过自动清洗机、分拣机，最后被工人们装箱、打包、送入冷库，等待运往全国各地市场。每年的这个时候，在百色市的右江河谷秋冬菜主产区以番茄为主打品种的百色秋冬菜远销北京、吉林、河北等城市，每年外销蔬菜约200万吨，占总产量60%，销售基本实现“立足广西、辐射全国”。</p><p class=\"ql-align-center\"><img src=\"https://static.gxrb.com.cn/image/uploadpic/20221025/295c4d68eefceab7c6a4c6c73ffb213d_wm576c.png\"></p><p class=\"ql-align-center\"><span style=\"color: rgb(0, 68, 221);\">田阳区番茄生产基地。通讯员供图</span></p><p class=\"ql-align-justify\">	百色市是全国重要的“南菜北运”基地。2021年全市秋冬菜种植面积约130万亩，产量280万吨以上，其中，百色番茄作为外销的秋冬蔬菜主打产品，种植面积30.51万亩，产量85.43万吨。今年百色番茄将在面积基本稳定的基础上实现单产的大幅度提高，预计产量将达到100万吨以上。</p><p class=\"ql-align-center\"><img src=\"https://static.gxrb.com.cn/image/uploadpic/20221025/e4b48e7b86195e02d0080633fbe3d133_wm53c6.png\"></p><p class=\"ql-align-center\"><span style=\"color: rgb(0, 68, 221);\">田阳区农副产品批发市场一角。通讯员供图</span></p><p class=\"ql-align-justify\">	百色番茄于2015年获得农产品地理标志保护产品，每年上市时间为10月中旬至翌年4月底。产业发展以家庭型经营为主，规模化、产业化水平得到逐步提高，其中连片种植1000亩以上的基地有28个，500亩以上的有6个，50亩以上有29个。由于今年气候适宜，全市番茄得以提早种植，10月中旬已有部分产品陆续采收上市，其中小番茄品种主要有：大粉，秋粉，牛眼，猪眼，红妃6号，千禧，金币，大番茄品种主要有:罗拉，欧拉，拉菲尔等，都是多年以来各地采购商青睐的好品种。</p><p class=\"ql-align-center\"><img src=\"https://static.gxrb.com.cn/image/uploadpic/20221025/0d87a5f546b14cf1a14ac6b0d1005a13_wm6abe.jpg\"></p><p class=\"ql-align-center\"><span style=\"color: rgb(0, 68, 221);\">田阳区农副产品批发市场内，百色番茄正在过秤、分拣、打包。通讯员供图</span></p><p class=\"ql-align-justify\">	据介绍，百色番茄产业已经成为实现百色市农民收入倍增的重要支柱产业，以百色番茄为代表的百色秋冬菜将一如既往地以物美价廉的“百色形象”期待各地客商再次云集百色，共赴一年一度的“美丽约定”。</p><p><br></p>', '/api/upload/1587736157347643392.jpg', NULL);
INSERT INTO `article` VALUES (4, '广西国家级农产品地理标志（百色芒果）', '农产品', 685, 0, '2026-05-25 16:54:11', '2026-05-25 16:54:11', NULL, NULL, NULL, '<p>2015年7月25日，广西国家级农产品地理标志（百色芒果）示范样板基地在田东揭牌。2016年8月，农业部农产品质量安全中心组对“百色芒果”国家级农产品地理标志示范样板创建工作进行了验收。经过综合评定，验收工作组一致同意“百色芒果”通过国家级农产品地理标志示范样板创建验收，被农业部授予“国家级农产品地理标志示范样板”称号。</p><p>为进一步提升百色芒果品牌的知名度、影响力和市场占有率，发挥其在我市助农增收和经济社会发展中的作用，我市充分利用右江河谷资源发展独具特点的绿色、生态、健康的芒果产品，打造“百色芒果”统一品牌，提高百色芒果的知名度和美誉度。</p><p>多年来，我市紧紧抓住百色芒果国家级农产品地理标志示范样板基地创建这个契机，注重规划引领与扩大规模，制订并出台了一系列工作方案，不断提高芒果生产规模化、集约化、标准化、品牌化水平。2017年，百色芒果成为全国百强农产品区域品牌；2019年，百色芒果成为中国农业品牌目录产品，成功入围2019中国农业品牌目录产品百强榜；2020年，百色芒果成为中欧地理标志互认农产品；2021年，百色芒果获批建设国家优势特色农业产业集群，为百色芒果产业升级和高质量发展提供了新的契机。</p><p>截至2021年年底，百色芒果总种植面积超过136万亩，当年产量超90万吨。预计2022年百色芒果产量将达100万吨，首次实现面积、产量“双破百”的目标，百色芒果产业已经成为我市农民收入倍增的重要支柱产业。</p>', '/api/upload/1587736522356948992.jpg', NULL);
INSERT INTO `article` VALUES (5, '广西各地踊跃参与国家农产品质量安全县创建', '农产品', 758, 0, '2026-05-25 16:54:11', '2026-05-25 16:54:11', NULL, NULL, NULL, '<p class=\"ql-align-justify\">	广西新闻网南宁10月24日讯（记者 蓝于涵 通讯员 尤凤至）自国家农产品质量安全县创建活动开展以来，广西各地踊跃参与、积极创建，取得了显著成效，现已成功创建10个国家农产品质量安全县，分别是：桂林市平乐县、贺州市富川县、南宁市武鸣区、贺州市钟山县、桂林市全州县、防城港东兴市、桂林市恭城县、来宾市武宣县、百色市田阳区、河池市南丹县。</p><p class=\"ql-align-justify\">	目前第三批国家农产品质量安全县正在创建中。据介绍，国家农产品质量安全县创建活动进一步加强了农产品质量安全监管，提升农产品质量安全水平，保障人民群众舌尖上的安全。</p><p><span style=\"color: rgb(153, 153, 153);\">平乐县以创建“国家农产品质量安全县”为抓手，严格落实“四个最严”总要求，在区、市上级业务部门的指导帮助下，按照构建“政府负总责、县乡有机构、监管到村屯、经费有保障、检测全覆盖”的工作机制，精心部署，狠抓落实，全面提升了全县农产品质量安全水平。图为桂林市平乐县沙子镇渡河村农民在晾晒柿子。黄孝邦</span></p>', '/api/upload/1587736356560306177.jpg', NULL);
INSERT INTO `article` VALUES (6, '青海省名特优新农产品实现零突破', '农产品', 553, 0, '2026-05-25 16:54:11', '2026-05-25 16:54:11', NULL, NULL, NULL, '<p>12月11日，记者从青海省绿色有机农产品推广服务中心获悉，据农业农村部农产品质量安全中心发布的《2022年第一批全国名特优新农产品公示》和《2022年第三批全国名特优新农产品公示》显示，我省5种农产品符合“全国名特优新农产品”登录要求，纳入“全国名特优新农产品”名录，并核发全国名特优新农产品证书。至此，我省名特优新农产品实现零的突破。</p><p><br></p><p>全国名特优新农产品是在特定区域内生产、具备一定生产规模和商品量、具有显著地域特征和独特营养品质特色、有稳定的供应量和消费市场、公众认知度和美誉度高，并经农业农村部农产品质量安全中心登录公告和核发证书的农产品，其内涵是安全、优质、营养、健康，入选的产品可在产品包装上标注“全国名特优新农产品”字样。</p><p>近年来，省绿色有机农产品推广服务中心依托资源优势，立足特色特产，按照质量兴农、品牌强农战略，指导企业、农民专业合作社和行业协会着力培育和打造名特优新农产品，为我省筛选、培育地方特色农产品品牌，助力青海绿色有机农畜产品输出地建设。截至目前，我省玉树扎什加羊、玉树牦牛、玉树黑青稞、都兰藏羊肉、都兰牦牛肉5种农产品、49家生产经营单位进入全国名特优新农产品名录。</p>', '/api/upload/1612365256787492864.jpg', NULL);

-- ----------------------------
-- Table structure for article_type
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type`  (
  `type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) UNSIGNED NOT NULL DEFAULT 100 COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '分类图标：',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of article_type
-- ----------------------------
INSERT INTO `article_type` VALUES (1, 100, '农产品', 0, NULL, NULL, NULL, '2026-05-25 16:54:11', '2026-05-25 16:54:11');

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`  (
  `auth_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可增加：',
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可删除：',
  `set` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可修改：',
  `get` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可查看：',
  `field_add` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '添加字段：',
  `field_set` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '修改字段：',
  `field_get` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '查询字段：',
  `table_nav_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跨表导航：',
  `option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES (1, '管理员', '注册用户', 'registered_users', '注册用户', '/registered_users/table', '', '_blank', 1, 1, 1, 1, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (2, '管理员', '注册用户', 'registered_users', '注册用户详情', '/registered_users/view', '', '_blank', 1, 1, 1, 1, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (3, '管理员', '商家用户', 'merchant_users', '商家用户', '/merchant_users/table', '', '_blank', 1, 1, 1, 1, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (4, '管理员', '商家用户', 'merchant_users', '商家用户详情', '/merchant_users/view', '', '_blank', 1, 1, 1, 1, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (5, '管理员', '商品分类', 'commodity_classification', '商品分类', '/commodity_classification/table', '', '_blank', 1, 1, 1, 1, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (6, '管理员', '商品分类', 'commodity_classification', '商品分类详情', '/commodity_classification/view', '', '_blank', 1, 1, 1, 1, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (7, '管理员', '商品中心', 'commodity_center', '商品中心', '/commodity_center/table', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_show_comment\":true}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (8, '管理员', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/view', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (9, '管理员', '商品中心', 'commodity_center', '商品中心', '/commodity_center/list', 'top', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (10, '管理员', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/details', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_comment\":true,\"can_show_comment\":true}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (11, '管理员', '订单管理', 'order_management', '订单管理', '/order_management/table', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{\"figure\":true,\"pay\":true}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (12, '管理员', '订单管理', 'order_management', '订单管理详情', '/order_management/view', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (13, '管理员', '订单管理', 'order_management', '订单管理', '/order_management/edit', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (14, '管理员', '销售数据', 'sales_data', '销售数据', '/sales_data/table', '', '_blank', 1, 1, 1, 1, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{\"figure\":true}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (15, '管理员', '销售数据', 'sales_data', '销售数据详情', '/sales_data/view', '', '_blank', 1, 1, 1, 1, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (16, '管理员', '我的收藏', 'collect', '我的收藏', '/collect/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (17, '管理员', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (18, '管理员', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (19, '管理员', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (20, '管理员', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (21, '管理员', '新闻', 'article', '新闻资讯', '/article/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{\"print\":true,\"export_db\":true,\"import_db\":true}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (22, '管理员', '新闻', 'article', '新闻资讯', '/article/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{\"print\":true}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (23, '管理员', '新闻', 'article', '新闻资讯', '/article/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (24, '管理员', '新闻', 'article', '新闻资讯', '/article/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{\"can_comment\":true,\"can_show_comment\":true}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (25, '管理员', '新闻分类', 'article_type', '新闻分类列表', '/article_type/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (26, '管理员', '新闻分类', 'article_type', '新闻分类详情', '/article_type/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (27, '管理员', '公告', 'notice', '公告列表', '/notice/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (28, '管理员', '公告', 'notice', '公告详情', '/notice/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (29, '管理员', '公告', 'notice', '公告信息', '/notice/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (30, '管理员', '公告', 'notice', '公告详情', '/notice/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (31, '游客', '注册用户', 'registered_users', '注册用户', '/registered_users/table', '', '_blank', 1, 0, 0, 0, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (32, '游客', '注册用户', 'registered_users', '注册用户详情', '/registered_users/view', '', '_blank', 1, 0, 0, 0, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (33, '游客', '商家用户', 'merchant_users', '商家用户', '/merchant_users/table', '', '_blank', 0, 0, 0, 0, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (34, '游客', '商家用户', 'merchant_users', '商家用户详情', '/merchant_users/view', '', '_blank', 0, 0, 0, 0, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (35, '游客', '商品分类', 'commodity_classification', '商品分类', '/commodity_classification/table', '', '_blank', 0, 0, 0, 0, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (36, '游客', '商品分类', 'commodity_classification', '商品分类详情', '/commodity_classification/view', '', '_blank', 0, 0, 0, 0, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (37, '游客', '商品中心', 'commodity_center', '商品中心', '/commodity_center/table', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_show_comment\":false}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (38, '游客', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/view', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (39, '游客', '商品中心', 'commodity_center', '商品中心', '/commodity_center/list', 'top', '_blank', 0, 0, 0, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (40, '游客', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/details', '', '_blank', 0, 0, 0, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_comment\":false,\"can_show_comment\":false}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (41, '游客', '订单管理', 'order_management', '订单管理', '/order_management/table', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{\"figure\":false,\"pay\":false}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (42, '游客', '订单管理', 'order_management', '订单管理详情', '/order_management/view', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{}', '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `auth` VALUES (43, '游客', '订单管理', 'order_management', '订单管理', '/order_management/edit', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (44, '游客', '销售数据', 'sales_data', '销售数据', '/sales_data/table', '', '_blank', 0, 0, 0, 0, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{\"figure\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (45, '游客', '销售数据', 'sales_data', '销售数据详情', '/sales_data/view', '', '_blank', 0, 0, 0, 0, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (46, '游客', '我的收藏', 'collect', '我的收藏', '/collect/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (47, '游客', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (48, '游客', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (49, '游客', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (50, '游客', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (51, '游客', '新闻', 'article', '新闻列表', '/article/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{\"print\":false,\"export_db\":false,\"import_db\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (52, '游客', '新闻', 'article', '新闻详情', '/article/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{\"print\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (53, '游客', '新闻', 'article', '新闻资讯', '/article/list', '', '_blank', 0, 0, 0, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (54, '游客', '新闻', 'article', '新闻详情', '/article/details', '', '_blank', 0, 0, 0, 1, '', '', '', NULL, '0', '{\"can_comment\":false,\"can_show_comment\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (55, '游客', '新闻分类', 'article_type', '新闻分类列表', '/article_type/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (56, '游客', '新闻分类', 'article_type', '新闻分类详情', '/article_type/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (57, '游客', '公告', 'notice', '公告列表', '/notice/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (58, '游客', '公告', 'notice', '公告详情', '/notice/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (59, '游客', '公告', 'notice', '公告信息', '/notice/list', '', '_blank', 0, 0, 0, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (60, '游客', '公告', 'notice', '公告详情', '/notice/details', '', '_blank', 0, 0, 0, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (61, '注册用户', '注册用户', 'registered_users', '注册用户', '/registered_users/table', '', '_blank', 0, 0, 0, 0, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (62, '注册用户', '注册用户', 'registered_users', '注册用户详情', '/registered_users/view', '', '_blank', 0, 0, 0, 0, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (63, '注册用户', '商家用户', 'merchant_users', '商家用户', '/merchant_users/table', '', '_blank', 0, 0, 0, 0, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (64, '注册用户', '商家用户', 'merchant_users', '商家用户详情', '/merchant_users/view', '', '_blank', 0, 0, 0, 0, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (65, '注册用户', '商品分类', 'commodity_classification', '商品分类', '/commodity_classification/table', '', '_blank', 0, 0, 0, 0, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (66, '注册用户', '商品分类', 'commodity_classification', '商品分类详情', '/commodity_classification/view', '', '_blank', 0, 0, 0, 0, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (67, '注册用户', '商品中心', 'commodity_center', '商品中心', '/commodity_center/table', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_show_comment\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (68, '注册用户', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/view', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (69, '注册用户', '商品中心', 'commodity_center', '商品中心', '/commodity_center/list', 'top', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (70, '注册用户', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/details', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_comment\":true,\"can_show_comment\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (71, '注册用户', '订单管理', 'order_management', '订单管理', '/order_management/table', '', '_blank', 0, 0, 0, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{\"figure\":false,\"pay\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (72, '注册用户', '订单管理', 'order_management', '订单管理详情', '/order_management/view', '', '_blank', 0, 0, 0, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (73, '注册用户', '订单管理', 'order_management', '订单管理', '/order_management/edit', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (74, '注册用户', '销售数据', 'sales_data', '销售数据', '/sales_data/table', '', '_blank', 0, 0, 0, 0, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{\"figure\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (75, '注册用户', '销售数据', 'sales_data', '销售数据详情', '/sales_data/view', '', '_blank', 0, 0, 0, 0, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (76, '注册用户', '我的收藏', 'collect', '我的收藏', '/collect/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (77, '注册用户', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (78, '注册用户', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (79, '注册用户', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (80, '注册用户', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (81, '注册用户', '新闻', 'article', '新闻列表', '/article/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{\"print\":false,\"export_db\":false,\"import_db\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (82, '注册用户', '新闻', 'article', '新闻详情', '/article/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{\"print\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (83, '注册用户', '新闻', 'article', '新闻资讯', '/article/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (84, '注册用户', '新闻', 'article', '新闻详情', '/article/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{\"can_comment\":true,\"can_show_comment\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (85, '注册用户', '新闻分类', 'article_type', '新闻分类列表', '/article_type/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (86, '注册用户', '新闻分类', 'article_type', '新闻分类详情', '/article_type/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (87, '注册用户', '公告', 'notice', '公告列表', '/notice/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (88, '注册用户', '公告', 'notice', '公告详情', '/notice/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (89, '注册用户', '公告', 'notice', '公告信息', '/notice/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (90, '注册用户', '公告', 'notice', '公告详情', '/notice/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (91, '商家用户', '注册用户', 'registered_users', '注册用户', '/registered_users/table', '', '_blank', 0, 0, 0, 0, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (92, '商家用户', '注册用户', 'registered_users', '注册用户详情', '/registered_users/view', '', '_blank', 0, 0, 0, 0, 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', 'user_name,user_gender,user_age', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (93, '商家用户', '商家用户', 'merchant_users', '商家用户', '/merchant_users/table', '', '_blank', 0, 0, 0, 0, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (94, '商家用户', '商家用户', 'merchant_users', '商家用户详情', '/merchant_users/view', '', '_blank', 0, 0, 0, 0, 'store_name,sellers_name', 'store_name,sellers_name', 'store_name,sellers_name', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (95, '商家用户', '商品分类', 'commodity_classification', '商品分类', '/commodity_classification/table', '', '_blank', 1, 1, 1, 1, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (96, '商家用户', '商品分类', 'commodity_classification', '商品分类详情', '/commodity_classification/view', '', '_blank', 1, 1, 1, 1, 'product_type', 'product_type', 'product_type', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (97, '商家用户', '商品中心', 'commodity_center', '商品中心', '/commodity_center/table', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_show_comment\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (98, '商家用户', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/view', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (99, '商家用户', '商品中心', 'commodity_center', '商品中心', '/commodity_center/list', 'top', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (100, '商家用户', '商品中心', 'commodity_center', '商品中心详情', '/commodity_center/details', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', 'store_name,seller_customers,item_number,trade_name,product_type,product_specifications,product_cover,commodity_inventory,item_pricing,product_details', NULL, '0', '{\"can_comment\":true,\"can_show_comment\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (101, '商家用户', '订单管理', 'order_management', '订单管理', '/order_management/table', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{\"figure\":true,\"pay\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (102, '商家用户', '订单管理', 'order_management', '订单管理详情', '/order_management/view', '', '_blank', 1, 1, 1, 1, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (103, '商家用户', '订单管理', 'order_management', '订单管理', '/order_management/edit', '', '_blank', 0, 0, 0, 0, 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', 'store_name,seller_customers,item_number,trade_name,product_type,item_pricing,purchase_user,user_name,purchase_quantity,total_price,shipping_address,contact_information,remarks,order_status', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (104, '商家用户', '销售数据', 'sales_data', '销售数据', '/sales_data/table', '', '_blank', 1, 1, 1, 1, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{\"figure\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (105, '商家用户', '销售数据', 'sales_data', '销售数据详情', '/sales_data/view', '', '_blank', 1, 1, 1, 1, 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', 'reporting_month,trade_name,sales_volumes,remarks', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (106, '商家用户', '我的收藏', 'collect', '我的收藏', '/collect/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (107, '商家用户', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (108, '商家用户', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (109, '商家用户', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (110, '商家用户', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (111, '商家用户', '新闻', 'article', '新闻列表', '/article/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{\"print\":false,\"export_db\":false,\"import_db\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (112, '商家用户', '新闻', 'article', '新闻详情', '/article/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{\"print\":false}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (113, '商家用户', '新闻', 'article', '新闻资讯', '/article/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (114, '商家用户', '新闻', 'article', '新闻详情', '/article/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{\"can_comment\":true,\"can_show_comment\":true}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (115, '商家用户', '新闻分类', 'article_type', '新闻分类列表', '/article_type/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (116, '商家用户', '新闻分类', 'article_type', '新闻分类详情', '/article_type/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (117, '商家用户', '公告', 'notice', '公告列表', '/notice/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (118, '商家用户', '公告', 'notice', '公告详情', '/notice/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (119, '商家用户', '公告', 'notice', '公告信息', '/notice/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `auth` VALUES (120, '商家用户', '公告', 'notice', '公告详情', '/notice/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, '0', '{}', '2026-05-25 16:54:11', '2026-05-25 16:54:11');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `collect_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏人ID：',
  `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (3, 2, 'commodity_center', 'commodity_center_id', 1, '商品名称1', '/api/upload/1601832440941248512.jpg', '2025-11-13 17:02:25', '2025-11-13 17:02:25');
INSERT INTO `collect` VALUES (2, 2, 'article', 'article_id', 1, '青海绿色、有机和地理标志农产品数量累计认证1015个', '/api/upload/1612367613227171841.jpg', '2025-11-13 17:01:40', '2025-11-13 17:01:40');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论人ID：',
  `reply_to_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '回复评论ID：空为0',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容：',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 2, 0, '<p>1</p>', '鹿晓离', '/img/avatar.png', '2025-11-13 16:00:15', '2025-11-13 16:00:15', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `comment` VALUES (2, 2, 0, '<p>好</p>', '鹿晓离', '/api/upload/1.jpeg', '2025-11-13 17:01:50', '2025-11-13 17:01:50', 'article', 'article_id', 1);
INSERT INTO `comment` VALUES (3, 2, 0, '<p>好</p>', '鹿晓离', '/api/upload/1.jpeg', '2025-11-13 17:02:42', '2025-11-13 17:02:42', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `comment` VALUES (4, 2, 3, '<p>你好</p>', '鹿晓离', '/api/upload/1.jpeg', '2025-11-13 17:02:55', '2025-11-13 17:02:55', 'commodity_center', 'commodity_center_id', 1);

-- ----------------------------
-- Table structure for commodity_center
-- ----------------------------
DROP TABLE IF EXISTS `commodity_center`;
CREATE TABLE `commodity_center`  (
  `commodity_center_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品中心ID',
  `store_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `seller_customers` int(11) NULL DEFAULT 0 COMMENT '卖家用户',
  `item_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `trade_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `product_specifications` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格',
  `product_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品封面',
  `commodity_inventory` int(11) NULL DEFAULT 0 COMMENT '商品库存',
  `item_pricing` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品单价',
  `product_details` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `hits` int(11) NOT NULL DEFAULT 0 COMMENT '点击数',
  `praise_len` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`commodity_center_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品中心' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_center
-- ----------------------------
INSERT INTO `commodity_center` VALUES (1, '晓离优选', 3, '1763024353056', '商品名称1', '商品类型1', '商品规格1', '/api/upload/1601832440941248512.jpg', 12230, '1', '商品详情1', 261, 361, 0, '2026-05-25 16:54:10', '2025-11-13 17:03:16');
INSERT INTO `commodity_center` VALUES (2, '店铺名称2', 0, '商品编号2', '商品名称2', '商品类型2', '商品规格2', '/api/upload/1598494836736917505.jpg', 2232, '2', '商品详情2', 553, 631, 0, '2026-05-25 16:54:10', '2025-11-13 16:00:01');
INSERT INTO `commodity_center` VALUES (3, '店铺名称3', 0, '商品编号3', '商品名称3', '商品类型3', '商品规格3', '/api/upload/1598494999983423488.jpg', 3232, '3', '商品详情3', 447, 176, 0, '2026-05-25 16:54:10', '2025-11-13 16:00:02');
INSERT INTO `commodity_center` VALUES (4, '店铺名称4', 0, '商品编号4', '商品名称4', '商品类型4', '商品规格4', '/api/upload/1598494724870635520.jpg', 433, '4', '商品详情4', 709, 91, 0, '2026-05-25 16:54:10', '2025-11-13 16:00:03');
INSERT INTO `commodity_center` VALUES (5, '店铺名称5', 0, '商品编号5', '商品名称5', '商品类型5', '商品规格5', '/api/upload/1598495057772544001.jpg', 53, '5', '商品详情5', 549, 17, 0, '2026-05-25 16:54:10', '2025-11-13 16:00:04');
INSERT INTO `commodity_center` VALUES (6, '店铺名称6', 0, '商品编号6', '商品名称6', '商品类型6', '商品规格6', '/api/upload/1598494953950937088.jpg', 63, '6', '商品详情6', 980, 906, 0, '2026-05-25 16:54:10', '2025-11-13 16:00:04');
INSERT INTO `commodity_center` VALUES (7, '店铺名称7', 0, '商品编号7', '商品名称7', '商品类型7', '商品规格7', '/api/upload/1601832492761874432.jpg', 73, '7', '商品详情7', 638, 547, 0, '2026-05-25 16:54:10', '2025-11-13 16:00:05');
INSERT INTO `commodity_center` VALUES (8, '店铺名称8', 0, '商品编号8', '商品名称8', '商品类型8', '商品规格8', '/api/upload/1601832351359303681.jpg', 83, '8', '商品详情8', 684, 580, 0, '2026-05-25 16:54:10', '2025-11-13 16:00:06');

-- ----------------------------
-- Table structure for commodity_classification
-- ----------------------------
DROP TABLE IF EXISTS `commodity_classification`;
CREATE TABLE `commodity_classification`  (
  `commodity_classification_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类ID',
  `product_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`commodity_classification_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity_classification
-- ----------------------------
INSERT INTO `commodity_classification` VALUES (1, '商品类型1', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `commodity_classification` VALUES (2, '商品类型2', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `commodity_classification` VALUES (3, '商品类型3', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `commodity_classification` VALUES (4, '商品类型4', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `commodity_classification` VALUES (5, '商品类型5', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `commodity_classification` VALUES (6, '商品类型6', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `commodity_classification` VALUES (7, '商品类型7', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `commodity_classification` VALUES (8, '商品类型8', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');

-- ----------------------------
-- Table structure for hits
-- ----------------------------
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits`  (
  `hits_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '用户点击' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hits
-- ----------------------------
INSERT INTO `hits` VALUES (1, 0, '2025-11-13 15:31:42', '2025-11-13 15:31:42', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (2, 2, '2025-11-13 15:42:06', '2025-11-13 15:42:06', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (3, 2, '2025-11-13 15:43:09', '2025-11-13 15:43:09', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (4, 2, '2025-11-13 15:43:13', '2025-11-13 15:43:13', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (5, 2, '2025-11-13 15:59:25', '2025-11-13 15:59:25', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (6, 2, '2025-11-13 16:00:09', '2025-11-13 16:00:09', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (7, 0, '2025-11-13 16:56:48', '2025-11-13 16:56:48', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (8, 2, '2025-11-13 16:57:19', '2025-11-13 16:57:19', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (9, 2, '2025-11-13 16:57:35', '2025-11-13 16:57:35', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (10, 2, '2025-11-13 17:02:16', '2025-11-13 17:02:16', 'commodity_center', 'commodity_center_id', 1);
INSERT INTO `hits` VALUES (11, 2, '2025-11-13 17:03:16', '2025-11-13 17:03:16', 'commodity_center', 'commodity_center_id', 1);

-- ----------------------------
-- Table structure for merchant_users
-- ----------------------------
DROP TABLE IF EXISTS `merchant_users`;
CREATE TABLE `merchant_users`  (
  `merchant_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商家用户ID',
  `store_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `sellers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卖家姓名',
  `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`merchant_users_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_users
-- ----------------------------
INSERT INTO `merchant_users` VALUES (1, '晓离优选', '李四', '已通过', 0, 3, '2025-11-13 16:52:13', '2025-11-13 16:52:13');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '网站公告', '<p>公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。</p>', '2026-05-30 18:21:49', '2026-05-30 18:21:49');
INSERT INTO `notice` VALUES (2, '关于我们', '<p>       一个网站要取得成功，要有先进的理念、先进的思想，更为重要的是抢占先机，及时行动。网络世界可谓一日千里、 日新月异，一个网站只有把握先机，抓住机遇，才</p><p>可能有更多的机会获得成功，可能处于网络行业发展的致高点，可能创建出成功的网站，才能能获得成功。要知道一种网站新模式在网络上只有保持几天的优势,因为人们很容易“COPY\" 和模仿，因此，唯有不</p><p>断创新，不失时机地推出新的服务、新的模式、新的思想，网站才可能长久立于不败之地。</p>', '2026-05-30 18:21:49', '2026-05-30 18:21:49');
INSERT INTO `notice` VALUES (3, '联系方式', '<h3>网站内容及品牌合作</h3><p>Email：xxxx@qq.com</p><h3>商务合作</h3><p>电话：010-xxxxxxx</p><p>Email：xxxx@qq.com</p><h3><br></h3><h3><br></h3><p><br></p>', '2026-05-30 18:21:49', '2026-05-30 18:21:49');
INSERT INTO `notice` VALUES (4, '网站介绍', '<p>此处可上传文字、图片、视频、超链接、表格等内容区</p>', '2026-05-30 18:21:49', '2026-05-30 18:21:49');

-- ----------------------------
-- Table structure for order_management
-- ----------------------------
DROP TABLE IF EXISTS `order_management`;
CREATE TABLE `order_management`  (
  `order_management_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单管理ID',
  `store_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `seller_customers` int(11) NULL DEFAULT 0 COMMENT '卖家用户',
  `item_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `trade_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `item_pricing` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品单价',
  `purchase_user` int(11) NULL DEFAULT 0 COMMENT '购买用户',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `purchase_quantity` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买数量',
  `total_price` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合计总价',
  `shipping_address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `contact_information` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注信息',
  `order_status` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `pay_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未支付' COMMENT '支付状态',
  `pay_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '支付类型: 微信、支付宝、网银',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`order_management_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_management
-- ----------------------------
INSERT INTO `order_management` VALUES (1, '店铺名称1', 0, '商品编号1', '商品名称1', '商品类型1', '商品单价1', 0, '用户姓名1', '购买数量1', '合计总价1', '收货地址1', '联系方式1', '备注信息1', '订单状态1', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (2, '店铺名称2', 0, '商品编号2', '商品名称2', '商品类型2', '商品单价2', 0, '用户姓名2', '购买数量2', '合计总价2', '收货地址2', '联系方式2', '备注信息2', '订单状态2', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (3, '店铺名称3', 0, '商品编号3', '商品名称3', '商品类型3', '商品单价3', 0, '用户姓名3', '购买数量3', '合计总价3', '收货地址3', '联系方式3', '备注信息3', '订单状态3', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (4, '店铺名称4', 0, '商品编号4', '商品名称4', '商品类型4', '商品单价4', 0, '用户姓名4', '购买数量4', '合计总价4', '收货地址4', '联系方式4', '备注信息4', '订单状态4', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (5, '店铺名称5', 0, '商品编号5', '商品名称5', '商品类型5', '商品单价5', 0, '用户姓名5', '购买数量5', '合计总价5', '收货地址5', '联系方式5', '备注信息5', '订单状态5', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (6, '店铺名称6', 0, '商品编号6', '商品名称6', '商品类型6', '商品单价6', 0, '用户姓名6', '购买数量6', '合计总价6', '收货地址6', '联系方式6', '备注信息6', '订单状态6', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (7, '店铺名称7', 0, '商品编号7', '商品名称7', '商品类型7', '商品单价7', 0, '用户姓名7', '购买数量7', '合计总价7', '收货地址7', '联系方式7', '备注信息7', '订单状态7', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (8, '店铺名称8', 0, '商品编号8', '商品名称8', '商品类型8', '商品单价8', 0, '用户姓名8', '购买数量8', '合计总价8', '收货地址8', '联系方式8', '备注信息8', '订单状态8', '未支付', '支付宝', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `order_management` VALUES (10, '店铺名称1', 0, '商品编号1', '商品名称1', '商品类型1', '1', 2, '张三', '', '23', '和平饭店', '15376414256', '', '', '未支付', '', 0, '2025-11-13 16:00:08', '2025-11-13 16:00:08');
INSERT INTO `order_management` VALUES (11, '店铺名称1', 3, '', '商品名称1', '商品类型1', '1', 2, '张三', '1', '1', '和平饭店', '15376414256', '', '已发货', '已支付', '微信', 0, '2025-11-13 16:57:34', '2025-11-13 16:58:55');
INSERT INTO `order_management` VALUES (12, '晓离优选', 3, '1763024353056', '商品名称1', '商品类型1', '1', 2, '张三', '2', '2', '和平饭店', '15376414256', '备注', '已发货', '已支付', '网银', 0, '2025-11-13 17:03:16', '2025-11-13 17:07:24');

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise`  (
  `praise_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES (2, 2, '2025-11-13 17:01:41', '2025-11-13 17:01:41', 'article', 'article_id', 1, 1);

-- ----------------------------
-- Table structure for registered_users
-- ----------------------------
DROP TABLE IF EXISTS `registered_users`;
CREATE TABLE `registered_users`  (
  `registered_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注册用户ID',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `user_gender` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `user_age` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户年龄',
  `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`registered_users_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '注册用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registered_users
-- ----------------------------
INSERT INTO `registered_users` VALUES (1, '张三', '男', '25', '已通过', 0, 2, '2025-11-13 15:41:36', '2025-11-13 15:41:36');

-- ----------------------------
-- Table structure for sales_data
-- ----------------------------
DROP TABLE IF EXISTS `sales_data`;
CREATE TABLE `sales_data`  (
  `sales_data_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售数据ID',
  `reporting_month` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报表月份',
  `trade_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `sales_volumes` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售数量',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注信息',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`sales_data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '销售数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_data
-- ----------------------------
INSERT INTO `sales_data` VALUES (1, '报表月份1', '商品名称1', '销售数量1', '备注信息1', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `sales_data` VALUES (2, '报表月份2', '商品名称2', '销售数量2', '备注信息2', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `sales_data` VALUES (3, '报表月份3', '商品名称3', '销售数量3', '备注信息3', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `sales_data` VALUES (4, '报表月份4', '商品名称4', '销售数量4', '备注信息4', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `sales_data` VALUES (5, '报表月份5', '商品名称5', '销售数量5', '备注信息5', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `sales_data` VALUES (6, '报表月份6', '商品名称6', '销售数量6', '备注信息6', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `sales_data` VALUES (7, '报表月份7', '商品名称7', '销售数量7', '备注信息7', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `sales_data` VALUES (8, '报表月份8', '商品名称8', '销售数量8', '备注信息8', 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides`  (
  `slides_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of slides
-- ----------------------------
INSERT INTO `slides` VALUES (1, '轮播图1', '内容1', '/article/details?article=1', '/api/upload/1587737517086474241.jpg', 979, '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `slides` VALUES (2, '轮播图2', '内容2', '/article/details?article=2', '/api/upload/1587736794646970369.jpg', 179, '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `slides` VALUES (3, '轮播图3', '内容3', '/article/details?article=3', '/api/upload/1587737473780285440.jpg', 299, '2026-05-25 16:54:11', '2026-05-25 16:54:11');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) NULL DEFAULT 0 COMMENT '父级ID',
  `dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, 'movie.mp4', '/upload/movie.mp4', '', NULL, 0, NULL, 'video');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户账户：用于保存用户登录信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 1, '管理员', '2025-11-13 15:36:11', '', 2, 'admin', 'admin', 'bfd59291e825b5f2bbf1eb76569f8fe7', '', 2, '/api/upload/admin_avatar.jpg', '2026-05-30 17:35:13');
INSERT INTO `user` VALUES (2, 1, '注册用户', '2025-11-13 17:05:46', '15365413456', 0, 'user01', '鹿晓离', 'e10adc3949ba59abbe56e057f20f883e', '11321312313@qq.com', 2, '/api/upload/1.jpeg', '2025-11-13 15:41:36');
INSERT INTO `user` VALUES (3, 1, '商家用户', '2025-11-13 16:52:13', '15376414192', 2, 'shangjia1', '晓离', 'e10adc3949ba59abbe56e057f20f883e', 'sffsf@qq.com', 2, '/api/upload/2.jpeg', '2025-11-13 16:52:13');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) UNSIGNED NOT NULL DEFAULT 100 COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `register` smallint(1) UNSIGNED NULL DEFAULT 0 COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组：用于用户前端身份和鉴权' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, 100, '管理员', NULL, '', '', 0, 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `user_group` VALUES (2, 100, '游客', NULL, '', '', 0, 0, '2026-05-25 16:54:10', '2026-05-25 16:54:10');
INSERT INTO `user_group` VALUES (3, 100, '注册用户', NULL, 'registered_users', 'registered_users_id', 0, 3, '2026-05-25 16:54:11', '2026-05-25 16:54:11');
INSERT INTO `user_group` VALUES (4, 100, '商家用户', NULL, 'merchant_users', 'merchant_users_id', 0, 0, '2026-05-25 16:54:11', '2026-05-25 16:54:11');

SET FOREIGN_KEY_CHECKS = 1;
