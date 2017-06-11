/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : favs

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-06-07 09:35:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `ausername` varchar(20) NOT NULL,
  `apassword` varchar(20) NOT NULL,
  `asex` varchar(10) DEFAULT NULL,
  `aage` int(11) DEFAULT NULL,
  `aphone` varchar(20) DEFAULT NULL,
  `arole` int(11) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin', '男', '50', '13120422313', '1');

-- ----------------------------
-- Table structure for buy
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `btitle` varchar(100) NOT NULL,
  `bcontent` varchar(500) NOT NULL,
  `btime` date DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy
-- ----------------------------
INSERT INTO `buy` VALUES ('1', '1', '求购新鲜苹果', '现急需求购一批新鲜苹果，物美价廉的商家速联系我，电话：14720422311.', '2016-04-27');
INSERT INTO `buy` VALUES ('2', '2', '求购新鲜桃子', '现急需求购一批新鲜桃子，物美价廉的商家速联系我，电话：14720422312.', '2016-04-27');
INSERT INTO `buy` VALUES ('3', '3', '求购新鲜李子', '现急需求购一批新鲜李子，物美价廉的商家速联系我，电话：14720422313.', '2016-04-27');
INSERT INTO `buy` VALUES ('11', '1', '测试', '测试', '2016-06-05');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `carid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `statuid` int(11) NOT NULL,
  `cusername` varchar(20) DEFAULT NULL,
  `susername` varchar(20) DEFAULT NULL,
  `cphone` varchar(20) DEFAULT NULL,
  `carpost` varchar(20) DEFAULT NULL,
  `caddress` varchar(200) DEFAULT NULL,
  `cartotal` double(8,2) DEFAULT NULL,
  `carremark` varchar(20) DEFAULT NULL,
  `cardate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB AUTO_INCREMENT=20160013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('20160011', '1', '4', '购买者1', '供应商1', '14720422311', '111111', '天津市北辰区光荣道109号天津商业大学桃李园1栋119', '59.00', '速度发货', '2016-06-04 15:04:52');
