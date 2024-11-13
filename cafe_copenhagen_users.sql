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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Magnus Giemsa','magnus.giemsa@gmail.com','password123','Københavns Erhvervsakademi'),(2,'Mikkel Sørensen','mikkel.sorensen@example.com','password123','Copenhagen Business School'),(3,'Sofie Larsen','sofie.larsen@example.com','password123','Danmarks Tekniske Universitet'),(4,'Jonas Nielsen','jonas.nielsen@example.com','password123','IT-Universitetet i København'),(5,'Frederik Poulsen','frederik.poulsen@example.com','password123','Københavns Universitet'),(6,'Emilie Hansen','emilie.hansen@example.com','password123','Copenhagen Business School'),(7,'Mathias Kristensen','mathias.kristensen@example.com','password123','Danmarks Tekniske Universitet'),(8,'Laura Pedersen','laura.pedersen@example.com','password123','IT-Universitetet i København'),(9,'Christian Andersen','christian.andersen@example.com','password123','Københavns Universitet'),(10,'Katrine Madsen','katrine.madsen@example.com','password123','Copenhagen Business School'),(11,'Lasse Rasmussen','lasse.rasmussen@example.com','password123','Danmarks Tekniske Universitet'),(12,'Marie Thomsen','marie.thomsen@example.com','password123','IT-Universitetet i København'),(13,'Rasmus Jakobsen','rasmus.jakobsen@example.com','password123','Københavns Universitet'),(14,'Nanna Jeppesen','nanna.jeppesen@example.com','password123','Copenhagen Business School'),(15,'Oliver Knudsen','oliver.knudsen@example.com','password123','Danmarks Tekniske Universitet'),(16,'Isabella Sørensen','isabella.sorensen@example.com','password123','IT-Universitetet i København'),(17,'Simon Jensen','simon.jensen@example.com','password123','Københavns Universitet'),(18,'Mia Frandsen','mia.frandsen@example.com','password123','Copenhagen Business School'),(19,'Alexander Møller','alexander.moller@example.com','password123','Danmarks Tekniske Universitet'),(20,'Ida Hansen','ida.hansen@example.com','password123','IT-Universitetet i København'),(21,'Sebastian Larsen','sebastian.larsen@example.com','password123','Københavns Universitet'),(22,'Sara Holm','sara.holm@example.com','password123','Copenhagen Business School'),(23,'Victor Simonsen','victor.simonsen@example.com','password123','Danmarks Tekniske Universitet'),(24,'Lærke Mikkelsen','laerke.mikkelsen@example.com','password123','IT-Universitetet i København'),(25,'Benjamin Jørgensen','benjamin.jorgensen@example.com','password123','Københavns Universitet'),(26,'Julie Rasmussen','julie.rasmussen@example.com','password123','Copenhagen Business School'),(27,'Mads Johansen','mads.johansen@example.com','password123','Danmarks Tekniske Universitet'),(28,'Emma Clausen','emma.clausen@example.com','password123','IT-Universitetet i København'),(29,'Jakob Schmidt','jakob.schmidt@example.com','password123','Københavns Universitet'),(30,'Amalie Andersen','amalie.andersen@example.com','password123','Copenhagen Business School'),(31,'Lukas Petersen','lukas.petersen@example.com','password123','Danmarks Tekniske Universitet'),(32,'Nicoline Hansen','nicoline.hansen@example.com','password123','IT-Universitetet i København'),(33,'Daniel Kristensen','daniel.kristensen@example.com','password123','Københavns Universitet'),(34,'Camilla Olsen','camilla.olsen@example.com','password123','Copenhagen Business School'),(35,'Andreas Sørensen','andreas.sorensen@example.com','password123','Danmarks Tekniske Universitet'),(36,'Caroline Nielsen','caroline.nielsen@example.com','password123','IT-Universitetet i København'),(37,'Thomas Nielsen','thomas.nielsen@example.com','password123','Københavns Universitet'),(38,'Cecilie Poulsen','cecilie.poulsen@example.com','password123','Copenhagen Business School'),(39,'Martin Christiansen','martin.christiansen@example.com','password123','Danmarks Tekniske Universitet'),(40,'Louise Henriksen','louise.henriksen@example.com','password123','IT-Universitetet i København'),(41,'Philip Knudsen','philip.knudsen@example.com','password123','Københavns Universitet'),(42,'Mette Petersen','mette.petersen@example.com','password123','Copenhagen Business School'),(43,'Jesper Hansen','jesper.hansen@example.com','password123','Danmarks Tekniske Universitet'),(44,'Tina Nielsen','tina.nielsen@example.com','password123','IT-Universitetet i København'),(45,'Kasper Larsen','kasper.larsen@example.com','password123','Københavns Universitet'),(46,'Signe Rasmussen','signe.rasmussen@example.com','password123','Copenhagen Business School'),(47,'Rikke Olsen','rikke.olsen@example.com','password123','Danmarks Tekniske Universitet'),(48,'Søren Jensen','soeren.jensen@example.com','password123','IT-Universitetet i København'),(49,'Eva Poulsen','eva.poulsen@example.com','password123','Københavns Universitet'),(50,'Tobias Madsen','tobias.madsen@example.com','password123','Copenhagen Business School');
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

-- Dump completed on 2024-11-13 11:03:18
