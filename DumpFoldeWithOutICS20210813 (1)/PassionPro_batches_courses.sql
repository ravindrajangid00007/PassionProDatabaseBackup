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
-- Table structure for table `batches_courses`
--

DROP TABLE IF EXISTS `batches_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batches_courses` (
  `batch_fk` int DEFAULT NULL,
  `course_fk` int DEFAULT NULL,
  KEY `batch_fk` (`batch_fk`),
  KEY `course_fk` (`course_fk`),
  CONSTRAINT `batches_courses_ibfk_1` FOREIGN KEY (`batch_fk`) REFERENCES `batches` (`id`),
  CONSTRAINT `batches_courses_ibfk_2` FOREIGN KEY (`course_fk`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches_courses`
--

LOCK TABLES `batches_courses` WRITE;
/*!40000 ALTER TABLE `batches_courses` DISABLE KEYS */;
INSERT INTO `batches_courses` VALUES (2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,1),(17,2),(18,3),(19,4),(20,5),(21,6),(22,7),(23,8),(24,9),(25,10),(26,11),(27,12),(28,13),(29,14),(30,15),(31,1),(32,2),(33,3),(34,4),(35,5),(36,6),(37,7),(38,8),(39,9),(40,10),(41,11),(42,12),(43,13),(44,14),(45,15),(46,1),(47,2),(48,3),(49,4),(50,5),(51,6),(52,7),(53,8),(54,9),(55,10),(56,11),(57,12),(58,13),(59,14),(60,15),(61,1),(62,2),(63,3),(64,4),(65,5),(66,6),(67,7),(68,8),(69,9),(70,10),(71,11),(72,12),(73,13),(74,14),(75,15),(76,1),(77,2),(78,3),(79,4),(80,5),(81,6),(82,7),(83,8),(84,9),(85,10),(86,11),(87,12),(88,13),(89,14),(90,15),(91,1),(92,2),(93,3),(94,4),(95,5),(96,6),(97,7),(98,8),(99,9),(100,10),(101,11),(102,12),(103,13),(104,14),(105,15),(106,1),(107,2),(108,3),(109,4),(110,5),(111,6),(112,7),(113,8),(114,9),(115,10),(116,11),(117,12),(118,13),(119,14),(120,15),(121,1),(122,2),(123,3),(124,4),(125,5),(126,6),(127,7),(128,8),(129,9),(130,10),(131,11),(132,12),(133,13),(134,14),(135,15),(136,1),(137,2),(138,3),(139,4),(140,5),(141,6),(142,7),(143,8),(144,9),(145,10),(146,11),(147,12),(148,13),(149,14),(150,15),(152,14),(151,14),(154,16),(153,6),(1,6),(155,8);
/*!40000 ALTER TABLE `batches_courses` ENABLE KEYS */;
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

-- Dump completed on 2021-08-13  7:54:30
