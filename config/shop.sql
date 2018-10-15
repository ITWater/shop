/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2018-02-04 18:10:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `auid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`auid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin', '0');

-- ----------------------------
-- Table structure for `billitem`
-- ----------------------------
DROP TABLE IF EXISTS `billitem`;
CREATE TABLE `billitem` (
  `billid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `ptotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`billid`),
  UNIQUE KEY `pid` (`pid`),
  KEY `FK3510439A73B4E627` (`pid`),
  CONSTRAINT `FK3510439A73B4E627` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of billitem
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '数码产品');
INSERT INTO `category` VALUES ('2', '服装');
INSERT INTO `category` VALUES ('3', '鞋靴箱包');
INSERT INTO `category` VALUES ('4', '食品零食');
INSERT INTO `category` VALUES ('5', '珠宝配饰');
INSERT INTO `category` VALUES ('6', '护肤彩妆');
INSERT INTO `category` VALUES ('7', '图书书籍');
INSERT INTO `category` VALUES ('8', '家居饰品');

-- ----------------------------
-- Table structure for `categorysecond`
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF2418BCBAF` (`cid`),
  CONSTRAINT `FK936FCAF2418BCBAF` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '电脑', '1');
INSERT INTO `categorysecond` VALUES ('2', '手机', '1');
INSERT INTO `categorysecond` VALUES ('3', '家电', '1');
INSERT INTO `categorysecond` VALUES ('4', '数码配件', '1');
INSERT INTO `categorysecond` VALUES ('5', '外套', '2');
INSERT INTO `categorysecond` VALUES ('6', '毛呢大衣', '2');
INSERT INTO `categorysecond` VALUES ('7', '风衣', '2');
INSERT INTO `categorysecond` VALUES ('8', '裤子', '2');
INSERT INTO `categorysecond` VALUES ('9', '男鞋', '3');
INSERT INTO `categorysecond` VALUES ('10', '女鞋', '3');
INSERT INTO `categorysecond` VALUES ('11', '男包', '3');
INSERT INTO `categorysecond` VALUES ('13', '女包', '3');
INSERT INTO `categorysecond` VALUES ('14', '休闲食品', '4');
INSERT INTO `categorysecond` VALUES ('15', '生鲜食品', '4');
INSERT INTO `categorysecond` VALUES ('16', '粮油调味', '4');
INSERT INTO `categorysecond` VALUES ('17', '地方特产', '4');
INSERT INTO `categorysecond` VALUES ('18', '时尚饰品', '5');
INSERT INTO `categorysecond` VALUES ('19', '眼镜配饰', '5');
INSERT INTO `categorysecond` VALUES ('20', '首饰', '5');
INSERT INTO `categorysecond` VALUES ('21', '手链', '5');
INSERT INTO `categorysecond` VALUES ('22', '手套', '6');
INSERT INTO `categorysecond` VALUES ('23', '暖手宝', '6');
INSERT INTO `categorysecond` VALUES ('24', '化妆品', '6');
INSERT INTO `categorysecond` VALUES ('25', '护肤品', '6');
INSERT INTO `categorysecond` VALUES ('26', '教育系列', '7');
INSERT INTO `categorysecond` VALUES ('27', '考试系列', '7');
INSERT INTO `categorysecond` VALUES ('28', '计算机系列', '7');
INSERT INTO `categorysecond` VALUES ('29', '小说系列', '7');
INSERT INTO `categorysecond` VALUES ('30', '四件套', '8');
INSERT INTO `categorysecond` VALUES ('31', '八件套', '8');
INSERT INTO `categorysecond` VALUES ('32', '窗帘', '8');
INSERT INTO `categorysecond` VALUES ('33', '沙发', '8');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `messagedate` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageid`),
  KEY `FK38EB0007FC32F8E` (`uid`),
  CONSTRAINT `FK38EB0007FC32F8E` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '大家好，这个商品很潮流', '2018-03-28', '3');
