CREATE DATABASE  IF NOT EXISTS `foodording` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `foodording`;
-- MySQL dump 10.13  Distrib 5.1.61, for redhat-linux-gnu (i386)
--
-- Host: localhost    Database: foodording
-- ------------------------------------------------------
-- Server version	5.1.61

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fd_itemprop`
--

DROP TABLE IF EXISTS `fd_itemprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_itemprop` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='食物属性,ID与fd_items.id关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_itemprop`
--

LOCK TABLES `fd_itemprop` WRITE;
/*!40000 ALTER TABLE `fd_itemprop` DISABLE KEYS */;
INSERT INTO `fd_itemprop` VALUES (17,''),(18,''),(19,''),(20,''),(21,''),(22,''),(23,''),(24,''),(25,''),(26,''),(27,''),(28,''),(29,''),(30,'营养餐首选'),(33,''),(34,'');
/*!40000 ALTER TABLE `fd_itemprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jointime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES ('666888','wly','bc9f7ad0c8b424b0a66dd17e6e605fdf','2012-05-10 00:00:00','万绿园','0757-66668888','佛山市禅城区汾江中路20号','2012-03-10 00:00:00','2012-03-12 00:00:00');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt_orderlog`
--

DROP TABLE IF EXISTS `pt_orderlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt_orderlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt_orderlog`
--

LOCK TABLES `pt_orderlog` WRITE;
/*!40000 ALTER TABLE `pt_orderlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pt_orderlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fd_categories`
--

DROP TABLE IF EXISTS `fd_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpid` int(11) DEFAULT NULL COMMENT '父分类',
  `ptid` int(11) DEFAULT NULL COMMENT '商家ID(pattern ID);如果为空，则表示模式分类',
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idx` int(11) DEFAULT '0',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='food categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_categories`
--

LOCK TABLES `fd_categories` WRITE;
/*!40000 ALTER TABLE `fd_categories` DISABLE KEYS */;
INSERT INTO `fd_categories` VALUES (1,0,0,'小炒',0,'2012-03-05 00:00:00'),(2,0,0,'面食',0,'2012-03-05 00:00:00'),(3,0,0,'营养套餐',0,'2012-03-05 00:00:00'),(4,0,0,'油炸',0,'2012-03-05 00:00:00'),(5,0,0,'海鲜',0,'2012-03-06 00:00:00'),(6,0,666888,'小炒',1,'2012-03-05 00:00:00'),(7,0,666888,'面食',2,'2012-03-05 00:00:00'),(8,0,666888,'饮料',3,'2012-03-05 00:00:00'),(9,0,666888,'养生粥',4,'2012-03-05 00:00:00'),(18,0,666888,'套餐',5,'2012-03-30 17:10:30');
/*!40000 ALTER TABLE `fd_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt_positions`
--

DROP TABLE IF EXISTS `pt_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `psid` int(11) DEFAULT NULL COMMENT '分店ID',
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt_positions`
--

LOCK TABLES `pt_positions` WRITE;
/*!40000 ALTER TABLE `pt_positions` DISABLE KEYS */;
INSERT INTO `pt_positions` VALUES (1,666888,'电器大厦','禅城区汾江中路20号'),(2,666888,'东建世纪广场','禅城区季华三路');
/*!40000 ALTER TABLE `pt_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt_orders`
--

DROP TABLE IF EXISTS `pt_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt_orders` (
  `id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `ptid` int(11) DEFAULT NULL COMMENT '商家ID',
  `ptsid` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商家分店ID, 0为未指定，需管理指定',
  `items` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品信息,\n17*1|18*2|50',
  `itemsinfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay` int(11) DEFAULT '0',
  `paymethod` int(11) DEFAULT NULL COMMENT '1:餐到付款    2:网上支付',
  `note` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `sendtime` datetime DEFAULT NULL COMMENT '送餐时间',
  `status` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt_orders`
--

LOCK TABLES `pt_orders` WRITE;
/*!40000 ALTER TABLE `pt_orders` DISABLE KEYS */;
INSERT INTO `pt_orders` VALUES ('2012040664',0,666888,'0','16*1|27*1|28*1|29*1|38','木耳炒黄瓜(优惠仅限3日) * 1\r\n油卖菜炒豆鼓() * 1\r\n糖醋排骨(本店招牌特色) * 1\r\n番茄炒蛋() * 1\r\n',38,1,'配送地址：上海市闵行区莘庄镇泰和路45号<br />联系电话：18608755858<br />其他：','2012-04-06 08:32:22','2012-04-06 08:32:22',-1,'2012-04-06 08:32:22'),('2012040686',0,666888,'0','26*1|28*2|29*1|36','麻婆豆腐() * 1\r\n糖醋排骨(本店招牌特色) * 2\r\n番茄炒蛋() * 1\r\n',36,1,'配送地址：上海市闵行区莘庄镇泰和路45号<br />联系电话：18608755858<br />其他：麻辣味','2012-04-06 08:29:41','2012-04-06 08:29:41',-1,'2012-04-06 08:29:41'),('2012040670',0,666888,'0','16*1|10','木耳炒黄瓜(优惠仅限3日) * 1\r\n',10,1,'麻辣味','2012-04-06 08:27:42','2012-04-06 08:27:42',-1,'2012-04-06 08:27:42'),('2012040573',0,666888,'0','17*5|18*2|27*1|19*2|100','酸豆角炒肉米(酸爽美味) * 5\r\n酸辣粉丝() * 2\r\n油卖菜炒豆鼓() * 1\r\n过桥米线() * 2\r\n',102,1,'配送地址：上海市闵行区莘庄镇泰和路45号<br />联系电话：18608755858<br />其他：麻辣味','2012-04-05 18:08:05','2012-04-05 18:08:05',-1,'2012-04-05 18:08:05'),('2012040639104',0,666888,'0','16*1|17*1|26*1|27*1|28*1|29*1|34*1|67.6','木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n麻婆豆腐() * 1\r\n油卖菜炒豆鼓() * 1\r\n糖醋排骨(本店招牌特色) * 1\r\n番茄炒蛋() * 1\r\n流氓图(麻辣味',68,1,'配送地址：上海市闵行区莘庄镇泰和路45号<br />联系电话：18608755858<br />其他：麻辣味','2012-04-06 14:15:22','2012-04-06 14:15:20',3,'2012-04-06 14:15:22'),('2012040659087',0,666888,'0','16*1|28*1|20','木耳炒黄瓜(优惠仅限3日) * 1\r\n糖醋排骨(本店招牌特色) * 1\r\n',20,1,'配送地址：江苏路18号<br />联系电话：18917123409<br />其他：您好','2012-04-06 14:17:50','2012-04-06 14:17:50',3,'2012-04-06 14:17:50'),('2012040623701',0,666888,'0','29*3|18','番茄炒蛋() * 3\r\n',18,1,'配送地址：太仓市南京东路西23巷10号<br />联系电话：18608755858<br />其他：麻辣味','2012-04-06 14:19:18','2012-04-06 14:19:18',3,'2012-04-06 14:19:18'),('2012040638506',0,666888,'1','27*4|26*2|17*1|28*3|29*1|114','油卖菜炒豆鼓() * 4\r\n麻婆豆腐() * 2\r\n酸豆角炒肉米(酸爽美味) * 1\r\n糖醋排骨(本店招牌特色) * 3\r\n番茄炒蛋() * 1\r\n',114,1,'配送地址：上海市闸北区共和新路1359弄<br />联系电话：13600520214<br />其他：无','2012-04-06 15:49:17','2012-04-06 15:49:18',-1,'2012-04-06 15:49:17'),('2012040652546',0,666888,'1','16*1|17*1|27*1|32','木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n油卖菜炒豆鼓() * 1\r\n',32,1,'配送地址：上海市闸北区共和新路1359弄<br />联系电话：18608755858<br />其他：麻辣味','2012-04-06 16:11:29','2012-04-06 16:11:29',3,'2012-04-06 16:11:29'),('2012040628152',0,666888,'4','16*1|17*1|26*1|27*1|42','木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n麻婆豆腐() * 1\r\n油卖菜炒豆鼓() * 1\r\n',42,1,'配送地址：上海市闸北区共和新路1359弄<br />联系电话：18608755858<br />其他：麻辣味','2012-04-06 16:12:55','2012-04-06 16:12:55',1,'2012-04-06 16:12:55'),('2012040688419',0,666888,'1','27*1|28*1|22','油卖菜炒豆鼓() * 1\r\n糖醋排骨(本店招牌特色) * 1\r\n',22,1,'配送地址：佛山市汾江中路20号<br />联系电话：15912356565<br />其他：麻辣味','2012-04-06 16:21:17','2012-04-06 16:21:17',1,'2012-04-06 16:21:17'),('2012040645374',0,666888,'2','16*2|20','木耳炒黄瓜(优惠仅限3日) * 2\r\n',20,1,'配送地址：桂城南海广场2楼<br />联系电话：13565657895<br />其他：麻辣味','2012-04-06 16:24:17','2012-04-06 16:24:17',1,'2012-04-06 16:24:17'),('2012040624841',0,666888,'0','34*1|16*1|17*1|26*1|28*1|29*1|18*1|19*1|20*1|21*2|105.6','流氓图(麻辣味) * 1\r\n木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n麻婆豆腐() * 1\r\n糖醋排骨(本店招牌特色) * 1\r\n番茄炒蛋() * 1\r\n酸辣粉丝() ',106,1,'配送地址：上海市闸北区共和新路1359弄<br />联系电话：18608755858<br />其他：麻辣味','2012-04-06 19:15:17','2012-04-06 19:15:17',0,'2012-04-06 19:15:17'),('2012040656207',0,666888,'0','16*1|17*1|26*3|27*1|28*4|102','木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n麻婆豆腐() * 3\r\n油卖菜炒豆鼓() * 1\r\n糖醋排骨(本店招牌特色) * 4\r\n',102,1,'配送地址：上海市闵行区古美路675弄12-101室<br />联系电话：18917123409<br />其他：麻辣味','2012-04-06 21:15:38','2012-04-06 21:15:02',0,'2012-04-06 21:15:38'),('2012040672202',-1,666888,'0','16*1|17*1|26*3|27*1|28*4|102','木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n麻婆豆腐() * 3\r\n油卖菜炒豆鼓() * 1\r\n糖醋排骨(本店招牌特色) * 4\r\n',102,1,'配送地址：上海市闵行区古美路675弄12-101室<br />联系电话：18917123409<br />其他：麻辣味','2012-04-06 21:17:52','2012-04-06 21:17:16',0,'2012-04-06 21:17:52'),('2012040625184',-1,666888,'0','16*1|17*1|26*3|27*1|28*4|102','木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n麻婆豆腐() * 3\r\n油卖菜炒豆鼓() * 1\r\n糖醋排骨(本店招牌特色) * 4\r\n',102,1,'配送地址：上海市闵行区古美路675弄12<br />联系电话：18917123409<br />其他：麻辣味','2012-04-06 21:23:32','2012-04-06 21:22:54',0,'2012-04-06 21:23:32'),('2012040632351',0,666888,'0','16*1|17*1|26*3|27*1|28*4|102','木耳炒黄瓜(优惠仅限3日) * 1\r\n酸豆角炒肉米(酸爽美味) * 1\r\n麻婆豆腐() * 3\r\n油卖菜炒豆鼓() * 1\r\n糖醋排骨(本店招牌特色) * 4\r\n',102,1,'配送地址：上海市闵行区古美路675弄12-101室<br />联系电话：18917123409<br />其他：麻辣味','2012-04-06 21:31:16','2012-04-06 21:31:15',0,'2012-04-06 21:31:16');
/*!40000 ALTER TABLE `pt_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realname` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '送餐地址',
  `totalpay` float DEFAULT '0',
  `regtime` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt_hosts`
--

DROP TABLE IF EXISTS `pt_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt_hosts` (
  `ptid` int(11) NOT NULL,
  `host` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='合作商域名绑定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt_hosts`
--

LOCK TABLES `pt_hosts` WRITE;
/*!40000 ALTER TABLE `pt_hosts` DISABLE KEYS */;
INSERT INTO `pt_hosts` VALUES (666888,'www.dc1.com');
/*!40000 ALTER TABLE `pt_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fd_items`
--

DROP TABLE IF EXISTS `fd_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT '分类',
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT '0',
  `percent` float DEFAULT NULL COMMENT '折扣',
  `applysubs` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应分店,用'',''隔开',
  `note` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注，如新菜色，特价优惠等',
  `state` int(11) DEFAULT '1',
  `updatetime` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='食物项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd_items`
--

LOCK TABLES `fd_items` WRITE;
/*!40000 ALTER TABLE `fd_items` DISABLE KEYS */;
INSERT INTO `fd_items` VALUES (17,6,'酸豆角炒肉米','',10,1,'1,3,4,2,','酸爽美味',1,'2012-03-28 16:21:44'),(18,7,'酸辣粉丝','',10,1,'1,3,4,2,','',1,'2012-03-28 16:37:56'),(19,7,'过桥米线','',10,1,'1,3,4,2,','',1,'2012-03-28 16:38:05'),(20,7,'鸡蛋肉丝面','',10,1,'1,3,4,2,','',1,'2012-03-28 16:45:43'),(21,7,'兰州拉面','',10,1,'1,3,4,2,','',1,'2012-03-28 16:45:59'),(22,7,'酸辣粉','',10,1,'1,3,4,2,','正宗川味',1,'2012-03-28 16:46:53'),(23,9,'皮蛋瘦肉粥','',5,1,'1,3,4,2,','美味营养',1,'2012-03-28 16:52:16'),(24,8,'可口可乐','',2.5,1,'1,3,4,2,','250ml装',1,'2012-03-31 10:27:31'),(16,6,'木耳炒黄瓜','',10,1,'1,3,4,2,','优惠仅限3日',1,'2012-03-28 15:29:27'),(25,8,'美之源果粒橙','',8.5,1,'1,3,4,2,','1L分享装',1,'2012-03-28 16:54:45'),(26,6,'麻婆豆腐','',10,1,'1,3,4,2,','',1,'2012-03-28 16:55:16'),(27,6,'油卖菜炒豆鼓','',12,1,'1,3,4,2,','',1,'2012-03-28 16:55:51'),(28,6,'糖醋排骨','',10,1,'1,3,4,2,','本店招牌特色',1,'2012-03-28 16:56:20'),(29,6,'番茄炒蛋','20120329125855.gif',6,1,'1,4,2\r\n-----------------------------105418233','',1,'2012-03-29 13:35:29'),(33,7,'炸酱面','20120329130515.gif',8,0.9,'1,3,4,2,','西安特色面食',1,'2012-03-29 13:35:10'),(34,6,'流氓图','20120329151441.gif',12,0.8,'1,','麻辣味',1,'2012-03-30 17:06:42');
/*!40000 ALTER TABLE `fd_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt_subs`
--

DROP TABLE IF EXISTS `pt_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt_subs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ptid` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idx` int(11) DEFAULT '0',
  `state` int(11) DEFAULT NULL COMMENT '0:表示禁用   1:表示正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt_subs`
--

LOCK TABLES `pt_subs` WRITE;
/*!40000 ALTER TABLE `pt_subs` DISABLE KEYS */;
INSERT INTO `pt_subs` VALUES (1,666888,'万绿园禅城店','佛山市禅城区季华五路12号','0757-66668888',1,0),(2,666888,'南海桂城店','佛山市南海区桂城镇南海广场2楼','0757-66662522',2,1),(3,666888,'东平店','佛山市禅城区澜石镇东平街道12号','0757-66668888',3,1),(4,666888,'南庄吉利广场店','佛山市禅城区南庄镇吉利社区吉利购物广场对面','0757-22226666',4,1);
/*!40000 ALTER TABLE `pt_subs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-18 21:32:58
