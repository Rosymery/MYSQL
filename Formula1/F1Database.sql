-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: formula1
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `tb_circuito`
--

DROP TABLE IF EXISTS `tb_circuito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_circuito` (
  `ID_CIRCUITO` tinyint NOT NULL AUTO_INCREMENT,
  `NM_CIRCUITO` varchar(25) NOT NULL,
  `NR_EXTENSAO` int NOT NULL,
  `ID_PAIS` tinyint NOT NULL,
  PRIMARY KEY (`ID_CIRCUITO`),
  KEY `fk_ID_PAIS_idx` (`ID_PAIS`),
  CONSTRAINT `fk_ID_PAIS` FOREIGN KEY (`ID_PAIS`) REFERENCES `tb_pais` (`ID_PAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_circuito`
--

LOCK TABLES `tb_circuito` WRITE;
/*!40000 ALTER TABLE `tb_circuito` DISABLE KEYS */;
INSERT INTO `tb_circuito` VALUES (1,'MELBOURNE',5303,1),(2,'SAKHIR',5412,2),(3,'XANGAI',5451,3),(4,'BAKU',6003,4),(5,'BARCELONA',4655,5),(6,'MONTE CARLO',3337,6),(7,'MONTREAL',4361,7),(8,'PAUL RICARD',5842,8),(9,'SPIELBERG',4318,9),(10,'SILVERSTONE',5891,10),(11,'HOCKENHEIM',4574,11),(12,'HUNGARORING',4381,12),(13,'SPA-FRANCORCHAMPS',7004,13),(14,'MONZA',5793,14),(15,'MARINA BAY',5063,15),(16,'SOCHI',5848,16),(17,'SUZUKA',5807,17),(18,'HERMANOS RODRIGUEZ',4304,18),(19,'AUSTIN',5513,19),(20,'INTERLAGOS',4309,20),(21,'YAS MARINA',5554,21);
/*!40000 ALTER TABLE `tb_circuito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_equipe`
--

DROP TABLE IF EXISTS `tb_equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_equipe` (
  `ID_EQUIPE` tinyint NOT NULL AUTO_INCREMENT,
  `NM_EQUIPE` varchar(25) NOT NULL,
  `ID_PAIS` tinyint NOT NULL,
  PRIMARY KEY (`ID_EQUIPE`),
  KEY `fk_ID_PAIS2_idx` (`ID_PAIS`),
  CONSTRAINT `fk_ID_PAIS2` FOREIGN KEY (`ID_PAIS`) REFERENCES `tb_pais` (`ID_PAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipe`
--

LOCK TABLES `tb_equipe` WRITE;
/*!40000 ALTER TABLE `tb_equipe` DISABLE KEYS */;
INSERT INTO `tb_equipe` VALUES (1,'MERCEDES',11),(2,'FERRARI',14),(3,'RED BULL',10),(4,'McLAREN',10),(5,'RENAULT',8),(6,'TORO ROSSO',14),(7,'RACING POINT',10),(8,'ALFA ROMEO',14),(9,'HAAS',19),(10,'WILLIAMS',10);
/*!40000 ALTER TABLE `tb_equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pais`
--

DROP TABLE IF EXISTS `tb_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pais` (
  `ID_PAIS` tinyint NOT NULL AUTO_INCREMENT,
  `NM_PAIS` varchar(25) NOT NULL,
  `NR_POPULACAO` int NOT NULL,
  PRIMARY KEY (`ID_PAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pais`
--

LOCK TABLES `tb_pais` WRITE;
/*!40000 ALTER TABLE `tb_pais` DISABLE KEYS */;
INSERT INTO `tb_pais` VALUES (1,'AUSTRÁLIA',25499884),(2,'BAREIN',1701575),(3,'CHINA',1439323776),(4,'AZERBAIJÃO',10139177),(5,'ESPANHA',46754778),(6,'MÔNACO',39242),(7,'CANADÁ',37742154),(8,'FRANÇA',65273511),(9,'ÁUSTRIA',9006398),(10,'INGLATERRA',67886011),(11,'ALEMANHA',83783942),(12,'HUNGRIA',9660351),(13,'BÉLGICA',11589623),(14,'ITÁLIA',60461826),(15,'SINGAPURA',5850342),(16,'RÚSSIA',145934462),(17,'JAPÃO',126476461),(18,'MÉXICO',128932753),(19,'ESTADOS UNIDOS',331002651),(20,'BRASIL',211756692),(21,'ABU DHABI',1450000),(22,'FINLANDIA',5540720),(23,'HOLANDA',17134872),(24,'ESPANHA',46754778),(25,'TAILANDIA',69799978),(26,'AUSTRALIA',25499884),(27,'DINAMARCA',5792202),(28,'POLONIA',37846611);
/*!40000 ALTER TABLE `tb_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_piloto`
--

DROP TABLE IF EXISTS `tb_piloto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_piloto` (
  `ID_PILOTO` tinyint NOT NULL AUTO_INCREMENT,
  `NM_PILOTO` varchar(25) NOT NULL,
  `DT_NASCIMENTO` date NOT NULL,
  `ID_PAIS` tinyint NOT NULL,
  `ID_EQUIPE` tinyint NOT NULL,
  PRIMARY KEY (`ID_PILOTO`),
  KEY `fk_ID_PAIS3_idx` (`ID_PAIS`),
  KEY `fk_ID_EQUIPE_idx` (`ID_EQUIPE`),
  CONSTRAINT `fk_ID_EQUIPE` FOREIGN KEY (`ID_EQUIPE`) REFERENCES `tb_equipe` (`ID_EQUIPE`),
  CONSTRAINT `fk_ID_PAIS3` FOREIGN KEY (`ID_PAIS`) REFERENCES `tb_pais` (`ID_PAIS`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_piloto`
--

LOCK TABLES `tb_piloto` WRITE;
/*!40000 ALTER TABLE `tb_piloto` DISABLE KEYS */;
INSERT INTO `tb_piloto` VALUES (1,'LEWIS HAMILTON','1985-02-15',10,1),(2,'VALTTERI BOTTAS','1989-08-28',22,1),(3,'MAX VERSTAPPEN','1997-09-30',23,3),(4,'CHARLES LECLERC','1997-10-16',6,2),(5,'SEBASTIAN VETTEL','1987-07-03',11,2),(6,'CARLOS SAINZ JR.','1994-09-21',5,4),(7,'PIERRE GASLY','1996-02-07',8,3),(8,'ALEXANDER ALBON','1996-03-23',25,6),(9,'DANIEL RICCIARDO','1989-07-01',1,5),(10,'SERGIO PÉREZ','1990-01-26',18,7),(11,'LANDO NORRIS','1999-11-13',10,4),(12,'KIMI RAIKKONEN','1979-10-17',22,8),(13,'NICO HULKENBERG','1987-08-19',11,5),(14,'DANIIL KVYAT','1994-04-26',16,6),(15,'LANCE STROLL','1998-10-29',7,7),(16,'KEVIN MAGNUSSEN','1992-10-05',27,9),(17,'ANTONIO GIOVINAZZI','1993-12-14',14,8),(18,'ROMAIN GROSJEAN','1986-04-17',8,9),(19,'ROBERT KUBICA','1984-12-07',28,10),(20,'GEORGE RUSSELL','1998-02-15',10,10);
/*!40000 ALTER TABLE `tb_piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_prova`
--

DROP TABLE IF EXISTS `tb_prova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_prova` (
  `ID_PROVA` tinyint NOT NULL AUTO_INCREMENT,
  `DT_PROVA` date NOT NULL,
  `NM_SITUACAO` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID_CIRCUITO` tinyint NOT NULL,
  PRIMARY KEY (`ID_PROVA`),
  KEY `fk_ID_CIRCUITO_idx` (`ID_CIRCUITO`),
  CONSTRAINT `fk_ID_CIRCUITO` FOREIGN KEY (`ID_CIRCUITO`) REFERENCES `tb_circuito` (`ID_CIRCUITO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_prova`
--

LOCK TABLES `tb_prova` WRITE;
/*!40000 ALTER TABLE `tb_prova` DISABLE KEYS */;
INSERT INTO `tb_prova` VALUES (1,'2019-03-17','MELBOURNE',1),(2,'1931-03-01','SAKHIR',2),(3,'2019-04-14','XANGAI',3),(4,'2019-04-28','BAKU',4),(5,'2019-05-12','BARCELONA',5),(6,'2019-05-26','MONTE CARLO',6),(7,'2019-06-01','MONTREAL',7),(8,'2019-06-01','PAUL RICARD',8),(9,'2019-06-01','SPIELBERG',9),(10,'2019-07-01','SILVERSTONE',10),(11,'2019-07-01','HOCKENHEIM',11),(12,'2019-08-01','HUNGARORING',12),(13,'2019-09-01','SPA-FRANCORCHAMPS',13),(14,'2019-09-08','MONZA',14),(15,'2019-09-22','MARINA BAY',15),(16,'2019-09-29','SOCHI',16),(17,'2019-10-01','SUZUKA',17),(18,'2019-10-01','HERMANOS RODRIGUEZ',18),(19,'2019-11-01','AUSTIN',19),(20,'2019-11-01','INTERLAGOS',20),(21,'2019-12-01','YAS MARINA',21);
/*!40000 ALTER TABLE `tb_prova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resultado`
--

DROP TABLE IF EXISTS `tb_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_resultado` (
  `ID_PROVA` tinyint NOT NULL,
  `ID_PILOTO` tinyint NOT NULL,
  `NR_TEMPO_PROVA` time NOT NULL,
  `NR_COLOC_FINAL` tinyint NOT NULL,
  `NR_POSICAO_GRID` tinyint NOT NULL,
  `NR_MELHOR_VOLTA` tinyint NOT NULL,
  PRIMARY KEY (`ID_PROVA`,`ID_PILOTO`),
  KEY `FK_ID_PROVA_idx` (`ID_PROVA`),
  KEY `fk_ID_PILOTO_idx` (`ID_PILOTO`),
  CONSTRAINT `fk_ID_PILOTO` FOREIGN KEY (`ID_PILOTO`) REFERENCES `tb_piloto` (`ID_PILOTO`),
  CONSTRAINT `fk_ID_PROVA` FOREIGN KEY (`ID_PROVA`) REFERENCES `tb_prova` (`ID_PROVA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resultado`
--

LOCK TABLES `tb_resultado` WRITE;
/*!40000 ALTER TABLE `tb_resultado` DISABLE KEYS */;
INSERT INTO `tb_resultado` VALUES (1,1,'01:25:48',2,1,18),(1,2,'01:25:27',1,2,26),(1,3,'01:25:49',3,4,15),(1,4,'01:26:25',5,5,10),(1,5,'01:25:24',4,3,12),(1,6,'02:00:00',20,18,0),(1,7,'01:25:35',11,17,0),(1,8,'01:26:16',14,13,0),(1,9,'02:00:00',19,12,0),(1,10,'01:26:15',13,10,0),(1,11,'01:26:15',12,8,0),(1,12,'01:25:33',8,9,4),(1,13,'01:25:32',7,11,6),(1,14,'01:25:35',10,15,1),(1,15,'01:25:34',9,16,2),(1,16,'01:26:24',6,7,8),(1,17,'01:26:37',15,14,0),(1,18,'02:00:00',18,6,0),(1,19,'01:26:19',17,20,0),(1,20,'01:26:17',16,19,0),(2,1,'01:34:21',1,3,25),(2,2,'01:34:24',2,4,18),(2,3,'01:34:27',4,5,12),(2,4,'01:34:27',3,1,16),(2,5,'01:34:57',5,2,10),(2,6,'02:00:00',19,7,0),(2,7,'01:35:19',8,13,4),(2,8,'01:35:23',9,12,2),(2,9,'02:00:00',18,10,0),(2,10,'01:35:24',10,14,1),(2,11,'01:35:07',6,9,8),(2,12,'01:35:08',7,8,6),(2,13,'02:00:00',17,17,0),(2,14,'01:34:22',12,15,0),(2,15,'01:34:41',14,18,0),(2,16,'01:34:23',13,6,0),(2,17,'01:35:25',11,16,0),(2,18,'02:00:00',20,11,0),(2,19,'01:34:22',16,20,0),(2,20,'01:35:21',15,19,0);
/*!40000 ALTER TABLE `tb_resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'formula1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 19:41:21
