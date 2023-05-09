/*
 Navicat Premium Data Transfer

 Source Server         : tanhua-mysql
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : tanhua

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 03/06/2021 09:35:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_announcement
-- ----------------------------
DROP TABLE IF EXISTS `tb_announcement`;
CREATE TABLE `tb_announcement`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `created`(`created`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_announcement
-- ----------------------------
INSERT INTO `tb_announcement` VALUES (1, '探花新版本上线发布啦～,盛夏high趴开始了，赶紧来报名吧！', '探花App2019年7月23日起在苹果商店…,浓情夏日，清爽一聚，探花将吧大家聚…', '2019-10-14 11:06:34', '2019-10-14 11:06:37');
INSERT INTO `tb_announcement` VALUES (2, '探花交友的圈子功能正式上线啦~~', '探花交友的圈子功能正式上线啦，欢迎使用~', '2019-10-14 11:09:31', '2019-10-14 11:09:33');
INSERT INTO `tb_announcement` VALUES (3, '国庆放假期间，探花交友正常使用~', '国庆放假期间，探花交友正常使用~', '2019-10-14 11:10:01', '2019-10-14 11:10:04');

-- ----------------------------
-- Table structure for tb_black_list
-- ----------------------------
DROP TABLE IF EXISTS `tb_black_list`;
CREATE TABLE `tb_black_list`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `black_user_id` bigint(20) NULL DEFAULT NULL,
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '黑名单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_black_list
-- ----------------------------
INSERT INTO `tb_black_list` VALUES (28, 106, 2, NULL, NULL);
INSERT INTO `tb_black_list` VALUES (29, 106, 3, NULL, NULL);
INSERT INTO `tb_black_list` VALUES (30, 106, 5, NULL, NULL);
INSERT INTO `tb_black_list` VALUES (31, 106, 4, NULL, NULL);

-- ----------------------------
-- Table structure for tb_question
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题内容',
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_question
-- ----------------------------
INSERT INTO `tb_question` VALUES (4, 106, '我喜欢编程', '2021-04-27 10:37:05', '2021-04-27 10:37:28');

-- ----------------------------
-- Table structure for tb_settings
-- ----------------------------
DROP TABLE IF EXISTS `tb_settings`;
CREATE TABLE `tb_settings`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `like_notification` tinyint(4) NULL DEFAULT 1 COMMENT '推送喜欢通知',
  `pinglun_notification` tinyint(4) NULL DEFAULT 1 COMMENT '推送评论通知',
  `gonggao_notification` tinyint(4) NULL DEFAULT 1 COMMENT '推送公告通知',
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_settings
-- ----------------------------
INSERT INTO `tb_settings` VALUES (2, 106, 0, 0, 1, '2021-04-27 10:52:37', '2021-04-27 10:52:52');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码，需要加密',
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `hx_user` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hx_password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '13500000000', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:09', NULL, NULL);
INSERT INTO `tb_user` VALUES (2, '13500000001', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:50:32', '2021-05-26 18:16:09', NULL, NULL);
INSERT INTO `tb_user` VALUES (3, '13500000002', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:09', NULL, NULL);
INSERT INTO `tb_user` VALUES (4, '13500000003', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:09', NULL, NULL);
INSERT INTO `tb_user` VALUES (5, '13500000004', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:09', NULL, NULL);
INSERT INTO `tb_user` VALUES (6, '13500000005', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:09', NULL, NULL);
INSERT INTO `tb_user` VALUES (7, '13500000006', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:09', NULL, NULL);
INSERT INTO `tb_user` VALUES (8, '13500000007', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (9, '13500000008', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (10, '13500000009', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (11, '13496418811', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (12, '13501605527', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (13, '13814273863', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (14, '13980560088', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (15, '13287655532', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (16, '13392532132', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (17, '13305577548', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (18, '13056740178', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (19, '13968734556', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (20, '13790585392', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:10', NULL, NULL);
INSERT INTO `tb_user` VALUES (21, '13783990035', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (22, '13955001055', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (23, '13503888939', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (24, '13584175268', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (25, '13381313372', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (26, '13255389620', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (27, '13690910957', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (28, '13376147486', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (29, '13467015997', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (30, '13248053315', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (31, '13618464100', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (32, '13443447446', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (33, '13125719539', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:11', NULL, NULL);
INSERT INTO `tb_user` VALUES (34, '13072800811', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (35, '13145571979', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (36, '13720672325', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (37, '13055381341', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (38, '13349885884', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (39, '13347146816', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (40, '13179664691', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (41, '13766900927', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (42, '13151553585', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (43, '13391205369', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (44, '13133094367', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:12', NULL, NULL);
INSERT INTO `tb_user` VALUES (45, '13281763998', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (46, '13936660584', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (47, '13052316704', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (48, '13324491235', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (49, '13314858500', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (50, '13304162069', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (51, '13228119966', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (52, '13303326951', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (53, '13949043386', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:13', NULL, NULL);
INSERT INTO `tb_user` VALUES (54, '13117484024', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:14', NULL, NULL);
INSERT INTO `tb_user` VALUES (55, '13468570608', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:14', NULL, NULL);
INSERT INTO `tb_user` VALUES (56, '13829424512', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:14', NULL, NULL);
INSERT INTO `tb_user` VALUES (57, '13667416111', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:14', NULL, NULL);
INSERT INTO `tb_user` VALUES (58, '13107800128', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:14', NULL, NULL);
INSERT INTO `tb_user` VALUES (59, '13456540976', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:14', NULL, NULL);
INSERT INTO `tb_user` VALUES (60, '13986961800', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (61, '13471803074', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (62, '13291235699', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (63, '13165654879', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (64, '13160861931', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (65, '13387208557', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (66, '13021534882', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (67, '13025422987', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:15', NULL, NULL);
INSERT INTO `tb_user` VALUES (68, '13536312434', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (69, '13935547569', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (70, '13936197370', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (71, '13376796578', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (72, '13773395735', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (73, '13312354710', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (74, '13206863662', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (75, '13041697373', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:16', NULL, NULL);
INSERT INTO `tb_user` VALUES (76, '13274664831', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (77, '13011170045', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (78, '13439410129', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (79, '13374944361', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (80, '13876020928', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (81, '13783165166', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (82, '13278257374', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (83, '13932855668', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (84, '13861882191', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (85, '13789549699', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:17', NULL, NULL);
INSERT INTO `tb_user` VALUES (86, '13762048705', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (87, '13816921897', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (88, '13790600059', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (89, '13501033423', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (90, '13185229233', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (91, '13867747315', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (92, '13201151587', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (93, '13992764840', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (94, '13162800744', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (95, '13626499286', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (96, '13790972847', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (97, '13806542590', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (98, '13605370098', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:18', NULL, NULL);
INSERT INTO `tb_user` VALUES (99, '13745677232', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-02 16:43:46', '2021-05-26 18:16:19', NULL, NULL);
INSERT INTO `tb_user` VALUES (106, '13800138000', '123456', '2020-12-21 11:06:16', '2021-05-26 18:16:19', NULL, NULL);

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `id` bigint(20) NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `tags` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '单身,本科,年龄相仿' COMMENT '用户标签：多个用逗号分隔',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '性别，1-男，2-女，3-未知',
  `age` int(11) NULL DEFAULT NULL COMMENT '用户年龄',
  `education` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '居住城市',
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生日',
  `cover_pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图片',
  `profession` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业',
  `income` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收入',
  `created` datetime NULL DEFAULT NULL,
  `updated` datetime NULL DEFAULT NULL,
  `marriage` int(1) NULL DEFAULT 0 COMMENT '0：未婚，1：已婚',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------
INSERT INTO `tb_user_info` VALUES (1, '相思落无声', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 21, '本科', '北京市-北京城区-东城区', '2019-09-30', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '30', '2019-08-02 16:44:23', '2019-10-30 13:50:11', 0);
INSERT INTO `tb_user_info` VALUES (2, '半缕轻烟', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 22, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '30', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (3, '隐隐仙姬', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 23, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (4, '枕花眠', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 24, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (5, '痴迷旧戏', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 25, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (6, '四号花店', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 26, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (7, '相似爱人', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 27, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (8, '无语恨轻别', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 28, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (9, '海棠才谢', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 29, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (10, '花辞树', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 30, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (11, '花花花世界', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 38, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (12, '梦里的画', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 49, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (13, '谁动了我的冬天', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 36, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (14, '梦里的画', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 21, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (15, '下了夏天', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 48, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (16, '凄羙', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 34, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (17, '舍不得', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 47, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (18, '花花公子', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 20, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (19, '善變的愛情', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 48, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (20, '你让我伤肾', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 21, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (21, '抒写我的青春', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 30, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (22, 'heima_22', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 49, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (23, 'heima_23', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 27, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (24, 'heima_24', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 35, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (25, 'heima_25', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 38, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (26, 'heima_26', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 35, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (27, 'heima_27', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 45, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (28, 'heima_28', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 37, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (29, 'heima_29', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 40, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (30, 'heima_30', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 49, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (31, 'heima_31', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 37, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (32, 'heima_32', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 44, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (33, 'heima_33', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 26, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (34, 'heima_34', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 22, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (35, 'heima_35', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 35, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (36, 'heima_36', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 26, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (37, 'heima_37', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 28, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (38, 'heima_38', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 48, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (39, 'heima_39', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 42, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (40, 'heima_40', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 21, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (41, 'heima_41', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 25, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (42, 'heima_42', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 41, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (43, 'heima_43', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 41, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (44, 'heima_44', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 46, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (45, 'heima_45', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 39, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (46, 'heima_46', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 27, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (47, 'heima_47', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 45, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (48, 'heima_48', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 25, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (49, 'heima_49', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 36, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (50, 'heima_50', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 23, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (51, 'heima_51', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 42, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (52, 'heima_52', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 26, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (53, 'heima_53', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 23, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (54, 'heima_54', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 37, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (55, 'heima_55', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 38, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (56, 'heima_56', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 40, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (57, 'heima_57', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 40, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (58, 'heima_58', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 33, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (59, 'heima_59', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 29, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (60, 'heima_60', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 21, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (61, 'heima_61', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 49, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (62, 'heima_62', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 47, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (63, 'heima_63', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 35, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (64, 'heima_64', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 25, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (65, 'heima_65', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 43, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (66, 'heima_66', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 28, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (67, 'heima_67', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 37, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (68, 'heima_68', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 36, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (69, 'heima_69', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 30, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (70, 'heima_70', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 24, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (71, 'heima_71', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 48, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (72, 'heima_72', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 47, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (73, 'heima_73', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 43, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (74, 'heima_74', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 42, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (75, 'heima_75', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 37, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (76, 'heima_76', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 24, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (77, 'heima_77', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 23, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (78, 'heima_78', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 38, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (79, 'heima_79', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 20, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (80, 'heima_80', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 47, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (81, 'heima_81', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_14.jpg', '单身,本科,年龄相仿', 'woman', 41, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (82, 'heima_82', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 41, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (83, 'heima_83', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 41, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (84, 'heima_84', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 43, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (85, 'heima_85', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 38, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (86, 'heima_86', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 34, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (87, 'heima_87', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 29, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (88, 'heima_88', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 34, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (89, 'heima_89', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 34, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (90, 'heima_90', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '单身,本科,年龄相仿', 'woman', 45, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_13.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (91, 'heima_91', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '单身,本科,年龄相仿', 'woman', 27, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_4.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (92, 'heima_92', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '单身,本科,年龄相仿', 'woman', 45, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_5.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (93, 'heima_93', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '单身,本科,年龄相仿', 'woman', 30, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_6.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (94, 'heima_94', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '单身,本科,年龄相仿', 'woman', 48, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_7.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (95, 'heima_95', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '单身,本科,年龄相仿', 'woman', 32, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_8.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (96, 'heima_96', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '单身,本科,年龄相仿', 'woman', 41, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_9.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (97, 'heima_97', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '单身,本科,年龄相仿', 'woman', 23, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_10.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (98, 'heima_98', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '单身,本科,年龄相仿', 'woman', 28, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_11.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (99, 'heima_99', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '单身,本科,年龄相仿', 'woman', 29, '本科', '北京市-北京城区-东城区', '2019-08-01', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2019-08-02 16:44:23', '2019-08-02 16:44:23', 0);
INSERT INTO `tb_user_info` VALUES (106, '小二黑', 'https://tanhua001.oss-cn-beijing.aliyuncs.com//2021/05/07/cd212b26-47c8-4058-af77-77e12a549e32.jpg', '单身,本科,年龄相仿', 'woman', 18, '本科', '北京市-北京城区-东城区', '2019-11-19', 'https://tanhua-dev.oss-cn-zhangjiakou.aliyuncs.com/images/tanhua/avatar_12.jpg', '计算机行业', '40', '2020-12-21 11:06:35', '2020-12-23 09:17:24', 0);

SET FOREIGN_KEY_CHECKS = 1;
