/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: anime_service_db
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `animes`
--

DROP TABLE IF EXISTS `animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `animes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animes`
--

LOCK TABLES `animes` WRITE;
/*!40000 ALTER TABLE `animes` DISABLE KEYS */;
INSERT INTO `animes` VALUES
(1,'Anime 1',38,'Description of Anime 1','TV\r'),
(2,'Anime 2',9,'Description of Anime 2','ONA\r'),
(3,'Anime 3',21,'Description of Anime 3','ONA\r'),
(4,'Anime 4',71,'Description of Anime 4','ONA\r'),
(5,'Anime 5',95,'Description of Anime 5','ONA\r'),
(6,'Anime 6',44,'Description of Anime 6','ONA\r'),
(7,'Anime 7',43,'Description of Anime 7','ONA\r'),
(8,'Anime 8',18,'Description of Anime 8','OVA\r'),
(9,'Anime 9',52,'Description of Anime 9','TV\r'),
(10,'Anime 10',24,'Description of Anime 10','Movie\r'),
(11,'Anime 11',17,'Description of Anime 11','Movie\r'),
(12,'Anime 12',10,'Description of Anime 12','Special\r'),
(13,'Anime 13',93,'Description of Anime 13','TV\r'),
(14,'Anime 14',88,'Description of Anime 14','TV\r'),
(15,'Anime 15',87,'Description of Anime 15','Movie\r'),
(16,'Anime 16',14,'Description of Anime 16','TV\r'),
(17,'Anime 17',18,'Description of Anime 17','Movie\r'),
(18,'Anime 18',30,'Description of Anime 18','Movie\r'),
(19,'Anime 19',100,'Description of Anime 19','OVA\r'),
(20,'Anime 20',41,'Description of Anime 20','OVA\r'),
(21,'Anime 21',88,'Description of Anime 21','TV\r'),
(22,'Anime 22',46,'Description of Anime 22','TV\r'),
(23,'Anime 23',81,'Description of Anime 23','OVA\r'),
(24,'Anime 24',28,'Description of Anime 24','TV\r'),
(25,'Anime 25',85,'Description of Anime 25','Special\r'),
(26,'Anime 26',66,'Description of Anime 26','OVA\r'),
(27,'Anime 27',53,'Description of Anime 27','TV\r'),
(28,'Anime 28',27,'Description of Anime 28','OVA\r'),
(29,'Anime 29',18,'Description of Anime 29','OVA\r'),
(30,'Anime 30',64,'Description of Anime 30','TV\r'),
(31,'Anime 31',1,'Description of Anime 31','OVA\r'),
(32,'Anime 32',76,'Description of Anime 32','Special\r'),
(33,'Anime 33',33,'Description of Anime 33','ONA\r'),
(34,'Anime 34',50,'Description of Anime 34','OVA\r'),
(35,'Anime 35',13,'Description of Anime 35','Movie\r'),
(36,'Anime 36',84,'Description of Anime 36','Movie\r'),
(37,'Anime 37',29,'Description of Anime 37','TV\r'),
(38,'Anime 38',34,'Description of Anime 38','Movie\r'),
(39,'Anime 39',84,'Description of Anime 39','ONA\r'),
(40,'Anime 40',21,'Description of Anime 40','Special\r'),
(41,'Anime 41',61,'Description of Anime 41','Special\r'),
(42,'Anime 42',14,'Description of Anime 42','ONA\r'),
(43,'Anime 43',45,'Description of Anime 43','ONA\r'),
(44,'Anime 44',13,'Description of Anime 44','OVA\r'),
(45,'Anime 45',36,'Description of Anime 45','OVA\r'),
(46,'Anime 46',96,'Description of Anime 46','OVA\r'),
(47,'Anime 47',33,'Description of Anime 47','TV\r'),
(48,'Anime 48',48,'Description of Anime 48','Movie\r'),
(49,'Anime 49',70,'Description of Anime 49','Special\r'),
(50,'Anime 50',6,'Description of Anime 50','TV\r'),
(51,'Anime 51',26,'Description of Anime 51','Movie\r'),
(52,'Anime 52',65,'Description of Anime 52','Special\r'),
(53,'Anime 53',65,'Description of Anime 53','ONA\r'),
(54,'Anime 54',60,'Description of Anime 54','TV\r'),
(55,'Anime 55',40,'Description of Anime 55','TV\r'),
(56,'Anime 56',92,'Description of Anime 56','Movie\r'),
(57,'Anime 57',97,'Description of Anime 57','TV\r'),
(58,'Anime 58',27,'Description of Anime 58','Movie\r'),
(59,'Anime 59',16,'Description of Anime 59','TV\r'),
(60,'Anime 60',60,'Description of Anime 60','Special\r'),
(61,'Anime 61',75,'Description of Anime 61','Movie\r'),
(62,'Anime 62',17,'Description of Anime 62','Special\r'),
(63,'Anime 63',7,'Description of Anime 63','Movie\r'),
(64,'Anime 64',59,'Description of Anime 64','Movie\r'),
(65,'Anime 65',61,'Description of Anime 65','TV\r'),
(66,'Anime 66',34,'Description of Anime 66','ONA\r'),
(67,'Anime 67',45,'Description of Anime 67','OVA\r'),
(68,'Anime 68',85,'Description of Anime 68','ONA\r'),
(69,'Anime 69',43,'Description of Anime 69','Special\r'),
(70,'Anime 70',28,'Description of Anime 70','Movie\r'),
(71,'Anime 71',82,'Description of Anime 71','ONA\r'),
(72,'Anime 72',7,'Description of Anime 72','Movie\r'),
(73,'Anime 73',20,'Description of Anime 73','TV\r'),
(74,'Anime 74',44,'Description of Anime 74','ONA\r'),
(75,'Anime 75',25,'Description of Anime 75','TV\r'),
(76,'Anime 76',71,'Description of Anime 76','TV\r'),
(77,'Anime 77',37,'Description of Anime 77','TV\r'),
(78,'Anime 78',99,'Description of Anime 78','OVA\r'),
(79,'Anime 79',64,'Description of Anime 79','OVA\r'),
(80,'Anime 80',70,'Description of Anime 80','OVA\r'),
(81,'Anime 81',84,'Description of Anime 81','OVA\r'),
(82,'Anime 82',40,'Description of Anime 82','OVA\r'),
(83,'Anime 83',81,'Description of Anime 83','TV\r'),
(84,'Anime 84',12,'Description of Anime 84','OVA\r'),
(85,'Anime 85',62,'Description of Anime 85','Special\r'),
(86,'Anime 86',64,'Description of Anime 86','Special\r'),
(87,'Anime 87',25,'Description of Anime 87','Special\r'),
(88,'Anime 88',29,'Description of Anime 88','Special\r'),
(89,'Anime 89',82,'Description of Anime 89','TV\r'),
(90,'Anime 90',15,'Description of Anime 90','ONA\r'),
(91,'Anime 91',10,'Description of Anime 91','TV\r'),
(92,'Anime 92',84,'Description of Anime 92','TV\r'),
(93,'Anime 93',84,'Description of Anime 93','ONA\r'),
(94,'Anime 94',60,'Description of Anime 94','TV\r'),
(95,'Anime 95',84,'Description of Anime 95','Special\r'),
(96,'Anime 96',71,'Description of Anime 96','TV\r'),
(97,'Anime 97',97,'Description of Anime 97','ONA\r'),
(98,'Anime 98',77,'Description of Anime 98','ONA\r'),
(99,'Anime 99',87,'Description of Anime 99','Movie\r'),
(100,'Anime 100',26,'Description of Anime 100','ONA\r'),
(101,'Anime 101',50,'Description of Anime 101','OVA\r'),
(102,'Anime 102',25,'Description of Anime 102','Movie\r'),
(103,'Anime 103',41,'Description of Anime 103','Special\r'),
(104,'Anime 104',53,'Description of Anime 104','Movie\r'),
(105,'Anime 105',13,'Description of Anime 105','ONA\r'),
(106,'Anime 106',24,'Description of Anime 106','OVA\r'),
(107,'Anime 107',76,'Description of Anime 107','ONA\r'),
(108,'Anime 108',3,'Description of Anime 108','OVA\r'),
(109,'Anime 109',14,'Description of Anime 109','Special\r'),
(110,'Anime 110',29,'Description of Anime 110','TV\r'),
(111,'Anime 111',69,'Description of Anime 111','OVA\r'),
(112,'Anime 112',64,'Description of Anime 112','Special\r'),
(113,'Anime 113',29,'Description of Anime 113','Movie\r'),
(114,'Anime 114',11,'Description of Anime 114','ONA\r'),
(115,'Anime 115',58,'Description of Anime 115','Movie\r'),
(116,'Anime 116',27,'Description of Anime 116','Special\r'),
(117,'Anime 117',18,'Description of Anime 117','TV\r'),
(118,'Anime 118',75,'Description of Anime 118','TV\r'),
(119,'Anime 119',30,'Description of Anime 119','OVA\r'),
(120,'Anime 120',18,'Description of Anime 120','Movie\r'),
(121,'Anime 121',56,'Description of Anime 121','TV\r'),
(122,'Anime 122',62,'Description of Anime 122','Movie\r'),
(123,'Anime 123',99,'Description of Anime 123','TV\r'),
(124,'Anime 124',61,'Description of Anime 124','ONA\r'),
(125,'Anime 125',96,'Description of Anime 125','OVA\r'),
(126,'Anime 126',66,'Description of Anime 126','Special\r'),
(127,'Anime 127',7,'Description of Anime 127','Special\r'),
(128,'Anime 128',1,'Description of Anime 128','Special\r'),
(129,'Anime 129',59,'Description of Anime 129','TV\r'),
(130,'Anime 130',43,'Description of Anime 130','Special\r'),
(131,'Anime 131',93,'Description of Anime 131','OVA\r'),
(132,'Anime 132',68,'Description of Anime 132','ONA\r'),
(133,'Anime 133',5,'Description of Anime 133','ONA\r'),
(134,'Anime 134',100,'Description of Anime 134','ONA\r'),
(135,'Anime 135',81,'Description of Anime 135','OVA\r'),
(136,'Anime 136',96,'Description of Anime 136','TV\r'),
(137,'Anime 137',38,'Description of Anime 137','OVA\r'),
(138,'Anime 138',73,'Description of Anime 138','Special\r'),
(139,'Anime 139',71,'Description of Anime 139','OVA\r'),
(140,'Anime 140',5,'Description of Anime 140','TV\r'),
(141,'Anime 141',75,'Description of Anime 141','Movie\r'),
(142,'Anime 142',91,'Description of Anime 142','Special\r'),
(143,'Anime 143',31,'Description of Anime 143','Special\r'),
(144,'Anime 144',16,'Description of Anime 144','Movie\r'),
(145,'Anime 145',46,'Description of Anime 145','TV\r'),
(146,'Anime 146',37,'Description of Anime 146','Movie\r'),
(147,'Anime 147',29,'Description of Anime 147','Special\r'),
(148,'Anime 148',41,'Description of Anime 148','ONA\r'),
(149,'Anime 149',67,'Description of Anime 149','Movie\r'),
(150,'Anime 150',11,'Description of Anime 150','TV\r'),
(151,'Anime 151',74,'Description of Anime 151','Special\r'),
(152,'Anime 152',22,'Description of Anime 152','OVA\r'),
(153,'Anime 153',63,'Description of Anime 153','ONA\r'),
(154,'Anime 154',84,'Description of Anime 154','ONA\r'),
(155,'Anime 155',40,'Description of Anime 155','Special\r'),
(156,'Anime 156',60,'Description of Anime 156','Special\r'),
(157,'Anime 157',5,'Description of Anime 157','Special\r'),
(158,'Anime 158',66,'Description of Anime 158','ONA\r'),
(159,'Anime 159',48,'Description of Anime 159','Movie\r'),
(160,'Anime 160',7,'Description of Anime 160','Movie\r'),
(161,'Anime 161',52,'Description of Anime 161','Special\r'),
(162,'Anime 162',90,'Description of Anime 162','OVA\r'),
(163,'Anime 163',27,'Description of Anime 163','ONA\r'),
(164,'Anime 164',41,'Description of Anime 164','OVA\r'),
(165,'Anime 165',66,'Description of Anime 165','ONA\r'),
(166,'Anime 166',6,'Description of Anime 166','Movie\r'),
(167,'Anime 167',76,'Description of Anime 167','Movie\r'),
(168,'Anime 168',3,'Description of Anime 168','Special\r'),
(169,'Anime 169',64,'Description of Anime 169','ONA\r'),
(170,'Anime 170',33,'Description of Anime 170','OVA\r'),
(171,'Anime 171',79,'Description of Anime 171','OVA\r'),
(172,'Anime 172',6,'Description of Anime 172','Movie\r'),
(173,'Anime 173',77,'Description of Anime 173','TV\r'),
(174,'Anime 174',3,'Description of Anime 174','TV\r'),
(175,'Anime 175',80,'Description of Anime 175','TV\r'),
(176,'Anime 176',29,'Description of Anime 176','OVA\r'),
(177,'Anime 177',31,'Description of Anime 177','ONA\r'),
(178,'Anime 178',37,'Description of Anime 178','TV\r'),
(179,'Anime 179',95,'Description of Anime 179','TV\r'),
(180,'Anime 180',8,'Description of Anime 180','Special\r'),
(181,'Anime 181',40,'Description of Anime 181','Special\r'),
(182,'Anime 182',39,'Description of Anime 182','Movie\r'),
(183,'Anime 183',52,'Description of Anime 183','ONA\r'),
(184,'Anime 184',2,'Description of Anime 184','Special\r'),
(185,'Anime 185',64,'Description of Anime 185','OVA\r'),
(186,'Anime 186',67,'Description of Anime 186','TV\r'),
(187,'Anime 187',44,'Description of Anime 187','ONA\r'),
(188,'Anime 188',48,'Description of Anime 188','OVA\r'),
(189,'Anime 189',33,'Description of Anime 189','Special\r'),
(190,'Anime 190',10,'Description of Anime 190','Special\r'),
(191,'Anime 191',57,'Description of Anime 191','OVA\r'),
(192,'Anime 192',34,'Description of Anime 192','TV\r'),
(193,'Anime 193',48,'Description of Anime 193','OVA\r'),
(194,'Anime 194',38,'Description of Anime 194','OVA\r'),
(195,'Anime 195',47,'Description of Anime 195','Movie\r'),
(196,'Anime 196',4,'Description of Anime 196','TV\r'),
(197,'Anime 197',79,'Description of Anime 197','Movie\r'),
(198,'Anime 198',39,'Description of Anime 198','Movie\r'),
(199,'Anime 199',73,'Description of Anime 199','TV\r'),
(200,'Anime 200',29,'Description of Anime 200','Movie\r');
/*!40000 ALTER TABLE `animes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-09 15:36:08
