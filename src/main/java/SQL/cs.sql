/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : cs

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-05-16 11:57:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL COMMENT '内容',
  `publishTime` datetime DEFAULT NULL COMMENT '发布时间',
  `type` int(2) NOT NULL COMMENT '类型',
  `status` int(2) DEFAULT '0' COMMENT '状态 0为正常状态',
  `userId` bigint(10) DEFAULT NULL COMMENT '用户ID',
  `lastTime` datetime DEFAULT NULL COMMENT '最后一次更改时间',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `hits` bigint(50) DEFAULT '0' COMMENT '点击量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `remark`
-- ----------------------------
DROP TABLE IF EXISTS `remark`;
CREATE TABLE `remark` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `publishTime` datetime DEFAULT NULL COMMENT '发布时间',
  `userId` bigint(10) NOT NULL COMMENT '用户ID',
  `messageId` bigint(10) DEFAULT NULL COMMENT '被评论消息ID',
  `userName` varchar(30) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of remark
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `status` int(2) DEFAULT '0' COMMENT '状态 0为正常状态',
  `regTime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
