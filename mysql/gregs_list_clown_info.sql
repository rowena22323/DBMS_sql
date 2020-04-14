-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: gregs_list
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `clown_info`
--

DROP TABLE IF EXISTS `clown_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clown_info` (
  `name` varchar(20) DEFAULT NULL,
  `last_seen` varchar(50) DEFAULT NULL,
  `appearance` varchar(100) DEFAULT NULL,
  `activities` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clown_info`
--

LOCK TABLES `clown_info` WRITE;
/*!40000 ALTER TABLE `clown_info` DISABLE KEYS */;
INSERT INTO `clown_info` VALUES ('Elsie','Cherry Hill Senior Center','F,red hair,green dress,huge feet','balloons,little car'),('Pickles','Jack Green\'s Party','M,orange hair,blue suit,huge feet','mime'),('Snuggles','Ball-Mart','F,baggy blue pants','horn,umbrella'),('Scooter','Oakland Hospital','M,blue hair,red suit,huge nose','balloons'),('Babe','Earl\'s Autos','F,all pink and sparkly','balancing,little car'),('Bonzo','Dickson Park','M,in drag,polka dotted dress','singing,dancing'),('Sniffles','Party for Eric Gray','M,green and purple suit,pointy nose','climbing into tiny car'),('Zippo','Milestone Mall','F,orange suit,baggy pants','dancing,singing'),('Snuggles','Ball Mart','F,baggy blue pants','horn,umbrella'),('Bonzo','Dickson Park','M,in drag,polka dotted dress','singing,dansing'),('Sniffles','Party for Eric Gray','M,green and purple suit,pointy nose','climbing into tiny car'),('Mr.Hobo','Tracy\'s','M,cigar,black hair,tiny hat','violin'),('Clarabelle','Belmont Senior Center','F,pink hair,huge flower,blue dress','dancing,singing');
/*!40000 ALTER TABLE `clown_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 23:56:33
