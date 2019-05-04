/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : official

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-05-04 22:49:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `image` text,
  `sort` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否显示 0 否 1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关于我们';

-- ----------------------------
-- Records of about
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` text,
  `desc` text,
  `show` tinyint(4) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for consult
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) DEFAULT NULL COMMENT '联系人',
  `company_name` varchar(255) DEFAULT NULL COMMENT '联系公司',
  `jobs` varchar(255) DEFAULT NULL COMMENT '职务',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `demand` text COMMENT '合作需求',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sort` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请合作';

-- ----------------------------
-- Records of consult
-- ----------------------------

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) DEFAULT NULL COMMENT '方式',
  `channel_name` varchar(255) DEFAULT NULL COMMENT '方式名称  如 QQ',
  `icon` text COMMENT '图标',
  `qrcode` text COMMENT '二维码',
  `link` text COMMENT '链接',
  `status` tinyint(4) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联系方式';

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for cooperate
-- ----------------------------
DROP TABLE IF EXISTS `cooperate`;
CREATE TABLE `cooperate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo` text,
  `link` text,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品服务';

-- ----------------------------
-- Records of cooperate
-- ----------------------------

-- ----------------------------
-- Table structure for culture
-- ----------------------------
DROP TABLE IF EXISTS `culture`;
CREATE TABLE `culture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `brief` text COMMENT '简介',
  `image` text COMMENT '图片',
  `multi_view` text COMMENT '多图',
  `link` text COMMENT '链接',
  `icon` text COMMENT '图标',
  `sort` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业文化';

-- ----------------------------
-- Records of culture
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `brief` text,
  `recommend` tinyint(4) DEFAULT '0',
  `sort` int(11) DEFAULT '0',
  `hot` tinyint(4) DEFAULT '0',
  `show` tinyint(4) DEFAULT '0',
  `deleted` tinyint(4) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1', 'test', 'test', '0', '0', '0', '1', '0', '2019-01-27 17:51:57', '2019-01-27 17:52:00', null);
INSERT INTO `goods` VALUES ('2', '2', 'test1', 'test2', '0', '0', '0', '1', '0', '2019-01-30 14:44:02', '2019-01-30 14:44:07', null);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `icon` text COMMENT '图标',
  `background` text COMMENT '背景图',
  `brief` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `show` tinyint(4) DEFAULT '0',
  `deleted` tinyint(4) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('1', '设备接入', '', '', '1天完成样机，15天实现量产，全标准化的APP/云服务/Wi-Fi模块/控制板上下游对接，1天完成产品智能化，迅速量产', '0', '0', null, '2019-01-21 14:11:46', null, null);
INSERT INTO `goods_type` VALUES ('2', '运营中心', null, null, '为企业提供互联网时代的用户运营中心，为您和您的用户建立沟通渠道，及时获得用户反馈和销售数据助力企业决策和产品优化。', '0', '0', null, null, null, null);
INSERT INTO `goods_type` VALUES ('3', '联网模块', null, null, '联网模块是实现产品智能化的第一步，我们的标准模块全球通用，采购简单易行，模块标准化。同一产品模块全球通用，降低采购成本，缩短开发周期。', '0', '0', null, null, null, null);
INSERT INTO `goods_type` VALUES ('4', '数据中心', null, null, '设备的新增、活跃、地区分布等各种数据，实时查看，各种设备运行数据尽在掌握，轻松进入大数据时代让数据更具价值，提升您的盈利水平。', '0', '0', null, '2019-01-21 14:13:54', null, null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `read` int(11) DEFAULT NULL,
  `image` text,
  `sort` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for news_type
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `icon` text,
  `desc` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_type
-- ----------------------------

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `multi_view` text,
  `content` text,
  `sort` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan
-- ----------------------------

-- ----------------------------
-- Table structure for plan_type
-- ----------------------------
DROP TABLE IF EXISTS `plan_type`;
CREATE TABLE `plan_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` text,
  `desc` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan_type
-- ----------------------------

-- ----------------------------
-- Table structure for support
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `status` tinyint(255) DEFAULT NULL,
  `sort` int(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of support
-- ----------------------------
