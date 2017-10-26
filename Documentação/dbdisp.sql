-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_disp
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Dumping data for table `diasemana`
--

LOCK TABLES `diasemana` WRITE;
/*!40000 ALTER TABLE `diasemana` DISABLE KEYS */;
INSERT INTO `diasemana` VALUES (1,'Segunda'),(2,'Terça'),(3,'Quarta'),(4,'Quinta'),(5,'Sexta'),(6,'Sábado');
/*!40000 ALTER TABLE `diasemana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `diatempo`
--

LOCK TABLES `diatempo` WRITE;
/*!40000 ALTER TABLE `diatempo` DISABLE KEYS */;
INSERT INTO `diatempo` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,1,2),(11,2,2),(12,3,2),(13,4,2),(14,5,2),(15,6,2),(16,7,2),(17,8,2),(18,9,2),(19,1,3),(20,2,3),(21,3,3),(22,4,3),(23,5,3),(24,6,3),(25,7,3),(26,8,3),(27,9,3),(28,1,4),(29,2,4),(30,3,4),(31,4,4),(32,5,4),(33,6,4),(34,7,4),(35,8,4),(36,9,4),(37,1,5),(38,2,5),(39,3,5),(40,4,5),(41,5,5),(42,6,5),(43,7,5),(44,8,5),(45,9,5),(46,1,6),(47,2,6),(48,3,6),(49,4,6),(50,5,6),(51,6,6),(52,7,6),(53,8,6),(54,9,6);
/*!40000 ALTER TABLE `diatempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `disponibilidade`
--

LOCK TABLES `disponibilidade` WRITE;
/*!40000 ALTER TABLE `disponibilidade` DISABLE KEYS */;
INSERT INTO `disponibilidade` VALUES (1,1,1),(6,24,2),(7,24,3),(8,24,7);
/*!40000 ALTER TABLE `disponibilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'michel','michel@gmail','123456789','asdasdadsa','teste'),(2,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(3,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(4,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(5,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(6,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(7,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(8,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(9,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(10,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(11,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(12,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(13,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(14,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(15,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(16,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(17,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(18,'Michel Silva de Oliveira','michel.s.oliveira@gmail.com','2196761161','testesste',NULL),(19,'Joao oliveira','joao@joao.com.br','1234567890','asdabase','teste'),(20,'pablo','pablo@gmail.com','1234567890','asbfde','asdasda'),(21,'pablo','pablo@gmail.com','1234567890','asbfde','asdasda'),(22,'ninja','m@m.com.br','2134567894','teste','teste'),(23,'ninja','2134567894','m@m.com.br','teste','teste'),(24,'ninja','2134567894','m@m.com.br','teste','teste');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tempoaula`
--

LOCK TABLES `tempoaula` WRITE;
/*!40000 ALTER TABLE `tempoaula` DISABLE KEYS */;
INSERT INTO `tempoaula` VALUES (1,'07:20:00.00000','08:30:00.00000'),(2,'08:30:00.00000','09:10:00.00000'),(3,'09:30:00.00000','10:20:00.00000'),(4,'10:20:00.00000','11:10:00.00000'),(5,'11:10:00.00000','12:00:00.00000'),(6,'18:20:00.00000','19:10:00.00000'),(7,'19:10:00.00000','20:00:00.00000'),(8,'20:20:00.00000','21:10:00.00000'),(9,'21:10:00.00000','22:00:00.00000');
/*!40000 ALTER TABLE `tempoaula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_disp'
--

--
-- Dumping routines for database 'db_disp'
--
/*!50003 DROP PROCEDURE IF EXISTS `INSERE_DISPONIBILIDADE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERE_DISPONIBILIDADE`(
	IN dDisp_professorid  int,
    IN dDisp_diatempoid int    
)
BEGIN
	INSERT INTO disponibilidade
    (
		professor_id,
        diatempo_id
    
    )
    
    VALUES
    (
		dDisp_professorid,
        dDisp_diatempoid
        
    );
COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INSERE_PROFESSOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERE_PROFESSOR`(
	IN pProfessor_nome  varchar(120),
    IN pProfessor_email varchar(60),
    IN pProfessor_telefone varchar(11),
    IN pProfessor_discapto varchar(500),
	IN pProfessor_outrasinfo varchar(200)
)
BEGIN
	INSERT INTO professor 
    (
		nome,
        email,
        telefone,
        discapto,
        outrasinfo
    
    )
    
    VALUES
    (
		pProfessor_nome,
        pProfessor_email,
        pProfessor_telefone,
        pProfessor_discapto,
        pProfessor_outrasinfo
        
    );
COMMIT;
END ;;
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

-- Dump completed on 2017-10-26 17:32:50
