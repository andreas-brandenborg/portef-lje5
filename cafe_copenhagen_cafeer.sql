-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: cafe_copenhagen
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `cafeer`
--

DROP TABLE IF EXISTS `cafeer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafeer` (
  `idCafeer` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `size` int NOT NULL,
  `wifi` tinyint NOT NULL,
  `music` tinyint NOT NULL,
  `student_discount` tinyint NOT NULL,
  PRIMARY KEY (`idCafeer`),
  UNIQUE KEY `idCafeer_UNIQUE` (`idCafeer`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeer`
--

LOCK TABLES `cafeer` WRITE;
/*!40000 ALTER TABLE `cafeer` DISABLE KEYS */;
INSERT INTO `cafeer` VALUES (1,'Paludan Bog & Café',2,3,1,1,1),(2,'Bevars',2,2,1,1,0),(3,'Café Retro',1,2,1,1,0),(4,'Studenterhuset',1,3,1,1,1),(5,'Café Nutid',1,2,1,1,0),(6,'The Laundromat Café',2,2,1,1,0),(7,'Café Plenum',2,2,1,1,0),(8,'Absalon',1,3,1,1,0),(9,'Designmuseum Danmark Bibliotek',1,2,1,0,0),(10,'Sidecar',2,2,1,1,0),(11,'Bang & Jensen',2,2,1,1,0),(12,'NOHO',2,3,1,1,0),(13,'Riccos Kaffebar (Ryesgade)',2,1,1,1,0),(14,'Blue Bike Café',2,1,1,1,1),(15,'Café Stella',2,2,1,1,1),(16,'Café Midtown',2,2,1,1,1),(17,'Wagamama',3,3,1,1,1),(18,'RizRaz',2,3,1,1,1),(19,'Café Munk',2,1,1,1,0),(20,'Kaffekilden',2,1,1,1,0),(21,'Kaffebaren på Amager',1,1,1,1,0),(22,'Café Dyrehaven',2,2,1,1,0),(23,'Café Gavlen',1,1,1,1,0),(24,'Café Sonja',1,2,1,1,0),(25,'Café Tænk',1,1,1,1,0),(26,'Café Vivaldi',2,3,1,1,0),(27,'Café Phenix',2,2,1,1,0),(28,'Café Miao',2,1,1,1,0),(29,'Café N',1,1,1,1,0),(30,'Café Blå Time',1,1,1,1,0),(31,'Café Cadeau',2,1,1,1,0),(32,'Café Feel Good',2,1,1,1,0),(33,'Café Globen',2,1,1,1,0),(34,'Café Heimdal',2,1,1,1,0),(35,'Café Kaleidoskop',2,1,1,1,0),(36,'Café Kys',2,1,1,1,0),(37,'Café Lyst',2,1,1,1,0),(38,'Café Mormor',2,1,1,1,0),(39,'Café Nöah',2,1,1,1,0),(40,'Café Obelix',2,1,1,1,0),(41,'Café Paludan',2,3,1,1,0),(42,'Café Pixie',2,1,1,1,0),(43,'Café Runddelen',2,2,1,1,0),(44,'Café Smagløs',2,2,1,1,0),(45,'Café Sokkelund',3,2,1,1,0),(46,'Café Svejk',2,2,1,1,0),(47,'Café Under Uret',2,1,1,1,0),(48,'Café Viking',2,1,1,1,0),(49,'Café Wilder',2,2,1,1,0),(50,'Café Ørsted',2,2,1,1,0);
/*!40000 ALTER TABLE `cafeer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-13 11:03:18