INSERT INTO `car` VALUES ('20160012', '1', '4', '购买者1', '供应商1', '14720422311', '300134', '天津市北辰区光荣道109号天津商业大学桃李园1栋120', '94.00', '发货', '2016-06-04 15:43:46');

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cusername` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `csex` varchar(10) DEFAULT NULL,
  `cage` int(11) DEFAULT NULL,
  `cphone` varchar(20) DEFAULT NULL,
  `caddress` varchar(200) DEFAULT NULL,
  `crole` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumer
-- ----------------------------
INSERT INTO `consumer` VALUES ('1', '购买者1', '111111', '男', '30', '14720422311', '天津市北辰区光荣道109号天津商业大学桃李园1栋120', '3');
INSERT INTO `consumer` VALUES ('2', '购买者2', '111111', '男', '30', '14720422312', '天津市北辰区光荣道109号天津商业大学桃李园2栋', '3');
INSERT INTO `consumer` VALUES ('3', '购买者3', '111111', '男', '40', '14720422313', '天津市北辰区光荣道109号天津商业大学桃李园3栋', '3');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gtypeid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `gname` varchar(20) DEFAULT NULL,
  `gimage` varchar(200) DEFAULT NULL,
  `gintroduce` varchar(500) DEFAULT NULL,
  `gprice` decimal(8,2) DEFAULT NULL,
  `gunit` varchar(20) DEFAULT NULL,
  `gcount` int(11) DEFAULT NULL,
  `recommendation` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1', '1', '苹果1', '20000019-c40a-4e41-94a1-d5177026c51e.jpg', '又大又红的苹果1', '10.00', '元/斤', '110', '1');
INSERT INTO `goods` VALUES ('2', '1', '1', '橘子1', 'd116947f-bfca-4695-9381-a95b35fdf318.jpg', '南方的甜橘子1', '10.00', '元/斤', '100', '1');
INSERT INTO `goods` VALUES ('3', '1', '1', '李子1', '1da6f8c6-214c-4c0e-b00b-df77c398ddd1.jpg', '鲜嫩多汁的李子1', '10.00', '元/斤', '100', '1');
INSERT INTO `goods` VALUES ('4', '1', '1', '桃子1', 'ee7fedb5-41ea-40f5-8cc6-d86ad7e1a0d8.jpg', '大蟠桃，绝对又大又甜1', '10.00', '元/斤', '100', '1');
INSERT INTO `goods` VALUES ('5', '1', '1', '西瓜1', '9de9cb0e-07c6-4642-93f9-c36f75c22b21.jpg', '沙瓤大西瓜，不甜不要钱啦1', '10.00', '元/斤', '100', '1');
INSERT INTO `goods` VALUES ('6', '2', '1', '油菜1', '80d63f2f-de85-49a0-b496-bfd24f7967a9.jpg', '绿油油的油菜，很新鲜1', '5.00', '元/斤', '20', '1');
INSERT INTO `goods` VALUES ('7', '2', '1', '豆角1', '608295dd-576b-4bfc-8716-0c3b4699d3c0.jpg', '刚摘下来的豆角，饱满1', '5.00', '元/斤', '20', '1');
INSERT INTO `goods` VALUES ('8', '2', '1', '白菜1', '58782759-1a12-40da-a044-4eb2db89cdab.jpg', '白菜，炒着吃，很好吃1', '5.00', '元/斤', '20', '1');
INSERT INTO `goods` VALUES ('9', '2', '1', '菠菜1', '5e5ef140-6167-47e2-ba19-9a12d3baa299.jpg', '绿油油的小菠菜，富含维生素1', '5.00', '元/斤', '20', '1');
INSERT INTO `goods` VALUES ('10', '1', '1', '香蕉1', '3d7d74b6-f7b1-4515-b185-8ded83e87130.jpg', '黄金大香蕉1', '10.00', '元/斤', '100', '1');
INSERT INTO `goods` VALUES ('11', '1', '1', '苹果2', '69ea3a8e-ab38-4bc5-a783-76ce2fcec26d.jpg', '红红的大苹果', '15.00', '元/斤', '100', '1');
INSERT INTO `goods` VALUES ('13', '1', '1', '香蕉2', '783da8af-6781-4703-9164-81217b38882e.jpg', '黄金大香蕉，很香很甜', '10.00', '元/斤', '60', '1');
INSERT INTO `goods` VALUES ('14', '1', '1', '香蕉3', '4a348acc-cb72-46c3-b208-532d5e16f928.jpg', '金灿灿的大香蕉', '12.00', '元/斤', '50', '1');
INSERT INTO `goods` VALUES ('15', '1', '1', '菠萝1', '75b2aca2-d209-48e7-af47-376bb5cf03fd.jpg', '菠萝，富含丰富的维生素1', '15.00', '元/斤', '150', '1');
INSERT INTO `goods` VALUES ('16', '1', '1', '草莓1', 'f63b294c-1ad1-4ef7-8fca-d4c7399d8a70.jpg', '鲜嫩可口的大草莓1', '20.00', '元/斤', '70', '1');
INSERT INTO `goods` VALUES ('17', '2', '1', '青椒1', '42daa741-ea54-4cd8-a963-3d7bd2e5c4db.jpg', '大青椒，不辣，很好吃', '5.00', '元/斤', '50', '1');
INSERT INTO `goods` VALUES ('18', '2', '1', '蘑菇1', 'b7b6df65-808a-4233-bbe4-13d1f515155f.jpg', '厚实的蘑菇，刚从大棚采摘的', '10.00', '元/斤', '50', '1');
INSERT INTO `goods` VALUES ('19', '2', '1', '黄瓜1', '568a3817-af15-4555-980c-41a21c9ea44c.jpg', '新鲜的黄瓜', '10.00', '元/斤', '50', '1');
INSERT INTO `goods` VALUES ('20', '2', '1', '茄子1', '3792f4fb-ede9-4053-8e22-ad2c477a5e7a.jpg', '紫茄子，炒菜很好吃', '9.00', '元/斤', '50', '1');
INSERT INTO `goods` VALUES ('21', '1', '1', '苹果3', '4fb3dbbc-e1df-4e08-9ce8-3f7f54f922ff.jpg', '大苹果', '9.00', '元/斤', '49', '1');

-- ----------------------------
-- Table structure for gtype
-- ----------------------------
DROP TABLE IF EXISTS `gtype`;
CREATE TABLE `gtype` (
  `gtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `gtypename` varchar(20) NOT NULL,
  `hot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gtype
-- ----------------------------
INSERT INTO `gtype` VALUES ('1', '水果', '1');
INSERT INTO `gtype` VALUES ('2', '蔬菜', '1');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `caid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `gname` varchar(20) DEFAULT NULL,
  `gprice` double(10,2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '20160001', '21', '苹果3', '9.00', '9');
