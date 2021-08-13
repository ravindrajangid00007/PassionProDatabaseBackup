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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(80) NOT NULL,
  `discription` text NOT NULL,
  `category_fk` int NOT NULL,
  `minage` int NOT NULL,
  `maxage` int NOT NULL,
  `coursetype` varchar(30) NOT NULL,
  `rating` int DEFAULT NULL,
  `remark` text,
  `level` varchar(20) NOT NULL,
  `broucher` text NOT NULL,
  `thumbnail_image` text NOT NULL,
  `video` text NOT NULL,
  `course_code` varchar(80) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prerequisites` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_code` (`course_code`),
  KEY `category_fk` (`category_fk`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`category_fk`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Lubrication','Lubrication disciption',1,5,11,'one time',7,'Lubrication remark','beginner','course_name.pdf','course_name.png','course_name.mp4','CODE1','2021-01-05 10:09:44','2020-12-07 20:50:22',NULL),(2,'Tenacious Work Ethic','Tenacious Work Ethic disciption',2,6,12,'one time',10,'Tenacious Work Ethic remark','intermediate','course_name.pdf','course_name.png','course_name.mp4','CODE2','2021-06-21 15:03:36','2020-11-05 20:35:01',NULL),(3,'Pthreads','Pthreads disciption',3,8,14,'recurring',2,'Pthreads remark','advance','course_name.pdf','course_name.png','course_name.mp4','CODE3','2021-03-16 21:28:48','2021-03-31 00:47:02',NULL),(4,'Manufacturing Operations Management','Manufacturing Operations Management disciption',4,8,14,'recurring',5,'Manufacturing Operations Management remark','advance','course_name.pdf','course_name.png','course_name.mp4','CODE4','2020-11-10 21:37:17','2021-01-11 16:03:02',NULL),(5,'Real Estate Financing','Real Estate Financing disciption',5,6,12,'one time',2,'Real Estate Financing remark','intermediate','course_name.pdf','course_name.png','course_name.mp4','CODE5','2020-11-17 11:12:36','2021-02-12 09:46:56',NULL),(6,'IVR','IVR disciption',1,6,12,'one time',9,'IVR remark','intermediate','course_name.pdf','course_name.png','course_name.mp4','CODE6','2020-08-10 05:19:03','2020-08-12 21:36:40',NULL),(7,'Quality Auditing','Quality Auditing disciption',2,4,10,'one time',4,'Quality Auditing remark','beginner','course_name.pdf','course_name.png','course_name.mp4','CODE7','2021-01-24 05:17:21','2021-01-17 19:38:40',NULL),(8,'Zend Server','Zend Server disciption',3,8,14,'recurring',8,'Zend Server remark','advance','course_name.pdf','course_name.png','course_name.mp4','CODE8','2021-04-04 13:21:39','2020-09-08 11:35:47',NULL),(9,'SSOP','SSOP disciption',4,4,10,'one time',7,'SSOP remark','beginner','course_name.pdf','course_name.png','course_name.mp4','CODE9','2021-02-02 16:09:23','2021-07-02 01:10:28',NULL),(10,'Community Outreach','Community Outreach disciption',5,7,13,'recurring',8,'Community Outreach remark','intermediate','course_name.pdf','course_name.png','course_name.mp4','CODE10','2020-12-15 02:45:19','2021-05-07 11:28:45',NULL),(11,'CCNP Certified','CCNP Certified disciption',1,5,11,'one time',8,'CCNP Certified remark','beginner','course_name.pdf','course_name.png','course_name.mp4','CODE11','2021-03-19 19:30:49','2021-03-03 06:54:24',NULL),(12,'Ticketing','Ticketing disciption',2,8,14,'recurring',1,'Ticketing remark','advance','course_name.pdf','course_name.png','course_name.mp4','CODE12','2021-06-27 07:40:29','2020-10-28 19:18:15',NULL),(13,'HDV','HDV disciption',3,9,15,'recurring',6,'HDV remark','advance','course_name.pdf','course_name.png','course_name.mp4','CODE13','2020-12-14 01:15:54','2021-05-30 19:58:40',NULL),(14,'English','English disciption',4,9,15,'recurring',5,'English remark','advance','course_name.pdf','course_name.png','course_name.mp4','CODE14','2021-05-04 20:15:16','2021-02-14 17:07:32',NULL),(15,'Employee Handbooks','Employee Handbooks disciption',5,7,13,'recurring',8,'Employee Handbooks remark','intermediate','course_name.pdf','course_name.png','course_name.mp4','CODE15','2021-07-26 10:41:00','2021-03-18 02:09:42',NULL),(16,'python course','learn python',6,14,18,'One Time',10,'','Intermediate','dummy.pdf','download.jfif','Success_-_468.mp4','C-python-1','2021-08-09 13:35:48','2021-08-09 13:35:48',NULL),(17,'programming classes','Will teach advanced concepts of programming',6,16,20,'One Time',10,'testing course','Advanced','dummy.pdf','download.jfif','Success_-_468.mp4','C-python-2','2021-08-11 16:28:56','2021-08-11 16:28:56',NULL),(18,'newrrertyeryerty','new',6,12,16,'One Time',1,'some price','Beginner','sample.pdf','download.png','Success_-_468.mp4','C-python-3','2021-08-11 16:43:06','2021-08-11 16:43:06','new csadadasda');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
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

-- Dump completed on 2021-08-13  7:54:15
