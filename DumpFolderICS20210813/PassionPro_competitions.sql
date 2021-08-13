CREATE DATABASE  IF NOT EXISTS `PassionPro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `PassionPro`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: database-2.cnnmnb9m4bjr.ap-south-1.rds.amazonaws.com    Database: PassionPro
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `competition_start_time` datetime NOT NULL,
  `competition_end_time` datetime NOT NULL,
  `registration_start` datetime NOT NULL,
  `registration_end` datetime NOT NULL,
  `category_fk` int NOT NULL,
  `minage` int NOT NULL,
  `maxage` int NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `remark` varchar(50) NOT NULL,
  `discription` text NOT NULL,
  `requirements` text,
  `rating` int DEFAULT NULL,
  `image` text NOT NULL,
  `code` varchar(80) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `category_fk` (`category_fk`),
  CONSTRAINT `competitions_ibfk_1` FOREIGN KEY (`category_fk`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,'sagar','2021-08-02 13:52:00','2021-08-28 13:52:00','2021-08-28 13:52:00','2021-08-31 13:52:00',3,4,18,'Female','remark','opk','instrument, microphone',5,'10._Static_Files.png','CMP-Music-1','2021-08-06 08:23:43','2021-08-06 13:53:43'),(2,'dance compition','2021-09-01 13:12:00','2021-09-05 13:12:00','2021-08-10 13:12:00','2021-08-31 13:12:00',1,5,9,'None','remarks','desc',NULL,3,'bhumibol-bridge-thailand_l.jpg','CMP-Dance-1','2021-08-09 07:43:36','2021-08-09 13:13:36'),(3,'Yoga','2021-09-05 13:13:00','2021-09-26 13:13:00','2021-08-17 13:13:00','2021-08-25 13:13:00',2,8,10,'Other','remarks','description','yoga mat',2,'seale.jpg','CMP-Yoga-1','2021-08-09 07:44:28','2021-08-09 13:14:28');
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-13  7:53:06
