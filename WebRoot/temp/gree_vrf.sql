/*
 Navicat MySQL Data Transfer

 Source Server         : gz
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : gree_vrf

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 10/23/2017 19:29:51 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `app_user`
-- ----------------------------
DROP TABLE IF EXISTS `app_user`;
CREATE TABLE `app_user` (
  `id` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL COMMENT '登陆账号',
  `pwd` varchar(40) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `creater` varchar(40) DEFAULT NULL COMMENT '创建者',
  `createDate` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `lastUpdater` varchar(40) DEFAULT NULL COMMENT '更新者',
  `lastUpdateDate` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `enable` int(1) DEFAULT NULL COMMENT '是否可用',
  `delFlag` int(1) DEFAULT NULL COMMENT '是否删除',
  `appVersion` varchar(5) DEFAULT NULL COMMENT '使用app版本',
  `imeiCode` varchar(40) DEFAULT NULL COMMENT '手机唯一码',
  `discountUp` double(10,0) DEFAULT NULL COMMENT '折扣上限',
  `discountDown` double(10,0) DEFAULT NULL COMMENT '折扣下限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` varchar(40) NOT NULL,
  `areaname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` varchar(40) NOT NULL,
  `permissionName` varchar(40) DEFAULT NULL COMMENT '权限名称',
  `description` varchar(40) DEFAULT NULL COMMENT '描述权限',
  `creater` varchar(40) DEFAULT NULL,
  `createrDate` timestamp NULL DEFAULT NULL,
  `lastUpdate` varchar(40) DEFAULT NULL,
  `lastUpdateDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(40) NOT NULL,
  `roleName` varchar(40) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(40) DEFAULT NULL COMMENT '描述',
  `creater` varchar(40) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT NULL,
  `lastUpdate` varchar(40) DEFAULT NULL,
  `lastUpdateDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `permissionId` varchar(40) NOT NULL,
  `roleId` varchar(40) NOT NULL,
  PRIMARY KEY (`permissionId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL COMMENT '登陆账号',
  `pwd` varchar(40) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `creater` varchar(40) DEFAULT NULL COMMENT '创建者',
  `createDate` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `delFlag` int(1) DEFAULT '0' COMMENT '删除标记,1是删除，0时默认',
  `customerId` varchar(40) DEFAULT NULL COMMENT 'a',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('402881ef5f3db545015f3db6979e0002', 'ceshi', '123@qq.com', '123123', null, null, null, null, null, null), ('402881ef5f3db545015f3db6b52b0003', 'ceshi', '456@qq.com', null, null, null, null, null, null, null), ('402881ef5f3e4257015f3e42c7650001', 'ceshi', '789@qq.com', null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userId` varchar(40) NOT NULL,
  `roleId` varchar(40) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
