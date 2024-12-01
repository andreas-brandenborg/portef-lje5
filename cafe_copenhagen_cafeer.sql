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
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  PRIMARY KEY (`idCafeer`),
  UNIQUE KEY `idCafeer_UNIQUE` (`idCafeer`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafeer`
--

LOCK TABLES `cafeer` WRITE;
/*!40000 ALTER TABLE `cafeer` DISABLE KEYS */;
INSERT INTO `cafeer` VALUES (1,'Paludan Bog & Café',2,3,1,1,1,55.6803630,12.5732630),(2,'Bevars',2,2,1,1,0,55.6835000,12.5775000),(3,'Café Retro',1,2,1,1,0,55.6785000,12.5735000),(4,'Studenterhuset',1,3,1,1,1,55.6805000,12.5735000),(5,'Café Nutid',1,2,1,1,0,55.6785000,12.5735000),(6,'The Laundromat Café',2,2,1,1,0,55.6865000,12.5705000),(7,'Café Plenum',2,2,1,1,0,55.6785000,12.5735000),(8,'Absalon',1,3,1,1,0,55.6685000,12.5455000),(9,'Designmuseum Danmark Bibliotek',1,2,1,0,0,55.6845000,12.5915000),(10,'Sidecar',2,2,1,1,0,55.6865000,12.5555000),(11,'Bang & Jensen',2,2,1,1,0,55.6685000,12.5555000),(12,'NOHO',2,3,1,1,0,55.6755000,12.5655000),(13,'Riccos Kaffebar (Ryesgade)',2,1,1,1,0,55.6935000,12.5705000),(14,'Blue Bike Café',2,1,1,1,1,55.6785000,12.5735000),(15,'Café Stella',2,2,1,1,1,55.6785000,12.5735000),(16,'Café Midtown',2,2,1,1,1,55.6785000,12.5735000),(17,'Wagamama',3,3,1,1,1,55.6765000,12.5685000),(18,'RizRaz',2,3,1,1,1,55.6785000,12.5735000),(19,'Café Munk',2,1,1,1,0,55.6785000,12.5735000),(20,'Kaffekilden',2,1,1,1,0,55.6785000,12.5735000),(21,'Kaffebaren på Amager',1,1,1,1,0,55.6605000,12.6005000),(22,'Café Dyrehaven',2,2,1,1,0,55.6685000,12.5555000),(23,'Café Gavlen',1,1,1,1,0,55.6785000,12.5735000),(24,'Café Sonja',1,2,1,1,0,55.6685000,12.5555000),(25,'Café Tænk',1,1,1,1,0,55.6785000,12.5735000),(26,'Café Vivaldi',2,3,1,1,0,55.6785000,12.5735000),(27,'Café Phenix',2,2,1,1,0,55.6785000,12.5735000),(28,'Café Miao',2,1,1,1,0,55.6785000,12.5735000),(29,'Café N',1,1,1,1,0,55.6785000,12.5735000),(30,'Café Blå Time',1,1,1,1,0,55.6785000,12.5735000),(31,'Café Cadeau',2,1,1,1,0,55.6785000,12.5735000),(32,'Café Feel Good',2,1,1,1,0,55.6785000,12.5735000),(33,'Café Globen',2,1,1,1,0,55.6785000,12.5735000),(34,'Café Heimdal',2,1,1,1,0,55.6785000,12.5735000),(35,'Café Kaleidoskop',2,1,1,1,0,55.6785000,12.5735000),(36,'Café Kys',2,1,1,1,0,55.6785000,12.5735000),(37,'Café Lyst',2,1,1,1,0,55.6785000,12.5735000),(38,'Café Mormor',2,1,1,1,0,55.6785000,12.5735000),(39,'Café Nöah',2,1,1,1,0,55.6785000,12.5735000),(40,'Café Obelix',2,1,1,1,0,55.6785000,12.5735000),(41,'Café Paludan',2,3,1,1,0,55.6785000,12.5735000),(42,'Café Pixie',2,1,1,1,0,55.6785000,12.5735000),(43,'Café Runddelen',2,2,1,1,0,55.6785000,12.5735000),(44,'Café Smagløs',2,2,1,1,0,55.6803630,12.5732630),(45,'Café Sokkelund',3,2,1,1,0,55.7025000,12.5835000),(46,'Café Svejk',2,2,1,1,0,55.6825000,12.5555000),(47,'Café Under Uret',2,1,1,1,0,55.6785000,12.5735000),(48,'Café Viking',2,1,1,1,0,55.6785000,12.5735000),(49,'Café Wilder',2,2,1,1,0,55.6785000,12.5735000),(50,'Café Ørsted',2,2,1,1,0,55.6785000,12.5735000),(51,'Magnus Cafe',1,1,0,0,0,1.0000000,1.0000000),(52,'Andreas Cafe',1,1,0,0,0,1.0000000,1.0000000),(53,'Victor Cafe',1,1,0,0,0,1.0000000,1.0000000),(54,'Victor Cafe',1,1,1,1,1,1.0000000,1.0000000),(55,'Cafe Magnus\'san',3,3,1,1,1,1.0000000,1.0000000),(56,'Munkens',2,2,1,1,0,1.0000000,1.0000000),(57,'Charlottes cafe',3,3,1,1,1,1.0000000,1.0000000);
/*!40000 ALTER TABLE `cafeer` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `school` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusers`),
  UNIQUE KEY `idusers_UNIQUE` (`idusers`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Magnus Giemsa','magnus.giemsa@gmail.com','password123','Københavns Erhvervsakademi'),(2,'Mikkel Sørensen','mikkel.sorensen@example.com','password123','Copenhagen Business School'),(3,'Sofie Larsen','sofie.larsen@example.com','password123','Danmarks Tekniske Universitet'),(4,'Jonas Nielsen','jonas.nielsen@example.com','password123','IT-Universitetet i København'),(5,'Frederik Poulsen','frederik.poulsen@example.com','password123','Københavns Universitet'),(6,'Emilie Hansen','emilie.hansen@example.com','password123','Copenhagen Business School'),(7,'Mathias Kristensen','mathias.kristensen@example.com','password123','Danmarks Tekniske Universitet'),(8,'Laura Pedersen','laura.pedersen@example.com','password123','IT-Universitetet i København'),(9,'Christian Andersen','christian.andersen@example.com','password123','Københavns Universitet'),(10,'Katrine Madsen','katrine.madsen@example.com','password123','Copenhagen Business School'),(11,'Lasse Rasmussen','lasse.rasmussen@example.com','password123','Danmarks Tekniske Universitet'),(12,'Marie Thomsen','marie.thomsen@example.com','password123','IT-Universitetet i København'),(13,'Rasmus Jakobsen','rasmus.jakobsen@example.com','password123','Københavns Universitet'),(14,'Nanna Jeppesen','nanna.jeppesen@example.com','password123','Copenhagen Business School'),(15,'Oliver Knudsen','oliver.knudsen@example.com','password123','Danmarks Tekniske Universitet'),(16,'Isabella Sørensen','isabella.sorensen@example.com','password123','IT-Universitetet i København'),(17,'Simon Jensen','simon.jensen@example.com','password123','Københavns Universitet'),(18,'Mia Frandsen','mia.frandsen@example.com','password123','Copenhagen Business School'),(19,'Alexander Møller','alexander.moller@example.com','password123','Danmarks Tekniske Universitet'),(20,'Ida Hansen','ida.hansen@example.com','password123','IT-Universitetet i København'),(21,'Sebastian Larsen','sebastian.larsen@example.com','password123','Københavns Universitet'),(22,'Sara Holm','sara.holm@example.com','password123','Copenhagen Business School'),(23,'Victor Simonsen','victor.simonsen@example.com','password123','Danmarks Tekniske Universitet'),(24,'Lærke Mikkelsen','laerke.mikkelsen@example.com','password123','IT-Universitetet i København'),(25,'Benjamin Jørgensen','benjamin.jorgensen@example.com','password123','Københavns Universitet'),(26,'Julie Rasmussen','julie.rasmussen@example.com','password123','Copenhagen Business School'),(27,'Mads Johansen','mads.johansen@example.com','password123','Danmarks Tekniske Universitet'),(28,'Emma Clausen','emma.clausen@example.com','password123','IT-Universitetet i København'),(29,'Jakob Schmidt','jakob.schmidt@example.com','password123','Københavns Universitet'),(30,'Amalie Andersen','amalie.andersen@example.com','password123','Copenhagen Business School'),(31,'Lukas Petersen','lukas.petersen@example.com','password123','Danmarks Tekniske Universitet'),(32,'Nicoline Hansen','nicoline.hansen@example.com','password123','IT-Universitetet i København'),(33,'Daniel Kristensen','daniel.kristensen@example.com','password123','Københavns Universitet'),(34,'Camilla Olsen','camilla.olsen@example.com','password123','Copenhagen Business School'),(35,'Andreas Sørensen','andreas.sorensen@example.com','password123','Danmarks Tekniske Universitet'),(36,'Caroline Nielsen','caroline.nielsen@example.com','password123','IT-Universitetet i København'),(37,'Thomas Nielsen','thomas.nielsen@example.com','password123','Københavns Universitet'),(38,'Cecilie Poulsen','cecilie.poulsen@example.com','password123','Copenhagen Business School'),(39,'Martin Christiansen','martin.christiansen@example.com','password123','Danmarks Tekniske Universitet'),(40,'Louise Henriksen','louise.henriksen@example.com','password123','IT-Universitetet i København'),(41,'Philip Knudsen','philip.knudsen@example.com','password123','Københavns Universitet'),(42,'Mette Petersen','mette.petersen@example.com','password123','Copenhagen Business School'),(43,'Jesper Hansen','jesper.hansen@example.com','password123','Danmarks Tekniske Universitet'),(44,'Tina Nielsen','tina.nielsen@example.com','password123','IT-Universitetet i København'),(45,'Kasper Larsen','kasper.larsen@example.com','password123','Københavns Universitet'),(46,'Signe Rasmussen','signe.rasmussen@example.com','password123','Copenhagen Business School'),(47,'Rikke Olsen','rikke.olsen@example.com','password123','Danmarks Tekniske Universitet'),(48,'Søren Jensen','soeren.jensen@example.com','password123','IT-Universitetet i København'),(49,'Eva Poulsen','eva.poulsen@example.com','password123','Københavns Universitet'),(50,'Tobias Madsen','tobias.madsen@example.com','password123','Copenhagen Business School'),(51,'Magnus Cafe','undefined','undefined','undefined'),(53,'Andreas','andreas.brandenborg@gmail.com','pasword123','Københavns Erhversakademi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-01 11:36:24
