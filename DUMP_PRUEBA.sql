-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: INTELAT
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-3

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
-- Table structure for table `CHAT`
--

DROP TABLE IF EXISTS `CHAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHAT` (
  `CLIENTE_ID` varchar(100) NOT NULL,
  `PERSONAL_ID` varchar(100) DEFAULT NULL,
  `ID_CHAT` bigint(20) NOT NULL,
  PRIMARY KEY (`ID_CHAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHAT`
--

LOCK TABLES `CHAT` WRITE;
/*!40000 ALTER TABLE `CHAT` DISABLE KEYS */;
INSERT INTO `CHAT` VALUES ('ZZZZAAA','Emmanuel',112311);
/*!40000 ALTER TABLE `CHAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENTES`
--

DROP TABLE IF EXISTS `CLIENTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENTES` (
  `NUM_SINIESTRO` varchar(100) NOT NULL,
  `NUM_SERIE` varchar(100) NOT NULL,
  `DUEÑO_NOMBRE` varchar(100) NOT NULL,
  `DISPONIBLE` tinyint(1) NOT NULL,
  `ESTADO_AVANCE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`NUM_SERIE`,`NUM_SINIESTRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TABLA QUE REPRESENTA A LOS CLIENTES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTES`
--

LOCK TABLES `CLIENTES` WRITE;
/*!40000 ALTER TABLE `CLIENTES` DISABLE KEYS */;
INSERT INTO `CLIENTES` VALUES ('ZZZZAAA','123AAZA','PRUEBA RODRIGUEZ',0,0),('12ASDCCA','2211AA','PEPE PEREZ',0,0),('12ASDCCB','2211AC','JUAN PEREZ',1,0),('12ASDCCE','2211AD','MARTA PEREZ',1,0),('2211121','33az','PRUEBA RODRIGUEZ',0,0),('221AAD331','4433221144','PEPE GONZALEZ',0,0);
/*!40000 ALTER TABLE `CLIENTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOTO`
--

DROP TABLE IF EXISTS `FOTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOTO` (
  `IMAGEN` text NOT NULL,
  `FECHA_FOTO` date NOT NULL,
  `ID_FOTO` varchar(100) NOT NULL,
  `ID_SINIESTRO` varchar(100) NOT NULL,
  PRIMARY KEY (`FECHA_FOTO`,`ID_FOTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='GUARDAR FOTOS DEL CLIENTE ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOTO`
--

LOCK TABLES `FOTO` WRITE;
/*!40000 ALTER TABLE `FOTO` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MENSAJES`
--

DROP TABLE IF EXISTS `MENSAJES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MENSAJES` (
  `ID_CHAT` bigint(20) NOT NULL,
  `ID_MENSAJE` bigint(20) unsigned NOT NULL,
  `DE` varchar(100) NOT NULL,
  `CONTENIDO` varchar(200) NOT NULL,
  `FECHA` datetime NOT NULL,
  PRIMARY KEY (`ID_MENSAJE`),
  KEY `FK_MENSAJE` (`ID_CHAT`),
  CONSTRAINT `FK_MENSAJE` FOREIGN KEY (`ID_CHAT`) REFERENCES `CHAT` (`ID_CHAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MENSAJES`
--

LOCK TABLES `MENSAJES` WRITE;
/*!40000 ALTER TABLE `MENSAJES` DISABLE KEYS */;
/*!40000 ALTER TABLE `MENSAJES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTES`
--

DROP TABLE IF EXISTS `PARTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARTES` (
  `ID_SINIESTRO` varchar(100) NOT NULL,
  `PIEZA` varchar(100) NOT NULL,
  `PRECIO` int(10) unsigned DEFAULT NULL,
  `FECHA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTES`
--

LOCK TABLES `PARTES` WRITE;
/*!40000 ALTER TABLE `PARTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `PARTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USUARIOS`
--

DROP TABLE IF EXISTS `USUARIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USUARIOS` (
  `USUARIO` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `PUESTO` varchar(100) NOT NULL,
  PRIMARY KEY (`USUARIO`,`PASSWORD`,`PUESTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='TABLA QUE REGISTRA EL CONTROL DE LOS USUARIOS EN LA APLICACION DE ESCRITORIO';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USUARIOS`
--

LOCK TABLES `USUARIOS` WRITE;
/*!40000 ALTER TABLE `USUARIOS` DISABLE KEYS */;
INSERT INTO `USUARIOS` VALUES ('Emmanuel','admin','Comunicador'),('PEPE','PEPE123','JEFE');
/*!40000 ALTER TABLE `USUARIOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `VIEW_USUARIOS`
--

DROP TABLE IF EXISTS `VIEW_USUARIOS`;
/*!50001 DROP VIEW IF EXISTS `VIEW_USUARIOS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `VIEW_USUARIOS` (
  `USUARIO` tinyint NOT NULL,
  `PASSWORD` tinyint NOT NULL,
  `PUESTO` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `VIEW_USUARIOS_CONECTADOS`
--

DROP TABLE IF EXISTS `VIEW_USUARIOS_CONECTADOS`;
/*!50001 DROP VIEW IF EXISTS `VIEW_USUARIOS_CONECTADOS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `VIEW_USUARIOS_CONECTADOS` (
  `NUM_SINIESTRO` tinyint NOT NULL,
  `NUM_SERIE` tinyint NOT NULL,
  `DUEÑO_NOMBRE` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'INTELAT'
--
/*!50003 DROP FUNCTION IF EXISTS `CHECK_CONVERSACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` FUNCTION `CHECK_CONVERSACION`(CLIENTE_IDENTIFICADOR VARCHAR (100)) RETURNS tinyint(1)
BEGIN
	RETURN  EXISTS(SELECT CLIENTE_ID FROM INTELAT.CHAT WHERE CLIENTE_IDENTIFICADOR = CLIENTE_ID);
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AGREGA_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `AGREGA_CLIENTE`(IN NUMERO_SINIESTRO VARCHAR(100),IN NUMERO_SERIE VARCHAR(100),
IN NOMBRE_DUEÑO VARCHAR(100))
BEGIN
	INSERT INTO INTELAT.CLIENTES
(NUM_SINIESTRO, NUM_SERIE, DUEÑO_NOMBRE, DISPONIBLE)
VALUES(NUMERO_SINIESTRO, NUMERO_SERIE, NOMBRE_DUEÑO, 0);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AGREGA_EMPLEADO_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `AGREGA_EMPLEADO_USUARIO`(IN NOMBRE_USUARIO VARCHAR(100)
,IN PASSWORD_USUARIO VARCHAR(100),
IN PUESTO VARCHAR(100))
BEGIN
	INSERT INTO INTELAT.USUARIOS
(USUARIO, PASSWORD, PUESTO)
VALUES(NOMBRE_USUARIO, PASSWORD_USUARIO, PUESTO);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AGREGA_FOTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `AGREGA_FOTO`(IN BASE_64IMAGEN TEXT,IN NUMERO_SINIESTRO VARCHAR(100),IN IDENTIFICA_FOTO VARCHAR(100))
BEGIN
INSERT INTO INTELAT.FOTO
(IMAGEN, FECHA_FOTO, ID_FOTO, ID_SINIESTRO)
VALUES(BASE_64IMAGEN,CURDATE(),IDENTIFICA_FOTO,NUMERO_SINIESTRO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AGREGA_MENSAJE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `AGREGA_MENSAJE`(IN IDENTIFICA_CHAT BIGINT ,
IN IDENTIFICADOR_MENSAJE BIGINT,
IN PERSONA_QUE_ENVIA VARCHAR(100) ,
IN CONTENIDO_MENSAJE VARCHAR(200),
IN FECHA_MENSAJE DATETIME)
BEGIN
	INSERT INTO INTELAT.MENSAJES
(ID_CHAT, ID_MENSAJE, DE, CONTENIDO, FECHA)
VALUES(IDENTIFICA_CHAT,IDENTIFICADOR_MENSAJE,PERSONA_QUE_ENVIA,CONTENIDO_MENSAJE,FECHA_MENSAJE);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AGREGA_PIEZA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `AGREGA_PIEZA`(IN IDENTIFICADOR_SINIESTRO VARCHAR(100),
IN NOMBRE_PIEZA VARCHAR(100), IN PRECIO INT)
BEGIN
   INSERT INTO INTELAT.PARTES
(ID_SINIESTRO, PIEZA, PRECIO, FECHA)
VALUES(IDENTIFICADOR_SINIESTRO, NOMBRE_PIEZA, PRECIO, CURDATE());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CREA_CONVERSACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `CREA_CONVERSACION`(IN ID_USUARIO  VARCHAR(100)
,IN  ID_PERSONAL VARCHAR(100)
, IN NUMERO_ID_CHAT BIGINT)
BEGIN
INSERT INTO INTELAT.CHAT
(CLIENTE_ID, PERSONAL_ID, ID_CHAT)
VALUES(ID_USUARIO, ID_PERSONAL, NUMERO_ID_CHAT);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OBTENER_CONVERSACION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`localhost` PROCEDURE `OBTENER_CONVERSACION`(IN NUMERO_SINIESTRO VARCHAR(100))
BEGIN
	SELECT DE,CONTENIDO,FECHA FROM INTELAT.MENSAJES WHERE ID_CHAT = 
(SELECT ID_CHAT FROM INTELAT.CHAT WHERE CLIENTE_ID = NUMERO_SINIESTRO)ORDER BY FECHA DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `VIEW_USUARIOS`
--

/*!50001 DROP TABLE IF EXISTS `VIEW_USUARIOS`*/;
/*!50001 DROP VIEW IF EXISTS `VIEW_USUARIOS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VIEW_USUARIOS` AS select `USUARIOS`.`USUARIO` AS `USUARIO`,`USUARIOS`.`PASSWORD` AS `PASSWORD`,`USUARIOS`.`PUESTO` AS `PUESTO` from `USUARIOS` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VIEW_USUARIOS_CONECTADOS`
--

/*!50001 DROP TABLE IF EXISTS `VIEW_USUARIOS_CONECTADOS`*/;
/*!50001 DROP VIEW IF EXISTS `VIEW_USUARIOS_CONECTADOS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VIEW_USUARIOS_CONECTADOS` AS select `CLIENTES`.`NUM_SINIESTRO` AS `NUM_SINIESTRO`,`CLIENTES`.`NUM_SERIE` AS `NUM_SERIE`,`CLIENTES`.`DUEÑO_NOMBRE` AS `DUEÑO_NOMBRE` from `CLIENTES` where (`CLIENTES`.`DISPONIBLE` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-14 20:51:38
