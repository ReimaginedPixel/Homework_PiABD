-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: firma_kukula
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `data_ur` date NOT NULL,
  `pesel` char(11) NOT NULL,
  `miasto` varchar(20) NOT NULL,
  `stanowisko` int(11) DEFAULT NULL,
  `drugie_imie` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pesel` (`pesel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'Anna','Nowak','1985-04-01','85040112345','Sopot',3,NULL),(2,'Jan','Kowalski','1975-05-01','75050154321','Gdańsk',1,NULL),(3,'Kaja','Borecka','1980-12-24','80122454321','Gdynia',2,NULL),(4,'Maria','Borek','1967-11-30','67113012345','Gdynia',4,NULL),(5,'Marian','Marczak','1965-11-10','65111098765','Sopot',4,NULL),(6,'Kajetan','Grota','1965-01-31','65013198765','Sopot',5,NULL),(7,'Konrad','Kukuła','2009-11-09','90122454321','Podwilk',5,NULL);
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stanowiska`
--

DROP TABLE IF EXISTS `stanowiska`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stanowiska` (
  `id_stanowiska` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(20) NOT NULL,
  `pensja` decimal(7,2) NOT NULL,
  `wykształcenie` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_stanowiska`),
  UNIQUE KEY `nazwa` (`nazwa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stanowiska`
--

LOCK TABLES `stanowiska` WRITE;
/*!40000 ALTER TABLE `stanowiska` DISABLE KEYS */;
INSERT INTO `stanowiska` VALUES (1,'kierownik',4000.00,'wyższe'),(2,'asystent',3200.00,'wyższe'),(3,'sekretarka',2500.00,'średnie'),(4,'pracownik',2800.00,'średnie'),(5,'kierowca',2700.00,'średnie');
/*!40000 ALTER TABLE `stanowiska` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-16  7:38:44
