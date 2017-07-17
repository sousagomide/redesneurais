-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: redesneurais
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'ERROR'),(2,'BUG'),(3,'WARNING'),(4,'REQUEST'),(5,'INFORMATION');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `texto`
--

DROP TABLE IF EXISTS `texto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `texto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaextracao` text,
  `software` varchar(255) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_texto_idx` (`idcategoria`),
  CONSTRAINT `categoria_texto` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texto`
--

LOCK TABLES `texto` WRITE;
/*!40000 ALTER TABLE `texto` DISABLE KEYS */;
INSERT INTO `texto` VALUES (1,'http://www.guj.com.br/t/fibonacci/34726','GUJ',5),(2,'http://www.guj.com.br/t/fibonacci/34727','GUJ',3),(3,'http://www.guj.com.br/t/fibonacci/34728','GUJ',3),(4,'http://www.guj.com.br/t/fibonacci/34729','GUJ',4),(5,'http://www.guj.com.br/t/fibonacci/34730','GUJ',5),(6,'http://www.guj.com.br/t/fibonacci/34731','GUJ',5),(7,'http://www.guj.com.br/t/fibonacci/45226','GUJ',4),(8,'http://www.guj.com.br/t/fibonacci/45227','GUJ',3),(9,'http://www.guj.com.br/t/duvida-exercicio-fibonacci-da-apostila-caelum/73296/11','GUJ',4),(10,'http://www.guj.com.br/t/duvida-exercicio-fibonacci-da-apostila-caelum/73296/12','GUJ',4),(11,'http://www.guj.com.br/t/duvida-exercicio-fibonacci-da-apostila-caelum/73296/13','GUJ',5),(12,'http://www.guj.com.br/t/duvida-exercicio-fibonacci-da-apostila-caelum/73296/14','GUJ',5),(13,'http://www.guj.com.br/t/duvida-exercicio-fibonacci-da-apostila-caelum/73296/15','GUJ',3),(14,'http://www.guj.com.br/t/duvida-exercicio-fibonacci-da-apostila-caelum/73296/16','GUJ',5),(15,'http://www.guj.com.br/t/exercicio-de-fibonacci-usando-recursividade-e-arrays-codigo-apresenta-erro/89620/7','GUJ',4),(16,'http://www.guj.com.br/t/exercicio-de-fibonacci-usando-recursividade-e-arrays-codigo-apresenta-erro/89620/8','GUJ',3),(17,'http://www.guj.com.br/t/exercicio-de-fibonacci-usando-recursividade-e-arrays-codigo-apresenta-erro/89620/9','GUJ',1),(18,'http://www.guj.com.br/t/exercicio-de-fibonacci-usando-recursividade-e-arrays-codigo-apresenta-erro/89620/10','GUJ',3),(19,'http://www.guj.com.br/t/fibonacci-com-metodo-recursivo/91479/26','GUJ',4),(20,'http://www.guj.com.br/t/fibonacci-com-metodo-recursivo/91479/27','GUJ',3),(21,'http://www.guj.com.br/t/fibonacci-com-metodo-recursivo/91479/28','GUJ',5),(22,'http://www.guj.com.br/t/fibonacci-com-metodo-recursivo/91479/29','GUJ',4),(23,'http://www.guj.com.br/t/equacao-de-fibonacci-o-progrma-plzz/47251/15','GUJ',4),(24,'http://www.guj.com.br/t/equacao-de-fibonacci-o-progrma-plzz/47251/16','GUJ',5),(25,'http://www.guj.com.br/t/o-que-tem-de-errado-neste-codigo-sobre-serie-fibonacci-resolvido/57928/14','GUJ',4),(26,'http://www.guj.com.br/t/o-que-tem-de-errado-neste-codigo-sobre-serie-fibonacci-resolvido/57928/15','GUJ',5),(27,'http://www.guj.com.br/t/o-que-tem-de-errado-neste-codigo-sobre-serie-fibonacci-resolvido/57928/16','GUJ',3),(28,'http://www.guj.com.br/t/o-que-tem-de-errado-neste-codigo-sobre-serie-fibonacci-resolvido/57928/17','GUJ',5),(29,'http://www.guj.com.br/t/o-que-tem-de-errado-neste-codigo-sobre-serie-fibonacci-resolvido/57928/18','GUJ',5),(30,'http://www.guj.com.br/t/desempenho-em-sequencia-de-fibonacci/116056/10','GUJ',1),(31,'http://www.guj.com.br/t/desempenho-em-sequencia-de-fibonacci/116056/11','GUJ',5),(32,'http://www.guj.com.br/t/desempenho-em-sequencia-de-fibonacci/116056/12','GUJ',5),(33,'http://www.guj.com.br/t/desempenho-em-sequencia-de-fibonacci/116056/13','GUJ',5),(34,'http://www.guj.com.br/t/fibonacci-nao-consigo-fazer-resolvido/83944/8','GUJ',4),(35,'http://www.guj.com.br/t/fibonacci-nao-consigo-fazer-resolvido/83944/9','GUJ',4),(36,'http://www.guj.com.br/t/fibonacci-nao-consigo-fazer-resolvido/83944/10','GUJ',3),(37,'http://www.guj.com.br/t/estou-com-problemas-para-fazer-exercicio-da-serie-fibonacci/40888/4','GUJ',4),(38,'http://www.guj.com.br/t/estou-com-problemas-para-fazer-exercicio-da-serie-fibonacci/40888/5','GUJ',5),(39,'http://www.guj.com.br/t/problema-com-exercicio-de-sequencia-fibonacci-ajuda/53189/12','GUJ',1),(40,'http://www.guj.com.br/t/problema-com-exercicio-de-sequencia-fibonacci-ajuda/53189/13','GUJ',3),(41,'http://www.guj.com.br/t/problema-com-exercicio-de-sequencia-fibonacci-ajuda/53189/14','GUJ',1),(42,'http://www.guj.com.br/t/problema-com-exercicio-de-sequencia-fibonacci-ajuda/53189/15','GUJ',5);
/*!40000 ALTER TABLE `texto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palavra` varchar(255) DEFAULT NULL,
  `idtexto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `texto_token_idx` (`idtexto`),
  CONSTRAINT `texto_token` FOREIGN KEY (`idtexto`) REFERENCES `texto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,'CONSEGUIR',1),(2,'RECURSIVO',2),(3,'CALCULAR',3),(4,'NAO',4),(5,'SERIE',5),(6,'SOLUCIONAR',6),(7,'OTIMIZAR',7),(8,'METODO',8),(9,'SEQUENCIA',9),(10,'NAO',10),(11,'REFAZER',11),(12,'FIBONACCI',12),(13,'METODO',13),(14,'ENCONTRAR',14),(15,'AJUDAR',15),(16,'SEGUNDO',16),(17,'FAZER',17),(18,'ESTOURAR',18),(19,'SERIE',19),(20,'DUAS',20),(21,'RETORNAR',21),(22,'NAO',22),(23,'EXERCICIO',23),(24,'NAO',24),(25,'ERRAR',25),(26,'ACABAR',26),(27,'CODIGO',27),(28,'ALGORITMO',28),(29,'CONSEGUIR',29),(30,'METODO',30),(31,'INFELIZMENTE',31),(32,'MANEIRA',32),(33,'DIJSKTRA',33),(34,'SERIE',34),(35,'OBRIGADO',35),(36,'POSTAR',36),(37,'NAO',37),(38,'EXERCICIO',38),(39,'FAZER',39),(40,'PRECISAR',40),(41,'AGORA',41),(42,'FALAR',42),(43,'CODIGO',1),(44,'FIBONACCI',2),(45,'SEQUENCIA',3),(46,'ENTENDER',4),(47,'FAZER',5),(48,'FIBONACCI',6),(49,'ALGORITMO',7),(50,'RECURSIVO',8),(51,'FIBONACCI',9),(52,'ENTENDER',10),(53,'CODIGO',11),(54,'DUAS',12),(55,'DUAS',13),(56,'SOLUCIONAR',14),(57,'REALIZAR',15),(58,'IF',16),(59,'ERRAR',17),(60,'VETOR',18),(61,'FIBONACCI',19),(62,'CONDICAO',20),(63,'DIRETO',21),(64,'ENTENDER',22),(65,'PROGRAMA',23),(66,'NADA',24),(67,'CODIGO',25),(68,'TESTAR',26),(69,'NAO',27),(70,'ACIMA',28),(71,'RESOLVER',29),(72,'RECURSIVO',30),(73,'JAVA',31),(74,'FORMULA',32),(75,'METODO',33),(76,'FIBONACCI',34),(77,'NAO',35),(78,'DOIS',36),(79,'SOMAR',37),(80,'FIBONACCI',38),(81,'SEQUENCIA',39),(82,'NUMERO',40),(83,'WHILE',41),(84,'NAO',42),(85,'CALCULAR',1),(86,'METODO',2),(87,'FIBONACCI',3),(88,'TRES',4),(89,'DUAS',5),(90,'APENAS',6),(91,'FIBONACCI',7),(92,'CHAMAR',8),(93,'NAO',9),(94,'COLOCAR',10),(95,'WHILE',11),(96,'VARIAVEIS',12),(97,'VARIAVEIS',13),(98,'SIMPLES',14),(99,'FIBONACCI',15),(100,'RETORNAR',16),(101,'NETBEANS',17),(102,'DECLARAR',18),(103,'RECURSIVO',19),(104,'PARAR',20),(105,'VALOR',21),(106,'DIZER',22),(107,'FIBONACCI',23),(108,'NINGUEM',24),(109,'SERIE',25),(110,'ESTAR',26),(111,'MUDAR',27),(112,'ABORDAR',28),(113,'DICA',29),(114,'DESENVOLVER',30),(115,'ALTO',31),(116,'OBTER',32),(117,'CALCULAR',33),(118,'APANHAR',34),(119,'APRENDER',35),(120,'EXEMPLO',36),(121,'NUMERO',37),(122,'LOGICA',38),(123,'CORRETO',39),(124,'EXTREMO',40),(125,'NAO',41),(126,'TER',42),(127,'SERIE',1),(128,'CUSTOSO',2),(129,'RECURSIVO',3),(130,'VARIAVEIS',4),(131,'VARIAVEIS',5),(132,'DUAS',6),(133,'METODOS',7),(134,'NUMERO',8),(135,'ENTENDER',9),(136,'LOGICA',10),(137,'DUAS',11),(138,'FIBONACCI',12),(139,'NAO',13),(140,'FACIL',14),(141,'RECURSIVO',15),(142,'ESTOURAR',16),(143,'RETURN',17),(144,'INSERIR',18),(145,'MODO',19),(146,'SEM',20),(147,'NAO',21),(148,'LACO',22),(149,'RESOLVER',23),(150,'RESOLVER',24),(151,'FIBONACCI',25),(152,'NORMAL',26),(153,'VALOR',27),(154,'RECURSIVO',28),(155,'DEVER',29),(156,'FIBONACCI',30),(157,'GRAU',31),(158,'SEQUENCIA',32),(159,'NUMERO',33),(160,'LOGICA',34),(161,'RECURSIVO',35),(162,'RECURSIVO',36),(163,'SEGUINTE',37),(164,'PROGRAMACAO',38),(165,'SOMAR',39),(166,'GRANDE',40),(167,'USAR',41),(168,'ESTOURAR',42),(169,'FIBONACCI',1),(170,'COMPUTACIONAL',2),(171,'ITERATIVA',3),(172,'AINDA',4),(173,'EXPLICAR',5),(174,'VARIAVEIS',6),(175,'RESULTADO',7),(176,'STACKOVERFLOW',8),(177,'CODIGO',9),(178,'FIBONACCI',10),(179,'VARIAVEIS',11),(180,'RECURSIVO',12),(181,'RECURSIVO',13),(182,'ENTENDER',14),(183,'VETOR',15),(184,'VETOR',16),(185,'EXPLICAR',17),(186,'ELEMENTO',18),(187,'CORRETO',19),(188,'NECESSIDADE',20),(189,'ATRIBUIR',21),(190,'COMECAR',22),(191,'SIMPLES',23),(192,'AQUI',24),(193,'ELEMENTO',25),(194,'AJUDA',26),(195,'FOR',27),(196,'FUTURO',28),(197,'LOGICA',29),(198,'STACKOVERFLOW',30),(199,'RECURSIVO',31),(200,'FIBONACCI',32),(201,'FIBONACCI',33),(202,'CODIGO',34),(203,'FACIL',35),(204,'FOR',36),(205,'AJUDAR',37),(206,'AJUDAR',38),(207,'ERRAR',39),(208,'SOMAR',40),(209,'ESTOURAR',41),(210,'RESULTADO',42);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-14 11:16:24
