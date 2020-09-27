/*
 Navicat Premium Data Transfer

 Source Server         : T
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : mall_template

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 27/09/2020 19:10:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oss_object
-- ----------------------------
DROP TABLE IF EXISTS `oss_object`;
CREATE TABLE `oss_object`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `file_all_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `file_md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `file_size` double NULL DEFAULT NULL,
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '对象存储信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oss_object
-- ----------------------------
INSERT INTO `oss_object` VALUES (1, '20200924', '190105', '2020-09-24/abc.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-24/abc.jpg', 'abc.jpg', '83f7dc3392bd75bd24e43c07c2749cbe', 1074086);
INSERT INTO `oss_object` VALUES (2, '20200925', '200431', '2020-09-25/80.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-25/80.jpg', '80.jpg', 'dc65a7e689753b304c7077e5fed9e032', 39018);
INSERT INTO `oss_object` VALUES (3, '20200925', '200725', '2020-09-25/aobama.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-25/aobama.jpg', 'aobama.jpg', 'd455737f662fdb30db11839ea26bb737', 159471);
INSERT INTO `oss_object` VALUES (4, '20200927', '113100', '2020-09-27/back2.png', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/back2.png', 'back2.png', '2ceacf58042583b341e5cfda2ad86891', 624169);
INSERT INTO `oss_object` VALUES (5, '20200927', '113353', '2020-09-27/80111.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80111.jpg', '80111.jpg', 'dec6de55c429ac1dc5fdf3b2cb36885f', 24380);
INSERT INTO `oss_object` VALUES (6, '20200927', '113353', '2020-09-27/80.png', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80.png', '80.png', 'badfac226d4e64b3a633034ecb725a66', 414035);
INSERT INTO `oss_object` VALUES (7, '20200927', '114305', '2020-09-27/20A计划面试候选人个人自检表-财富经纪业务群-陈亚男22577.xlsx', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/20A计划面试候选人个人自检表-财富经纪业务群-陈亚男22577.xlsx', '20A计划面试候选人个人自检表-财富经纪业务群-陈亚男22577.xlsx', '1492d4ba41984219c90e6d6b14eebfea', 15379);
INSERT INTO `oss_object` VALUES (8, '20200927', '114824', '2020-09-27/80222.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80222.jpg', '80222.jpg', '475348a008681eb4bcc48b5f5087ee30', 20808);
INSERT INTO `oss_object` VALUES (9, '20200927', '135403', '2020-09-27/true.png', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/true.png', 'true.png', '00f99a6c57c1e4a464e59736af44ff02', 44257);
INSERT INTO `oss_object` VALUES (10, '20200927', '140757', '2020-09-27/书籍1.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/书籍1.jpg', '书籍1.jpg', '5e4e40120d09fb6791f9430f914c6f68', 156494);
INSERT INTO `oss_object` VALUES (11, '20200927', '141249', '2020-09-27/Inkedlicense2 (1)_LI.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/Inkedlicense2 (1)_LI.jpg', 'Inkedlicense2 (1)_LI.jpg', '1ad151a2397849870505e6a4ce614e74', 768615);
INSERT INTO `oss_object` VALUES (12, '20200927', '141555', '2020-09-27/2.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/2.jpg', '2.jpg', '6af8393f50917191b9e84d27bc9bc515', 71296);
INSERT INTO `oss_object` VALUES (13, '20200927', '141555', '2020-09-27/4.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/4.jpg', '4.jpg', 'f6a330e17714841e2dca23b3bf71011c', 70371);
INSERT INTO `oss_object` VALUES (14, '20200927', '141555', '2020-09-27/3.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/3.jpg', '3.jpg', '5e5a22606f7272b63ca416ce0d682f7f', 82376);
INSERT INTO `oss_object` VALUES (15, '20200927', '141744', '2020-09-27/1.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/1.jpg', '1.jpg', 'd8009e8e38e32bbe758e31b95089d53c', 47893);
INSERT INTO `oss_object` VALUES (16, '20200927', '141744', '2020-09-27/1 (1).jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/1 (1).jpg', '1 (1).jpg', '57d25a57d5872f1101467bb49505fed3', 91615);
INSERT INTO `oss_object` VALUES (17, '20200927', '163731', '2020-09-27/80mask.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80mask.jpg', '80mask.jpg', 'b917b666f72789e1274e0e823006cc58', 8077);
INSERT INTO `oss_object` VALUES (18, '20200927', '164016', '2020-09-27/1123.png', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/1123.png', '1123.png', '4c5367bc8b6076ffd29432bb7c3ea7e6', 122727);
INSERT INTO `oss_object` VALUES (19, '20200927', '172011', '2020-09-27/6A1.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/6A1.jpg', '6A1.jpg', 'e4763ae1d487f030bff9d535d8b803b9', 305494);
INSERT INTO `oss_object` VALUES (20, '20200927', '172928', '2020-09-27/80mask2.jpg', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80mask2.jpg', '80mask2.jpg', '16f991168d8ea6cdbed48312efa93fb6', 30299);
INSERT INTO `oss_object` VALUES (21, '20200927', '172936', '2020-09-27/80M.JPG', 'http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80M.JPG', '80M.JPG', '3c05e7ed21ac1d71e307d7230ee0731a', 265797);

-- ----------------------------
-- Table structure for prd_category
-- ----------------------------
DROP TABLE IF EXISTS `prd_category`;
CREATE TABLE `prd_category`  (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父节点',
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` int(11) NULL DEFAULT 1,
  `sort_order` int(11) NULL DEFAULT 1,
  `is_parent` int(11) NULL DEFAULT 0,
  `icon` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1202 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prd_category
-- ----------------------------
INSERT INTO `prd_category` VALUES (1, 0, '图书、音像、电子书刊', 1, 19, 1, NULL, '2020-09-11 18:31:55', '2017-09-24 15:50:47');
INSERT INTO `prd_category` VALUES (2, 1, '电子书刊', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (3, 2, '电子书', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (4, 2, '网络原创', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (5, 2, '数字杂志', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (6, 2, '多媒体图书', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (7, 1, '音像', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (8, 7, '音乐', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (9, 7, '影视', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (10, 7, '教育音像', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (11, 1, '英文原版', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (12, 11, '少儿', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (13, 11, '商务投资', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (14, 11, '英语学习与考试', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (15, 11, '小说', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (16, 11, '传记', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (17, 11, '励志', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (18, 1, '文艺', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (19, 18, '小说', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (20, 18, '文学', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (21, 18, '青春文学', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (22, 18, '传记', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (23, 18, '艺术', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (24, 1, '少儿', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (25, 24, '少儿', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (26, 24, '0-2岁', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (27, 24, '3-6岁', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (28, 24, '7-10岁', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (29, 24, '11-14岁', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (30, 1, '人文社科', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (31, 30, '历史', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (32, 30, '哲学', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (33, 30, '国学', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (34, 30, '政治/军事', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (35, 30, '法律', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (36, 30, '宗教', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (37, 30, '心理学', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (38, 30, '文化', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (39, 30, '社会科学', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (40, 1, '经管励志', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (41, 40, '经济', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (42, 40, '金融与投资', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (43, 40, '管理', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (44, 40, '励志与成功', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (45, 1, '生活', 1, 8, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (46, 45, '生活', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (47, 45, '健身与保健', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (48, 45, '家庭与育儿', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (49, 45, '旅游', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (50, 45, '动漫/幽默', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (51, 1, '科技', 1, 9, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (52, 51, '科技', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (53, 51, '工程', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (54, 51, '建筑', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (55, 51, '医学', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (56, 51, '科学与自然', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (57, 51, '计算机与互联网', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (58, 51, '体育/运动', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (59, 1, '教育', 1, 10, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (60, 59, '教材教辅', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (61, 59, '教育与考试', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (62, 59, '外语学习', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (63, 59, '新闻出版', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (64, 59, '语言文字', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (65, 1, '港台图书', 1, 11, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (66, 65, '艺术/设计/收藏', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (67, 65, '经济管理', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (68, 65, '文化/学术', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (69, 65, '少儿文学/国学', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (70, 1, '其它', 1, 12, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (71, 70, '工具书', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (72, 70, '影印版', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (73, 70, '套装书', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (74, 0, '家用电器', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (75, 74, '大 家 电', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (76, 75, '平板电视', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2017-11-06 23:44:12');
INSERT INTO `prd_category` VALUES (77, 75, '空调', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (78, 75, '冰箱', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (79, 75, '洗衣机', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (80, 75, '家庭影院', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (81, 75, 'DVD播放机', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (82, 75, '迷你音响', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (83, 75, '烟机/灶具', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (84, 75, '热水器', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (85, 75, '消毒柜/洗碗机', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (86, 75, '酒柜/冰吧/冷柜', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (87, 75, '家电配件', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (88, 75, '家电下乡', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (89, 74, '生活电器', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (90, 89, '电风扇', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (91, 89, '冷风扇', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (92, 89, '净化器', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (93, 89, '饮水机', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (94, 89, '净水设备', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (95, 89, '挂烫机/熨斗', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (96, 89, '吸尘器', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (97, 89, '电话机', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (98, 89, '插座', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (99, 89, '收录/音机', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (100, 89, '清洁机', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (101, 89, '加湿器', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (102, 89, '除湿机', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (103, 89, '取暖电器', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (104, 89, '其它生活电器', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (105, 89, '扫地机器人', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (106, 89, '干衣机', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (107, 89, '生活电器配件', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (108, 74, '厨房电器', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (109, 108, '料理/榨汁机', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (110, 108, '豆浆机', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (111, 108, '电饭煲', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (112, 108, '电压力锅', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (113, 108, '面包机', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (114, 108, '咖啡机', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (115, 108, '微波炉', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (116, 108, '电烤箱', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (117, 108, '电磁炉', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (118, 108, '电饼铛/烧烤盘', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (119, 108, '煮蛋器', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (120, 108, '酸奶机', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (121, 108, '电炖锅', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (122, 108, '电水壶/热水瓶', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (123, 108, '多用途锅', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (124, 108, '果蔬解毒机', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (125, 108, '其它厨房电器', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (126, 74, '个护健康', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (127, 126, '剃须刀', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (128, 126, '剃/脱毛器', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (129, 126, '口腔护理', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (130, 126, '电吹风', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (131, 126, '美容器', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (132, 126, '美发器', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (133, 126, '按摩椅', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (134, 126, '按摩器', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (135, 126, '足浴盆', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (136, 126, '血压计', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (137, 126, '健康秤/厨房秤', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (138, 126, '血糖仪', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (139, 126, '体温计', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (140, 126, '计步器/脂肪检测仪', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (141, 126, '其它健康电器', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (142, 74, '五金家装', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (143, 142, '电动工具', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (144, 142, '手动工具', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (145, 142, '仪器仪表', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (146, 142, '浴霸/排气扇', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (147, 142, '灯具', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (148, 142, 'LED灯', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (149, 142, '洁身器', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (150, 142, '水槽', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (151, 142, '龙头', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (152, 142, '淋浴花洒', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (153, 142, '厨卫五金', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (154, 142, '家具五金', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (155, 142, '门铃', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (156, 142, '电气开关', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (157, 142, '插座', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (158, 142, '电工电料', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (159, 142, '监控安防', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (160, 142, '电线/线缆', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (161, 0, '电脑、办公', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (162, 161, '电脑整机', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (163, 162, '笔记本', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (164, 162, '超极本', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (165, 162, '游戏本', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (166, 162, '平板电脑', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (167, 162, '平板电脑配件', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (168, 162, '台式机', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (169, 162, '服务器/工作站', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (170, 162, '笔记本配件', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (171, 161, '电脑配件', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (172, 171, 'CPU', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (173, 171, '主板', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (174, 171, '显卡', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (175, 171, '硬盘', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (176, 171, 'SSD固态硬盘', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (177, 171, '内存', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (178, 171, '机箱', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (179, 171, '电源', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (180, 171, '显示器', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (181, 171, '刻录机/光驱', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (182, 171, '散热器', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (183, 171, '声卡/扩展卡', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (184, 171, '装机配件', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (185, 171, '组装电脑', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (186, 161, '外设产品', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (187, 186, '移动硬盘', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (188, 186, 'U盘', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (189, 186, '鼠标', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (190, 186, '键盘', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (191, 186, '鼠标垫', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (192, 186, '摄像头', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (193, 186, '手写板', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (194, 186, '外置盒', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (195, 186, '插座', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (196, 186, '线缆', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (197, 186, 'UPS电源', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (198, 186, '电脑工具', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (199, 186, '游戏设备', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (200, 186, '电玩', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (201, 186, '电脑清洁', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (202, 161, '网络产品', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (203, 202, '路由器', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (204, 202, '网卡', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (205, 202, '交换机', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (206, 202, '网络存储', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (207, 202, '4G/3G上网', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (208, 202, '网络盒子', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (209, 202, '网络配件', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (210, 161, '办公设备', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (211, 210, '投影机', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (212, 210, '投影配件', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (213, 210, '多功能一体机', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (214, 210, '打印机', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (215, 210, '传真设备', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (216, 210, '验钞/点钞机', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (217, 210, '扫描设备', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (218, 210, '复合机', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (219, 210, '碎纸机', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (220, 210, '考勤机', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (221, 210, '墨粉', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (222, 210, '收款/POS机', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (223, 210, '会议音频视频', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (224, 210, '保险柜', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (225, 210, '装订/封装机', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (226, 210, '安防监控', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (227, 210, '办公家具', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (228, 210, '白板', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (229, 161, '文具/耗材', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (230, 229, '硒鼓/墨粉', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (231, 229, '墨盒', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (232, 229, '色带', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (233, 229, '纸类', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (234, 229, '办公文具', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (235, 229, '学生文具', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (236, 229, '文件管理', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (237, 229, '财会用品', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (238, 229, '本册/便签', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (239, 229, '计算器', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (240, 229, '激光笔', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (241, 229, '笔类', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (242, 229, '画具画材', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (243, 229, '刻录碟片/附件', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (244, 161, '服务产品', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (245, 244, '上门服务', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (246, 244, '远程服务', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (247, 244, '电脑软件', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (248, 244, '京东服务', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (249, 0, '个护化妆', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (250, 249, '面部护肤', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (251, 250, '清洁', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (252, 250, '护肤', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (253, 250, '面膜', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (254, 250, '剃须', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (255, 250, '套装', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (256, 249, '身体护肤', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (257, 256, '沐浴', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (258, 256, '润肤', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (259, 256, '颈部', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (260, 256, '手足', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (261, 256, '纤体塑形', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (262, 256, '美胸', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (263, 256, '套装', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (264, 249, '口腔护理', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (265, 264, '牙膏/牙粉', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (266, 264, '牙刷/牙线', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (267, 264, '漱口水', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (268, 264, '套装', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (269, 249, '女性护理', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (270, 269, '卫生巾', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (271, 269, '卫生护垫', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (272, 269, '私密护理', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (273, 269, '脱毛膏', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (274, 249, '洗发护发', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (275, 274, '洗发', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (276, 274, '护发', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (277, 274, '染发', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (278, 274, '造型', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (279, 274, '假发', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (280, 274, '套装', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (281, 249, '香水彩妆', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (282, 281, '香水', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (283, 281, '底妆', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (284, 281, '腮红', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (285, 281, '眼部', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (286, 281, '唇部', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (287, 281, '美甲', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (288, 281, '美容工具', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (289, 281, '套装', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (290, 0, '钟表', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (291, 290, '钟表', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (292, 291, '男表', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (293, 291, '女表', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (294, 291, '儿童手表', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (295, 291, '座钟挂钟', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (296, 0, '母婴', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (297, 296, '奶粉', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (298, 297, '婴幼奶粉', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (299, 297, '成人奶粉', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (300, 296, '营养辅食', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (301, 300, '益生菌/初乳', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (302, 300, '米粉/菜粉', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (303, 300, '果泥/果汁', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (304, 300, 'DHA', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (305, 300, '宝宝零食', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (306, 300, '钙铁锌/维生素', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (307, 300, '清火/开胃', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (308, 300, '面条/粥', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (309, 296, '尿裤湿巾', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (310, 309, '婴儿尿裤', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (311, 309, '拉拉裤', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (312, 309, '湿巾', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (313, 309, '成人尿裤', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (314, 296, '喂养用品', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (315, 314, '奶瓶奶嘴', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (316, 314, '吸奶器', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (317, 314, '暖奶消毒', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (318, 314, '碗盘叉勺', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (319, 314, '水壶/水杯', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (320, 314, '牙胶安抚', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (321, 314, '辅食料理机', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (322, 296, '洗护用品', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (323, 322, '宝宝护肤', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (324, 322, '宝宝洗浴', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (325, 322, '奶瓶清洗', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (326, 322, '驱蚊防蚊', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (327, 322, '理发器', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (328, 322, '洗衣液/皂', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (329, 322, '日常护理', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (330, 322, '座便器', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (331, 296, '童车童床', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (332, 331, '婴儿推车', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (333, 331, '餐椅摇椅', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (334, 331, '婴儿床', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (335, 331, '学步车', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (336, 331, '三轮车', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (337, 331, '自行车', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (338, 331, '电动车', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (339, 331, '扭扭车', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (340, 331, '滑板车', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (341, 296, '寝居服饰', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (342, 341, '婴儿外出服', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (343, 341, '婴儿内衣', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (344, 341, '婴儿礼盒', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (345, 341, '婴儿鞋帽袜', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (346, 341, '安全防护', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (347, 341, '家居床品', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (348, 296, '妈妈专区', 1, 8, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (349, 348, '妈咪包/背婴带', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (350, 348, '产后塑身', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (351, 348, '文胸/内裤', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (352, 348, '防辐射服', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (353, 348, '孕妇装', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (354, 348, '孕期营养', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (355, 348, '孕妈美容', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (356, 348, '待产/新生', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (357, 348, '月子装', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (358, 296, '童装童鞋', 1, 9, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (359, 358, '套装', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (360, 358, '上衣', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (361, 358, '裤子', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (362, 358, '裙子', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (363, 358, '内衣/家居服', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (364, 358, '羽绒服/棉服', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (365, 358, '亲子装', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (366, 358, '儿童配饰', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (367, 358, '礼服/演出服', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (368, 358, '运动鞋', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (369, 358, '皮鞋/帆布鞋', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (370, 358, '靴子', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (371, 358, '凉鞋', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (372, 358, '功能鞋', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (373, 358, '户外/运动服', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (374, 296, '安全座椅', 1, 10, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (375, 374, '提篮式', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (376, 374, '安全座椅', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (377, 374, '增高垫', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (378, 0, '食品饮料、保健食品', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (379, 378, '进口食品', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (380, 379, '饼干蛋糕', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (381, 379, '糖果/巧克力', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (382, 379, '休闲零食', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (383, 379, '冲调饮品', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (384, 379, '粮油调味', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (385, 379, '牛奶', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (386, 378, '地方特产', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (387, 386, '其他特产', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (388, 386, '新疆', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (389, 386, '北京', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (390, 386, '山西', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (391, 386, '内蒙古', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (392, 386, '福建', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (393, 386, '湖南', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (394, 386, '四川', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (395, 386, '云南', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (396, 386, '东北', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (397, 378, '休闲食品', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (398, 397, '休闲零食', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (399, 397, '坚果炒货', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (400, 397, '肉干肉脯', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (401, 397, '蜜饯果干', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (402, 397, '糖果/巧克力', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (403, 397, '饼干蛋糕', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (404, 397, '无糖食品', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (405, 378, '粮油调味', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (406, 405, '米面杂粮', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (407, 405, '食用油', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (408, 405, '调味品', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (409, 405, '南北干货', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (410, 405, '方便食品', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (411, 405, '有机食品', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (412, 378, '饮料冲调', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (413, 412, '饮用水', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (414, 412, '饮料', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (415, 412, '牛奶乳品', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (416, 412, '咖啡/奶茶', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (417, 412, '冲饮谷物', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (418, 412, '蜂蜜/柚子茶', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (419, 412, '成人奶粉', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (420, 378, '食品礼券', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (421, 420, '月饼', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (422, 420, '大闸蟹', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (423, 420, '粽子', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (424, 420, '卡券', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (425, 378, '茗茶', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (426, 425, '铁观音', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (427, 425, '普洱', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (428, 425, '龙井', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (429, 425, '绿茶', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (430, 425, '红茶', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (431, 425, '乌龙茶', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (432, 425, '花草茶', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (433, 425, '花果茶', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (434, 425, '养生茶', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (435, 425, '黑茶', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (436, 425, '白茶', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (437, 425, '其它茶', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (438, 0, '汽车用品', 1, 8, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (439, 438, '维修保养', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (440, 439, '润滑油', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (441, 439, '添加剂', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (442, 439, '防冻液', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (443, 439, '滤清器', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (444, 439, '火花塞', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (445, 439, '雨刷', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (446, 439, '车灯', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (447, 439, '后视镜', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (448, 439, '轮胎', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (449, 439, '轮毂', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (450, 439, '刹车片/盘', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (451, 439, '喇叭/皮带', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (452, 439, '蓄电池', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (453, 439, '底盘装甲/护板', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (454, 439, '贴膜', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (455, 439, '汽修工具', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (456, 438, '车载电器', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (457, 456, '导航仪', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (458, 456, '安全预警仪', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (459, 456, '行车记录仪', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (460, 456, '倒车雷达', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (461, 456, '蓝牙设备', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (462, 456, '时尚影音', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (463, 456, '净化器', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (464, 456, '电源', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (465, 456, '冰箱', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (466, 456, '吸尘器', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (467, 438, '美容清洗', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (468, 467, '车蜡', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (469, 467, '补漆笔', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (470, 467, '玻璃水', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (471, 467, '清洁剂', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (472, 467, '洗车工具', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (473, 467, '洗车配件', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (474, 438, '汽车装饰', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (475, 474, '脚垫', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (476, 474, '座垫', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (477, 474, '座套', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (478, 474, '后备箱垫', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (479, 474, '头枕腰靠', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (480, 474, '香水', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (481, 474, '空气净化', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (482, 474, '车内饰品', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (483, 474, '功能小件', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (484, 474, '车身装饰件', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (485, 474, '车衣', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (486, 438, '安全自驾', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (487, 486, '安全座椅', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (488, 486, '胎压充气', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (489, 486, '防盗设备', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (490, 486, '应急救援', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (491, 486, '保温箱', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (492, 486, '储物箱', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (493, 486, '自驾野营', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (494, 486, '摩托车装备', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (495, 0, '玩具乐器', 1, 9, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (496, 495, '适用年龄', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (497, 496, '0-6个月', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (498, 496, '6-12个月', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (499, 496, '1-3岁', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (500, 496, '3-6岁', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (501, 496, '6-14岁', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (502, 496, '14岁以上', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (503, 495, '遥控/电动', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (504, 503, '遥控车', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (505, 503, '遥控飞机', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (506, 503, '遥控船', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (507, 503, '机器人/电动', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (508, 503, '轨道/助力', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (509, 495, '毛绒布艺', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (510, 509, '毛绒/布艺', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (511, 509, '靠垫/抱枕', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (512, 495, '娃娃玩具', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (513, 512, '芭比娃娃', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (514, 512, '卡通娃娃', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (515, 512, '智能娃娃', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (516, 495, '模型玩具', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (517, 516, '仿真模型', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (518, 516, '拼插模型', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (519, 516, '收藏爱好', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (520, 495, '健身玩具', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (521, 520, '炫舞毯', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (522, 520, '爬行垫/毯', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (523, 520, '户外玩具', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (524, 520, '戏水玩具', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (525, 495, '动漫玩具', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (526, 525, '电影周边', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (527, 525, '卡通周边', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (528, 525, '网游周边', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (529, 495, '益智玩具', 1, 8, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (530, 529, '摇铃/床铃', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (531, 529, '健身架', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (532, 529, '早教启智', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (533, 529, '拖拉玩具', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (534, 495, '积木拼插', 1, 9, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (535, 534, '积木', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (536, 534, '拼图', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (537, 534, '磁力棒', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (538, 534, '立体拼插', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (539, 495, 'DIY玩具', 1, 10, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (540, 539, '手工彩泥', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (541, 539, '绘画工具', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (542, 539, '情景玩具', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (543, 495, '创意减压', 1, 11, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (544, 543, '减压玩具', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (545, 543, '创意玩具', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (546, 495, '乐器相关', 1, 12, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (547, 546, '钢琴', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (548, 546, '电子琴', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (549, 546, '手风琴', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (550, 546, '吉他/贝斯', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (551, 546, '民族管弦乐器', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (552, 546, '西洋管弦乐', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (553, 546, '口琴/口风琴/竖笛', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (554, 546, '西洋打击乐器', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (555, 546, '各式乐器配件', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (556, 546, '电脑音乐', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (557, 546, '工艺礼品乐器', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (558, 0, '手机', 1, 10, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (559, 558, '手机通讯', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (560, 559, '手机', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (561, 559, '对讲机', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (562, 558, '运营商', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (563, 562, '购机送费', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (564, 562, '“0”元购机', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (565, 562, '选号中心', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (566, 562, '选号入网', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (567, 558, '手机配件', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (568, 567, '手机电池', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (569, 567, '蓝牙耳机', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (570, 567, '充电器/数据线', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (571, 567, '手机耳机', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (572, 567, '手机贴膜', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (573, 567, '手机存储卡', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (574, 567, '手机保护套', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (575, 567, '车载配件', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (576, 567, 'iPhone 配件', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (577, 567, '创意配件', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (578, 567, '便携/无线音响', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (579, 567, '手机饰品', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (580, 0, '数码', 1, 11, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (581, 580, '摄影摄像', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (582, 581, '数码相机', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (583, 581, '单电/微单相机', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (584, 581, '单反相机', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (585, 581, '摄像机', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (586, 581, '拍立得', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (587, 581, '运动相机', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (588, 581, '镜头', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (589, 581, '户外器材', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (590, 581, '影棚器材', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (591, 580, '数码配件', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (592, 591, '存储卡', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (593, 591, '读卡器', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (594, 591, '滤镜', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (595, 591, '闪光灯/手柄', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (596, 591, '相机包', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (597, 591, '三脚架/云台', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (598, 591, '相机清洁', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (599, 591, '相机贴膜', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (600, 591, '机身附件', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (601, 591, '镜头附件', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (602, 591, '电池/充电器', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (603, 591, '移动电源', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (604, 580, '智能设备', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (605, 604, '智能手环', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (606, 604, '智能手表', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (607, 604, '智能眼镜', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (608, 604, '运动跟踪器', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (609, 604, '健康监测', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (610, 604, '智能配饰', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (611, 604, '智能家居', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (612, 604, '体感车', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (613, 604, '其他配件', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (614, 580, '时尚影音', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (615, 614, 'MP3/MP4', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (616, 614, '智能设备', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (617, 614, '耳机/耳麦', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (618, 614, '音箱', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (619, 614, '高清播放器', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (620, 614, 'MP3/MP4配件', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (621, 614, '麦克风', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (622, 614, '专业音频', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (623, 614, '数码相框', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (624, 614, '苹果配件', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (625, 580, '电子教育', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (626, 625, '电子词典', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (627, 625, '电纸书', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (628, 625, '录音笔', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (629, 625, '复读机', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (630, 625, '点读机/笔', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (631, 625, '学生平板', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (632, 625, '早教机', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (633, 0, '家居家装', 1, 12, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (634, 633, '家纺', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (635, 634, '床品套件', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (636, 634, '被子', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (637, 634, '枕芯', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (638, 634, '床单被罩', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (639, 634, '毯子', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (640, 634, '床垫/床褥', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (641, 634, '蚊帐', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (642, 634, '抱枕靠垫', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (643, 634, '毛巾浴巾', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (644, 634, '电热毯', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (645, 634, '窗帘/窗纱', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (646, 634, '布艺软饰', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (647, 634, '凉席', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (648, 633, '灯具', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (649, 648, '台灯', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (650, 648, '节能灯', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (651, 648, '装饰灯', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (652, 648, '落地灯', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (653, 648, '应急灯/手电', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (654, 648, 'LED灯', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (655, 648, '吸顶灯', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (656, 648, '五金电器', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (657, 648, '筒灯射灯', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (658, 648, '吊灯', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (659, 648, '氛围照明', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (660, 633, '生活日用', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (661, 660, '收纳用品', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (662, 660, '雨伞雨具', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (663, 660, '浴室用品', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (664, 660, '缝纫/针织用品', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (665, 660, '洗晒/熨烫', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (666, 660, '净化除味', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (667, 633, '家装软饰', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (668, 667, '桌布/罩件', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (669, 667, '地毯地垫', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (670, 667, '沙发垫套/椅垫', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (671, 667, '相框/照片墙', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (672, 667, '装饰字画', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (673, 667, '节庆饰品', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (674, 667, '手工/十字绣', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (675, 667, '装饰摆件', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (676, 667, '保暖防护', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (677, 667, '帘艺隔断', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (678, 667, '墙贴/装饰贴', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (679, 667, '钟饰', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (680, 667, '花瓶花艺', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (681, 667, '香薰蜡烛', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (682, 667, '创意家居', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (683, 633, '清洁用品', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (684, 683, '纸品湿巾', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (685, 683, '衣物清洁', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (686, 683, '清洁工具', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (687, 683, '驱虫用品', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (688, 683, '家庭清洁', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (689, 683, '皮具护理', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (690, 683, '一次性用品', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (691, 633, '宠物生活', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (692, 691, '宠物主粮', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (693, 691, '宠物零食', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (694, 691, '医疗保健', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (695, 691, '家居日用', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (696, 691, '宠物玩具', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (697, 691, '出行装备', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (698, 691, '洗护美容', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (699, 0, '厨具', 1, 13, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (700, 699, '烹饪锅具', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (701, 700, '炒锅', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (702, 700, '煎锅', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (703, 700, '压力锅', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (704, 700, '蒸锅', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (705, 700, '汤锅', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (706, 700, '奶锅', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (707, 700, '锅具套装', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (708, 700, '煲类', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (709, 700, '水壶', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (710, 700, '火锅', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (711, 699, '刀剪菜板', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (712, 711, '菜刀', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (713, 711, '剪刀', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (714, 711, '刀具套装', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (715, 711, '砧板', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (716, 711, '瓜果刀/刨', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (717, 711, '多功能刀', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (718, 699, '厨房配件', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (719, 718, '保鲜盒', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (720, 718, '烘焙/烧烤', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (721, 718, '饭盒/提锅', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (722, 718, '储物/置物架', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (723, 718, '厨房DIY/小工具', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (724, 699, '水具酒具', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (725, 724, '塑料杯', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (726, 724, '运动水壶', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (727, 724, '玻璃杯', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (728, 724, '陶瓷/马克杯', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (729, 724, '保温杯', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (730, 724, '保温壶', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (731, 724, '酒杯/酒具', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (732, 724, '杯具套装', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (733, 699, '餐具', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (734, 733, '餐具套装', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (735, 733, '碗/碟/盘', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (736, 733, '筷勺/刀叉', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (737, 733, '一次性用品', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (738, 733, '果盘/果篮', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (739, 699, '茶具/咖啡具', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (740, 739, '整套茶具', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (741, 739, '茶杯', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (742, 739, '茶壶', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (743, 739, '茶盘茶托', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (744, 739, '茶叶罐', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (745, 739, '茶具配件', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (746, 739, '茶宠摆件', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (747, 739, '咖啡具', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (748, 739, '其他', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (749, 0, '服饰内衣', 1, 14, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (750, 749, '女装', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (751, 750, 'T恤', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (752, 750, '衬衫', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (753, 750, '针织衫', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (754, 750, '雪纺衫', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (755, 750, '卫衣', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (756, 750, '马甲', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (757, 750, '连衣裙', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (758, 750, '半身裙', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (759, 750, '牛仔裤', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (760, 750, '休闲裤', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (761, 750, '打底裤', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (762, 750, '正装裤', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (763, 750, '小西装', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (764, 750, '短外套', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (765, 750, '风衣', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (766, 750, '毛呢大衣', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (767, 750, '真皮皮衣', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (768, 750, '棉服', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (769, 750, '羽绒服', 1, 19, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (770, 750, '大码女装', 1, 20, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (771, 750, '中老年女装', 1, 21, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (772, 750, '婚纱', 1, 22, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (773, 750, '打底衫', 1, 23, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (774, 750, '旗袍/唐装', 1, 24, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (775, 750, '加绒裤', 1, 25, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (776, 750, '吊带/背心', 1, 26, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (777, 750, '羊绒衫', 1, 27, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (778, 750, '短裤', 1, 28, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (779, 750, '皮草', 1, 29, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (780, 750, '礼服', 1, 30, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (781, 750, '仿皮皮衣', 1, 31, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (782, 750, '羊毛衫', 1, 32, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (783, 750, '设计师/潮牌', 1, 33, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (784, 749, '男装', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (785, 784, '衬衫', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (786, 784, 'T恤', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (787, 784, 'POLO衫', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (788, 784, '针织衫', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (789, 784, '羊绒衫', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (790, 784, '卫衣', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (791, 784, '马甲/背心', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (792, 784, '夹克', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (793, 784, '风衣', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (794, 784, '毛呢大衣', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (795, 784, '仿皮皮衣', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (796, 784, '西服', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (797, 784, '棉服', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (798, 784, '羽绒服', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (799, 784, '牛仔裤', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (800, 784, '休闲裤', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (801, 784, '西裤', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (802, 784, '西服套装', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (803, 784, '大码男装', 1, 19, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (804, 784, '中老年男装', 1, 20, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (805, 784, '唐装/中山装', 1, 21, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (806, 784, '工装', 1, 22, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (807, 784, '真皮皮衣', 1, 23, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (808, 784, '加绒裤', 1, 24, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (809, 784, '卫裤/运动裤', 1, 25, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (810, 784, '短裤', 1, 26, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (811, 784, '设计师/潮牌', 1, 27, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (812, 784, '羊毛衫', 1, 28, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (813, 749, '内衣', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (814, 813, '文胸', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (815, 813, '女式内裤', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (816, 813, '男式内裤', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (817, 813, '睡衣/家居服', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (818, 813, '塑身美体', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (819, 813, '泳衣', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (820, 813, '吊带/背心', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (821, 813, '抹胸', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (822, 813, '连裤袜/丝袜', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (823, 813, '美腿袜', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (824, 813, '商务男袜', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (825, 813, '保暖内衣', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (826, 813, '情侣睡衣', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (827, 813, '文胸套装', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (828, 813, '少女文胸', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (829, 813, '休闲棉袜', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (830, 813, '大码内衣', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (831, 813, '内衣配件', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (832, 813, '打底裤袜', 1, 19, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (833, 813, '打底衫', 1, 20, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (834, 813, '秋衣秋裤', 1, 21, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (835, 813, '情趣内衣', 1, 22, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (836, 749, '服饰配件', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (837, 836, '太阳镜', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (838, 836, '光学镜架/镜片', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (839, 836, '围巾/手套/帽子套装', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (840, 836, '袖扣', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (841, 836, '棒球帽', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (842, 836, '毛线帽', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (843, 836, '遮阳帽', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (844, 836, '老花镜', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (845, 836, '装饰眼镜', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (846, 836, '防辐射眼镜', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (847, 836, '游泳镜', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (848, 836, '女士丝巾/围巾/披肩', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (849, 836, '男士丝巾/围巾', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (850, 836, '鸭舌帽', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (851, 836, '贝雷帽', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (852, 836, '礼帽', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (853, 836, '真皮手套', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (854, 836, '毛线手套', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (855, 836, '防晒手套', 1, 19, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (856, 836, '男士腰带/礼盒', 1, 20, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (857, 836, '女士腰带/礼盒', 1, 21, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (858, 836, '钥匙扣', 1, 22, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (859, 836, '遮阳伞/雨伞', 1, 23, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (860, 836, '口罩', 1, 24, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (861, 836, '耳罩/耳包', 1, 25, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (862, 836, '假领', 1, 26, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (863, 836, '毛线/布面料', 1, 27, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (864, 836, '领带/领结/领带夹', 1, 28, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (865, 0, '鞋靴', 1, 15, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (866, 865, '流行男鞋', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (867, 866, '商务休闲鞋', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (868, 866, '正装鞋', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (869, 866, '休闲鞋', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (870, 866, '凉鞋/沙滩鞋', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (871, 866, '男靴', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (872, 866, '功能鞋', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (873, 866, '拖鞋/人字拖', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (874, 866, '雨鞋/雨靴', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (875, 866, '传统布鞋', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (876, 866, '鞋配件', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (877, 866, '帆布鞋', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (878, 866, '增高鞋', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (879, 866, '工装鞋', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (880, 866, '定制鞋', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (881, 865, '时尚女鞋', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (882, 881, '高跟鞋', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (883, 881, '单鞋', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (884, 881, '休闲鞋', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (885, 881, '凉鞋', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (886, 881, '女靴', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (887, 881, '雪地靴', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (888, 881, '拖鞋/人字拖', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (889, 881, '踝靴', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (890, 881, '筒靴', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (891, 881, '帆布鞋', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (892, 881, '雨鞋/雨靴', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (893, 881, '妈妈鞋', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (894, 881, '鞋配件', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (895, 881, '特色鞋', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (896, 881, '鱼嘴鞋', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (897, 881, '布鞋/绣花鞋', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (898, 881, '马丁靴', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (899, 881, '坡跟鞋', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (900, 881, '松糕鞋', 1, 19, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (901, 881, '内增高', 1, 20, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (902, 881, '防水台', 1, 21, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (903, 0, '礼品箱包', 1, 16, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (904, 903, '潮流女包', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (905, 904, '钱包', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (906, 904, '手拿包/晚宴包', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (907, 904, '单肩包', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (908, 904, '双肩包', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (909, 904, '手提包', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (910, 904, '斜挎包', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (911, 904, '钥匙包', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (912, 904, '卡包/零钱包', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (913, 903, '精品男包', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (914, 913, '钱包/卡包', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (915, 913, '男士手包', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (916, 913, '商务公文包', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (917, 913, '双肩包', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (918, 913, '单肩/斜挎包', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (919, 913, '钥匙包', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (920, 903, '功能箱包', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (921, 920, '电脑包', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (922, 920, '拉杆箱/拉杆包', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (923, 920, '旅行包', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (924, 920, '旅行配件', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (925, 920, '休闲运动包', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (926, 920, '登山包', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (927, 920, '妈咪包', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (928, 920, '书包', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (929, 920, '相机包', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (930, 920, '腰包/胸包', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (931, 903, '礼品', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (932, 931, '火机烟具', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (933, 931, '礼品文具', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (934, 931, '军刀军具', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (935, 931, '收藏品', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (936, 931, '工艺礼品', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (937, 931, '创意礼品', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (938, 931, '礼盒礼券', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (939, 931, '鲜花绿植', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (940, 931, '婚庆用品', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (941, 931, '京东卡', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (942, 931, '美妆礼品', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (943, 931, '地方礼品', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (944, 931, '古董把玩', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (945, 903, '奢侈品', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (946, 945, '箱包', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (947, 945, '钱包', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (948, 945, '服饰', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (949, 945, '腰带', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (950, 945, '太阳镜/眼镜框', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (951, 945, '配件', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (952, 945, '鞋靴', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (953, 945, '饰品', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (954, 945, '名品腕表', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (955, 945, '高档化妆品', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (956, 903, '婚庆', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (957, 956, '婚嫁首饰', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (958, 956, '婚纱摄影', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (959, 956, '婚纱礼服', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (960, 956, '婚庆服务', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (961, 956, '婚庆礼品/用品', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (962, 956, '婚宴', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (963, 0, '珠宝', 1, 17, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (964, 963, '时尚饰品', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (965, 964, '项链', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (966, 964, '手链/脚链', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (967, 964, '戒指', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (968, 964, '耳饰', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (969, 964, '头饰', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (970, 964, '胸针', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (971, 964, '婚庆饰品', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (972, 964, '饰品配件', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (973, 963, '纯金K金饰品', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (974, 973, '吊坠/项链', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (975, 973, '手镯/手链/脚链', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (976, 973, '戒指', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (977, 973, '耳饰', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (978, 963, '金银投资', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (979, 978, '工艺金', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (980, 978, '工艺银', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (981, 963, '银饰', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (982, 981, '吊坠/项链', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (983, 981, '手镯/手链/脚链', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (984, 981, '戒指/耳饰', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (985, 981, '宝宝银饰', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (986, 981, '千足银手镯', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (987, 963, '钻石', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (988, 987, '裸钻', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (989, 987, '戒指', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (990, 987, '项链/吊坠', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (991, 987, '耳饰', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (992, 987, '手镯/手链', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (993, 963, '翡翠玉石', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (994, 993, '项链/吊坠', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (995, 993, '手镯/手串', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (996, 993, '戒指', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (997, 993, '耳饰', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (998, 993, '挂件/摆件/把件', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (999, 993, '高值收藏', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1000, 963, '水晶玛瑙', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1001, 1000, '项链/吊坠', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1002, 1000, '耳饰', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1003, 1000, '手镯/手链/脚链', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1004, 1000, '戒指', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1005, 1000, '头饰/胸针', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1006, 1000, '摆件/挂件', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1007, 963, '彩宝', 1, 8, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1008, 1007, '项链/吊坠', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1009, 1007, '耳饰', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1010, 1007, '手镯/手链', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1011, 1007, '戒指', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1012, 963, '铂金', 1, 9, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1013, 1012, '项链/吊坠', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1014, 1012, '手镯/手链/脚链', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1015, 1012, '戒指', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1016, 1012, '耳饰', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1017, 963, '天然木饰', 1, 10, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1018, 1017, '小叶紫檀', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1019, 1017, '黄花梨', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1020, 1017, '沉香', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1021, 1017, '金丝楠', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1022, 1017, '菩提', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1023, 1017, '其他', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1024, 963, '珍珠', 1, 11, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1025, 1024, '项链', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1026, 1024, '吊坠', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1027, 1024, '耳饰', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1028, 1024, '手链', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1029, 1024, '戒指', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1030, 1024, '胸针', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1031, 0, '运动健康', 1, 18, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1032, 1031, '运动鞋包', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1033, 1032, '休闲鞋', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1034, 1032, '板鞋', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1035, 1032, '帆布鞋', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1036, 1032, '专项运动鞋', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1037, 1032, '跑步鞋', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1038, 1032, '篮球鞋', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1039, 1032, '足球鞋', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1040, 1032, '训练鞋', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1041, 1032, '乒羽网鞋', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1042, 1032, '拖鞋', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1043, 1032, '运动包', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1044, 1031, '运动服饰', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1045, 1044, '运动配饰', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1046, 1044, '羽绒服', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1047, 1044, '毛衫/线衫', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1048, 1044, '乒羽网服', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1049, 1044, '训练服', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1050, 1044, '运动背心', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1051, 1044, '卫衣/套头衫', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1052, 1044, '夹克/风衣', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1053, 1044, 'T恤', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1054, 1044, '棉服', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1055, 1044, '运动裤', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1056, 1044, '套装', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1057, 1031, '骑行运动', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1058, 1057, '折叠车', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1059, 1057, '山地车/公路车', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1060, 1057, '电动车', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1061, 1057, '其他整车', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1062, 1057, '骑行服', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1063, 1057, '骑行装备', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1064, 1031, '垂钓用品', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1065, 1064, '鱼竿鱼线', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1066, 1064, '浮漂鱼饵', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1067, 1064, '钓鱼桌椅', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1068, 1064, '钓鱼配件', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1069, 1064, '钓箱鱼包', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1070, 1064, '其它', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1071, 1031, '游泳用品', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1072, 1071, '泳镜', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1073, 1071, '泳帽', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1074, 1071, '游泳包防水包', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1075, 1071, '女士泳衣', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1076, 1071, '男士泳衣', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1077, 1071, '比基尼', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1078, 1071, '其它', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1079, 1031, '户外鞋服', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1080, 1079, '冲锋衣裤', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1081, 1079, '速干衣裤', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1082, 1079, '滑雪服', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1083, 1079, '羽绒服/棉服', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1084, 1079, '休闲衣裤', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1085, 1079, '抓绒衣裤', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1086, 1079, '软壳衣裤', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1087, 1079, 'T恤', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1088, 1079, '户外风衣', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1089, 1079, '功能内衣', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1090, 1079, '军迷服饰', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1091, 1079, '登山鞋', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1092, 1079, '雪地靴', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1093, 1079, '徒步鞋', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1094, 1079, '越野跑鞋', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1095, 1079, '休闲鞋', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1096, 1079, '工装鞋', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1097, 1079, '溯溪鞋', 1, 18, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1098, 1079, '沙滩/凉拖', 1, 19, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1099, 1079, '户外袜', 1, 20, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1100, 1031, '户外装备', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1101, 1100, '帐篷/垫子', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1102, 1100, '睡袋/吊床', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1103, 1100, '登山攀岩', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1104, 1100, '背包', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1105, 1100, '户外配饰', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1106, 1100, '户外照明', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1107, 1100, '户外仪表', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1108, 1100, '户外工具', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1109, 1100, '望远镜', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1110, 1100, '旅游用品', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1111, 1100, '便携桌椅床', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1112, 1100, '野餐烧烤', 1, 12, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1113, 1100, '军迷用品', 1, 13, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1114, 1100, '救援装备', 1, 14, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1115, 1100, '滑雪装备', 1, 15, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1116, 1100, '极限户外', 1, 16, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1117, 1100, '冲浪潜水', 1, 17, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1118, 1031, '健身训练', 1, 8, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1119, 1118, '综合训练器', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1120, 1118, '其他大型器械', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1121, 1118, '哑铃', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1122, 1118, '仰卧板/收腹机', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1123, 1118, '其他中小型器材', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1124, 1118, '瑜伽舞蹈', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1125, 1118, '武术搏击', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1126, 1118, '健身车/动感单车', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1127, 1118, '跑步机', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1128, 1118, '运动护具', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1129, 1031, '纤体瑜伽', 1, 9, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1130, 1129, '瑜伽垫', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1131, 1129, '瑜伽服', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1132, 1129, '瑜伽配件', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1133, 1129, '瑜伽套装', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1134, 1129, '舞蹈鞋服', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1135, 1031, '体育用品', 1, 10, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1136, 1135, '羽毛球', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1137, 1135, '乒乓球', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1138, 1135, '篮球', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1139, 1135, '足球', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1140, 1135, '网球', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1141, 1135, '排球', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1142, 1135, '高尔夫', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1143, 1135, '台球', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1144, 1135, '棋牌麻将', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1145, 1135, '轮滑滑板', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1146, 1135, '其他', 1, 11, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1147, 0, '彩票、旅行、充值、票务', 1, 19, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1148, 1147, '彩票', 1, 1, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1149, 1148, '双色球', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1150, 1148, '大乐透', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1151, 1148, '福彩3D', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1152, 1148, '排列三', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1153, 1148, '排列五', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1154, 1148, '七星彩', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1155, 1148, '七乐彩', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1156, 1148, '竞彩足球', 1, 8, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1157, 1148, '竞彩篮球', 1, 9, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1158, 1148, '新时时彩', 1, 10, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1159, 1147, '机票', 1, 2, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1160, 1159, '国内机票', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1161, 1147, '酒店', 1, 3, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1162, 1161, '国内酒店', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1163, 1161, '酒店团购', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1164, 1147, '旅行', 1, 4, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1165, 1164, '度假', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1166, 1164, '景点', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1167, 1164, '租车', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1168, 1164, '火车票', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1169, 1164, '旅游团购', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1170, 1147, '充值', 1, 5, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1171, 1170, '手机充值', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1172, 1147, '游戏', 1, 6, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1173, 1172, '游戏点卡', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1174, 1172, 'QQ充值', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1175, 1147, '票务', 1, 7, 1, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1176, 1175, '电影票', 1, 1, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1177, 1175, '演唱会', 1, 2, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1178, 1175, '话剧歌剧', 1, 3, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1179, 1175, '音乐会', 1, 4, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1180, 1175, '体育赛事', 1, 5, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1181, 1175, '舞蹈芭蕾', 1, 6, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1182, 1175, '戏曲综艺', 1, 7, 0, NULL, '2014-10-15 18:31:55', '2014-10-15 18:31:55');
INSERT INTO `prd_category` VALUES (1183, 0, '品牌周边', 1, 1, 1, NULL, '2018-04-18 20:37:47', '2018-04-18 20:37:49');
INSERT INTO `prd_category` VALUES (1184, 1183, '品牌周边', 1, 1, 0, NULL, '2018-04-18 20:38:07', '2018-04-18 20:38:09');
INSERT INTO `prd_category` VALUES (1197, 0, '123', 1, 0, 0, '', '2020-09-12 18:02:52', '2020-09-12 18:02:52');
INSERT INTO `prd_category` VALUES (1201, 0, '测试商品分类', 1, 0, 1, '', '2020-09-14 19:57:37', '2020-09-14 19:57:37');

-- ----------------------------
-- Table structure for sys_address
-- ----------------------------
DROP TABLE IF EXISTS `sys_address`;
CREATE TABLE `sys_address`  (
  `address_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收货地址编号',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `street_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `is_default` int(1) NULL DEFAULT NULL COMMENT '是否为默认',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_address
-- ----------------------------
INSERT INTO `sys_address` VALUES (1, 'admin', '1', '江南大道3588', '1385555', 0);
INSERT INTO `sys_address` VALUES (2, 'admin', '1', '3588恒生电子', '13812222', 0);
INSERT INTO `sys_address` VALUES (3, 'test', '2', '南湖春城', '123111111111', 1);
INSERT INTO `sys_address` VALUES (5, 'test', '2', '江南大8888道3588123123123', '13222222222', 1);
INSERT INTO `sys_address` VALUES (6, 'test', '2', '济南大学', '13222222222', 1);
INSERT INTO `sys_address` VALUES (7, 'test', '2', '济南大学', '13222222222', 1);
INSERT INTO `sys_address` VALUES (11, '1', '4', '1', '1', 0);
INSERT INTO `sys_address` VALUES (12, '2', '4', '2', '2', 1);

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_password` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '超级管理员', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200730105134.png');

-- ----------------------------
-- Table structure for sys_arg
-- ----------------------------
DROP TABLE IF EXISTS `sys_arg`;
CREATE TABLE `sys_arg`  (
  `sys_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sys_user_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `init_date` datetime(0) NULL DEFAULT NULL,
  `sys_views_count` int(11) NULL DEFAULT 0,
  `sys_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_arg
-- ----------------------------
INSERT INTO `sys_arg` VALUES ('商城后台管理', '1', '2020-09-01 10:05:38', 23, NULL);

-- ----------------------------
-- Table structure for sys_cart
-- ----------------------------
DROP TABLE IF EXISTS `sys_cart`;
CREATE TABLE `sys_cart`  (
  `cart_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `user_id` int(20) NULL DEFAULT NULL COMMENT '用户id',
  `product_id` int(11) NULL DEFAULT NULL COMMENT ' 产品id',
  `product_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品图片',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `checked` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_num` int(11) NULL DEFAULT NULL COMMENT '产品数量',
  `product_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '产品价格',
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_cart
-- ----------------------------
INSERT INTO `sys_cart` VALUES (11, 1, 1, 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', '《深泽直人》', '0', 1, 199.00);
INSERT INTO `sys_cart` VALUES (12, 2, 1, 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', '《深泽直人》', '0', 1, 199.00);

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `goods_list` varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单商品',
  `order_total` decimal(10, 0) NULL DEFAULT NULL COMMENT '订单总价',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '收货地址',
  `order_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `create_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_order
-- ----------------------------
INSERT INTO `sys_order` VALUES (9, 1, '[{\"cartId\":10,\"checked\":\"1\",\"productId\":2,\"productImg\":\"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg\",\"productName\":\"坚果 Pro 软胶保护套\",\"productNum\":1,\"productPrice\":49.00,\"userId\":1}]', 995, 1, '1', '20200801154604');
INSERT INTO `sys_order` VALUES (10, 1, '[{\"cartId\":10,\"checked\":\"1\",\"productId\":2,\"productImg\":\"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg\",\"productName\":\"坚果 Pro 软胶保护套\",\"productNum\":1,\"productPrice\":49.00,\"userId\":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO `sys_order` VALUES (11, 1, '[{\"cartId\":10,\"checked\":\"1\",\"productId\":2,\"productImg\":\"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg\",\"productName\":\"坚果 Pro 软胶保护套\",\"productNum\":1,\"productPrice\":49.00,\"userId\":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO `sys_order` VALUES (12, 1, '[{\"cartId\":10,\"checked\":\"1\",\"productId\":2,\"productImg\":\"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg\",\"productName\":\"坚果 Pro 软胶保护套\",\"productNum\":1,\"productPrice\":49.00,\"userId\":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO `sys_order` VALUES (13, 1, '[{\"cartId\":10,\"checked\":\"1\",\"productId\":2,\"productImg\":\"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg\",\"productName\":\"坚果 Pro 软胶保护套\",\"productNum\":1,\"productPrice\":49.00,\"userId\":1}]', 49000, 1, '1', '20200801160115');
INSERT INTO `sys_order` VALUES (14, 1, '[{\"cartId\":10,\"checked\":\"1\",\"productId\":2,\"productImg\":\"http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg\",\"productName\":\"坚果 Pro 软胶保护套\",\"productNum\":1,\"productPrice\":49.00,\"userId\":1}]', 995, 1, '1', '20200801154604');

-- ----------------------------
-- Table structure for sys_product
-- ----------------------------
DROP TABLE IF EXISTS `sys_product`;
CREATE TABLE `sys_product`  (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `cate_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '商品分类id',
  `sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '零售价',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `product_image_small` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品小图',
  `product_image_big` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品大图\r\n',
  `product_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品详细信息',
  `stock` int(11) NULL DEFAULT NULL COMMENT '库存',
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `limit_num` int(11) NULL DEFAULT NULL COMMENT '限制购买数量',
  `create_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建日期',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '创建时间',
  PRIMARY KEY (`product_id`) USING BTREE,
  UNIQUE INDEX `uk_product`(`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_product
-- ----------------------------
INSERT INTO `sys_product` VALUES (1, '[2,6]', 199.00, '《深泽直人》', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg,https://resource.smartisan.com/resource/4b8d00ab6ba508a977a475988e0fdb53.jpg,https://resource.smartisan.com/resource/87ea3888491d172b7d7a0e78e4294b4b.jpg,https://resource.smartisan.com/resource/8d30265188ddd1ba05e34f669c5dcf1c.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 999, '《深泽直人》2', 99, '20200912', '135850');
INSERT INTO `sys_product` VALUES (2, '[74,89,94]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 1, '20200912', '140205');
INSERT INTO `sys_product` VALUES (3, '[558,559,560]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200925', '170649');
INSERT INTO `sys_product` VALUES (8, '[1,7,10]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200912', '140209');
INSERT INTO `sys_product` VALUES (9, '[1,11,14]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200912', '140116');
INSERT INTO `sys_product` VALUES (10, '[1,7,9]', 49.00, '坚果 Pro 软胶保护套', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 'http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 100, '坚果 Pro 软胶保护套', 99, '20200925', '162518');
INSERT INTO `sys_product` VALUES (26, '[1,2,3]', 199.00, '《深泽直人》10', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg', 'http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg,https://resource.smartisan.com/resource/4b8d00ab6ba508a977a475988e0fdb53.jpg,https://resource.smartisan.com/resource/87ea3888491d172b7d7a0e78e4294b4b.jpg,https://resource.smartisan.com/resource/8d30265188ddd1ba05e34f669c5dcf1c.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg,http://image.smartisanos.cn/resource/5e4e40120d09fb6791f9430f914c6f68.jpg,https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg,https://resource.smartisan.com/resource/4b8d00ab6ba508a977a475988e0fdb53.jpg,https://resource.smartisan.com/resource/87ea3888491d172b7d7a0e78e4294b4b.jpg,https://resource.smartisan.com/resource/8d30265188ddd1ba05e34f669c5dcf1c.jpg,http://image.smartisanos.cn/resource/902befd5f32a8caf4ca79b55d39ee25a.jpg', 999, '《深泽直人》2', 99, '20200925', '162507');
INSERT INTO `sys_product` VALUES (27, '[1,2,3]', 199.00, '《深泽直人》11', ',http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/4.jpg,http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/2.jpg,http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/3.jpg', ',http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/1123.png', ',http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/Inkedlicense2 (1)_LI.jpg', 999, '《深泽直人》2', 2, '20200927', '165249');
INSERT INTO `sys_product` VALUES (38, '[1,2,3]', 1.00, '1', ',http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80mask2.jpg', ',http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80mask.jpg', ',http://192.168.171.135:3333/oss/minio/view?filePath=2020-09-27/80M.JPG', 1, '1', 1, '20200927', '172939');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `avatar` varchar(16000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登陆账号',
  `user_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登陆密码',
  `cart_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购物车',
  `address_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收获地址',
  `create_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `create_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `uk_user`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '张三', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200730105134.png', 'admin', 'admin', NULL, NULL, '12231510', '20200915');
INSERT INTO `sys_user` VALUES (2, '李四', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200730105134.png', 'test', 'test', NULL, NULL, '12231510', '20200915');
INSERT INTO `sys_user` VALUES (3, '游客20200729190028', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'test123', 'test', NULL, NULL, '12231510', '20200915');
INSERT INTO `sys_user` VALUES (4, '游客20200801161202', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 't', 't', NULL, NULL, '12231510', '20200915');
INSERT INTO `sys_user` VALUES (5, '游客20200915192034', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn', 'cyn', NULL, NULL, '0', '0');
INSERT INTO `sys_user` VALUES (6, '游客20200915192206', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn2', 'cyn2', NULL, NULL, '0', '0');
INSERT INTO `sys_user` VALUES (7, '游客20200915192239', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn3', 'cyn3', NULL, NULL, '0', '0');
INSERT INTO `sys_user` VALUES (8, '游客20200915192329', 'https://gitee.com/ching7777/gitee_graph_bed/raw/master/img/20200729185413.png', 'cyn4', 'cyn4', NULL, NULL, '0', '192329');

SET FOREIGN_KEY_CHECKS = 1;
