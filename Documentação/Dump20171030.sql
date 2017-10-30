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
-- Table structure for table `diasemana`
--

DROP TABLE IF EXISTS `diasemana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diasemana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diasemana`
--

LOCK TABLES `diasemana` WRITE;
/*!40000 ALTER TABLE `diasemana` DISABLE KEYS */;
INSERT INTO `diasemana` VALUES (1,'Segunda'),(2,'Terça'),(3,'Quarta'),(4,'Quinta'),(5,'Sexta'),(6,'Sábado');
/*!40000 ALTER TABLE `diasemana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diatempo`
--

DROP TABLE IF EXISTS `diatempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diatempo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tempoaula_id` int(11) NOT NULL,
  `diasemana_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tempoaula_id`,`diasemana_id`),
  KEY `fk_tempoaula_has_diasemana_diasemana1_idx` (`diasemana_id`),
  KEY `fk_tempoaula_has_diasemana_tempoaula_idx` (`tempoaula_id`),
  CONSTRAINT `fk_tempoaula_has_diasemana_diasemana1` FOREIGN KEY (`diasemana_id`) REFERENCES `diasemana` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tempoaula_has_diasemana_tempoaula` FOREIGN KEY (`tempoaula_id`) REFERENCES `tempoaula` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diatempo`
--

LOCK TABLES `diatempo` WRITE;
/*!40000 ALTER TABLE `diatempo` DISABLE KEYS */;
INSERT INTO `diatempo` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,1,2),(11,2,2),(12,3,2),(13,4,2),(14,5,2),(15,6,2),(16,7,2),(17,8,2),(18,9,2),(19,1,3),(20,2,3),(21,3,3),(22,4,3),(23,5,3),(24,6,3),(25,7,3),(26,8,3),(27,9,3),(28,1,4),(29,2,4),(30,3,4),(31,4,4),(32,5,4),(33,6,4),(34,7,4),(35,8,4),(36,9,4),(37,1,5),(38,2,5),(39,3,5),(40,4,5),(41,5,5),(42,6,5),(43,7,5),(44,8,5),(45,9,5),(46,1,6),(47,2,6),(48,3,6),(49,4,6),(50,5,6),(51,6,6),(52,7,6),(53,8,6),(54,9,6);
/*!40000 ALTER TABLE `diatempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disponibilidade`
--

DROP TABLE IF EXISTS `disponibilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disponibilidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `professor_id` int(11) NOT NULL,
  `diatempo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`professor_id`,`diatempo_id`),
  KEY `fk_disponibilidade_professor1_idx` (`professor_id`),
  KEY `fk_disponibilidade_diatempo1_idx` (`diatempo_id`),
  CONSTRAINT `fk_disponibilidade_diatempo1` FOREIGN KEY (`diatempo_id`) REFERENCES `diatempo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disponibilidade_professor1` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilidade`
--

LOCK TABLES `disponibilidade` WRITE;
/*!40000 ALTER TABLE `disponibilidade` DISABLE KEYS */;
INSERT INTO `disponibilidade` VALUES (1,1,1),(6,24,2),(7,24,3),(8,24,7),(9,24,11),(10,24,14),(11,24,17);
/*!40000 ALTER TABLE `disponibilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `discapto` varchar(500) NOT NULL,
  `outrasinfo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'michel','michel@gmail','123456789','asdasdadsa','teste'),(24,'ninja','2134567894','m@m.com.br','teste','teste'),(25,'teste','2134567894','m@m.com.br','teste','teste');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempoaula`
--

DROP TABLE IF EXISTS `tempoaula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempoaula` (
  `id` int(11) NOT NULL,
  `hora_inicio` time(5) DEFAULT NULL,
  `hora_fim` time(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempoaula`
--

LOCK TABLES `tempoaula` WRITE;
/*!40000 ALTER TABLE `tempoaula` DISABLE KEYS */;
INSERT INTO `tempoaula` VALUES (1,'07:20:00.00000','08:30:00.00000'),(2,'08:30:00.00000','09:10:00.00000'),(3,'09:30:00.00000','10:20:00.00000'),(4,'10:20:00.00000','11:10:00.00000'),(5,'11:10:00.00000','12:00:00.00000'),(6,'18:20:00.00000','19:10:00.00000'),(7,'19:10:00.00000','20:00:00.00000'),(8,'20:20:00.00000','21:10:00.00000'),(9,'21:10:00.00000','22:00:00.00000');
/*!40000 ALTER TABLE `tempoaula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `uvw_prof_manha`
--

DROP TABLE IF EXISTS `uvw_prof_manha`;
/*!50001 DROP VIEW IF EXISTS `uvw_prof_manha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `uvw_prof_manha` AS SELECT 
 1 AS `prof_id`,
 1 AS `nome`,
 1 AS `diasemana_id`,
 1 AS `aula1`,
 1 AS `aula2`,
 1 AS `aula3`,
 1 AS `aula4`,
 1 AS `aula5`,
 1 AS `horario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `uvw_prof_noite`
--

DROP TABLE IF EXISTS `uvw_prof_noite`;
/*!50001 DROP VIEW IF EXISTS `uvw_prof_noite`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `uvw_prof_noite` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `diasemana_id`,
 1 AS `aula6`,
 1 AS `aula7`,
 1 AS `aula8`,
 1 AS `aula9`,
 1 AS `horario`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Final view structure for view `uvw_prof_manha`
--

/*!50001 DROP VIEW IF EXISTS `uvw_prof_manha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uvw_prof_manha` AS select `p`.`id` AS `prof_id`,`p`.`nome` AS `nome`,`dt`.`diasemana_id` AS `diasemana_id`,sum((case when (`dt`.`tempoaula_id` = 1) then 1 else 0 end)) AS `aula1`,sum((case when (`dt`.`tempoaula_id` = 2) then 1 else 0 end)) AS `aula2`,sum((case when (`dt`.`tempoaula_id` = 3) then 1 else 0 end)) AS `aula3`,sum((case when (`dt`.`tempoaula_id` = 4) then 1 else 0 end)) AS `aula4`,sum((case when (`dt`.`tempoaula_id` = 5) then 1 else 0 end)) AS `aula5`,concat(cast(sum((case when (`dt`.`tempoaula_id` = 1) then 1 else 0 end)) as char charset utf8),cast(sum((case when (`dt`.`tempoaula_id` = 2) then 1 else 0 end)) as char charset utf8),cast(sum((case when (`dt`.`tempoaula_id` = 3) then 1 else 0 end)) as char charset utf8),cast(sum((case when (`dt`.`tempoaula_id` = 4) then 1 else 0 end)) as char charset utf8),cast(sum((case when (`dt`.`tempoaula_id` = 5) then 1 else 0 end)) as char charset utf8)) AS `horario` from ((((`disponibilidade` `dp` join `professor` `p` on((`dp`.`professor_id` = `p`.`id`))) join `diatempo` `dt` on((`dp`.`diatempo_id` = `dt`.`id`))) join `diasemana` `ds` on((`dt`.`diasemana_id` = `ds`.`id`))) join `tempoaula` `ta` on((`dt`.`tempoaula_id` = `ta`.`id`))) group by `dp`.`professor_id`,`dt`.`diasemana_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uvw_prof_noite`
--

/*!50001 DROP VIEW IF EXISTS `uvw_prof_noite`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uvw_prof_noite` AS select `p`.`id` AS `id`,`p`.`nome` AS `nome`,`dt`.`diasemana_id` AS `diasemana_id`,sum((case when (`dt`.`tempoaula_id` = 6) then 1 else 0 end)) AS `aula6`,sum((case when (`dt`.`tempoaula_id` = 7) then 1 else 0 end)) AS `aula7`,sum((case when (`dt`.`tempoaula_id` = 8) then 1 else 0 end)) AS `aula8`,sum((case when (`dt`.`tempoaula_id` = 9) then 1 else 0 end)) AS `aula9`,concat(cast(sum((case when (`dt`.`tempoaula_id` = 6) then 1 else 0 end)) as char charset utf8),cast(sum((case when (`dt`.`tempoaula_id` = 7) then 1 else 0 end)) as char charset utf8),cast(sum((case when (`dt`.`tempoaula_id` = 8) then 1 else 0 end)) as char charset utf8),cast(sum((case when (`dt`.`tempoaula_id` = 9) then 1 else 0 end)) as char charset utf8)) AS `horario` from ((((`disponibilidade` `dp` join `professor` `p` on((`dp`.`professor_id` = `p`.`id`))) join `diatempo` `dt` on((`dp`.`diatempo_id` = `dt`.`id`))) join `diasemana` `ds` on((`dt`.`diasemana_id` = `ds`.`id`))) join `tempoaula` `ta` on((`dt`.`tempoaula_id` = `ta`.`id`))) group by `dp`.`professor_id`,`dt`.`diasemana_id` */;
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

-- Dump completed on 2017-10-30 18:48:48
