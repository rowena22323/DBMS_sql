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
-- Table structure for table `fish_records`
--

DROP TABLE IF EXISTS `fish_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fish_records` (
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `common` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fish_records`
--

LOCK TABLES `fish_records` WRITE;
/*!40000 ALTER TABLE `fish_records` DISABLE KEYS */;
INSERT INTO `fish_records` VALUES ('George','Perry','bass,largemouth','Montgomery Lake','GA','22 lb 4 oz','1932-06-02'),('Mabry','Harper','walleye','Old Hickory Lake','TN','25 lb 0 oz','1960-08-02'),('John','Skimmerhorn','trout,cutthroat','Pyramid Lake','NV','41 lb 0 oz','1925-12-01'),('C.C.','Abbot','perch,yellow','Bordentown','NJ','4 lb 3 oz','1865-05-01'),('T.S.','Hudson','bluegill','Ketona Lake','AL','4 lb 12 oz','1950-04-09'),('Townsend','Miler','gar,longnose','Trinity River','TX','50 lb 5 oz','1954-07-30'),('Fred','Bright','crappie,white','Enid Dam','MS','5 lb 3 oz','1957-07-31'),('Mike','Berg','pickerel,grass','Dewart Lake','IN','1 lb 0 oz','1990-06-09'),('Florentino','Abena','goldfish','Lake Hodges','CA','6 lb 10 oz','1996-04-17'),('Les','Anderson','salmon, chinook','Kenai River','AK','97 lb 4 oz','1985-05-17');
/*!40000 ALTER TABLE `fish_records` ENABLE KEYS */;
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
