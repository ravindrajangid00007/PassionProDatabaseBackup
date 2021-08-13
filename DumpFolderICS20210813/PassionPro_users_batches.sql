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
-- Table structure for table `users_batches`
--

DROP TABLE IF EXISTS `users_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_batches` (
  `batch_fk` int DEFAULT NULL,
  `user_fk` int DEFAULT NULL,
  KEY `batch_fk` (`batch_fk`),
  KEY `user_fk` (`user_fk`),
  CONSTRAINT `users_batches_ibfk_1` FOREIGN KEY (`batch_fk`) REFERENCES `batches` (`id`),
  CONSTRAINT `users_batches_ibfk_2` FOREIGN KEY (`user_fk`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_batches`
--

LOCK TABLES `users_batches` WRITE;
/*!40000 ALTER TABLE `users_batches` DISABLE KEYS */;
INSERT INTO `users_batches` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100),(101,101),(102,102),(103,103),(104,104),(105,105),(106,106),(107,107),(108,108),(109,109),(110,110),(111,111),(112,112),(113,113),(114,114),(115,115),(116,116),(117,117),(118,118),(119,119),(120,120),(121,121),(122,122),(123,123),(124,124),(125,125),(126,126),(127,127),(128,128),(129,129),(130,130),(131,131),(132,132),(133,133),(134,134),(135,135),(136,136),(137,137),(138,138),(139,139),(140,140),(141,141),(142,142),(143,143),(144,144),(145,145),(146,146),(147,147),(148,148),(149,149),(150,150),(1,151),(2,152),(3,153),(4,154),(5,155),(6,156),(7,157),(8,158),(9,159),(10,160),(11,161),(12,162),(13,163),(14,164),(15,165),(16,166),(17,167),(18,168),(19,169),(20,170),(21,171),(22,172),(23,173),(24,174),(25,175),(26,176),(27,177),(28,178),(29,179),(30,180),(31,181),(32,182),(33,183),(34,184),(35,185),(36,186),(37,187),(38,188),(39,189),(40,190),(41,191),(42,192),(43,193),(44,194),(45,195),(46,196),(47,197),(48,198),(49,199),(50,200),(51,201),(52,202),(53,203),(54,204),(55,205),(56,206),(57,207),(58,208),(59,209),(60,210),(61,211),(62,212),(63,213),(64,214),(65,215),(66,216),(67,217),(68,218),(69,219),(70,220),(71,221),(72,222),(73,223),(74,224),(75,225),(76,226),(77,227),(78,228),(79,229),(80,230),(81,231),(82,232),(83,233),(84,234),(85,235),(86,236),(87,237),(88,238),(89,239),(90,240),(91,241),(92,242),(93,243),(94,244),(95,245),(96,246),(97,247),(98,248),(99,249),(100,250),(101,251),(102,252),(103,253),(104,254),(105,255),(106,256),(107,257),(108,258),(109,259),(110,260),(111,261),(112,262),(113,263),(114,264),(115,265),(116,266),(117,267),(118,268),(119,269),(120,270),(121,271),(122,272),(123,273),(124,274),(125,275),(126,276),(127,277),(128,278),(129,279),(130,280),(131,281),(132,282),(133,283),(134,284),(135,285),(136,286),(137,287),(138,288),(139,289),(140,290),(141,291),(142,292),(143,293),(144,294),(145,295),(146,296),(147,297),(148,298),(149,299),(150,300),(1,301),(2,302),(3,303),(4,304),(5,305),(6,306),(7,307),(8,308),(9,309),(10,310),(11,311),(12,312),(13,313),(14,314),(15,315),(16,316),(17,317),(18,318),(19,319),(20,320),(21,321),(22,322),(23,323),(24,324),(25,325),(26,326),(27,327),(28,328),(29,329),(30,330),(31,331),(32,332),(33,333),(34,334),(35,335),(36,336),(37,337),(38,338),(39,339),(40,340),(41,341),(42,342),(43,343),(44,344),(45,345),(46,346),(47,347),(48,348),(49,349),(50,350),(51,351),(52,352),(53,353),(54,354),(55,355),(56,356),(57,357),(58,358),(59,359),(60,360),(61,361),(62,362),(63,363),(64,364),(65,365),(66,366),(67,367),(68,368),(69,369),(70,370),(71,371),(72,372),(73,373),(74,374),(75,375),(76,376),(77,377),(78,378),(79,379),(80,380),(81,381),(82,382),(83,383),(84,384),(85,385),(86,386),(87,387),(88,388),(89,389),(90,390),(91,391),(92,392),(93,393),(94,394),(95,395),(96,396),(97,397),(98,398),(99,399),(100,400),(101,401),(102,402),(103,403),(104,404),(105,405),(106,406),(107,407),(108,408),(109,409),(110,410),(111,411),(112,412),(113,413),(114,414),(115,415),(116,416),(117,417),(118,418),(119,419),(120,420),(121,421),(122,422),(123,423),(124,424),(125,425),(126,426),(127,427),(128,428),(129,429),(130,430),(131,431),(132,432),(133,433),(134,434),(135,435),(136,436),(137,437),(138,438),(139,439),(140,440),(141,441),(142,442),(143,443),(144,444),(145,445),(146,446),(147,447),(148,448),(149,449),(150,450),(1,451),(2,452),(3,453),(4,454),(5,455),(6,456),(7,457),(8,458),(9,459),(10,460),(11,461),(12,462),(13,463),(14,464),(15,465),(16,466),(17,467),(18,468),(19,469),(20,470),(21,471),(22,472),(23,473),(24,474),(25,475),(26,476),(27,477),(28,478),(29,479),(30,480),(31,481),(32,482),(33,483),(34,484),(35,485),(36,486),(37,487),(38,488),(39,489),(40,490),(41,491),(42,492),(43,493),(44,494),(45,495),(46,496),(47,497),(48,498),(49,499),(50,500),(51,501),(52,502),(53,503),(54,504),(55,505),(56,506),(57,507),(58,508),(59,509),(60,510),(61,511),(62,512),(63,513),(64,514),(65,515),(66,516),(67,517),(68,518),(69,519),(70,520),(71,521),(72,522),(73,523),(74,524),(75,525),(76,526),(77,527),(78,528),(79,529),(80,530),(81,531),(82,532),(83,533),(84,534),(85,535),(86,536),(87,537),(88,538),(89,539),(90,540),(91,541),(92,542),(93,543),(94,544),(95,545),(96,546),(97,547),(98,548),(99,549),(100,550),(101,551),(102,552),(103,553),(104,554),(105,555),(106,556),(107,557),(108,558),(109,559),(110,560),(111,561),(112,562),(113,563),(114,564),(115,565),(116,566),(117,567),(118,568),(119,569),(120,570),(121,571),(122,572),(123,573),(124,574),(125,575),(126,576),(127,577),(128,578),(129,579),(130,580),(131,581),(132,582),(133,583),(134,584),(135,585),(136,586),(137,587),(138,588),(139,589),(140,590),(141,591),(142,592),(143,593),(144,594),(145,595),(146,596),(147,597),(148,598),(149,599),(150,600),(1,601),(2,602),(3,603),(4,604),(5,605),(6,606),(7,607),(8,608),(9,609),(10,610),(11,611),(12,612),(13,613),(14,614),(15,615),(16,616),(17,617),(18,618),(19,619),(20,620),(21,621),(22,622),(23,623),(24,624),(25,625),(26,626),(27,627),(28,628),(29,629),(30,630),(31,631),(32,632),(33,633),(34,634),(35,635),(36,636),(37,637),(38,638),(39,639),(40,640),(41,641),(42,642),(43,643),(44,644),(45,645),(46,646),(47,647),(48,648),(49,649),(50,650),(51,651),(52,652),(53,653),(54,654),(55,655),(56,656),(57,657),(58,658),(59,659),(60,660),(61,661),(62,662),(63,663),(64,664),(65,665),(66,666),(67,667),(68,668),(69,669),(70,670),(71,671),(72,672),(73,673),(74,674),(75,675),(76,676),(77,677),(78,678),(79,679),(80,680),(81,681),(82,682),(83,683),(84,684),(85,685),(86,686),(87,687),(88,688),(89,689),(90,690),(91,691),(92,692),(93,693),(94,694),(95,695),(96,696),(97,697),(98,698),(99,699),(100,700),(101,701),(102,702),(103,703),(104,704),(105,705),(106,706),(107,707),(108,708),(109,709),(110,710),(111,711),(112,712),(113,713),(114,714),(115,715),(116,716),(117,717),(118,718),(119,719),(120,720),(121,721),(122,722),(123,723),(124,724),(125,725),(126,726),(127,727),(128,728),(129,729),(130,730),(131,731),(132,732),(133,733),(134,734),(135,735),(136,736),(137,737),(138,738),(139,739),(140,740),(141,741),(142,742),(143,743),(144,744),(145,745),(146,746),(147,747),(148,748),(149,749),(150,750),(1,751),(2,752),(3,753),(4,754),(5,755),(6,756),(7,757),(8,758),(9,759),(10,760),(11,761),(12,762),(13,763),(14,764),(15,765),(16,766),(17,767),(18,768),(19,769),(20,770),(21,771),(22,772),(23,773),(24,774),(25,775),(26,776),(27,777),(28,778),(29,779),(30,780),(31,781),(32,782),(33,783),(34,784),(35,785),(36,786),(37,787),(38,788),(39,789),(40,790),(41,791),(42,792),(43,793),(44,794),(45,795),(46,796),(47,797),(48,798),(49,799),(50,800),(51,801),(52,802),(53,803),(54,804),(55,805),(56,806),(57,807),(58,808),(59,809),(60,810),(61,811),(62,812),(63,813),(64,814),(65,815),(66,816),(67,817),(68,818),(69,819),(70,820),(71,821),(72,822),(73,823),(74,824),(75,825),(76,826),(77,827),(78,828),(79,829),(80,830),(81,831),(82,832),(83,833),(84,834),(85,835),(86,836),(87,837),(88,838),(89,839),(90,840),(91,841),(92,842),(93,843),(94,844),(95,845),(96,846),(97,847),(98,848),(99,849),(100,850),(101,851),(102,852),(103,853),(104,854),(105,855),(106,856),(107,857),(108,858),(109,859),(110,860),(111,861),(112,862),(113,863),(114,864),(115,865),(116,866),(117,867),(118,868),(119,869),(120,870),(121,871),(122,872),(123,873),(124,874),(125,875),(126,876),(127,877),(128,878),(129,879),(130,880),(131,881),(132,882),(133,883),(134,884),(135,885),(136,886),(137,887),(138,888),(139,889),(140,890),(141,891),(142,892),(143,893),(144,894),(145,895),(146,896),(147,897),(148,898),(149,899),(150,900),(1,901),(2,902),(3,903),(4,904),(5,905),(6,906),(7,907),(8,908),(9,909),(10,910),(11,911),(12,912),(13,913),(14,914),(15,915),(16,916),(17,917),(18,918),(19,919),(20,920),(21,921),(22,922),(23,923),(24,924),(25,925),(26,926),(27,927),(28,928),(29,929),(30,930),(31,931),(32,932),(33,933),(34,934),(35,935),(36,936),(37,937),(38,938),(39,939),(40,940),(41,941),(42,942),(43,943),(44,944),(45,945),(46,946),(47,947),(48,948),(49,949),(50,950),(51,951),(52,952),(53,953),(54,954),(55,955),(56,956),(57,957),(58,958),(59,959),(60,960),(61,961),(62,962),(63,963),(64,964),(65,965),(66,966),(67,967),(68,968),(69,969),(70,970),(71,971),(72,972),(73,973),(74,974),(75,975),(76,976),(77,977),(78,978),(79,979),(80,980),(81,981),(82,982),(83,983),(84,984),(85,985),(86,986),(87,987),(88,988),(89,989),(90,990),(91,991),(92,992),(93,993),(94,994),(95,995),(96,996),(97,997),(98,998),(99,999),(100,1000),(2,1),(3,1),(1,1027),(155,1034);
/*!40000 ALTER TABLE `users_batches` ENABLE KEYS */;
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

-- Dump completed on 2021-08-13  7:53:02