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
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `Cafeer_idCafeer` int NOT NULL,
  `users_idusers` int NOT NULL,
  `is_favorite` tinyint NOT NULL,
  PRIMARY KEY (`Cafeer_idCafeer`,`users_idusers`),
  KEY `fk_Cafeer_has_users_users1_idx` (`users_idusers`),
  KEY `fk_Cafeer_has_users_Cafeer_idx` (`Cafeer_idCafeer`),
  CONSTRAINT `fk_Cafeer_has_users_Cafeer` FOREIGN KEY (`Cafeer_idCafeer`) REFERENCES `cafeer` (`idCafeer`),
  CONSTRAINT `fk_Cafeer_has_users_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,1),(2,1,1),(2,12,1),(3,5,1),(3,9,1),(3,18,1),(3,20,1),(3,49,1),(4,6,1),(5,1,1),(5,2,1),(5,29,1),(6,2,1),(6,7,1),(7,3,1),(7,8,1),(7,30,1),(7,50,1),(8,3,1),(8,9,1),(8,30,1),(9,12,1),(9,13,1),(9,23,1),(9,43,1),(10,4,1),(10,5,1),(10,15,1),(10,19,1),(10,33,1),(10,36,1),(11,11,1),(12,4,1),(12,10,1),(12,14,1),(12,24,1),(13,10,1),(13,21,1),(13,37,1),(14,11,1),(14,22,1),(15,6,1),(15,14,1),(15,20,1),(15,25,1),(15,31,1),(15,41,1),(15,42,1),(16,26,1),(17,17,1),(18,7,1),(18,16,1),(18,41,1),(18,48,1),(19,8,1),(19,16,1),(19,17,1),(19,19,1),(19,27,1),(20,18,1),(20,25,1),(20,32,1),(22,13,1),(22,29,1),(22,40,1),(23,21,1),(23,40,1),(25,15,1),(25,28,1),(25,47,1),(26,39,1),(26,42,1),(26,46,1),(28,23,1),(28,31,1),(28,45,1),(29,39,1),(30,26,1),(30,32,1),(31,38,1),(31,44,1),(32,22,1),(32,33,1),(33,35,1),(33,37,1),(35,28,1),(35,34,1),(37,43,1),(39,44,1),(40,27,1),(40,38,1),(40,45,1),(43,47,1),(45,24,1),(45,34,1),(45,46,1),(46,48,1),(48,35,1),(48,49,1),(50,36,1),(50,50,1);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
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
