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
-- Table structure for table `usan`
--

DROP TABLE IF EXISTS `usan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usan` (
  `Cronica partida` varchar(45) NOT NULL,
  `Titulo Libro` varchar(45) NOT NULL,
  `Apodo Jugador` varchar(45) NOT NULL,
  PRIMARY KEY (`Cronica partida`,`Titulo Libro`,`Apodo Jugador`),
  KEY `fk_partida_has_libros_libros1_idx` (`Titulo Libro`),
  KEY `fk_partida_has_libros_partida1_idx` (`Cronica partida`),
  KEY `fk_jugador_usa_libros_jugador1_idx` (`Apodo Jugador`),
  CONSTRAINT `fk_jugador_usa_libros_jugador1` FOREIGN KEY (`Apodo Jugador`) REFERENCES `jugador` (`Apodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_partida_has_libros_libros1` FOREIGN KEY (`Titulo Libro`) REFERENCES `libros` (`Titulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_partida_has_libros_partida1` FOREIGN KEY (`Cronica partida`) REFERENCES `partida` (`Cronica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usan`
--

LOCK TABLES `usan` WRITE;
/*!40000 ALTER TABLE `usan` DISABLE KEYS */;
INSERT INTO `usan` VALUES ('Aventura de locura','D&D - 3.5 - Guia del Dungeon Master I.pdf','Darkgeleon'),('Aventura de locura','D&D - 3.5 - Guía del Dungeon Master II.pdf','Darkgeleon'),('Aventura de locura','D&D - 3.5 - Manual del Jugador I.pdf','Daning'),('Aventura de locura','D&D - 3.5 - Manual del Jugador I.pdf','Kaghyi'),('Aventura de locura','D&D - 3.5 - Manual del Jugador I.pdf','Krim'),('Aventura de locura','D&D - 3.5 - Manual del Jugador I.pdf','Nickrom'),('Aventura de locura','D&D - 3.5 - Manual del Jugador I.pdf','Nimen'),('Aventura de locura','D&D - 3.5 - Manual del Jugador I.pdf','Wolffair'),('Aventura de locura','D&D - 3.5 - Manual del Jugador II.pdf','Daning'),('Aventura de locura','D&D - 3.5 - Manual del Jugador II.pdf','Kaghyi'),('Aventura de locura','D&D - 3.5 - Manual del Jugador II.pdf','Krim'),('Aventura de locura','D&D - 3.5 - Manual del Jugador II.pdf','Nickrom'),('Aventura de locura','D&D - 3.5 - Manual del Jugador II.pdf','Nimen'),('Aventura de locura','D&D - 3.5 - Manual del Jugador II.pdf','Wolffair'),('Una historia de dioses','D&D 4 Ed - Guia del Dungeon Master 1.pdf','Nimen'),('Una historia de dioses','D&D 4 Ed - Guia del Dungeon Master 2.pdf','Nimen'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 1.pdf','Daning'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 1.pdf','Kaghyi'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 1.pdf','Krim'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 1.pdf','Nickrom'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 1.pdf','Wolffair'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 2.pdf','Daning'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 2.pdf','Kaghyi'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 2.pdf','Krim'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 2.pdf','Nickrom'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 2.pdf','Wolffair'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 3.pdf','Daning'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 3.pdf','Kaghyi'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 3.pdf','Krim'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 3.pdf','Nickrom'),('Una historia de dioses','D&D 4 Ed - Manual del Jugador 3.pdf','Wolffair'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Daning'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Darkgeleon'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Kaghyi'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Krim'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Metal'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Nickrom'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Nimen'),('La manada del cuerno Helado','Hombre Lobo 20 Aniversario.pdf','Wolffair'),('Razas Cambiantes','Hombre Lobo 20 Aniversario.pdf','Daning'),('Razas Cambiantes','Hombre Lobo 20 Aniversario.pdf','Kaghyi'),('Razas Cambiantes','Hombre Lobo 20 Aniversario.pdf','Metal'),('Razas Cambiantes','Hombre Lobo 20 Aniversario.pdf','Nimen'),('Razas Cambiantes','Hombre Lobo 20 Aniversario.pdf','Wolffair'),('El ultimo campeonato topacio','La Leyenda de los Cinco Anillos.pdf','Kaghyi'),('El ultimo campeonato topacio','La Leyenda de los Cinco Anillos.pdf','Nimen'),('El ultimo campeonato topacio','La Leyenda de los Cinco Anillos.pdf','Wolffair'),('Espejito espejito','La Leyenda de los Cinco Anillos.pdf','Kaghyi'),('Espejito espejito','La Leyenda de los Cinco Anillos.pdf','Nickrom'),('Espejito espejito','La Leyenda de los Cinco Anillos.pdf','Nimen'),('Espejito espejito','La Leyenda de los Cinco Anillos.pdf','Wolffair'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Alastor'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Daning'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Kaghyi'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Krim'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Maximilion'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Nickrom'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Nimen'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Wolffair'),('Historias de Rokugan','La Leyenda de los Cinco Anillos.pdf','Xou'),('Magia en NY','Mago20 La Ascension','Daning'),('Magia en NY','Mago20 La Ascension','Kaghyi'),('Magia en NY','Mago20 La Ascension','Metal'),('Magia en NY','Mago20 La Ascension','Nimen'),('Magia en NY','Mago20 La Ascension','Wolffair'),('Razas Cambiantes','Razas Cambiantes.pdf','Daning'),('Razas Cambiantes','Razas Cambiantes.pdf','Kaghyi'),('Razas Cambiantes','Razas Cambiantes.pdf','Metal'),('Razas Cambiantes','Razas Cambiantes.pdf','Nimen'),('Razas Cambiantes','Razas Cambiantes.pdf','Wolffair');
/*!40000 ALTER TABLE `usan` ENABLE KEYS */;
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
