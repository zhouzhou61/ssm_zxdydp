-- MySQL dump 10.13  Distrib 5.7.24, for macos10.14 (x86_64)
--
-- Host: localhost    Database: ssm_zxdydp
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('A20190322210709793','zyj','123456','邹旖君','18770622227','2019-03-22'),('A20190322210754998','admin','admin','管理员','123456','2019-03-22');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES ('A20190119125646594','测试测试','upfiles/20190119125643.jpg','<p>七个女人的故事七个女人的故事</p>\r\n','2019-01-19','1'),('A20190119125705582','七个女人的故事','upfiles/20190119125702.jpg','<p>七个女人的故事七个女人的故事七个女人的故事七个女人的故事</p>\r\n','2019-01-19','2');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cartid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `filmid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cate`
--

DROP TABLE IF EXISTS `cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate` (
  `cateid` varchar(255) NOT NULL,
  `catename` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES ('C20190119125801744','动作片','动作','2019-01-19'),('C20190119142300664','动画片','动画','2019-01-19'),('C20190119142722187','科幻片','科幻','2019-01-19');
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cinema` (
  `cinemaid` varchar(255) NOT NULL,
  `cinemaname` varchar(255) DEFAULT NULL,
  `cityid` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cinemaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES ('C20190119125823269','万达影城（南昌青山湖万达广场店）','C20190119125813209','青山湖区京东大道999号青山湖万达广场3层','0791-83802295','普通厅1.3米以下儿童可免费无座观影'),('C20190119125837885','北京博纳晶品国际影城','C20190320222453176','海淀区复兴路51号凯德晶品购物中心四层','010-88178880','儿童无票需要3D眼镜押金'),('C20190119125845136','北京沃美影城回龙观店','C20190320222453176','昌平区回龙观育知东路30号院华联购物中心4层','010-56455166,8012','使用3D眼镜无需缴纳押金及其他费用'),('C20190119125854288','北京房山环球国际影城','C20190320222453176','房山区兴房大街38号华冠欢乐楼四楼','010-61375512','该影院支持线上购买小食'),('C20190322192353984','江西华影国际影城','C20190119125813209','西湖区中山路天虹商场九楼','0791-86767275','VIP厅为特殊影厅，1.3米以下儿童也需购票'),('C20190322192615833','南昌博纳国际影城','C20190119125813209','红谷滩新区铜锣湾广场5楼','0791-88538229','儿童观看中国巨幕影厅需要等同成年人购票'),('C20190322192816110','深影五洲国际影城','C20190119125810218','龙岗区龙城街道华润万家3楼','0755-23255051','支持开场前15分钟改签'),('C20190322202402795','华谊兄弟影院（方大城店）','C20190119125810218','南山区龙珠四路方大广场二号楼三楼','0755-21621208','提供一次性3D眼镜'),('C20190322202835645','橙天嘉禾影城（卓悦汇店）','C20190119125810218','福田区梅林街道卓悦汇购物中心L4-27号','0755-83217930','免费3D眼镜');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `cityid` varchar(255) NOT NULL,
  `cityname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('C20190119125810218','深圳'),('C20190119125813209','南昌'),('C20190320222453176','北京');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `detailsid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `filmid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `cityid` varchar(255) DEFAULT NULL,
  `cinemaid` varchar(255) DEFAULT NULL,
  `viewdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`detailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES ('201901192308024084.6072291612054','PD20190119230802','F20190119142950187','1','88','C20190119125813209','C20190119125823269','2019-01-22'),('201901192308026799.040738608825','PD20190119230802','F20190119134347777','1','88','C20190119125813209','C20190119125823269','2019-01-22'),('2019011923095910590.061174614719','PD20190119230959','F20190119143007529','3','88','C20190119125813209','C20190119125823269','2019-01-19'),('201901201718101916.468307619339','PD20190120171810','F20190120171722784','3','78','C20190119125810218','C20190119125845136',''),('201901201718318226.940253091894','PD20190120171831','F20190119143007529','4','88','C20190119125813209','C20190119125823269','2019-01-20'),('2019032022222211738.620384431777','PD20190320222222','F20190119142341738','1','66','C20190119125813209','C20190119125823269','2019-03-20'),('201903202222225257.760338556417','PD20190320222222','F20190119142322106','1','65','C20190119125813209','C20190119125823269','2019-03-20'),('2019032218101811115.415714340406','PD20190322181018','F20190119134409970','1','89','C20190119125813209','C20190119125823269','2019-03-28'),('201903222031123651.5422552591476','PD20190322203112','F20190119134630771','2','89','C20190119125813209','C20190119125823269','2019-03-14'),('2019032220315410101.541774069434','PD20190322203154','F20190119142322106','1','65','C20190119125810218','C20190322192816110','2019-03-29'),('201903222031546429.589382972398','PD20190322203154','F20190119142341738','1','66','C20190119125810218','C20190322192816110','2019-03-29'),('201903222034254175.392911410443','PD20190322203425','F20190119142705136','1','64','C20190320222453176','C20190119125854288','2019-04-04'),('201903222034257215.791315042904','PD20190322203425','F20190119142635305','1','68','C20190320222453176','C20190119125854288','2019-04-04');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `filmid` varchar(255) NOT NULL,
  `filmname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `thestart` varchar(255) DEFAULT NULL,
  `theend` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `sellnum` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`filmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES ('F20190119134347777','复仇岛','upfiles/20190119134324.jpg','C20190119125801744','88','是','2019-01-19','2019-01-26','20','1','<p>复仇岛复仇岛复仇岛复仇岛</p>\r\n'),('F20190119134409970','海王','upfiles/20190119134355.jpg','C20190119125801744','89','是','2019-01-12','2019-01-26','3','1','<p>海王海王海王海王海王海王</p>\r\n'),('F20190119134524745','红海行动','upfiles/20190119134512.jpg','C20190119125801744','65','是','2019-01-05','2019-01-26','0','0','<p>红海行动红海行动红海行动红海行动</p>\r\n'),('F20190119134540659','扬战血路','upfiles/20190119134529.jpg','C20190119125801744','88','是','2019-01-19','2019-01-26','0','0','<p>扬战血路</p>\r\n'),('F20190119134630771','叶问4','upfiles/20190119134620.jpg','C20190119125801744','89','是','2019-01-19','2019-01-26','1','2','<p>叶问4</p>\r\n'),('F20190119141900951','叶问外传 张天志','upfiles/20190119141848.jpg','C20190119125801744','89','是','2019-01-20','2019-01-26','0','0','<p>叶问外传 张天志</p>\r\n'),('F20190119142322106','风语咒','upfiles/20190119142310.jpg','C20190119142300664','65','是','2019-01-19','2019-01-26','4','2','<p>风语咒风语咒风语咒风语咒风语咒</p>\r\n'),('F20190119142341738','公牛历险记','upfiles/20190119142329.jpg','C20190119142300664','66','是','2019-01-19','2019-01-26','2','2','<p>公牛历险记</p>\r\n'),('F20190119142402162','龙猫','upfiles/20190119142350.jpg','C20190119142300664','80','是','2019-01-19','2019-01-26','1','0','<p>龙猫</p>\r\n'),('F20190119142522863','绿毛怪格林奇','upfiles/20190119142509.jpg','C20190119142300664','65','是','2019-01-19','2019-01-26','0','0','<p>绿毛怪格林奇绿毛怪格林奇</p>\r\n'),('F20190119142554782','毛毛虫波罗','upfiles/20190119142543.jpg','C20190119142300664','54','是','2019-01-19','2019-01-26','1','0','<p>毛毛虫波罗</p>\r\n'),('F20190119142635305','我想吃掉你的胰脏','upfiles/20190119142622.jpg','C20190119142300664','68','是','2019-01-19','2019-01-26','1','1','<p>我想吃掉你的胰脏我想吃掉你的胰脏我想吃掉你的胰脏</p>\r\n'),('F20190119142705136','无敌破坏王2 大闹互联网','upfiles/20190119142652.jpg','C20190119142300664','64','是','2019-01-19','2019-01-26','1','1','<p>无敌破坏王2 大闹互联网</p>\r\n'),('F20190119142932172','毒液 致命守护者','upfiles/20190119142922.jpg','C20190119142722187','85','是','2019-01-19','2019-01-26','0','0','<p>毒液 致命守护者</p>\r\n'),('F20190119142950187','复仇者联盟3 无限战争','upfiles/20190119142937.jpg','C20190119142722187','88','是','2019-01-19','2019-01-26','1','1','<p>复仇者联盟3 无限战争</p>\r\n'),('F20190119143007529','金刚狼3 殊死一战','upfiles/20190119142955.jpg','C20190119142722187','88','是','2019-01-19','2019-01-26','2','7','<p>金刚狼3 殊死一战</p>\r\n'),('F20190120171722784','太空旅客','upfiles/20190120171708.jpg','C20190119142722187','78','是','2019-01-20','2019-01-26','4','3','<p>太空旅客</p>\r\n'),('F20190322220037441','惊奇队长','upfiles/20190322215944.JPG','C20190119142722187','49','是','2019-03-08','2019-05-05','1','0','<p>惊奇队长</p>\r\n');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ordersid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('O20190119230802234','PD20190119230802','U20190119170545761','176.0','已付款','2019-01-19'),('O20190119230959944','PD20190119230959','U20190119170545761','264.0','未付款','2019-01-19'),('O20190120171810937','PD20190120171810','U20190120171737997','234.0','已付款','2019-01-20'),('O20190322181018117','PD20190322181018','U20190119170545761','89.0','未付款','2019-03-22'),('O20190322203112207','PD20190322203112','U20190322185600284','178.0','已付款','2019-03-22'),('O20190322203154320','PD20190322203154','U20190322185600284','131.0','已付款','2019-03-22'),('O20190322203425883','PD20190322203425','U20190322185600284','132.0','未付款','2019-03-22');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `topicid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `filmid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES ('T20190119171642389','U20190119170545761','F20190119134347777','5','阿阿斯顿发斯蒂芬','2019-01-19'),('T20190120171745583','U20190120171737997','F20190120171722784','5','2222222222','2019-01-20'),('T20190120171751576','U20190120171737997','F20190120171722784','4','333333333333333','2019-01-20');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('U20190322185600284','zs','zhangsan','张三','男','1997-01-31','111','2019-03-22'),('U20190322185753682','ls','lisi','李四','女','1998-06-01','222','2019-03-22'),('U20190322185827513','ww','wangwu','王五','男','1994-12-06','333','2019-03-22'),('U20190322185930190','ll','liuliu','刘六','男','1973-04-05','444','2019-03-22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-28 19:10:42
