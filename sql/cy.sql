/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : cy

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 24/12/2020 18:30:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cy_article
-- ----------------------------
DROP TABLE IF EXISTS `cy_article`;
CREATE TABLE `cy_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '副标题',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '封面',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `created_time` datetime(0) NOT NULL COMMENT '创建时间',
  `hit` int(11) NOT NULL DEFAULT 0 COMMENT '点击数',
  `user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) NOT NULL COMMENT '创建时间(时间戳)',
  `view` int(11) NOT NULL DEFAULT 0 COMMENT '查看次数',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cy_article_reply
-- ----------------------------
DROP TABLE IF EXISTS `cy_article_reply`;
CREATE TABLE `cy_article_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '文章id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '回复内容',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间(时间戳)',
  `hit` int(11) NOT NULL DEFAULT 0 COMMENT '热度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '文章回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cy_cooperate
-- ----------------------------
DROP TABLE IF EXISTS `cy_cooperate`;
CREATE TABLE `cy_cooperate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '电话',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1.合伙人 2.采购商 3.供应商',
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:未对接 1：已对接',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `edit_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '官网合作留言' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cy_label
-- ----------------------------
DROP TABLE IF EXISTS `cy_label`;
CREATE TABLE `cy_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标签名称',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间(时间戳)',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除(0:存在，1：删除)',
  `number` int(11) NOT NULL DEFAULT 0 COMMENT '有此标签的文章',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cy_menu
-- ----------------------------
DROP TABLE IF EXISTS `cy_menu`;
CREATE TABLE `cy_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '跳转地址',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'a标签target',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `number` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `parent` int(11) NOT NULL DEFAULT 0 COMMENT '上级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cy_notice
-- ----------------------------
DROP TABLE IF EXISTS `cy_notice`;
CREATE TABLE `cy_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告内容',
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间(时间戳)',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序(越大越靠前)',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除(1:删除，0：存在)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cy_user
-- ----------------------------
DROP TABLE IF EXISTS `cy_user`;
CREATE TABLE `cy_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `login_time` int(11) DEFAULT NULL COMMENT '登录时间',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0:冻结 1：正常',
  `group_id` int(11) NOT NULL COMMENT '组id',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cy_user_log
-- ----------------------------
DROP TABLE IF EXISTS `cy_user_log`;
CREATE TABLE `cy_user_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '管理员id',
  `user_nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '管理员昵称',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '备注',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '访问者浏览器',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '访客操作系统',
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '访问者浏览器语言',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
