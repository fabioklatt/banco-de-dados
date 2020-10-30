CREATE DATABASE  IF NOT EXISTS `adega` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `adega`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: adega
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(50) NOT NULL,
  `endereco` text,
  `telefone` varchar(15) DEFAULT NULL,
  `produto` varchar(20) DEFAULT NULL,
  `valoruni` decimal(5,2) DEFAULT NULL,
  `valortot` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `telefone` (`telefone`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Hans Weissman','r monte azul 24','11944552332','concha y toro',38.90,38.90),(2,'Maria Pontes','r rebeca pessoa 89','11955255665','norton malbec',36.89,36.89),(3,'Juliana Louver','r ananias gouveia 223','1145522232','porta 6',43.99,87.98),(4,'Jorge Prado','r sulista 3223','11922333256','porta 6 ',43.99,43.99),(5,'João Nogueira','r patricia lopes 89','11955252265','julia florista',39.90,39.90),(6,'João Nogueira','r patricia lopes 89','11955252278','julia florista',39.90,39.90),(7,'Aparecida Zolla','r ribeiro pontes 2523','11956655852','cordillera andina',46.89,93.78),(8,'Tomas Blatt','r mariana portugal 79','11932337854','chilano',45.99,45.99),(9,'Marta Felix','r real 122','81956654556','cordillera andina',46.89,46.89),(10,'Sueli Fonseca','r real 122','81956654500','cordillera andina',46.89,46.89),(11,'Joao Pires','r olinda 13','11932444454','chilano',45.99,45.99);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `descrição` text,
  `preco` decimal(5,2) DEFAULT NULL,
  `imagem` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'concha y toro','vinho rose concha y toro',38.90,'concha y toro'),(2,'chilano','vinho rose chilano',45.99,'chilano'),(3,'mateus','vinho rose mateus',35.89,'mateus'),(4,'julia florista','vinho tinto julia florista',39.90,'julia florista'),(5,'porta 6','vinho tinto porta 6',43.99,'porta 6'),(6,'norton malbec','vinho tinto norton malbec',36.89,'norton malbec'),(7,'frontera late harvest','vinho branco frontera lateharvest',49.90,'frontera late'),(8,'crios de susana','vinho branco crios de susana',53.89,'crios de susana'),(9,'cordillera andina','vinho branco cordillera andina sauvignon',46.89,'cordillera andina');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-30 12:39:42
