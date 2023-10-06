-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: motogp
-- ------------------------------------------------------
-- Server version	8.0.33

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

--
-- Table structure for table `chart`
--

DROP TABLE IF EXISTS `chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ame` int DEFAULT NULL,
  `ara` int DEFAULT NULL,
  `arg` int DEFAULT NULL,
  `aus` int DEFAULT NULL,
  `aut` int DEFAULT NULL,
  `cat` int DEFAULT NULL,
  `fra` int DEFAULT NULL,
  `gbr` int DEFAULT NULL,
  `ger` int DEFAULT NULL,
  `ina` int DEFAULT NULL,
  `ita` int DEFAULT NULL,
  `jpn` int DEFAULT NULL,
  `leader` int DEFAULT NULL,
  `mal` int DEFAULT NULL,
  `ned` int DEFAULT NULL,
  `point` int DEFAULT NULL,
  `por` int DEFAULT NULL,
  `previous` int DEFAULT NULL,
  `qat` int DEFAULT NULL,
  `rider` varchar(255) DEFAULT NULL,
  `rsm` int DEFAULT NULL,
  `spa` int DEFAULT NULL,
  `tha` int DEFAULT NULL,
  `undefine` varchar(255) DEFAULT NULL,
  `val` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart`
--

LOCK TABLES `chart` WRITE;
/*!40000 ALTER TABLE `chart` DISABLE KEYS */;
INSERT INTO `chart` VALUES (1,11,20,11,16,25,NULL,NULL,25,NULL,1,25,NULL,108,25,25,265,8,39,NULL,'1 BAGNAIA Francesco',25,25,16,'ITA',7),(2,9,NULL,8,NULL,20,25,13,8,25,20,20,8,125,16,NULL,248,25,17,7,'2 QUARTARARO Fabio',11,20,0,'FRA',13),(3,25,25,6,11,NULL,NULL,25,13,6,5,NULL,7,154,20,5,219,NULL,29,25,'3 BASTIANINI Enea',20,8,10,'ITA',8),(4,5,16,25,7,10,11,16,7,13,7,16,0,161,6,13,212,16,5,13,'4 ESPARGARO Aleix',10,16,5,'SPA',NULL),(5,16,11,2,NULL,16,2,20,16,16,13,1,25,184,10,10,189,NULL,23,NULL,'5 MILLER Jack',0,11,20,'AUS',NULL),(6,4,13,10,6,9,8,8,5,9,8,9,20,185,8,11,188,NULL,1,20,'6 BINDER Brad',8,6,6,'RSA',20),(7,20,7,16,25,8,NULL,NULL,9,NULL,11,NULL,NULL,200,11,6,173,13,15,9,'7 RINS Alex',9,0,4,'SPA',25),(8,7,8,NULL,8,11,16,11,NULL,20,16,13,5,207,7,3,166,20,7,8,'8 ZARCO Johann',NULL,NULL,13,'FRA',NULL),(9,8,10,20,9,6,20,NULL,11,10,NULL,3,16,221,NULL,9,152,NULL,14,NULL,'9 MARTIN Jorge',7,0,7,'SPA',16),(10,0,5,3,4,4,7,NULL,10,7,25,7,11,224,3,7,149,11,3,NULL,'10 OLIVEIRA Miguel',5,4,25,'POR',11),(11,6,3,9,0,3,9,6,20,NULL,0,4,9,251,0,16,122,6,27,4,'11 VIÑALES Maverick',16,2,9,'SPA',NULL),(12,0,9,5,10,13,10,7,4,11,2,10,10,253,NULL,0,120,4,2,3,'12 MARINI Luca',13,0,0,'ITA',9),(13,10,NULL,NULL,20,NULL,NULL,10,NULL,NULL,NULL,6,13,260,9,NULL,113,10,5,11,'13 MARQUEZ Marc',NULL,13,11,'SPA',NULL),(14,NULL,6,7,13,7,NULL,4,6,5,0,11,6,262,13,20,111,1,2,NULL,'14 BEZZECCHI Marco',0,7,0,'ITA',5),(15,13,NULL,13,0,NULL,13,NULL,NULL,NULL,10,NULL,NULL,286,0,8,87,NULL,24,10,'15 MIR Joan',NULL,10,NULL,'SPA',10),(16,3,1,NULL,5,0,0,5,2,NULL,4,NULL,4,317,2,NULL,56,7,31,16,'16 ESPARGARO Pol',NULL,5,2,'SPA',NULL),(17,NULL,4,1,NULL,2,6,2,0,NULL,3,2,3,323,0,1,50,9,6,NULL,'17 MARQUEZ Alex',6,3,8,'SPA',0),(18,2,NULL,4,NULL,NULL,NULL,9,3,NULL,0,8,0,325,NULL,4,48,0,2,6,'18 NAKAGAMI Takaaki',1,9,NULL,'JPN',2),(19,0,0,NULL,NULL,NULL,3,1,1,3,9,0,2,331,5,NULL,42,3,6,5,'19 MORBIDELLI Franco',NULL,1,3,'ITA',6),(20,0,0,NULL,0,5,NULL,3,0,8,0,5,0,349,NULL,2,24,NULL,18,0,'20 DI GIANNANTONIO Fabio',0,0,0,'ITA',1),(21,1,NULL,0,NULL,1,NULL,0,0,2,NULL,0,NULL,358,NULL,0,15,5,9,2,'21 DOVIZIOSO Andrea',4,0,NULL,'ITA',NULL),(22,0,0,0,0,0,1,NULL,0,4,0,0,0,359,1,NULL,14,NULL,1,0,'22 FERNANDEZ Raul',3,NULL,1,'SPA',4),(28,22,10,19,21,21,15,16,22,19,21,17,20,NULL,17,20,373,18,NULL,12,'Cuong Nguyen',18,16,22,'VIE',18),(29,6,9,0,4,5,6,9,2,5,10,3,10,255,8,7,118,5,2,12,'Cuong 2',6,7,6,'VIE',7),(31,21,12,12,10,20,17,19,19,18,21,17,21,69,2,17,304,21,69,8,'Test',11,20,18,'Vie',0),(32,18,11,19,0,3,16,10,7,4,21,12,8,156,2,9,217,17,2,12,'Demo',12,0,9,'VIE',19);
/*!40000 ALTER TABLE `chart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06  9:01:22
