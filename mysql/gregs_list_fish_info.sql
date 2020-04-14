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
-- Table structure for table `fish_info`
--

DROP TABLE IF EXISTS `fish_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fish_info` (
  `common` varchar(30) DEFAULT NULL,
  `species` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish_info`
--

LOCK TABLES `fish_info` WRITE;
/*!40000 ALTER TABLE `fish_info` DISABLE KEYS */;
INSERT INTO `fish_info` VALUES ('bass,largemouth','M.salmoides','Montgomery Lake,GA','22 lb 4 oz'),('walleye','S.vitreus','Old Hickory Lake, TN','25 lb 0 oz'),('trout,cutthroat','O.Clarki','Pyramid Lake,NV','41 lb 0 oz'),('perch,yellow','P.Flavescens','Bordentown,NJ','4 lb 3 oz'),('bluegill','L.Macrochirus','Ketona Lake,AL','4 lb 12 oz'),('gar,longnose','L.osseus','Trinity River,TX','50 lb 5 oz'),('crappie,white','P.annularis','Enid Dam,MS','5 lb 3 oz'),('pickerel,grass','E.americanus','Dewart Lake,IN','1 lb 0 oz'),('goldfish','C.auratus','Lake Hodges,CA','6 lb 10 oz'),('salmon,chinook','O.Tshawytscha','Kenai River,AK','97 lb 4 oz');
/*!40000 ALTER TABLE `fish_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 23:56:32
