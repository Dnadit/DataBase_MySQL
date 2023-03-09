-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db0309
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `견적`
--

DROP TABLE IF EXISTS `견적`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `견적` (
  `품번` varchar(45) NOT NULL,
  `견적서번호` varchar(45) NOT NULL,
  `수량` int DEFAULT NULL,
  KEY `fk_견적서_has_품목_품목1_idx` (`품번`),
  KEY `fk_견적서_has_품목_견적서1_idx` (`견적서번호`),
  CONSTRAINT `fk_견적서_has_품목_견적서1` FOREIGN KEY (`견적서번호`) REFERENCES `견적서` (`견적서번호`),
  CONSTRAINT `fk_견적서_has_품목_품목1` FOREIGN KEY (`품번`) REFERENCES `품목` (`품번`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `견적`
--

LOCK TABLES `견적` WRITE;
/*!40000 ALTER TABLE `견적` DISABLE KEYS */;
/*!40000 ALTER TABLE `견적` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `견적서`
--

DROP TABLE IF EXISTS `견적서`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `견적서` (
  `견적서번호` varchar(45) NOT NULL,
  `공급자번호` varchar(45) NOT NULL,
  `담당자` varchar(45) DEFAULT NULL,
  `견적날짜` date DEFAULT NULL,
  PRIMARY KEY (`견적서번호`),
  KEY `fk_견적서_공급자_idx` (`공급자번호`),
  CONSTRAINT `fk_견적서_공급자` FOREIGN KEY (`공급자번호`) REFERENCES `공급자` (`등록번호`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `견적서`
--

LOCK TABLES `견적서` WRITE;
/*!40000 ALTER TABLE `견적서` DISABLE KEYS */;
/*!40000 ALTER TABLE `견적서` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `공급자`
--

DROP TABLE IF EXISTS `공급자`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `공급자` (
  `등록번호` varchar(45) NOT NULL,
  `상호` varchar(45) DEFAULT NULL,
  `대표성명` varchar(45) DEFAULT NULL,
  `사업장주소` varchar(45) DEFAULT NULL,
  `업태` varchar(45) DEFAULT NULL,
  `종목` varchar(45) DEFAULT NULL,
  `전화번호` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`등록번호`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `공급자`
--

LOCK TABLES `공급자` WRITE;
/*!40000 ALTER TABLE `공급자` DISABLE KEYS */;
/*!40000 ALTER TABLE `공급자` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `품목`
--

DROP TABLE IF EXISTS `품목`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `품목` (
  `품번` varchar(45) NOT NULL,
  `품명` varchar(45) DEFAULT NULL,
  `규격` varchar(45) DEFAULT NULL,
  `단가` int DEFAULT NULL,
  PRIMARY KEY (`품번`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `품목`
--

LOCK TABLES `품목` WRITE;
/*!40000 ALTER TABLE `품목` DISABLE KEYS */;
/*!40000 ALTER TABLE `품목` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db0309'
--

--
-- Dumping routines for database 'db0309'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 17:45:35
