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
-- Table structure for table `tiene`
--

DROP TABLE IF EXISTS `tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiene` (
  `rol_Nombre` varchar(45) NOT NULL,
  `Ambientación_Ambientación` enum('Fantasía','Ciencia Ficción','Terror','Realidad Alternativa','Historico','Historico Fantastico') NOT NULL,
  PRIMARY KEY (`rol_Nombre`,`Ambientación_Ambientación`),
  KEY `fk_rol_has_Ambientación_Ambientación1_idx` (`Ambientación_Ambientación`),
  KEY `fk_rol_has_Ambientación_rol1_idx` (`rol_Nombre`),
  CONSTRAINT `fk_rol_has_Ambientación_Ambientación1` FOREIGN KEY (`Ambientación_Ambientación`) REFERENCES `ambientación` (`Ambientación`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rol_has_Ambientación_rol1` FOREIGN KEY (`rol_Nombre`) REFERENCES `rol` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene`
--

LOCK TABLES `tiene` WRITE;
/*!40000 ALTER TABLE `tiene` DISABLE KEYS */;
INSERT INTO `tiene` VALUES ('Anima Beyond Fantasy','Fantasía'),('D&D','Fantasía'),('D&D3.5','Fantasía'),('Dragon Age','Fantasía'),('El resurgir del dragón','Fantasía'),('Pathfinder','Fantasía'),('Anima Beyond Fantasy','Ciencia Ficción'),('Hombrelobo el apocalipsis ','Terror'),('Mago la ascension ','Terror'),('Vampiro Edad Oscura','Terror'),('Vampiro la mascarada ','Terror'),('Hombrelobo el apocalipsis ','Realidad Alternativa'),('Mago la ascension ','Realidad Alternativa'),('Vampiro Edad Oscura','Realidad Alternativa'),('Vampiro la mascarada ','Realidad Alternativa'),('Hombrelobo el apocalipsis ','Historico Fantastico'),('La leyenda de los 5 anillos','Historico Fantastico'),('Mago la ascension ','Historico Fantastico'),('Vampiro Edad Oscura','Historico Fantastico'),('Vampiro la mascarada ','Historico Fantastico');
/*!40000 ALTER TABLE `tiene` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-10 12:48:52
