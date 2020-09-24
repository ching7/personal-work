/*
 Navicat Premium Data Transfer

 Source Server         : 106.54.70.153
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : 106.54.70.153:3306
 Source Schema         : mall_template

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 24/09/2020 16:59:35
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '对象存储信息表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
