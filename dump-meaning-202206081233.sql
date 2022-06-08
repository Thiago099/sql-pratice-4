-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: meaning
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `correlation`
--

DROP TABLE IF EXISTS `correlation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correlation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correlation`
--

LOCK TABLES `correlation` WRITE;
/*!40000 ALTER TABLE `correlation` DISABLE KEYS */;
INSERT INTO `correlation` VALUES (1,'adjective'),(2,'instance'),(3,'subject'),(4,'causality'),(5,'changes'),(6,'contains'),(7,'actor'),(8,'takes'),(9,'provides'),(10,'parameter'),(11,'meaning'),(12,'from'),(13,'to'),(14,'each'),(15,'for'),(16,'use'),(17,'executes'),(18,'choses'),(20,'location'),(21,'do'),(22,'option');
/*!40000 ALTER TABLE `correlation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

DROP TABLE IF EXISTS `object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` VALUES (1,'for','#ACF'),(2,'instruction','#FFC'),(3,'literation rule','#FCC'),(4,'iteration data type','#FCF'),(5,'iteration range','#CFF'),(6,'array range',NULL),(7,'range range',NULL),(8,'element','#ACA'),(9,'number','#CAA'),(10,'array',NULL),(11,'range',NULL),(12,'array iteration rule','#ACC'),(13,'range iteration rule','#ACC'),(14,'iteration','#CFC'),(15,'repetition','#AAC');
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_correlation`
--

DROP TABLE IF EXISTS `object_correlation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_correlation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_object_from` int(11) DEFAULT NULL,
  `id_object_to` int(11) DEFAULT NULL,
  `id_correlation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_object_correlation_object` (`id_object_from`) USING BTREE,
  KEY `FK_object_correlation_object_2` (`id_object_to`) USING BTREE,
  KEY `FK_object_correlation_correlation` (`id_correlation`),
  CONSTRAINT `FK_object_correlation_correlation` FOREIGN KEY (`id_correlation`) REFERENCES `correlation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_object_correlation_object` FOREIGN KEY (`id_object_from`) REFERENCES `object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_object_correlation_object_2` FOREIGN KEY (`id_object_to`) REFERENCES `object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_correlation`
--

LOCK TABLES `object_correlation` WRITE;
/*!40000 ALTER TABLE `object_correlation` DISABLE KEYS */;
INSERT INTO `object_correlation` VALUES (1,1,2,20),(2,3,4,18),(4,5,6,2),(5,5,7,2),(6,6,8,14),(7,7,9,12),(8,7,9,13),(9,4,10,2),(10,4,11,2),(11,3,12,22),(12,3,13,22),(13,12,10,15),(14,13,11,15),(15,12,6,9),(16,13,7,9),(17,1,3,21),(18,14,5,8),(19,1,14,21),(20,14,2,8),(21,14,15,21);
/*!40000 ALTER TABLE `object_correlation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'meaning'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-08 12:33:32
