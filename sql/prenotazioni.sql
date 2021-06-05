-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: tamponi
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `prenotazioni`
--

DROP TABLE IF EXISTS `prenotazioni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prenotazioni` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codice_fiscale` varchar(16) NOT NULL,
  `giorno` date NOT NULL,
  `codice_univoco` varchar(64) DEFAULT NULL,
  `eseguito` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `documento` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazioni`
--

LOCK TABLES `prenotazioni` WRITE;
/*!40000 ALTER TABLE `prenotazioni` DISABLE KEYS */;
INSERT INTO `prenotazioni` VALUES (1,'BGTLSN71H19B157G','2021-01-01',NULL,0,NULL,NULL),(2,'BGT','2021-03-09',NULL,0,NULL,NULL),(3,'AAA','2021-03-09',NULL,0,NULL,NULL),(4,'AAA','2021-03-09',NULL,0,NULL,NULL),(5,'BBB','2021-03-09',NULL,0,NULL,NULL),(6,'BBB','2021-03-09',NULL,0,NULL,NULL),(7,'CCC','2021-03-09',NULL,0,NULL,NULL),(8,'BGHYYY','2021-03-13',NULL,0,NULL,NULL),(9,'BGHhhh','2021-03-13',NULL,0,NULL,NULL),(10,'AAA','2021-03-13',NULL,0,NULL,NULL),(11,'AAA','2021-03-13',NULL,0,NULL,NULL),(12,'BHH9898','2021-03-13','a48650b503877242249e',0,NULL,NULL),(13,'BHH9898','2021-03-13','19a0efdce18205267efd',0,NULL,NULL),(14,'BRB','2021-03-20','1f994c891925da181ebf',0,NULL,NULL),(15,'BRRRRRR','2021-03-10','6f59e345c5009f0692d4',0,NULL,NULL),(16,'fdsafas','2021-03-12','27e5c186c1f49e06efbe',1,'',NULL),(17,'fdsafas','2021-03-12','c9c21d6aff1d8a7444af',0,NULL,NULL),(18,'vdvsadf','2021-03-24','b39c5944281bf0570d78',0,NULL,NULL),(19,'vdvsadf','2021-03-24','88d1a8384654af2b884a',1,'Buongiorno',NULL),(20,'HFJHFJ','2021-03-29','7bab296bb5200c658eea',0,NULL,NULL),(21,'HFJHFJ','2021-03-29','1b6679f2dc2271005367',0,NULL,NULL),(22,'','2021-04-03','462e060e7f2607ab35c8',0,NULL,NULL),(23,'','2021-04-03','358d765d1211b628bd1c',0,NULL,NULL),(24,'BBB','2021-03-30','ee60f43c0cbcbe711287',0,NULL,NULL),(25,'vsdaf','2021-03-31','3522bcfd20d9f7fac8d2',0,NULL,NULL),(26,'fff','2021-03-30','1425423ba8dca08ef0be',0,NULL,NULL),(27,'fdsfsd','2021-04-01','0759691139577aafb7e9',0,NULL,NULL),(28,'aaaa','2021-04-04','acd8660e1c69cd6468ac',0,NULL,NULL),(29,'fff','2021-04-04','bc7b7a3ba0fb94fe3b5b',0,NULL,NULL),(30,'NNNAAA','2021-04-15','dc16bb51468ca0846796',0,NULL,NULL),(31,'BGTLSN71H19B157J','2021-01-01','94373c870f5956a5c8c5',0,NULL,NULL),(32,'BGTLSN71H19B157G','2021-05-14','3d3016ff14813387f81f',0,NULL,NULL),(33,'HHH','2021-05-01','a6882f6cc45b00290833',1,'Fatto con fatica',NULL),(34,'FGDFGDFD','2021-06-08','8b604708a182f73c60fd',0,NULL,'documenti/8b604708a182f73c60fd.'),(35,'FGDFGDFD','2021-06-08','5584237c5aafdae8a217',0,NULL,'documenti/5584237c5aafdae8a217.jpg'),(36,'fsdfaf','2021-06-24','dfad27d570d61094023a',0,NULL,'documenti/dfad27d570d61094023a.jpg'),(37,'dsfdfsaf','2021-06-22','6fea921865c896f9f27f',0,NULL,'documenti/6fea921865c896f9f27f.jpg');
/*!40000 ALTER TABLE `prenotazioni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utenti`
--

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utenti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `utenti_username_uindex` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utenti`
--

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` VALUES (1,'pippo','$2y$10$wm9CKTN416cACXQgKqDBnujjpOh0NMKI75dlYfnd4JnffrfEVwztK'),(2,'geppo','$2y$10$JUXAF4AD8iBVSo1/9Ky7e.0XhuIbvB550ytb0BMsFJVZqnzn90VNO'),(3,'pappo','$2y$10$esfVBB/ZdFWHolILyAOVU.vQk5kJ12O6uiMDthAJIQ9fsf.Se9Tie'),(4,'peppo','$2y$10$8jILPITM5wI2mujo/1VrvuH/bFvURO2zQb2Xo/1SVPhxKfyuaL8Xm');
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-05 10:20:19
