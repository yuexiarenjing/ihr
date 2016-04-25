/*
Navicat MySQL Data Transfer

Source Server         : localhost-con
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : jeesite3

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-04-25 15:55:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`),
  KEY `cms_article_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '3', '文章标题标题标题标题456', '', 'green', '', '关键字1,关键字2', '', '0', null, '11', ',null,', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-14 10:59:21', null, '0');
INSERT INTO `cms_article` VALUES ('10', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('11', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('12', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('13', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('14', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '28', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('15', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('16', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('17', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('18', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('19', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '11', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('2', '3', '文章标题标题标题标题2222', '', 'red', '', '关键字1,关键字2', '', '0', null, '11', ',null,', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-14 11:02:37', null, '0');
INSERT INTO `cms_article` VALUES ('20', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('21', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('22', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('23', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('24', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('25', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('26', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('27', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '15', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('28', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('29', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('3', '3', '文章标题标题标题标题3333', '', '', '', '关键字1,关键字2', '', '0', null, '19', ',null,', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-14 11:04:07', null, '0');
INSERT INTO `cms_article` VALUES ('30', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('31', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('32', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '11', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('33', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('34', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('35', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('36', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('37', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('38', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('39', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('4', '3', '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('40', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('41', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('42', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('43', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('44', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('45', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('46', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('47', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('48', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('49', '16', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('5', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('50', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '11', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('51', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('52', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('53', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('6', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('7', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2014-03-13 14:37:01', null, '1');
INSERT INTO `cms_article` VALUES ('8', '4', '文章标题标题标题标题hhh', '', 'blue', '', '关键字1,关键字2', '', '0', null, '23', ',null,', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-14 11:16:25', null, '0');
INSERT INTO `cms_article` VALUES ('9', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '10', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for cms_article_data
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_data`;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`),
  KEY `cms_article_data_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='文章详表';

-- ----------------------------
-- Records of cms_article_data
-- ----------------------------
INSERT INTO `cms_article_data` VALUES ('1', '<p>\r\n	文章内容内容内容内容aaaaaa</p>\r\n', '来源', '1,2,3,', '1');
INSERT INTO `cms_article_data` VALUES ('10', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('11', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('12', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('13', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('14', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('15', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('16', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('17', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('18', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('19', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('2', '<p>\r\n	文章内容内容内容内容</p>\r\n', '来源', '1,2,3,', '1');
INSERT INTO `cms_article_data` VALUES ('20', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('21', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('22', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('23', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('24', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('25', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('26', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('27', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('28', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('29', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('3', '<p>\r\n	文章内容内容内容内容</p>\r\n', '来源', '1,2,3,', '1');
INSERT INTO `cms_article_data` VALUES ('30', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('31', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('32', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('33', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('34', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('35', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('36', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('37', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('38', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('39', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('4', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('40', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('41', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('42', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('43', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('44', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('45', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('46', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('47', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('48', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('49', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('5', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('50', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('51', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('52', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('53', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('6', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('7', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('8', '<p>\r\n	文章内容内容内容内容</p>\r\n', '来源', '1,2,3,', '1');
INSERT INTO `cms_article_data` VALUES ('9', '文章内容内容内容内容', '来源', '1,2,3', '1');

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `view_config` text COMMENT '视图配置',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_parent_ids` (`parent_ids`(383)),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_site_id` (`site_id`),
  KEY `cms_category_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='栏目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '0', '0', '0,', null, '顶级栏目', null, null, null, null, null, '0', '1', '1', '0', '0', '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0', null);
INSERT INTO `cms_category` VALUES ('10', '1', '1', '0,1,', 'article', '后台技术', '', '', '', '', '', '20', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('11', '1', '10', '0,1,10,', 'article', 'Spring', '', '', '', '', '', '30', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('12', '1', '10', '0,1,10,', 'article', '持久化', '', '', '', '', '', '40', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('13', '1', '10', '0,1,10,', 'article', '权限控制', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('14', '1', '10', '0,1,10,', 'article', '网络优化', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', null);
INSERT INTO `cms_category` VALUES ('15', '1', '10', '0,1,10,', 'article', '框架学习', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('16', '1', '10', '0,1,10,', 'article', '高级编程', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('17', '1', '10', '0,1,10,', 'article', '其他', '', '', '', '', '', '50', '1', '1', '2', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('18', '1', '1', '0,1,', 'link', '精彩站点', '', '', '', '', '', '90', '1', '1', '1', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-04-03 19:38:26', null, '0', '');
INSERT INTO `cms_category` VALUES ('19', '1', '18', '0,1,18,', 'link', '项目学习', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-04-03 19:38:26', null, '0', '');
INSERT INTO `cms_category` VALUES ('1bcbb3b89a2d4c28bfadf15f687f034d', '1', '5', '0,1,2,5,', 'article', '文章模型下一级', '', '', '', '', '', '30', '1', '1', '0', '0', '0', '', '', '1', '2016-04-15 16:53:17', '1', '2016-04-15 16:53:48', null, '0', '');
INSERT INTO `cms_category` VALUES ('2', '1', '1', '0,1,', 'article', '组织机构', '', '', '', '', '', '10', '1', '1', '0', '0', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-14 13:04:32', null, '0', '');
INSERT INTO `cms_category` VALUES ('20', '1', '18', '0,1,18,', 'link', '前端学习', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-04-03 19:38:26', null, '0', '');
INSERT INTO `cms_category` VALUES ('21', '1', '18', '0,1,18,', 'link', '后端学习', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-04-03 19:38:26', null, '0', '');
INSERT INTO `cms_category` VALUES ('22', '1', '18', '0,1,18,', 'link', '原理学习', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-04-03 19:38:26', null, '0', '');
INSERT INTO `cms_category` VALUES ('23', '1', '18', '0,1,18,', 'link', '行业资讯', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-04-03 19:38:26', null, '0', '');
INSERT INTO `cms_category` VALUES ('24', '1', '1', '0,1,', null, '百度一下', null, 'http://www.baidu.com', '_blank', null, null, '90', '1', '1', '0', '1', '0', null, null, '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', null);
INSERT INTO `cms_category` VALUES ('25', '1', '1', '0,1,', null, '全文检索', null, '/search', null, null, null, '90', '0', '1', '0', '1', '0', null, null, '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', null);
INSERT INTO `cms_category` VALUES ('26', '2', '1', '0,1,', 'article', '测试栏目', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0', null);
INSERT INTO `cms_category` VALUES ('27', '1', '1', '0,1,', null, '公共留言', null, '/guestbook', null, null, null, '90', '1', '1', '0', '1', '0', null, null, '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', null);
INSERT INTO `cms_category` VALUES ('2c7fc0bbf08e4fa78f8904cdd21c8168', '1', '1', '0,1,', 'link', '测试222', '/jeesite3/userfiles/1/images/cms/category/2014/03/ee08985494eef01f319b30cae0fe9925bd317dbc.jpg', '', '', '', '', '5', '0', '1', '0', '0', '0', '', '', '1', '2014-03-11 08:48:04', '1', '2014-03-14 10:07:38', null, '0', '');
INSERT INTO `cms_category` VALUES ('3', '1', '2', '0,1,2,', 'article', '网站简介', '', '', '', '', '', '30', '1', '1', '2', '0', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-14 13:04:49', null, '0', '');
INSERT INTO `cms_category` VALUES ('3a99a18cfa444205b9ca9e6bd10f692c', '1', '3d615804d1634a1b9e81ec04b1974f9f', '0,1,2,3d615804d1634a1b9e81ec04b1974f9f,', 'article', '测试2', '', '', '', '', '', '30', '0', '1', '0', '0', '0', '', '', '1', '2014-03-11 08:47:16', '1', '2014-03-14 13:04:32', null, '1', '');
INSERT INTO `cms_category` VALUES ('3d615804d1634a1b9e81ec04b1974f9f', '1', '2', '0,1,2,', 'article', '测试1', '', '', '', '', '', '30', '0', '1', '0', '0', '0', '', '', '1', '2014-03-11 08:47:05', '1', '2014-03-14 13:04:32', null, '1', '');
INSERT INTO `cms_category` VALUES ('4', '1', '2', '0,1,2,', 'article', '内部机构', null, null, null, null, null, '40', '1', '1', '0', '0', '1', null, null, '1', '2013-05-27 08:00:00', '1', '2014-03-14 13:04:32', null, '0', null);
INSERT INTO `cms_category` VALUES ('5', '1', '2', '0,1,2,', 'article', '地方机构', null, null, null, null, null, '50', '1', '1', '0', '0', '1', null, null, '1', '2013-05-27 08:00:00', '1', '2014-03-14 13:04:32', null, '0', null);
INSERT INTO `cms_category` VALUES ('6', '1', '1', '0,1,', 'article', '前台技术', '', '', '', '', '', '20', '1', '1', '1', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:15', null, '0', '');
INSERT INTO `cms_category` VALUES ('7', '1', '6', '0,1,6,', 'article', 'JavaScript', '', '', '', '', '', '30', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('8', '1', '6', '0,1,6,', 'article', 'Jquery', '', '', '', '', '', '40', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');
INSERT INTO `cms_category` VALUES ('9', '1', '6', '0,1,6,', 'article', '其他', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '', '1', '2013-05-27 08:00:00', '1', '2014-03-11 08:48:16', null, '0', '');

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` text COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`),
  KEY `cms_comment_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='评论表';

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES ('093e7328b473403d9d2c871878efca40', '7', '14', '文章标题标题标题标题', 'lalal', '匿名', '0:0:0:0:0:0:0:1', '2014-03-14 15:24:01', '1', '2014-03-14 15:24:23', '0');
INSERT INTO `cms_comment` VALUES ('620fefa8a40c4004b81d0623498c5066', '7', '14', '文章标题标题标题标题', '影片最令人惊叹的是Cristian Mungiu的长镜运用与构图。全片多次采取对称构图的手法，从主人公Otilia与室友Garbita在凌乱的大学生宿舍里的对话开始，到二者在旅店餐馆的对视中结束，每一个镜头都是精心布置细致安排的，处处用对称来比照Otilia的心态情绪。其中Otilia在窄小的卫生间注视Garbita的镜头，尽管只有Otilia一个人入镜，导演依然通过浴室的镜子制造了一个相当完美的', '匿名', '0:0:0:0:0:0:0:1', '2014-04-03 20:45:02', null, null, '0');
INSERT INTO `cms_comment` VALUES ('67ad70e885344f4cbc6f8f51b38e51ad', '7', '14', '文章标题标题标题标题', '罗马尼亚导演Cristian Mungiu的《四月三周二天》可说是近年来对巴赞的长镜理论最忠实最全面的一场实践，他凭此片获嘎纳金棕榈大奖，有如法国新浪潮势力卷土重来，令人对罗马尼亚电影业刮目相看。', '匿名', '0:0:0:0:0:0:0:1', '2014-04-03 20:43:17', null, null, '0');
INSERT INTO `cms_comment` VALUES ('6f89504d7a5d46b7ba47b3b3e9027614', '7', '14', '文章标题标题标题标题', '123', '匿名', '127.0.0.1', '2016-04-16 15:31:16', null, null, '0');
INSERT INTO `cms_comment` VALUES ('7397279b9b374f9dbf6af44517f50396', '7', '14', '文章标题标题标题标题', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '匿名', '0:0:0:0:0:0:0:1', '2014-04-03 20:31:02', null, null, '0');
INSERT INTO `cms_comment` VALUES ('79a4c9004a4d4c22a2f9f7873eef8c33', '7', '14', '文章标题标题标题标题', '加油霍霍霍！', '匿名', '0:0:0:0:0:0:0:1', '2014-03-14 15:21:21', '1', '2014-03-14 15:21:56', '0');
INSERT INTO `cms_comment` VALUES ('8bc8121703764ca7b8e4a3994de50ab9', '7', '14', '文章标题标题标题标题', '这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了', '匿名', '0:0:0:0:0:0:0:1', '2014-04-03 20:42:45', null, null, '0');
INSERT INTO `cms_comment` VALUES ('8c4bdc7930cb4add935c1a7ae481b251', '7', '14', '文章标题标题标题标题', '你好', '匿名', '127.0.0.1', '2016-04-16 15:47:41', null, null, '0');
INSERT INTO `cms_comment` VALUES ('d20c6c6d14244b5bad2118ffab8ea563', '7', '14', '文章标题标题标题标题', '你好吗 世界', '匿名', '0:0:0:0:0:0:0:1', '2014-04-03 20:32:14', null, null, '0');
INSERT INTO `cms_comment` VALUES ('da848e62653449079b686340313e07de', '7', '14', '文章标题标题标题标题', '水水水水水水水水水水水水水水水水', '匿名', '0:0:0:0:0:0:0:1', '2014-04-03 20:21:13', null, null, '0');
INSERT INTO `cms_comment` VALUES ('ed84eb14a794451097079a5b009a4b99', '7', '14', '文章标题标题标题标题', '恢复', '匿名', '0:0:0:0:0:0:0:1', '2014-03-14 15:40:07', '1', '2014-03-14 15:40:32', '0');

-- ----------------------------
-- Table structure for cms_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`),
  KEY `cms_site_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='留言板';

-- ----------------------------
-- Records of cms_guestbook
-- ----------------------------
INSERT INTO `cms_guestbook` VALUES ('2ef3ce43c49b4dd8a006a87c8d4e0576', '2', '1', '1', '111@123.com', '06682203981', '1', '0:0:0:0:0:0:0:1', '2014-03-14 16:15:27', '1', '2014-03-14 16:16:08', 'ok！', '0');
INSERT INTO `cms_guestbook` VALUES ('b21d462cf8be4a8ea5fc75b6ea0bdcfd', '1', '你好 世界 你好 世界你好 世界你好 世界你好 世界你好 世界', 'lala', '123@123.com', '13345678911', '1222', '0:0:0:0:0:0:0:1', '2014-04-03 21:00:16', null, null, null, '0');
INSERT INTO `cms_guestbook` VALUES ('f55f1b3d6d0c4f8a9a0b6f384863bc0e', '1', '11', 'lala', '111@123.com', '06682203981', '123', '0:0:0:0:0:0:0:1', '2014-03-14 16:10:19', '1', '2014-03-14 16:10:58', 'OK！', '0');

-- ----------------------------
-- Table structure for cms_link
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`),
  KEY `cms_link_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='友情链接';

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES ('1', '19', 'JeeSite123', '', '', '', '0', null, '1', '2013-05-27 08:00:00', '1', '2014-04-03 20:07:35', '', '1');
INSERT INTO `cms_link` VALUES ('10', '22', '58同城', null, null, 'http://www.58.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('11', '23', '视频大全', null, null, 'http://v.360.cn/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('12', '23', '凤凰网', null, null, 'http://www.ifeng.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('2', '19', 'ThinkGem', '', '', '', '0', null, '1', '2013-05-27 08:00:00', '1', '2014-04-03 20:07:27', '', '1');
INSERT INTO `cms_link` VALUES ('3', '19', '百度一下', null, null, 'http://www.baidu.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('4', '19', '谷歌搜索', null, null, 'http://www.google.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('5', '20', '新浪网', null, null, 'http://www.sina.com.cn', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('6', '20', '腾讯网', null, null, 'http://www.qq.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('7', '21', '淘宝网', null, null, 'http://www.taobao.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('8', '21', '新华网', null, null, 'http://www.xinhuanet.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('9', '22', '赶集网', null, null, 'http://www.ganji.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for cms_site
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`),
  KEY `cms_site_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='站点表';

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES ('1', '默认站点', 'JeeSite Web', null, null, 'JeeSite', 'JeeSite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_site` VALUES ('2', '子站点测试', 'JeeSite Subsite', null, null, 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_site` VALUES ('5c44ec83de474dfbbd763c6492f2ab6d', '测试站点', 'hello world', '', null, '', '测试', 'basic', '<p>\r\n	helloworld</p>\r\n', '', '1', '2014-03-11 10:00:52', '1', '2014-03-11 10:02:40', null, '0');

-- ----------------------------
-- Table structure for prj_device
-- ----------------------------
DROP TABLE IF EXISTS `prj_device`;
CREATE TABLE `prj_device` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `code` varchar(100) DEFAULT NULL COMMENT '设备编号',
  `name` varchar(100) NOT NULL COMMENT '设备名称',
  `status` char(1) DEFAULT NULL COMMENT '设备类型',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='设备表';

-- ----------------------------
-- Records of prj_device
-- ----------------------------
INSERT INTO `prj_device` VALUES ('1', '001', '电脑1', '1', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('10', '010', '冲锋枪4', '1', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('11', '011', '核武器', '4', null, null, null, null, '别乱用', '0');
INSERT INTO `prj_device` VALUES ('2', '002', '电脑2,', '1', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('3', '003', '电脑3', '2', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('4', '004', '打印机1', '1', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('5', '005', '打印机2', '2', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('6', '006', '打印机3', '2', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('7', '007', '冲锋枪1', '1', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('8', '008', '冲锋枪2', '1', null, null, null, null, null, '0');
INSERT INTO `prj_device` VALUES ('9', '009', '冲锋枪3', '1', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for prj_project
-- ----------------------------
DROP TABLE IF EXISTS `prj_project`;
CREATE TABLE `prj_project` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `root_package` varchar(255) DEFAULT NULL COMMENT '包名',
  `erm_path` varchar(2000) DEFAULT NULL COMMENT '数据文件路径',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  KEY `prj_project_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='项目';

-- ----------------------------
-- Records of prj_project
-- ----------------------------

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `name` varchar(100) NOT NULL COMMENT '区域名称',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_parent_ids` (`parent_ids`(383)),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '100000', '中国', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('10', '8', '0,1,2,', '370532', '历城区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('11', '8', '0,1,2,', '370533', '历城区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('12', '8', '0,1,2,', '370534', '历下区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('13', '8', '0,1,2,', '370535', '天桥区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('14', '8', '0,1,2,', '370536', '槐荫区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('1f2a1a04996f43fd9a2144fa2b610225', '1', '0,1,', '220021', '广东省', '2', '1', '2014-03-10 11:28:37', '1', '2014-03-10 11:28:37', '', '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '110000', '北京市', '2', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('3', '2', '0,1,2,', '110101', '东城区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('38137d832cbf464183dbb0e0d75c5c71', '2', '0,1,2,', '123', '123', '1', '1', '2016-04-23 14:50:36', '1', '2016-04-23 14:50:36', '', '0');
INSERT INTO `sys_area` VALUES ('4', '2', '0,1,2,', '110102', '西城区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('42eb9ee8c71b46c1a0751aec986354ac', '1f2a1a04996f43fd9a2144fa2b610225', '0,1,1f2a1a04996f43fd9a2144fa2b610225,', '220033', '茂名市', '3', '1', '2014-03-10 11:35:56', '1', '2014-03-10 11:36:01', '', '0');
INSERT INTO `sys_area` VALUES ('5', '2', '0,1,2,', '110103', '朝阳区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('59ffae0bdc7a44fb80be610accd30b8a', '816446213f2f4f5f85f097a193d616f9', '0,1,1f2a1a04996f43fd9a2144fa2b610225,816446213f2f4f5f85f097a193d616f9,', '2200312', '海珠区', '4', '1', '2014-03-10 11:38:34', '1', '2014-03-10 11:38:34', '', '0');
INSERT INTO `sys_area` VALUES ('6', '2', '0,1,2,', '110104', '丰台区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('6ada63e2c498412292ad1a9c5cd35073', '1f2a1a04996f43fd9a2144fa2b610225', '0,1,1f2a1a04996f43fd9a2144fa2b610225,', '220032', '肇庆市', '3', '1', '2014-03-10 11:35:23', '1', '2014-03-10 11:35:23', '', '0');
INSERT INTO `sys_area` VALUES ('7', '2', '0,1,2,', '110105', '海淀区', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('756eed89f1d249e88d09949d3765b4e4', '42eb9ee8c71b46c1a0751aec986354ac', '0,1,1f2a1a04996f43fd9a2144fa2b610225,42eb9ee8c71b46c1a0751aec986354ac,', '2200332', '茂港区', '1', '1', '2014-03-10 11:37:04', '1', '2014-03-10 11:37:04', '', '0');
INSERT INTO `sys_area` VALUES ('8', '1', '0,1,', '370000', '山东省', '2', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('816446213f2f4f5f85f097a193d616f9', '1f2a1a04996f43fd9a2144fa2b610225', '0,1,1f2a1a04996f43fd9a2144fa2b610225,', '220031', '广州市', '3', '1', '2014-03-10 11:33:42', '1', '2014-03-10 11:33:42', '', '0');
INSERT INTO `sys_area` VALUES ('9', '8', '0,1,2,', '370531', '济南市', '3', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('d0e52776730a4bf886204a7185faeb35', '42eb9ee8c71b46c1a0751aec986354ac', '0,1,1f2a1a04996f43fd9a2144fa2b610225,42eb9ee8c71b46c1a0751aec986354ac,', '2200331', '茂南区', '4', '1', '2014-03-10 11:36:28', '1', '2014-03-10 11:36:28', '', '0');
INSERT INTO `sys_area` VALUES ('e70c7b6a315940888cb9bb707a5a4902', '816446213f2f4f5f85f097a193d616f9', '0,1,1f2a1a04996f43fd9a2144fa2b610225,816446213f2f4f5f85f097a193d616f9,', '2200311', '天河区', '4', '1', '2014-03-10 11:37:24', '1', '2014-03-10 11:37:24', '', '0');
INSERT INTO `sys_area` VALUES ('fc12bb95c11e44aca416ed7547b65601', '6ada63e2c498412292ad1a9c5cd35073', '0,1,1f2a1a04996f43fd9a2144fa2b610225,6ada63e2c498412292ad1a9c5cd35073,', '2200321', '鼎湖区', '4', '1', '2014-03-10 11:39:09', '1', '2014-03-10 11:39:09', '', '0');

-- ----------------------------
-- Table structure for sys_device
-- ----------------------------
DROP TABLE IF EXISTS `sys_device`;
CREATE TABLE `sys_device` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `dtype` varchar(200) DEFAULT NULL COMMENT '类型',
  `location` varchar(200) DEFAULT NULL COMMENT '位置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='设备表';

-- ----------------------------
-- Records of sys_device
-- ----------------------------
INSERT INTO `sys_device` VALUES ('1', '打印机1', '打印机', '301', '0', '2014-03-09 17:15:03', '1', '2016-04-24 21:53:03', '第一个设备', '0');
INSERT INTO `sys_device` VALUES ('2', '打印机2', '打印机', '308', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第二个设备', '0');
INSERT INTO `sys_device` VALUES ('3', '电脑1', '电脑', '506', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第三个设备', '0');
INSERT INTO `sys_device` VALUES ('4', '电脑2', '电脑', '708', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第四个设备', '0');
INSERT INTO `sys_device` VALUES ('9167bd1a850d4b998923bbfdbe4da5d8', '打印机3', '打印机', '111', '1', '2016-04-24 21:52:12', '1', '2016-04-24 21:52:12', '', '0');

-- ----------------------------
-- Table structure for sys_device_status
-- ----------------------------
DROP TABLE IF EXISTS `sys_device_status`;
CREATE TABLE `sys_device_status` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `did` varchar(64) NOT NULL COMMENT '设备编号',
  `start_time` datetime DEFAULT NULL COMMENT '起始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '设备状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='设备状态表';

-- ----------------------------
-- Records of sys_device_status
-- ----------------------------
INSERT INTO `sys_device_status` VALUES ('1', '1', '2016-04-20 10:15:03', '2016-04-22 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_device_status` VALUES ('12d3d44f94b44405ab8b91cf5c1da461', '1', '2016-05-03 10:15:00', '2016-05-13 10:15:00', '0', '1', '2016-04-24 21:51:35', '1', '2016-04-24 21:51:44', null, '0');
INSERT INTO `sys_device_status` VALUES ('2', '1', '2016-04-25 10:15:03', '2016-04-28 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_device_status` VALUES ('3', '1', '2016-05-01 10:15:03', '2016-05-12 10:15:03', '2', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_device_status` VALUES ('4', '2', '2016-04-19 10:15:03', '2016-04-22 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_device_status` VALUES ('5', '2', '2016-04-25 10:15:03', '2016-04-29 10:15:03', '3', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_device_status` VALUES ('6', '2', '2016-04-30 10:15:03', '2016-05-10 10:15:03', '2', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_device_status` VALUES ('6ca210b82b05417783e3ee24b38965a4', '3', '2017-05-03 10:15:00', '2017-06-02 10:15:00', '4', '1', '2016-04-24 21:54:40', '1', '2016-04-24 21:54:40', null, '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '正常', '0', 'del_flag', '删除标记', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('10', '黄色', 'yellow', 'color', '颜色值', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('100', '空闲', '0', 'people_status', '没有描述', '10', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('101', '忙碌，可接受新任务', '1', 'people_status', '没有描述', '20', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('102', '忙碌，不可接受新任务', '2', 'people_status', '没有描述', '30', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('103', '不在工作岗位', '3', 'people_status', '没有描述', '40', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('11', '橙色', 'orange', 'color', '颜色值', '50', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('110', '空闲待机', '0', 'device_status', '没有描述', '10', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('111', '正常使用，可复用', '1', 'device_status', '没有描述', '20', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('112', '正常使用，不可复用', '2', 'device_status', '没有描述', '30', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('113', '维修', '3', 'device_status', '没有描述', '40', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('114', '停用', '4', 'device_status', '没有描述', '50', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('12', '默认主题', 'default', 'theme', '主题方案', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('120', '空闲', '0', 'sample_status', '没有描述', '10', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('121', '正常使用，可复用', '1', 'sample_status', '没有描述', '20', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('122', '正常使用，不可复用', '2', 'sample_status', '没有描述', '30', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('123', '未入库', '3', 'sample_status', '没有描述', '40', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('124', '停用', '4', 'sample_status', '没有描述', '50', '0', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('13', '天蓝主题', 'cerulean', 'theme', '主题方案', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('14', '橙色主题', 'readable', 'theme', '主题方案', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('15', '红色主题', 'united', 'theme', '主题方案', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('16', 'Flat主题', 'flat', 'theme', '主题方案', '60', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('17', '国家', '1', 'sys_area_type', '区域类型', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('18', '省份、直辖市', '2', 'sys_area_type', '区域类型', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('19', '地市', '3', 'sys_area_type', '区域类型', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '删除', '1', 'del_flag', '删除标记', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('20', '区县', '4', 'sys_area_type', '区域类型', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('21', '公司', '1', 'sys_office_type', '机构类型', '60', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('22', '部门', '2', 'sys_office_type', '机构类型', '70', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('23', '一级', '1', 'sys_office_grade', '机构等级', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('24', '二级', '2', 'sys_office_grade', '机构等级', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('25', '三级', '3', 'sys_office_grade', '机构等级', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('26', '四级', '4', 'sys_office_grade', '机构等级', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('27', '所有数据', '1', 'sys_data_scope', '数据范围', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('28', '所在公司及以下数据', '2', 'sys_data_scope', '数据范围', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('29', '所在公司数据', '3', 'sys_data_scope', '数据范围', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '显示', '1', 'show_hide', '显示/隐藏', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('30', '所在部门及以下数据', '4', 'sys_data_scope', '数据范围', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('31', '所在部门数据', '5', 'sys_data_scope', '数据范围', '50', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('32', '仅本人数据', '8', 'sys_data_scope', '数据范围', '90', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('33', '按明细设置', '9', 'sys_data_scope', '数据范围', '100', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3315c5e81761425db4b148a982ad5f38', '555555', '5', 'cms_guestbook', '留言板分类', '50', '1', '2014-03-10 17:59:38', '1', '2014-03-10 17:59:38', null, '1');
INSERT INTO `sys_dict` VALUES ('34', '系统管理', '1', 'sys_user_type', '用户类型', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('35', '部门经理', '2', 'sys_user_type', '用户类型', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('36', '普通用户', '3', 'sys_user_type', '用户类型', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('37', '基础主题', 'basic', 'cms_theme', '站点主题', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('38', '蓝色主题', 'blue', 'cms_theme', '站点主题', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('39', '红色主题', 'red', 'cms_theme', '站点主题', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('4', '隐藏', '0', 'show_hide', '显示/隐藏', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('40', '文章模型', 'article', 'cms_module', '栏目模型', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('41', '图片模型', 'picture', 'cms_module', '栏目模型', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('42', '下载模型', 'download', 'cms_module', '栏目模型', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('43', '链接模型', 'link', 'cms_module', '栏目模型', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('44', '专题模型', 'special', 'cms_module', '栏目模型', '50', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('45', '默认展现方式', '0', 'cms_show_modes', '展现方式', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('46', '首栏目内容列表', '1', 'cms_show_modes', '展现方式', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('47', '栏目第一条内容', '2', 'cms_show_modes', '展现方式', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('48', '发布', '0', 'cms_del_flag', '内容状态', '10', '1', '2013-05-27 08:00:00', '1', '2014-03-10 17:59:09', null, '0');
INSERT INTO `sys_dict` VALUES ('49', '删除', '1', 'cms_del_flag', '内容状态', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('5', '是', '1', 'yes_no', '是/否', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('50', '审核', '2', 'cms_del_flag', '内容状态', '15', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('51', '首页焦点图', '1', 'cms_posid', '推荐位', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('52', '栏目页文章推荐', '2', 'cms_posid', '推荐位', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('53', '咨询', '1', 'cms_guestbook', '留言板分类', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('54', '建议', '2', 'cms_guestbook', '留言板分类', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('55', '投诉', '3', 'cms_guestbook', '留言板分类', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('56', '其它', '4', 'cms_guestbook', '留言板分类', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('57', '公休', '1', 'oa_leave_type', '请假类型', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('58', '病假', '2', 'oa_leave_type', '请假类型', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('59', '事假', '3', 'oa_leave_type', '请假类型', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('6', '否', '0', 'yes_no', '是/否', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('60', '调休', '4', 'oa_leave_type', '请假类型', '40', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('61', '婚假', '5', 'oa_leave_type', '请假类型', '60', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('62', '接入日志', '1', 'sys_log_type', '日志类型', '30', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('63', '异常日志', '2', 'sys_log_type', '日志类型', '40', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('64', '单表增删改查', 'single', 'prj_template_type', '代码模板', '10', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('65', '所有entity和dao', 'entityAndDao', 'prj_template_type', '代码模板', '20', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('7', '红色', 'red', 'color', '颜色值', '10', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('8', '绿色', 'green', 'color', '颜色值', '20', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('9', '蓝色', 'blue', 'color', '颜色值', '30', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_mdict
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `sort` int(11) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_parent_ids` (`parent_ids`(383)),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='多级字典表';

-- ----------------------------
-- Records of sys_mdict
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '菜单名称',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_parent_ids` (`parent_ids`(383)),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0946fd26ee2e4e28a9030cdd4afddae7', 'f1e880e0d7ec41cda35ab1d6a7790309', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,f9439cc11bf144a89e64074ecf5b2743,f1e880e0d7ec41cda35ab1d6a7790309,', '修改', '', '', '', '30', '1', '', '1', '2016-04-21 21:18:56', '1', '2016-04-21 21:18:56', null, '0');
INSERT INTO `sys_menu` VALUES ('0973d7e3dfc64dc98b0ef3782affa4bf', '8b2e87b08e0541eeba508153dbc036c3', '0,1,76,100,8b2e87b08e0541eeba508153dbc036c3,', '查看', '', '', '', '30', '1', 'prj:device:view', null, null, null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('09765e1380984bccb4628736303bcfc8', '1e83b18dce5c4f45b20cac13d3f8994a', '0,1,7d7a556218e64673b95057a0ff426375,3286e0fcdf1b43b3b88cf365d5dfe091,1e83b18dce5c4f45b20cac13d3f8994a,', '测试子菜单111212', '', '', 'share', '30', '1', '', '1', '2014-03-10 14:25:58', '1', '2014-03-10 14:25:58', null, '0');
INSERT INTO `sys_menu` VALUES ('0ce4d755dac04932957c798b1acbf993', '76', '0,1,76,', '测试菜单123', '', '', '', '30', '1', '', '1', '2016-04-18 15:34:41', '1', '2016-04-18 15:34:41', null, '1');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '顶级菜单', null, null, null, '0', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', '/sys/dict/', null, 'th-list', '60', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('100', '76', '0,1,76,', '设备管理', '', '', '', '30', '1', '', '1', '2016-04-18 15:32:22', '1', '2016-04-18 15:38:53', null, '1');
INSERT INTO `sys_menu` VALUES ('10f592fb5cbf4ceaba3f3660744da33c', '71bbb8847bb7453fb9507ba023482854', '0,1,76,71bbb8847bb7453fb9507ba023482854,', '查看', '', '', '', '30', '1', '', null, null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', null, null, null, '30', '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', null, null, null, '30', '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', null, null, null, '970', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', '/sys/area/', null, 'th', '50', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', null, null, null, '30', '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', null, null, null, '30', '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('176a2c8cd2464a3c9a5f4d9bb81dbfbc', 'f9439cc11bf144a89e64074ecf5b2743', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,f9439cc11bf144a89e64074ecf5b2743,', '人员调度', '/sys/prj/peopledispatch', '', '', '33', '1', '', '1', '2016-04-24 16:34:13', '1', '2016-04-24 16:34:13', null, '0');
INSERT INTO `sys_menu` VALUES ('1801334513244e068f53fae587a5bb15', 'e73afab3158f40d8a8cb67089bfcd791', '0,1,76,e73afab3158f40d8a8cb67089bfcd791,', '设备列表', '/prj/device/', '', 'wrench', '30', '1', '', '1', '2016-04-18 15:39:23', '1', '2016-04-18 15:39:23', null, '0');
INSERT INTO `sys_menu` VALUES ('1a21f7045f224b9491a6cb18af938550', '1', '0,1,', '角色管理', '', '', '', '999', '1', '', '1', '2016-04-21 20:29:26', '1', '2016-04-21 20:29:26', null, '0');
INSERT INTO `sys_menu` VALUES ('1e83b18dce5c4f45b20cac13d3f8994a', '3286e0fcdf1b43b3b88cf365d5dfe091', '0,1,7d7a556218e64673b95057a0ff426375,3286e0fcdf1b43b3b88cf365d5dfe091,', '测试子菜单11122', '', '', 'random', '30', '1', '', '1', '2014-03-10 14:24:52', '1', '2014-03-10 14:24:52', null, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', null, null, null, '900', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', '/sys/user/', null, 'user', '30', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', null, null, null, '30', '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('2118392a43774fbd8b7662916e75f18d', '1e83b18dce5c4f45b20cac13d3f8994a', '0,1,7d7a556218e64673b95057a0ff426375,3286e0fcdf1b43b3b88cf365d5dfe091,1e83b18dce5c4f45b20cac13d3f8994a,', '测试子菜单111211', '', '', 'fast-backward', '30', '1', '', '1', '2014-03-10 14:25:11', '1', '2014-03-10 14:25:11', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', null, null, null, '30', '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('24bac656d9e143e9897afe253ab9b7d4', '8b2e87b08e0541eeba508153dbc036c3', '0,1,76,100,8b2e87b08e0541eeba508153dbc036c3,', '查看', '', '', '', '30', '1', 'prj:device:view', null, null, null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('25ee31b4a0e74af8a2f949daced681f8', '53735138bcf6446ba537cd7ddec5056f', '0,1,53735138bcf6446ba537cd7ddec5056f,', '人员管理', '', '', '', '30', '1', '', '1', '2016-04-21 20:47:21', '1', '2016-04-21 20:47:21', null, '0');
INSERT INTO `sys_menu` VALUES ('26fb941f2e7443069a38b7b726c0b6ad', 'ca6790e793e34288ba1902eaebe34da5', '0,1,1a21f7045f224b9491a6cb18af938550,59fe6155bd694b72aeddf2a95716d847,ca6790e793e34288ba1902eaebe34da5,', '删除', '/sys/role/delete', '', 'remove', '31', '1', '', '1', '2016-04-21 20:41:35', '1', '2016-04-21 20:41:35', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', null, null, null, '100', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:33', null, '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', null, null, null, '990', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:33', null, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', '/sys/user/info', null, 'user', '30', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:33', null, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', null, null, null, '980', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', '/sys/user/modifyPwd', null, 'lock', '40', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:33', null, '0');
INSERT INTO `sys_menu` VALUES ('31', '1', '0,1,', '内容管理', null, null, null, '500', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:33', null, '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,1,31,', '栏目设置', null, null, null, '990', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('3286e0fcdf1b43b3b88cf365d5dfe091', '7d7a556218e64673b95057a0ff426375', '0,1,7d7a556218e64673b95057a0ff426375,', '测试子菜单1112', '', '', 'star-empty', '30', '1', 'sys:music:view', '1', '2014-03-10 14:21:39', '1', '2014-03-10 14:23:33', null, '0');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,1,31,32,', '栏目管理', '/cms/category/', null, 'align-justify', '30', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('34', '33', '0,1,31,32,33,', '查看', null, null, null, '30', '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('3441604495ec46c1bab19e9048d285de', '25ee31b4a0e74af8a2f949daced681f8', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,', '人员编辑', '/sys/user/edit', '', '', '32', '1', '', '1', '2016-04-21 20:49:13', '1', '2016-04-21 20:53:14', null, '1');
INSERT INTO `sys_menu` VALUES ('35', '33', '0,1,31,32,33,', '修改', null, null, null, '30', '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('36', '32', '0,1,31,32,', '站点设置', '/cms/site/', null, 'certificate', '40', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', null, null, null, '30', '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', null, null, null, '30', '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('39', '32', '0,1,31,32,', '切换站点', '/cms/site/select', null, 'retweet', '50', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('3dcff3c8cf0a4bf7863c2e36e9d72785', '76', '0,1,76,', '设备管理', '', '', '', '30', '1', '', '1', '2016-04-18 22:07:43', '1', '2016-04-18 22:07:43', null, '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', '/sys/menu/', null, 'list-alt', '30', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('40', '31', '0,1,31,', '内容管理', null, null, null, '500', '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:33', null, '0');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,1,31,40,', '内容发布', '/cms/', null, 'briefcase', '30', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('42', '41', '0,1,31,40,41,', '文章模型', '/cms/article/', null, 'file', '40', '0', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,1,31,40,41,42,', '查看', null, null, null, '30', '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '0,1,31,40,41,42,', '修改', null, null, null, '30', '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('45', '42', '0,1,31,40,41,42,', '审核', null, null, null, '30', '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('46', '41', '0,1,31,40,41,', '链接模型', '/cms/link/', null, 'random', '60', '0', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('47', '46', '0,1,31,40,41,46,', '查看', null, null, null, '30', '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('48', '46', '0,1,31,40,41,46,', '修改', null, null, null, '30', '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '0,1,31,40,41,46,', '审核', null, null, null, '30', '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', null, null, null, '30', '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('50', '40', '0,1,31,40,', '评论管理', '/cms/comment/?delFlag=0', null, 'comment', '40', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('51', '50', '0,1,31,40,50,', '查看', null, null, null, '30', '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('52', '50', '0,1,31,40,50,', '审核', null, null, null, '30', '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('53', '40', '0,1,31,40,', '公共留言', '/cms/guestbook/?delFlag=0', null, 'glass', '80', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('53735138bcf6446ba537cd7ddec5056f', '1', '0,1,', '人员管理', '', '', '', '1000', '1', '', '1', '2016-04-21 20:26:49', '1', '2016-04-21 20:28:42', null, '0');
INSERT INTO `sys_menu` VALUES ('54', '53', '0,1,31,40,53,', '查看', null, null, null, '30', '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('55', '53', '0,1,31,40,53,', '审核', null, null, null, '30', '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('56', '40', '0,1,31,40,', '文件管理', '/../static/ckfinder/ckfinder.html', null, 'folder-open', '90', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,31,40,56,', '查看', null, null, null, '30', '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,31,40,56,', '上传', null, null, null, '30', '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('581add2f4a21437cb7187c1fddb70c04', '25ee31b4a0e74af8a2f949daced681f8', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,', '人员删除', '/sys/user/delete', '', '', '35', '1', '', '1', '2016-04-21 20:50:33', '1', '2016-04-21 20:53:23', null, '1');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,31,40,56,', '修改', null, null, null, '30', '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:34', null, '0');
INSERT INTO `sys_menu` VALUES ('59fe6155bd694b72aeddf2a95716d847', '1a21f7045f224b9491a6cb18af938550', '0,1,1a21f7045f224b9491a6cb18af938550,', '角色管理', '', '', '', '30', '1', '', '1', '2016-04-21 20:33:47', '1', '2016-04-21 20:33:47', null, '0');
INSERT INTO `sys_menu` VALUES ('5d5eed5ab640417cb47b4caf9e8b225b', 'c5c40e23e231469da82b204030f4a49c', '0,1,c5c40e23e231469da82b204030f4a49c,', '设备管理', '', '', '', '30', '1', '', '1', '2016-04-21 20:56:38', '1', '2016-04-21 20:56:38', null, '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', null, null, null, '30', '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('60', '31', '0,1,31,', '统计分析', null, null, null, '600', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('6027a7b48fc0410b96731e1de103cb86', 'd80ecfd9c23645698efc51187a70d1d8', '0,1,c5c40e23e231469da82b204030f4a49c,5d5eed5ab640417cb47b4caf9e8b225b,d80ecfd9c23645698efc51187a70d1d8,', '状态详情', '/people/status', '', '', '30', '1', '', '1', '2016-04-23 15:02:01', '1', '2016-04-23 15:02:01', null, '1');
INSERT INTO `sys_menu` VALUES ('61', '60', '0,1,31,60,', '信息量统计', '/cms/stats/article', null, 'tasks', '30', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', null, null, null, '985', '1', null, '1', '2013-06-03 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', '/sys/log', null, 'pencil', '30', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', '/sys/role/', null, 'lock', '50', '1', null, '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('73', '32', '0,1,31,32,', '模板管理', '/cms/template', null, 'pencil', '40', '1', null, '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('74', '73', '0,1,31,32,73,', '查看', null, null, null, '30', '0', 'cms:template:view', '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('75', '73', '0,1,31,32,73,', '修改', null, null, null, '30', '0', 'cms:template:edit', '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:35', null, '0');
INSERT INTO `sys_menu` VALUES ('76', '1', '0,1,', '项目管理', '', '', '', '986', '1', '', '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('76787bedddb0415e9b268dd5c8f94edb', 'f2f9036064334285af86dfdfcc2629a2', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,c7c7cbb4ba65431b8ff27d9b7978da10,f2f9036064334285af86dfdfcc2629a2,', '状态删除', '/prj/people/status/delete', '', '', '31', '1', '', '1', '2016-04-23 15:06:43', '1', '2016-04-24 19:59:36', null, '0');
INSERT INTO `sys_menu` VALUES ('77', '76', '0,1,76,', '项目数据', null, null, null, '30', '1', null, '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('78', '77', '0,1,76,77,', '项目管理', '/prj/project/', null, 'globe', '30', '1', null, '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('79', '78', '0,1,76,77,78,', '查看', null, null, null, '30', '0', 'prj:project:view', '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:36', null, '1');
INSERT INTO `sys_menu` VALUES ('79ba732053b0490d9c81e59c9bfaa658', '25ee31b4a0e74af8a2f949daced681f8', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,', '人员添加', '/prj/people/form', '', '', '31', '1', '', '1', '2016-04-21 20:49:54', '1', '2016-04-24 20:00:19', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', null, null, null, '30', '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('80', '78', '0,1,76,77,78,', '修改', null, null, null, '40', '0', 'prj:project:edit', '1', '2013-12-12 08:00:00', '1', '2014-03-10 14:23:36', null, '1');
INSERT INTO `sys_menu` VALUES ('8453ddf94601464eb786b39c334f89ec', '29', '0,1,27,28,29,', '个人信息下一级', 'sss', '', 'tag', '30', '1', '', '1', '2016-04-15 13:23:12', '1', '2016-04-15 13:23:12', null, '0');
INSERT INTO `sys_menu` VALUES ('8e90d3128f5d49ee84369a750f046a0c', 'bbb3d92fe1074e4abb4373cba2e68e81', '0,1,ab537a11c5e34d77bffdc7717b7fe4c6,bbb3d92fe1074e4abb4373cba2e68e81,', '样件查看', '/prj/sample/', '', '', '30', '1', '', '1', '2016-04-21 21:03:19', '1', '2016-04-21 21:03:19', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', null, null, null, '30', '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2014-03-10 14:23:36', null, '0');
INSERT INTO `sys_menu` VALUES ('907665ab459c414980a4bd0cf6e0f4dc', 'bbb3d92fe1074e4abb4373cba2e68e81', '0,1,ab537a11c5e34d77bffdc7717b7fe4c6,bbb3d92fe1074e4abb4373cba2e68e81,', '样件添加', '/prj/sample/form', '', '', '31', '1', '', '1', '2016-04-21 21:04:18', '1', '2016-04-21 21:04:18', null, '0');
INSERT INTO `sys_menu` VALUES ('912160fff03844ea9c08e7c574f14536', 'c7c7cbb4ba65431b8ff27d9b7978da10', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,c7c7cbb4ba65431b8ff27d9b7978da10,', '删除', '/prj/people/delete', '', '', '32', '1', '', '1', '2016-04-23 15:04:02', '1', '2016-04-24 20:00:08', null, '0');
INSERT INTO `sys_menu` VALUES ('9dc8db91ebeb4992a936b31ecc3c1cd0', '76', '0,1,76,', '设备管理', '/prj/device/', '', 'wrench', '30', '1', '', '1', '2016-04-18 15:28:56', '1', '2016-04-18 15:30:25', null, '1');
INSERT INTO `sys_menu` VALUES ('9ee7b25d4c7e428981c7774e13ef5bfb', '5d5eed5ab640417cb47b4caf9e8b225b', '0,1,c5c40e23e231469da82b204030f4a49c,5d5eed5ab640417cb47b4caf9e8b225b,', '设备添加', '/prj/device/form', '', '', '31', '1', '', '1', '2016-04-21 20:57:45', '1', '2016-04-21 20:57:45', null, '0');
INSERT INTO `sys_menu` VALUES ('a12ee008aca847948961703c03044857', '59fe6155bd694b72aeddf2a95716d847', '0,1,1a21f7045f224b9491a6cb18af938550,59fe6155bd694b72aeddf2a95716d847,', '角色添加', '/sys/role/form', '', 'cog', '31', '1', '', '1', '2016-04-21 20:35:36', '1', '2016-04-21 20:40:48', null, '0');
INSERT INTO `sys_menu` VALUES ('ab537a11c5e34d77bffdc7717b7fe4c6', '1', '0,1,', '样件管理', '', '', '', '1002', '1', '', '1', '2016-04-21 20:30:10', '1', '2016-04-21 20:30:10', null, '0');
INSERT INTO `sys_menu` VALUES ('b0b90e1afa364352b6266f8595f718e6', '1', '0,1,', '测试菜单', '', '', 'file', '30', '1', '', '1', '2016-04-15 13:24:07', '1', '2016-04-15 13:24:07', null, '1');
INSERT INTO `sys_menu` VALUES ('b1cfeaaac6a14f868106c332ffbfd878', 'b9d5d84aa0db48b09186f74fbd3e24a1', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,', '试验进度', '', '', '', '31', '1', '', '1', '2016-04-21 21:16:43', '1', '2016-04-21 21:17:27', null, '0');
INSERT INTO `sys_menu` VALUES ('b277758e50d74116ac65f11919b099c9', 'ca6790e793e34288ba1902eaebe34da5', '0,1,1a21f7045f224b9491a6cb18af938550,59fe6155bd694b72aeddf2a95716d847,ca6790e793e34288ba1902eaebe34da5,', '分配', '/sys/role/assign', '', 'move', '29', '1', '', '1', '2016-04-21 20:36:44', '1', '2016-04-21 20:43:03', null, '0');
INSERT INTO `sys_menu` VALUES ('b9af2e9be0454e15a22ca702cb262722', 'f9439cc11bf144a89e64074ecf5b2743', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,f9439cc11bf144a89e64074ecf5b2743,', '试验创建', '', '', '', '31', '1', '', '1', '2016-04-21 21:18:21', '1', '2016-04-21 21:18:21', null, '0');
INSERT INTO `sys_menu` VALUES ('b9d5d84aa0db48b09186f74fbd3e24a1', '1', '0,1,', '试验管理', '', '', '', '1003', '1', '', '1', '2016-04-21 20:30:29', '1', '2016-04-21 20:30:29', null, '0');
INSERT INTO `sys_menu` VALUES ('bbb3d92fe1074e4abb4373cba2e68e81', 'ab537a11c5e34d77bffdc7717b7fe4c6', '0,1,ab537a11c5e34d77bffdc7717b7fe4c6,', '样件管理', '', '', '', '30', '1', '', '1', '2016-04-21 21:01:54', '1', '2016-04-21 21:01:54', null, '0');
INSERT INTO `sys_menu` VALUES ('bdfb7049c71c423784dd9eb1596d85d7', 'f2f9036064334285af86dfdfcc2629a2', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,c7c7cbb4ba65431b8ff27d9b7978da10,f2f9036064334285af86dfdfcc2629a2,', '状态修改', '/prj/people/status/edit', '', '', '30', '1', '', '1', '2016-04-23 15:04:55', '1', '2016-04-24 19:59:22', null, '0');
INSERT INTO `sys_menu` VALUES ('c12dac7421174ee4bc5aa98298af82f7', '3dcff3c8cf0a4bf7863c2e36e9d72785', '0,1,76,3dcff3c8cf0a4bf7863c2e36e9d72785,', '查看', '/prj/device', '', '', '30', '1', '', '1', '2016-04-18 23:15:35', '1', '2016-04-20 14:15:59', null, '0');
INSERT INTO `sys_menu` VALUES ('c2812256da4146d2adce3a7046da3e8e', 'b9d5d84aa0db48b09186f74fbd3e24a1', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,', '试验分析', '', '', '', '32', '1', '', '1', '2016-04-21 21:16:57', '1', '2016-04-21 21:17:38', null, '0');
INSERT INTO `sys_menu` VALUES ('c5c40e23e231469da82b204030f4a49c', '1', '0,1,', '设备管理', '', '', '', '1001', '1', '', '1', '2016-04-21 20:27:36', '1', '2016-04-21 20:28:55', null, '0');
INSERT INTO `sys_menu` VALUES ('c7c7cbb4ba65431b8ff27d9b7978da10', '25ee31b4a0e74af8a2f949daced681f8', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,', '人员查看', '/prj/people/', '', '', '30', '1', '', '1', '2016-04-21 20:48:32', '1', '2016-04-24 19:58:45', null, '0');
INSERT INTO `sys_menu` VALUES ('ca4b290f2c73489e9d50658181b7ff28', 'f1e880e0d7ec41cda35ab1d6a7790309', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,f9439cc11bf144a89e64074ecf5b2743,f1e880e0d7ec41cda35ab1d6a7790309,', '删除', '', '', '', '32', '1', '', '1', '2016-04-21 21:19:15', '1', '2016-04-21 21:19:15', null, '0');
INSERT INTO `sys_menu` VALUES ('ca6790e793e34288ba1902eaebe34da5', '59fe6155bd694b72aeddf2a95716d847', '0,1,1a21f7045f224b9491a6cb18af938550,59fe6155bd694b72aeddf2a95716d847,', '角色列表', '/sys/role/', '', 'list', '30', '1', '', '1', '2016-04-21 20:34:28', '1', '2016-04-21 20:39:47', null, '0');
INSERT INTO `sys_menu` VALUES ('d4784437dff64bef97ab0e224d5210a1', 'ca6790e793e34288ba1902eaebe34da5', '0,1,1a21f7045f224b9491a6cb18af938550,59fe6155bd694b72aeddf2a95716d847,ca6790e793e34288ba1902eaebe34da5,', '修改', '/sys/role/form', '', 'adjust', '30', '1', '', '1', '2016-04-21 20:43:43', '1', '2016-04-21 20:43:43', null, '0');
INSERT INTO `sys_menu` VALUES ('d4ffd270b8c949fd92f06b519093fa0d', '25ee31b4a0e74af8a2f949daced681f8', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,', '人员调度', '/sys/people/dispatch', '', '', '33', '1', '', '1', '2016-04-24 16:26:29', '1', '2016-04-24 16:27:25', null, '1');
INSERT INTO `sys_menu` VALUES ('d80ecfd9c23645698efc51187a70d1d8', '5d5eed5ab640417cb47b4caf9e8b225b', '0,1,c5c40e23e231469da82b204030f4a49c,5d5eed5ab640417cb47b4caf9e8b225b,', '设备查看', '/prj/device/', '', '', '30', '1', '', '1', '2016-04-21 20:57:09', '1', '2016-04-21 20:57:09', null, '0');
INSERT INTO `sys_menu` VALUES ('f1e880e0d7ec41cda35ab1d6a7790309', 'f9439cc11bf144a89e64074ecf5b2743', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,f9439cc11bf144a89e64074ecf5b2743,', '试验查看', '', '', '', '30', '1', '', '1', '2016-04-21 21:18:00', '1', '2016-04-21 21:18:00', null, '0');
INSERT INTO `sys_menu` VALUES ('f2f9036064334285af86dfdfcc2629a2', 'c7c7cbb4ba65431b8ff27d9b7978da10', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,c7c7cbb4ba65431b8ff27d9b7978da10,', '状态详情', '/prj/people/status', '', '', '30', '1', '', '1', '2016-04-23 15:02:33', '1', '2016-04-24 19:59:05', null, '0');
INSERT INTO `sys_menu` VALUES ('f9439cc11bf144a89e64074ecf5b2743', 'b9d5d84aa0db48b09186f74fbd3e24a1', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,', '试验管理', '', '', '', '30', '1', '', '1', '2016-04-21 21:16:13', '1', '2016-04-21 21:16:13', null, '0');
INSERT INTO `sys_menu` VALUES ('f96da68bc4d148ad81e5f8acf1ae0f3e', 'f9439cc11bf144a89e64074ecf5b2743', '0,1,b9d5d84aa0db48b09186f74fbd3e24a1,f9439cc11bf144a89e64074ecf5b2743,', '设备调度', '/sys/prj/devicedispatch', '', '', '34', '1', '', '1', '2016-04-24 16:34:56', '1', '2016-04-24 16:34:56', null, '0');
INSERT INTO `sys_menu` VALUES ('fc9ec1a75aba4e0c92c083456616ca62', 'c7c7cbb4ba65431b8ff27d9b7978da10', '0,1,53735138bcf6446ba537cd7ddec5056f,25ee31b4a0e74af8a2f949daced681f8,c7c7cbb4ba65431b8ff27d9b7978da10,', '修改', '/prj/people/edit', '', '', '31', '1', '', '1', '2016-04-23 15:03:38', '1', '2016-04-24 19:59:55', null, '0');

-- ----------------------------
-- Table structure for sys_people
-- ----------------------------
DROP TABLE IF EXISTS `sys_people`;
CREATE TABLE `sys_people` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='人员表';

-- ----------------------------
-- Records of sys_people
-- ----------------------------
INSERT INTO `sys_people` VALUES ('1', '小一', '1@123.com', '1111', '13111111111', '0', '2014-03-09 17:15:03', '1', '2016-04-23 14:41:25', '第一个', '1');
INSERT INTO `sys_people` VALUES ('2', '小二', '2@123.com', '2222', '13222222222', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第二个', '0');
INSERT INTO `sys_people` VALUES ('3', '小三', '3@123.com', '3333', '13333333333', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第三个', '0');
INSERT INTO `sys_people` VALUES ('4', '小四', '4@123.com', '4444', '13444444444', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第四个', '0');
INSERT INTO `sys_people` VALUES ('ac0b3c987bc04c04b2e9753471951b13', '小五', null, '5555', '13555555555', '1', '2016-04-23 14:43:01', '1', '2016-04-23 14:43:01', '第五个', '1');
INSERT INTO `sys_people` VALUES ('b8c571ea08a1401b91106671afebae9d', '小七', null, '7777', '1377777777', '1', '2016-04-24 15:04:56', '1', '2016-04-24 15:04:56', '', '1');
INSERT INTO `sys_people` VALUES ('c5949482288849c1983a7ef2a90fff7c', '小五', null, '5555', '13555555555', '1', '2016-04-24 21:59:50', '1', '2016-04-24 22:00:14', '', '0');

-- ----------------------------
-- Table structure for sys_people_status
-- ----------------------------
DROP TABLE IF EXISTS `sys_people_status`;
CREATE TABLE `sys_people_status` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `pid` varchar(64) NOT NULL COMMENT '人员编号',
  `start_time` datetime DEFAULT NULL COMMENT '起始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '人员状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='人员状态表';

-- ----------------------------
-- Records of sys_people_status
-- ----------------------------
INSERT INTO `sys_people_status` VALUES ('1', '1', '2016-04-20 10:15:03', '2016-04-22 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_people_status` VALUES ('166d9c88097a48418e1cb5960bc195ba', '2', null, null, '0', '1', '2016-04-24 15:34:20', '1', '2016-04-24 15:34:20', null, '1');
INSERT INTO `sys_people_status` VALUES ('17a1f17e28854bfd9b8ecb075ff8ef39', 'b8c571ea08a1401b91106671afebae9d', '2016-04-25 10:15:03', '2016-04-28 10:15:03', '3', '1', '2016-04-24 15:22:21', '1', '2016-04-24 15:26:40', null, '1');
INSERT INTO `sys_people_status` VALUES ('2', '1', '2016-04-25 10:15:03', '2016-04-28 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_people_status` VALUES ('3', '1', '2016-05-01 10:15:03', '2016-05-12 10:15:03', '2', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_people_status` VALUES ('33df25341e874520b6e2726323fc225b', '2', '2016-05-03 10:15:00', '2016-05-13 10:15:00', '2', '1', '2016-04-24 20:05:15', '1', '2016-04-24 20:05:15', null, '0');
INSERT INTO `sys_people_status` VALUES ('4', '2', '2016-04-19 10:15:03', '2016-04-22 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_people_status` VALUES ('4bbc9c6c323c444fa04708c32612e1d5', 'b8c571ea08a1401b91106671afebae9d', '2016-05-03 10:15:00', '2016-05-13 10:15:00', '2', '1', '2016-04-24 15:14:53', '1', '2016-04-24 15:14:53', null, '1');
INSERT INTO `sys_people_status` VALUES ('5', '2', '2016-04-25 10:15:03', '2016-04-29 10:15:03', '3', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_people_status` VALUES ('6', '2', '2016-04-30 10:15:03', '2016-05-10 10:15:03', '2', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '1');
INSERT INTO `sys_people_status` VALUES ('826a7edce7184a168244101e59527b80', 'b8c571ea08a1401b91106671afebae9d', '2016-05-03 10:15:00', '2016-04-28 10:15:03', '0', '1', '2016-04-24 15:39:43', '1', '2016-04-24 15:39:43', null, '1');
INSERT INTO `sys_people_status` VALUES ('8a2337311df040e7aca955219847e0be', 'b8c571ea08a1401b91106671afebae9d', '2016-05-14 10:15:00', '2016-05-23 10:15:00', '3', '1', '2016-04-24 15:17:51', '1', '2016-04-24 15:17:51', null, '1');
INSERT INTO `sys_people_status` VALUES ('8f7ac2b409a1437ca24fea9de96dbfe1', '4', '2016-05-03 10:15:00', '2016-04-28 10:15:03', '0', '1', '2016-04-24 16:12:11', '1', '2016-04-24 16:12:11', null, '0');
INSERT INTO `sys_people_status` VALUES ('9ea651eb6d7a4b439d695c8903d05750', '4', '2016-05-23 10:15:00', '2017-05-03 10:15:00', '2', '1', '2016-04-24 16:10:48', '1', '2016-04-24 16:10:57', null, '1');
INSERT INTO `sys_people_status` VALUES ('acc72274e25a443881eb27fbab747794', '2', '2016-05-03 10:15:00', '2016-04-28 10:15:03', '0', '1', '2016-04-24 15:37:42', '1', '2016-04-24 15:37:42', null, '1');
INSERT INTO `sys_people_status` VALUES ('affd37b05b314c658216318f05de34ff', 'b8c571ea08a1401b91106671afebae9d', '2017-05-03 10:15:00', '2017-05-03 10:15:00', '3', '1', '2016-04-24 15:27:06', '1', '2016-04-24 15:27:06', null, '0');
INSERT INTO `sys_people_status` VALUES ('b43e74b1803b42e9b8bd71642f5a1325', '2', '2016-05-03 10:15:00', '2016-05-13 10:15:00', '2', '1', '2016-04-24 20:05:01', '1', '2016-04-24 20:05:01', null, '0');
INSERT INTO `sys_people_status` VALUES ('baa45b805bb9407a9d0e9cf91bcf0c43', '3', '2016-04-25 10:15:03', '2017-05-03 10:15:00', '1', '1', '2016-04-24 16:39:49', '1', '2016-04-24 16:39:49', null, '0');
INSERT INTO `sys_people_status` VALUES ('c09403567a1c4ffa874c91d6e0e79539', '2', '2016-04-29 10:25:00', '2016-04-29 10:25:00', '3', '1', '2016-04-24 15:33:55', '1', '2016-04-24 15:33:55', null, '1');
INSERT INTO `sys_people_status` VALUES ('c7567bdda2ed4e16b282e83703040586', 'b8c571ea08a1401b91106671afebae9d', '2016-04-25 10:15:03', '2016-04-28 10:15:03', '0', '1', '2016-04-24 15:43:24', '1', '2016-04-24 15:43:24', null, '1');
INSERT INTO `sys_people_status` VALUES ('cebf48d6ef2e4366995b4f04334b0dba', 'b8c571ea08a1401b91106671afebae9d', '2016-05-23 10:15:00', '2016-05-23 10:15:00', '2', '1', '2016-04-24 15:19:19', '1', '2016-04-24 15:19:19', null, '1');
INSERT INTO `sys_people_status` VALUES ('e28e6378a53142869395f83cfd9e807d', 'b8c571ea08a1401b91106671afebae9d', '2016-05-03 10:15:00', '2016-04-28 10:15:03', '2', '1', '2016-04-24 16:06:41', '1', '2016-04-24 16:06:41', null, '1');
INSERT INTO `sys_people_status` VALUES ('e95e7a28dd0847409074a9399ce3e6fd', '4', '2016-05-23 10:15:00', '2016-04-29 10:25:00', '0', '1', '2016-04-24 16:11:58', '1', '2016-04-24 16:11:58', null, '1');
INSERT INTO `sys_people_status` VALUES ('ee1a3a397ec74bef91f225437c441be3', '2', '2016-05-03 10:15:00', '2016-05-13 10:15:00', '1', '1', '2016-04-24 20:04:53', '1', '2016-04-24 20:06:28', null, '0');
INSERT INTO `sys_people_status` VALUES ('efffec3646f147b5ae720e64959129a7', 'b8c571ea08a1401b91106671afebae9d', '2016-05-23 10:15:00', '2017-05-03 10:15:00', '1', '1', '2016-04-24 16:07:07', '1', '2016-04-24 16:07:07', null, '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '1', '2013-05-27 08:00:00', '1', '2014-03-11 10:08:39', null, '0');
INSERT INTO `sys_role` VALUES ('4d53e71cd1a74192b7113972362b809d', 'role1', '1', '2016-04-15 13:26:14', '1', '2016-04-15 13:26:14', null, '1');
INSERT INTO `sys_role` VALUES ('6', '普通用户', '1', '2013-05-27 08:00:00', '1', '2016-04-18 20:19:54', null, '0');
INSERT INTO `sys_role` VALUES ('b6f5f7a6b98645709361aba678615c4e', 'role11', '1', '2016-04-21 20:45:33', '1', '2016-04-21 20:45:40', null, '1');
INSERT INTO `sys_role` VALUES ('bdbbe3faaed04d1cb33b497284094297', 'SuperWoman', '1', '2014-03-10 15:15:18', '1', '2016-04-20 14:11:44', null, '0');
INSERT INTO `sys_role` VALUES ('dfe6ce00954644c08e4c856e5df10b80', 'SuperMan', '1', '2014-03-10 15:14:33', '1', '2014-03-10 15:14:56', null, '1');
INSERT INTO `sys_role` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', 'role3', null, null, null, null, null, '1');
INSERT INTO `sys_role` VALUES ('fd09cca222ea40839892ba0e947b4c96', 'role5', null, null, '3c363bdab51341f59e4ffad6c6f8bb30', '2016-04-20 14:24:41', null, '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '09765e1380984bccb4628736303bcfc8');
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '1e83b18dce5c4f45b20cac13d3f8994a');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '2118392a43774fbd8b7662916e75f18d');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '3286e0fcdf1b43b3b88cf365d5dfe091');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '73');
INSERT INTO `sys_role_menu` VALUES ('1', '74');
INSERT INTO `sys_role_menu` VALUES ('1', '75');
INSERT INTO `sys_role_menu` VALUES ('1', '76');
INSERT INTO `sys_role_menu` VALUES ('1', '77');
INSERT INTO `sys_role_menu` VALUES ('1', '78');
INSERT INTO `sys_role_menu` VALUES ('1', '79');
INSERT INTO `sys_role_menu` VALUES ('1', '7d7a556218e64673b95057a0ff426375');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '80');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', 'ef047b3fd34b4c109118782a9ea0d698');
INSERT INTO `sys_role_menu` VALUES ('1', 'fb7dba0898664ee184b65b55a2f95793');
INSERT INTO `sys_role_menu` VALUES ('1', 'fe6cdeecf4224cec844d9111f99d2080');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '1');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '10');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '11');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '12');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '13');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '14');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '15');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '16');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '2');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '20');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '21');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '22');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '3');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '4');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '5');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '6');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '67');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '68');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '7');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '8');
INSERT INTO `sys_role_menu` VALUES ('4d53e71cd1a74192b7113972362b809d', '9');
INSERT INTO `sys_role_menu` VALUES ('6', '1');
INSERT INTO `sys_role_menu` VALUES ('6', '10');
INSERT INTO `sys_role_menu` VALUES ('6', '100');
INSERT INTO `sys_role_menu` VALUES ('6', '11');
INSERT INTO `sys_role_menu` VALUES ('6', '12');
INSERT INTO `sys_role_menu` VALUES ('6', '13');
INSERT INTO `sys_role_menu` VALUES ('6', '14');
INSERT INTO `sys_role_menu` VALUES ('6', '15');
INSERT INTO `sys_role_menu` VALUES ('6', '16');
INSERT INTO `sys_role_menu` VALUES ('6', '2');
INSERT INTO `sys_role_menu` VALUES ('6', '20');
INSERT INTO `sys_role_menu` VALUES ('6', '21');
INSERT INTO `sys_role_menu` VALUES ('6', '22');
INSERT INTO `sys_role_menu` VALUES ('6', '27');
INSERT INTO `sys_role_menu` VALUES ('6', '28');
INSERT INTO `sys_role_menu` VALUES ('6', '29');
INSERT INTO `sys_role_menu` VALUES ('6', '3');
INSERT INTO `sys_role_menu` VALUES ('6', '31');
INSERT INTO `sys_role_menu` VALUES ('6', '32');
INSERT INTO `sys_role_menu` VALUES ('6', '33');
INSERT INTO `sys_role_menu` VALUES ('6', '34');
INSERT INTO `sys_role_menu` VALUES ('6', '35');
INSERT INTO `sys_role_menu` VALUES ('6', '36');
INSERT INTO `sys_role_menu` VALUES ('6', '37');
INSERT INTO `sys_role_menu` VALUES ('6', '38');
INSERT INTO `sys_role_menu` VALUES ('6', '39');
INSERT INTO `sys_role_menu` VALUES ('6', '4');
INSERT INTO `sys_role_menu` VALUES ('6', '40');
INSERT INTO `sys_role_menu` VALUES ('6', '41');
INSERT INTO `sys_role_menu` VALUES ('6', '42');
INSERT INTO `sys_role_menu` VALUES ('6', '43');
INSERT INTO `sys_role_menu` VALUES ('6', '44');
INSERT INTO `sys_role_menu` VALUES ('6', '45');
INSERT INTO `sys_role_menu` VALUES ('6', '46');
INSERT INTO `sys_role_menu` VALUES ('6', '47');
INSERT INTO `sys_role_menu` VALUES ('6', '48');
INSERT INTO `sys_role_menu` VALUES ('6', '49');
INSERT INTO `sys_role_menu` VALUES ('6', '5');
INSERT INTO `sys_role_menu` VALUES ('6', '50');
INSERT INTO `sys_role_menu` VALUES ('6', '51');
INSERT INTO `sys_role_menu` VALUES ('6', '52');
INSERT INTO `sys_role_menu` VALUES ('6', '53');
INSERT INTO `sys_role_menu` VALUES ('6', '54');
INSERT INTO `sys_role_menu` VALUES ('6', '55');
INSERT INTO `sys_role_menu` VALUES ('6', '56');
INSERT INTO `sys_role_menu` VALUES ('6', '57');
INSERT INTO `sys_role_menu` VALUES ('6', '58');
INSERT INTO `sys_role_menu` VALUES ('6', '59');
INSERT INTO `sys_role_menu` VALUES ('6', '6');
INSERT INTO `sys_role_menu` VALUES ('6', '60');
INSERT INTO `sys_role_menu` VALUES ('6', '61');
INSERT INTO `sys_role_menu` VALUES ('6', '67');
INSERT INTO `sys_role_menu` VALUES ('6', '68');
INSERT INTO `sys_role_menu` VALUES ('6', '7');
INSERT INTO `sys_role_menu` VALUES ('6', '76');
INSERT INTO `sys_role_menu` VALUES ('6', '77');
INSERT INTO `sys_role_menu` VALUES ('6', '78');
INSERT INTO `sys_role_menu` VALUES ('6', '79');
INSERT INTO `sys_role_menu` VALUES ('6', '8');
INSERT INTO `sys_role_menu` VALUES ('6', '80');
INSERT INTO `sys_role_menu` VALUES ('6', '8b2e87b08e0541eeba508153dbc036c3');
INSERT INTO `sys_role_menu` VALUES ('6', '9');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '1');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '10');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '11');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '12');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '13');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '14');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '15');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '16');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '2');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '20');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '21');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '22');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '27');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '28');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '29');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '3');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '30');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '4');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '5');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '6');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '67');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '68');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '7');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '8');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '8453ddf94601464eb786b39c334f89ec');
INSERT INTO `sys_role_menu` VALUES ('b6f5f7a6b98645709361aba678615c4e', '9');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '09765e1380984bccb4628736303bcfc8');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '1');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '10');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '11');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '12');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '13');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '14');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '15');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '16');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '1801334513244e068f53fae587a5bb15');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '1e83b18dce5c4f45b20cac13d3f8994a');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '2');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '20');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '21');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '2118392a43774fbd8b7662916e75f18d');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '22');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '27');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '28');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '29');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '3');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '30');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '31');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '32');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '3286e0fcdf1b43b3b88cf365d5dfe091');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '33');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '34');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '35');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '36');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '37');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '38');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '39');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '3dcff3c8cf0a4bf7863c2e36e9d72785');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '4');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '40');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '41');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '42');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '43');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '44');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '45');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '46');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '47');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '48');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '49');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '5');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '50');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '51');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '52');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '53');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '54');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '55');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '56');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '57');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '58');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '59');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '6');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '60');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '61');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '67');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '68');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '7');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '73');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '74');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '75');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '76');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '77');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '78');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '8');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', '9');
INSERT INTO `sys_role_menu` VALUES ('bdbbe3faaed04d1cb33b497284094297', 'c12dac7421174ee4bc5aa98298af82f7');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '09765e1380984bccb4628736303bcfc8');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '1');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '10');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '11');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '12');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '13');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '14');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '15');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '16');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '1e83b18dce5c4f45b20cac13d3f8994a');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '2');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '20');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '21');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '2118392a43774fbd8b7662916e75f18d');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '22');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '27');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '28');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '29');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '3');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '30');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '31');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '32');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '3286e0fcdf1b43b3b88cf365d5dfe091');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '33');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '34');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '35');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '36');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '37');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '38');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '39');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '4');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '40');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '41');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '42');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '43');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '44');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '45');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '46');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '47');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '48');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '49');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '5');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '50');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '51');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '52');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '53');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '54');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '55');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '56');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '57');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '58');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '59');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '6');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '60');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '61');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '67');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '68');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '7');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '73');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '74');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '75');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '76');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '77');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '78');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '79');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '7d7a556218e64673b95057a0ff426375');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '8');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '80');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', '9');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', 'ef047b3fd34b4c109118782a9ea0d698');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', 'fb7dba0898664ee184b65b55a2f95793');
INSERT INTO `sys_role_menu` VALUES ('dfe6ce00954644c08e4c856e5df10b80', 'fe6cdeecf4224cec844d9111f99d2080');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '1');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '31');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '32');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '33');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '34');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '35');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '36');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '37');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '38');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '39');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '40');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '41');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '42');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '43');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '44');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '45');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '46');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '47');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '48');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '49');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '50');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '51');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '52');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '53');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '54');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '55');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '56');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '57');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '58');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '59');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '60');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '61');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '73');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '74');
INSERT INTO `sys_role_menu` VALUES ('f0ff7e4ae9a44bd384a2d9b406cba38d', '75');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '1');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '10');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '11');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '2');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '3');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '4');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '5');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '6');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '67');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '68');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '7');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '8');
INSERT INTO `sys_role_menu` VALUES ('fd09cca222ea40839892ba0e947b4c96', '9');

-- ----------------------------
-- Table structure for sys_sample
-- ----------------------------
DROP TABLE IF EXISTS `sys_sample`;
CREATE TABLE `sys_sample` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `stype` varchar(200) DEFAULT NULL COMMENT '类型',
  `location` varchar(200) DEFAULT NULL COMMENT '位置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='样件表';

-- ----------------------------
-- Records of sys_sample
-- ----------------------------
INSERT INTO `sys_sample` VALUES ('1', '轮胎1', '轮胎', '302室2号货柜3层', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第一个设备', '0');
INSERT INTO `sys_sample` VALUES ('2', '轮胎2', '轮胎', '308室3号货柜1层', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第二个设备', '0');
INSERT INTO `sys_sample` VALUES ('3', '引擎1', '引擎', '506室1号货柜2层', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第三个设备', '0');
INSERT INTO `sys_sample` VALUES ('4', '引擎2', '引擎', '708室1号货柜3层', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '第四个设备', '0');
INSERT INTO `sys_sample` VALUES ('ce18d49c7464494eb4ebab6ab46a7963', '轮胎3', '轮胎', '304室地上', '1', '2016-04-24 22:30:34', '1', '2016-04-24 22:30:34', '', '0');

-- ----------------------------
-- Table structure for sys_sample_status
-- ----------------------------
DROP TABLE IF EXISTS `sys_sample_status`;
CREATE TABLE `sys_sample_status` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `sid` varchar(64) NOT NULL COMMENT '样件编号',
  `start_time` datetime DEFAULT NULL COMMENT '起始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '样件状态',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='样件状态表';

-- ----------------------------
-- Records of sys_sample_status
-- ----------------------------
INSERT INTO `sys_sample_status` VALUES ('1', '1', '2016-04-20 10:15:03', '2016-04-22 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_sample_status` VALUES ('2', '1', '2016-04-25 10:15:03', '2016-04-28 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_sample_status` VALUES ('3', '1', '2016-05-01 10:15:03', '2016-05-12 10:15:03', '2', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_sample_status` VALUES ('4', '2', '2016-04-19 10:15:03', '2016-04-22 10:15:03', '1', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_sample_status` VALUES ('5', '2', '2016-04-25 10:15:03', '2016-04-29 10:15:03', '3', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_sample_status` VALUES ('6', '2', '2016-04-30 10:15:03', '2016-05-10 10:15:03', '2', '0', '2014-03-09 17:15:03', '0', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_sample_status` VALUES ('7eaf360511a644b194b46eb06c14ca1b', '4', '2016-05-03 10:15:00', '2016-05-13 10:15:00', '3', '1', '2016-04-24 22:28:46', '1', '2016-04-24 22:28:46', null, '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('019aa099cf474d25bca068244b750da3', 'lian', '889b0be1407cfd9226b6c5c31745f9fbc862028e70d21b4f74e70713', '0004', '莲', 'thinkgem@163.com', '8675', '8675', '', null, null, '1', '2014-03-09 17:15:03', '1', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_user` VALUES ('1', 'thinkgem', '563dced673bfeac522a508ed365b2c6ce70a37871d7ac86ad2e5f676', '0001', 'Thinkgem', 'thinkgem@163.com', '110', '110', null, '127.0.0.1', '2016-04-25 13:57:03', '1', '2013-05-27 08:00:00', '1', '2014-03-10 17:02:43', '最高管理员 思密达', '0');
INSERT INTO `sys_user` VALUES ('1cd4ba5c9dbe4fd8bb654f6d5f2d880c', 'tai22', '73b8e753ddbf8577d6189d010157c7e16cee06507613aff5a4a76060', '0005', '泰22', 'thinkgem@163.com', '110', '110', '', null, null, '1', '2014-03-09 21:59:41', '1', '2016-04-23 14:44:50', '最高管理员 思密达 1', '0');
INSERT INTO `sys_user` VALUES ('2', 'admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', 'thinkgem@163.com', '8675', '8675', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '管理员', '0');
INSERT INTO `sys_user` VALUES ('3c363bdab51341f59e4ffad6c6f8bb30', 'user1', 'acab907f0d7f7157cde49a3476d0d50c2ffaf876d9a9485f92edae96', '111', 'user1', '123@qq.com', '13111111111', '', '', '127.0.0.1', '2016-04-21 20:23:23', null, null, null, null, '', '0');
INSERT INTO `sys_user` VALUES ('5', 'bj_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', 'thinkgem@163.com', '8675', '8675', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '技术部', '0');
INSERT INTO `sys_user` VALUES ('5314e94e11d047acadcc8ff8c2cebb9e', 'lian22', '7b9cdb31d46a37b35c2c4552851ca0c99694e0d794b186fd16b36dc0', '0004', '莲22', 'thinkgem@163.com', '8675', '8675', '', null, null, '1', '2014-03-09 21:59:40', '1', '2014-03-09 21:59:40', '技术部', '0');
INSERT INTO `sys_user` VALUES ('6845a9d935fa4a55bdea43c7d874f55d', 'qqq', '7c13b5c9cd9b64a41b91882abc60db242c64a02db2dcd03cdc24464d', '555', 'qqq', '', '', '', '', null, null, '1', '2016-04-20 14:10:55', '1', '2016-04-20 14:10:55', '', '0');
INSERT INTO `sys_user` VALUES ('71c984a7142b47d59d1d91089e2e64a2', 'lala', 'eb94e786b5631d869b7bdaf6ce2321fccf82b68402c17e5c49d79c6b', '0001', '拉拉', 'thinkgem@163.com', '110', '110', '', null, null, '1', '2014-03-09 23:15:49', '1', '2014-03-10 17:32:08', '最高管理员 思密达', '0');
INSERT INTO `sys_user` VALUES ('7b31a83978f24e69afa24fc96d3888ba', 'zhenyi', '285057d9dfefb64ddb64f270d87516522df2a2bf3d0bea3c676d862a', '0005', '真一', 'thinkgem@163.com', '8675', '8675', '', null, null, '1', '2014-03-09 17:15:03', '1', '2014-03-10 17:32:40', '', '0');
INSERT INTO `sys_user` VALUES ('7fb5a3197a5a4755b4de83400884143d', 'nana22', '26596aa56f67bc1e884b1c740107c02150ce202ba3b6e28b1e679e2b', '0003', '娜娜22', '123@123.com', '120', '120', '1', null, null, '1', '2014-03-09 21:59:40', '1', '2014-03-09 21:59:40', '卡机嘛', '0');
INSERT INTO `sys_user` VALUES ('9a7bc2b364af4722ab647bd6d2f1bf95', 'shane', 'f1ad1fa47e98fff08695b3bf1cedc974380a606160b6f4c763a67dce', '0002', '酱油君', '123@123.com', '120', '120', '1', null, null, '1', '2014-03-09 16:40:08', '1', '2014-03-09 16:41:47', '卡机嘛', '0');
INSERT INTO `sys_user` VALUES ('b03406a3895b4acabb8108ee0a731be4', 'user5', 'ac476b0ea8a1e48dc7f7a557666f1b6f1fc5b4c2eb7d797f014033e9', '111', 'user5', '', '', '', '', '127.0.0.1', '2016-04-20 14:24:51', null, null, null, null, '', '0');
INSERT INTO `sys_user` VALUES ('b13c778f6d5949c6868adc5306c47d44', 'nana', 'a774262f098b519a892c7f43e9957e7a149decece0d07003aaa1bdd3', '0003', '娜娜', '123@123.com', '120', '120', '1', null, null, '1', '2014-03-09 17:15:02', '1', '2014-03-10 17:02:43', '', '0');
INSERT INTO `sys_user` VALUES ('bec4a83acf7f47f2bf1b654056fc8143', 'jack', '0581086405752f76fa88ac6b85b212e4f243ecbcad8c598e06088724', '0001', '杰克', 'thinkgem@163.com', '110', '110', '1', null, null, '1', '2014-03-09 23:17:29', '1', '2014-03-09 23:17:29', '最高管理员 思密达', '0');
INSERT INTO `sys_user` VALUES ('e04c821ce3ce486eaa4d49ba63c330a8', 'tai', '314f8345f8623c0598c499dcdae927dd5d0618243bc7baeaa4b5c9cb', '0005', '泰', 'thinkgem@163.com', '110', '110', '', null, null, '1', '2014-03-09 17:15:03', '1', '2014-03-09 17:15:03', '41707.68980324074', '0');
INSERT INTO `sys_user` VALUES ('e3501718ffb341bf8399918ebd5988d2', 'zhenyi22', '824317f18df51cade141c626ac6258493a063f0f5de3b7a4b5728abc', '0005', '真一22', 'thinkgem@163.com', '8675', '8675', '', null, null, '1', '2014-03-09 21:59:41', '1', '2014-03-09 21:59:41', '管理员', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('019aa099cf474d25bca068244b750da3', 'bdbbe3faaed04d1cb33b497284094297');
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', 'bdbbe3faaed04d1cb33b497284094297');
INSERT INTO `sys_user_role` VALUES ('1cd4ba5c9dbe4fd8bb654f6d5f2d880c', '1');
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('3c363bdab51341f59e4ffad6c6f8bb30', '6');
INSERT INTO `sys_user_role` VALUES ('5', '4');
INSERT INTO `sys_user_role` VALUES ('5314e94e11d047acadcc8ff8c2cebb9e', '1');
INSERT INTO `sys_user_role` VALUES ('6845a9d935fa4a55bdea43c7d874f55d', 'fd09cca222ea40839892ba0e947b4c96');
INSERT INTO `sys_user_role` VALUES ('71c984a7142b47d59d1d91089e2e64a2', '1');
INSERT INTO `sys_user_role` VALUES ('71c984a7142b47d59d1d91089e2e64a2', 'bdbbe3faaed04d1cb33b497284094297');
INSERT INTO `sys_user_role` VALUES ('7b31a83978f24e69afa24fc96d3888ba', 'bdbbe3faaed04d1cb33b497284094297');
INSERT INTO `sys_user_role` VALUES ('7fb5a3197a5a4755b4de83400884143d', '1');
INSERT INTO `sys_user_role` VALUES ('9a7bc2b364af4722ab647bd6d2f1bf95', '1');
INSERT INTO `sys_user_role` VALUES ('9a7bc2b364af4722ab647bd6d2f1bf95', '6');
INSERT INTO `sys_user_role` VALUES ('b03406a3895b4acabb8108ee0a731be4', 'fd09cca222ea40839892ba0e947b4c96');
INSERT INTO `sys_user_role` VALUES ('b13c778f6d5949c6868adc5306c47d44', 'bdbbe3faaed04d1cb33b497284094297');
INSERT INTO `sys_user_role` VALUES ('bec4a83acf7f47f2bf1b654056fc8143', '1');
INSERT INTO `sys_user_role` VALUES ('e3501718ffb341bf8399918ebd5988d2', '1');
