-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: equran
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `suraquran`
--

DROP TABLE IF EXISTS `suraquran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `suraquran` (
  `id` int(11) NOT NULL,
  `suraNameAr2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `suraNameEn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ayaat` int(11) NOT NULL,
  `suraNameAr1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suraquran`
--

LOCK TABLES `suraquran` WRITE;
/*!40000 ALTER TABLE `suraquran` DISABLE KEYS */;
INSERT INTO `suraquran` VALUES (101,'Al-Qari’ah','The Calamity',11,'القارعة'),(102,'At-Takathur','The Abundance of Wealth',8,'التكاثر'),(103,'Al-‘Asr','The Time',3,'العصر'),(104,'Al-Humazah','The Slanderer',9,'الهمزة'),(105,'Al-Fil','The Elephant',5,'الفيل'),(106,'Al-Quraish','The Quraish',4,'قريش'),(107,'Al-Ma’un','Acts of Kindness',7,'الماعون'),(108,'Al-Kauthar','The Abundance of Good',3,'الكوثر'),(109,'Al-Kafirun','The Disbelievers',6,'الكافرون'),(110,'An-Nasr','The Help',3,'النصر'),(111,'Al-Lahab','The Flame',5,'المسد'),(112,'Al-Ikhlas','The Unity',4,'الإخلاص'),(113,'Al-Falaq','The Dawn',5,'الفلق'),(114,'An-Nas','The Men',6,'النصر');
/*!40000 ALTER TABLE `suraquran` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-14 13:48:03
