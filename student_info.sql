-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: student_info
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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `crn` int(11) NOT NULL,
  `cName` char(25) DEFAULT NULL,
  `definition` char(255) DEFAULT NULL,
  PRIMARY KEY (`crn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (22325,'Introduction to Computing','Lorem ipsum'),(22326,'Advanced Programming','Lorem ipsum'),(22327,'	Data Structures','Lorem ipsum'),(19852,'Algorithms','Lorem ipsum'),(19853,'Database Systems','Lorem ipsum');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties` (
  `fname` char(30) NOT NULL,
  PRIMARY KEY (`fname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES ('FASS'),('FENS'),('FMAN');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gives`
--

DROP TABLE IF EXISTS `gives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gives` (
  `suId` char(20) DEFAULT NULL,
  `crn` int(11) DEFAULT NULL,
  `term` char(10) DEFAULT NULL,
  KEY `suId` (`suId`),
  KEY `crn` (`crn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gives`
--

LOCK TABLES `gives` WRITE;
/*!40000 ALTER TABLE `gives` DISABLE KEYS */;
INSERT INTO `gives` VALUES ('acar',19853,'fall'),('cakar',19852,'fall'),('iclalb',22325,'fall'),('kcelik',22326,'fall'),('cinar',22327,'fall'),('acar',19853,'spring'),('cakar',19852,'spring'),('iclalb',22325,'spring'),('kcelik',22326,'spring'),('cinar',22327,'spring');
/*!40000 ALTER TABLE `gives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduate`
--

DROP TABLE IF EXISTS `graduate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graduate` (
  `idNumber` int(11) NOT NULL,
  `researchArea` char(45) DEFAULT NULL,
  PRIMARY KEY (`idNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduate`
--

LOCK TABLES `graduate` WRITE;
/*!40000 ALTER TABLE `graduate` DISABLE KEYS */;
INSERT INTO `graduate` VALUES (13478,'Artificial Intelligence, Machine Learning'),(18732,'Computer Graphics & Visualization'),(17423,'Computer Networks'),(19346,'Data Analytics'),(21426,'Computer Vision & Signal Processing'),(5255,'ghjjbjhb kjknkjkj');
/*!40000 ALTER TABLE `graduate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `includes`
--

DROP TABLE IF EXISTS `includes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `includes` (
  `pname` char(45) NOT NULL,
  `fname` char(30) NOT NULL,
  PRIMARY KEY (`pname`),
  KEY `fname` (`fname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `includes`
--

LOCK TABLES `includes` WRITE;
/*!40000 ALTER TABLE `includes` DISABLE KEYS */;
INSERT INTO `includes` VALUES ('Computer Science and Engineering','FENS'),('Visual Arts','FASS'),('Manufacturing Engineering','FENS'),('Mechatronics Engineering','FENS'),('Chemistry','FENS'),('Physics','FENS'),('Materials Science and Nanoengineering','FENS'),('Art Theory and Criticism','FASS'),('Energy','FENS');
/*!40000 ALTER TABLE `includes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructors` (
  `suId` char(20) NOT NULL,
  `iname` char(20) DEFAULT NULL,
  `ilastname` char(20) DEFAULT NULL,
  PRIMARY KEY (`suId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES ('acar','Atahan','Acar'),('cakar','Cihan','Akar'),('iclalb','Iclal','Basar'),('kcelik','Kubra','Celik'),('cinar','Erhan','Cinar');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `majors` (
  `pname` char(45) NOT NULL,
  PRIMARY KEY (`pname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES ('Computer Science and Engineering'),('Manufacturing Engineering'),('Materials Science and Nanoengineering'),('Mechatronics Engineering'),('Visual Arts');
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minors`
--

DROP TABLE IF EXISTS `minors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minors` (
  `pname` char(45) NOT NULL,
  PRIMARY KEY (`pname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minors`
--

LOCK TABLES `minors` WRITE;
/*!40000 ALTER TABLE `minors` DISABLE KEYS */;
INSERT INTO `minors` VALUES ('Art Theory and Criticism'),('Chemistry'),('Energy'),('Physics');
/*!40000 ALTER TABLE `minors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `pname` char(45) NOT NULL,
  `crn` int(11) NOT NULL,
  PRIMARY KEY (`crn`),
  KEY `pname` (`pname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES ('Computer Science and Engineering',22325),('Computer Science and Engineering',22326),('Computer Science and Engineering',22327),('Computer Science and Engineering',19852),('Computer Science and Engineering',19853);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picks`
--

DROP TABLE IF EXISTS `picks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picks` (
  `idNumber` int(11) NOT NULL,
  `pname` char(45) NOT NULL,
  PRIMARY KEY (`idNumber`,`pname`),
  KEY `pname` (`pname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picks`
--

LOCK TABLES `picks` WRITE;
/*!40000 ALTER TABLE `picks` DISABLE KEYS */;
INSERT INTO `picks` VALUES (11111,'Manufacturing Engineering'),(13478,'Art Theory and Criticism'),(15190,'Visual Arts'),(17423,'Materials Science and Nanoengineering'),(18732,'Materials Science and Nanoengineering'),(19260,'Computer Science and Engineering'),(19346,'Mechatronics Engineering'),(19416,'Visual Arts'),(19566,'Computer Science and Engineering'),(21426,'Mechatronics Engineering');
/*!40000 ALTER TABLE `picks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programs` (
  `pname` char(45) NOT NULL,
  PRIMARY KEY (`pname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES ('Art Theory and Criticism'),('Chemistry'),('Computer Science and Engineering'),('Electronics Engineering'),('Energy'),('Manufacturing Engineering'),('Materials Science and Nanoengineering'),('Mechatronics Engineering'),('Physics');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `idNumber` int(11) NOT NULL,
  `sname` char(20) DEFAULT NULL,
  `suId` char(20) DEFAULT NULL,
  `firstAdmitYear` int(11) DEFAULT NULL,
  `slastname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (19566,'Sinan','topaloglusinan',2014,'Topaloglu'),(19260,'Yusa','merguven',2014,'Erguven'),(15190,'Kaan','kagnici',2013,'Kagnici'),(19416,'Halil','herdogan',2014,'Erdogan'),(11111,'Hebele','hhubele',2016,'Hubele'),(13478,'Merve','yilbasi',2015,'Yilbasi'),(18732,'Cihan','ctopal',2013,'Topal'),(17423,'Kenan','kenani',2014,'Isik'),(19346,'Ceren','curukcan',2016,'Curuk'),(21426,'Miranda','mdogan',2016,'Dogan');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `undergraduate`
--

DROP TABLE IF EXISTS `undergraduate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `undergraduate` (
  `idNumber` int(11) NOT NULL,
  PRIMARY KEY (`idNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `undergraduate`
--

LOCK TABLES `undergraduate` WRITE;
/*!40000 ALTER TABLE `undergraduate` DISABLE KEYS */;
INSERT INTO `undergraduate` VALUES (11111),(15190),(19260),(19416),(19566);
/*!40000 ALTER TABLE `undergraduate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-21 14:59:00
