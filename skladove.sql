-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: skladove
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `elektronika`
--

DROP TABLE IF EXISTS `elektronika`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elektronika` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL DEFAULT '',
  `cena` varchar(50) NOT NULL DEFAULT '',
  `broika` int NOT NULL DEFAULT '0',
  `opisanie` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elektronika`
--

LOCK TABLES `elektronika` WRITE;
/*!40000 ALTER TABLE `elektronika` DISABLE KEYS */;
INSERT INTO `elektronika` VALUES (1,'klaviatura','12.50',47,'Klaviatura 12.50lv'),(2,'monitor','200.00',100,'Monitor 200.00lv'),(3,'uredba','300.00',98,'Uredba 300.00lv'),(4,'lampa','20.00',95,'Lampa 20.00lv');
/*!40000 ALTER TABLE `elektronika` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitari`
--

DROP TABLE IF EXISTS `kitari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitari` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `cena` varchar(50) NOT NULL,
  `broika` int NOT NULL,
  `opisanie` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitari`
--

LOCK TABLES `kitari` WRITE;
/*!40000 ALTER TABLE `kitari` DISABLE KEYS */;
/*!40000 ALTER TABLE `kitari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paintings`
--

DROP TABLE IF EXISTS `paintings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paintings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `cena` varchar(50) NOT NULL,
  `broika` int NOT NULL,
  `opisanie` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paintings`
--

LOCK TABLES `paintings` WRITE;
/*!40000 ALTER TABLE `paintings` DISABLE KEYS */;
INSERT INTO `paintings` VALUES (1,'rv-RC0','35.50',3,'None'),(2,'rz-RC1','63.45',2,'None'),(3,'rz-RC2','65.00',5,'None');
/*!40000 ALTER TABLE `paintings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(255) NOT NULL DEFAULT '',
  `cena` varchar(10) NOT NULL DEFAULT '',
  `broika` int NOT NULL DEFAULT '0',
  `sklad` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_orders`
--

LOCK TABLES `pending_orders` WRITE;
/*!40000 ALTER TABLE `pending_orders` DISABLE KEYS */;
INSERT INTO `pending_orders` VALUES (45,'morkov','0.50',1,'zelenchuci'),(46,'patladjan','14.40',12,'zelenchuci'),(47,'klaviatura','25.00',2,'elektronika'),(48,'morkov','1.00',2,'zelenchuci'),(49,'patladjan','14.40',12,'zelenchuci'),(50,'morkov','0.50',1,'zelenchuci'),(51,'klaviatura','25.00',2,'elektronika'),(52,'morkov','0.50',1,'zelenchuci'),(53,'klaviatura','25.00',2,'elektronika'),(54,'morkov','0.50',1,'zelenchuci'),(55,'klaviatura','25.00',2,'elektronika'),(56,'morkov','0.50',1,'zelenchuci'),(57,'klaviatura','25.00',2,'elektronika'),(58,'morkov','0.50',1,'zelenchuci'),(59,'morkov','0.50',1,'zelenchuci'),(60,'klaviatura','25.00',2,'elektronika'),(61,'morkov','0.50',1,'zelenchuci'),(62,'klaviatura','25.00',2,'elektronika'),(63,'morkov','0.50',1,'zelenchuci'),(64,'klaviatura','25.00',2,'elektronika'),(65,'morkov','0.50',1,'zelenchuci'),(66,'klaviatura','25.00',2,'elektronika'),(67,'morkov','0.50',1,'zelenchuci'),(68,'klaviatura','12.50',1,'elektronika');
/*!40000 ALTER TABLE `pending_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spisaniq`
--

DROP TABLE IF EXISTS `spisaniq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spisaniq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `cena` varchar(50) NOT NULL,
  `broika` int NOT NULL,
  `opisanie` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spisaniq`
--

LOCK TABLES `spisaniq` WRITE;
/*!40000 ALTER TABLE `spisaniq` DISABLE KEYS */;
/*!40000 ALTER TABLE `spisaniq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textil`
--

DROP TABLE IF EXISTS `textil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `cena` varchar(50) NOT NULL,
  `broika` int NOT NULL,
  `opisanie` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textil`
--

LOCK TABLES `textil` WRITE;
/*!40000 ALTER TABLE `textil` DISABLE KEYS */;
/*!40000 ALTER TABLE `textil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `what`
--

DROP TABLE IF EXISTS `what`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `what` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL,
  `cena` varchar(50) NOT NULL,
  `broika` int NOT NULL,
  `opisanie` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `what`
--

LOCK TABLES `what` WRITE;
/*!40000 ALTER TABLE `what` DISABLE KEYS */;
INSERT INTO `what` VALUES (1,'pyramid (glass)','32.65',20,'Pyramid made of glass');
/*!40000 ALTER TABLE `what` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zelenchuci`
--

DROP TABLE IF EXISTS `zelenchuci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zelenchuci` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) NOT NULL DEFAULT '',
  `cena` varchar(50) NOT NULL DEFAULT '',
  `broika` int NOT NULL DEFAULT '0',
  `opisanie` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zelenchuci`
--

LOCK TABLES `zelenchuci` WRITE;
/*!40000 ALTER TABLE `zelenchuci` DISABLE KEYS */;
INSERT INTO `zelenchuci` VALUES (1,'morkov','0.50',56,'Morkov 0.50lv'),(2,'kartof','0.40',100,'Kartof 0.40lv'),(3,'domat','0.65',93,'Domat 0.65lv'),(4,'krastavica','0.70',63,'Krastavica 0.70lv'),(5,'patladjan','1.20',76,'Sin patladjan 1.20lv');
/*!40000 ALTER TABLE `zelenchuci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'skladove'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-25  0:45:52
