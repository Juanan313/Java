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
-- Table structure for table `ambientación`
--

DROP TABLE IF EXISTS `ambientación`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ambientación` (
  `Ambientación` enum('Fantasía','Ciencia Ficción','Terror','Realidad Alternativa','Historico','Historico Fantastico','*') NOT NULL COMMENT 'ENUM(''Fantasía'', ''Ciencia Ficción'', ''Terror'', ''Realidad Alternativa'', ''Historico'', ''Historico Fantastico'', ''*'')',
  PRIMARY KEY (`Ambientación`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambientación`
--

LOCK TABLES `ambientación` WRITE;
/*!40000 ALTER TABLE `ambientación` DISABLE KEYS */;
INSERT INTO `ambientación` VALUES ('Fantasía'),('Ciencia Ficción'),('Terror'),('Realidad Alternativa'),('Historico'),('Historico Fantastico'),('*');
/*!40000 ALTER TABLE `ambientación` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jugador` (
  `idJugador` int(11) NOT NULL AUTO_INCREMENT,
  `Apodo` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Apodo`),
  UNIQUE KEY `idJugador_UNIQUE` (`idJugador`),
  UNIQUE KEY `Apodo_UNIQUE` (`Apodo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (13,'Alastor','Cristian Capitan'),(8,'Daning','Daniel Hassani'),(7,'Darkgeleon','Javi Nieto'),(3,'Kaghyi','Xavier Montmany'),(14,'Kharzak','Gonzalo'),(10,'Kina','Rodri'),(5,'Krim','Kristian Gonzalez'),(15,'Kururugy','Marti '),(6,'Maximilion','Diego Buron'),(9,'Metal','Carlos Perez'),(4,'Nickrom','Alejandro Alvarez'),(2,'Nimen','Joaquin Garcia'),(11,'Samsan','Samu'),(1,'Wolffair','Juanan Pujals'),(12,'Xou','Anxel');
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `idLibros` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  `Idioma` varchar(45) DEFAULT NULL,
  `categoria` enum('Basico','Suplemento','Utilidades','Novela') DEFAULT NULL,
  `rol_Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Titulo`),
  UNIQUE KEY `Nombre_UNIQUE` (`Titulo`),
  UNIQUE KEY `idLibros_UNIQUE` (`idLibros`),
  KEY `fk_libros_rol1_idx` (`rol_Nombre`),
  CONSTRAINT `fk_libros_rol1` FOREIGN KEY (`rol_Nombre`) REFERENCES `rol` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (88,' Vampiro 20 Aniversario.pdf','Castellano','Basico','Vampiro la mascarada '),(34,'1 - Toreador.pdf','Castellano','Novela','Vampiro la mascarada '),(51,'1 Seńores de la sombra.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(31,'10 - Giovanni.pdf','Castellano','Novela','Vampiro la mascarada '),(48,'10 Uktena.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(32,'11 - Brujah.pdf','Castellano','Novela','Vampiro la mascarada '),(49,'11 Colmillos Plateados.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(30,'12 - Tremere.pdf','Castellano','Novela','Vampiro la mascarada '),(47,'12 Moradores del Cristal.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(23,'13 - Nosferatu.pdf','Castellano','Novela','Vampiro la mascarada '),(50,'13 Danzantes de la espiral Negra.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(22,'14 - Antologia.pdf','Castellano','Novela','Vampiro la mascarada '),(44,'14 Wendigo.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(28,'2 - Tzimisce.pdf','Castellano','Novela','Vampiro la mascarada '),(46,'2 Camada de Fenris.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(29,'3 - Gangrel.pdf','Castellano','Novela','Vampiro la mascarada '),(43,'3 Caminantes Silenciosos.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(21,'4 - Setita.pdf','Castellano','Novela','Vampiro la mascarada'),(42,'4 Furias Negras.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(33,'5 - Ventrue.pdf','Castellano','Novela','Vampiro la mascarada '),(41,'5 Garras Rojas.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(25,'6 - Lasombra.pdf','Castellano','Novela','Vampiro la mascarada '),(45,'6 Fianna.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(26,'7 - Assamita.pdf','Castellano','Novela','Vampiro la mascarada '),(38,'7 Roehuesos.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(27,'8 - Ravnos.pdf','Castellano','Novela','Vampiro la mascarada '),(39,'8 Contemplaestrellas.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(24,'9 - Malkavian.pdf','Castellano','Novela','Vampiro la mascarada '),(40,'9 Hijos de Gaia.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(77,'Ajaba.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(76,'Ananasi.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(86,'Anarquistas liberados.pdf','Castellano','Suplemento','Vampiro la mascarada '),(81,'Anexo - Glosario.pdf','Castellano','Utilidades','Vampiro la mascarada '),(3,'Anima Beyond Fantasy - Arcana Exxet.pdf','Castellano','Suplemento','Anima Beyond Fantasy'),(2,'Anima Beyond Fantasy - Core Exxet.pdf','Castellano','Basico','Anima Beyond Fantasy'),(1,'Anima Beyond Fantasy - Dominus Exxet.pdf','Castellano','Suplemento','Anima Beyond Fantasy'),(89,'Ayuda - Estado de Pjs.pdf','Castellano','Utilidades','Vampiro la mascarada '),(75,'Bagheera.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(74,'Balam.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(73,'Bastet.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(72,'Bubasti.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(85,'Cazadores Cazados.pdf','Castellano','Suplemento','Vampiro la mascarada '),(71,'Ceilican.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(70,'Corax.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(125,'D&D - 3.5 - Arcanos Desenterrados.pdf','Castellano','Suplemento','D&D3.5'),(137,'D&D - 3.5 - Armas de Leyenda.pdf','Castellano','Suplemento','D&D3.5'),(135,'D&D - 3.5 - Canción y Silencio.pdf','Castellano','Suplemento','D&D3.5'),(134,'D&D - 3.5 - Defensores de la Fe.pdf','Castellano','Suplemento','D&D3.5'),(152,'D&D - 3.5 - Dioses y Semidioses.pdf','Castellano','Suplemento','D&D3.5'),(143,'D&D - 3.5 - Draconomicón.pdf','Inglés','Suplemento','D&D3.5'),(133,'D&D - 3.5 - El Arcano Completo.pdf','Castellano','Suplemento','D&D3.5'),(132,'D&D - 3.5 - El Aventurero Completo.pdf','Castellano','Suplemento','D&D3.5'),(131,'D&D - 3.5 - El Combatiente Completo.pdf','Castellano','Suplemento','D&D3.5'),(130,'D&D - 3.5 - El Divino Completo.pdf','Castellano','Suplemento','D&D3.5'),(129,'D&D - 3.5 - El libro de las nueve espadas.pdf','Castellano','Suplemento','D&D3.5'),(151,'D&D - 3.5 - Enemigos y Aliados.pdf','Castellano','Suplemento','D&D3.5'),(150,'D&D - 3.5 - Entornos Urbanos.pdf','Castellano','Suplemento','D&D3.5'),(124,'D&D - 3.5 - Especies Salvajes.pdf','Castellano','Suplemento','D&D3.5'),(136,'D&D - 3.5 - Guia de Armas y Equipo.pdf','Castellano','Suplemento','D&D3.5'),(123,'D&D - 3.5 - Guia del Creador de Heroes.pdf','Castellano','Suplemento','D&D3.5'),(148,'D&D - 3.5 - Guia del Dungeon Master I.pdf','Castellano','Basico','D&D3.5'),(147,'D&D - 3.5 - Guía del Dungeon Master II.pdf','Castellano','Basico','D&D3.5'),(122,'D&D - 3.5 - Guia jugador de los planos.pdf','Castellano','Suplemento','D&D3.5'),(146,'D&D - 3.5 - La Senda de los Fantasmas.pdf','Castellano','Suplemento','D&D3.5'),(145,'D&D - 3.5 - Manual de los Planos.pdf','Castellano','Utilidades','D&D3.5'),(142,'D&D - 3.5 - Manual de Monstruos I.pdf','Castellano','Suplemento','D&D3.5'),(141,'D&D - 3.5 - Manual de Monstruos II.pdf','Castellano','Suplemento','D&D3.5'),(140,'D&D - 3.5 - Manual de Monstruos III.pdf','Castellano','Suplemento','D&D3.5'),(139,'D&D - 3.5 - Manual de Monstruos IV.pdf','Castellano','Suplemento','D&D3.5'),(138,'D&D - 3.5 - Manual de Monstruos V.pdf','Castellano','Suplemento','D&D3.5'),(121,'D&D - 3.5 - Manual de Niveles épicos.pdf','Castellano','Suplemento','D&D3.5'),(120,'D&D - 3.5 - Manual de Psionica.pdf','Castellano','Suplemento','D&D3.5'),(119,'D&D - 3.5 - Manual del Jugador I.pdf','Castellano','Basico','D&D3.5'),(118,'D&D - 3.5 - Manual del Jugador II.pdf','Castellano','Basico','D&D3.5'),(144,'D&D - 3.5 - Pantalla del DM.pdf','Castellano','Utilidades','D&D3.5'),(128,'D&D - 3.5 - Puńo y Espada.pdf','Castellano','Suplemento','D&D3.5'),(127,'D&D - 3.5 - Seńores de lo Salvaje.pdf','Castellano','Suplemento','D&D3.5'),(126,'D&D - 3.5 - Tomo y Sangre.pdf','Castellano','Suplemento','D&D3.5'),(105,'D&D 4 Ed - Arcane Power.pdf','Inglés','Suplemento','D&D'),(104,'D&D 4 Ed - Divine Power.pdf','Inglés','Suplemento','D&D'),(111,'D&D 4 Ed - Draconomicon 1.pdf','Inglés','Suplemento','D&D'),(110,'D&D 4 Ed - Draconomicon 2.pdf','Inglés','Suplemento','D&D'),(114,'D&D 4 Ed - Guia del Dungeon Master 1.pdf','Castellano','Basico','D&D'),(113,'D&D 4 Ed - Guia del Dungeon Master 2.pdf','Castellano','Basico','D&D'),(103,'D&D 4 Ed - La boveda del aventurero 1.pdf','Castellano','Suplemento','D&D'),(102,'D&D 4 Ed - La boveda del aventurero 2.pdf','Castellano','Suplemento','D&D'),(112,'D&D 4 Ed - Manual de los Planos.pdf','Castellano','Suplemento','D&D'),(109,'D&D 4 Ed - Manual de Monstruos I.pdf','Castellano','Suplemento','D&D'),(101,'D&D 4 Ed - Manual del Jugador 1.pdf','Castellano','Basico','D&D'),(100,'D&D 4 Ed - Manual del Jugador 2.pdf','Castellano','Basico','D&D'),(99,'D&D 4 Ed - Manual del Jugador 3.pdf','Castellano','Basico','D&D'),(108,'D&D 4 Ed - Monster Manual II.pdf','Inglés','Suplemento','D&D'),(107,'D&D 4 Ed - Monster Manual III.pdf','Inglés','Suplemento','D&D'),(106,'D&D 4 Ed - Open Grave.pdf','Inglés','Suplemento','D&D'),(98,'D&D 4 Ed - Poderes Marciales.pdf','Castellano','Suplemento','D&D'),(97,'D&D 4 Ed - Primal Power.pdf','Inglés','Suplemento','D&D'),(96,'D&D 4 Ed - Psionic Power.pdf','Inglés','Suplemento','D&D'),(155,'Dioses y Monstruos.pdf','Castellano','Suplemento','Fate'),(167,'EdadOscura-Fichas-Clanes.pdf','Castellano','Utilidades','Vampiro Edad Oscura'),(94,'Elresurgirdeldragonebook.pdf','Castellano','Basico','El resurgir del dragón'),(158,'Fate Basico - Fe de Erratas.pdf','Castellano','Utilidades','Fate'),(157,'Fate Basico - Ficha.pdf','Castellano','Utilidades','Fate'),(156,'Fate Basico - Resumen.pdf','Castellano','Utilidades','Fate'),(154,'Fate Básico.pdf','Castellano','Suplemento','Fate'),(153,'FateSystemToolkit.pdf','Castellano','Basico','Fate'),(82,'Ficha - Básica.pdf','Castellano','Utilidades','Vampiro la mascarada '),(87,'Ficha - Clanes.pdf','Castellano','Utilidades','Vampiro la mascarada '),(57,'Ficha - Hombre Lobo 20.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(9,'Ficha Ampliada.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(10,'Ficha BlackZerg.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(91,'Ficha Editable El resurgir del dragón.pdf','Castellano','Utilidades','El resurgir del dragón'),(8,'Ficha Extra Base.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(11,'Ficha Extra Convocación.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(7,'Ficha Extra Ki.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(6,'Ficha Extra Magia.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(5,'Ficha Extra Psiquico 1.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(4,'Ficha Extra Psiquico 2.pdf','Castellano','Utilidades','Anima Beyond Fantasy'),(56,'Fichas - Cuaderno Razas.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(117,'Fichas de jugador 3.5.pdf','Castellano','Utilidades','D&D3.5'),(69,'Gurahl.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(115,'Hoja de Personaje.pdf','Castellano','Utilidades','D&D'),(14,'Hoja-de-personaje.pdf','Castellano','Utilidades','La leyenda de los 5 anillos'),(20,'Hombre Lobo - La Ultima Batalla.pdf','Castellano','Novela','Hombrelobo el apocalipsis '),(52,'Hombre Lobo 20 Aniversario.pdf','Castellano','Basico','Hombrelobo el apocalipsis '),(68,'Khan.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(67,'Kitsune.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(12,'La Leyenda de los Cinco Anillos.pdf','Castellano','Basico','La leyenda de los 5 anillos'),(19,'Mago - El Dia del Juicio.pdf','Castellano','Novela','Mago la ascension '),(168,'Mago20 La Ascension','Castellano','Basico','Mago la ascension '),(15,'Mapa-rokugan.pdf','Castellano','Utilidades','La leyenda de los 5 anillos'),(66,'Mokolé.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(65,'Nagah.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(84,'Nombres temibles - Lista Roja.pdf','Castellano','Suplemento','Vampiro la mascarada '),(13,'Nuevas-tablas-de-herencia.pdf','Castellano','Utilidades','La leyenda de los 5 anillos'),(64,'Nuwisha.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(55,'Pantalla - Hombre Lobo 20 Aniversario.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(166,'Pantalla de Narrador.pdf','Castellano','Utilidades','Vampiro Edad Oscura'),(90,'Pantalla del Narrador.pdf','Castellano','Utilidades','Vampiro la mascarada '),(63,'Pumonca.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(62,'Qualmi.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(54,'Rabia por el mundo.pdf','Castellano','Suplemento','Hombrelobo el apocalipsis '),(61,'Ratkin.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(53,'Razas Cambiantes.pdf','Castellano','Suplemento','Hombrelobo el apocalipsis '),(93,'Resurgir-dragon-ficha_jugador-web-BN.pdf','Castellano','Utilidades','El resurgir del dragón'),(95,'Resurgir-dragon-ficha_jugador-web-color.pdf','Castellano','Utilidades','El resurgir del dragón'),(92,'resurgirdeldragon-mapa-voldor.pdf','Castellano','Utilidades','El resurgir del dragón'),(60,'Rokea.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(83,'Saber de los Clanes.pdf','Castellano','Suplemento','Vampiro la mascarada '),(59,'Simba.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(58,'Swara.pdf','Castellano','Utilidades','Hombrelobo el apocalipsis '),(16,'Tablas-de-encuentros.pdf','Castellano','Utilidades','La leyenda de los 5 anillos'),(17,'Tablas-de-herencia.pdf','Castellano','Utilidades','La leyenda de los 5 anillos'),(116,'Tipos Ataques.pdf','Castellano','Utilidades','D&D'),(36,'Triologia Lasombra - 1 - Seńales.pdf','Castellano','Novela','Vampiro la mascarada '),(35,'Triologia Lasombra - 2 - Sombras.pdf','Castellano','Novela','Vampiro la mascarada '),(37,'Triologia Lasombra - 3 - Sacrificios.pdf','Castellano','Novela','Vampiro la mascarada '),(18,'Vampiro - Gehena, La Ultima Noche.pdf','Castellano','Novela','Vampiro la mascarada'),(165,'Vampiro Edad Oscura.pdf','Castellano','Basico','Vampiro Edad Oscura');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master` (
  `partida_Cronica` varchar(45) NOT NULL,
  `jugador_Apodo` varchar(45) NOT NULL,
  PRIMARY KEY (`partida_Cronica`,`jugador_Apodo`),
  KEY `fk_partida_has_jugador_jugador1_idx` (`jugador_Apodo`),
  KEY `fk_partida_has_jugador_partida1_idx` (`partida_Cronica`),
  CONSTRAINT `fk_partida_has_jugador_jugador1` FOREIGN KEY (`jugador_Apodo`) REFERENCES `jugador` (`Apodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_partida_has_jugador_partida1` FOREIGN KEY (`partida_Cronica`) REFERENCES `partida` (`Cronica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master`
--

LOCK TABLES `master` WRITE;
/*!40000 ALTER TABLE `master` DISABLE KEYS */;
INSERT INTO `master` VALUES ('Aventura de locura','Darkgeleon'),('Magia en NY','Metal'),('Espejito espejito','Nimen'),('Historias de Rokugan','Nimen'),('Una historia de dioses','Nimen'),('El ultimo campeonato topacio','Wolffair'),('La manada del cuerno Helado','Wolffair'),('Razas Cambiantes','Wolffair');
/*!40000 ALTER TABLE `master` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Edición` varchar(45) DEFAULT NULL,
  `Época` enum('Actual','Medieval','Futuro','Contemporaneo','*') DEFAULT NULL,
  PRIMARY KEY (`Nombre`),
  UNIQUE KEY `idRol_UNIQUE` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Anima Beyond Fantasy','Core Exxet (revisada)','Medieval'),(2,'D&D','4.0','Medieval'),(3,'D&D3.5','3.5','Medieval'),(4,'Dragon Age','1ra Edición','Medieval'),(5,'El resurgir del dragón','1ra Edición','Medieval'),(6,'Fate','1ra Edición','*'),(7,'Hombrelobo el apocalipsis','20 aniversario','Actual'),(8,'La leyenda de los 5 anillos','4ta Edición','Medieval'),(12,'La llamada de Chtulhu','7ª Edición','Contemporaneo'),(9,'Mago la ascension','20 aniversario','Actual'),(10,'Pathfinder','1ra Edición','Medieval'),(13,'Vampiro Edad Oscura','20 aniversario','Medieval'),(11,'Vampiro la mascarada','20 aniversario','Actual');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-02-10 13:49:18
