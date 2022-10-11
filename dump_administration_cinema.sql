-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: administration_cinema
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cinema` (
  `id_cinema` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `ville` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (1,'at lorem integer','54 6th Terrace','Xitan'),(2,'duis faucibus','26 Chive Point','Lamatuka'),(3,'libero nam','40903 Bultman Crossing','Meiyuan'),(4,'ut','50374 Farwell Court','Dongdajie'),(5,'hac habitasse platea','0 Vera Street','Okpo');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mot_de_passe` varchar(100) NOT NULL,
  `date_naissance` date NOT NULL,
  `est_etudiant` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Gwenaëlle','Onyon','ipsum dolor','$2y$10$xe6jR7tTOcoLRXvNqRJxcOJakZ6MnT9LuagtZ8JnCAvXzVvY9V5fS','1914-10-22',0),(2,'Alizée','Gasperi','id ligula','$2y$10$JAqy.80rBnLG.hj5dqgNuO5S2wRZJ7gy7whJ6Ez46ZtPUl.uyzHdW','1974-01-17',0),(3,'Eliès','Romme','pede posuere','$2y$10$Xa4JLNqLs6p24Ts2lEQ90.6OneUYIFkMs831tGFiKBbQKN01V3cm6','1942-12-22',1),(4,'Marylène','Juanes','convallis nulla','$2y$10$VKsX/OCO8VTeEShPMP4A2OEANLb0h7f6PcEKALEe.nN9P4xtv9SxO','1951-02-28',0),(5,'Marie-josée','Dominey','quisque porta','$2y$10$a0GFp1V5fVsIqlffNB8.1Ok7juzR93FXpJzFYB/NcLo7aNTXyhLcu','1916-08-24',1),(6,'Estée','Buterton','justo in','$2y$10$RP1o.5g.HkxN5KhUtzQ0NOe8xUSLqEbkZBY8..2od9KnOnonqjlYq','2008-08-24',0),(7,'Lyséa','Spink','sed nisl','$2y$10$jbd377WDxdwIF.6LQI40U.lXqYDJzwtDRVvuTKshndaldBftyJPjK','1902-03-07',0),(8,'Aimée','McSporrin','ut mauris','$2y$10$Y3zvrDXpUl1lGGJj5ODzaOlpVi9oIXqbCKB6pLVOzF0OyNn5J0pVy','1998-09-03',1),(9,'Amélie','Tudbald','penatibus et','$2y$10$by.0FqmEHy5XTe0kQU4rouIvkD/LBeHRaZts9RSwCiblBmgXGmZAO','1932-07-05',0),(10,'Lorène','Ottam','eu mi','$2y$10$2EtFOL8.A7/ueBLLIpbI7usGcTQ4GjlX7HvgP6Y8zqXoFolTJqlbq','1967-01-09',1);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'volutpat eleifend donec ut dolor'),(2,'ac consequat metus sapien ut nunc vestibulum ante'),(3,'velit vivamus vel nulla eget eros elementum'),(4,'nunc commodo placerat praesent blandit'),(5,'justo lacinia eget tincidunt');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salle` (
  `id_salle` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `cinema` int(11) NOT NULL,
  `nombre_places` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_salle`,`nombre_places`),
  KEY `fk_salle_cinema` (`cinema`),
  CONSTRAINT `fk_salle_cinema` FOREIGN KEY (`cinema`) REFERENCES `cinema` (`id_cinema`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES (1,'orci',1,100),(2,'dapibus',5,110),(3,'rhoncus',2,120),(4,'justo',2,140),(5,'ut',1,90),(6,'vestibulum',5,50),(7,'nulla',3,200),(8,'quis',3,230),(9,'duis',5,160),(10,'augue',5,150),(11,'maecenas',1,130),(12,'proin',2,250),(13,'lacus',1,100),(14,'congue',1,50),(15,'eget',3,170);
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seance` (
  `id_seance` int(11) NOT NULL AUTO_INCREMENT,
  `film` int(11) NOT NULL,
  `salle` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `places_disponibles` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_seance`),
  KEY `fk_seance_film` (`film`),
  KEY `fk_seance_salle` (`salle`),
  CONSTRAINT `fk_seance_film` FOREIGN KEY (`film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `fk_seance_salle` FOREIGN KEY (`salle`) REFERENCES `salle` (`id_salle`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
INSERT INTO `seance` VALUES (1,2,13,'2021-11-15 07:57:09',97),(2,2,4,'2022-09-30 15:26:43',138),(3,1,4,'2022-09-08 05:22:37',138),(4,5,1,'2021-12-27 14:48:36',85),(5,2,14,'2022-05-04 19:48:40',46),(6,4,2,'2022-08-25 21:45:13',108),(7,1,12,'2022-09-25 17:18:29',249),(8,5,4,'2022-01-11 07:12:15',136),(9,2,13,'2022-01-23 09:51:37',95),(10,1,9,'2022-05-06 21:54:02',158);
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif`
--

DROP TABLE IF EXISTS `tarif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarif` (
  `id_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `prix` float unsigned NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tarif`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif`
--

LOCK TABLES `tarif` WRITE;
/*!40000 ALTER TABLE `tarif` DISABLE KEYS */;
INSERT INTO `tarif` VALUES (1,9.2,'Plein tarif'),(2,7.6,'Etudiant'),(3,5.9,'Moins de 14 ans');
/*!40000 ALTER TABLE `tarif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `client` int(11) NOT NULL,
  `tarif` int(11) NOT NULL,
  `seance` int(11) NOT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `fk_ticket_tarif` (`tarif`),
  KEY `fk_ticket_client` (`client`),
  KEY `fk_ticket_seance` (`seance`),
  CONSTRAINT `fk_ticket_client` FOREIGN KEY (`client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `fk_ticket_seance` FOREIGN KEY (`seance`) REFERENCES `seance` (`id_seance`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_tarif` FOREIGN KEY (`tarif`) REFERENCES `tarif` (`id_tarif`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,5,1,4),(2,7,1,4),(3,10,2,5),(4,4,2,2),(5,5,1,8),(6,1,1,10),(7,6,1,9),(8,9,1,5),(9,9,1,9),(10,7,1,7),(11,5,1,8),(12,5,2,4),(13,6,1,4),(14,7,3,9),(15,2,2,1),(16,8,1,8),(17,3,2,3),(18,9,2,10),(19,1,1,6),(20,9,2,5),(21,8,3,9),(22,6,3,5),(23,1,1,1),(24,8,1,1),(25,6,3,2),(26,3,1,3),(27,6,2,4),(28,9,2,9),(29,9,1,6),(30,10,3,8);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER verifie_limite_place
    BEFORE INSERT ON ticket
    FOR EACH ROW
BEGIN
    DECLARE place_dispo INT;

    SELECT places_disponibles
    FROM seance
    WHERE seance.id_seance = NEW.seance
        LIMIT 1
    INTO place_dispo;

    IF place_dispo = 0
    THEN
        SIGNAL SQLSTATE '45000' SET
            MYSQL_ERRNO = 32000,
            MESSAGE_TEXT = 'Plus de places disponibles';

    ELSE
    UPDATE seance
    SET seance.places_disponibles = seance.places_disponibles - 1
    WHERE id_seance = NEW.seance;

END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 23:21:46
