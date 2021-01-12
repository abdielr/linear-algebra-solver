CREATE DATABASE  IF NOT EXISTS `linearalgebra` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `linearalgebra`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: linearalgebra
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
-- Table structure for table `ejercicio`
--

DROP TABLE IF EXISTS `ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejercicio` (
  `id_ejercicio` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `imagen` blob,
  `a` varchar(45) DEFAULT NULL,
  `b` varchar(45) DEFAULT NULL,
  `c` varchar(45) DEFAULT NULL,
  `d` varchar(45) DEFAULT NULL,
  `respuesta` char(1) NOT NULL,
  `id_tema` int(11) DEFAULT NULL,
  `id_sub` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ejercicio`),
  KEY `id_t_idx` (`id_tema`),
  KEY `id_sub_idx` (`id_sub`),
  CONSTRAINT `id_sub` FOREIGN KEY (`id_sub`) REFERENCES `subtema` (`id_subtema`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_t` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicio`
--

LOCK TABLES `ejercicio` WRITE;
/*!40000 ALTER TABLE `ejercicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoreboard`
--

DROP TABLE IF EXISTS `scoreboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scoreboard` (
  `id_user` int(11) DEFAULT NULL,
  `evaluacion` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  KEY `id_usr_idx` (`id_user`),
  CONSTRAINT `id_usr` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoreboard`
--

LOCK TABLES `scoreboard` WRITE;
/*!40000 ALTER TABLE `scoreboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `scoreboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtema`
--

DROP TABLE IF EXISTS `subtema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subtema` (
  `id_subtema` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `id_tema` int(11) NOT NULL,
  PRIMARY KEY (`id_subtema`),
  KEY `fk_tema_idx` (`id_tema`),
  CONSTRAINT `fk_tema` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtema`
--

LOCK TABLES `subtema` WRITE;
/*!40000 ALTER TABLE `subtema` DISABLE KEYS */;
INSERT INTO `subtema` VALUES (1,'Magnitud de Vectores','La magnitud de un vector es la distancia entre el punto inicial P y el punto final Q ',1),(2,'Diferencia de Vectores','Resultado de la resta de dos vectores dados.',1),(3,'Producto Punto','El producto punto o producto escalar de dos vectores es una operación que da como resultado un numero real. ',1),(4,'Angulo entre dos vectores','Podemos definir el angulo entre dos vectores en terminos del producto punto de estos.',1),(5,'Producto cruz','Es una operacion binaria entre dos vectores en un espacio tridimensional',1),(6,'Vector linealmente independiete','Varios vectores libres son linealmente independientes si ninguno de ellos puede ser escrito con una combinación lineal de los restantes',1),(7,'Matriz inversa','El producto de una matriz por su inversa es igual a la matriz identidad.',2),(8,'Determinante','El determinante de una matriz de dimension mxn es el resultado de restar la multiplicacion de los elementos de la diagonal principal con la multiplicacion de los elementos de la diagonal secundaria.',2),(9,'Rango','El rango de una matriz es el numero de filas (o columnas) linealmente independientes.',2),(10,'Eigenvalores y eigenvectores','.',2),(11,'Polinomio caracteristico','.',2),(12,'Suma de Matrices','Sean A y B matrices del mismo orden, entonces la matriz resultante suma los correjpondientes elementos (i,j) de A con los (i,j) de B',2),(13,'Resta de Matrices','Sean A y B matrices del mismo orden, entonces la matriz resultante resta los correjpondientes elementos (i,j) de A con los (i,j) de B',2),(14,'Multiplicacion de Matrices','Es la operacion de composición efectuada entre dos matrices, o bien la multiplicacion entre una matriz y un escalar ',2);
/*!40000 ALTER TABLE `subtema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(30) NOT NULL,
  `video` blob,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'Vectores',NULL),(2,'Matrices',NULL);
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `paterno` varchar(45) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `materno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Jessica','Castro','1234','jssx',NULL),(2,'Abdiel','Reyes','2345','abykings',NULL),(3,'Luis ','Zuniga','5678','lxxs',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 21:17:35
