-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: groupomania
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci,
  `UserId` int DEFAULT NULL,
  `MessageId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_ibfk_1` (`UserId`),
  KEY `comments_ibfk_2` (`MessageId`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`MessageId`) REFERENCES `Messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` VALUES (8,'oui ca fonctionne ?',3,10,'2022-05-13 00:34:41','2022-05-13 00:34:41'),(9,'Slt Frangin tu m\' as porté chance ??‍???',1,11,'2022-05-13 00:44:53','2022-05-13 00:44:53'),(10,'yes trop cool??',2,12,'2022-05-13 15:23:47','2022-05-13 15:23:47'),(11,'oui ma puce ca fonctionne bien aujourd\'hui ?',2,10,'2022-05-13 15:25:10','2022-05-13 15:25:10'),(12,'merci Maman ?',4,10,'2022-05-13 15:27:54','2022-05-13 15:27:54'),(25,'on va essayer ?',4,12,'2022-05-13 23:13:32','2022-05-13 23:13:32'),(26,'peut être?',1,12,'2022-05-13 23:17:16','2022-05-13 23:17:16'),(31,'vraiment merci encore ??',1,11,'2022-05-14 14:56:27','2022-05-14 14:56:27'),(32,'si le temps est avec nous',1,12,'2022-05-14 18:53:03','2022-05-14 18:53:03'),(33,'pas pour le moment',1,18,'2022-05-14 22:48:33','2022-05-14 22:48:33'),(34,'decidement j\'ai que des soucis avec ce projet7',1,19,'2022-05-15 15:44:26','2022-05-15 15:44:26'),(35,'Boujour?',4,21,'2022-05-15 23:03:30','2022-05-15 23:03:30');
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dislikes`
--

DROP TABLE IF EXISTS `Dislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dislikes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `MessageId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dislikes_ibfk_1` (`UserId`),
  KEY `dislikes_ibfk_2` (`MessageId`),
  CONSTRAINT `dislikes_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dislikes_ibfk_2` FOREIGN KEY (`MessageId`) REFERENCES `Messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dislikes`
--

LOCK TABLES `Dislikes` WRITE;
/*!40000 ALTER TABLE `Dislikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Dislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Likes`
--

DROP TABLE IF EXISTS `Likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL,
  `MessageId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_ibfk_1` (`UserId`),
  KEY `likes_ibfk_2` (`MessageId`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`MessageId`) REFERENCES `Messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Likes`
--

LOCK TABLES `Likes` WRITE;
/*!40000 ALTER TABLE `Likes` DISABLE KEYS */;
INSERT INTO `Likes` VALUES (7,2,10,'2022-05-13 15:25:43','2022-05-13 15:25:43'),(11,4,21,'2022-05-15 23:03:48','2022-05-15 23:03:48'),(12,4,12,'2022-05-15 23:04:50','2022-05-15 23:04:50'),(13,3,22,'2022-05-15 23:06:47','2022-05-15 23:06:47');
/*!40000 ALTER TABLE `Likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (10,4,NULL,'j\'ai l\'impression que mon profile fonctionne ',NULL,'2022-05-13 00:17:00','2022-05-13 00:17:00'),(11,3,NULL,'bonjour moi c\'est Stevens',NULL,'2022-05-13 00:34:02','2022-05-13 00:34:02'),(12,1,NULL,'slt on vendredi  c\'est le week end?',NULL,'2022-05-13 15:20:52','2022-05-13 15:20:52'),(18,1,NULL,'pas de message today',NULL,'2022-05-14 21:30:05','2022-05-14 21:30:05'),(19,1,NULL,'bonjour',NULL,'2022-05-15 15:28:10','2022-05-15 15:28:10'),(21,2,NULL,'bonjour',NULL,'2022-05-15 17:18:24','2022-05-15 17:18:24'),(22,4,NULL,'bonsoir',NULL,'2022-05-15 23:02:59','2022-05-15 23:02:59'),(24,3,NULL,'bonjour a vous','http://localhost:3000/images/africa-g1f1083ad5_1280.jpg1652687444908.jpg','2022-05-16 07:50:45','2022-05-16 07:50:45'),(25,2,NULL,'bonjour','http://localhost:3000/images/mangas_divers027.gif1652688050154.undefined','2022-05-16 08:00:50','2022-05-16 08:00:50');
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'1a0907c9f83c712ba0f9115a7d0ca698cb20eb2a25928ae7c77c50de0653d10a2decc4efc3f183f111787033c02a2dcc746da18547c38e481e0c76950dba73a3','Yves','$2b$10$aKcU1ico05r6PfhkQ1IMyO4sXK4ue1NpL51vM0/NmnpQoXEpr7f.m','http://localhost:3000/images/yvesg.JPG1652655672976.jpg','Admin',1,'2022-05-12 10:57:05','2022-05-15 23:01:13'),(2,'f02fd0152ede22dee8a14f1e6da67aca16913ed73b7b52155ce432e519ea2ec363b5ce34516a900a945c8e5e29d8736eee081bbf1ce6ba37679086a8f9d8198d','Mado','$2b$10$5MrZwg1A43CVh3BjBjlBXeTneC5fZm7GolgxvhIVo9Lh/39PgpLBS','http://localhost:3000/images/7G5A8198.jpeg1652655580950.jpg','',0,'2022-05-12 10:58:04','2022-05-15 22:59:41'),(3,'dfb3d476170259d59b16c5534bd93351a22c6612609d01c7cd93ffe9e4e08981123e58c4bf61be6f9289e0bc5c8708ad1c783fe0a23c6cdf289c1c19b681a142','titi','$2b$10$BT8AtujBg.qoLJ3eububge47BL5q5WvsivX9TBFBCeGVF5Mfury9q','http://localhost:3000/images/afrique.jpg1652655965444.jpg','',0,'2022-05-12 15:58:22','2022-05-15 23:06:05'),(4,'2246997ad03090864480dd4b4ec3bbdc96ea887ab0dfadbc13936fd400925f254e712ec2c26d2e445297b02f7b8fca7f7ae28656823a5dc29070c2c3f598cd05','tyty','$2b$10$psz3c/D5VFu8SEIf4cH9uumI7tsXDUqmkZiDPMcIz0s.p6PaOpt0K','http://localhost:3000/images/afro_logo.jpg1652655738410.jpg','',0,'2022-05-12 18:10:09','2022-05-15 23:02:18');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 10:56:29
