-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: driverol
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `idPartida` int(11) NOT NULL AUTO_INCREMENT,
  `Cronica` varchar(45) NOT NULL,
  `Jugadores` int(11) DEFAULT NULL,
  `rol_Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Cronica`),
  UNIQUE KEY `idPartida_UNIQUE` (`idPartida`),
  UNIQUE KEY `Cronica_UNIQUE` (`Cronica`),
  KEY `fk_partida_rol1_idx` (`rol_Nombre`),
  CONSTRAINT `fk_partida_rol1` FOREIGN KEY (`rol_Nombre`) REFERENCES `rol` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (5,'Aventura de locura',7,'D&D'),(4,'El ultimo campeonato topacio',3,'La leyenda de los 5 anillos'),(3,'Espejito espejito',4,'La leyenda de los 5 anillos'),(2,'Historias de Rokugan',9,'La leyenda de los 5 anillos'),(1,'La manada del cuerno Helado',8,'Hombrelobo el apocalipsis'),(9,'Magia en NY',5,'Mago la ascension'),(7,'Perdida de tiempo',10,'Vampiro la mascarada'),(8,'Razas Cambiantes',5,'Hombrelobo el apocalipsis'),(6,'Una historia de dioses',6,'D&D');
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

-- Dump completed on 2018-02-10 12:48:53
