-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: andres_DB
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.20-MariaDB

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Heavy Metal'),(2,'Black Metal'),(3,'Death Metal'),(4,'Power Metal'),(5,'Thrash Metal'),(6,'Symphonic Metal'),(7,'Gothic Metal'),(8,'Hard Rock'),(9,'Progressive Metal'),(10,'Alternative Metal');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  `descripcion` text NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b71d6702-d17c-4adb-be3b-cd401ba6d96b` (`usuario_id`),
  KEY `FK_fbeddc12-5ebe-423a-a077-9eee38369162` (`categoria_id`),
  CONSTRAINT `FK_b71d6702-d17c-4adb-be3b-cd401ba6d96b` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FK_fbeddc12-5ebe-423a-a077-9eee38369162` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Breve adelanto del próximo single de BLIND GUARDIAN','2021-11-11 03:56:25',NULL,'A continuación tenéis un breve adelanto del próximo single de BLIND GUARDIAN “Deliver Us From Evil” que saldrá el 3 de diciembre a través de Nuclear Blast.',1,1,1),(2,'OBUS grabarán una película documental de su 40 aniversario','2021-09-03 11:11:37',NULL,'OBUS han revelado que rodarán una película documental durante su gira de 40 aniversario, que se estrenará en otoño de 2022. Las primeras imágenes se grabarán en el concierto de inicio de gira que el grupo dará este viernes en la madrileña Sala La Riviera ¡No te lo pierdas!',1,8,0),(3,'Reediciones de ANNIHILATOR. ','2021-09-03 11:12:40',NULL,'El 12 de noviembre estrenarán un nuevo vídeo para el single \"Downright Dominate” en el que participan Alexi Laiho, Dave Lombardo y Stu Block.',2,2,0),(4,'Nuevo vídeo de NAPALM DEATH','2021-11-11 03:56:25',NULL,'NAPALM DEATH han renovado recientemente su contrato con Century Media Records ampliando así su colaboración.\r\n\r\nNAPALM DEATH editaron el 18 de septiembre de 2020 a través de Century Media un nuevo trabajo titulado “Throes of Joy in the Jaws of Defeatism”.',3,10,1),(5,' Adelanto de los directos de SABATON','2021-09-03 11:17:49',NULL,'SABATON han estrenado el tema “Great War” de su próximo lanzamiento en directo “20th Anniversary Show”, el cual saldrá el 19 de noviembre a través de Nuclear Blast junto a “The Great Show”.',4,9,0),(6,'DREAM THEATER – Entrevista con James LaBrie','2021-11-11 03:56:25',NULL,'Nuestro redactor y amigo J. José Jiménez entrevista a James Labrie cantante de DREAM THEATER. habla con él sobre “A View from The Top of the World”. algunas de sus canciones, el trabajo de John Petrucci y el suyo propio, la portada',9,2,1),(7,'Nuevo vídeo de Ozzy Osbourne','2021-09-03 11:21:35',NULL,'Ozzy Osbourne ha estrenado un vídeo especial para su clásico “Flying High Again”.',4,4,0),(8,'Nuevo capítulo de QUEEN','2021-09-03 11:23:55',NULL,'QUEEN siguen celebrando su quincuagésimo aniversario con el evento “Queen The Greatest” y han publicado el trigésimo cuarto clip titulado “Queen 1986 : The Magic Tour, Part 2”.',8,5,0),(9,'ACCEPT han pospuesto su gira europea','2021-11-11 03:56:25',NULL,'Explica el guitarrista Wolf Hoffmann: “A pesar de lo mucho que queríamos, la actual situación del Coronavirus no nos permite seguir adelante con la gira en 2022.',6,4,1),(10,'TARJA explica porque no se ha centrado en NIGHTWISH en su nuevo libro','2021-11-11 03:56:25',NULL,'Tarja Turunen ha explicado en una entrevista con Chaoszine porque no se ha extendido más en su etapa en NIGHTWISH en su nuevo libro \"Singing In My Blood\".',7,10,1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `e-mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Mario','Granados','mario.granados@gmail.com'),(2,'Andrea','Rivera','andre.rive@gmail.com'),(3,'Viviana','Lopez','lopez.v@gmail.com'),(4,'Diana','Gonzalez','diana.gon@gmail.com'),(5,'Lina','Martinez','marti.li@hotmail.com'),(6,'Elena','Paez','paez.ele@gmail.com'),(7,'Carmen','Murcia','murcia.carmen@gmail.com'),(8,'Irene','Rodriguez','irene.rodri@hotmail.com'),(9,'Juan','Benavidez','juan.benavidez@gmail.com'),(10,'Andres','Rubio','andy.rubio@gmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'andres_DB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11  0:56:55
