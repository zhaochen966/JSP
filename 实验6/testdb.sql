/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : testdb

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 20/10/2019 16:19:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `EMP_ID` int(6) NOT NULL,
  `EMP_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SALARY` float(10, 2) NULL DEFAULT NULL,
  `DEPT` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '赵宸', 'manager', 1024.00, '10');
INSERT INTO `employee` VALUES (2, '赵C宸', 'boss', 1024.00, '10');
INSERT INTO `employee` VALUES (3, '赵c', 'programmer', 1024.00, '10');
INSERT INTO `employee` VALUES (4, '赵宸c', 'work', 2.00, '2');
INSERT INTO `employee` VALUES (5, '赵c宸', 'manager', 1028.00, '计算机学院');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `age` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `education` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '学历',
  `address` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` float(8, 2) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, '李小春', 23, '其它', '海口市人民大道1800号', 8900.00);
INSERT INTO `employees` VALUES (2, '张辉', 28, '本科', '广州天河区珠村市场', 15800.98);
INSERT INTO `employees` VALUES (3, '林贤弟', 29, '博士', '广州白云区龙塘村120号', 18990.99);
INSERT INTO `employees` VALUES (4, '王小简', 23, '本科', '海口人民大道1688号', 899.98);
INSERT INTO `employees` VALUES (5, '蔡世杰', 27, '专科', '上海市宝山区联杨路2211弄26号', 15800.00);
INSERT INTO `employees` VALUES (6, '张承龙', 30, '本科', '上海市虹口区虬江路522号', 23000.00);
INSERT INTO `employees` VALUES (7, '李林奕', 26, '本科', '上海市徐汇区漕宝路440号', 32600.00);
INSERT INTO `employees` VALUES (8, '刘皓轩', 28, '研究生', '上海松江九亭立同商务广场', 29000.00);
INSERT INTO `employees` VALUES (9, '周佳豪', 36, '博士', '深圳市宝安区沙井街道办107国道富达工业区B栋', 48000.00);
INSERT INTO `employees` VALUES (10, '赵宸', 23, '本科', '福田区文蔚大厦19层', 9800.00);

SET FOREIGN_KEY_CHECKS = 1;
