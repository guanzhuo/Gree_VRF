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

 Date: 10/26/2017 19:29:44 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `RolePermission`
-- ----------------------------
DROP TABLE IF EXISTS `RolePermission`;
CREATE TABLE `RolePermission` (
  `id` int(11) NOT NULL,
  `parentid` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `roleid` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `permissionid` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `User`
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL COMMENT '登陆账号',
  `pwd` varchar(40) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `creater` varchar(40) DEFAULT NULL COMMENT '创建者',
  `createDate` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `delFlag` int(1) DEFAULT '0' COMMENT '删除标记,1是删除，0时默认',
  `customerid` varchar(40) DEFAULT NULL COMMENT 'a',
  `roleid` varchar(5) DEFAULT NULL,
  `roles` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles` (`roles`),
  KEY `FK285FEBC0DE18B` (`roles`),
  CONSTRAINT `FK285FEBC0DE18B` FOREIGN KEY (`roles`) REFERENCES `Role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `User`
-- ----------------------------
BEGIN;
INSERT INTO `User` VALUES ('402881ef5f3db545015f3db6979e0002', 'ceshi', '123@qq.com', '123123', null, null, null, null, null, null, null, null), ('402881ef5f3db545015f3db6b52b0003', 'ceshi', '456@qq.com', null, null, null, null, null, null, null, null, null), ('402881ef5f3e4257015f3e42c7650001', '390778', '390778@qq.com', '123123', '13434343434', '珠海市', '#', '2017-10-25 09:26:19', '0', null, '1', null);
COMMIT;

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
  `id` varchar(5) NOT NULL,
  `permissionName` varchar(40) DEFAULT NULL COMMENT '权限名称',
  `description` varchar(40) DEFAULT NULL COMMENT '描述权限',
  `parentid` varchar(5) DEFAULT NULL COMMENT '父类ID',
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `permission`
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES ('1', 'Account Management', 'APP用户管理', '0', '#'), ('1000', 'Account Registration', 'App用户注册', '1', 'account_reg.jsp'), ('1001', 'Login History', 'APP用户登录历史', '1', 'login_history.jsp'), ('1002', 'Proposal Management', '方案列表', '1', 'plan_list.jsp'), ('2', 'Customization', '客户化管理', '0', '#'), ('2000', 'Customization', '客户化管理', '2', 'customization.jsp'), ('3', 'Territory', '区域', '0', '#'), ('3000', 'Territory Maitenance', '区域管理', '3', 'Territory_Maitenance.jsp');
COMMIT;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(5) NOT NULL,
  `rolename` varchar(40) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(40) DEFAULT NULL COMMENT '描述',
  `creater` varchar(40) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT NULL,
  `lastUpdate` varchar(40) DEFAULT NULL,
  `lastUpdateDate` timestamp NULL DEFAULT NULL,
  `creatDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `role`
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('1', 'admin', '管理员', null, null, null, null, null), ('2', 'test', '测试', null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `roleid` varchar(40) NOT NULL,
  `permissionid` varchar(5) NOT NULL,
  `parentid` varchar(5) DEFAULT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`,`roleid`,`permissionid`),
  KEY `FKBD40D5388159BE38` (`roleid`),
  KEY `permissionid` (`permissionid`),
  CONSTRAINT `FKBD40D5385935FE9` FOREIGN KEY (`roleid`) REFERENCES `Role` (`id`),
  CONSTRAINT `FKBD40D538B8828342` FOREIGN KEY (`permissionid`) REFERENCES `Permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `role_permission`
-- ----------------------------
BEGIN;
INSERT INTO `role_permission` VALUES ('1', '1000', '1', '1'), ('1', '1001', '1', '2'), ('1', '1002', '1', '3'), ('1', '2000', '2', '4'), ('1', '3000', '3', '5');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