INSERT INTO `message` VALUES ('4', '<p>好物一起分享哦</p>\r\n', '2018-03-28 04:55:42', '3');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `oiid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oiid`),
  KEY `FKE8B2AB61E818A405` (`oid`),
  KEY `FKE8B2AB6173B4E627` (`pid`),
  CONSTRAINT `FKE8B2AB6173B4E627` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  CONSTRAINT `FKE8B2AB61E818A405` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('1', '1', '699', '36', '2');
INSERT INTO `orderitem` VALUES ('2', '1', '588', '37', '2');
INSERT INTO `orderitem` VALUES ('3', '1', '699', '42', '2');
INSERT INTO `orderitem` VALUES ('4', '1', '699', '40', '2');
INSERT INTO `orderitem` VALUES ('5', '1', '4899', '54', '3');
INSERT INTO `orderitem` VALUES ('6', '1', '7999', '55', '3');
INSERT INTO `orderitem` VALUES ('7', '1', '45', '45', '3');
INSERT INTO `orderitem` VALUES ('8', '1', '9', '46', '3');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `receiveInfo` varchar(255) DEFAULT NULL,
  `phoNum` varchar(255) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `accepter` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5FC32F8E` (`uid`),
  CONSTRAINT `FKC3DF62E5FC32F8E` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2685', '0', null, null, '2018-03-18 21:10:00', '3', null);
INSERT INTO `orders` VALUES ('2', '2685', '1', '上海市静安区', '13913812312', '2018-03-18 21:12:16', '3', '嗷大猫');
INSERT INTO `orders` VALUES ('3', '12952', '0', null, null, '2018-03-04 17:37:01', '1', null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(5000) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` timestamp NULL DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEF5F778050` (`csid`),
  CONSTRAINT `FKED8DCCEF5F778050` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('34', '毛妮上衣', '899', '699', 'products/5d992132-af7e-4b3c-9b85-2390ccb10170cs10001.jpg', '毛妮上衣', '1', '2018-01-27 21:27:48', '5', null);
INSERT INTO `product` VALUES ('35', '格子呢大衣', '1299', '999', 'products/a2af9384-ea87-406c-bc60-d6f496e282ddcs10002.jpg', '格子呢大衣，精品', '1', '2018-01-27 21:29:41', '6', null);
INSERT INTO `product` VALUES ('36', '妮子连衣裙', '799', '699', 'products/226d27a1-6170-4e5e-9dd0-293829ef7d91cs10004.jpg', '妮子连衣裙', '0', '2018-01-27 21:30:46', '5', null);
INSERT INTO `product` VALUES ('37', '粉色连衣裙', '688', '588', 'products/09a2aa49-e7e8-4c91-99d8-15b02f5eb03ccs10006.jpg', '粉色连衣裙', '0', '2018-01-27 21:31:21', '5', null);
INSERT INTO `product` VALUES ('38', '皮衣', '1288', '1099', 'products/fc34a578-6198-4ba4-bb4c-644fa2cab8f1cs20007.jpg', '女皮上衣', '0', '2018-01-27 21:32:01', '5', null);
INSERT INTO `product` VALUES ('39', '精品裤', '399', '298', 'products/d6c6cfce-663d-46ad-92ef-5cd232a2fa79cs40010.png', '精品裤', '1', '2018-01-27 21:33:10', '8', null);
INSERT INTO `product` VALUES ('40', '绿大衣', '800', '699', 'products/03e6eda2-5064-4930-ac15-d312524e42ffcs30003.png', '绿大衣', '1', '2018-01-27 21:55:03', '7', null);
INSERT INTO `product` VALUES ('41', '罗蒙衬衫', '398', '298', 'products/a36472e0-ae79-4a3b-8eae-39aefdb97095cs50006.png', '罗蒙衬衫，精品免烫。', '1', '2018-01-27 22:11:17', '4', null);
INSERT INTO `product` VALUES ('42', '女西装', '899', '699', 'products/dbf99071-b2f5-479a-b567-2797d5522dcccs30002.png', '女西装，橙色', '0', '2018-01-27 22:15:37', '6', null);
INSERT INTO `product` VALUES ('43', '女皮鞋', '499', '399', 'products/d6577bb8-8561-4ac2-938c-fd153f2f4ffanvxie.jpg', '精选头层牛皮，精心打造', '0', '2018-01-27 22:21:58', '10', null);
INSERT INTO `product` VALUES ('44', '休闲凉鞋', '11', '10', 'products/543d14c6-daa9-47c8-a664-64d710636a17liangxie.jpg', '休闲凉鞋', '1', '2018-02-04 16:29:23', '10', null);
INSERT INTO `product` VALUES ('45', '费列罗巧克力', '55', '45', 'products/61e7a560-b44e-49dc-a36a-8a44e43b0f84021.jpg', '费列罗巧克力', '1', '2018-02-04 16:29:59', '14', null);
INSERT INTO `product` VALUES ('46', '喜之郎果冻', '11', '9', 'products/7354dcbc-550e-4dfb-9452-a8e216f3577a020.jpg', '喜之郎果冻', '1', '2018-02-04 16:31:26', '14', null);
INSERT INTO `product` VALUES ('47', '九阳豆浆机', '299', '289', 'products/74dfc4c4-1a76-4a80-9aa6-4ab34db66d011375609045552.jpg', '九阳豆浆机', '1', '2018-02-04 16:32:19', '3', null);
INSERT INTO `product` VALUES ('48', '珀莱雅爽肤水', '22', '19', 'products/5574dece-8cb7-42bf-a67f-2705bf3d3750zxc.jpg', '珀莱雅爽肤水', '0', '2018-02-04 16:34:10', '25', null);
INSERT INTO `product` VALUES ('49', '华为手机', '1299', '1199', 'products/6d9eb609-f29e-486f-85a1-c8a65403ba5ehuawei.jpg', '华为手机', '0', '2018-02-04 16:36:13', '2', null);
INSERT INTO `product` VALUES ('50', '小象密码箱', '199', '189', 'products/e5cba2c2-60d5-4212-aaa9-f58fea171efasmall_0122.jpg', '小象密码箱', '0', '2018-02-04 16:37:02', '1', null);
INSERT INTO `product` VALUES ('51', '护肤品组套', '119', '99', 'products/7cd5b45f-efe0-4277-9ba9-5b4c7b5fb8a7sd0.jpg', '护肤品组套', '0', '2018-02-04 16:39:19', '25', null);
INSERT INTO `product` VALUES ('52', '彩妆组套', '199', '179', 'products/36ce16bd-2d66-4fbc-8c8e-117dc4acd01attt.jpg', '彩妆组套', '0', '2018-02-04 16:41:46', '24', null);
INSERT INTO `product` VALUES ('53', '舌尖上的中国', '29', '19', 'products/f5fca230-0214-486e-a033-cda9c2789245big_03.jpg', '舌尖上的中国', '0', '2018-02-04 16:46:58', '29', null);
INSERT INTO `product` VALUES ('54', '夏普彩电', '4999', '4899', 'products/5cb1e8cd-9a5f-4f11-9e2f-6886a66a3f67small_03.jpg', '夏普彩电', '0', '2018-02-04 16:48:09', '3', null);
INSERT INTO `product` VALUES ('55', 'iPhone X', '8000', '7999', 'products/22c84e5b-62dd-427f-8dbd-77d46bb83df7iphone8.jpg', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '0', '2018-02-04 17:25:17', '2', null);

-- ----------------------------
-- Table structure for `shopcartitem`
-- ----------------------------
DROP TABLE IF EXISTS `shopcartitem`;
CREATE TABLE `shopcartitem` (
  `cartitemid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pcount` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ptotal` double DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartitemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcartitem
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '1',
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'hikitty', '123456', '张三', 'hikitty@qq.com', '13555512345', '上海市', '1', null);
INSERT INTO `user` VALUES ('2', 'jack', '123456', '马云', 'jack@qq.com', '13812312312', '中国', '1', null);
INSERT INTO `user` VALUES ('3', 'hellokitty', '123456', '张三', 'aodamao@qq.com', '13555512345', '上海市', '0', 'ca0f6f5a-36da-402d-8c0f-22587423de20');
