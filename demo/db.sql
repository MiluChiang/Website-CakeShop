/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2015-06-26 03:23:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `b_id` int(10) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `b_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `b_content` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `b_time` date DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of board
-- ----------------------------

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `buyer_phone` int(10) DEFAULT NULL,
  `pay_way` varchar(10) DEFAULT NULL,
  `receivr_name` varchar(10) DEFAULT NULL,
  `receivr_addr` varchar(16) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `buy_product` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of buyer
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_account` varchar(255) DEFAULT NULL,
  `m_password` varchar(255) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `m_phone` text,
  `m_sex` text,
  `m_address` text,
  `m_mail` text,
  `m_birthday` date DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('8', 'admin', '123456789', null, null, null, null, null, null);
INSERT INTO `member` VALUES ('16', '5', '5', '5', '5', '0', '????????????5', '5', '1980-01-01');
INSERT INTO `member` VALUES ('17', '5', '5', '5', '5', '0', '????????????5', '5', '1980-01-01');
INSERT INTO `member` VALUES ('18', '1', '1', '1', '1', '0', '????????????1', '1', '1980-01-01');
INSERT INTO `member` VALUES ('19', '1', '1', '1', '1', '0', '????????????1', '1', '1980-01-01');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(255) NOT NULL DEFAULT '',
  `productname` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `carolly` text,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '????????????', '420', '11', '480???');
INSERT INTO `product` VALUES ('2', '????????????????????????', '350', '20', '400???');
INSERT INTO `product` VALUES ('3', '??????????????????', '300', '20', '420???');
INSERT INTO `product` VALUES ('4', '?????????????????????', '320', '15', '450???');
INSERT INTO `product` VALUES ('5', '????????????', '360', '11', '380???');
INSERT INTO `product` VALUES ('6', '????????????', '400', '16', '460???');
INSERT INTO `product` VALUES ('7', '?????????', '200', '30', '280???');
INSERT INTO `product` VALUES ('8', '?????????', '50', '50', '180???');
INSERT INTO `product` VALUES ('9', '???????????????', '299', '18', '449???');
