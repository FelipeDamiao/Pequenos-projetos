-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: jogo
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
-- Table structure for table `juiz`
--

DROP TABLE IF EXISTS `juiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juiz` (
  `idjuiz` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idjuiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juiz`
--

LOCK TABLES `juiz` WRITE;
/*!40000 ALTER TABLE `juiz` DISABLE KEYS */;
INSERT INTO `juiz` VALUES (1,'Aluizio','1975-03-24','SãoPaulo'),(2,'Barbosa','1985-04-25','RiodeJaneiro'),(3,'Carlos','1974-05-20','Ceará'),(4,'Darius','1965-01-17','Natal'),(5,'Estênio','1995-07-12','Curralinho');
/*!40000 ALTER TABLE `juiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juiz_apita_partida`
--

DROP TABLE IF EXISTS `juiz_apita_partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juiz_apita_partida` (
  `idapita` int NOT NULL,
  `juiz_idjuiz` int NOT NULL,
  `partida_idpartida` int NOT NULL,
  PRIMARY KEY (`idapita`),
  KEY `fk_juiz_has_partida_partida1_idx` (`partida_idpartida`),
  KEY `fk_juiz_has_partida_juiz_idx` (`juiz_idjuiz`),
  CONSTRAINT `fk_juiz_has_partida_juiz` FOREIGN KEY (`juiz_idjuiz`) REFERENCES `juiz` (`idjuiz`),
  CONSTRAINT `fk_juiz_has_partida_partida1` FOREIGN KEY (`partida_idpartida`) REFERENCES `partida` (`idpartida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juiz_apita_partida`
--

LOCK TABLES `juiz_apita_partida` WRITE;
/*!40000 ALTER TABLE `juiz_apita_partida` DISABLE KEYS */;
INSERT INTO `juiz_apita_partida` VALUES (21,1,11),(22,2,12),(23,4,13),(24,4,14),(25,5,15);
/*!40000 ALTER TABLE `juiz_apita_partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partida` (
  `idpartida` int NOT NULL,
  `timea` varchar(45) DEFAULT NULL,
  `timeb` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `esporte` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpartida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (11,'Botafogo','Fluminense','2022-01-01','2022-01-01 12:00:00','Maracanã','Futebol'),(12,'Vasco','Flamengo','2022-01-02','2022-01-02 13:00:00','SãoJánuario','Futebol'),(13,'Madureira','Resende','2022-01-03','2022-01-03 14:00:00','MoçaBonita','Futebol'),(14,'Bangu','Portuguesa','2022-01-04','2022-01-04 15:00:00','MoçaBonita','Futebol'),(15,'Natal','Osasco','2022-01-05','2022-01-05 16:00:00','Maracanazinho','Volêi');
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28 15:58:42
