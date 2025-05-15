-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pierwszat
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
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `ulica` varchar(100) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `kod_pocztowy` varchar(10) NOT NULL,
  `kraj` varchar(50) NOT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (1,'Jan','Kowalski','Marszałkowska 10','Warszawa','00-001','Polska'),(2,'Anna','Nowak','Długa 5','Kraków','30-002','Polska'),(3,'Piotr','Wiśniewski','Szkolna 15','Gdańsk','80-003','Polska'),(4,'Maria','Dąbrowska','Leśna 8','Poznań','60-004','Polska'),(5,'Tomasz','Lewandowski','Słoneczna 12','Wrocław','50-005','Polska'),(6,'Katarzyna','Zielińska','Ogrodowa 20','Łódź','90-006','Polska'),(7,'Marek','Wójcik','Krótka 3','Szczecin','70-007','Polska'),(8,'Agnieszka','Kamińska','Polna 14','Lublin','20-008','Polska'),(9,'Paweł','Kowalczyk','Główna 9','Bydgoszcz','85-009','Polska'),(10,'Ewa','Piotrowska','Lipowa 22','Katowice','40-010','Polska'),(11,'Robert','Nowicki','Parkowa 30','Gdynia','81-011','Polska'),(12,'Dorota','Szymańska','Cicha 6','Częstochowa','42-012','Polska'),(13,'Andrzej','Woźniak','Brzozowa 5','Radom','26-013','Polska'),(14,'Małgorzata','Kozłowska','Różana 18','Toruń','87-014','Polska'),(15,'Grzegorz','Jankowski','Szpitalna 7','Kielce','25-015','Polska'),(16,'Beata','Mazur','Żytnia 10','Olsztyn','10-016','Polska'),(17,'Łukasz','Krawczyk','Dworcowa 1','Białystok','15-017','Polska'),(18,'Magdalena','Zając','Kościelna 19','Rzeszów','35-018','Polska'),(19,'Sebastian','Król','Spacerowa 25','Gliwice','44-019','Polska'),(20,'Barbara','Wieczorek','Wąska 4','Zielona Góra','65-020','Polska'),(21,'Dawid','Witkowski','Partyzancka 11','Legnica','59-021','Polska'),(22,'Patrycja','Walczak','Sportowa 8','Opole','45-022','Polska'),(23,'Adrian','Stępień','Mostowa 17','Elbląg','82-023','Polska'),(24,'Aleksandra','Górska','Wolności 5','Płock','09-024','Polska'),(25,'Michał','Czarnecki','Kwiatowa 16','Wałbrzych','58-025','Polska'),(26,'Izabela','Adamska','Dębowa 21','Tarnów','33-026','Polska'),(27,'Szymon','Pawlak','Jesionowa 3','Nowy Sącz','33-027','Polska');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naprawa`
--

DROP TABLE IF EXISTS `naprawa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `naprawa` (
  `id_naprawa` int(11) NOT NULL AUTO_INCREMENT,
  `id_samochodu` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `naprawa` varchar(50) DEFAULT NULL,
  `stan` varchar(10) DEFAULT NULL,
  `koszt` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_naprawa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naprawa`
--

LOCK TABLES `naprawa` WRITE;
/*!40000 ALTER TABLE `naprawa` DISABLE KEYS */;
/*!40000 ALTER TABLE `naprawa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samochody`
--

DROP TABLE IF EXISTS `samochody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `samochody` (
  `id_auto` int(11) NOT NULL AUTO_INCREMENT,
  `marka` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `numer_rejestracyjny` varchar(15) DEFAULT NULL,
  `rocznik` int(11) DEFAULT NULL,
  `typ_paliwa` enum('Benzyna','Diesel','Elektryczny','Hybryda','LPG') DEFAULT NULL,
  `przebieg` int(11) DEFAULT NULL,
  `kolor` varchar(30) DEFAULT NULL,
  `moc_km` int(11) DEFAULT NULL,
  `pojemnosc_silnika` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`id_auto`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samochody`
--

LOCK TABLES `samochody` WRITE;
/*!40000 ALTER TABLE `samochody` DISABLE KEYS */;
INSERT INTO `samochody` VALUES (1,'Toyota','Corolla','WX12345',2020,'Benzyna',30000,'Czerwony',132,1.8),(2,'Volkswagen','Golf','PO56789',2018,'Diesel',75000,'Niebieski',150,2.0),(3,'Ford','Focus',NULL,2019,'Benzyna',NULL,'Srebrny',125,1.5),(4,'Toyota','Corolla','WX12345',2020,'Benzyna',30000,'Czerwony',132,1.8),(5,'Volkswagen','Golf','PO56789',2018,'Diesel',75000,'Niebieski',150,2.0),(6,'Ford','Focus',NULL,2019,'Benzyna',NULL,'Srebrny',125,1.5),(7,'Opel','Astra','KR98012',2017,'Diesel',120000,'Czarny',136,1.6),(8,'BMW','3 Series','DW55555',2021,'Benzyna',18000,'Biały',184,2.0),(9,'Mercedes','C-Class','GA23456',2020,'Diesel',25000,'Szary',200,2.2),(10,'Honda','Civic','PO32167',2019,'Benzyna',45000,'Czerwony',170,1.5),(11,'Mazda','6',NULL,2016,'Diesel',100000,'Granatowy',NULL,2.2),(12,'Renault','Megane','LU87878',NULL,'Benzyna',70000,'Zielony',140,1.8),(13,'Peugeot','308','RZ55666',2018,'Diesel',85000,NULL,130,1.6),(14,'Fiat','Tipo','KT90909',2020,'Benzyna',20000,'Biały',NULL,1.4),(15,'Audi','A4','WB00111',2019,'Diesel',55000,'Srebrny',190,2.0),(16,'Seat','Leon','OP43212',2017,'Benzyna',97000,'Czerwony',150,1.8),(17,'Skoda','Octavia','LD54321',2022,'Hybryda',8000,'Szary',204,1.4),(18,'Kia','Ceed','PK87878',2018,'Diesel',68000,'Niebieski',136,NULL),(19,'Hyundai','i30',NULL,2019,'Benzyna',NULL,'Czarny',120,1.4),(20,'Citroen','C4','DW87654',2015,'Diesel',110000,'Biały',112,1.6),(21,'Volvo','S60','GA23232',2021,'Hybryda',30000,'Srebrny',250,2.0),(22,'Tesla','Model 3','EL99999',2023,'Elektryczny',15000,'Czarny',NULL,NULL),(23,'Nissan','Qashqai','LU11111',2017,'Diesel',95000,'Zielony',130,1.5),(24,'Dacia','Duster','KT23232',2021,'Benzyna',27000,'Pomarańczowy',150,1.3),(25,'Suzuki','Vitara',NULL,2018,'Benzyna',70000,'Błękitny',140,1.6),(26,'Jeep','Renegade','WB65432',2019,'Diesel',NULL,'Szary',170,2.0),(27,'Ford','Kuga','OP90909',2020,'Hybryda',32000,'Czerwony',NULL,2.5),(28,'Lexus','RX','LD12121',2022,'Hybryda',10000,'Biały',313,3.5),(29,'Alfa Romeo','Giulia','PK12121',2019,'Benzyna',48000,'Czerwony',280,2.0),(30,'Porsche','Macan','DW22222',2021,'Benzyna',21000,'Czarny',265,2.0),(31,'Jaguar','F-Pace','GA45454',2020,'Diesel',39000,'Granatowy',240,2.0),(32,'Subaru','Forester','LU56565',2017,'Benzyna',83000,NULL,150,2.0);
/*!40000 ALTER TABLE `samochody` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 13:38:33
