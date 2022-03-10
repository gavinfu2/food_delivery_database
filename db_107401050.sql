-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.62.128    Database: db_107401050
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `food_delivery_coupon`
--

DROP TABLE IF EXISTS `food_delivery_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_coupon` (
  `coupon_id` int unsigned NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(64) NOT NULL,
  `promotion_code` varchar(64) NOT NULL,
  `s_date` datetime NOT NULL,
  `d_date` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `promotion_code_UNIQUE` (`promotion_code`),
  UNIQUE KEY `coupon_id_UNIQUE` (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_coupon`
--

LOCK TABLES `food_delivery_coupon` WRITE;
/*!40000 ALTER TABLE `food_delivery_coupon` DISABLE KEYS */;
INSERT INTO `food_delivery_coupon` VALUES (1,'世界睡眠日好康','3JFUMV','2021-03-21 00:00:00','2021-03-21 00:00:00'),(2,'元旦驚喜','V5GMR4','2021-01-01 00:00:00','2021-01-03 00:00:00'),(3,'父親節我罩你','TL9EUP','2021-08-08 00:00:00','2021-08-09 00:00:00'),(4,'破盤大放送','YSL2KF','2021-05-01 00:00:00','2021-07-01 00:00:00'),(5,'你開心我開心','DSHUNZ','2021-05-05 00:00:00','2021-06-30 00:00:00'),(6,'優惠隨便給','MK2X7V','2021-04-01 00:00:00','2021-06-15 00:00:00'),(7,'春假驚喜','DG99ZB','2021-04-02 00:00:00','2021-04-05 00:00:00'),(8,'暑假優惠','HUGQM3','2021-07-01 00:00:00','2021-08-31 00:00:00'),(9,'九月限定驚喜','74G8YW','2021-09-01 00:00:00','2021-09-30 00:00:00'),(10,'十月到好運到','2NE7KR','2021-10-01 00:00:00','2021-10-31 00:00:00'),(11,'光棍快樂','82WQER','2021-11-11 00:00:00','2021-11-11 00:00:00'),(12,'聖誕老人送禮物','3YGQ4T','2021-12-24 00:00:00','2021-12-26 00:00:00'),(13,'兒童節專屬好禮','WMSPL4','2021-04-04 00:00:00','2021-04-05 00:00:00'),(14,'情人節我幫你','LKQPQN','2021-02-13 00:00:00','2021-02-15 00:00:00'),(15,'母親節好禮','2HEKP4','2021-05-08 00:00:00','2021-05-09 00:00:00');
/*!40000 ALTER TABLE `food_delivery_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_delivery_deliveryman`
--

DROP TABLE IF EXISTS `food_delivery_deliveryman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_deliveryman` (
  `deliveryman_id` int unsigned NOT NULL AUTO_INCREMENT,
  `deliveryman_name` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  PRIMARY KEY (`deliveryman_id`),
  UNIQUE KEY `deliveryman_id_UNIQUE` (`deliveryman_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_deliveryman`
--

LOCK TABLES `food_delivery_deliveryman` WRITE;
/*!40000 ALTER TABLE `food_delivery_deliveryman` DISABLE KEYS */;
INSERT INTO `food_delivery_deliveryman` VALUES (1,'Peter','0940455888','320桃園市中壢區中正路100號'),(2,'Spencer','0904965039','320桃園市中壢區中大路342號'),(3,'Adrian','0944740134','320桃園市中壢區五興路12號'),(4,'Jarrod','0993007533','320桃園市中壢區民族路101號'),(5,'Richard','0992461642','320桃園市中壢區中大路520號'),(6,'Walter','0903323629','320桃園市中壢區中大路10號'),(7,'Timothy','0948528169','320桃園市中壢區五興路30號'),(8,'Marty','0967992517','320桃園市中壢區中山路444號'),(9,'Corey','0951000780','320桃園市中壢區中正路42號'),(10,'Ethan','0990914024','320桃園市中壢區中大路820號'),(11,'Austin','0998879355','320桃園市中壢區民族路72號'),(12,'Paige','0979188124','320桃園市中壢區五興路87號'),(13,'Luna','0999501521','320桃園市中壢區中山路301號'),(14,'Bonnie','0976947991','320桃園市中壢區中正路372號'),(15,'Alexis','0977215310','320桃園市中壢區中大路345號');
/*!40000 ALTER TABLE `food_delivery_deliveryman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_delivery_meals`
--

DROP TABLE IF EXISTS `food_delivery_meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_meals` (
  `meals_id` int unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` int unsigned NOT NULL,
  `meals_name` varchar(64) NOT NULL,
  `price` int unsigned NOT NULL,
  PRIMARY KEY (`meals_id`),
  UNIQUE KEY `meals_id_UNIQUE` (`meals_id`),
  KEY `fk_meals_res_idx` (`restaurant_id`),
  CONSTRAINT `fk_meals_res` FOREIGN KEY (`restaurant_id`) REFERENCES `food_delivery_restaurant` (`restaurant_id`),
  CONSTRAINT `reid_fk` FOREIGN KEY (`restaurant_id`) REFERENCES `food_delivery_restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_meals`
--

LOCK TABLES `food_delivery_meals` WRITE;
/*!40000 ALTER TABLE `food_delivery_meals` DISABLE KEYS */;
INSERT INTO `food_delivery_meals` VALUES (1,9,'拿鐵',80),(2,1,'薯條',55),(3,12,'蛋塔',60),(4,11,'麻油雞',40),(5,1,'雙層牛肉吉士堡',60),(6,4,'泡菜鍋',110),(7,1,'麥脆雞',50),(8,5,'珍珠奶茶',50),(9,6,'麗春紅茶',30),(10,10,'黑森林蛋糕',220),(11,14,'鮪魚壽司',40),(12,7,'滷肉飯',60),(13,8,'雞肉飯',45),(14,13,'鮭魚壽司',40),(15,13,'綜合生魚片',200),(16,2,'燒肉珍珠堡',70),(17,3,'蔬菜鍋',120),(18,2,'紅茶',30),(19,3,'原味鍋',100),(20,4,'牛肉鍋',120),(21,5,'大甲芋頭鮮奶',75),(22,6,'熟成紅茶',35),(23,7,'貢丸湯',40),(24,8,'切仔麵',40),(25,9,'黑咖啡',70),(26,10,'焦糖瑪奇朵',75),(27,11,'滷肉麵線',30),(29,12,'蜂蜜醬脆雞XL餐',185),(30,14,'豆皮壽司',30),(31,15,'火腿蛋餅',35),(32,15,'起司蛋餅',30);
/*!40000 ALTER TABLE `food_delivery_meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_delivery_order`
--

DROP TABLE IF EXISTS `food_delivery_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `deliveryman_id` int unsigned NOT NULL,
  `coupon_id` int unsigned DEFAULT NULL,
  `order_status` int unsigned NOT NULL,
  `restaurant_rating` int unsigned DEFAULT NULL,
  `delivery_rating` int unsigned DEFAULT NULL,
  `delivery_fee` int unsigned NOT NULL,
  `total_price` int unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id_toUsertbl_idx` (`user_id`),
  KEY `deid_fk_idx` (`deliveryman_id`),
  KEY `coid_fk_idx` (`coupon_id`),
  CONSTRAINT `coid_fk` FOREIGN KEY (`coupon_id`) REFERENCES `food_delivery_coupon` (`coupon_id`),
  CONSTRAINT `deid_fk` FOREIGN KEY (`deliveryman_id`) REFERENCES `food_delivery_deliveryman` (`deliveryman_id`),
  CONSTRAINT `user_id_toUsertbl` FOREIGN KEY (`user_id`) REFERENCES `food_delivery_user_table` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_order`
--

LOCK TABLES `food_delivery_order` WRITE;
/*!40000 ALTER TABLE `food_delivery_order` DISABLE KEYS */;
INSERT INTO `food_delivery_order` VALUES (1,2,1,NULL,3,NULL,NULL,20,130),(2,2,2,8,4,4,5,30,515),(3,3,11,7,3,NULL,NULL,30,220),(4,3,6,8,4,4,3,30,85),(5,5,14,11,4,NULL,NULL,15,90),(7,4,4,NULL,4,5,4,30,130),(8,6,3,NULL,4,2,2,30,350),(9,6,5,1,4,3,2,15,135),(10,2,6,NULL,4,1,3,20,190);
/*!40000 ALTER TABLE `food_delivery_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_delivery_ordered_details`
--

DROP TABLE IF EXISTS `food_delivery_ordered_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_ordered_details` (
  `order_id` int DEFAULT NULL,
  `meals_id` int DEFAULT NULL,
  `unit_price` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  KEY `order_id_idx` (`order_id`),
  CONSTRAINT `oder_id_fk` FOREIGN KEY (`order_id`) REFERENCES `food_delivery_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_ordered_details`
--

LOCK TABLES `food_delivery_ordered_details` WRITE;
/*!40000 ALTER TABLE `food_delivery_ordered_details` DISABLE KEYS */;
INSERT INTO `food_delivery_ordered_details` VALUES (1,5,60,1),(1,7,50,1),(2,10,220,2),(2,26,75,1),(3,17,120,1),(3,19,100,1),(4,13,45,1),(4,24,40,1),(5,2,55,1),(5,7,50,1),(7,16,70,1),(7,18,30,1),(8,17,120,1),(8,19,100,2),(9,1,80,1),(9,25,70,1),(10,5,60,2),(10,7,50,1);
/*!40000 ALTER TABLE `food_delivery_ordered_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_delivery_restaurant`
--

DROP TABLE IF EXISTS `food_delivery_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_restaurant` (
  `restaurant_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `loc_x` int NOT NULL,
  `loc_y` int NOT NULL,
  `business` int NOT NULL,
  `opening_time` varchar(64) NOT NULL,
  `closing_time` varchar(64) NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `restaurant_id_UNIQUE` (`restaurant_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `address_UNIQUE` (`address`),
  UNIQUE KEY `loc_x_UNIQUE` (`loc_x`),
  UNIQUE KEY `loc_y_UNIQUE` (`loc_y`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_restaurant`
--

LOCK TABLES `food_delivery_restaurant` WRITE;
/*!40000 ALTER TABLE `food_delivery_restaurant` DISABLE KEYS */;
INSERT INTO `food_delivery_restaurant` VALUES (1,'麥當勞','0976578007','320桃園市中壢區中大路99號',2,21,1,'08:00:00','20:00:00'),(2,'摩斯漢堡','0947946958','320桃園市中壢區中正一路252號',87,5,1,'09:30:00','18:00:00'),(3,'伍味鍋','0997935827','320桃園市中壢區五興路121號',49,71,1,'07:00:00','22:00:00'),(4,'三媽臭臭鍋','0999369804','320桃園市中壢區民族路1041號',14,80,0,'10:00:00','23:00:00'),(5,'迷克夏','0977073228','320桃園市中壢區中大路50號',80,42,1,'11:00:00','16:00:00'),(6,'可不可熟成紅茶','0946602587','320桃園市中壢區中大路101號',21,99,0,'10:30:00','21:30:00'),(7,'鬍鬚張','0993381433','320桃園市中壢區中正一路380號',31,7,1,'10:00:00','20:00:00'),(8,'九大雞魯飯','0996380445','320桃園市中壢區中正二路448號',78,79,1,'06:00:00','22:00:00'),(9,'怡客咖啡','0945234928','320桃園市中壢區中正路42號',51,85,1,'11:00:00','21:30:00'),(10,'路易莎咖啡','0950621549','320桃園市中壢區中大路840號',12,38,1,'10:30:00','23:00:00'),(11,'二師父麻油雞','0950005890','320桃園市中壢區民族路721號',24,19,0,'08:00:00','22:00:00'),(12,'肯德基','0905179052','320桃園市中壢區五興路877號',4,24,0,'09:30:00','21:30:00'),(13,'爭鮮迴轉壽司','0907159968','320桃園市中壢區中正一路301號',63,17,1,'11:00:00','23:00:00'),(14,'壽司郎','0999233765','320桃園市中壢區中正路72號',83,39,1,'11:00:00','21:30:00'),(15,'弘爺早餐店','0900651160','320桃園市中壢區中正二路345號',16,27,1,'06:00:00','09:00:00');
/*!40000 ALTER TABLE `food_delivery_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_delivery_user_credential`
--

DROP TABLE IF EXISTS `food_delivery_user_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_user_credential` (
  `userCredential_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `hashedpwd` varchar(200) NOT NULL,
  `createdatetime` datetime NOT NULL,
  UNIQUE KEY `userCredential_id_UNIQUE` (`userCredential_id`),
  UNIQUE KEY `hashedpwd_UNIQUE` (`hashedpwd`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `user_id_idx` (`userCredential_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `food_delivery_user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_user_credential`
--

LOCK TABLES `food_delivery_user_credential` WRITE;
/*!40000 ALTER TABLE `food_delivery_user_credential` DISABLE KEYS */;
INSERT INTO `food_delivery_user_credential` VALUES (1,1,'12d645aba4188c2ca4467e723aa5f80fbf74dd2d4d1acafdb888a06ea152d400','2021-02-21 10:00:00'),(2,2,'37511f033628d86b4b916eeac92be7c519c7a2a0b69a9c275b8ac12df51c7170','2021-01-01 12:00:05'),(3,3,'b42173ac3c0c84579930b00fb5840673909e7cbb52835dd0eda3867ec78b0c1a','2021-12-11 23:20:00'),(4,4,'90dd9f1505cc9b5e7afe85fff9e8c0e1479982f47ded59713a351e56b04d8ebe','2021-07-14 14:40:20'),(5,5,'9fd17045e745b326a17b46bc898d1e31584b3fe151bfca775d05b955f66a4020','2021-10-11 12:20:07'),(6,6,'9b0ad459fd6229d16b62486fa4aadb93279b3a5078ec560dafb2ff2dacdd3ca2','2021-12-05 02:00:00'),(7,7,'385caacde6430ee92f88112fde9c7ab56057a489190cee002fb55d3f5e3958f4','2020-07-07 12:45:37'),(8,8,'ac30c90356c59a3ad72d6fab45ddc2d5f81c5cdd194b7a66e938ca72c4cef85b','2020-08-08 22:45:30'),(9,9,'ca3a5ef52e43abcb268591f9208f205cbc1a8d4c8009a9476a593d7fdfd546d3','2020-01-21 11:15:31'),(10,10,'1ac24680a1f8570fdf6979860e7b02bbb424d970b9b1d6500090a179653b7b95','2020-03-26 08:10:12'),(11,11,'6e29fad15e907474280d063c1f19f1c4a1309296ad05485cccc6f0a462fc254c','2019-04-16 07:40:42'),(12,12,'42ced92cee6c90bd603d316ef11f9b4af4e3037821019996978b6df8e4ad4788','2019-10-26 05:05:05'),(13,13,'215888d61256561f9bf24bdf9eab1e92166ba1e05442c3b4b0b2790dc25a9834','2019-09-21 08:41:12'),(14,14,'f7b3e132fbbbcfc87d2cb65e0552af74d7c7df55ed828e5c700a60491dbc27e4','2019-09-23 12:20:02'),(15,15,'6ca89a4472c0a426e37dfef1bc25aed829c4dac0f38c74b09a0fa47a233d60dd','2019-04-10 03:25:06');
/*!40000 ALTER TABLE `food_delivery_user_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_delivery_user_table`
--

DROP TABLE IF EXISTS `food_delivery_user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food_delivery_user_table` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `salt` char(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `loc_x` int unsigned NOT NULL,
  `loc_y` int unsigned NOT NULL,
  `createdatetime` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_delivery_user_table`
--

LOCK TABLES `food_delivery_user_table` WRITE;
/*!40000 ALTER TABLE `food_delivery_user_table` DISABLE KEYS */;
INSERT INTO `food_delivery_user_table` VALUES (1,'test001','63652315D22919A8EC76F58F982EC08A6244474F8082B8E75A1271B3C63948E9','Jacob Walker','320桃園市中壢區民權路170號','0937882465',94,95,'2021-02-21 10:00:00'),(2,'test002','AA52032EAB8CC92F7B77CCE828940F95C2369F18DDF1C6B3A80A8A6195D137FB','Rick Caulfield','320桃園市中壢區民生北路112號','0945804302',8,20,'2021-01-01 12:00:05'),(3,'test003','3C567E0EA40F26755BB221C96AB02CC726DE673E85016EC1D949D14E5B16B223','Bryce Landrum','320桃園市中壢區五興路121號','0902923003',65,69,'2021-12-11 23:20:00'),(4,'test004','95B79B147E492681F98C749E3AC329C1A975D3F4000FF25D0643D8D55A4E4E2B','Alex Barlow','320桃園市中壢區民生北路185號','0942930878',100,6,'2021-07-14 14:40:20'),(5,'test005','EB7F11AE33003238D3FF14094E3BC569F077B8F39DF472423FD339CE22B5F050','Alvin Anderson','320桃園市中壢區民權路520號','0909563906',7,22,'2021-10-11 12:20:07'),(6,'test006','5F79D14FB8A43CA9350E781EA1067B14B197D36671182C4C15E9EDBD921791DD','Willy Bieber','320桃園市中壢區中大路107號','0901033637',49,87,'2021-12-05 02:00:00'),(7,'test007','9C681B6D73E80D3C1F10E06BDEB48914ABE207ADA83405DC14485B6AD060C021','Johannes Harris','320桃園市中壢區民權路30號','0984466058',2,24,'2020-07-07 12:45:37'),(8,'test008','6C40F0CC5D46DCE7D1A0E1D118E0750A7874087FC7199DDA34D171131002DCA9','Phil Taft','320桃園市中壢區中山路474號','0973214446',55,1,'2020-08-08 22:45:30'),(9,'test009','039FB5567A6B559BE9999BF854BEF1699A14CB912AF431CCF90D9941900D8788','Reggie Scott','320桃園市中壢區民生北路42號','0900697437',33,74,'2020-01-21 11:15:31'),(10,'test010','ABC1523C0333408EFF2B8CCF4248A0B2175723EBC65C8D05940B9D434B7A39A2','Aidan Hall','320桃園市中壢區中大路820號','0907146500',37,14,'2020-03-26 08:10:12'),(11,'test011','015E6E1B59C1095D5484D37EADAD30A1BA1B23E96125ECD3A4FAA7E97B57AE6A','Annie Abbadie','320桃園市中壢區民權路72號','0977679834',91,47,'2019-04-16 07:40:42'),(12,'test012','FC683C2A54777A59A747A304E48AF48F1CC3B5028690001D5E6FF51CF4F3CABB','Nerissa Brown','320桃園市中壢區五興路847號','0973337533',18,82,'2019-10-26 05:05:05'),(13,'test013','B6A36D21C9A08C26DE91B3D8C9A55B29F196AEF84FF5EA6598D66DBCB37A7F9E','Anna Stenson','320桃園市中壢區民生南路31號','0904713945',64,66,'2019-09-21 08:41:12'),(14,'test014','BCF3A35C006CEDC0C1B9FE21E8F22528A8D09CB36A4F19B1B6A9B4713D8D22B','Sigrid Merrick','320桃園市中壢區中正路322號','0998049104',19,91,'2019-09-23 12:20:02'),(15,'test015','D2E8F9D3BC6FDDA90B838DB2A33C749F20DD43CE899752B7FA194F01C637D90E','Alexis Bagshawe','320桃園市中壢區中大路365號','0983234004',70,75,'2019-04-10 03:25:06');
/*!40000 ALTER TABLE `food_delivery_user_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_107401050'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_CancelOrder`(IN inorder_id int,out affected_row_num int)
BEGIN
	declare affected int;
    DECLARE status_ int;
    SELECT order_status into status_ from food_delivery_order where food_delivery_order.order_id=inorder_id;
    if(status_=1)THEN
		DELETE from food_delivery_order where food_delivery_order.order_id=inorder_id;
		SET affected = row_count();
		select affected into affected_row_num;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_CreateNewOrder`(IN inUser int,IN inDeliveryman_id int,
									IN inRestaurant_id int,IN inMeals_1 int,
									IN inMeals_1_count int,IN inMeals_2 int,
									IN inMeals_2_count int,out outMsg varchar(100),out affected_row_num int)
BEGIN
	DECLARE deliveryfee int DEFAULT 0;
	DECLARE num int DEFAULT 1;
	DECLARE totalnum int;
	DECLARE c_x int;
	DECLARE c_y int;
    DECLARE r_x int; 
    DECLARE r_y int;
    DECLARE r_business int;
    DECLARE r_opening_time varchar(8);
    DECLARE r_closing_time varchar(8);
    DECLARE r_restaurant_id int DEFAULT 1;
	DECLARE r_name char(64) DEFAULT '';
    DECLARE dis float;
    DECLARE affected int DEFAULT 0;
	SELECT loc_x INTO c_x FROM food_delivery_user_table WHERE user_id = inUser;
	SELECT loc_y INTO c_y FROM food_delivery_user_table WHERE user_id = inUser;
    SELECT MAX(restaurant_id) INTO totalnum FROM food_delivery_restaurant;
    
    DROP TABLE IF EXISTS table5;
    CREATE TEMPORARY TABLE table5 (
        restaurant_id int NOT NULL
        , restaurant_name char(64) NOT NULL 
        , Delivery_fee int not null
    );
    WHILE (num <= totalnum)
    DO
		SELECT loc_x INTO r_x FROM food_delivery_restaurant WHERE restaurant_id = num;
		SELECT loc_y INTO r_y FROM food_delivery_restaurant WHERE restaurant_id = num;	
		SELECT business INTO r_business FROM food_delivery_restaurant WHERE restaurant_id = num;
		SELECT name INTO r_name FROM food_delivery_restaurant WHERE restaurant_id = num;
		SELECT restaurant_id INTO r_restaurant_id FROM food_delivery_restaurant WHERE restaurant_id = num;
        SELECT opening_time INTO r_opening_time FROM food_delivery_restaurant WHERE restaurant_id = num;
        SELECT closing_time INTO r_closing_time FROM food_delivery_restaurant WHERE restaurant_id = num;
        SET dis = SQRT((POWER(c_x - r_x,2) + POWER(c_y - r_y,2)));
        IF (dis <= 20 AND r_business = 1) AND (time(now())BETWEEN r_opening_time AND r_closing_time)THEN
            IF dis <= 5 THEN
                SET deliveryfee = 15;
            ELSEIF dis <= 10 THEN
                SET deliveryfee = 20;
            ELSE
                SET deliveryfee = 30;            
            END IF;

            INSERT INTO table5
                VALUES (r_restaurant_id, r_name, deliveryfee);	
        END IF;
	SET num = num+1;
    END while;
    
		DROP TABLE IF EXISTS table6;
		CREATE TEMPORARY TABLE table6(restaurant_id int not null ,meals_id int not null,deliveryfee int) ;
		INSERT INTO table6 (restaurant_id,meals_id,deliveryfee)
		SELECT table5.restaurant_id,meals_id,deliveryfee
		FROM table5 INNER JOIN food_delivery_meals
		ON table5.restaurant_id=food_delivery_meals.restaurant_id WHERE table5.restaurant_id=inRestaurant_id group by meals_id;
        
        DROP TABLE IF EXISTS table7;
		CREATE TEMPORARY TABLE table7(meals_id int not null,deliveryfee int) ;
		INSERT INTO table7 (meals_id,deliveryfee)
		SELECT table6.meals_id,deliveryfee
		FROM table6 INNER JOIN food_delivery_meals
		ON table6.meals_id=food_delivery_meals.meals_id WHERE table6.meals_id=inMeals_1 GROUP BY meals_id;
        
        DROP TABLE IF EXISTS table8;
		CREATE TEMPORARY TABLE table8(meals_id int not null,deliveryfee int) ;
		INSERT INTO table8 (meals_id,deliveryfee)
		SELECT table6.meals_id,deliveryfee
		FROM table6 INNER JOIN food_delivery_meals
		ON table6.meals_id=food_delivery_meals.meals_id WHERE table6.meals_id=inMeals_2 GROUP BY meals_id;
        
	IF EXISTS (SELECT * FROM table6) THEN
		IF EXISTS(SELECT * FROM table7 ) THEN
			IF EXISTS(SELECT * FROM table8) THEN
			BEGIN
			DECLARE totalprice INT;
			DECLARE temp_price_1 INT;
			DECLARE temp_price_2 INT;
			DECLARE temp_price_1_unit INT;
			DECLARE temp_price_2_unit INT;
			DECLARE order_id_detail INT;
			SELECT price INTO temp_price_1_unit FROM food_delivery_meals WHERE meals_id = inMeals_1;
			SET temp_price_1 = temp_price_1_unit * inMeals_1_count;
			SELECT price INTO temp_price_2_unit FROM food_delivery_meals WHERE meals_id = inMeals_2;
			SET temp_price_2 = temp_price_2_unit * inMeals_2_count;
			SET totalprice = temp_price_1+temp_price_2;

			INSERT INTO food_delivery_order (user_id,deliveryman_id,order_status,delivery_fee,total_price,coupon_id,restaurant_rating,delivery_rating)
			VALUES (inUser,inDeliveryman_id,1,deliveryfee,totalprice,NULL,NULL,NULL);
			SET affected = row_count();

			SELECT MAX(order_id) INTO order_id_detail FROM food_delivery_order;
			INSERT INTO food_delivery_ordered_details (order_id,meals_id,unit_price,count)
			VALUES (order_id_detail,inMeals_1,temp_price_1,inMeals_1_count);
			SET affected = affected + ROW_COUNT();
      
			INSERT INTO food_delivery_ordered_details (order_id,meals_id,unit_price,count)
			VALUES (order_id_detail,inMeals_2,temp_price_2,inMeals_2_count);
			SET affected = affected + ROW_COUNT();

			DROP TABLE IF EXISTS table9;
			CREATE TEMPORARY TABLE table9(user_id int not null,order_id int not null,restaurant_id int not null ,meals_id int not null,unit_price int not null,count int not null) ;
			INSERT INTO table9 (user_id,order_id,restaurant_id,meals_id,unit_price,count)
            VALUES(inUser,order_id_detail,inRestaurant_id,inMeals_1,temp_price_1,inMeals_1_count);
            INSERT INTO table9 (user_id,order_id,restaurant_id,meals_id,unit_price,count)
            VALUES(inUser,order_id_detail,inRestaurant_id,inMeals_2,temp_price_2,inMeals_2_count);
            
            SELECT * FROM table9;
			SELECT "Order created successfully!" INTO outMsg;
			SELECT affected INTO affected_row_num;
			END;
		ELSE
			BEGIN
			SELECT "This meal is unavailable! Please choose another one." INTO outMsg;
			END;
		END IF;
      ELSE
		BEGIN
		SELECT "This meal is unavailable! Please choose another one." INTO outMsg;
		END;
      END IF;
	ELSE
	  BEGIN
	  SELECT "This restaurant is unavailable! Please choose another one." INTO outMsg;
	  END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_GetRestaurant`(IN inUser int,out NumsOfResult int)
BEGIN
    DECLARE deliveryfee int DEFAULT 0;
	DECLARE num int DEFAULT 1;
	DECLARE totalnum int;
	DECLARE c_x int;
	DECLARE c_y int;
    DECLARE r_x int; 
    DECLARE r_y int;
    DECLARE r_business int;
    DECLARE r_opening_time varchar(8);
    DECLARE r_closing_time varchar(8);
    DECLARE r_restaurant_id int DEFAULT 1;
	DECLARE r_name char(64) DEFAULT '';
    DECLARE dis float;
	SELECT loc_x into c_x from food_delivery_user_table WHERE user_id = inUser;
	SELECT loc_y into c_y from food_delivery_user_table WHERE user_id = inUser;
    SELECT MAX(restaurant_id) into totalnum from food_delivery_restaurant;
    
    DROP TABLE IF EXISTS table4;
    CREATE TEMPORARY TABLE table4 (
        restaurant_id int NOT NULL
        , restaurant_name char(64) NOT NULL 
        , Delivery_fee int not null
    );
    WHILE (num <= totalnum)
    do
		SELECT loc_x into r_x from food_delivery_restaurant WHERE restaurant_id = num;
		SELECT loc_y into r_y from food_delivery_restaurant WHERE restaurant_id = num;	
		SELECT business into r_business from food_delivery_restaurant WHERE restaurant_id = num;
		SELECT name into r_name from food_delivery_restaurant WHERE restaurant_id = num;
		SELECT restaurant_id into r_restaurant_id from food_delivery_restaurant WHERE restaurant_id = num;
        SELECT opening_time into r_opening_time from food_delivery_restaurant WHERE restaurant_id = num;
        SELECT closing_time into r_closing_time from food_delivery_restaurant WHERE restaurant_id = num;
        SET dis = SQRT((POWER(c_x - r_x,2) + POWER(c_y - r_y,2)));
        IF (dis <= 20 AND r_business = 1) AND (time(now())between r_opening_time and r_closing_time)
        then
            IF dis <= 5 THEN
                SET deliveryfee = 15;
            ELSEIF dis <= 10 THEN
                SET deliveryfee = 20;
            ELSE
                SET deliveryfee = 30;            
            END IF;

            INSERT INTO table4
                VALUES (r_restaurant_id, r_name, deliveryfee);	
        END if;
	SET num = num+1;
    END while;
	select * FROM table4 ;
  select found_rows() INTO NumsOfResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_HistoryOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_HistoryOrder`(IN userid int,out NumsOfResult int)
BEGIN
select user_id,order_id,deliveryman_id,order_status,total_price from food_delivery_order where user_id = userid;
select found_rows() INTO NumsOfResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_Login`(IN account varchar(64),IN hashedpwd varchar(200),out affected_row_num int)
BEGIN
	declare affected int;
    SELECT 1
    FROM food_delivery_user_credential INNER JOIN food_delivery_user_table 
    ON food_delivery_user_credential.user_id = food_delivery_user_table.user_id
    WHERE food_delivery_user_table.account = account 
			and food_delivery_user_credential.hashedpwd = hashedpwd;
    select found_rows() INTO affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_RegisterUser`(IN inAccount varchar(64),IN inSalt char(64),
IN inName varchar(64),IN inPhone varchar(64),
IN inAddress varchar(64),IN inloc_x int,
IN inloc_y int,IN inhashedpwd varchar(200),
out affected_row_num int)
BEGIN
  declare affected int;
  INSERT INTO food_delivery_user_table (account,salt,name,phone,address,loc_x,loc_y,createdatetime)
  VALUES (inAccount,inSalt,inName,inPhone,inAddress,inloc_x,inloc_y,NOW());
  SET affected = row_count();
  INSERT INTO food_delivery_user_credential (hashedpwd,createdatetime)
  VALUES (inhashedpwd,NOW());
  SET affected = affected + row_count();
  SELECT affected into affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ResetNewPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_ResetNewPassword`(IN user_id int,IN salt char(64),IN hashedpwd varchar(200),out affected_row_num int)
BEGIN
	declare affected int;
	SET SQL_SAFE_UPDATES = 0;
	UPDATE food_delivery_user_credential set food_delivery_user_credential.hashedpwd=hashedpwd where food_delivery_user_credential.user_id=user_id;
    SET affected = row_count();
    UPDATE food_delivery_user_table set food_delivery_user_table.salt=salt where food_delivery_user_table.user_id=user_id;
    SET affected = affected + row_count();
    UPDATE food_delivery_user_credential set food_delivery_user_credential.createdatetime=NOW() where food_delivery_user_credential.user_id=user_id;
    SET affected = affected + row_count();
    select affected into affected_row_num;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchMealsOfRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_SearchMealsOfRestaurant`(IN meals varchar(64) ,out NumsOfResult int)
BEGIN
declare meatName varchar(64);
select name,meals_name,price from food_delivery_meals 
INNER JOIN food_delivery_restaurant ON food_delivery_meals.restaurant_id = food_delivery_restaurant.restaurant_id 
where food_delivery_meals.meals_name LIKE concat('%',meals,'%');
select found_rows() INTO NumsOfResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchStarRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_SearchStarRestaurant`(IN x int,out NumsOfResult int)
BEGIN
	SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
	DROP TABLE IF EXISTS table3;
	CREATE TEMPORARY TABLE table3(meals_id int NOT NULL,restaurant_rating int NOT NULL) ;
	INSERT INTO table3 (meals_id,restaurant_rating)
    SELECT meals_id,restaurant_rating
	FROM food_delivery_ordered_details od INNER JOIN food_delivery_order o
    ON od.order_id = o.order_id
    where restaurant_rating IS NOT NULL AND restaurant_rating>=x;
    DROP TABLE IF EXISTS table2;
	CREATE TEMPORARY TABLE table2(meals_id int NOT NULL,restaurant_id int not null,restaurant_rating int NOT NULL) ;
	INSERT INTO table2 (meals_id,restaurant_id,restaurant_rating)
	SELECT table3.meals_id,restaurant_id,table3.restaurant_rating
	FROM table3 
    inner join food_delivery_meals on table3.meals_id=food_delivery_meals.meals_id group by restaurant_id;
    DROP TABLE IF EXISTS table1;
    CREATE TEMPORARY TABLE table1(restaurant_id int NOT NUll,name int not null,restaurant_rating int NOT NULL) ;
	INSERT INTO table1 values(restaurant_id,name,restaurant_rating);
	select table2.restaurant_id,name,table2.restaurant_rating 
    from table2 
    inner join food_delivery_restaurant 
    on food_delivery_restaurant.restaurant_id=table2.restaurant_id
    order by table2.restaurant_id;
    select found_rows() INTO NumsOfResult;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateOrderStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`107401050`@`192.168.62.1` PROCEDURE `sp_UpdateOrderStatus`(IN inorder_id int,IN inorder_status int,out affected_row_num int)
BEGIN
	declare affected int;
	SET SQL_SAFE_UPDATES = 0;
	UPDATE food_delivery_order set food_delivery_order.order_status=inorder_status where food_delivery_order.order_id=inorder_id and food_delivery_order.order_status < inorder_status ;
    SET affected = row_count();
	select order_id,order_status from food_delivery_order where food_delivery_order.order_id = inorder_id;
    select affected into affected_row_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17  3:59:24
