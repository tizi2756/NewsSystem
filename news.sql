/*
Navicat MySQL Data Transfer

Source Server         : mybd
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-08-07 10:11:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind_name` varchar(255) DEFAULT NULL,
  `kind_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'kkkk', null);
INSERT INTO `category` VALUES ('3', '时政', null);
INSERT INTO `category` VALUES ('4', '时政', null);
INSERT INTO `category` VALUES ('5', '文化', null);
INSERT INTO `category` VALUES ('6', '军事', null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `up_time` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '0', '啦啦啦啦', '嘤嘤嘤嘤嘤嘤嘤嘤', '2018', '2018', '刘某');
INSERT INTO `news` VALUES ('3', '2', '以更大力度推进改革开放', '', '2018-08-04', '2018-08-04', '央视快评');
INSERT INTO `news` VALUES ('4', '2', '太原理工大学与玉龙马业共建国际赛马学院', '', '2018-08-04', '2018-08-04', '搜狐新闻');
INSERT INTO `news` VALUES ('5', '3', '在上海走访了斯皮尔伯格取景的三个地方，看看你去过没有？', '', '2018-08-04', '2018-08-04', '搜狐新闻');
INSERT INTO `news` VALUES ('6', '1', '坎坎坷坷', '啦啦啦啦啦', '2018-08-05', '2018-08-05', '快快快');
INSERT INTO `news` VALUES ('7', '1', '坎坎坷坷', '啦啦啦啦啦', '2018-08-05', '2018-08-05', '快快快');
INSERT INTO `news` VALUES ('8', '1', '坎坎坷坷', '啦啦啦啦啦', '2018-08-05', '2018-08-05', '快快快');
INSERT INTO `news` VALUES ('9', '6', '1', '坎坎坷坷', '啦啦啦啦啦', '2018-08-05', '2018-08-05');
INSERT INTO `news` VALUES ('10', '1', '坎坎坷坷', '啦啦啦啦啦', '2018-08-05', '2018-08-05', '快快快');

-- ----------------------------
-- Table structure for news_user
-- ----------------------------
DROP TABLE IF EXISTS `news_user`;
CREATE TABLE `news_user` (
  `username` char(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_user
-- ----------------------------
INSERT INTO `news_user` VALUES ('llll', 'FGGG', '1');
INSERT INTO `news_user` VALUES ('123', 'EFG', '2');
INSERT INTO `news_user` VALUES ('1111', 'EFG', '3');