INSERT INTO `item` VALUES ('2', '20160001', '16', '草莓1', '20.00', '4');
INSERT INTO `item` VALUES ('3', '20160002', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('4', '20160003', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('5', '20160004', '21', '苹果3', '9.00', '5');
INSERT INTO `item` VALUES ('6', '20160005', '15', '菠萝1', '15.00', '1');
INSERT INTO `item` VALUES ('7', '20160006', '21', '苹果3', '9.00', '4');
INSERT INTO `item` VALUES ('8', '20160007', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('9', '20160008', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('10', '20160009', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('11', '20160010', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('12', '20160011', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('13', '20160011', '10', '香蕉1', '10.00', '5');
INSERT INTO `item` VALUES ('14', '20160012', '21', '苹果3', '9.00', '1');
INSERT INTO `item` VALUES ('15', '20160012', '11', '苹果2', '15.00', '5');
INSERT INTO `item` VALUES ('16', '20160012', '10', '香蕉1', '10.00', '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `ntitle` varchar(100) NOT NULL,
  `ncontent` varchar(500) NOT NULL,
  `ntime` date DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '1', '苹果低价促销', 'XX店因要离开本地，原价10元/千克的苹果，现在低价甩卖，清仓大甩卖', '2016-04-27');
INSERT INTO `news` VALUES ('2', '2', '桃子低价促销', 'XX店因要离开本地，原价10元/千克的桃子，现在低价甩卖，清仓大甩卖', '2016-04-27');
INSERT INTO `news` VALUES ('3', '3', '西瓜低价促销', 'XX店因要离开本地，原价10元/千克的西瓜，现在低价甩卖，清仓大甩卖', '2016-04-27');
INSERT INTO `news` VALUES ('5', '1', '测试2', '测试2', '2016-06-01');

-- ----------------------------
-- Table structure for statu
-- ----------------------------
DROP TABLE IF EXISTS `statu`;
CREATE TABLE `statu` (
  `statuid` int(11) NOT NULL AUTO_INCREMENT,
  `statu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`statuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statu
-- ----------------------------
INSERT INTO `statu` VALUES ('1', '未支付');
INSERT INTO `statu` VALUES ('2', '已支付');
INSERT INTO `statu` VALUES ('3', '配送中');
INSERT INTO `statu` VALUES ('4', '订单完成');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `susername` varchar(20) NOT NULL,
  `spassword` varchar(20) NOT NULL,
  `ssex` varchar(10) DEFAULT NULL,
  `sage` int(11) DEFAULT NULL,
  `sphone` varchar(20) DEFAULT NULL,
  `srole` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '供应商1', '000000', '男', '40', '15820422311', '2');
INSERT INTO `supplier` VALUES ('2', '供应商2', '000000', '男', '30', '15820422312', '2');
