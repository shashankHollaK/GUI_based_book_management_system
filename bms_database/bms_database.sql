-- MySQL dump 10.16  Distrib 10.2.12-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bms
-- ------------------------------------------------------
-- Server version	10.2.12-MariaDB

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `authorName` varchar(50) NOT NULL,
  `authorMailId` varchar(50) DEFAULT NULL,
  `bookISBN` int(11) DEFAULT NULL,
  KEY `bookISBN` (`bookISBN`),
  CONSTRAINT `author_ibfk_1` FOREIGN KEY (`bookISBN`) REFERENCES `book` (`bookISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES ('arihant','9880568092',111),('jgfxc','gf',5),('GRRM','4586895',100),('arihant','8546895',2018),('jhsdfha','hjdbvhjs',750),('AR Krishna Shastry','sapna book store',7777),('CNR Rao','chemistry board',1234),('Vyasa','Vyasa.com',100000),('Forouzan','forouzan.com',4444),('J K Rowling','9448968092',5032),('RS Aggarwal','Tata McGrawhill Publications',2589),('java','drv',1234568),('Napoleon Hill','napoleonHill.com',9781940),('Robert T. Kiyosaki','amazon.in',987654),('stack overflow','stackoverflow.com',5546625),('aisfv','lskja',1),('editor','www.efymag.com',13516),('arihant publications','www.arihantbooks.com',78931),('NCERT','ncert.com',52465);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `bookISBN` int(11) NOT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `bookCatagory` varchar(50) NOT NULL,
  `noOfBooks` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'bvlidkjv',' ',3),(5,'','kjv',0),(100,'A song of ice and fire','novel',1),(111,'allinone','highschool',3),(750,'java','java',4),(1234,'2nd pu chemistry','chemistry',4),(2018,'Science','highschool',0),(2589,'Aptitude book','placement',5),(4444,'C programming','programming',1),(5032,'Harry Potter','novel',6),(7777,'Vachana Bharatha','epics',94),(13516,'Electronics for you','Magazine',1),(52465,'Science','science',2),(78931,'Samskrutham allinone','Sanskrit',2),(100000,'Mahabharatha','epic',998),(987654,'Rich dad poor dad','Financial',27),(1234568,'javac','java',10),(5546625,'stack','Fiction',2),(9781940,'Think and grow rich','Self Help',27);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `issueId` int(11) NOT NULL AUTO_INCREMENT,
  `studentUSN` varchar(50) DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `bookISBN` int(11) DEFAULT NULL,
  PRIMARY KEY (`issueId`),
  KEY `studentUSN` (`studentUSN`),
  KEY `bookISBN` (`bookISBN`),
  CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`studentUSN`) REFERENCES `student` (`studentUSN`),
  CONSTRAINT `issue_ibfk_2` FOREIGN KEY (`bookISBN`) REFERENCES `book` (`bookISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES (1,'1si16ec078','2019-06-13','2019-06-20',100),(2,'1si16ec00','2019-06-06','2019-06-13',111),(3,'1si16ec00','2019-06-14','2019-06-21',111),(4,'1si16ec00','2018-08-27','2018-09-03',100),(5,'1si16ec007','2018-07-20','2018-07-27',2018),(6,'1si16ec078','2019-06-15','2019-06-22',750),(11,'1si16ec085','2019-06-21','2019-06-28',4444),(12,'1si16ec00','2019-06-21','2019-06-28',5032),(13,'1si16ec065','2019-06-22','2019-06-29',111),(14,'1si16ec078','2019-06-22','2019-06-29',7777),(15,'1si16ec085','2019-06-25','2019-07-02',7777),(16,'1si16ec007','2019-06-25','2019-07-02',1234),(17,'1si16ec065','2019-06-25','2019-07-02',7777),(18,'1si16ec065','2019-06-26','2019-07-03',100),(19,'1si16ec085','2019-06-26','2019-07-03',7777),(20,'1si16ec00','2019-06-26','2019-07-03',7777);
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentUSN` varchar(50) NOT NULL,
  `studentName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`studentUSN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1si16ec00','tharini'),('1si16ec007','shiv'),('1si16ec065','Parikshith'),('1si16ec078','Rishi'),('1si16ec085','hari');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-26 18:50:46
