-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: ttm-trp
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Current Database: `ttm-trp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ttm-trp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ttm-trp`;

--
-- Table structure for table `Academic_Info`
--

DROP TABLE IF EXISTS `Academic_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Academic_Info` (
  `Academic_Info_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `School_Year` varchar(45) DEFAULT NULL,
  `Quarter` varchar(45) DEFAULT NULL,
  `GPA` varchar(45) DEFAULT NULL,
  `ISAT_Math` int(11) DEFAULT NULL,
  `ISAT_Reading` int(11) DEFAULT NULL,
  `ISAT_Total` int(11) DEFAULT NULL,
  `Grade_Level` varchar(45) DEFAULT NULL,
  `Math_Grade` varchar(45) DEFAULT NULL,
  `Lang_Grade` varchar(45) DEFAULT NULL,
  `Date_Entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `School` int(11) DEFAULT '6',
  PRIMARY KEY (`Academic_Info_ID`),
  KEY `FK_Academic_Info__Participants__Participant_ID_idx` (`Participant_ID`),
  KEY `FK_Academic_Info__Programs__Program_ID_idx` (`Program_ID`),
  KEY `FK_Academic_Info__Schools__School_ID` (`School`),
  CONSTRAINT `FK_Academic_Info__Schools__School_ID` FOREIGN KEY (`School`) REFERENCES `Schools` (`School_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_Academic_Info__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Academic_Info__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Academic_Info`
--

LOCK TABLES `Academic_Info` WRITE;
/*!40000 ALTER TABLE `Academic_Info` DISABLE KEYS */;
INSERT INTO `Academic_Info` VALUES (1,7,5,'2012-13','1','3.2',0,0,NULL,NULL,'B-','B+',NULL,6),(2,7,5,'2012-13','2','3.4',0,0,NULL,NULL,'B-','A-',NULL,6),(3,7,5,'2012-13','3','3.3',0,0,0,NULL,'B','B+',NULL,6),(4,6,2,'2012-13','1','2.8',0,0,0,NULL,'B-','C+',NULL,6),(5,6,2,'2012-13','2','3.1',NULL,NULL,NULL,'14','B','B',NULL,6),(25,1,NULL,NULL,'1','3.2',NULL,NULL,NULL,'6',NULL,NULL,'2013-07-02 18:30:59',6),(26,1,NULL,NULL,'2','3.1',NULL,NULL,NULL,'7',NULL,NULL,'2013-07-02 18:30:59',6),(27,1,NULL,NULL,'3','3.2',NULL,NULL,NULL,'8',NULL,NULL,'2013-07-02 18:30:59',6),(28,1,NULL,NULL,'4','3.2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-02 18:30:59',6),(29,10,NULL,NULL,'1','4.1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-02 18:30:59',6),(30,2,NULL,NULL,'1','4.1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-02 19:08:57',6),(31,2,NULL,NULL,'2','3.1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-02 19:08:57',6),(32,2,NULL,NULL,'3','3.2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-02 19:08:57',6),(33,2,NULL,NULL,'4','3.2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-02 19:08:57',6),(34,13,5,'2012-13','1','2.6',0,0,NULL,'7','','','2013-07-17 19:27:03',6),(35,13,5,'2012-13','2','2.7',0,0,NULL,'7','','','2013-07-17 19:42:54',6),(36,13,5,'2012-13','3','3.8',670,780,0,'7','','','2013-07-17 19:44:12',6),(37,6,2,'2012-13','3','3.0',0,0,0,'7','','','2013-07-31 18:34:35',6),(38,1,2,'2013-14','1','',0,0,0,'7','','','2013-08-01 16:13:07',3),(40,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','2013-08-06 18:05:27',6),(41,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mark','2013-08-06 18:07:05',6),(42,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','2013-08-06 18:07:05',6),(43,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mark','2013-08-06 18:08:34',6),(44,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','2013-08-06 18:08:34',6),(45,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mark','2013-08-06 18:08:47',6),(46,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','2013-08-06 18:08:47',6),(47,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'mark','2013-08-06 20:30:11',6),(48,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,'C','2013-08-06 20:30:11',6),(51,7,2,'2012-13','4','3.2',0,0,0,'7','B-','B','2013-08-22 18:55:36',6),(53,7,2,'2013-14','1','3.1',0,0,0,'7','C+','B','2013-08-22 18:59:18',6),(57,7,5,'2012-13','4','3.2',0,0,0,'7','B-','B','2013-08-22 19:47:51',6),(60,7,3,'2013-14','2','3.5',0,0,0,'7','B+','A','2013-08-22 20:14:00',6),(61,7,2,'','','',0,0,0,'7','','','2013-08-22 20:32:33',4),(62,7,2,'1415','1','',0,0,0,'7','','','2013-08-27 21:04:00',4),(63,4,3,'','','',0,0,0,'7','','','2013-09-10 21:37:22',6);
/*!40000 ALTER TABLE `Academic_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blog_Notes`
--

DROP TABLE IF EXISTS `Blog_Notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blog_Notes` (
  `Note_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Author` varchar(45) DEFAULT NULL,
  `Note_Text` varchar(500) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `School` int(11) DEFAULT '6',
  PRIMARY KEY (`Note_ID`),
  KEY `school_of_blogger` (`School`),
  KEY `FK_Blog_Notes__Programs__Program_ID_idx` (`Program_ID`),
  CONSTRAINT `FK_Blog_Notes__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `school_of_blogger` FOREIGN KEY (`School`) REFERENCES `Schools` (`School_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blog_Notes`
--

LOCK TABLES `Blog_Notes` WRITE;
/*!40000 ALTER TABLE `Blog_Notes` DISABLE KEYS */;
INSERT INTO `Blog_Notes` VALUES (1,'2013-07-31 16:54:33','\'cdonnelly@chapinhall.org\'','Save this note text.\n',2,6),(2,'2013-07-31 17:01:32','\'cdonnelly@chapinhall.org\'','Test, test.\n',2,6),(3,'2013-08-01 16:44:41','\'cdonnelly@chapinhall.org\'','Testing saving the school.\n',2,6),(4,'2013-08-01 16:44:53','\'cdonnelly@chapinhall.org\'','What about now? Should be Pilsen Elementary.',2,6),(5,'2013-08-01 16:45:08','\'cdonnelly@chapinhall.org\'','Cristo Rey.',2,6),(10,'2013-08-01 16:47:24','\'cdonnelly@chapinhall.org\'','cooper branch!\n',2,3),(11,'2013-08-05 16:47:50','\'pilsenuser\'','all notes, all the time',2,5),(12,'2013-08-22 19:24:30','\'cdonnelly@chapinhall.org\'','test again',2,3),(13,'2013-08-22 19:24:45','\'cdonnelly@chapinhall.org\'','cristo rey again\n',2,2),(14,'2013-08-27 20:47:32','\'cdonnelly@chapinhall.org\'','yup',2,5);
/*!40000 ALTER TABLE `Blog_Notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class_Avg_Gold_Scores`
--

DROP TABLE IF EXISTS `Class_Avg_Gold_Scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Class_Avg_Gold_Scores` (
  `Class_Avg_Gold_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Classroom_ID` varchar(45) DEFAULT NULL,
  `Test_Year` int(11) DEFAULT NULL,
  `Test_Time` int(11) DEFAULT NULL,
  `Class_Avg` varchar(45) DEFAULT NULL,
  `Question_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Class_Avg_Gold_ID`),
  KEY `section_idx` (`Question_ID`),
  CONSTRAINT `section` FOREIGN KEY (`Question_ID`) REFERENCES `Gold_Score_Sections` (`Gold_Question_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class_Avg_Gold_Scores`
--

LOCK TABLES `Class_Avg_Gold_Scores` WRITE;
/*!40000 ALTER TABLE `Class_Avg_Gold_Scores` DISABLE KEYS */;
INSERT INTO `Class_Avg_Gold_Scores` VALUES (1,'0',1,1,'25.7',NULL),(2,'D170',1,1,'3.2',1),(5,'D170',1,1,'1',3),(6,'D170',2,3,'3',9),(7,'D170',1,2,'1.2',1),(8,'D170',1,3,'4.3',1),(9,'D170',1,3,'4.3',1);
/*!40000 ALTER TABLE `Class_Avg_Gold_Scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DAP_Group_Scoring`
--

DROP TABLE IF EXISTS `DAP_Group_Scoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAP_Group_Scoring` (
  `DAP_Group_Scoring_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Q1` int(11) DEFAULT NULL,
  `Q2` int(11) DEFAULT NULL,
  `Q3` int(11) DEFAULT NULL,
  `Q4` int(11) DEFAULT NULL,
  `Q5` int(11) DEFAULT NULL,
  `Q6` int(11) DEFAULT NULL,
  `Q7` int(11) DEFAULT NULL,
  `Q8` int(11) DEFAULT NULL,
  `Q9` int(11) DEFAULT NULL,
  `Q10` int(11) DEFAULT NULL,
  `Q11` int(11) DEFAULT NULL,
  `Q12` int(11) DEFAULT NULL,
  `Q13` int(11) DEFAULT NULL,
  `Q14` int(11) DEFAULT NULL,
  `Q15` int(11) DEFAULT NULL,
  `Q16` int(11) DEFAULT NULL,
  `Q17` int(11) DEFAULT NULL,
  `Q18` int(11) DEFAULT NULL,
  `Q19` int(11) DEFAULT NULL,
  `Q20` int(11) DEFAULT NULL,
  `Q21` int(11) DEFAULT NULL,
  `Q22` int(11) DEFAULT NULL,
  `Q23` int(11) DEFAULT NULL,
  `Q24` int(11) DEFAULT NULL,
  `Q25` int(11) DEFAULT NULL,
  `Q26` int(11) DEFAULT NULL,
  `Q27` int(11) DEFAULT NULL,
  `Q28` int(11) DEFAULT NULL,
  `Q29` int(11) DEFAULT NULL,
  `Q30` int(11) DEFAULT NULL,
  `Q31` int(11) DEFAULT NULL,
  `Q32` int(11) DEFAULT NULL,
  `Q33` int(11) DEFAULT NULL,
  `Q34` int(11) DEFAULT NULL,
  `Q35` int(11) DEFAULT NULL,
  `Q36` int(11) DEFAULT NULL,
  `Q37` int(11) DEFAULT NULL,
  `Q38` int(11) DEFAULT NULL,
  `Q39` int(11) DEFAULT NULL,
  `Q40` int(11) DEFAULT NULL,
  `Q41` int(11) DEFAULT NULL,
  `Q42` int(11) DEFAULT NULL,
  `Q43` int(11) DEFAULT NULL,
  `Q44` int(11) DEFAULT NULL,
  `Q45` int(11) DEFAULT NULL,
  `Q46` int(11) DEFAULT NULL,
  `Q47` int(11) DEFAULT NULL,
  `Q48` int(11) DEFAULT NULL,
  `Q49` int(11) DEFAULT NULL,
  `Q50` int(11) DEFAULT NULL,
  `Q51` int(11) DEFAULT NULL,
  `Q52` int(11) DEFAULT NULL,
  `Q53` int(11) DEFAULT NULL,
  `Q54` int(11) DEFAULT NULL,
  `Q55` int(11) DEFAULT NULL,
  `Q56` int(11) DEFAULT NULL,
  `Q57` int(11) DEFAULT NULL,
  `Q58` int(11) DEFAULT NULL,
  PRIMARY KEY (`DAP_Group_Scoring_ID`),
  KEY `Participant_dapped` (`Participant_ID`),
  CONSTRAINT `Participant_dapped` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DAP_Group_Scoring`
--

LOCK TABLES `DAP_Group_Scoring` WRITE;
/*!40000 ALTER TABLE `DAP_Group_Scoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `DAP_Group_Scoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elev8_Data`
--

DROP TABLE IF EXISTS `Elev8_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Elev8_Data` (
  `Elev8_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Month` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Element` int(11) DEFAULT NULL,
  `Value` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Elev8_ID`),
  KEY `FK_Elev8_Data__Elev8_Elements__Element_ID_idx` (`Element`),
  CONSTRAINT `FK_Elev8_Data__Elev8_Elements__Element_ID` FOREIGN KEY (`Element`) REFERENCES `Elev8_Elements` (`Element_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elev8_Data`
--

LOCK TABLES `Elev8_Data` WRITE;
/*!40000 ALTER TABLE `Elev8_Data` DISABLE KEYS */;
INSERT INTO `Elev8_Data` VALUES (6,6,13,8,125,'2013-08-27 20:45:54'),(11,8,13,7,80,'2013-10-09 16:04:41');
/*!40000 ALTER TABLE `Elev8_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elev8_Elements`
--

DROP TABLE IF EXISTS `Elev8_Elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Elev8_Elements` (
  `Element_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Element_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Element_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elev8_Elements`
--

LOCK TABLES `Elev8_Elements` WRITE;
/*!40000 ALTER TABLE `Elev8_Elements` DISABLE KEYS */;
INSERT INTO `Elev8_Elements` VALUES (1,'After School Enrollment'),(2,'After School Attendance'),(3,'Adult Programming Enrollment'),(4,'Adult Programming Attendance'),(5,'Total Enrollment'),(6,'Total Attendance'),(7,'Physical/Immunization Compliance'),(8,'Health Center Visits');
/*!40000 ALTER TABLE `Elev8_Elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Events` (
  `Event_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(150) DEFAULT NULL,
  `Event_Goal` varchar(45) DEFAULT NULL,
  `Event_Actual` varchar(45) DEFAULT NULL,
  `Event_Date` date DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
INSERT INTO `Events` VALUES (1,'RBL Kick-off','150','122','2013-03-03',NULL),(2,'Street Clean-up 2013','250','228','2013-04-01',0),(3,'Portal Anniversary Celebration','250','245','2013-03-19',0),(4,'Los Carralejas','500','397','2012-06-07',0),(7,'QofL Celebration','100',NULL,'2008-06-08',0),(8,'Fathers\' Day Health Fair','200','213','2012-06-17',0),(9,'Testing Active','','','2013-06-28',1),(37,'Concert','100','92','2013-04-05',1),(39,'Immigration Rally','120','92','2013-07-22',1),(40,'Meditation workshop','40',NULL,'2013-07-01',1),(41,'Mercaditos','500','480','2013-08-03',1),(42,'DIa Del Nino','500',NULL,'2013-04-30',1),(43,'Test Event (Labor Day)','100000',NULL,'2013-09-02',1),(44,'Test TRP Homepage','2',NULL,'2013-08-29',1),(45,'Test Again','100',NULL,'2013-11-04',1),(46,'','',NULL,'0000-00-00',1);
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events_Participants`
--

DROP TABLE IF EXISTS `Events_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Events_Participants` (
  `Events_Participants_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Events_Participants_ID`),
  KEY `attendee` (`Participant_ID`),
  KEY `FK_Events_Participants__Events__Event_ID` (`Event_ID`),
  CONSTRAINT `FK_Events_Participants__Events__Event_ID` FOREIGN KEY (`Event_ID`) REFERENCES `Events` (`Event_ID`) ON UPDATE CASCADE,
  CONSTRAINT `FK_Events_Participants__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events_Participants`
--

LOCK TABLES `Events_Participants` WRITE;
/*!40000 ALTER TABLE `Events_Participants` DISABLE KEYS */;
INSERT INTO `Events_Participants` VALUES (1,2,1),(2,3,1),(6,8,4),(7,2,3),(8,4,4),(9,4,6),(10,4,5),(11,1,7),(49,37,10),(55,4,10),(56,4,39),(61,3,3),(62,37,8),(63,2,43),(64,37,14),(65,37,15),(67,1,47),(68,2,47),(69,41,47),(70,39,48),(71,1,50),(72,9,50),(73,39,51),(74,42,51),(75,40,51),(76,42,52),(77,3,52),(78,39,44),(79,41,44),(80,3,44),(81,37,7),(82,37,43),(83,39,47),(84,9,53),(87,41,54),(89,43,10);
/*!40000 ALTER TABLE `Events_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Explore_Scores`
--

DROP TABLE IF EXISTS `Explore_Scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Explore_Scores` (
  `Explore_Scores_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Explore_Score_Pre` varchar(45) DEFAULT NULL,
  `Explore_Score_Mid` varchar(45) DEFAULT NULL,
  `Explore_Score_Post` varchar(45) DEFAULT NULL,
  `Explore_Score_Fall` varchar(45) DEFAULT NULL,
  `Reading_ISAT` varchar(45) DEFAULT NULL,
  `Math_ISAT` varchar(45) DEFAULT NULL,
  `CPS_Consent` int(11) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `School` int(11) DEFAULT '6',
  `School_Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`Explore_Scores_ID`),
  UNIQUE KEY `Participant_ID_UNIQUE` (`Participant_ID`),
  KEY `school_scored` (`School`),
  KEY `FK_Explore_Scores__Programs__Program_ID_idx` (`Program_ID`),
  CONSTRAINT `FK_Explore_Scores__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Explore_Scores__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `school_scored` FOREIGN KEY (`School`) REFERENCES `Schools` (`School_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Explore_Scores`
--

LOCK TABLES `Explore_Scores` WRITE;
/*!40000 ALTER TABLE `Explore_Scores` DISABLE KEYS */;
INSERT INTO `Explore_Scores` VALUES (1,6,'700','','','','','',1,2,6,1213),(4,8,'800','800','800','800','700','700',NULL,2,6,1314),(7,1,'500','500','','','','',NULL,2,4,1213),(14,10,'25','38','80','62','9','10',NULL,4,5,1213),(15,47,'','','','','','',NULL,4,5,1213),(16,7,'9','10','11','12','','',NULL,2,3,1314);
/*!40000 ALTER TABLE `Explore_Scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GOLD_Score_Ranges`
--

DROP TABLE IF EXISTS `GOLD_Score_Ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GOLD_Score_Ranges` (
  `GOLD_Score_Range_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Objective` varchar(45) DEFAULT NULL,
  `Low` int(1) DEFAULT NULL,
  `High` int(1) DEFAULT NULL,
  PRIMARY KEY (`GOLD_Score_Range_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GOLD_Score_Ranges`
--

LOCK TABLES `GOLD_Score_Ranges` WRITE;
/*!40000 ALTER TABLE `GOLD_Score_Ranges` DISABLE KEYS */;
INSERT INTO `GOLD_Score_Ranges` VALUES (1,'1A',5,8),(2,'1B',5,7),(3,'1C',6,8),(4,'2A',7,8),(5,'2B',5,6),(6,'2C',4,6),(7,'2D',5,6),(8,'3A',4,6),(9,'3B',5,7),(10,'4',6,8),(11,'5',6,8),(12,'6',6,8),(13,'7A',6,8),(14,'7B',5,8),(15,'8A',6,8),(16,'8B',5,8),(17,'9A',5,7),(18,'9B',6,7),(19,'9C',5,7),(20,'9D',5,8),(21,'10A',6,7),(22,'10B',5,7),(23,'11A',5,7),(24,'11B',5,6),(25,'11C',5,7),(26,'11D',5,7),(27,'11E',4,7),(28,'12A',5,7),(29,'12B',5,7),(30,'13',4,6),(31,'14A',4,6),(32,'14B',4,6),(33,'15A',4,6),(34,'15B',3,6),(35,'15C',2,5),(36,'16A',2,5),(37,'16B',2,6),(38,'17A',4,7),(39,'17B',3,6),(40,'18A',3,6),(41,'18B',3,6),(42,'18C',2,6),(43,'19A',3,6),(44,'19B',3,5),(45,'20A',5,6),(46,'20B',4,6),(47,'20C',4,6),(48,'21A',5,7),(49,'21B',5,6),(50,'22',4,7),(51,'23',4,7);
/*!40000 ALTER TABLE `GOLD_Score_Ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GOLD_Scores`
--

DROP TABLE IF EXISTS `GOLD_Scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GOLD_Scores` (
  `GOLD_Score_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Checkpoint_Period` varchar(45) DEFAULT NULL,
  `Report_Generated` date DEFAULT NULL,
  `1A` int(11) DEFAULT NULL,
  `1B` int(11) DEFAULT NULL,
  `1C` int(11) DEFAULT NULL,
  `2A` int(11) DEFAULT NULL,
  `2B` int(11) DEFAULT NULL,
  `2C` int(11) DEFAULT NULL,
  `2D` int(11) DEFAULT NULL,
  `3A` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7A` int(11) DEFAULT NULL,
  `7B` int(11) DEFAULT NULL,
  `8A` int(11) DEFAULT NULL,
  `8B` int(11) DEFAULT NULL,
  `9A` int(11) DEFAULT NULL,
  `9B` int(11) DEFAULT NULL,
  `9C` int(11) DEFAULT NULL,
  `9D` int(11) DEFAULT NULL,
  `10A` int(11) DEFAULT NULL,
  `10B` int(11) DEFAULT NULL,
  `11A` int(11) DEFAULT NULL,
  `11B` int(11) DEFAULT NULL,
  `11C` int(11) DEFAULT NULL,
  `11D` int(11) DEFAULT NULL,
  `11E` int(11) DEFAULT NULL,
  `12A` int(11) DEFAULT NULL,
  `12B` int(11) DEFAULT NULL,
  `13` int(11) DEFAULT NULL,
  `14A` int(11) DEFAULT NULL,
  `14B` int(11) DEFAULT NULL,
  `15A` int(11) DEFAULT NULL,
  `15B` int(11) DEFAULT NULL,
  `15C` int(11) DEFAULT NULL,
  `16A` int(11) DEFAULT NULL,
  `16B` int(11) DEFAULT NULL,
  `17A` int(11) DEFAULT NULL,
  `17B` int(11) DEFAULT NULL,
  `18A` int(11) DEFAULT NULL,
  `18B` int(11) DEFAULT NULL,
  `18C` int(11) DEFAULT NULL,
  `19A` int(11) DEFAULT NULL,
  `19B` int(11) DEFAULT NULL,
  `20A` int(11) DEFAULT NULL,
  `20B` int(11) DEFAULT NULL,
  `21A` int(11) DEFAULT NULL,
  `21B` int(11) DEFAULT NULL,
  `22` int(11) DEFAULT NULL,
  `23` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `25` int(11) DEFAULT NULL,
  `26` int(11) DEFAULT NULL,
  `27` int(11) DEFAULT NULL,
  `28` int(11) DEFAULT NULL,
  `29` int(11) DEFAULT NULL,
  PRIMARY KEY (`GOLD_Score_ID`),
  KEY `FK_GOLD_Scores__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_GOLD_Scores__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GOLD_Scores`
--

LOCK TABLES `GOLD_Scores` WRITE;
/*!40000 ALTER TABLE `GOLD_Scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `GOLD_Scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gads_Hill_Parent_Survey`
--

DROP TABLE IF EXISTS `Gads_Hill_Parent_Survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gads_Hill_Parent_Survey` (
  `Gads_Hill_Parent_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Child_ID` int(11) DEFAULT NULL,
  `Child_Grade` int(11) DEFAULT NULL,
  `Date_Surveyed` date DEFAULT NULL,
  `First_Part_1` int(11) DEFAULT NULL,
  `First_Part_2` int(11) DEFAULT NULL,
  `First_Part_3` int(11) DEFAULT NULL,
  `First_Part_4` int(11) DEFAULT NULL,
  `First_Part_5` int(11) DEFAULT NULL,
  `First_Part_6` int(11) DEFAULT NULL,
  `First_Part_7` int(11) DEFAULT NULL,
  `First_Part_8` int(11) DEFAULT NULL,
  `First_Part_9` int(11) DEFAULT NULL,
  `Second_Part_1` int(11) DEFAULT NULL,
  `Second_Part_2` int(11) DEFAULT NULL,
  `Second_Part_3` int(11) DEFAULT NULL,
  `Second_Part_4` int(11) DEFAULT NULL,
  `Comments` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Gads_Hill_Parent_Survey_ID`),
  KEY `FK_Gads_Hill_Parent_Survey__Participants__Participant_ID_idx` (`Child_ID`),
  CONSTRAINT `FK_Gads_Hill_Parent_Survey__Participants__Participant_ID` FOREIGN KEY (`Child_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gads_Hill_Parent_Survey`
--

LOCK TABLES `Gads_Hill_Parent_Survey` WRITE;
/*!40000 ALTER TABLE `Gads_Hill_Parent_Survey` DISABLE KEYS */;
INSERT INTO `Gads_Hill_Parent_Survey` VALUES (2,4,7,'2013-06-28',0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(3,7,3,'2013-07-01',3,0,0,3,0,0,0,0,0,0,0,0,0,NULL),(4,7,7,'2013-01-08',0,2,0,0,3,0,0,3,0,0,0,0,0,NULL),(5,7,0,'2013-01-08',0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(6,7,0,'2013-08-01',0,0,0,0,0,0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `Gads_Hill_Parent_Survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gold_Classrooms`
--

DROP TABLE IF EXISTS `Gold_Classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gold_Classrooms` (
  `Gold_Classroom_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Classroom_ID` varchar(45) DEFAULT NULL,
  `Student_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Gold_Classroom_ID`),
  UNIQUE KEY `Student_ID_UNIQUE` (`Student_ID`),
  KEY `student_idx` (`Student_ID`),
  CONSTRAINT `student` FOREIGN KEY (`Student_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gold_Classrooms`
--

LOCK TABLES `Gold_Classrooms` WRITE;
/*!40000 ALTER TABLE `Gold_Classrooms` DISABLE KEYS */;
INSERT INTO `Gold_Classrooms` VALUES (1,'0',15),(5,'D170',39);
/*!40000 ALTER TABLE `Gold_Classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gold_Score_Sections`
--

DROP TABLE IF EXISTS `Gold_Score_Sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gold_Score_Sections` (
  `Gold_Question_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Gold_Section_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Gold_Question_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gold_Score_Sections`
--

LOCK TABLES `Gold_Score_Sections` WRITE;
/*!40000 ALTER TABLE `Gold_Score_Sections` DISABLE KEYS */;
INSERT INTO `Gold_Score_Sections` VALUES (1,'Social-Emotional'),(2,'Physical'),(3,'Language'),(4,'Cognitive'),(5,'Literacy'),(6,'Mathematics'),(7,'Science and Technology'),(8,'Social Studies'),(9,'Creative Arts Expression'),(10,'English Language Development');
/*!40000 ALTER TABLE `Gold_Score_Sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gold_Score_Totals`
--

DROP TABLE IF EXISTS `Gold_Score_Totals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gold_Score_Totals` (
  `Gold_Total_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant` int(11) DEFAULT NULL,
  `Social_Emotional` varchar(45) DEFAULT NULL,
  `Physical` varchar(45) DEFAULT NULL,
  `Language` varchar(45) DEFAULT NULL,
  `Cognitive` varchar(45) DEFAULT NULL,
  `Literacy` varchar(45) DEFAULT NULL,
  `Mathematics` varchar(45) DEFAULT NULL,
  `Science_Tech` varchar(45) DEFAULT NULL,
  `Social_Studies` varchar(45) DEFAULT NULL,
  `Creative_Arts` varchar(45) DEFAULT NULL,
  `English` varchar(45) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Survey_Date` date DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Test_Time` int(11) DEFAULT NULL,
  PRIMARY KEY (`Gold_Total_ID`),
  KEY `FK_Gold_Score_Totals__Participants__Participant_ID_idx` (`Participant`),
  CONSTRAINT `FK_Gold_Score_Totals__Participants__Participant_ID` FOREIGN KEY (`Participant`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gold_Score_Totals`
--

LOCK TABLES `Gold_Score_Totals` WRITE;
/*!40000 ALTER TABLE `Gold_Score_Totals` DISABLE KEYS */;
INSERT INTO `Gold_Score_Totals` VALUES (1,39,'1','4','7','2','5','8','1','2','1','3',1,'0000-00-00','2014-04-08 19:43:31',1),(2,39,'2','5','8','3','6','91','1','2','1','3',1,'0000-00-00','2014-04-08 19:43:31',2),(3,39,'3','6','9','44','7','','2','3','1','3',1,'0000-00-00','2014-04-08 19:43:31',3),(4,39,'','','','','','','','','','2',2,'0000-00-00','2014-04-08 19:43:31',1),(5,39,'','','','','','','','','','2',2,'0000-00-00','2014-04-08 19:43:31',2),(6,39,'','','','','','','','','','2',2,'0000-00-00','2014-04-08 19:43:31',3),(7,39,'','','','','','','1','','','',3,'0000-00-00','2014-04-08 19:43:31',1),(8,39,'','','','','','','1','','','',3,'0000-00-00','2014-04-08 19:43:31',2),(9,39,'','','','','','','3','','','',3,'0000-00-00','2014-04-08 19:43:31',3),(10,14,'45','45','45','45','45','45','2','1','1','',1,'0000-00-00','2014-04-16 19:56:06',1),(11,14,'','','','','','','2','2','','',1,'0000-00-00','2014-04-16 19:56:06',2),(12,14,'','','','','','','2','3','','',1,'0000-00-00','2014-04-16 19:56:06',3),(13,14,'','','','','','','','','','',2,'0000-00-00','2014-04-16 19:56:06',1),(14,14,'','','','','','','','','','',2,'0000-00-00','2014-04-16 19:56:06',2),(15,14,'','','','','','','','','','',2,'0000-00-00','2014-04-16 19:56:06',3),(16,14,'','','','','','','','','','',3,'0000-00-00','2014-04-16 19:56:06',1),(17,14,'','','','','','','','','','',3,'0000-00-00','2014-04-16 19:56:06',2),(18,14,'','','','','','','','','','',3,'0000-00-00','2014-04-16 19:56:06',3),(19,15,'3','4','','','','','','','','',1,'2014-05-01','2014-05-14 19:39:46',1),(20,15,'','','','','','','','','','',1,'0000-00-00','2014-05-14 19:39:46',2),(21,15,'','','','','','','','','','',1,'0000-00-00','2014-05-14 19:39:46',3),(22,15,'','','','','','','2','','','',2,'0000-00-00','2014-05-14 19:39:46',1),(23,15,'','','','','','','','','','',2,'2014-05-08','2014-05-14 19:39:46',2),(24,15,'','','','','','','','','','',2,'0000-00-00','2014-05-14 19:39:46',3),(25,15,'','','','','','','','','','',3,'0000-00-00','2014-05-14 19:39:46',1),(26,15,'','','','','','','','','','',3,'0000-00-00','2014-05-14 19:39:46',2),(27,15,'','','','','','','','','','3',3,'2014-05-29','2014-05-14 19:39:46',3);
/*!40000 ALTER TABLE `Gold_Score_Totals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MS_to_HS_Over_Time`
--

DROP TABLE IF EXISTS `MS_to_HS_Over_Time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MS_to_HS_Over_Time` (
  `MS_to_HS_Over_Time_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `School_Tardies` int(11) DEFAULT NULL,
  `School_Absences_Excused` int(11) DEFAULT NULL,
  `School_Absences_Unexcused` int(11) DEFAULT NULL,
  `In_School_Suspensions` int(11) DEFAULT NULL,
  `Out_School_Suspensions` int(11) DEFAULT NULL,
  `Discipline_Referrals` int(11) DEFAULT NULL,
  `Quarter` varchar(45) DEFAULT NULL,
  `Grade` int(11) DEFAULT NULL,
  `School_Year` varchar(45) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `School_ID` int(11) DEFAULT '6',
  PRIMARY KEY (`MS_to_HS_Over_Time_ID`),
  KEY `FK_MS_to_HS_Over_Time__Participants__Participant_ID_idx` (`Participant_ID`),
  KEY `FK_MS_to_HS_Over_Time__Programs__Program_ID_idx` (`Program_ID`),
  KEY `FK_MS_to_HS_Over_Time__Schools__School_ID` (`School_ID`),
  CONSTRAINT `FK_MS_to_HS_Over_Time__Schools__School_ID` FOREIGN KEY (`School_ID`) REFERENCES `Schools` (`School_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_MS_to_HS_Over_Time__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_MS_to_HS_Over_Time__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MS_to_HS_Over_Time`
--

LOCK TABLES `MS_to_HS_Over_Time` WRITE;
/*!40000 ALTER TABLE `MS_to_HS_Over_Time` DISABLE KEYS */;
INSERT INTO `MS_to_HS_Over_Time` VALUES (1,1,3,2,0,NULL,NULL,NULL,'1',NULL,NULL,NULL,6),(2,1,1,0,1,NULL,NULL,NULL,'2',NULL,NULL,NULL,6),(3,1,0,2,1,NULL,NULL,NULL,'3',NULL,NULL,NULL,6),(4,1,2,1,0,NULL,NULL,NULL,'4',NULL,NULL,NULL,6),(5,10,0,0,0,NULL,NULL,NULL,'1',NULL,NULL,NULL,6),(6,8,3,2,0,NULL,NULL,NULL,'1',NULL,NULL,NULL,6),(7,8,1,0,1,NULL,NULL,NULL,'2',NULL,NULL,NULL,6),(8,8,0,2,1,NULL,NULL,NULL,'3',NULL,NULL,NULL,6),(9,8,2,1,0,NULL,NULL,NULL,'4',NULL,NULL,NULL,6),(10,6,3,0,1,0,2,6,'1',7,'',2,6),(11,6,1,4,2,1,0,4,'2',7,'2012-13',2,6),(12,1,0,0,0,0,0,3,'1',0,'2013-14',2,3),(13,46,5,NULL,4,0,7,NULL,NULL,NULL,NULL,NULL,6),(14,46,5,NULL,4,0,7,NULL,NULL,NULL,NULL,NULL,6),(15,8,0,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,6),(16,46,5,NULL,4,0,7,NULL,NULL,NULL,NULL,NULL,6),(17,8,0,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,6),(18,46,5,NULL,4,0,7,NULL,NULL,NULL,NULL,NULL,6),(19,8,0,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,6),(20,46,5,NULL,4,0,7,NULL,NULL,NULL,NULL,NULL,6),(21,8,0,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,6),(22,46,5,NULL,4,0,7,NULL,NULL,NULL,NULL,NULL,6),(23,7,2,0,0,0,0,0,'1',0,'2012-13',2,4),(24,7,1,1,0,0,0,0,'2',0,'2012-13',4,4),(25,7,0,0,0,0,0,0,'',0,'',4,4);
/*!40000 ALTER TABLE `MS_to_HS_Over_Time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NMMA_Identity_Survey`
--

DROP TABLE IF EXISTS `NMMA_Identity_Survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NMMA_Identity_Survey` (
  `NMMA_Identity_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Q1` int(11) DEFAULT NULL,
  `Q2` int(11) DEFAULT NULL,
  `Q3` int(11) DEFAULT NULL,
  `Q4` int(11) DEFAULT NULL,
  `Q5` int(11) DEFAULT NULL,
  `Q6` int(11) DEFAULT NULL,
  `Q7` int(11) DEFAULT NULL,
  `Q8` int(11) DEFAULT NULL,
  `Q9` int(11) DEFAULT NULL,
  `Q10` int(11) DEFAULT NULL,
  `Q11` int(11) DEFAULT NULL,
  `Pre_Post` varchar(4) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`NMMA_Identity_Survey_ID`),
  KEY `FK_NMMA_Identity_Survey__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_NMMA_Identity_Survey__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NMMA_Identity_Survey`
--

LOCK TABLES `NMMA_Identity_Survey` WRITE;
/*!40000 ALTER TABLE `NMMA_Identity_Survey` DISABLE KEYS */;
INSERT INTO `NMMA_Identity_Survey` VALUES (1,10,1,2,3,4,5,6,5,2,3,4,2,'pre',NULL),(2,2,4,6,4,3,5,6,4,3,4,2,1,'post',NULL),(3,8,5,5,4,4,4,3,2,3,4,4,4,'pre','2013-07-01'),(4,14,4,5,4,5,4,2,3,4,1,4,5,'pre','0000-00-00'),(5,7,3,0,4,0,0,0,0,0,0,0,0,'pre','0000-00-00'),(6,7,3,0,0,0,3,0,0,0,0,0,0,'pre','2013-01-08'),(7,45,5,5,5,3,2,4,4,3,6,4,5,'pre','2013-08-26'),(8,48,3,4,0,0,0,0,0,5,0,0,0,'pre','2013-08-27'),(9,7,4,0,4,0,0,3,0,5,0,4,4,'post','2013-08-01'),(10,15,0,0,0,0,0,0,0,0,0,0,0,'','0000-00-00'),(11,7,1,1,1,1,1,1,1,1,1,1,1,'pre','2014-01-02');
/*!40000 ALTER TABLE `NMMA_Identity_Survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NMMA_Participants`
--

DROP TABLE IF EXISTS `NMMA_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NMMA_Participants` (
  `NMMA_Participant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `GPA` varchar(45) DEFAULT NULL,
  `ISAT_Scores` varchar(45) DEFAULT NULL,
  `Identity_Survey_ID` int(11) DEFAULT NULL,
  `Traditions_Survey_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`NMMA_Participant_ID`),
  KEY `FK_NMMA_Participants__Participants__Participant_ID_idx` (`Participant_ID`),
  KEY `FK_NMMA_Participants__NMMA_Identity_Survey__Identity_Survey_idx` (`Identity_Survey_ID`),
  KEY `FK_NMMA_Participants__NMMA_Traditions_Survey__Traditions_Su_idx` (`Traditions_Survey_ID`),
  CONSTRAINT `FK_NMMA_Participants__NMMA_Traditions_Survey__Trad_Survey_ID` FOREIGN KEY (`Traditions_Survey_ID`) REFERENCES `NMMA_Traditions_Survey` (`NMMA_Traditions_Survey_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_NMMA_Participants__NMMA_Identity_Survey__Identity_Survey_ID` FOREIGN KEY (`Identity_Survey_ID`) REFERENCES `NMMA_Identity_Survey` (`NMMA_Identity_Survey_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_NMMA_Participants__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NMMA_Participants`
--

LOCK TABLES `NMMA_Participants` WRITE;
/*!40000 ALTER TABLE `NMMA_Participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `NMMA_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NMMA_Traditions_Survey`
--

DROP TABLE IF EXISTS `NMMA_Traditions_Survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NMMA_Traditions_Survey` (
  `NMMA_Traditions_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Q1` varchar(1000) DEFAULT NULL,
  `Q2` varchar(1000) DEFAULT NULL,
  `Q3` varchar(1000) DEFAULT NULL,
  `Q4` varchar(1000) DEFAULT NULL,
  `Q5` varchar(1000) DEFAULT NULL,
  `Q6` varchar(1000) DEFAULT NULL,
  `Q7` varchar(1000) DEFAULT NULL,
  `Q8` varchar(1000) DEFAULT NULL,
  `Pre_Post` varchar(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`NMMA_Traditions_Survey_ID`),
  KEY `FK_NMMA_Traditions_Survey__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_NMMA_Traditions_Survey__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NMMA_Traditions_Survey`
--

LOCK TABLES `NMMA_Traditions_Survey` WRITE;
/*!40000 ALTER TABLE `NMMA_Traditions_Survey` DISABLE KEYS */;
INSERT INTO `NMMA_Traditions_Survey` VALUES (1,8,'a','b','c','','e','f','g','h','pre','2013-07-01'),(2,14,'x','y','z','k','l','m','n','o','pre','0000-00-00'),(3,7,'','','','','','','','','pre','0000-00-00'),(4,7,'','','','','','','','','pre','2013-01-08'),(5,45,'1','2','3','x','y','z','3','3','pre','2013-08-26'),(6,48,'','','','','','','','','pre','2013-08-27'),(7,7,'','','','','','','','','post','2013-08-01'),(8,15,'','','','','','','','','','0000-00-00'),(9,7,'','','','','','','','','pre','2014-01-02');
/*!40000 ALTER TABLE `NMMA_Traditions_Survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `New_Horizons_Participants`
--

DROP TABLE IF EXISTS `New_Horizons_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `New_Horizons_Participants` (
  `New_Horizons_Participant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Race` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `School_Grade` int(11) DEFAULT NULL,
  `School_Tardies` int(11) DEFAULT NULL,
  `School_Absences_Excused` int(11) DEFAULT NULL,
  `School_Absences_Unexcused` int(11) DEFAULT NULL,
  `School_GPA` int(11) DEFAULT NULL,
  `School_ISAT_Scores` varchar(45) DEFAULT NULL,
  `Quarter` varchar(45) DEFAULT NULL,
  `Parent_Survey_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`New_Horizons_Participant_ID`),
  KEY `FK_New_Horizons_Participants__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_New_Horizons_Participants__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `New_Horizons_Participants`
--

LOCK TABLES `New_Horizons_Participants` WRITE;
/*!40000 ALTER TABLE `New_Horizons_Participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `New_Horizons_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outcomes`
--

DROP TABLE IF EXISTS `Outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Outcomes` (
  `Outcome_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Outcome_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Outcome_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outcomes`
--

LOCK TABLES `Outcomes` WRITE;
/*!40000 ALTER TABLE `Outcomes` DISABLE KEYS */;
INSERT INTO `Outcomes` VALUES (1,'Total number of youth served'),(2,'Digital Inclusion Graduates'),(3,'Leadership Formation Graduates'),(4,'GPEDA Members'),(5,'Total Portal Visits'),(6,'Unique Portal Visits');
/*!40000 ALTER TABLE `Outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outcomes_Months`
--

DROP TABLE IF EXISTS `Outcomes_Months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Outcomes_Months` (
  `Outcomes_Months_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Outcome_ID` int(11) DEFAULT NULL,
  `Month` varchar(45) DEFAULT NULL,
  `Goal_Outcome` varchar(45) DEFAULT NULL,
  `Actual_Outcome` varchar(45) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  PRIMARY KEY (`Outcomes_Months_ID`),
  KEY `FK_Outcomes_Months__Outcomes__Outcome_ID_idx` (`Outcome_ID`),
  CONSTRAINT `FK_Outcomes_Months__Outcomes__Outcome_ID` FOREIGN KEY (`Outcome_ID`) REFERENCES `Outcomes` (`Outcome_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outcomes_Months`
--

LOCK TABLES `Outcomes_Months` WRITE;
/*!40000 ALTER TABLE `Outcomes_Months` DISABLE KEYS */;
INSERT INTO `Outcomes_Months` VALUES (1,1,'3','350','278',2013),(2,1,'4','350','265',2013),(3,2,'3','25','23',2013),(4,3,'5','150','',2013),(5,3,'5','150','',2013),(6,1,'5','350','270',2013),(7,5,'1','300','17',2013),(8,1,'6','350','201',2013),(9,4,'8','24','28',2013),(10,6,'9','50','',2013),(11,5,'8','400','',2013);
/*!40000 ALTER TABLE `Outcomes_Months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outcomes_Participants`
--

DROP TABLE IF EXISTS `Outcomes_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Outcomes_Participants` (
  `Outcomes_Participants_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Outcome_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Outcomes_Participants_ID`),
  KEY `outcome_participated_in` (`Outcome_ID`),
  KEY `participant_in_outcome` (`Participant_ID`),
  CONSTRAINT `outcome_participated_in` FOREIGN KEY (`Outcome_ID`) REFERENCES `Outcomes` (`Outcome_ID`) ON UPDATE CASCADE,
  CONSTRAINT `participant_in_outcome` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outcomes_Participants`
--

LOCK TABLES `Outcomes_Participants` WRITE;
/*!40000 ALTER TABLE `Outcomes_Participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `Outcomes_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parents_Children`
--

DROP TABLE IF EXISTS `Parents_Children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parents_Children` (
  `Parent_ChildID` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_ID` int(11) DEFAULT NULL,
  `Child_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Parent_ChildID`),
  KEY `FK_Parents_Children(Parents)__Participants__Participant_ID_idx` (`Parent_ID`),
  KEY `FK_Parents_Children(Children)__Participants__Participant_ID_idx` (`Child_ID`),
  CONSTRAINT `FK_Parents_Children(Children)__Participants__Participant_ID` FOREIGN KEY (`Child_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Parents_Children(Parents)__Participants__Participant_ID` FOREIGN KEY (`Parent_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parents_Children`
--

LOCK TABLES `Parents_Children` WRITE;
/*!40000 ALTER TABLE `Parents_Children` DISABLE KEYS */;
INSERT INTO `Parents_Children` VALUES (1,4,5),(2,4,6),(4,7,6),(5,1,43),(6,42,10),(7,41,14),(9,50,47),(10,50,51),(11,51,50),(12,52,47),(13,44,43),(14,39,7),(15,45,53),(17,42,54);
/*!40000 ALTER TABLE `Parents_Children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants`
--

DROP TABLE IF EXISTS `Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants` (
  `Participant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Address_Street_Name` varchar(45) DEFAULT NULL,
  `Address_Street_Num` int(11) DEFAULT NULL,
  `Address_Street_Direction` varchar(45) DEFAULT NULL,
  `Address_Street_Type` varchar(45) DEFAULT NULL,
  `Address_State` varchar(45) DEFAULT NULL,
  `Address_City` varchar(45) DEFAULT NULL,
  `Address_Zipcode` int(11) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Race` int(11) DEFAULT NULL,
  `Grade_Level` int(11) DEFAULT NULL,
  `Classroom` varchar(10) DEFAULT NULL,
  `Lunch_Price` int(11) DEFAULT NULL,
  `Neighborhood` varchar(100) DEFAULT NULL,
  `Eval_ID` int(11) DEFAULT NULL,
  `CPS_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Participant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants`
--

LOCK TABLES `Participants` WRITE;
/*!40000 ALTER TABLE `Participants` DISABLE KEYS */;
INSERT INTO `Participants` VALUES (1,'Bryce','Dessner','Bainbridge',2501,'N','Ave','IL','Chicago',60651,NULL,'888-915-2379','dessner.b@sbcglobal.net','m','1979-08-14',NULL,NULL,NULL,NULL,NULL,NULL,'123456'),(2,'Nina','Simone','Dr Martin Luther King',3500,'S','Drive','IL','Chicago',60648,NULL,NULL,NULL,'f','1938-11-09',NULL,NULL,NULL,NULL,NULL,NULL,'001122'),(3,'Alanis','Morissette','79th',1234,'E','St','IL','Chicago',60651,NULL,'','','f','1974-06-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'George','Clinton','Westchester',1,'W','Lane','','',0,NULL,'','','m','1941-07-22',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Alexis','Clinton','Westchester',1,'W','Lane','IL','Chicago',0,NULL,'','','f','2009-09-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'James','Clinton','',0,'','','','',0,NULL,'','','m','1999-03-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Stephanie','Clinton','75th',120,'W','St','IL','Chicago',60637,NULL,'555-404-1234','steph@clintons.gov','f','1965-08-08',NULL,NULL,NULL,NULL,NULL,NULL,'123456'),(8,'Lauren','Bush','',0,'','','','',0,NULL,'888-925-2351','lauren.bush@texas.gov','f','1999-02-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Nancy','Blackmore','Blackmore',1902,'E','Ct','IL','Chicago',65432,NULL,'999-999-9999','nancy.blackmore1@gmail.com','f','1999-05-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Sylvie','NMMA','',0,'','','','',0,NULL,'','','f','0000-00-00',4,11,'342',2,NULL,NULL,NULL),(13,'Tiffany','Rogers','',0,'','','','',0,NULL,'','','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Mary Tyler','','',2815,'','','','',0,'','','','f','2001-12-12',0,NULL,NULL,NULL,'',0,''),(15,' Drew','Bledsoe','',0,'','','','',60637,NULL,'','','','0000-00-00',0,NULL,NULL,NULL,'',0,NULL),(39,'Flannery','O\'Connor','23rd',1234,'W','St','IL','Chicago',60608,NULL,'999-999-9999','flannery@home.net','f','1999-09-09',NULL,NULL,NULL,NULL,NULL,NULL,'123456789'),(41,'Guy','Noir','',0,'','','','',0,NULL,'','','','0000-00-00',0,0,'',0,NULL,NULL,NULL),(42,'Carl','Icahn','',0,'','','','',0,NULL,'','','m','1995-05-05',0,0,'',0,NULL,NULL,''),(43,'Teresa','DeLeon','20th',1234,'W','St','IL','Chicago',60123,NULL,'555-555-5555','teresa@dlfamily.net','f','1998-04-04',3,9,'219',2,NULL,NULL,NULL),(44,'Ulises','Zatarain','Ashland',1801,'s','st','il','chicago',60608,NULL,'312-876-9833','zatarain@yahoo.com','m','1965-10-19',0,0,'',0,NULL,NULL,''),(45,'Carrie','Nation','Paulina',1818,'S','St','IL','Chicago',60660,'','555-555-5555','CapitolT.total@home.net','f','1994-10-10',4,0,'',0,NULL,NULL,'1111115'),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'42249688'),(47,'Helene','Achanzar','Ashland',1801,'s','st','il','Chicago',60608,'','773-876-3789','helene@yahoo.com','f','2000-07-04',3,7,'211',1,NULL,NULL,''),(48,'George','Windsor','Cambridge',1234,'W','Ave','IL','Chicago',60802,NULL,'','george@royalfamily.co.uk','m','2013-08-01',4,2,'201',3,NULL,NULL,NULL),(50,'Quinti','Rios','Avers',2821,'s','St','il','Chicago',60632,NULL,'773-762-6758','qrios@yahoo.com','m','2000-10-03',3,8,'208',2,NULL,NULL,'435234678'),(51,'Jessica','Rios','AVERS',2821,'s','ST','il','Chicago',60632,NULL,'773-764-3857','jrios@yahoo.com','f','1967-09-11',3,0,'',0,NULL,NULL,''),(52,'Tom','Ford','95th',354,'W','Ave','IL','Chicago',60611,NULL,'312-987-4731','tom@ford.com','m','0000-00-00',5,0,'',0,NULL,NULL,NULL),(53,'Garrett','Monroe','Paulina',1818,'S','St','IL','Chicago',60666,NULL,'888-888-8888','gmonroe@home.net','m','2001-04-18',4,6,'555',2,NULL,NULL,NULL),(54,'Test','This','',0,'','','','',0,NULL,'','','','2013-08-21',0,0,'',0,NULL,NULL,''),(61,'Test111','Test222','',0,'','','','',0,'170318391001104','','','','0000-00-00',0,0,'',0,NULL,NULL,'123456'),(62,'Test First','Test Last','',0,'','','','',0,'170318391001104','','','m','2014-02-24',0,7,'',0,NULL,NULL,NULL),(63,'Test First','Test Last','',0,'','','','',0,'170318391001104','','','','0000-00-00',0,0,'',0,NULL,NULL,NULL),(64,'Test First111','Test Last','',0,'','','','',0,'170318391001104','','','','0000-00-00',0,0,'',0,NULL,NULL,NULL),(65,'Mary','Tyler','',0,'','','','',0,'170318391001104','','','','0000-00-00',0,0,'',0,NULL,NULL,NULL),(66,'','','',0,'','','','',0,'170318391001104','','','','0000-00-00',0,0,'',0,NULL,NULL,NULL),(67,'Mary','Taylor','',0,'','','','',0,'170318391001104','','','','0000-00-00',0,0,'',0,NULL,NULL,NULL),(68,'CD','','',0,'','','','',0,'170318391001104','','','','0000-00-00',0,0,'',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Consent`
--

DROP TABLE IF EXISTS `Participants_Consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Consent` (
  `Consent_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `School_Year` int(11) DEFAULT NULL,
  `Consent_Given` int(11) DEFAULT NULL,
  PRIMARY KEY (`Consent_ID`),
  KEY `participant_consent_given` (`Participant_ID`),
  CONSTRAINT `participant_consent_given` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Consent`
--

LOCK TABLES `Participants_Consent` WRITE;
/*!40000 ALTER TABLE `Participants_Consent` DISABLE KEYS */;
INSERT INTO `Participants_Consent` VALUES (5,7,1213,0),(6,6,1213,1),(7,10,1213,1),(8,10,1314,0),(9,10,1314,1),(10,47,1213,1),(11,48,1213,1),(12,50,1213,1),(13,7,1314,0),(14,7,1415,1),(15,53,1213,1),(16,54,1213,1);
/*!40000 ALTER TABLE `Participants_Consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Program_Sessions`
--

DROP TABLE IF EXISTS `Participants_Program_Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Program_Sessions` (
  `Participant_Session_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) NOT NULL,
  `Session_ID` int(11) NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Participant_Session_ID`),
  UNIQUE KEY `UNIQUE_COMPOSITE_KEY` (`Participant_ID`,`Session_ID`),
  KEY `FK_Participants_Sessions__Participants__Participant_ID_idx` (`Participant_ID`),
  KEY `FK_Participants_Sessions__Sessions__Session_ID_idx` (`Session_ID`),
  CONSTRAINT `FK_Participants_Sessions__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Participants_Sessions__Sessions__Session_ID` FOREIGN KEY (`Session_ID`) REFERENCES `Program_Sessions` (`Session_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Program_Sessions`
--

LOCK TABLES `Participants_Program_Sessions` WRITE;
/*!40000 ALTER TABLE `Participants_Program_Sessions` DISABLE KEYS */;
INSERT INTO `Participants_Program_Sessions` VALUES (5,15,1,'2014-02-27 21:29:08'),(7,10,1,'2014-02-27 21:32:06'),(10,5,1,'2014-02-27 21:32:56'),(11,39,1,'2014-02-27 21:33:04'),(12,15,2,'2014-02-27 22:14:21');
/*!40000 ALTER TABLE `Participants_Program_Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Programs`
--

DROP TABLE IF EXISTS `Participants_Programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Programs` (
  `Participant_Program_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `Notes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Participant_Program_ID`),
  KEY `FK_Participants_Programs__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_Participants_Programs__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Programs`
--

LOCK TABLES `Participants_Programs` WRITE;
/*!40000 ALTER TABLE `Participants_Programs` DISABLE KEYS */;
INSERT INTO `Participants_Programs` VALUES (1,6,2,NULL),(2,6,4,NULL),(4,5,1,NULL),(5,7,5,NULL),(6,4,3,NULL),(7,8,5,NULL),(8,1,2,NULL),(9,13,5,NULL),(10,39,1,NULL),(11,14,5,NULL),(12,14,1,'Test save\n'),(13,13,4,NULL),(14,41,4,NULL),(15,44,4,NULL),(16,44,2,NULL),(17,44,2,NULL),(18,10,4,NULL),(19,10,2,NULL),(20,15,5,NULL),(21,45,3,NULL),(22,45,5,NULL),(23,1,2,NULL),(24,46,2,NULL),(25,47,4,NULL),(26,43,5,NULL),(27,48,5,NULL),(28,52,5,NULL),(29,7,2,NULL),(30,7,1,'test'),(31,7,3,NULL),(32,7,4,NULL),(33,39,5,NULL),(34,15,1,'so many notes!'),(37,53,3,NULL),(38,53,4,NULL),(39,54,1,'Remember that you can\'t add attendance here.'),(40,51,5,NULL),(41,51,2,NULL),(42,51,3,NULL),(43,10,1,NULL),(44,42,2,NULL),(45,47,3,NULL),(46,61,1,NULL),(47,61,2,NULL),(49,68,1,NULL),(50,68,2,NULL);
/*!40000 ALTER TABLE `Participants_Programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Teachers`
--

DROP TABLE IF EXISTS `Participants_Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Teachers` (
  `Participant_Teacher_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) NOT NULL,
  `Teacher_ID` int(11) NOT NULL,
  PRIMARY KEY (`Participant_Teacher_ID`),
  KEY `FK_Participants_Teachers__Participants__Teachers__Teacher_I_idx` (`Teacher_ID`),
  KEY `FK_Participants_Teachers__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_Participants_Teachers__Participants__Teachers__Teacher_ID` FOREIGN KEY (`Teacher_ID`) REFERENCES `Teachers` (`Teacher_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Participants_Teachers__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Teachers`
--

LOCK TABLES `Participants_Teachers` WRITE;
/*!40000 ALTER TABLE `Participants_Teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Participants_Teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Attendance`
--

DROP TABLE IF EXISTS `Program_Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Attendance` (
  `Attendance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Attendance_ID`),
  KEY `FK_Program_Attendance__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_Program_Attendance__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Attendance`
--

LOCK TABLES `Program_Attendance` WRITE;
/*!40000 ALTER TABLE `Program_Attendance` DISABLE KEYS */;
INSERT INTO `Program_Attendance` VALUES (1,1,14),(2,2,7),(4,2,8),(5,5,8),(6,5,7),(7,2,13),(8,3,14),(9,2,13),(10,6,14),(11,2,48),(12,5,48),(13,6,48),(14,2,39),(15,1,5),(16,1,15),(17,1,15),(18,1,15),(19,1,15),(20,2,45),(21,9,45),(22,12,7),(23,13,51),(24,14,54);
/*!40000 ALTER TABLE `Program_Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Dates`
--

DROP TABLE IF EXISTS `Program_Dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Dates` (
  `Date_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Date_ID`),
  KEY `FK_Program_Dates__Programs__Program_ID_idx` (`Program_ID`),
  CONSTRAINT `FK_Program_Dates__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Dates`
--

LOCK TABLES `Program_Dates` WRITE;
/*!40000 ALTER TABLE `Program_Dates` DISABLE KEYS */;
INSERT INTO `Program_Dates` VALUES (1,'2013-07-01',1),(2,'2013-07-31',5),(3,'2013-07-02',1),(4,'2013-07-03',1),(5,'2013-08-05',5),(6,'2013-08-10',5),(7,'2013-08-01',1),(8,'2013-07-15',1),(9,'2013-08-12',5),(10,'2013-08-19',5),(11,'2013-08-15',1),(12,'2013-08-26',5),(13,'2013-09-02',5),(14,'2013-08-22',1);
/*!40000 ALTER TABLE `Program_Dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Sessions`
--

DROP TABLE IF EXISTS `Program_Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Sessions` (
  `Session_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_ID` int(11) NOT NULL,
  `Session_Name` varchar(100) NOT NULL,
  `Start_Date` varchar(20) NOT NULL,
  `End_Date` varchar(20) NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Session_ID`),
  KEY `FK_Program_Sessions__Programs__Program_ID_idx` (`Program_ID`),
  CONSTRAINT `FK_Program_Sessions__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Sessions`
--

LOCK TABLES `Program_Sessions` WRITE;
/*!40000 ALTER TABLE `Program_Sessions` DISABLE KEYS */;
INSERT INTO `Program_Sessions` VALUES (1,1,'testsdgs111','02/03/2014','02/12/2014','2014-02-26 20:45:44'),(2,1,'testsdgs555','02/25/2014','02/25/2014','2014-02-26 20:45:58'),(3,1,'xcbxcb8888','02/25/2014','02/21/2014','2014-02-26 20:46:39'),(4,1,'346346','0000-00-00','0000-00-00','2014-02-26 20:48:03'),(5,1,'34346','0000-00-00','0000-00-00','2014-02-26 20:48:17'),(6,1,'asgsadg','02/17/2014','02/28/2014','2014-02-26 20:49:43'),(7,1,'235235sdsssss','02/20/2014','02/21/2014','2014-02-26 21:49:13'),(8,2,'TEST Session11','02/26/2014','02/27/2014','2014-02-27 18:04:22');
/*!40000 ALTER TABLE `Program_Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programs`
--

DROP TABLE IF EXISTS `Programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programs` (
  `Program_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_Name` varchar(45) DEFAULT NULL,
  `Program_Org` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Program_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programs`
--

LOCK TABLES `Programs` WRITE;
/*!40000 ALTER TABLE `Programs` DISABLE KEYS */;
INSERT INTO `Programs` VALUES (1,'Early Childhood Education','Chicago Commons'),(2,'Teacher Exchange','Chicago Public Schools'),(3,'New Horizons Program','Gads Hill'),(4,'Elev8',NULL),(5,'Artist in Residency Program','National Mexican Museum of Art');
/*!40000 ALTER TABLE `Programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programs_Uploads`
--

DROP TABLE IF EXISTS `Programs_Uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programs_Uploads` (
  `Upload_ID` int(11) NOT NULL AUTO_INCREMENT,
  `File_Name` varchar(45) DEFAULT NULL,
  `File_Size` varchar(45) DEFAULT NULL,
  `File_Type` varchar(45) DEFAULT NULL,
  `File_Content` blob,
  `Program_ID` int(11) DEFAULT NULL,
  `School` int(11) DEFAULT '6',
  `Participant_ID` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`Upload_ID`),
  KEY `school_for_upload` (`School`),
  KEY `FK_Programs_Uploads__Participants__Participant_ID_idx` (`Participant_ID`),
  KEY `FK_Programs_Uploads__Programs__Program_ID_idx` (`Program_ID`),
  CONSTRAINT `FK_Programs_Uploads__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Programs_Uploads__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `school_for_upload` FOREIGN KEY (`School`) REFERENCES `Schools` (`School_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programs_Uploads`
--

LOCK TABLES `Programs_Uploads` WRITE;
/*!40000 ALTER TABLE `Programs_Uploads` DISABLE KEYS */;
INSERT INTO `Programs_Uploads` VALUES (1,'TTM EAP Summary for LISC.docx','25520','application/vnd.openxmlformats-officedocument','PK\0\0\0\0\0!\0I���\0\0�\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���n�0�����D\'��(,�&��@�W�Z�D��:�߾+��V��8��ȝ�8��7kg�gHh�/�U1x*��x���_D��|�l�P�\r���|��60�j��XůR�^�SX��Wꐜ\"~M��� �G��RO�)�FCL�ߠV+K�ݚ?oIX��vc�U\n�5Z��g_���\n�l���D�d!{����s4�T�MU��C��T�*��3�ez8C]\r]}�SЀș;[t+N�����+��~:+\r�����l�N�уD���,���!1�����I��@�X��\'��h�dhyWנ��_�y�^l-j�݀��>��u/�C�wʃ/0��a� 5ψ��[8!����� | ���=����Ѷ;��c�\'eS���9��;G�g�͘�����oe�\0\0��\0PK\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���JA���a�}7�\n\"���H�w\"����w̤ھ�� �P�^����O֛���;�<�aYՠ؛`G�kxm��PY�[��g\rGΰino�/<���<�1��ⳆA$>\"f3��\\�ȾT��I	S����������W����Y\rig�@��X6_�]7\Z~\nf��ˉ�ao�.b*lI�r�j)�,\Zl0�%��b�\n6�i���D�_���,	�	���|u�Z^t٢yǯ;!Y,}{�C��/h>\0\0��\0PK\0\0\0\0\0!\0*B�C\0\0�\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��1O�0�w$�C�8)�\"Ԥ u�\"X]�X�vd_��{��T-a�x��O�w^�>M���ٌ�q�\"��ږ{�<\\ܰ(�������� �U~~�|�Z ]\n�nBD]l�X���rdF��5`�D9oR�K��&J�$�s?���ѺȘ_��5��o���p�dk��	���P�0c?e\'�1�2~��rJ����B�!�z�~1��r7b[b�1�ٔ�5[�4c�1��D:%�l:�J�޿E�^�\Z����|J��>\"e2���8��� �b��!\\��`��.8��t�w���������h���������ʿ\0\0\0��\0PK\0\0\0\0\0!\0C�\"�(\0\02I\0\0\0\0word/document.xml�}�n�Ȗ���F=T�S�it��tUݙUn����-�$Sv9����ܵc�%�N���(���8(������_���8	D�~����a<�?���w�v�y��KR/�PD���#Ov�����Ͽ?�����y�2�\"JN&��;�4���y��G|�%{��Dҽ���A��oD������_�X�y���.���Kv��Ƴw�\"{i�\'�ᛱ�e�]�}��m�#��=6��w�8:���D����sE<�+*�W]�Q���71�%�`2�Ͻ~��,�~я��漇I�p����3�{x��ܮb3|u�8T�@�w�T�w�u��D��\Z�Y���f%c/���<ok�������l�/g���~���{c�XY�Xr^�%�n0ú�#o�wظ��0�wbE�CF�saq+�Gz���S���N�����Q����#xY�ґ���Ós���eL/���Xq�7H9����4h;��7W���R��.��շ�M�+���I���o�)x��S��#Is�zq�_W�q���E|��w����O�������w?��g�CH��S�-�c�A��W�L��i��Z��;�[���~Q�����1��~\r���k�����>���Z/Nï�I!��c1��������颙O�/��?��7ē8ś��3�Ր8O.j�<��ã�����z�ǉ�l����@�!J��\\.c�Iz%pUO>bO���a6&\rf���)���t�yj���]O?n|k�g_���}��Pk=螼U�>>>|\'?��q�+��4nS��%�i��o���g�I�\r�G��N��߹���]�mֶ��;!��{��pq��p�����p���#_�_H+�c��B�/P����H�rk��I���{��goM��%��wr}f����[��kV��	zP�����֛e	�%�$֏(�,�4�B��@��c�����cO\n��y�T�C�/���$���3�P��|G$g�sG��9�����h9�\Z����\\U�8�Bs�X�\Z�P뉛|�RZ9I<U����T�ȁ����eՐ@n����g7�0��E����Ih��e���+��\n\r�n\\;���;��)�\'�Uj/g2O�&���6�̛ ��)�������L�?D����Trk��8;g���^[�巭��6��{w<�PW)���Tv�9o����L=�z���>3��M���_�QbR����<��=�9�F\\�	�/ ^�&�&9�m����X0�O�b�<�H$�iw���9#����uG�~��-F2��5X�?E|�.�	����pe1�3�~02��������t����\"T.�r�$D��I,naz���ه8���\'�8��\"�/^��r�Gu�D��	T�}��J��CU��|����g�R��u�9�z�MW���&�1�?�ʯ.zP\"������e�y�U�S+����	�O��z	�L�8H�X�@vHy�G�tX0����˩�3q6a(�8���8�\n�N���n:�c�x�؜K�q�Z���HG������X��O`����秬ݖ�B���O�� \r��.7�ѮMs6��I0����`P��#7\0��9�D��R�z~D���g������D�����-y8?�ي��3jv�|P0�^����Y?QD��c�;��\Z|<z?���/�-B�1�:[���\".(�A��^���I����,��6�Ī��z�K/���7)(��*���Tޭ\n��c�Qپ��T����T����P�W��S�/�\\=��p�zG]v������=L��V�J�@�e;�2`۬漺eێW\Zl]�n^\Z����\"5٥0U�F;��;�8�NOY�|��D\Z��ʼm��pi����G	ɴ��(\r�o�g�0?H���S�\0�]��/�S���Ѹ�\'�~��%J�\r��l�dG8u�y�6�롾[�e)Yώ�g���S�bl��\Z^9[���Y�wrS��E|)O��7l_��U��N;��;�#�#V��K�U�r6�C���T\n�XF�<B\\Hd�Y�P/s�>�l��6��ˠ��\'	5D$�6p���h_�H�z8WL5�;��>����|b�d(�z$/j��&�$��d�ߜ>�Wn�]�K�=�I&��(c��P,�F�B�P*	) zq�S�F��rh@3��Y��չ������>�[S�g2���%��&֪�_�XkE�Z�H��2,����%\"�\"�P�s!�49e?�:G���-xH��r1�DF�<�M��X�u�:�LB�e�\0��Q�5}7�V5L �����,�=�����;���Z8�m��\0G9U���*����<�;jՍhRzn�Hk����f��jY\0ͪ�����ozZe���~o�C�u]�OJ����K�i�#�V$��~Ͽ���[�o���[\r]P����\"�}��n��6~�\\i����������B���ӎ`���uFuj-���Jrc�\ZG0����TҦ���{1�KL8�E�e�J�weJ�����Ki@A�4��3��_OQ����h�Mk;�*FV��s:�/UQ�)�@	.lꓼD1;�Q��k�D#�t�8��J�槨���)v衲�I�O�89�)-$A�Ȑr�t\nYn��� _Y�(��l�BW͏�q�S������A>:+P�I����F^O�;��z.F�ɫBj�,7�#e��>��\r�֩B\n\r%G��V� G�yKKb�8�M�#N�6&��O��ϪFkB�h�\r�����d����2�ڝ����*���+���\r ���OY��f��C�vg;A�2T,�� ��4?��5��`�~M�xVB:oe��ܺ����,�Sc(�Ƒl�x��24�\0��Q��{>a�Id�2n����P�ʝ��G;z�eF���z�\rEp�!��B5��编PV\\+���XI�Q�sZ�J�u%�o���jԶ��4�����6���^&�iq_�&Ԋ��,A�η�^��}.���f�\"0w��x�`�������D��j�,�wo�]��5CZ׽;�({q�G\\r0Vg^�ޚ(��ƺh���uk�և���T��4��6V���l����Y�uA����h���O?.BM�4Zc[�>�p\Z\"\r�\0��@aF�H	K�0�8n� �q�x�E��e�X�;�,�:�oԔ�{�1<N�C�\\�@�#�l�\nc9��\n@y�uV�u�#�#�K�}�6-�.��f)`�8٫��n��t���6��Z�4\Z�j*z���9����[��^�D�ll)#^ߞ����K\0j׈ U��o0�2�J4q����� �I������(�04����&��0�\'�at* %Y��6��zQ�}qeG�����F���X]�#7�H��#�\rf�j��:��7fr��/�Y�b���	Њ1�dL�b�Ԍ��;�� mk���P%��qֻ��Xr=S�N�/��G�4׏�A��X�58fp̰j@�cLT�6��b ���0*�V�T-����v��y��C�[/�k��(n}��.1�(!L~�|�z�}#��X�\n]Vz^�\0c����u��ep������W�RA82��\'lS~�����]drjȺN�5v������ɎFC(LR.�#�.I��귔ܰ�j��4o糖���\0�*Z���U�k6�n`ґ~ۤ�\"a���(��C�E�.��T�?\0f�\nL*�LD��n�b�p��u;\'݃\n�y���]-(m[\\�Im��J|�\r�=K		i6-�?�.��*��ܾ�})��T�\n��%`[/O�!?(��\'�!��BM�y��D��~�$H��B7,c��\n�v�lS�3�rȼP�O�ǌi}���-/O&#��sp�i\0�q$~��(�Nu9LF����#�҅�h0�k�+��>��D�ұy{��d����@= d��B\n\r�������\Z.���yn6���.T�Y��Zwo��\"��`-�1!�F�\ra���Gd�¶���	U�M�˶#�&Vn�[�:LF����	j\nN�<w30-�7�`q���VT���\'o��:��0nQ<��G��!#Y�>��M�f93��>��EyT���\\���ֹ Tވ��F�[�l��ÓO�ȫ[\0��jeå�z���Z��ʬ�N��s4VTq�^���?\n��R��?v0���7�þz��\0�@����W�G\\�P2�B�T~	�0aavĉ����^fN3��|�g�b��^�a��vqήS���̂%������*���u�&�\\��\Zk]-\"�����e�E�-��{-�#��ӕ!`��)����m׌1Ψ塶��<]���)�Ηy=��R�p����c�9O�Ң��$�W�qv�jߩ&~�Q#��`D�|�:��^���S8{�*V���������a$]�+1�\"��W��s�\Z4���Q�.���G���#`c�y(&�)��\0^	��3E��}4$��0���&�c$v���e3>2�p����$r�z������%�u�o�nĐ#����/n~�\ra>��|��G}>\r�?E3��5`~p���ڜ���&,A�.ap�Y����J/Uxo����Ь_�\0L3�R.\Z3U�.\Z��h��c\"��r�i���������6�M�D���=0��b�}dN�с�4�\r���L\rU5�tS�3Iz}��>e�\0����e�L٢fS��ͦ�\'�@�L���m�*��4C��	|���X�ۿ��`��	\0�O^4�\'g(���f��p��������Cd�^usN=I��\Z����`I_괊B\\��߻�d�@��\'�V���*�	��R��$�Os��U�V�n&\\������Z��2p�Z����3�h��W�}��A�p4=~�tN���Kd9HW��9����t��674�7-*S�Is(�Km@9�u�O�-R_��,�b���Gd��XF����Z%5�\\���>}:<�~����G�@z�k��-F��#�.�ˤGܾ,Muz�\nQ�\n�.I��Xx��xu6j��e������^|�N�)+�L<�l�x��6hK\n�dF��,�\r���c�d�+��G�B�ݳ�V*�Z��K.�R� �\Z��F������L��I���߫lMQd�829N�*u�U���0�^`��&�!�F!KE	��֘�=j� �����f�Ъ�ɷ�ګ�Ў���%�	I^�T���f��Npʪ�pp(@\0�9�%�.4=�\"ߑZ`gM�H�>��u��ɐ�0�(	�%�ҒX�}mS�0q���+��\\� 7Y��\r{YV\r	dM)M����Z;k�q����ɕVh������^��h��^�sX9�D9R�J+\'�g�3gCO�|~�-ƃ��[r��	����� �pX��-���]r�	���\'W-ĕ(\'�Z�u�\07��-0)���\0���I<u5�Y�=!��*�Ք��X��[3u��1�\0�9���F-��Ĝӻ�Uʫ�Z�\Z��Qi�/*Z�ܐFc��j�/^���q\Z|�O��T^��pN�t��6YWxhm\0d�μ�~�ٔ���|rp|\"m����������㼌��2;%H��\'���2��P��*�EI����8s�e\"pa�5�4�7�������T���+�4PQ/�@�DWgl\\����l{,�F�d�;����\0�4��1KeԘp��:<l�1�����z#~�����/�A��\0����Ō� 6��\Z�1�w��u�\nX���\0�y\n�|�F�;p���\r+R�H\"��d���*.�8)�F�e�\0������e��V�.�7��������`�:�du�(�	t���O!$j\\�B-$�����\'��b�n�cJ$��f`��3�Q�{�\r�$�[�sёZ�Ii}-�X�B��3P.��}��5�hk��dnb ��f(�m�T[�*�b e���y�T�X�6�`˲:C�<JXE�f�11+�o\n��T0�a}�(�U��ӑ���R�N��a\0��Sq�PZJ�oS��n���Ř�}���c���+l�ǨT��F\Z��	%]�yx_� ӹJ�@��j+g��grS]l�|�_�×�����\rG�@��)ӳv��l?��G�#�<�m��k\"�n��&��f����RUD1�0I��by4آ�槓��q�Z\0m�`I��Q����6?�֠�SA�-Ґ�i(�vz�v�QU������\Z��<�z\0�j����>]YF�Q	���a�.¾y�O��\"\Z[���LC�,ҒV�{9�[䌵�� ��4\\�G2���.���7(���w�ې)���u��\r)l��E��YvN�%��#i׫���Yo_�zl��7WY��,��P۱O����7[���e�AѮ0(�V<�_E���{\'���*}�z6.=�c0ؽ0��b:5�9�g=�Y67���MF7;������O(a��zɧd��U�;�!�Ntcig��V�90^�q˘�DqvB$�`��IY:�z~��t�W�C�U��KUl},1��[�+mL��ﺇ�#Hh�{	U	�>����Ȕ�����rCC���l�Kmh���E�+AO�4-i�y�KdQ�اK��@�F�h�@-/(@�Qd���ve���O�d��;�X�ը�ExS5+e�Ǽ�$VU۔4�����k_u�X!+�\Zy�y�\0&o�l	���jb��J�j_�0u֯���w��c��I�ί�Y�gՙ��Nro��^�Y�k\na\'��G�l�+y��ځ���~e�+�א�&�p��i�QĒ�*$r��&�)GL��{5̣ū	S4���7�i\nT�$�|�Mv�o�i��0Tw	.QD�����z�4�i�n�έE�:(R�0zT�i}�z�0æC���	�^Qv�j��gq����!�Y�b1����R�&!W��轭��\\��}noF��p��m�}���Au�Mr&��^���5HӐ�����rv�l���=�p.\0���!�\'�]$�UDRzvЎpvN��mz3\\�U!\n圌r	c�1�֑?K�j5�\"�C�H)�˴����.JP�xB�∮E		���y����c��}v��G\0\Z�~�A���p�@Ĭ?\nB?�B.��/B$�-�HJ$,�Q�O��s�Y/��N�$c�@�i5�������	Jzq�̹�3���s�#g�f��W�R8X�ݬ�2������yؐ�$�Kv�r���W�_%6����sPx0��\n�wEַ��X7����Ͼ���X���]:p<�n��H<��Gmo�󷏖/Y�	�C8���sJ�g8�X7g ΂�\r4�C�4�\"BC�]8���2��C�P��Lp��uȍ^q;�Kx��GD[0\r;U�5ne�����Z�S�uꕋ�n~L�@Jn���F��p�90mK�.��\ri��Y	�)��>]Z�T�yY��%�[ۧ���6.L���>�x�%�^�Y��Aw�n�X�Y�������e%{f0��Tm\\�J��`aHH�fp�u��)��e�!�~��k0\0�X�tI�z������[/R��Z(��x���b�bDN����s$�i���\0�.�a~�vG>J���vU�R�q��+k�&�Go���۔J��\Z��y�\Zc�+qGt�k$���rW[B��@����5f�O\\d�<Å��Ǻ�v�XTA��#3��i�O�q*�MňrS\r�ynvk�j��G��,�-|_��8��Q�=�I�p��7��n���i$o�\n�Ao_�֚���/�7 �w#R`B|V��+,��&�O���&�e$��E�Dkf�zO(��e���� �$2\r�-9�UV�0+	c3)9�$7����%F�:-��bP��FMJ�Ȧa�0� ���\03��=Y�]�������g_��.��H�@5{Y:b?�3��R�^���@���y��|�\n	gDh�q0I�qa�tdEXs�;�����n�Ѓ�(�~%�^TzZ�u�s/|� LP�<Є[-М��`������j��r`�\n�F[�N�h�/-��hW�_��c/D�k,��?�a�i�dk�P�]\0�V(Ug͡�U�w]?���p�}}����	-+וS�b��K��-��BJ+�T/P�K���r�d��\\�m��ة�5���*��i��F=�zY/�J�5���.���%�=g�����Q0�ф�G�\'1Op�z�B���:�_�P�R�X;VA}�E�Z�&HEt��U>jB1����nO3�� �G��j)���(H�)�\0����!>�&��XR���	�m-��ףj�m�Yj·v>�L+���r�b�i�1�f%�k�w��`�uB�T�>E# ���w��V\n�mg�@E����\n�����Mu�l�9b��b�uy����V-TH�cQ�Ba��R�d�\\$�g0J�\Z���|����$]�1��r2���C�L<	]�	�\0�� ���1�˕3�3��0�sG^���\'\Z®Dd��B��v��kW\r17D����K�K\"Bw�v�������y���{6��`8h���\".��\0--�(�С(��gaZ�_lq���\r�PDF���%2�3Ü�y��)�$�x�sB	#K��3b)�J\n��E���ub�`�,�M���$e�����z�=9:ҺK����8ov��3(l�PRP׫\0+p�K��D�e�D(�I �X���h1��!~g:_(y@M\n_��H���(J��e?��~�[b�o��DO�s�;�;�V��b+�@Q�OG��T�E��� t�r��<߂�kO�U���t8����6�k2��S;�1��]���OG��}�{�6��eŪm�/:I��(Ӯ6C\Z(��\'�P��Ox�vk��7�w��K�Z�z�,S������6${��v�r�-�����q�a����U ��(�.��\n��{R�*`}�L1-�\r�z��J���\0�6���w	 �d!�du�D������;Y%O��+���:U\Z�8�2�����b�=9�3ng�r�F���O)���+��$�Nۆ��N���0B���KG\"�hϋQ�mȃev��z�G$�\Z�e�co(�G�B�#�����$/o���%���mfQ���Xn����qsrd@o[ޚ��f���[7-R����K���B�͘���n�G_�+�5Pm�K���A;�XW����6UqT�,񘗖ĪU����-Sz�;US䮛r�B����W�_� 7Y��UC��07���Ux�\\��h�yH�l�\\i�V�h(��z��D�?�:ǕYm�R��Vĩ����g����(X�\r�	�{M�M<�j!�L�zP�N����\r�T�?y�����F�]���O����*V�&�.��ᩂ�ops^�mu�����	\\��:��S�sv�>���yĦm�n\'UO�Ԟ�X�z@���y��\r�Z� �G<�0YPWբ�-�&�,39y�h�v�c\\]�^Pf����A��8�\"VF��W\"��@���49�㜛<u@���F����.�6�5q�(w~r0��\r��e��V�������N�wZL���]�f��v��	~���0+��4��y�Ֆ �ڒ��\0U��	�&���+k�:6o�j���;2\\�K�$�Rv�9J��E�jՂH��l�\0y�t�Cw���K�jkG1/�7<½܏0R���Sc���0� Wu�ͯ6S�9���E|h@��P���f�c��0d����h\0i����\r��	�:}�@O!�)��-��4}����&I��y\0a��\0��0H;<͛C/y���_\n[D{�MH��=�T-��;�w����BS#��5�a�gq1/󒞸��u���@��g�O���̡T;�j��\n�2����Z�����х��]�3�~V�+�7\Z�Y5�=|:���\0Ɔdg�k1�`Q��cW�pt�>�|��ƕK�p��1Q���	������F��b�Pj���\'9`(\Z�~���n�h����t���#vd��u�L�v��UƤ\'BM��z�Spꊎ���J!Nq�fTH=N�K��q��D�v�=�yg\'�ݓ�2���3�j4��/�4E��i�2�H��\"��Q簲�j����qYN[ �X�A�0���GW�A���5̍�X���tU@,<�{UYQY�q\"l�E���S�$�:�<\rD���|��>\"�n�#Y�k���s�ܭ݆�#�!�m�=V�In�O�a�U�Vؾ���׸���w�����4�����wz����y��ſ�D~��{R1���8�p\'��V��O�p���H��s�/o?B\"&��و)�b_�4����D���/q��HD�2H�X������ݐ2�V����$#H���/\0\0\0\0��\0PK\0\0\0\0\0!\0����\0\0P\0\0\0\0\0word/theme/theme1.xml�YOo�6��w toc\'v\Zu�ر�-M�n�i���P�@�I}��úa��m�a[�إ�4�:lЯ�GR��X^�6؊�>$���������!)O�^�r�C$�y@�����/�yH*��񄴽)�޵��߻��UDb�`}\"�qۋ�Jח���X^�)I`n�E���p)���li�V[]�1M<����\Z��O�P��6r�=���z�gb�Ig��u��S�eb���O������R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j�����zA�\0�V�2�F���i�@�q�v�֬5\\|��ʜ̭N��le�X�ds���jcs����7����f����\r��W���+�Ն�7����`���g�Ș��J�\Z��j|��h(�K��D-����\0\rdX��iJ�؇(��x$(��:��;�˹!�I_�T��S1�������?E��?������?ZBΪm���U/������?�~����xY����\'���y5�g&΋/����ɋ�>���G�M�Ge���D�����3Vq%\'#q�����$�8��K�����)f�w9:ĵ��\nx}r�x����w���r�:\\TZaG�*�y8I�j�bR��c|XŻ�ǿ�I\nu3KG�nD1�NIB�s���\n��R��u���K>V�.EL+M2�#\'�f��i~�V��vl�{u8��z��H�\n�*���:�(W�☕\r~��J��T�e\\O*�tHG��HY��\0}KN��P�*ݾ˦���TѼ�9/#��A7�qZ��$*c?���qU��n��w�N��%��O��i�4=3ڗP��\n����1�P�m\\\\9���������Mؓ�2a�D�]�;Yt�\\����[x������]�}Wr��|�]��g-���\neW�\r�)6-r��CS�j��\ri�d	�DЇA�ΜIqbJ#x�꺃6k���#��A�Sh��&ʌt(Q�%��p%m��&]�caSl=�X�������\\P�1�Mh�9�M��V�dDA��aV�B��[݈fJ�íP|8�\ZքA�V^��f\r�H��n���-��\"�d>�z���n��Ǌ�	�ة�>�b���&����2��v����Kyϼ���D:����,AGm��\\nz��i�Ù��.uχYC�6�OMf��3o�r��$��5�����NH�T[XF64�T,ќ���M0�E)`#�5�XY�`�פ\0;��%�1�U�٥m;���R>QD����D�cp�U�\'��&LE�/p���m���%]�����8fi��r�S4�d7y\\�`�J�n���ί�I�R���3U�~7+���׸#��m�q�BiD����������i*�L6�9��m�Y\Z&�����i���HE��=(K&�N!V��.K�e�LD�ĕ�{D	�\Z���vEꦚde��NƟ��e�(�MN9ߜ\ZR�6����&3(��a����/D��U�z�<�{ˊ�Y��ȳ����V���)�9�Z[��4^n��5���!J��?��Q�3�eBo�C����M����m<�.�vp�����IY�f���Z�Y_p�[�=al-�Y�}Nc͙���ŋ4vfa��vl����\'S���A�8�|�*u�{��-�ߟ0%M0�7%����<���ҍ�\0\0\0��\0PK\0\0\0\0\0!\0Ô\n9�\0\0s\0\0\0\0\0word/settings.xml�V�n�6}/�0�\\G�%[�e���n�t��P-�\r$e���E1�4�ŢO�Ι9r.��Fg�4��(X`^����~9,���6�7�\n����u����_n�\\cc�L/@���Ep2F�a��fH_	�9�G�2�ڐ!���e-�D�T�s	WQ�	FQ���(�d�VB���.�8I���~f_�u�07Î��b\\���^��_58�ɋ�t�3�ޮ��Y���j^=~&<� ���֐ F�q\"�U&N�	�^�\\u�����Ѱ�\"����L�]I��ri��Q�:��r�PE���8\r��-�\\bUC���&\nB��Yı4�``�Ĕ�YS�@��[�V8d�i�u�|AUi��3����(Y��B��������F	��\Z�0[(Rw�p%k�q�ҕ?xp��K�I4�F�)�{��a�2^�-C���\Z��~���F�}�J��i�&&گ��a���4��g�u�^Ϫ��q|��|���M��17�d���G�p�F�f�g\'�d�����g}�M�]�2�>������h��Y�Ɇ��9a�m����֭PJ�2�E�R-��p����R��{��0�L�U�\\.���\0��!\0�7D�>��	�v�-�,\n��竖�4�~W��n�^!��7\0���4�7��y\\wU�84�7TǛOge��z�������<\"��:�|����P�T����OHJ�J0�ڸ(iO&��aુ7d����ȭ�,7|�ڞ�ǅ5pK�\Z�x,�0���.��������a}~������}�?\nJE��?<X� w	��$����-/��^�s��7���,I�����jh�њ����[�d��t� ��}H��a\0�\'�>opM����iy��D�K�F(8�0�~��w�\0\0��\0PK\0\0\0\0\0!\0D�a�	\0\0�I\0\0\0\0\0word/styles.xml�\\ms�F�ޙ���,ّjO���ĵg�ԍ��3��u�T@��_߽=8#�+Hg2S�x�}�������ߞ���*�T�x�_���}��a���]��:i�Ł�X��g�������_���9���<���:�6�Q�E䥯�F�pq�����0yE^�e�9�U��2���̞G��㩛�I(R�j%}�N��H��%\"�*N�r��)�Ul�4�IG��y2�bƧ5A����U�\n&32\Z��(>>�oQ�:�~���[�`����,(��Xy�0K�ar���~\\�8K��s/������H���8�.\\^�]���{q���{�O����2��H#��@�W/���Iq�Rk�s.��✈��eM�=��s�K�Z��Y|���ٙ<�*�g\0���Ĉ�	������|�j�z�L� (\0��b�bq����	`�*V��E�.�]Ă��7��T	��=;Әpr!\"y-�@�|����k���\"�OE�r��+�\\���q�Oga\Z���F�-��=��Oz\0����\nm�6�DO�S@�������3�A�[�p���@=��P.Kד�\"N��x�_o?[��k���#&6JQIwj�||e;�����Q������Q������Q���5�w����sD͝�#|��\ZE\'h\rRb��,z|+�{R]^j�[/�o�vta���F���2���tz8Y.�D����S�`N~m�^*a��a�IO���U��{\"�N��&�js��vz�X�0�s\'��G�?)gaV���t���Μ�\ZKn\'ش��͖0�?�mКLӆ�t	\'�p����?�@n��4�����9��T��D��E��꜅v\0e\n�\\��	����}L�ߔ���7��@���e3�;xhuH�5c��\nU�چEt�Ì���6v[�$���3x�>�߇\'7J��}�£�;\n&}.l�Tho̘�A�	��2�ؤ�Y|���� K۵fg:�4X\0Ji\r��Ve�k�I�QQnbx]�\n��vҐyT�<�L�c��_�c\0����~����k[� ��#�M˶�aؑ�y�ff�+�M���!{�c�^7	(l��&��J-�u��5X�$`5T�f�9�3)v�,ٕ\0aFÐ7h�&\0\rC�����\r2y���`9�L� ���o���M\0bs�a���QQ�PJ���\0�M@a;�N��w�ț���p\"��e���5y��!o�0�M\0\Z��	@Ð7�?yw�G�,67XN-�7�M�L� ���\r{�����7���:yP�ީ�]����`Y�&`�-�`ȱ0�9�\Z��	3\Z��	@Ð7h�&\0�\'�n��ț���˩e�&\0����ɛ\0�憽����ɛ��vP��	(l�T�����\n�%o�Ko�&\0�-�qf4yf4y��!oP����	Xln��Z&o�,P��	@ln�Kޘ#ߝ�	(l�ɛ���N�P-y���`Y�#`\rC� ���M\0�[\0�,�i�&�h�&\0�\'�n��ț���˩e�&\0����ɛ\0�������������Ϡ��@�48�\n�O�X���D����\r�A��[��8���\'\rB���P*�����tJ�\'��N��?.�k�\0S�!�������B؞��@��y-;�bg��\rB��+o��h��z�`��7bSU~\Z�o���wh��{���ޟ�>~�78�Ⱥ�\Z��W�E�|+�ݝ��*5�G�^�5\n��}�/�+s���M86l�;�{�[t�=��s��ﺂж�*ui�\\���������>��O3n�<#\n�_�0��a�Z�6ͷ�b����c��QK�e*j���q�d�\00kYs�\'�l�x-E�_-6��tM���`5�`B�j�f�l,شA��SS����g�A����/����r�#ws��tr\n{m�JS3\"Eފxj��\"���-4�B/��IW8ݗ�w�|����.����C��	te�6\"\Z]��A�%4��p!w�f�_�\r7�S6�����D�\'I��Gfk۴�P�Ysw1y`fA���Y]�?�ǷЪ���l��U��;`1�|G��YO�#˧�켚�MOqՌ�׸������Sc���!�-�{�mI���9��u�\0��I�A,b�Պ�R�/\"ܝ���\"���~/@W��I��?�\n�w��ė�m��_hB0+�޹$Ȏ��d~ހ���O?�*�u$�d?P��+<Y\nk�T�i���\n\\��%Å������l���>P�|͚B96O��\'��ذ6fE\n��(�؞|(����8k���D-�����Y<�Ӫ)�v�:3h�ү������-+��w�*��1���գD�P8��!W@�N:��R���Ɍ_l��y�������o<е�gZ\\�\\6u�Q��)\Z�pP�ۛ=O�_/���ܝA�}^����)�zaޗga����.����\0\0��\0PK\0\0\0\0\0!\0�&e�n\0\0�\0\0\0\0\0word/numbering.xml�W�N�@�W�;X�����4\"�(@Kբ���y�l��c��������X�Bg���$a�!lfw���v�����gފ(M���1�=\"b9�b9�Mo���\rs̤ #M�y���y>�=�z����O�I�A��p��9���ra�c��XИ�T�BT��J�Dk��`���/��>�L���Rql��Tˀc���G��bCg�Q�lԯ`��ϔ��Y���|Tj/�g�u�W2�8�81P�AR脦�4��A�I��$V�U��4��ΫS~�\\)��Ul\0���!c�8s<�����.b�^J��Q���Ϭ\"ᘊ\Z�5MrAo���JfiNJ߆v+j,����~��fj���t������v)��3�a�ي�/�[��6\n��.����󑏊-B�9��0�꟡p����3f�7�\"l�NI�\'Y���k̮������1����:r+le(<��jRM���?O���)S��8?ht7�6�2ƈ���O�tT[��#�rs�C�\\��IZ��?�q$X,��{�G\"ȇ�f�|ԍF��1���RN�wGr��J<��XS<���s\n��e���ľ<���?��P����eHE,\Z�g�h�n�D��:),�\Z�#� �p��б�jve[v�(�F�Df�e	n��c���Z���c���Y{z�ۖ�^eh��mY��\"��|��۶�++WD�H˲r���e����5A�A7���|&�k]��0��&**�I�!(�W7bv���Վ��s�j�v��N:~���X۶�++����A)��)dӶ%5��i�Qs�G�!(���c���V9!�X߮8���SP���~Ա�o����`�j�v��X��vv�Rcǭ����\Zag1$�����\0\0��\0PK\0\0\0\0\0!\0�/��\0\0\0U\0\0\0(\0customXml/itemProps1.xml �$\0(� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��Mk�0�����k�kmJ�2�z��:Nb��`;ec��a�x$��E���L�|��2ȶ���u��^�x(Da;19�X�v��t�Љ(Bt^]�2(5t���Ȟ�</3���eu�p}�.�.^W���PR�t&0c��9*#���ʦa�1���{-wr1�F�S�H����LЮy~�_T�q��x�_�U_\'�/��Hې?���^��\0\0\0��\0PK\0\0\0\0\0!\0t?9z�\0\0\0(\0\0\0customXml/_rels/item1.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����1��;�ܝ�x��xY����t23�iS�(��O+,�1	����?¬��S4�T5(��zG?�������)��\'2��=�l�,����D60�����&�+J�d���2�:Yw�#�u]ot�m@�a�Co ����J��6\r�w�E�0���X(\\�|̔��6�(�`x�����k���\0\0��\0PK\0\0\0\0\0!\0~�*��\0\0�\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�S�n�0��?�ǴT�M�5��A�C����Yj%�H�d��_ߥ�r�S}�}xv8����Ng�AY�΋�<��H[+Ӯ�����u��(L-�5�Ώ�[��l�u��	�|�[1�;fT6Ti��D�з�6��xg�K�&�r>_2|�hj���H���C�_��ʤ/<UGG�9T�9-\"��I�6&��Q�Ju�J�lE��6\0x����\\\0 l���<��\\�\0�$�sZI�W�MIo�mb��;�%`� Wv(_��GN#�!|U��,>\0i����/ʤpa\'��\r=�7BvN�=��حP$qu@�ς�E�-���,[��0��KmC�c�B��RQ7Ն��Ӷ)V�d-��lL�A.���CCo��[L��\Z�98���uc;\'̑����]e�ҹ�yx��,�Y���	I�Y����	LJ��K��vz\"<\'����:M����S�߅tTO÷ʋ�lN���N9���#�\0\0��\0PK\0\0\0\0\0!\0��~��\0\0\0�\0\0\0\0(\0customXml/item1.xml �$\0(� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\n�0Fw�wy��88��PP\'!��K��4������D|��|p�t���f\r��&����>���<ĕ���Pae��Zr��)yW=��g�hA�&-�gR��3K�8\r���\0١m�L9�]��\\����E5t�6�wo\0\0\0��\0PK\0\0\0\0\0!\0�h�?\0\0�\0\0\0\0\0word/fontTable.xmlĔK��0����\"�8!M�h��额�kc��G�k���{�$�T�)ٴ B8��`�>�/ZEG�@Z��dDI$�[iv9�񼾛�<3[��99	 �ˏ�Ea���\r,4����r���B3�R|XX��ǟnk�~�;nuɼ�H%�)N)�\'���������-���\n���,�s�nq��ۖ�r�{֪��L��M�]iɝ[�n&nV�V؞�p��4_|���F!�*�ȲU�4��R���*�f53��dƂH���TNh��{:���\'Ż�ĵ�3i#LKu�T|C})=�w��9Y/�����М|���O�5i�$\'+T��,i�ռ�2>+8A���J���i��:�f�.����\'��X5�9�u\0	�$@S?�Mߒ�pO���J�c��y :��=8)\\=WhL��)��J6���[�L�B��퀩�������N%�%1����.�F�󄰃�=���_ڍ�`\'�t�\"<V�c1{�u�X|?�UW8L0��bb�S1�axR�_+�1(X/�:&mf��9,)���3�2)h֓�D ��5)����o\0\0\0��\0PK\0\0\0\0\0!\0U�Iv\0\0?\0\0\0\0\0word/webSettings.xml�R�n�0�W�?D��^�\"$��*���p\'�j{-ې��wI���8y��3���|�U��K0I�1���PJSg�}�<��fJ�����\'���aަ�(�D��#d1>�<#M6���Fh�`��bN��WWS����8h˂,��aOGq<#\'\ZwT��b|��	�:���o��g���\\ip�=�Ѫ��L�o�drE�%w�\nCC���\n�I�EZ�H���6�X�p�m2!9���;:�6�eFƣ�x�L�IW/�ܯ�k;��\ZB�ݸ�Q�s6�ξʺ�\'�{ݻ�@���<���?��l�����2�\"����m�c����C�&��.����	��>�����6H-b\rn��¡X����\0\0\0��\0PK\0\0\0\0\0!\0ӋO�\0\0a=\0\0\Z\0\0\0word/stylesWithEffects.xml��mS�8����}��CH���4�P�3m�60�Z����|~ p��V��;�wc�U�c�oW����һ�a�<�$2Z�����\'}=,����G�N���g����}�������^��K�SD��6��&���$�6<d�q(�D�r�{2���Zx|���?��LO�Oq\"=��@�b�K��\\ش&ck-��e�L&!K����,+��l���f��͓�p��:��\\���I#�=\\3�ZzyȣL\'	����8�\Z��)]z�\n�)��������!crp��-�bg�an�d�fP�yP��e�nqz�L�e���q�5��$d\"�f�����zR�_��֝X�v=Z[jY<;9�+�\ZZJ2�X��\r������C$�\n�����Q���w��,�T}Ln��c�I��YFY�l/X�	qVB�^F�p����2�����~�^�~iGziV1�Q�(h�{b���\'WʉW�=��xtt��:�p���]�,9Z^*ci�o%��U��I�3p�:�C d����D�|����ey&�6\0��Y�X�t�\'��m����I����X���on!P҅���b��%�W��\\����}�>�gã�����??k�.,z2�2p�|�!H�O���R�鈩$�P@� �v(;õ\ZU?��DNM�R6����h�;A:�|0h�\"���|=n�l��7�M��6��^�^fhFLmT���Lz����p���dՈF��hM�F��h�D�F�h$�wD#��#\Z���1-\\�*:ճ�Z�w\"�U�(�t���ƹe	{HX�qTo���%��|��\\�rz�X.�D�gό@wVK�`M���\nؘ��N����8_;��S|����do�\r��72�y���g�Q���Y�]F�s��M<l26������[&�}&��o\"�s����[B�3���yK]���}���� v#�F�	i�!���St�R�\\]�Q�`B0������4�}�c���h�i\\���ѝ_��\\�_V����d�΃r\r��Ü��-y[�(���W�+�t.=~s��)9;%P��0��𱐓R��)!\"r�j��5Lk	 ����OB����J۽f�r>m�hA�=��\\f�{�Y��a)7��$��vڲ򰴢�L�#�xX�#��u@hX+$�Z�}�c{\"2�9XdY�]L�Z��de� Z�o\"�_-����}A!\'��7rvj���Mk���`�t��U5��oVAv\'��h�F��oh�F���w?d<�F���`5�*��~��U�\"k�Q��oFe��V��A�r��⍠���&��~�R	5��:k�F��oh�F��oh�F���w?d<�F���`5�*�Y,�*��~��\r{�[���.�\n9AM�FP�٩	�ݤ\"X��XV�,�\n�\n�.nJP�7\"�q�\ZG��q�\Z.������\"k��Ԫx#@dy���x#@dm�+�z1�v�FP�	j�7�B�NMP��!X��XV�,]/��ү\n�D4�x#\"\ZG��q�\Z.������\"k��Ԫx#@dy���x#@dm�+�z��v�FP�	j�7�B�NMP�x#X��XV��q�҅9X� �� ��(i\ZG��#��p�\'�Y��V�\"˃U�\"k�:g�E��S�-E�=gP�j@g-I��\0�5O�b!�?2XFH ��6ďR>:��ݧ-�F�U �>���O�T.\"��;n��}�|5`\Z�tI�>y���ׅ��$uq��^b���\'˕5� ��vW�����T\\�Q��=xQ_�*���-��3��&��\0˃Q����=������-��#�+������ʼ��f�ߙ:	��>)�9G�~�d�� \\��.�y)[��p�ᶸ�e��?3c\n���A��i���_\r�:3�NOt��Z�,�a��Dמ�3\0�Pu�|TA��I��+���[KRu}�uI���-����o�O���\0\0��\0PK\0\0\0\0\0!\0�?jLO\0\0~\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��QK�0���C�{�t�MJ��ʞ�L|�m\r6iH�}{�v���K�r����.�UG{�N6�@iBP�7B�]���e��\"��n4�-��M�M���1`��v7��7ƎW��K�B�䶱���6���	!3��3�<�06#����H�e� 8�\Zh�p���G��*�gA��P*�&�t�{�|H�ꃓ��mۤ��6����^�����ݮ8 ��q�7���t9���W3�Wa�[	��H�X+�%g�t5��{(:�c���\rAD�m6�v�l�O���	I�1��ɼLg��<#��vU߹.��Έg\0�_��\r\0\0��\0PK-\0\0\0\0\0\0!\0I���\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0*B�C\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0C�\"�(\0\02I\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0word/document.xmlPK-\0\0\0\0\0\0!\0����\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�1\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0Ô\n9�\0\0s\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0D�a�	\0\0�I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D<\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0�&e�n\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�E\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0�/��\0\0\0U\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�I\0\0customXml/itemProps1.xmlPK-\0\0\0\0\0\0!\0t?9z�\0\0\0(\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�J\0\0customXml/_rels/item1.xml.relsPK-\0\0\0\0\0\0!\0~�*��\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�L\0\0docProps/app.xmlPK-\0\0\0\0\0\0!\0��~��\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�O\0\0customXml/item1.xmlPK-\0\0\0\0\0\0!\0�h�?\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�P\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0U�Iv\0\0?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0WS\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0ӋO�\0\0a=\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�T\0\0word/stylesWithEffects.xmlPK-\0\0\0\0\0\0!\0�?jLO\0\0~\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\\\0\0docProps/core.xmlPK\0\0\0\0\0\0\0\0~_\0\0\0\0',1,6,NULL,NULL),(2,'Enlace agenda 7-29.docx','15803','application/vnd.openxmlformats-officedocument','PK\0\0\0\0\0!\0�!�}�\0\0\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO�@��&��f��]�`��pP<*���v\n��Y����\Z4@Q�Ҥ�}������+]D�IY7����2Ӕ����{a&�5��5 ���z��Hm0e���(g�&ց���z-��)wB~�)��N�Kk��҃�{O��y��>�$\nd�c���J�p�PR\"���H�7		)�=8So��	��ဍ�J�U�H��\"4a��Ϭ�k:Cr�f��s%�їn�[	�Ts]$͊�l�r����\'��A\Z�V������*̆y����K���O�m{\Z�@�>%�{�m7��V�%L���bǼ$���I\'T���h�[!\r�ճ{6Ges,��s�C\Zb���N�RS�;�AA3���y�H���A9b3��d�j���\0\0\0��\0PK\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���JA���a�}7�\n\"���H�w\"����w̤ھ�� �P�^����O֛���;�<�aYՠ؛`G�kxm��PY�[��g\rGΰino�/<���<�1��ⳆA$>\"f3��\\�ȾT��I	S����������W����Y\rig�@��X6_�]7\Z~\nf��ˉ�ao�.b*lI�r�j)�,\Zl0�%��b�\n6�i���D�_���,	�	���|u�Z^t٢yǯ;!Y,}{�C��/h>\0\0��\0PK\0\0\0\0\0!\0�DӇ,\0\0>\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���N�0��H�C�;M;`Ch�.��+qNS��h�*���=Ѫ�-+=�����ώ����:���5	�È`��+S$�}�r��$arQ[	;\0�Mz}�~�Z�/²j0�.V5���,Am�g�uZ�]�!?E|EK��,x�<an�߲`wh|�?޺�΢UJ��U��G��Е#j����g�@z?�\n��]�B��8����[�\'+�\Z�����:�c؊��bN�v������s�7{���g���)���\Zډ���Y������7 ���fO���/(N�	�~}�\0\0��\0PK\0\0\0\0\0!\0���,\0\0[\0\0\0\0\0word/document.xml�Y�n�6��w8��$�O~+4�$MS�C֤��@K�a�TIʪ{����\\�d���X��:Mڡ�l�:�����<=z�	��6\\�à��\r\0e�b.������̓\0�e2fBI<�h����?=-�XEE����&,��0H���N�D)f�le<�ʨ�݊T�Q���S*w��^�˵�����	3A�.[֦r���H�Y��t�ɘ�&iϙ�C.�����^�F��am��� \'V���^�bž��i�cG� �4)�o��Rm�bژ4�ˉI&��ʼ������urp�YI��Q��nE0�J(U\\~o����׽˙:#N�̆uLh��X�1.gj�,4����xH}�kU�3sr�0mr<��\Z��u�|�ͻf�`�u�R�c\0Y^$Ri6dQ��W�����P�S��CҰ�_�no{�����)�X!�����#��R��+;H�&���������mT��_�#*49�Ȭ\\�A=�`������_�)����b��^���Τ �UkCM:����慄W��,ـ��U�X/\n1���-!��7	\\���eblS*�$5�%bQ�d�h�G�Y�o��Kn�%�,�,O��e(��*.&�)��l�\"n�5A��jp9������caQå�.��SU@�$HU3FE�Y�2$H�����$�)6�PlC0��КI���C��.�JB�K0���+(�.�eʣ�I����@Z�K�=?8U�+6E�X�A�YШTz|���M.���16�H�x?i`���K�j�\"���ΓGB��9,^c��C�Џ��M�g�fB�(�\'�\r ��Pj%�g����۔Y@a�[�F���L�G�y_�s����w\Zϐ;ľ��0�*[������>��~�i<\\���9��q�o\'D�hB<gB<~}W��õKzH}o�a5�\nQ����A���V�+\Z�R|���!�6�Ҹ}c;�ܼk�gݓ��O1�����>�2N�����mafe~����Ve�n�#�vn��l=�S��	��y�6�!ȧ��,lM�B�δ����D�M�B\\Y�mEzZ����F4TY�f-�g2���O�%|�|�%cn��`\\QD˳���V8��cRU�bG����&b5D�V\Z�\\�#�\"nG{�i�Y������,��>W��I֜�$D����?\r	c�dS���Sצ6���n�\nY(��(���Bw�����8BM`hB*}kUK�Q��u��@�Ck��[G�%Ppv�q��=�rj��S����f+.̠�o�R\\�qrl�!����ӵ#M�4�Je�*�{���Y�O�ՔH-\"�?��C*�c\n���Qnd�j\'�9	=�k��dK�C�S\"�PZ�������e���nww��̷��l�H�2بހ�;#�=9]�T��L|������;Qo�{�)IA�����e���8=����\r�+�z�a�P���S��H��8���,#���\\�΢qqͻ�y�7�\'��a�ek��\'WH��+�~�������o(��s�V��|�zE�$����P���n~ͭ�t�t@��{�#�(峟Ia��z�H	:�5�݉x+��\\s��/�����=�JA�\\�c��ߣg��\0\0��\0PK\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0word/theme/theme1.xml�YOo�6��w toc\'v\Zu�ر�-M�n�i���P�@�I}��úa��m�a[�إ�4�:lЯ�GR��X^�6؊�>$���������!)O�^�r�C$�y@�����/�yH*��񄴽)�޵��߻��UDb�`}\"�qۋ�Jח���X^�)I`n�E���p)���li�V[]�1M<����\Z��O�P��6r�=���z�gb�Ig��u��S�eb���O������R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j�����zA�\0�V�2�F���i�@�q�v�֬5\\|��ʜ̭N��le�X�ds���jcs����7����f����\r��W���+�Ն�7����`���g�Ș��J�\Z��j|��h(�K��D-����\0\rdX��iJ�؇(��x$(��:��;�˹!�I_�T��S1�������?E��?������?ZBΪm���U/������?�~����xY����\'���y5�g&΋/����ɋ�>���G�M�Ge���D�����3Vq%\'#q�����$�8��K�����)f�w9:ĵ��\nx}r�x����w���r�:\\TZaG�*�y8I�j�bR��c|XŻ�ǿ�I\nu3KG�nD1�NIB�s���\n��R��u���K>V�.EL+M2�#\'�f��i~�V��vl�{u8��z��H�\n�*���:�(W�☕\r~��J��T�e\\O*�tHG��HY��\0}KN��P�*ݾ˦���TѼ�9/#��A7�qZ��$*c?���qU��n��w�N��%��O��i�4=3��N���)cbJ\ru�V�4����(Tn���\n7��_?���m-ٛ�{U����B�w�<w���_���$�#��[Ի���8{���(�/�$Ϫ0h݋�F۴��®{L�)#7�i�%�=A�:s�$�),��Qg20pp��f\r\\}DU4�p\nM{��DB��%J��â������+{�l�C���]��=��5\n2F��hsF+��Y��\\Ɉ�n�ì��:3���E�[��6�9����`��&45Z!��*��5k8�`Fmw��-��\"�d>�z���n���ʜ\"Z��x��J�Z��p;����\Z���{/�<�P;��,)\'\'K�Q�k5���q���pN��8�K�Gb�e���\r�S��d�̛�\\17	�p�a�>��SR!���\r\r3��\0K4\'+�r�zQ\nTT��I����Ivt]K�c⫲�K#�v�5+�|��D�\Z�����~��O@%\\w���_�nN[�L��9K����q��g�V�h��n\nR!�y+��U�n�;�*&�/H�r��T��	�>��>\\\r�t��=.Tġ\n���\ZS; Z�~�!������P��9gi���C�ڧ!�#	B��,��;�X=ۻ,I�2UW�V�9$l�k���=A��j���;�{�A�P79�|s*Y�����;�̠�[�MC�ۿ�hf��]o��{oY=1k�\ZyV\0��V����5E8�Vk+֜���\\8���0X4D)�!!��?*|f�v�\ru����\"�x��A�@T_������q��6�4)kڬu�V�7��t�\'��%;���i�9s�9�x���,��ڎ-45x�d���8?�ǘ�d�/Y|t��&LIL�J`�& �-G�t�/\0\0\0��\0PK\0\0\0\0\0!\0��^I\0\0�\n\0\0\0\0\0word/settings.xml�V�n�8}_`���sK�$^!N�M�m�:	��(ql�E )+��wH�q\\�A�E�s������\rhÔ�%�I��@V�2��%���4�K$%\\I�%[0�ǋ��:os֢��	irQ͒��u>�j\r��U�D�RiA,^�j �~j�~�DM,+gv;��iҙQ���2�L���2ji�J��KVA�5�{��kU5��\Z8Ơ�Y��Dk��Z�����$6�G�6Kߒ��m��/\Z�	�)�ZU`6H� L�����^J}���g\nճԟv�~��ۡ�_Y��mF\0�(D�߬�Ҥ��6\'���J�^�נ+l�q�&�\0Q-�Ƃ�+i�\'b�jYXbuL\r�{�Vzh�&�6K����pO$�=&�[�(�!��h�fN�p^89��{��D$�isF�G�͍|4��Zq�hOJ6����j]��(�P��{ew�[#c@��{�	�[�-r=wY\ZypQD�hz�S��}�O˗h��9�j+�P>�[\"�������=h26�,��Zc>�5�0�+l�V<�Qu����	�a%��0�PC�c��끳P\\�P��W�<L�K�)��Q����;��;\\J���p�����\0H��;��\Z�@l�e�C�|\'�����7���]g��D�N�L���7�llC�f��B-�ػ8��|8=�3�N���1�Y�]?�\\e�����p���1��Og�a���������`��E��ʽ�8\'��@�\"�Ԍ�n� $E^����p��kNє����8����\"ÿP�Sf�kXz�|A�jg���G������rc�Z5u���\n ���Ǥ��D���,������Hz����`W�6��сs���X\0�,�(b���}����5)W�,�l��~�Y�Q�@�r5�xC�x,��_H�2C������Î6��ю��7ȍw�I�Mv��H��6_�ָ�plţ�/��9g�)�?�Y����\nW�[�a��5���3�:�{B7�Mo��3�e���gaͨ ϸ�ᩳ�Is�U�ݓu<\'\\�Q{�X����2�q�����*�h-���킓�g�P�ڰJcE����-�T/~\0\0\0��\0PK\0\0\0\0\0!\0����5\0\0�1\0\0\0\0\0word/styles.xml�ZMS�8�o����d��P���\rU�j�\Z��Q��Y�f �~[m�cܶ� �ac[��j�ג����!\n�{�(!�?z3�=r)�ۙs}����T��%e�g�#W�����a{��ǐ+\0bu3�����@k1�FnxW2�X\n��� b�]��d�a�X�P����px����\\�D�Od�E<N�~��e��b�\n�m��L��D\\)t�xq	3�\'@���*}��\r4����+\n}/\n�nc��E�ێ�����N��ea��er��Ks��Ne�*o{�T �̿��o�+1�m{șJ��`��G�j75�.C��=g>��n滝��b	�,ٛ�`8��k#ٔ��[5�\r�7�YA�s���<�3��7o�.!`Juo�#�U,�8[���b��^��F�eu��)��d�3|0ř���C�7�:�]�\"��B��m�)lGz����kδ\\����D��{g���P���cf��b+\'_\'��w��p߾.$����8�Wl�*�\"U)�����~���\"\r�����y�H��DƷ��D�5SV��]�,�k.y�]�=:��ޒv.�7߰\02�Ʃ����\\ܮSo��ք9Zz�-υ�Q�{?�����D,IocKo��RdQ�(ʹ��Ƙcw��X��۷=-i�O[�(��9�iI�|�����xx{:��S�e(�Usڤ��ƢҸ�[�J�6\nNm,ڑ�w�wi�ۘ+�t�ۆ]����6����Ql�h���Qz��&�+~/�k��]���QT�%K�m�6�&\r\'������d��S]9��{���Ê{�8��������29�P����D��SR7D���i�Ql�-sNIW�ڔ[B���	a�mk��k�[����@��E�mQhd�Q1��J)�✿(�-�\n�B8�B8�B8�B8	��?K����Reu�REK��P)����B�[27�R{[ �P��-\n\r��B�(�@4PJ�Rg�Rg�Rg�Rg�Rg�R\'��g	����Y��.T\na�h	Q*���U��_��\0{�Ek���\n��ۢАX)T�bD�*Eq*�p*�p*�p*�p*�p*1�P)������B�6��u�R?[��_�_ Tjo*��E�!�R���J)T��,T\n�,T\n�,T\n�,T\n�,T\n�$Tb�,�R?K�ՅJ!l-!�B�6~�\n�h^ Tjo*��E�!�R���J)T��,T\n�,T\n�,T\n�,T\n�,T\n�$Tb�,�R?K�ՅJ!l-!�B�6~ꣵ�{���BG�_=������SW|��a��[n��[l7�����Y�;�<���i���@�\"?Q?>��{��ϴH��������5/cx\Z\'���SP���x��	,�����,6���P��b�	=�U!gP�aj1��.�\0[,O1�qD&��Ji��_EñI��ױ.�A��^�l�z�?l�=2q\Za�Hݧ�]Y0(C���J��1��\r\\!X�5����,�O�*�mL��	��cC��p8�L�/7�z=�;�7�z�/�E�^��@��`�����CM�jf�iB_\\e���e�̱E��`��e�����a�?[A�/f��F��i��;�����Z�	��hZO�Pa�G�L��*(��=u�*�~�2���E>a�&ẙ�C��B�;�cxГ<u@�����ή�1��&(��Ӥ9ae�\r��μ��Q/`NЏ;\"�Q� �3�a�{�A�ZK���h����K�#�-��+[y�]�)��>�ռ�N)��;�f��->_��ּ�a�\\����&�=�!,3�0Oy��,�Y*B����|`y\'�����7�	2���!_��\r@�!Vc5�2Me�m�`�M\'\0���L~���8�<1u@<��z�H�5Dx��\n}#�����LAh�zio.�Ţ�	��؛��ȫ�Y#A��\0GՒ\r�[�����;V���r�8Q���5Q��4Qf1|�����3w��>�l�����s����z�\niH�������4r�#T�J�������\0�I[�ܙ?�#�\0�8ؾf,4���d ��~+k��X&_u�~ر�,l�)�V�vRU˿a�����aL&U�,~���\0\0��\0PK\0\0\0\0\0!\0�-+�\0\0�4\0\0\Z\0\0\0word/stylesWithEffects.xml�ZMs�6�o����}رfTѤ&�|��q&#O�� 1Ip	�\Z�ק�A�M�a.�$�����\0��/?�(x�2Y��o&��\'�܈�a9�~����(P9K6,�	_���\Z������y�P�s�U\0\0�Z��p9��y��U��1SobfR�m�&��Xn�\"���6��d:�_i&C��vŒ\'�F.�h2�	���Y�r�Ff�e�Ez�)��ZD\"��e#��\"Kơ3�6Y���EFF��oiy-�\"�I�=�3�2Q;���8\r���\\zr\r�)��v�tzA��C2���TԀ�#��(��8���g��8��cfDCX��p�g�I�Dba�M3���S��s&�Ժ����n�G��i�������� �]�X�GA.n��u������{������Q��e�53��\n�}�I�����P@x�E�r���73����3�P�u>�}HT�Y�k��u�K\0��E�Oξ�;���b�,;[}��GP�o�$��*[��\rr�*e�·�2|�U�#�^����k&dZV�[�X|�\r��풝����x�]�M}��O(��F(�$_�f�s��Hm>�y��\n�KX=�iБ�⿕�T\"��|Ǚ^���(D��;o���P��uc��b+/_ϻ;:��pz%\\X\Z�~r毄ۏW�S�&��qR���^�(�@^��u�g�gR/��?��)���_#�6<����;:My琝;�R��Pw����x��,XZ��;M���8z/-o��Q����4��	�Ѵz�9z��oDW�R��<n�\Z{�����z���4В�y����RG�󁖴Ϸ-qq8��+��#�J��+�d$�mUs�N��+��qg��D��])8we�U�a{���q���L��k�5y��]�o����ʬe0��!\\�Ɵ�~O?MF��_Y�2��K�*��f���B�85�3��I`;�xЉs���A~���q9&g�\0�O�`%�,I������K��Q\\����Sҧss-�	�.�v�]#��ڻA��ڻ��R�i5����E��/\n�үN�Ro�Ro�Ro�R/��JQ\\�iY�$*�p���h�B�򳓨tK�GTj�\n%*�wE�E1KT��\nD���x�Bx�Bx�Bx�Bx�Bx��ET���O˲&Q)�+E-D����D��bs8�-�Z˨�+������,Q)�+-KT��MT\n�MT\n�MT\n�MT\n�MT\n�ETb~Q)�+?-˚D���M�RW~v�(�@Tj�\n%*�wE�E1KT��\nD���x�Bx�Bx�Bx�Bx�Bx��ET���O˲&Q)�+E-D����D�#��J�]��D���(�(f�JQ\\�h�X�Ro�Ro�Ro�Ro�Ro�R/��JQ\\�iY�$*�p���h�B��S�E<h��5:����5~�e��Ʒ<��-N�������c�;��ﱿJ�ؓ�f���}c�XGB�\'���w���3-�/a���*�R�1����K��)(ԅ4K<t���A��9�:�����?tAݡ�*��8L-�6��`��)�6��C)\r��W�pfR�u��iи��([A�^��h�L��X?����AW��P~�U%�����\"�H[O�W;��\'wu�Tm�^�@����t2����_i�8z����w�z�/nE�^��@��*a�.���CM�jf�2�/�����,���>��7�\"׍o���)~���_�|e�b�OK�2�,��k(��iQU<�CE%t�?e��TA����<Ty��W(c*�_�ve�P\'�YQ�<���1y00y�4�p�Sg6 u���x�l�bT=M:\'��D��D�)�Q\'dN\r0,wDI�:���� �����Y��!�GSmg�/5�Hn�F�m`3t�J��}��@e��R ����f�+>���N]�I�M��;#z/y��:*%~�$Z���\\�6?X�	<��Q�C��e��4�[��\04�`5Vj-�\\������@X�Δ�z��N�x�3S�ӓ\'wR�If@\r��I������ ��BAhVzio/�բ���^���`\Z�z��N�:d�dxGf��\0��=+���r�9Q���7Q�h��b�zU���;�\Z��>l���T��\n=!<�5֏�!-*5�4�P�F^{�z[ɶ����?p P���.G�9�a���k�\"S����(�[Y׾@$2��K��Þ�de[O������^�M,�xF1�������\r\0\0��\0PK\0\0\0\0\0!\0�c��\0\0\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�S�n�0��?�ǲS�I�A��mXN�,���R$An��_ߥd�r�Su����!|o\r;@���U6�L3V�R�z��/7��(m)���ʎ�G����!���h����A��<���V�	�-u*Z���:wU�<9�ւ��v:]���`K(o��0�7.��KK���R=���� �\'8fR:ly>Ty�P�B� fwT2��5D1�y�WJ��xއ|�� ���G9���J\"�+�i\\t�����|<�����(�<�����d��> dA�A��o��NIk�QI��߀L�n�&����(t�E��Խ��!���2hi��Kc}���G��hh7����c�X��4K��`*��q���!>W�����1�Cugw��u�Z/�Q�l^[���0�`{����G�*�nH�ڑ��I��q����u���8rǫ�f�\"�d��OF�#7AI�]\n|C��.�����<�w#9��b6�L��v�����&~\0\0��\0PK\0\0\0\0\0!\0�h�\n\0\0�\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��Mo�0�����KZ�6Um��4�Icڴ[��H�(	t��K[(T�[l�yl�I:�)Dpc���\n@RŸ�f�m�Q`��%!CX4���R�����86�$i�3�sN\'[���؁WH_�(S�C�Ś�=�F��#��\ZꎈNHF;�>�\0� �\0�,�1�h��޼�T��w��;�ƽf3�;��坰,�A9j�����c��ڬ\ZrY{E�)���N@���џ����k�]��\0q��s� 8	JJ�j��{�Je���^�,5\\;��m�^«�n�_wÁ=U7z���-\ry�C�qӳ�������oSҚz�������(��C8���I2\'Q�Y�ֻ_��&�Ӑ�$N�8�π֥�W�\0\0��\0PK\0\0\0\0\0!\0�\Z��\0\0	\0\0\0\0\0word/fontTable.xml�]o�0��\'�?D�/q�5T--�.֋�Ӯ�q�\"�#�4����&��1�ŴI��^���{����U�ӆ+����Q�$U3.���<���X\"g�P�eh��}�tS\rs%��`�4CA3���Ʊ�&�i��I̕��W=���UyE�(��S^p��S���&��$��sNك�+����c�\n���Y���ѪK�UJ�J�(3�,�O.�a��A ��VF���Îb\n�\'�?�E��Υ�dZ\0�*��\\T\r% ��Js��\'V���HeX�/��Nq��\0�)�§�;(vQ�h��v\"rN/ֵ*ԌiFJn���+���9�+3����ӻ~%�Pwm��.0�_��*~�q��d2qs@�8�U~�q0��g.�q$��Jy�G���HH8�F<�������B4w/�#�<�r�eѭ����\0��H���deU�/DQ����F:0Gm���xk����c-��8��Y�2��py�k���\'�-��&rYp}Qv�i��?�%���x80�|@�8��h�07��?ҷ�cԮx��aՠa������J��j��s���$���2&��S�3����\'�w3���4�Kh��.; ܍��.s��n�� �	O�6�mH�&$���G��$p���5$9Kb�OČ~\0\0��\0PK\0\0\0\0\0!\0�N\0\0�\0\0\0\0\0word/webSettings.xml���J1��;,��ٕ\"�t� R�\"��\0ivv�d�Lj�Ooڪ ^z�$�����@_���Щf^�\n�����S�/�ٍ�$�0O:�Q���b���gH����(AZ��ڦ[��n��)B(�#1�TJ�4\Z~�ř%�&���.��U]_�o��Qh��;�;��������l]�-��e�!2Y)��?yh\\�e��?�e\ZӼ,�O�Uڛ�xB�*�����Ɨs�P}��br�>aM|˔X������K��d�\0\0��\0PK\0\0\0\0\0!\0Bۡ�\0\0�%\0\0\0\0\0word/numbering.xml�Z�n�0�G���oq�4+�TCC����M�՚\";i�۽��c�\n�M�6�,ـ\"��?�����s�?���-g�Q�J1�c�u��唊�����h�ut��3)��[흝>�r9�;�C��2�G�<M����xN8�ǜ�Jj9K�c�}9�ј�K��~(��(�A�9���:^�&\"`��T��X�k�cu�%G�=�)�PF��FQ�F��L��ڠ�� #2���\n	U�Ŏq��kg��4�W��\rR�9M��VLq^���7�gE�e����)?d\r^+����WXS������`��~U�5h�d�+bT�6<Ą�1K8��T��*����JfIiNB��Rܔ�Ld6�Ey�U��)����9N������ZH�\',Za�x�w\n�Ot�p�~�xg���t䡼��t\n��AK\r�w=���=Yv�JH�g��(:�`�1���My�U/���c��-�\n_fD��&�\n��P/�r�J���A���e�$c����+r[>�e뻸���l�9���\\�0�4�#亂�1��:O���r����\"� �uL�o�e�(Q��di�1t���t�#0��0��)FX�yU���\0)ÃF�[C�����\0��!x�k����Թ�x����|�\0��J��lk�F�\Z@ֱ���\Z��y�\'6��JC3h�\Z4�\'��qZ�4���t�򒍯j�>��{-��ftY�6ۚ��߭��0\"�{m6MSR%�,:��fМԠ9��럴��)����P�qQ�2�oFW���Tᴿ���T)n���ð�m�-ō����(W�[i���:5�������(/��5�=��w��>�I�Q�v�(���[�q��P��/Gy�E��Cy���n8x���Gy���9�[����]U�!�oW�5�{NN���9��M\\U�^K5�K�����sU�_F��궉8WխE\\����P�O󢂭�V꾗�2?c!�� =͉gC�2�b�;���$�+��G���e�ӟ\0\0\0��\0PK-\0\0\0\0\0\0!\0�!�}�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0�DӇ,\0\0>\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0���,\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y	\0\0word/document.xmlPK-\0\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0��^I\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0����5\0\0�1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0�-+�\0\0�4\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0i#\0\0word/stylesWithEffects.xmlPK-\0\0\0\0\0\0!\0�c��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\,\0\0docProps/app.xmlPK-\0\0\0\0\0\0!\0�h�\n\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�/\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0�\Z��\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D2\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0�N\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�4\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0Bۡ�\0\0�%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\006\0\0word/numbering.xmlPK\0\0\0\0\r\0\r\0I\0\0\\:\0\0\0\0',2,6,NULL,NULL),(3,'Slide notes.docx','13178','application/vnd.openxmlformats-officedocument','PK\0\0\0\0\0!\0	$���\0\0�\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO�@��&��W�z0Ɣ����M��.C��~dg���JK���Z���2���3��J��<*kR�Oz,#m��,e�����E��Di\r�l\r�F�ˋ�t�\0#�6��\"w�9����:0t�[�E�[?�N�1~���piM\0�Pi���r1/C4^���C�,��_��R&�+��H��d�\\�CB��w�P���V������*�h\"|x�0����gV�5���i�y�$4����V\"e�ˤ9�B��A���)j���T(�y�>vw\Z�餶ث�v�(�SL���qW�U�DX��˿Q�w��4\ZS�^�	��0�F�\"м�\\�gsld�Y�dL�uH�����݂��c\Z9>(hVDۈ5��{����A���7�t�	\0\0��\0PK\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���JA���a�}7�\n\"���H�w\"����w̤ھ�� �P�^����O֛���;�<�aYՠ؛`G�kxm��PY�[��g\rGΰino�/<���<�1��ⳆA$>\"f3��\\�ȾT��I	S����������W����Y\rig�@��X6_�]7\Z~\nf��ˉ�ao�.b*lI�r�j)�,\Zl0�%��b�\n6�i���D�_���,	�	���|u�Z^t٢yǯ;!Y,}{�C��/h>\0\0��\0PK\0\0\0\0\0!\0|;�9\"\0\0�\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO�0��&�һV]�ٲ5٫���-Sh��t����\nʢ.Mf����I�Z��U�����q�\"�����=loO.Y�$m.+gA������T��!,M�QH�(XI�\\q���Zb�\Z�aG;_K\n�/x#Փ,�/�d�}?�e��h��7�)��m�g;���k��k�4��D�f2�/��w�������Bm�w�4������A�^�#�࣡�FkP���ܚ�Hx�����ȽAt�~9\'���ozW�nM���t���V�WkJ�lN�W���z���^�>\\�\0\0��\0PK\0\0\0\0\0!\0a�@ \0\0�\0\0\0\0\0word/document.xml�W�n7}/�쳭�+_ X\n�81ĭP��cA�v	�Ii�<����˗���+ّ��I��.˙ù��._�Q��a�V�d�$�*ՙT�$���7�	9/T&J�x�l�%/��wY�3��+V�\0�ܸ6�$)�7�~ߥW��*�Z����R]��r)S���f���p��Sv��j#\\��U�hڰ�^Km+�]Oۼ_	�Z�c���B��o�=8�`�$Y[5n:�\\�M@�G�a�x`���@ܱo�DZ�B�}\Z_���.��cIl�����pt��.�����5Z�<�{�Y�T�MB�]�q8x,��#b��p�.�JH������-.N������مc�ס�U�V8�O�lpO���ܓ\0�������\\i+%\"��#\n�L���ζ��P=��d?O��`t=:=9O�G׼��7+�W�/��\rn~:/eƤ�gw��;��n\0�����K�hc9����[nmqZ���s��͠P�v��b����>�@�\"��N���q���3\"E?�e�v����Q�?�U�䘏h��O3��I�l�A����(�\n�\n��X7&_����%��\nS�G�n���Q�Qu!K�{+ҕ�du�-|!<�H2(�VdJ��0�h�l\\��\nFֱVx1Ő�8c��hң\\>��y��ʇ��F��YX}��]�C�&ԙΥJ�0�I�(zZ�� ����^��\\ 2�p�M�L�$����t����HM�C�����H\0��۸\r�@0W�a�amJ��eZ0F~@�4~��EޒƋHM�%.��Dio�q;\"/+���9���������}��իp5�{��2�\n�U��I��F�ġJ�\nv��Q�β��BW�����y�JD�\r�` T{�[��<[��IF~nI���D���d�O\Z��x��3�UB�A��G��kR3@�B���^����I�}�r���O�����hc�����(�����|o�^~+����G���y��;�D���^W�咗wV�(���$\Z/5f2FR�3_�x�	�l��â!�&F��7V(�L�Q�pW1���j.x��ݘ�\r\0\0��\0PK\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0word/theme/theme1.xml�YOo�6��w toc\'v\Zu�ر�-M�n�i���P�@�I}��úa��m�a[�إ�4�:lЯ�GR��X^�6؊�>$���������!)O�^�r�C$�y@�����/�yH*��񄴽)�޵��߻��UDb�`}\"�qۋ�Jח���X^�)I`n�E���p)���li�V[]�1M<����\Z��O�P��6r�=���z�gb�Ig��u��S�eb���O������R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j�����zA�\0�V�2�F���i�@�q�v�֬5\\|��ʜ̭N��le�X�ds���jcs����7����f����\r��W���+�Ն�7����`���g�Ș��J�\Z��j|��h(�K��D-����\0\rdX��iJ�؇(��x$(��:��;�˹!�I_�T��S1�������?E��?������?ZBΪm���U/������?�~����xY����\'���y5�g&΋/����ɋ�>���G�M�Ge���D�����3Vq%\'#q�����$�8��K�����)f�w9:ĵ��\nx}r�x����w���r�:\\TZaG�*�y8I�j�bR��c|XŻ�ǿ�I\nu3KG�nD1�NIB�s���\n��R��u���K>V�.EL+M2�#\'�f��i~�V��vl�{u8��z��H�\n�*���:�(W�☕\r~��J��T�e\\O*�tHG��HY��\0}KN��P�*ݾ˦���TѼ�9/#��A7�qZ��$*c?���qU��n��w�N��%��O��i�4=3��N���)cbJ\ru�V�4����(Tn���\n7��_?���m-ٛ�{U����B�w�<w���_���$�#��[Ի���8{���(�/�$Ϫ0h݋�F۴��®{L�)#7�i�%�=A�:s�$�),��Qg20pp��f\r\\}DU4�p\nM{��DB��%J��â������+{�l�C���]��=��5\n2F��hsF+��Y��\\Ɉ�n�ì��:3���E�[��6�9����`��&45Z!��*��5k8�`Fmw��-��\"�d>�z���n���ʜ\"Z��x��J�Z��p;����\Z���{/�<�P;��,)\'\'K�Q�k5���q���pN��8�K�Gb�e���\r�S��d�̛�\\17	�p�a�>��SR!���\r\r3��\0K4\'+�r�zQ\nTT��I����Ivt]K�c⫲�K#�v�5+�|��D�\Z�����~��O@%\\w���_�nN[�L��9K����q��g�V�h��n\nR!�y+��U�n�;�*&�/H�r��T��	�>��>\\\r�t��=.Tġ\n���\ZS; Z�~�!������P��9gi���C�ڧ!�#	B��,��;�X=ۻ,I�2UW�V�9$l�k���=A��j���;�{�A�P79�|s*Y�����;�̠�[�MC�ۿ�hf��]o��{oY=1k�\ZyV\0��V����5E8�Vk+֜���\\8���0X4D)�!!��?*|f�v�\ru����\"�x��A�@T_������q��6�4)kڬu�V�7��t�\'��%;���i�9s�9�x���,��ڎ-45x�d���8?�ǘ�d�/Y|t��&LIL�J`�& �-G�t�/\0\0\0��\0PK\0\0\0\0\0!\0�-w�\0\0S\n\0\0\0\0\0word/settings.xml�V�n�8}_`����:�/���Hx��N�*�\0J�DxHʊ��;$�(���h�\'�s93���ӳ��\rhÔ�%��,��er5K�ód`,��p%a�l�$�.����\rX�ff��䢚%kk�<MM�Ȃ�A�r�� �z�\n���zX)Q�Jƙݦ�,;I:5K\Z-�b(X��QK�\\r�\\�\n�O��?7x^�� ���j����f�j�į�a��������ѮeYv�J���I�9�ZU`6H�P� L����{@/G}�G��ة�B�Q�W}����v��7Vj�C�q\0\\��oVRiRr�v4M.p�~(%m^���I8���$u\n%�bk,����x��[�D���לq\Z�7s�̳Q��y����}��Dᴷ9F�yhs#\rf��@ܝر�\r���J��iǎ2\r�\rY�s\'�72&���\'��4������]U� .�Pq ���9YUO���h�{[qg+�|a�D8�,4�4�b�!cNǝ�Zc=�5���+l�V<�Qu��ҁ�i\r��\\�êD�ϒ ��c�(�.6��M�������Y:H!1jF����M_�~���_q�ґ�����@�6�!�>lk��\r�\n�;1�^0�������Kc];�&.�+ec�lz}zy�9��3{���Ok��9�\ZeדC>g����K��̺|D��^_���k�@��\"�Ԍ���K�~��dԗ����M��aP�44�[�j��2S_����ѫ����x㾾`9���VM����y1�h:��ߘ�rӔE���ЯT��w�\0��x���Î|�(D�b�@g���p�?,H]�eG�r5�%���ֳ��ş\0�)W�N7vCmq�t~C*WZwg�h�-z�$�&���`7�e�Qv��N�B�|�7Ms&��N��ɗ�s����dO�_�Y�NU>%��_ FfMj��;��۠r/�X�69<���Y����;�8�Κ��j쎭�9�zG:��G���;���ɥ�)T��؊���Pg�P#�[��D<��������\0\0��\0PK\0\0\0\0\0!\0\re�h�\0\0l\0\0\0\0\0word/webSettings.xml�UMO�0�#���Yک�JE�4�!$�������Q���_�׎1>�7Nul�W;/N.._��V�y	� I/&�0*i�y�M�2��L�Q����r|zr��(E��#d1>׼ �lN������58�.ݜj林����,�R*ִ�C��q��@]K.��/�0��S\'2��i�;[s[�����Ѫ��L�M�~#Ғ;�P�6C���\n�I�ZZ�H��fn��R�6IJƸ}�\\��7jrY$\r��4N�6^B���+���Bi�d��݊:�{��A�?�g`��N �_�XϤr���A�	&�ׂ��@�2�M�6�[��P{��,?Ut��w~��\"�Mw�g9�,d�$���zs\n�J�~��F�d;?��q�T��ݜ��� �|Sp�����R���]���ވ�\0\0\0��\0PK\0\0\0\0\0!\0��C\0\0�+\0\0\Z\0\0\0word/stylesWithEffects.xml��]S�:�����_�s��&m�i�B?�i)m`z��\n�`[>�B����d[q����\\A���jߵc����i�Q!����p4�x̲�yx}���uHE��$<����������z��I��P\0 ��m�õR�l0�њ�D�,\\�:�x:���`�E<GC�_.xD���NIvGdX�RL�9�`�)Q򐋛AJ��&?\0zN[���`\'��Í�f�C�!m2+*�T��e���G��f��84x&�,�-�4X�r�ε��4��m��1��.���	�����%qa�&E���v�I\r]�)wD#�}\\؟��$%,�����\\��s�����ܺ����γ[�Ҳ��l81ʫ/Mz�tk��0H���M�Y&��vt��A��ytFWd�(�?�KQ~,?�?�x�d��1�K��\\�m�vr;�D��H��L��E��&m��LHv�;��C�\\/�\'���,2��f���Jr��bTc�P �\\,��	A���<���B��J��x}~)P�v�4e_XS(�v\\�f1���ٵ�����O�D�\"���<O�f\'��h�KL��f��PG���*ۑ^(D�m��}F�cm!kk1�Mc!�ܣ����q���\"�.^��7�#�?L�b*���Su��R�(��ͼ\'�c���d���Ӡ�\Z�?���_m�a���捣~\\&$�k��TW�^ic\\��.x��Id�[���_G����\n�>��Zs-��c-��W&�*�!��Jha�Y0x��wz2v����l�V�xoΣ�Ʀ�?n��2����x���:J-sN{Z�9_��4w�����~�m�0u��)O�Xm�jO��0ue�5n�֕Hֲ-��,ړJpE�HӲ;�5�4�m�Z�N<����7U�Mq�AwSz���Oz�����Q��K\"ȍ 9��ܯJG�I����\rW�VW��ܑ{ٟg�,i��92��8���u96�w�ޜޕ�ѻ$u#zզNs�\"�Mq����%]�c�R�E�{B\'�%�����~�ۻ���wE�QyF�v`�+\r���x�/�pկV�b��P1�[��-T��*2�P1ŕ�Veu�b�+E-�.T�p�g�P�#��P��+X�����ĬP1���\nS����B�o�b��P1�[��%Td�$�b�+?���B�W�ZD]����V�����`�_�սۻ����]QhH�\nS\\�hP�P1�[��-T��*Fx#���^BE�O*���Ӫ�.T�p��Eԅ���l�y��b{W �P��+\n\r�Y�b�+\r�*�x#����B�o�b��P1�K���IB�W~Z�Յ�����P1��B5g;�*�wۻ�А�*��ѠX�b��P1�[��-T��*Fx#���̟$TLq�UY]��JQ��#\\����\Zԏ��\n����B��f�N��+*����w��Qջ�n��M��}��o{�Yӑ���	���ãﻏ̱5�.��l��~\Z|)�����txs��h�w~�\n�:�C�y��;t��>��3�f�sh�([4����\0[ӵR^6+*g5�C����w5p\\H��T����Z��Ÿ�����`���u�Wv����c\ZN�ޖ�;*0Ìǻ���+�aw8�t���+��3��R�b��S��au��^�����I���yÒ�e?N���=)&��Oi�|#f�ϻ�&t��oGC�8�@-�R<����x���֝)>�Et�;ۤK*�#�ĸ�B�T�S{s�c��F�۷=Q�|��:Z�=Pe7��jI����BR�N\r���+&������gӓW�͇~1���}�,)��BE\r�9W��d��,��U��@�v������.D����\0\0\0��\0PK\0\0\0\0\0!\0�l_c}\0\0�\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��Mo�0�����KZ���\"\r�iH�ƴi�,1��&Q(��K[(T�[l�yl�I:9\"؃�\\�Ń �b\\�3����cXG$#BI�PM�ۛ��*�Fi0��\r<Iڄ�m��	Ɩn� v��W���Ь�&tKր�Q�p�Gp\ruGDG$�R�h\0�bP�tǃ��La�^h*ʂ�J����^�m���`y\',�rP��1��1�\\��5��\\�^Q@y�h����|�\'�����t�5@�2�(N��������bm��Rf=�yK\r��?f۠��jA�[��]q`�Օ^5uK{^��<nzv�߲1�X�mJZSO���t���|ţ0\Z���2~L�I}ի��׶���8���w}�	к����/\0\0\0��\0PK\0\0\0\0\0!\0�^3�\0\0)\0\0\0\0\0word/styles.xml���s�8��o�����J~�4�!0���3P\ni�g�V\r����׳Z;��U�Ч6����j�k��Wo��$��%d6Gφa��H�\"[��ۛ�G/�@i��,����\\�o^��׫�T����\0\0����,\\k�O�y��3���\\�\"e\Z>�Aʊ��(�iδX�D���x8<\r+Lч\"�K�mR�i�<���Z�jG���me煌�R��4)y)�ŌN(Q!�\\�g��A�����|4���$�hz��d�	o;:	_C�b]�%�$Z���uQ}�>��2�*�N�����7\"�`_�m�U�|�N9S�L	����,S�f��3e²`�d���v~8���1�Yq4?�p�+����$��*G5�\r�7/��e���s\r_�B�D�x{y]Y@���y*>�8搳v\\�1���٭��������ՅHn2=ǧ܉D���\"��ԁ�2���W�\06o;�g;2��\r_sf���-��B�ւ�Mc!���\'�<��q��<I|\'OąZ�$����܈�`�0�F�f/��7�g���z�ߥ��)����U#��_�k�6b_�^�tԏ�E|-���\r��Ƙ���+�sAAj:ѿ�|���k�kM��б���P��zN]%�4��1�m����&�9Z��9��c->0>y��,�e��=-霧[�(��9�iI�|���*re�<�m�0q�ϹLd��$�=m��ĕEָuZW\"Y˶����@*�Y�#M��ּ�L��k�{�tۻ�TQ7��e�M魫n�K`_�a~͘�y|Ee_���\n���ix�OB��S_6R�]���1ޑ{�_f�x��9Ƈ�^�jp]���]��7�w%�F�.I݈^���ܫHuS\\��5���rL\\ʵ�\'t\"\\�m�_��W���+�~Q{W\Z�g��Jq�A����E���*T��*Ex�\"��J^B%�*���Ӫ�.T�p��EԅJ��l*}$�*�w�\n�ڻ�А�*��ѠX�R��P)�[��-T��*Ex�\"��J�%TJq�UY]��JQ���\"\\��*T|^�?�����Q{W �P��+\n\r�Y�R�+\r�*�x�\"��J�B�o�R��P)�K���QB�W~Z�ՅJ����P)��B�Wѿ!Tj�\n*�wE�!1+TJq�A�B�o�R��P)�[��-T��*Ex	��?J����O���P)�Q*E��U�x��B���@P�R{W\Z�B�W \Z+TJ�*Ex�\"��J�B�o�R��P����J)���*��\"\\)ju�R�+?͙\\��Y]�#���]�q�ìʩ�|�hm��]n��]l7��z�V��=��o�E\"$����}�1[���Ά��������a:n.���Sh�w~��\n�$���>�������BL��&��Y��;�\rclz6��V�˸�*��?t��<?w�U�T?�M�\r\Z��j�,��/Z�����ÿ�� �fl8�{[\r\n�\0�����عW��0�0�pT��#��7�{g$R�R�v���S�������I���eÒ�5�.�-��X9	|Γ����2���.�\r�q��ZH�e�m_�!7z���֝)?�Et�;ۤ^T\'��q%M�&�\0��x�c��F�۷Qa��e-�����Z0h��l���ԺS�d+�)8�� ��������r�_�V�/����A��!�J��l��*�TU�-A�v~j�@h����?��\0\0\0��\0PK\0\0\0\0\0!\0O*��\0\0�\0\0\0\0\0word/fontTable.xml��MO�0��+��|�vB�-)B,���a?�u�����m������_倣H��W3�������NzPζ��1RH+�Z�MK�gsR@�v͵��%{	�z�����t�(0�BcDK���R�4fn�/;�\rx�j��g��RZ�=�� ��?��u��[#mH��K���B�8�����ί�����~�+{�)�WFF	��ua���\\�V�^��3�F4��<_id7�5YL����ܠ�������p�n�cv\\��U�]�s����W��	�N��d8�,w�(�?�>���A���*�s@m�b+�|V�����-��פTXT^8)�����|RH�\\�T�g�Ju�<B���r����!	d�H��$�b�U�\0�`uT��B����_&��x��2�B����$`T\0��O����-7�o���|&>%1\r,�\0\0��\0PK\0\0\0\0\0!\0���(�\0\0�\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�RMo�0��|o�tY���!���>\n�iςL��dI�آ�������t\"ɧ�\'��{���l���UY�&�ַ��P}��R�L�����b�\\ܫ��)���,f�>o��(�I�M���+.{�4!��8M�Mc\r>�ڣ\'y]�7�	}��U�	�������fԗ��!�`��iB�s��Vu��BH������x�-f�9�R�������Ib��\r�-r�\Z��F[�~X�B\r�_G�8r�l��k�4��2��ֳ�w\nXX�mұ;��3��p�۫F�� /\0�B���֋G��$�Cq���\rh�������9M�~�C���h��opaƋ�n�a�7�X�ŖE�lּ���#�\\r�<�[��=�F���/�֛U�����כ���\0\0��\0PK-\0\0\0\0\0\0!\0	$���\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0|;�9\"\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0a�@ \0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B	\0\0word/document.xmlPK-\0\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\r\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0�-w�\0\0S\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0\re�h�\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0��C\0\0�+\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0word/stylesWithEffects.xmlPK-\0\0\0\0\0\0!\0�l_c}\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0�^3�\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�$\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0O*��\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�+\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0���(�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�-\0\0docProps/app.xmlPK\0\0\0\0\0\0	\0\0[0\0\0\0\0',1,6,NULL,NULL),(4,'Slide notes.docx','13178','application/vnd.openxmlformats-officedocument','PK\0\0\0\0\0!\0	$���\0\0�\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO�@��&��W�z0Ɣ����M��.C��~dg���JK���Z���2���3��J��<*kR�Oz,#m��,e�����E��Di\r�l\r�F�ˋ�t�\0#�6��\"w�9����:0t�[�E�[?�N�1~���piM\0�Pi���r1/C4^���C�,��_��R&�+��H��d�\\�CB��w�P���V������*�h\"|x�0����gV�5���i�y�$4����V\"e�ˤ9�B��A���)j���T(�y�>vw\Z�餶ث�v�(�SL���qW�U�DX��˿Q�w��4\ZS�^�	��0�F�\"м�\\�gsld�Y�dL�uH�����݂��c\Z9>(hVDۈ5��{����A���7�t�	\0\0��\0PK\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���JA���a�}7�\n\"���H�w\"����w̤ھ�� �P�^����O֛���;�<�aYՠ؛`G�kxm��PY�[��g\rGΰino�/<���<�1��ⳆA$>\"f3��\\�ȾT��I	S����������W����Y\rig�@��X6_�]7\Z~\nf��ˉ�ao�.b*lI�r�j)�,\Zl0�%��b�\n6�i���D�_���,	�	���|u�Z^t٢yǯ;!Y,}{�C��/h>\0\0��\0PK\0\0\0\0\0!\0|;�9\"\0\0�\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO�0��&�һV]�ٲ5٫���-Sh��t����\nʢ.Mf����I�Z��U�����q�\"�����=loO.Y�$m.+gA������T��!,M�QH�(XI�\\q���Zb�\Z�aG;_K\n�/x#Փ,�/�d�}?�e��h��7�)��m�g;���k��k�4��D�f2�/��w�������Bm�w�4������A�^�#�࣡�FkP���ܚ�Hx�����ȽAt�~9\'���ozW�nM���t���V�WkJ�lN�W���z���^�>\\�\0\0��\0PK\0\0\0\0\0!\0a�@ \0\0�\0\0\0\0\0word/document.xml�W�n7}/�쳭�+_ X\n�81ĭP��cA�v	�Ii�<����˗���+ّ��I��.˙ù��._�Q��a�V�d�$�*ՙT�$���7�	9/T&J�x�l�%/��wY�3��+V�\0�ܸ6�$)�7�~ߥW��*�Z����R]��r)S���f���p��Sv��j#\\��U�hڰ�^Km+�]Oۼ_	�Z�c���B��o�=8�`�$Y[5n:�\\�M@�G�a�x`���@ܱo�DZ�B�}\Z_���.��cIl�����pt��.�����5Z�<�{�Y�T�MB�]�q8x,��#b��p�.�JH������-.N������مc�ס�U�V8�O�lpO���ܓ\0�������\\i+%\"��#\n�L���ζ��P=��d?O��`t=:=9O�G׼��7+�W�/��\rn~:/eƤ�gw��;��n\0�����K�hc9����[nmqZ���s��͠P�v��b����>�@�\"��N���q���3\"E?�e�v����Q�?�U�䘏h��O3��I�l�A����(�\n�\n��X7&_����%��\nS�G�n���Q�Qu!K�{+ҕ�du�-|!<�H2(�VdJ��0�h�l\\��\nFֱVx1Ő�8c��hң\\>��y��ʇ��F��YX}��]�C�&ԙΥJ�0�I�(zZ�� ����^��\\ 2�p�M�L�$����t����HM�C�����H\0��۸\r�@0W�a�amJ��eZ0F~@�4~��EޒƋHM�%.��Dio�q;\"/+���9���������}��իp5�{��2�\n�U��I��F�ġJ�\nv��Q�β��BW�����y�JD�\r�` T{�[��<[��IF~nI���D���d�O\Z��x��3�UB�A��G��kR3@�B���^����I�}�r���O�����hc�����(�����|o�^~+����G���y��;�D���^W�咗wV�(���$\Z/5f2FR�3_�x�	�l��â!�&F��7V(�L�Q�pW1���j.x��ݘ�\r\0\0��\0PK\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0word/theme/theme1.xml�YOo�6��w toc\'v\Zu�ر�-M�n�i���P�@�I}��úa��m�a[�إ�4�:lЯ�GR��X^�6؊�>$���������!)O�^�r�C$�y@�����/�yH*��񄴽)�޵��߻��UDb�`}\"�qۋ�Jח���X^�)I`n�E���p)���li�V[]�1M<����\Z��O�P��6r�=���z�gb�Ig��u��S�eb���O������R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j�����zA�\0�V�2�F���i�@�q�v�֬5\\|��ʜ̭N��le�X�ds���jcs����7����f����\r��W���+�Ն�7����`���g�Ș��J�\Z��j|��h(�K��D-����\0\rdX��iJ�؇(��x$(��:��;�˹!�I_�T��S1�������?E��?������?ZBΪm���U/������?�~����xY����\'���y5�g&΋/����ɋ�>���G�M�Ge���D�����3Vq%\'#q�����$�8��K�����)f�w9:ĵ��\nx}r�x����w���r�:\\TZaG�*�y8I�j�bR��c|XŻ�ǿ�I\nu3KG�nD1�NIB�s���\n��R��u���K>V�.EL+M2�#\'�f��i~�V��vl�{u8��z��H�\n�*���:�(W�☕\r~��J��T�e\\O*�tHG��HY��\0}KN��P�*ݾ˦���TѼ�9/#��A7�qZ��$*c?���qU��n��w�N��%��O��i�4=3��N���)cbJ\ru�V�4����(Tn���\n7��_?���m-ٛ�{U����B�w�<w���_���$�#��[Ի���8{���(�/�$Ϫ0h݋�F۴��®{L�)#7�i�%�=A�:s�$�),��Qg20pp��f\r\\}DU4�p\nM{��DB��%J��â������+{�l�C���]��=��5\n2F��hsF+��Y��\\Ɉ�n�ì��:3���E�[��6�9����`��&45Z!��*��5k8�`Fmw��-��\"�d>�z���n���ʜ\"Z��x��J�Z��p;����\Z���{/�<�P;��,)\'\'K�Q�k5���q���pN��8�K�Gb�e���\r�S��d�̛�\\17	�p�a�>��SR!���\r\r3��\0K4\'+�r�zQ\nTT��I����Ivt]K�c⫲�K#�v�5+�|��D�\Z�����~��O@%\\w���_�nN[�L��9K����q��g�V�h��n\nR!�y+��U�n�;�*&�/H�r��T��	�>��>\\\r�t��=.Tġ\n���\ZS; Z�~�!������P��9gi���C�ڧ!�#	B��,��;�X=ۻ,I�2UW�V�9$l�k���=A��j���;�{�A�P79�|s*Y�����;�̠�[�MC�ۿ�hf��]o��{oY=1k�\ZyV\0��V����5E8�Vk+֜���\\8���0X4D)�!!��?*|f�v�\ru����\"�x��A�@T_������q��6�4)kڬu�V�7��t�\'��%;���i�9s�9�x���,��ڎ-45x�d���8?�ǘ�d�/Y|t��&LIL�J`�& �-G�t�/\0\0\0��\0PK\0\0\0\0\0!\0�-w�\0\0S\n\0\0\0\0\0word/settings.xml�V�n�8}_`����:�/���Hx��N�*�\0J�DxHʊ��;$�(���h�\'�s93���ӳ��\rhÔ�%��,��er5K�ód`,��p%a�l�$�.����\rX�ff��䢚%kk�<MM�Ȃ�A�r�� �z�\n���zX)Q�Jƙݦ�,;I:5K\Z-�b(X��QK�\\r�\\�\n�O��?7x^�� ���j����f�j�į�a��������ѮeYv�J���I�9�ZU`6H�P� L����{@/G}�G��ة�B�Q�W}����v��7Vj�C�q\0\\��oVRiRr�v4M.p�~(%m^���I8���$u\n%�bk,����x��[�D���לq\Z�7s�̳Q��y����}��Dᴷ9F�yhs#\rf��@ܝر�\r���J��iǎ2\r�\rY�s\'�72&���\'��4������]U� .�Pq ���9YUO���h�{[qg+�|a�D8�,4�4�b�!cNǝ�Zc=�5���+l�V<�Qu��ҁ�i\r��\\�êD�ϒ ��c�(�.6��M�������Y:H!1jF����M_�~���_q�ґ�����@�6�!�>lk��\r�\n�;1�^0�������Kc];�&.�+ec�lz}zy�9��3{���Ok��9�\ZeדC>g����K��̺|D��^_���k�@��\"�Ԍ���K�~��dԗ����M��aP�44�[�j��2S_����ѫ����x㾾`9���VM����y1�h:��ߘ�rӔE���ЯT��w�\0��x���Î|�(D�b�@g���p�?,H]�eG�r5�%���ֳ��ş\0�)W�N7vCmq�t~C*WZwg�h�-z�$�&���`7�e�Qv��N�B�|�7Ms&��N��ɗ�s����dO�_�Y�NU>%��_ FfMj��;��۠r/�X�69<���Y����;�8�Κ��j쎭�9�zG:��G���;���ɥ�)T��؊���Pg�P#�[��D<��������\0\0��\0PK\0\0\0\0\0!\0\re�h�\0\0l\0\0\0\0\0word/webSettings.xml�UMO�0�#���Yک�JE�4�!$�������Q���_�׎1>�7Nul�W;/N.._��V�y	� I/&�0*i�y�M�2��L�Q����r|zr��(E��#d1>׼ �lN������58�.ݜj林����,�R*ִ�C��q��@]K.��/�0��S\'2��i�;[s[�����Ѫ��L�M�~#Ғ;�P�6C���\n�I�ZZ�H��fn��R�6IJƸ}�\\��7jrY$\r��4N�6^B���+���Bi�d��݊:�{��A�?�g`��N �_�XϤr���A�	&�ׂ��@�2�M�6�[��P{��,?Ut��w~��\"�Mw�g9�,d�$���zs\n�J�~��F�d;?��q�T��ݜ��� �|Sp�����R���]���ވ�\0\0\0��\0PK\0\0\0\0\0!\0��C\0\0�+\0\0\Z\0\0\0word/stylesWithEffects.xml��]S�:�����_�s��&m�i�B?�i)m`z��\n�`[>�B����d[q����\\A���jߵc����i�Q!����p4�x̲�yx}���uHE��$<����������z��I��P\0 ��m�õR�l0�њ�D�,\\�:�x:���`�E<GC�_.xD���NIvGdX�RL�9�`�)Q򐋛AJ��&?\0zN[���`\'��Í�f�C�!m2+*�T��e���G��f��84x&�,�-�4X�r�ε��4��m��1��.���	�����%qa�&E���v�I\r]�)wD#�}\\؟��$%,�����\\��s�����ܺ����γ[�Ҳ��l81ʫ/Mz�tk��0H���M�Y&��vt��A��ytFWd�(�?�KQ~,?�?�x�d��1�K��\\�m�vr;�D��H��L��E��&m��LHv�;��C�\\/�\'���,2��f���Jr��bTc�P �\\,��	A���<���B��J��x}~)P�v�4e_XS(�v\\�f1���ٵ�����O�D�\"���<O�f\'��h�KL��f��PG���*ۑ^(D�m��}F�cm!kk1�Mc!�ܣ����q���\"�.^��7�#�?L�b*���Su��R�(��ͼ\'�c���d���Ӡ�\Z�?���_m�a���捣~\\&$�k��TW�^ic\\��.x��Id�[���_G����\n�>��Zs-��c-��W&�*�!��Jha�Y0x��wz2v����l�V�xoΣ�Ʀ�?n��2����x���:J-sN{Z�9_��4w�����~�m�0u��)O�Xm�jO��0ue�5n�֕Hֲ-��,ړJpE�HӲ;�5�4�m�Z�N<����7U�Mq�AwSz���Oz�����Q��K\"ȍ 9��ܯJG�I����\rW�VW��ܑ{ٟg�,i��92��8���u96�w�ޜޕ�ѻ$u#zզNs�\"�Mq����%]�c�R�E�{B\'�%�����~�ۻ���wE�QyF�v`�+\r���x�/�pկV�b��P1�[��-T��*2�P1ŕ�Veu�b�+E-�.T�p�g�P�#��P��+X�����ĬP1���\nS����B�o�b��P1�[��%Td�$�b�+?���B�W�ZD]����V�����`�_�սۻ����]QhH�\nS\\�hP�P1�[��-T��*Fx#���^BE�O*���Ӫ�.T�p��Eԅ���l�y��b{W �P��+\n\r�Y�b�+\r�*�x#����B�o�b��P1�K���IB�W~Z�Յ�����P1��B5g;�*�wۻ�А�*��ѠX�b��P1�[��-T��*Fx#���̟$TLq�UY]��JQ��#\\����\Zԏ��\n����B��f�N��+*����w��Qջ�n��M��}��o{�Yӑ���	���ãﻏ̱5�.��l��~\Z|)�����txs��h�w~�\n�:�C�y��;t��>��3�f�sh�([4����\0[ӵR^6+*g5�C����w5p\\H��T����Z��Ÿ�����`���u�Wv����c\ZN�ޖ�;*0Ìǻ���+�aw8�t���+��3��R�b��S��au��^�����I���yÒ�e?N���=)&��Oi�|#f�ϻ�&t��oGC�8�@-�R<����x���֝)>�Et�;ۤK*�#�ĸ�B�T�S{s�c��F�۷=Q�|��:Z�=Pe7��jI����BR�N\r���+&������gӓW�͇~1���}�,)��BE\r�9W��d��,��U��@�v������.D����\0\0\0��\0PK\0\0\0\0\0!\0�l_c}\0\0�\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��Mo�0�����KZ���\"\r�iH�ƴi�,1��&Q(��K[(T�[l�yl�I:9\"؃�\\�Ń �b\\�3����cXG$#BI�PM�ۛ��*�Fi0��\r<Iڄ�m��	Ɩn� v��W���Ь�&tKր�Q�p�Gp\ruGDG$�R�h\0�bP�tǃ��La�^h*ʂ�J����^�m���`y\',�rP��1��1�\\��5��\\�^Q@y�h����|�\'�����t�5@�2�(N��������bm��Rf=�yK\r��?f۠��jA�[��]q`�Օ^5uK{^��<nzv�߲1�X�mJZSO���t���|ţ0\Z���2~L�I}ի��׶���8���w}�	к����/\0\0\0��\0PK\0\0\0\0\0!\0�^3�\0\0)\0\0\0\0\0word/styles.xml���s�8��o�����J~�4�!0���3P\ni�g�V\r����׳Z;��U�Ч6����j�k��Wo��$��%d6Gφa��H�\"[��ۛ�G/�@i��,����\\�o^��׫�T����\0\0����,\\k�O�y��3���\\�\"e\Z>�Aʊ��(�iδX�D���x8<\r+Lч\"�K�mR�i�<���Z�jG���me煌�R��4)y)�ŌN(Q!�\\�g��A�����|4���$�hz��d�	o;:	_C�b]�%�$Z���uQ}�>��2�*�N�����7\"�`_�m�U�|�N9S�L	����,S�f��3e²`�d���v~8���1�Yq4?�p�+����$��*G5�\r�7/��e���s\r_�B�D�x{y]Y@���y*>�8搳v\\�1���٭��������ՅHn2=ǧ܉D���\"��ԁ�2���W�\06o;�g;2��\r_sf���-��B�ւ�Mc!���\'�<��q��<I|\'OąZ�$����܈�`�0�F�f/��7�g���z�ߥ��)����U#��_�k�6b_�^�tԏ�E|-���\r��Ƙ���+�sAAj:ѿ�|���k�kM��б���P��zN]%�4��1�m����&�9Z��9��c->0>y��,�e��=-霧[�(��9�iI�|���*re�<�m�0q�ϹLd��$�=m��ĕEָuZW\"Y˶����@*�Y�#M��ּ�L��k�{�tۻ�TQ7��e�M魫n�K`_�a~͘�y|Ee_���\n���ix�OB��S_6R�]���1ޑ{�_f�x��9Ƈ�^�jp]���]��7�w%�F�.I݈^���ܫHuS\\��5���rL\\ʵ�\'t\"\\�m�_��W���+�~Q{W\Z�g��Jq�A����E���*T��*Ex�\"��J^B%�*���Ӫ�.T�p��EԅJ��l*}$�*�w�\n�ڻ�А�*��ѠX�R��P)�[��-T��*Ex�\"��J�%TJq�UY]��JQ���\"\\��*T|^�?�����Q{W �P��+\n\r�Y�R�+\r�*�x�\"��J�B�o�R��P)�K���QB�W~Z�ՅJ����P)��B�Wѿ!Tj�\n*�wE�!1+TJq�A�B�o�R��P)�[��-T��*Ex	��?J����O���P)�Q*E��U�x��B���@P�R{W\Z�B�W \Z+TJ�*Ex�\"��J�B�o�R��P����J)���*��\"\\)ju�R�+?͙\\��Y]�#���]�q�ìʩ�|�hm��]n��]l7��z�V��=��o�E\"$����}�1[���Ά��������a:n.���Sh�w~��\n�$���>�������BL��&��Y��;�\rclz6��V�˸�*��?t��<?w�U�T?�M�\r\Z��j�,��/Z�����ÿ�� �fl8�{[\r\n�\0�����عW��0�0�pT��#��7�{g$R�R�v���S�������I���eÒ�5�.�-��X9	|Γ����2���.�\r�q��ZH�e�m_�!7z���֝)?�Et�;ۤ^T\'��q%M�&�\0��x�c��F�۷Qa��e-�����Z0h��l���ԺS�d+�)8�� ��������r�_�V�/����A��!�J��l��*�TU�-A�v~j�@h����?��\0\0\0��\0PK\0\0\0\0\0!\0O*��\0\0�\0\0\0\0\0word/fontTable.xml��MO�0��+��|�vB�-)B,���a?�u�����m������_倣H��W3�������NzPζ��1RH+�Z�MK�gsR@�v͵��%{	�z�����t�(0�BcDK���R�4fn�/;�\rx�j��g��RZ�=�� ��?��u��[#mH��K���B�8�����ί�����~�+{�)�WFF	��ua���\\�V�^��3�F4��<_id7�5YL����ܠ�������p�n�cv\\��U�]�s����W��	�N��d8�,w�(�?�>���A���*�s@m�b+�|V�����-��פTXT^8)�����|RH�\\�T�g�Ju�<B���r����!	d�H��$�b�U�\0�`uT��B����_&��x��2�B����$`T\0��O����-7�o���|&>%1\r,�\0\0��\0PK\0\0\0\0\0!\0���(�\0\0�\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�RMo�0��|o�tY���!���>\n�iςL��dI�آ�������t\"ɧ�\'��{���l���UY�&�ַ��P}��R�L�����b�\\ܫ��)���,f�>o��(�I�M���+.{�4!��8M�Mc\r>�ڣ\'y]�7�	}��U�	�������fԗ��!�`��iB�s��Vu��BH������x�-f�9�R�������Ib��\r�-r�\Z��F[�~X�B\r�_G�8r�l��k�4��2��ֳ�w\nXX�mұ;��3��p�۫F�� /\0�B���֋G��$�Cq���\rh�������9M�~�C���h��opaƋ�n�a�7�X�ŖE�lּ���#�\\r�<�[��=�F���/�֛U�����כ���\0\0��\0PK-\0\0\0\0\0\0!\0	$���\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0|;�9\"\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0a�@ \0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B	\0\0word/document.xmlPK-\0\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\r\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0�-w�\0\0S\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0\re�h�\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0��C\0\0�+\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0word/stylesWithEffects.xmlPK-\0\0\0\0\0\0!\0�l_c}\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0�^3�\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�$\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0O*��\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�+\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0���(�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�-\0\0docProps/app.xmlPK\0\0\0\0\0\0	\0\0[0\0\0\0\0',2,6,NULL,NULL),(5,'DAP Survey.pdf','696505','application/pdf','%PDF-1.4\n1 0 obj\n<</Type /XObject\n/Subtype /Image\n/Name /JI1a\n/Width 1700\n/Height 2200\n/BitsPerComponent 8\n/ColorSpace /DeviceRGB\n/Filter /DCTDecode\n/Length 2 0 R\n>>\nstream\r\n����\0JFIF\0\0\0�\0�\0\0��\0KMBT_C450 Q63��\0C\0	\n	\n\n\n\r\r$\Z+&-,*&))/5D:/2@3));Q<@FILML.9TZSJYDKLI��\0C\r\r\r##I1)1IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII��\0��\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�Z(��r����QQl�\0i�:6S��{Aؖ��g���6�ߝ�bZ*-��q��v�\0�h��bJ*=��\Z6��=�X���o�F���#G�AbJ*=��΍��7�G�QQyc9����������bZ* �w?�(Lw?��,IEG��Ѱg��G�QQ���h�����bJ*=�ނ����$���{Ѵ{��EG�{ҕ�s���L�=�����E3h�y�Z\\�a�S03��;�9���c���4{DE4}h�>tE74���QM�>�����3�ѓO� ��)�>�~4{DE7>�f��Aa�S\Z3�G�Aa�SsE��QM�i?\Z=���KG�Aa�Si0\r�a�S)h�����R�)�QL \Z\\Q�E6�9�è��G8Xu�)s��QM��>p��)��������G8Xu�)��)�Q�E6������,>�aɢ�hE6��hE2�9����G���I�|�a�S08����E3�->p��)��KG8Xu�ƒ�h������΂è��4�#�/h���~4����Xu���m�4{D$���sF=����Lǹ��h���c�ь���hE3`{����b��ގp��)�EG��,>�f��I�{��ĔS0=�6�z=�X���h��h����(���iJ��G����=M\0�����bJ*=���tl�����AbJ*0�t\'�o�����bJ*0��#AS��G�QQ��\0xу��G�AbJ*=��q��Əh�ĔT`�\Z\\{�=������&?�4{D$��ǹ�ǹ�� ��*2��#�Ѵ��t{@�%P;�΍���t{@�%��F��G�QQ�_zB�GΏh$�����y��v�Ώh$��1�����v�z=�X���h��h�����bJ*=�ނ����t{@�%P{�6��=�X������*=O�G�QQԎ��`�2:^�,IEDbS�?�R��t��X������������(������1)�����bJ3Q�K�����)����Q���_C���/����Q���\\c�Ώ)}�G�f��~Zg��G�����,KI�Q�k�@�=�G�dzёQ�k���寥�,I��FG�G寥ZzQ�ęf��})<����,I�FG�0ƾ��\'�����,I�3Q��t�Z�Q�ę�dT^Rz~��R�~�{@�&G���H{Η�Lc��,I��Fj/%=�\0:<������bZZ��L����������L*{�Ώ%}O�G�QP�K�:A\n��oΏh\'�������������Ե\\���s~t�?�ߝ���j�ٗ���԰F#M��3ޚ�݂ĔQEX��zө��EM��V#�(��(��)(i)h����\0(��\0(��\0(��\0(��`QE\0QE\0QE\0QE\0QE\0QE\0QE \n(���ZJC\n(��\n(��QL�(�EPES\0��Zb�ZJ\0Z(��\n(��\n(��Q@Q@Q@Q@Q@Q@QH�(��(����\0(��\0(��\0(��`QE\0QE\0QE\0QE\0QE \n(����((��C\n(��\n(��\n(��\n(�����(\0��(\0��)�QE�(��\0(��\0))h��(�ER\0��)�QE�(��\0J(��\n(��QE(��\0(��\0(��\0(�����(��(��(�EPIKE ��J\0(��C\n(��\n(��\n(��BR�R�\0��(\0��)�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE�(��\0J(������\n(��(��zRS��U?�LZ(���֝M=j*l4%-%�-�\0QKI@R�R�Q@EPQE-\0%�PEPEPEPIKE\0QE\0QE\0QE\0QE\0��PQE-\0%QHaEPEPER\0��(\0��(\0��)�QE\0R�R���RP�IE\0-Q@Q@Q@Q@	KE\0QE\0��Q@Q@Q@%-%\0-��\0��Q@ ����)h)h��\n(��\n(����J\0Z(��\nJZJ\0(���Ģ�(\0��(\0��PEPEPEPEPESQKE\0��PIKE\0%-PIKE\0%-PIE-\0%��\0QE-\0%QHaEPEPEPEPEPEPKIE1�PIKE\0QE\0���\0QKE �(�aEPEPEPE�JZ(�EPEPEPIKE\0QE\0%�PQKE\0QE\0%-PEPIKE\0��PQKI@-PQE�QE\0QE\0QE \nU�IJ�*��Bc����SOZu4�����RQEb�IE\0��P�IE\0-Q@	E�\0�QE\0-�P�E%\0-Q@��\0QE\0QE\0QE\0QE\0QE%\0-Q@	ERQEjER��(�\0QE\Z�QE\0QE\0QE\0QE�\0ϽQF�QE\n(��@(��5\0�QOP\n(���QE0G�b�Z�(��z�3ER�aEQ�QF�\n(���QF�QE\0QE\0QE\n(��E%j�QE-@(�Q�QL�(��QF�\n(�jEb��Q�0)�EQ�Q@Q@QF�Q��P\nZN��!%-�))i(h����)(h��\0(����(��(���(�RQ@��������\0(��C\n(����)�(��\0Z))h\0��(\0��(\0����\n(����((����)h\0���\0)i(�����\n(��\n(��\n(��\n(��\n(��\n))h\0��(\0��(\0��(\0��(\0��()h���)h(��QE \n(��\n(��\n(��*���^�T�!1�QEt�)��:�z�O`AE��Ţ��\0ZJZJ\0Z(��\nJZJ\0)h��\nJZJ\0)h��\n(��\n(��\n(��\nJ)h\0��(\0��(\0��(\0��J\0ZJZ(\0�����(��QE\0QE\0QE\0QE\0QE\0QE\0QE\0��SQE\0�RQ@-PEPEPEPEPEPE�\0R�R�EPE�\0��Q@EPE%\0�QI@E�\0R�E\0%-%\0�QE\0��PEPIKI@E%-\0%Q@Ť��QE \n(��(�ES�RQ@-%-�(��(������JZ\0(��\0(��\0(��\0(��\0(�����(h���\n(��\n)i(h��\0JZ)(\0�����)(h��\0(��\0(�����(\0�����)(h��������J(h��\0(��\0(��\0(��\0(��`QE \n(��\n(��\n(��QH�(��(��)(\0��)\0QE-0\n(��\nJZJ\0(��C\n(��*���^�t�!1�QEt)��:�z�O`AEV#��(\0������(\0��(\0��(\0��(\0��()i)h\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0����0���\0J(��\n(��\n(��\n(���(\0��(\0��)�QE\0QE\0QE\0QE-�(�����	KIK@	KIE\0QE �E\\aEPEPE-%\0QE\0QE\0QE\0QE\0QE\0袊\0(������;�QE(���\\aEP ��(QE\0QE-�(�aEPEPER@R�U)i)h@QE\0QE\0%�PEPEPR�E\0QE\0��PEPEPEPIKE\0%-�\0�QE\0%-PIKE\0QE\0QE\0QE\0QE\0��PEPHii(h��\0(��\0(��\0(��\0(��\0(��`QE \n(��Q@QH�(��(��(��(��(����\0(����(����\0))i(\0��)(��\0)W�%*����	���+�AM=i��֢{\n(��QE�(��\0(��\0(��\0(��\0(��\0(������G�+O�Gsq�۲G����\"��ys���f��m��P����J�G���·�z��T�\0�����g��P����NC5�9��;G���¶�?��S�\0�����\"i�R!�N?�$����\Zx~�mF�ۜ��I����ᯇ��ml�q���H��^���vW\"�4�Q��\0�n?<�\0�L_�^\Z,f;�Pۈ7\r��?�T��v4W\"�4)���p@�ϧ~���y��\Z�O��>G�h��YErG�ބc��}�t��\0\n�����\0?Z���˸�ǯÍX2�j���E���)��>ӑ���u��rI�9���{���h�=�ٓƿ��\0���5 �2��(�(�\0��\0�Ɠ�@:�+��\0����o��\0�i�	�\0����\0�0�\0�hIu���[�����O�\0��Ə�B?�j�?�?�\Z,�����+�\0O�M^\'�\0���\0cG�!?�5x��\0��]��h�[�����O�\0��\0�����\0�����\0�hӸM�[�����O�\0��\0�����\0�����\0�h��SEr����\0�����4��\0SW��\0�a�\0��h����o�B?�j�?��\0�4��$N�_��$`�A�?��&�f(�5�G���-�k�tk��QL?\r�v$���I$��<�V�p;\nZ��?\r��T����i.\':P>�T�9��w�\0\Z-�v��K������5�3��3��ԫ���J0t�c�n%�\0�t�b�W)�\0\n��?�\n?�/�\0G�+�\0�$�\0�D��UB:�R�_�V��\0�O�LK�\0�Q�\0\n��?��\0ɉ��v�U��\0¸���?�b_�*��W�\0�G�LK�\0�S�@��r��<!�\0@�����\0���Ǆ?��\0��\0�T{�uX��_�W�\0�G�LK�\0�Q�\0\n��?��\0ɉ��4���_�W�\0�G�LK�\0�R·����b_�*��utb�O�V��\0�O�LK�\0�Q�\0\n��?�	�\0ɉ��W�]�S�����\"_�*��5��\0�cs�\0~_z���^)k�?\r�$s�\0��\0��x�\0ǩ���)�o�%������x��}��>�<�>�w�\0\ZV�e�Br,�_a;�\0�?tGaEq��|+�\0>��\0���\0\ZF�e��V;���7 ����֋G��%r\r��D,H�Ԕ�]?Jk�4НJ�Ƥ�z���?��p;,Rb�����a\Z0��6(.3�^��/�+\n�\0Ϥ�\0���Ɔ������\0±���O�\0��h�\0�c�\\�\0ǜ����Ɨ��Ɠ��~,O�e\0��w�����o	(����ğѩ>Q��qErc᷄�����h���z������\"_�*��:�Q\\��+�\0�\'�\0&%�\0⩿�|%�w�k���h��i�[Er2|4𛏗Nt�\0v�O�h�ោ��i�??�q\'�4h]Erោ�\'�ap�\0�R���\n\'��%�\0⨺����S�����\"_�*��V��\0�I�\0����WB:�+��\0�o�����\0��o��#�-���_�*���f(�ri���J0t�osq\'�j᷄��Ka����\0��@:�+�\r�$�����8�\0Ǩ�\0�m�.�V�s�\0�\0�T]�Q\\{�2��W�N�\0��±���M�\0��i��v4W~�T��a�\0m��h�\0�c�_�����\0��ӴDv4W�\0\n�¿��?��\0o��\0�c�N?������?���)+�_�^&�V硝�\0Ɵ�\0\n��Y\'�1��h���z�����?�[�G��G�\0%�\0��\0�o�����\0��t#��-r���#�\0@��\0��\0�T¸����b_�*��W�i+��\0�q���\0�Ŀ�U��#�\0@�����\0������_�W�\0�G�LK�\0�Q�\0\n����\0ɉ���t�W+�\0\n����\0ɉ��?�\\xC���1/�\0G�UEr��<!�\0@�����\0���Ǆ?��\0��\0�T��:�+��\0�q���Ŀ�U�<!�\0@�����\0������_�W�\0�G�LK�\0�Q�\0\n����\0ɉ��z�RW-�\0\n����\0ɉ��?�\\xC���1/�\0K@:�+��\0�q���Ŀ�U\'�+�\0�\'�\0&%�\0�����?�[�G��?�1/�\0K�\0\n����\0ɉ��4���_�W�\0�G�LK�\0�Q�\0\n��?��\0ɉ��z�Q\\��+���A?�1/�\0G�+�\0�$�\0�D��U+�:�+��\0�q��\0�\'�\0&%�\0�?�[�G��\'�\0%�\0⨺���C���\'�aD}.%�\0��\0�o�����\0��tWEr���#�\0@��\0��\0�T·�����K�\0�QtWEq�\0�)���_���\0�G�+/\nl#�R��\0���W��gaEr�᷄y�\0�Q?��/����#�\0@��\0��\0�U7B:�+�?\r�\"G����\\K�\0�Q�\0\n��?�\n?�/�\0N����?�[�G��\'�\0%�\0��\\xC��?�1/�\0B�U��\0¸���?�b_�*��W�\0�G�LK�\0�S�@�+��\0�o���\0�Ŀ�U��#�\0@�����\0���U��\0¸���?�b_�*��W�\0�O�LK�\0�Q�U��\0·����b_�*��W�\0�G�LK�\0�S�����[�G��?�1/�\0G�+�\0�\'�\0&%�\0������\\xG��?�1/�\0I�\0\n��?�	�\0ɉ��Z��\\��+o�?�g�����?�[�G��G�\0%�\0�]��\\��+�\0�$�\0�D��U��#�\0@��\0��\0�T]��\\��+�\0�$�\0�D��U(�o���\0�Ŀ�U=\0ꨮW�Ǆ��\0��\0�T¸���?�b_�*��UEr��<!�\0@�����\0���Ǆ��\0��\0�T{�uTW+�\0\n��?��\0ɉ��?�\\xC���1/�\0F�uTW+�\0\n��?�	�\0ɉ��?�[�G��?�1/�\0F�uTW+�\0\n��?��\0ɉ��?�\\xG��?�1/�\0F�uTW+�\0\n��?��\0ɉ��?�\\xG���1/�\0F�uTW+�\0\n����\0ɉ��?�\\xG���1/�\0F�uTW+�\0\n��?�	�\0ɉ��?�\\xG���1/�\0K@:�+��\0�q���Ŀ�U\'�+�\0�\'�\0&%�\0�v���_�W�\0�O�LK�\0�Q�\0\n��?�	�\0ɉ��z�Q\\��+�\0�$�\0�D��U᷄O����\0����W@utW ~�S$��N�>��~���k�&R��Oqq&G��h;eǏ�^��)�\0���4���¬8��y�;SO@���L�5��3�*�8����DQE\0QI@E�\0����\0�RQ@QHaER\0�^���Ү��&:�(��4��SOZ��(���aER\0��(\0��(\0��(\0��(\0��(\0��(\0������������\n(����J\0)i)h)h��\n(��\n(���ފ)ZJZ)�J(��(��(��(��QE\0R�S\0��:Rh��� �����(�0��(\0����!(��C\n(=(���Q@Q@Q@Q@��P��k_�\Z�ט����h�k��>�CZzċ7���V��t���̄�}xs��𬯃��h�W��G����ū(�|\rqp�絖9��G�Ƶv��v%�\rŀ�4�d}|���̼A+����s�D\0����T־�m-��I�Y	`�:��I�n>��\\�G���+�D������g�5-p:���y��á7�L�к�dː�9���ǯ�kxC]�_�6�����ڲ�3���� ��ୠ\"�[���x����>O��\'�m�\0��/��W�xoNg�]�=^�.�$�p9�88����gF�yq��9���c6��m��]��P��1���r��8;X\ZPC����zG�m4^O��or��2L\\!�A=0�_��Y�\0cd�l�Hė��� ���4���K<0�͚8�\r�O�e��U}����X�a��f!T�dW!�?�Ή������������c�c�E\n:]���FGJ��[�e3�N�2\ry��m/��$á�O;�\Z�-$Q�ĬO�x=	����9�S�<1��?|Io�Y�����k(�$�A�~�J.z����Vq�1� I|��5������W�]�6����[�~i�]�[�7wɜG�2y��G��_n�%��qie�l��7�?*\\�t�KH�;����љT(3�`c�5�x���������]fh�\nN����n���8�|U/D�����\'ʢK��<��t���ݔq�)����r��q�+���y/����xb�ɬ����ޘ��>P�;Wg�+�V�߿�d�V�2�l�2�8�����\\��)�t2��	Fg�τ\\s4bb��{��=q��\rui<7,W7��J�$��a�O��0�x�?ݮ�XU_�z\0�LO��0�ɨ\\��lKqT�a�pGP}�[�f�c|�P�\'p+��߃�?o��_YK�sfo3�~�d�8�I�;��~�W�J�5e�ɼ0�p$i��ʆ�3��.Uk�ْ�H\0rI�V������N�i��r��W�H�7\0(`rOo�`��*�Ò��5�\\����ݱ�����?ޣ���\0r�\nXn=y��<�Lc��_I��B�\0�^�S(����ɦiw��nq�h\'�J�\\ŭBC�Y�~Ԇ���PS�A�m���*�~����U���Nry|l%�r���\Z��|ca�5�\r�VP��i���ǩR��W��2����^f�w���[i+�^qU(�T�\\��\"�$��V`	�\n��o��^��lk�`j򳴲\\\\<{rN\n�B�0y��>»�������ms�C�[ͣG�1�{t�p9�� :	�m�ʉ�\"��\0;���R�AR=���:�N�/y����a!�ic\0�� s�������C����W��E�;��F.���p	�C�@t�\0k��i� �~q�E9. �SOH���=q�^I�7��]�_�=�K�Kp��������oH�,�7i�������#�7�>bz�֎T��R���2]��z #�Ӣ���SWH�nڮ	Ǯ+�>#�Wþ�-��²=�F�\\9%p�G$�v�w\Z?��?�_�;O�*��z��E+-�מ��݂�sE��.:�J��R=�^1�U��ڀ�۫��n�\02���ֻ�v]��kf+��&��xF� �$p28<�Ol7��a^ki�#^���-�,�F���-ݘ�q���^�^C�_��u�]�	�s娍�[��GZ#�z��e�����\\r��-��UN�O�wS��[2,��d��#�ݎ��Z�_���7��t��dX�B��1�:��V���;c�xF���@dhev}��b���>T��yi;m���$��5y��<9�\r������&%��C\'��� ��\0��Z�s��ZG��;�eq�\\ �9X��1;[�s�d^i8��}go �{�\"s�^@����� ��@�s�ɣ�\\궳]^�F������a�>R;����2xG�W�#�O4�f��]�\"o���;g#9���t��P��F�K�tu8eiT}�h��,ng0[�[�*��8�V`=pNG�^]�᫏��\"�_{d�\\<b{�$nN0Fz����oE�D:�����K�u\'1]4�A\'����qH�����I����g��J���ތC��Ԑ��Z	c�A�J0 N+����\0�O��\n��\0�-I�R5��gs]�<��~&��Q��d��I]c�Y���M@5\0��bB%_��\0\ZF%�^��Cb�F����\\��߇sxv�MU�E�G��ݺ���\0���p][\\��=�R�ἷ\r�늖��Y�V�.��Ɉ�eI�J���>�>��ֺ*�+=\0(����Q@Q@Q@-SQE\0QE\0��Q@%P0��)\0QE-1Q@Q@Q@	KIE\0QE \n(���Q@Q@R�`��)�(��\0J(��QL�ZJ\0)i)h@%QHaESh��QE\0QI@EPEPE%-\0���\0QE�QE \nU�IJ�*��Bc����SOZu4������(��QE \n(��\n(��\n(��\n(��\n(��\n(��RP�QK@Q@RP�E%\0-Q@Q@QL�(�����EPEPE�\0�RR�QE\0�RQ@-%-\0%-%\0�QI@EPEPEPEPR�E\0QE0\n(��Q@Q@Q@袘K��_�4y5���0�e�Y��nAzՏ�^0ӵ�%4-Ion.fP�\\l���N:q�Z�ǅ�:����6��Z��4�:C%��il�0ZU	P*����}=to�P���\"\'=_v[�j�?_M��O���JXb\r�9�pI��]}cg���ְ�Ÿ6�P0��pk:O	xnF�v\0�����\n9���6��Zã=��P�[v�z��~s���\"��.4Q�x�&��3j��9R\'�Dc�b�t�*�����[DX�H�\0����)���\\����N���J���R�B	zЦ�#�v�i\rol�����Kq�.�~���������E4��\0`}��ľx�~r~��s]�մ��[]B�C ���!�ҳ�\0����\0t����)s+�s��t{��9lFiV�*���y��a��ڹo�zΑ��<Cy����n���T`8�H����I�,��;M:��\'eX�Tx`=O_Z����Q�i�ڡ?ʚ�/������ڽ��y�Ѫ����Hp8�s��؞�K�^/�d𥕵ޥoksi�㸔\'��[�N��X�v�����f7�*n�L�s��uWP�օ���y��K#���P�݇?�V�j^E���W\Zr��~��n\0���#��봑��Q�д�|K�%��gU�ɗn*�\\�W����������hA�Ȑ(ϯ��MM��n/�������l��-��g��y4��X�м�h7scb>ҫ�O#�a���\0�\0�j���\0�>$��0��K������N\rzW���=BK���n�P�8@�v\'�a�AS�p<����Z����[��x~�`�{3��)����f?\n�G;|;��l�%Mz-����M4֖6�I9̯aK�H�M��t�+)l��mⶔ���}�r:�>�*��X�<�\0w�\"�ڧC�n��>��y�|�;���4��,wv�$�bmC$�ЧO��@��R���:�hZn\0�6��X��4�&��4�8��O*]��p97L=�}�G�?�\Z��;��������ϯ�\"��1�j7�4�}U@�Ӣ���$�ؒ�I�y�߭z֛���V��O�����F��RO�ڏ��;�G�C��m�\0��)|Θ���N>����7�V�-T�\0yj9�\0}j�\0�?�Pѿ����z���P������Q���A�\0\'�|�oo�1�E�DQ¨\0~��`<�ɬx��=>�ɣ��3w����Hۜ�C�1�*��$�<Y�6�J��,w�1 ������W���^������Aj����P��j\Zu��m�{�Xnb$�;�~O�O�\\�w���V����0����34��9��]�x�ë�]�z㋤?֦���{�/�:U��R��-Ѷ(�#�=*�_д�x�A��I��^D��x��E�Ν�-�:z���Wy\n���Ŏ}���z\Z���\Zn���}����n1F�:d��M(��p��\0��A�N.�W%�3$2[��t��?�X��\'���ȷ�O�DTDŎ�\0����=�����5N�J�t�v���mY��\n�a�G?p8�\r[�*Ѿ٬å[޸�\0HIXG&��7A<��U������L��t�.��s��8o�q�#��9����:���}\Z��,]���bNI<s�օ���$��(0�ơU~�t�����+��O��v���$[����Wln���?�����[�@gmm�dS�����\0��>���o{���v��I��f9i\Z����?�]�����ɲ���,��a>���@��>\r���u��?����Mv�ĩ\'������A�����E����S\'+j���}?��U��ׇً6���NI6��J��D�,n�zU���`I\r�#���`q�\ZO�R6�����\0@���\Zab�nI�d��3c���2�O�ԠXo�!��X8I�0:���Xt�Lg�h�#��e>%�ҭuأ����U��lg<}*���?���xx�te��e��~W\'�;�Omخ��\0ú&�rn/4�I�?zG�n\0��<֮Y�ZXA��Z�ms��.}p*��A+�~�;�{�)5����޻�1*Y�׷OνF�X�Zn���\Z}��8�!T-����m\0����б����Lq���^�R8g�� �C�%�,�OK��y�F��6WsC5͝���wD�F�ўT���t������ψ��a���al��@n-�=�Ȥ�	R{=s����j/���ޖ<�c+p!O��\0C\'��1�:���9�x�E�7R��2��⢲����0��Akm� �\"��8��W>�s��u��yn�mn\"�$�L�m�\0$x���>�t<]�Tkv����)f*G�H`8<�]��{f�k�E�����,&��ZI-�����j�Z��[C1\'jW��;Ь��W⧈㼵�� �C�#\n�s�lWwa��Zl�=��km+��hbT$zp*X4�{�n೷��o��$J��\0RMX��p<�ᑏ�?`�.�ݻ�7��\Z���\Z6��k��J$k�q�Pg��I�����ym���K��3�S!�#����5O���L�\0�H�\0e��{_ҵ�k�\0ٺ�S�Β8�*q׮zu�X��0�ԣ�E�B%��B���3]�:&�A�c3�%�-�,�t�\0��P�\0�3���\0��	�SRH�={Ṛ{}�F�<�j�G=\0g�mUK/NӋ�[S&7��n�L�s�ժ��@�JZ@RQE�Z(���-��\0QE\0QE\0QE%\0�RP�E%\0-Q@RP�IE\0-RQp�JZ.EPE�\0�QI@E%\0QEZ(��\"\n(��\0��*\0(��\0(��\0(����JZ.EPEPE�\0�QE\0RR�E�\0�QE\0���\0��Q@QHaEPJ�))W�U?�LuQ]\ni�N����QE�(��(��(��(�IKE\0%-PEPEPEPEPQKE\0QE\0���\0�QE\0QE\0QE\0%��\0R�QH�(�0��)\0��QE�(��\0(����PEP0�����J)�)i(����\0Z)(���()h���������\0Z))h\0��J\0Z)(��(�0��(\0��(\0��9�\0���P��8,��M���᤹hb���v�u^��GFs[:>��떆�L�[��m$>��;B�n�����oC�<�Fq��D��\\���m��?ʶ�,���������[+]\'�Xʃ�m ����s��:Z���6:\r��uZ87�{�KrO��O�\\֏�x�ĖY���l�������d\0��<r;Uk_��\'[���,�F�.����>�q����.u� �6��ﳭ�J�ܒ!�˻�\0��ҵb�e�%P�]C\0�U�}A�c�q� �Ro���}kF	�),ʐ>q�H� �\0}�vjp�3�֔��Z����+V}6�n�t�L�U�8�>��^/�>y�5���Y��:�$��=ɬ��R\r+������c�����ZB>p�!A8��Ҡ�G�m|c���>����vO��ؑmmĳ>6�s����[�TW1�꺖���i��mV�yK-�\"5أss�ϥ2MG\\�����}e�[_�]�	�Xݾ�\0\n��q��@:�+��U�.��MSE�$����H�\\K;��\r�݂I\'���U� �T����Ũ���4�̋�i�#9�N@��Q\\V�����6��u՞���m#�\r�2�F_����=��&���]M��WT��~�4|���I9�ר���y����y�X�K���U$�Ki⺶���$GH�?�q�ݷ��z̺���D�j�a��f%�1#d���:����<���d��X��n�(0\'$�g҇>�������#$L�5څ�1�c���cK�]OM��-�-�PH��=�/8��+���\r��x|��GgT����k��~^��Z\Z������sN��n\r�����\"�W;D>m���ȧʚ���[]CY�|E�����\Z�Z���\\�D#��R��#�9ɪZ~��\rsV�7zm����%�2BY�U=�0A�\'�.P;z�׼A�xz�)�;�)%p��$�8�O��+Lg�q���~\"\\��A�:-��Q�A�a��q��B)E\\�	����xd�U��!���?\n}r��g]�E�p�z=�Z��� ��# {-Vү�O�q���_Zi�`���-�ƹE8��9^A=}�|�s����+ŗ��]sT�b�\ZeԖ�\\TfP��O,q�z���/�O���j�f�Hӄ�(\0?�wg8�g�9�����k+���ë�����Z��K���ܪ� g\0����>���[j����o{d!�\Z��� d�r8��\0���KS�촹,㻗c�N��,�ӏOqWJ��xy4���{����5�͸��Df\'j�@8��J)0=�ǬXɮˣ,�����i��qצy{��U���\0N��+��\ZL4�#;ObFF{f��K��~+�mhf`t��4���Q��`)� ;�)\ZHն�� g�\rgL:��P�h���6�iW��:���M�;K�,5g�K)���c����ۨ�|UMO�\Zf�|��]^ƂG����tSݰ0:��������+�6��i��2N�\\\02}����L���[�Q.b��6H�:)]�� �=�yŨ���4]gO�l�p&�qBpAVA�yz�߆�%Mj��1����4�/���c�����|{\Z��d��J)h�R�E\0%R�EPQKE\0%-PQKE;�KE)h��\0��Q@Q@Q@Q@%-\0��QE�J)h����\0(��\0JZ(��(�����\n)h��%�R�Ģ��b\n(��\0QE6E� -Q@QL���@%-Q`\n(��\n(��\n(��\n(��\n(������\nJZ((����)h(��C\n(��*���/J���QEt)��:�z�O`AEVC\n(��\n(��\n(��\n(��\n(��Q@QL�(�EQ`\nJZ(�QN�QE \n(��\0QE\0QEX�(�EPER�Q@��\0��RPE.(��%-&)h�QE�(��\0J(�����\0Z)7�Rn_�΀E&��(�@EPEPES\0��)\0RR�@Q@Q@QL���V`%�Q`�Z(�	E-Y��\r�\\I��Gg(��a�2�v�;�⧤�h���t�>_Y���D�7�Krc����a��\0r8��v�e.��MgVm:��O���\'O.I���{q�O^=��ij����D~�4�kxzh��b�B-�����1�q��b��Ek#|&X-|?.�-�ɋ(�H�K�[�rp8>�W���\r.f%��4��8��0�3��PP�Onq���w�^^Muq��y\ZIϔnbrNc�t��8���\'o�����	D+��\n����N��G��|{�_D��#�Cii����DHܬ\'�3��ih�\'��:���E�P��q��1�l�0v�m#>�v9l�nu�>\rxp^��\r=ח$ki��K0��!zc��D�Җ�0k���|Q�*�G9�H`v�(^@�c_��y�\r#��|z�!���->m������eT��\0��Z�Ӵ)�<e�kMp��q*��R�I�?_jܦ݀�|-���OH����WP��K\"D�l� �01�=}��fj\Ze��6�%��SC>�����fEF�6���u�6�0y�R��(�K�\nj���g*�\"嘔8\0w\'�U�=�^xGOU�x����&�����{�\0\\��KJ�r�9�IO��q��֭����\r�\'ڡ�d�F��\Z�Ŵ�i����I����XI�,03]i\0���`q3L�-�~�w�A;i�x���偣I	�UB�r9���hx)# 2FɿZ�e�1�|��Qֺj8�9i`!����su�<�DM\'��,��S���3�-/Q�#ԼEb����33�ɂ�6�\0q�F2	?A�pGlQ���J�&�E�=�\ZE���z���2�H꒮]Y�\'�8��ޓ�>\Z�>�ѵyE�äp�o�Hٷ+>��\\w=�lJ��ȴ�X��-��m=����^I ���#���W5��;�i����>.�H���Vy#ppQ��u�qDh0h`�Hڼ0��	�Y����H+��Ė>���sEMOx\r�\\�<�qq;�d����A�jo_��K�KT�,t��S�Ri�������[��`F䎜������\Z��\Z��=�2��2����ɿ�p��5w�����FG���\n�|s��?���yzͻ��\'j��\'�{�K�c�΂W$`s��������\\��6�-��b11��fާ��\0����+�\'����Nc��qOܹ�?:i�S�^��o���6�\\o:E�\0��t�,,���l��[»Q\'�y��1��Q�c9]���\Z�f��Ə�N�R7�G���g�S��Mo_MCL��������ݥY�go� �����z@e�֓̏�z/�O�P9oEwu�-w^�����\n��쐄R���ں�o�֧��)<���Ф��S|��H��X�YS����y���󦛈Y�V������>/��P.-�I��\0��+0%�����\0���\0�B�\\[����\0}�,�������\0=��\0��/���O��Qf�y��\0�D���#��_΀E3΋�z���(�c�\0����v�S<��\0��Ty���\\z�����?:7/���@���q���F�����ii�d��:]�z0���)�����ܿ��\0-������<��\0��t\0�)�H�Y���\0���\0}\n\0}�<?��?��Pf��T�\0��+0KL2�?���I��_΀E4I����#>b��@�����\0=���d�^}��)�b}:<��o_ΐ���?���\'���_΀E3�A�k��e�u��\0�Jh�3�E?�d��:5�S<��\0��B�͋�z���(����2?�蟝D=$S���)�l_��?�G�y��Lş���\0}\n<�IS���}�\"���D#!ԏcHQM.�d��ƐI�\"�ƀE3͏�z\'�K�!�5��ii����>�nSч�@����?:\\��\0(�񢁋EP ��h��(����\0(��\0JZ(����\0(���\n(��(���)���UO��(��4��SOZ��(���aEPEPEPEPER\0��(\0��(\\�����Gy��4�G���� ܟγ�᷄J�4�	Eļ���QN�P�6��R�A#���#�\0����s����D��UutR׸��+�\0�$�\0�D��Uῄ@�(�sq/?��ut�]��\r�\"�O����\0�������\"_�*��(��)�\0\n��?�	?�/�\0K�\0\n��?�	�\0ɉ��ꨢ�S�����\0��\0�T��<#�\0@�����\0��������+��#�\0&%�\0��\0�o���\0�Ŀ�Uu4Q����[�G���1/�\0G�+�\0�\'�\0&%�\0⫪���93���$������\0?��\0�R7�O	��]pr@���o�]m]��µ���_\0`��I����?�V�\0�I����v4Q����\n��s��w�\0\ZA�� ��Y�O��n+���3��\0�a�_�����\0���/�\n�\0����vɮʊ\\�;�����o����G�+\n�\0Ϥ�\0���ƻ\ZJ9��+\n�\0Ϥ�\0���Ə�V>��\0C�����cE�@�2�@�a��^{����^%���g���]}s08���>�)��7�_�~	��`;�����\0QG3�P|7��\0(�sq/�\0K�\0\n��?�	�\0ɉ����)]���\0�q���Ŀ�U�<#�\0@�����\0�����f#��\0�q���Ŀ�U/�+��\0�#�\0&%�\0⫩�����?�\\xG��?�1/�\0K�\0\n��?��\0ɉ��ꨢ�W�Ǆ?��\0��\0�T¸���?�b_�*��(�`r��<#�\0@�����\0���Ǆ��\0��\0�U�QG3��\0�q���Ŀ�U�<#�\0@�����\0����.���\\xG��?�1/�\0@�o���\0�Ŀ�UuTQv+�\0\n����\0ɉ��?�[�G���1/�\0]Us09_�W�\0�G�LK�\0�Q�\0\n��?��\0ɉ��ꨢ�W�Ǆ?��\0��\0�T¸���?�b_�*��(�`r���#�\0@�����\0�������\0��\0�U�RQ����\\xG���1/�\0G�+��#�\0&%�\0⫪��f+�\0\n��?��\0ɉ��?�\\xC���1/�\0]M-�W�����\0��\0�T���#�\0@��\0��\0�U��E���+��\0�#�\0&%�\0��\0�q���Ŀ�UuTQ����\\xC���1/�\0G�+��\0�#�\0&%�\0⫩������\0¸���?�b_�*��W�\0�G�LK�\0�WUIG3��\0�q���Ŀ�U�<#�\0@�����\0����9���+��\0�#�\0&%�\0��\0�q���Ŀ�Uu4Q����\\xC���1/�\0G�+�\0�\'�\0&%�\0⫩������\0¸���?�b_�*��W�\0�G�LK�\0�WUE�W�Ǆ��\0��\0�T¸���?�b_�*��J9���+��#�\0&%�\0��\0�q���Ŀ�Uu4Q����\\xC���1/�\0G�+��#�\0&%�\0⫪��f+�\0\n����\0ɉ��?�[�C���1/�\0]M-�W�Ǆ��\0��\0�T¸���?�b_�*��Z9���+�\0�\'�\0&%�\0��\0�q���Ŀ�UuTQ����[�G���1/�\0G�+��#�\0&%�\0⫩������\0·���?�b_�*��W�\0�G�LK�\0�WUIG3��\0�q���Ŀ�U\'�+�\0�#�\0&%�\0⫪���Q����\\xG���1/�\0G�+��#�\0&%�\0⫩�Q����\\xC���1/�\0G�+�\0�#�\0&%�\0⫩��f-�\0\n��?�	�\0ɉ�����z{����\0+q)#��]��RnV�ƭs̴�xn�\0R��3�gy�\\(�����?�\\xC���1/�\0]4pC�G#7,U@\'�O�9u`����[�G���1/�\0K�\0\n����\0ɉ���h���r��<!�\0@�����\0���Ǆ?��\0��\0�U�������\\xC���1/�\0G�+��#�\0&%�\0⫪�����¸���?�b_�*��W�\0�G�LK�\0�WUIO���¸���?�b_�*��W�\0�G�LK�\0�WUE�W�Ǆ?��\0�2�\0�T¸���?�f_�*��Z9���+��#�\0&%�\0��\0�q���Ŀ�UuTQ����\\xC���3/�\0G�+��#�\0&e�\0⫪��f+�\0\n����\0ɉ��?�\\xC���1/�\0]Us09_�W�\0�G�LK�\0�Q�\0\n����\0ɉ��ꨣ����\0¸���?�b_�*��W�\0�G�LK�\0�WUE�W�Ǆ?��\0��\0�T¸���?�b_�*��)]���\0¸���?�b_�*��W�\0�G�LK�\0�WUEϸ��+��#�\0&%�\0��\0�q���Ŀ�UuTQ����\\xC���1/�\0G�+��#�\0&%�\0⫪��3��\0�q���Ŀ�U�<!�\0@�����\0����9���+��#�\0&e�\0��\0�q���̿�UuTQ����\\xC���3/�\0G�+��#�\0&%�\0⫪��i��\0¸���?�b_�*��W�\0�G�LK�\0�WUE�W�Ǆ?��\0��\0�T¸���?�f_�*��(�`r��<!�\0@�����\0���Ǆ?��\0��\0�U�RQ����\\xC���1/�\0G�+��#�\0&%�\0⫪��f+�\0\n��?��\0ɉ��?�\\xC���1/�\0]U��+�\0\n��?��\0ɉ��?�\\xC���1/�\0]U]���\0¸���?�b_�*��W�\0�G�LK�\0�WUE>f+�\0\n����\0ɉ��?�\\xC���1/�\0]U%�[�Ǆ?��\0��\0�T¸���?�b_�*��)s09_�W�\0�G�L��\0�Q�\0\n����\0ɉ��ꨣ����\0¸���?�b_�*��W�\0�G�L��\0�WUIO���¸���?�b_�*��W�\0�G�LK�\0�WUE�W�Ǆ?��\0��\0�T¸���?�b_�*��(�`r��<!�\0@�����\0���Ǆ?��\0��\0�U�QJ�W�Ǆ��\0��\0�T¸���?�b_�*��(���\0�q���Ŀ�U�<!�\0@�����\0����|�S�Ǆ?��\0��\0�T��<!�\0@�����\0����W}���[�G���1/�\0G�+�\0�#�\0&%�\0⫪���9A���#�aD�n%�\0�ᯄ�H\Zc!=��L�ͫ����\Z�8Q���u��Z(����(\0��(\0��(\0��(\0���@QE\nr��үJ���(���֝M=j\'� ��+!�Q@Q@Q@Q@Q@QH�(��K�I\'h��N\Z1 ,>���5�Yֵ�OLg]OO[sq��d�{�c�⚵��n. ��y�f�Pe�����I�E��P$��G4.2�F����u�*��v�*�y��ڷ��K��G}�����k����0\0�H�������Հ�Es�^*���7�G��WY7�����x�\0e�Zz��q�R����^�iq���#�;f�V��W5��ϯ��G����c9�����89�!�S�I�Tn�M�G��B���;+�,�̭�2(%���[�i��`;:J�M��:o�tm6�+&��IR�+�O��Oc��s�_�O\rj$yt��?.��(��\0J�`�?Z\\�mTR][�q\r��ēO�ʍ��\'h�p:⥮]@վ&1\'1hV�\0x\"i�_q�~t��C2�v\n�2I8\0U[}SN��Emk4�gds+�\Z�@#+�~[ƞ/���Lj\0�\'oo�~�I&��ɵM:�f�{�X�\\nG�U�y�O������[�\'��ʐ6?*�?�6���O��dȷ�AWi��qϠ��z������D�Z���!��6;��%z�\'�>��V�w�W3���+���n!�O*3����;�S��8���`�Aer��P]�Rx�E0�����RՀ��(�EPE�\0����\0QKI@IKI@E%\0QE\0�RR�R�Q@EPEPEPE�\0�QE\0QE\0QE\0RR�EPE�\0�QE\0QE\0QI@E �K@Q@RP�QE!�E%-1��\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0��\r��(��\0�}�X�Ѭ�ז���j��}&��\0�M���\01�3�\0��\0\Z�R�l�;����\r��ƌF$c�A��t�\n��\0�[����H�P�|�����\\Rb=�Xҵ	�6:��Ԋ��A:��8�#󫵓6��C�E�yqA%�#��P��>���>���*��P�ͮ�b&)n&��$�	o���Ќd�$it������{�{Q�u\"�P��D�I��`#�^2z�n��/j�+�4d�J�Xn��6�1o�#x��ߦir6kI\\߅�Kq��w�6�k��`~q%%\\��� r:� �%��4�EG�i8�|��99�O�7>���`:\nJ���;�8���4sF$��A��WH�.��;�Ú�vhM%��F����uc�!��R2h��U�Q������i.bɒ�Y��9ER��P��d�C$?ٖ�*�\n�v��>ɴ���������2��0\\�#Ye�v$�4���\0��� $����\\������Wӭ�c��M1�#B�b	b� �펠��Y59,��0Gv�:� ������20q��\0Հ��TӴ����Ծv��*n�\\d��T��C��b�Y���*�\\�,O@\0=k�����,wړnz�\r���^�4\r/\\�u��MkX�C�d�`����~�� �j:]���מ�!�n/4���Ia�(����۟�H�؁ڷ�a��7&������Rb���dt##����`::Z���웓��7�&�7����}_Z��{��c�XK�����ݔ���7px��^:$���\\�̞#��ק�k9R(|�X���0ϰ�=��3�G_���u��l��EE�1a&܀9n�#6Gn�r�@�h�+�j�@�x�u�D�1F�tvÍ�@���?�aWt^\rwE����)�!\\r%H����\r\n(���(�����׷P�E�o�@��L��9X�H�]VS��� �;�O���w��	\0̀�=��?g{Լ+u)y����[\0�\rʜu��EU��m�ս��\\]��7I+�U���<u\"��xn`Y��h�ed��+}��d���:��R\0�\\q\\�G_1��N���O�k���l��_ݸ��8�3���\0�\nV�\r�+���]��%������O�� ���1+�w\\j�����ycl֗���R�oXϫ��1�����F�(�ES\0��(\0��(\0��)\0QE�*���Wڕ���7�uBG�	�Wk��u�7|&�²)i�ʆ��q�y���k�5����a4����3��+\'Z�֑��Imye	ܤ,��I�V���q�G�xC�-k��BMzi\Z�E����Y����I\'o^����u���|Ui�oqiw�����S�8l1 ��qb�_���֚��bk�f�}��6�,Fs��t�q�敘\Z�Vt��P���G�<�-�O7��\nF��X�#��H�LՆ�}}j,o�͜�Y���/\'�9�����X\r\Z(��Q@Q@Q@Q@	A OAEE!��5�.����jvs�&8�Va�������O�M}w�l�C� E\'�2{�*�S	𯉭�_kn��E�.�k��6D�:�nzd�;�4�5��\Z���K�2ԥ����V�d`�?�=x��Wa�s�o,r��*�eo�%bx��6��k�[��P[DS���N���|O�:���\Z�بb&�(�y@NONs�df��EVӯP��Xf�f]�9�c��v�4�(��@QE\0QE\0QE\0���\0�QE\0QE\0QE\0QE\0QE\0QI@IE�QE\0��M�/J���QEt)��:�z��`AEVC\n(����4�\0QE\0QE\0QE\0QE�(��\0+���<u�p@�{���]�b��t-6�T�ԭ��n�F%��v,?Ga@�<��O�.tY�����q47Ș@8�ǯ�ֻ�_Rm+�b�\\�$V�d2Vª���Y��X/md���e�U��� ���\0I��^���2IVxG��ס� {���8O\ZY^h-�x���3.�^�/�&�N9�.c9~��j���hP��J^��h�?�4��~uoR�l�[#i� �b@$t�U\'�֍>��4�C�=r��2�rOPsԓR�V\Zz��a��>+��Ј��r`�;�g�+�6]�S�(�����XP$P�2��ـ�w�/4s<H��G*.z���gO��ZM^k%{� ��� �c�㷧�5JB9o�<q�Y�6�C�\0FY~ǧ�\"�=���%��FI�����!>�+8��O\r�ڽ�]j)<�Er�\0�:Ri�xcF�VMQm�#��d�ܮF8�t��,�j��m$�f\'�S\\߀�2��\ZđȒ��R]�|ȅ����hv�������9�.|3��ȹ#r��29�im�ⴵ��	(#D@��M�-y_�g���^�͒�\n�9�b�JDY#dl�a���>�����E��t�>;y�ˡ9*Npy�u�����[⧆G��@y`?��\0>���WQ���/`Ku�H���c�-���ȭ�C�Z�x�w�rO;�s��<~5b���E������E�I��o�0p�$qM�h���^���M�W�-�c3\\4�hR�\'q8��7IcY#utpYNA���zu����c}��P�$g���;m>�;H�+xT\"\"���j[��ET��_O�k����*@1[(g�	��+��\0��m��\0�1��q�\0��\0�ҟ�\n��F5ܶ��x�N�?\Z|����>$���#:�������4��k�Tk���Q��\0��R����ω����5ϟ���y��O�\0������g����\0�Q��W=�\0	L���1�g8�\0Q?=��I�k���\Z���b����Y������5���c\\��\"?1&(O\Z�1��|����J,���Y/�\n��\0���\0N_��\0𾽒q�����7�����߼*�|3����#?���j��S�������<u��j-���I\\��~ BxF�bo`�\0B��\0nx�����\0�:�o0::+�����	��\0�|?�I���?���\0��Ƌ�Q\\���w�\0t��\'���\0�/�߈�\0�O��\0��\0\Zv�������\0П?���4��<Nvx6B3���1���D���?��G�\0B|�������?���\0��?Ƌ��\\����\0�O��\0��\0\ZQ�x�iτ.3��m���i����\Z޹�|\'w��A����Mk\\��	ݳg�]���\0B4i�\r�J������I��귐7��)��z�S�);���A������N�oR�kz�H_\n^.y��s�������>o	]��Aw��ku���$ֵ�?w�;�8�+���}�SZ������gP{�\0\0oQX\'Z�qǅoI�{�?��_�c��[��	��\0��]wv���Z�J����s�\0����Z�^<-�n-�۾�hr�����?�V��\0���.�5�l���K�������x�۸���u�X�_�\'������ZG�����X�v�9Ϸ�0:��-s��j���\0�SR�t��?����O�_�#vU��#t<�Ni�7{��J�:歸��\"����w�\0��.��3��2=f��~)r07�+�Z� �-}���|A�\0��u�[~����&x��I�7(�O�c��k��	��\0�����?�V��\0���.��Ea�\0l��+_�M��\0I���v>�~S�	`99�\0���F��Ea>���>j9=6K~x~)?��/��\0���nۍ��Ǯw�\0�Z|�p��KX	��\r���;��\0���\0��\0�R����m����@0?�\\�n�XC\\Պ��+�|���~�??�뚬����\0i�_��\0Jn\r��+u�d�����G��A����ZՉ`|-~��?��K�[�IXrkZ�$\'����渀�gy��<E�\0B}��C�4r�� tt�������H\\g<�����Bk� .��\n{��$�\0�T��3���|kZ���W{q����}�nh�Z�G��	]7��p���Q�_x��+�����	��\0�t?�N]o�;�o\\�H�����N�t4��nx�����\0��Ə��П?�C�4�����Q\\��<E�\0B|�\0���Ɨuwwi�^��XM��ȏ�b\n�1��R��(����3u_��(bxu2?�Ez]e��kC�.���J��y1�G@X�`s��ۈ��ڽ�}i�xԞ�e :��E7�����6�I\"�H�V.[�0��\0jʹ�΋st�-`���h������ϮhMZ�KHC�|i�/m����(�h]��!��o�\n��0u8f������w�V6�}�������Ȑ(ϯ���\"�	����p������j�����:��-gV�����D.�8wة��V?���٭�<Ew�$��I�,/gj�&	�dH�\np7\03�y|Mt6֖֖�\0g���FqHFz�*-/K��->˧۬n-�s����� 9�Z��2��׎��J��fG��s�y�n��E�r3g������F�gr92A�ߕ�x�oZ�m�?��j�j��1�{)b�Amܜ��~��i��F���\\�m�U�~�s+�.�l��ƌ\\���z�7%�ԓVi��G(8�\"*��:�g�xoF��֩����jַ/l�1��</#>�T��3����R�5�j�,�6�r[y����~I���ѓ�Z,�<���;<�DLo!bI��Aa���Z6��Y�%��))�Q\0w�Tڵ�q�G��\0�����V����h��/f�1\Zz>7������x��ؾ���D(����ʉ�W��#���ВX�MOW��l�o9�Z���=����\\���7�y*x;2Ilǌ{����e���-�����e}?|���1�����a���)���Ky�W�T(�G�`��S,���l����b��v�k�\n9��3��^]k�#/ڬqo\"璠|����{�k?�,���w0�n�՗���:n���\Z}��8�!T�=�)n��:��;��>�y��Ie�Y�#��y���v^ *<9�`��YrOA�\Z�|���\0�<;�%��l.g�X��n	q�v?wӆoZ��h.������\Z92�������m�G�vՁTg�x�������\'�$�gӓr����ـ;��N��5kH�����{�=�Zȿ�!v��c�#��\0ci���\0�?a��v��oˌ���9�z՛[h,�����!�1����VZ(���(�1�%�����4\'��\0�d���Y^:w�׈t�ۡt���m�b�J���z��A]n����ո��m��C�]���ЌՖ��{e�xQ�]�G��A}�R���~�l>�2̤]�̗7m�Y�O�EQ��<l��½\Z`	���p�r\nl�=�Wڻ�SI����Ϩ[��Y��\'��o�Y[i�N��1f�䑹J����rhR�w�C��ûƷ\"Qq��;9�3\"��\"��;uȖ��\"\r+�2ɀ02y$�^��z5�����Q���*�ꠜ���U��=�ז�,�r��s���A�8�����E!�p?\n�\\�/��|1�1\n���v$g�퓏SS`:J+�����	��|�Lms�[o�d\'?(:� ��z,MEr�\0۾+��\0\"Sc�����\0ox������E��XU��\0ox������E�ox������E�8��Q\\������H�\0ʤ_�R.�↹U>\re��Σ@�q�\0ע�t�R�d`�R�\0�C�Ҥ|$X���r@���u��}��Q��U��mq6\0�*8=��ֹ��vos�]GU�B�{�*�&��4�h?\r��sV��k�Bv�kiS���*�e=�wc���ec��O�Oi�Y�(9,Cr�cگ^Z[_Z�����\r�O~�ߚ����<k$O\n�\\�q�:�p9�\"�e8��s��y�o�r������f�\"���!9`O�ܜw��E�愶ih4{gr����\0O#�\0d�8�\Z�v�O�Xi:�\\�H� ��_�d\'�z����_�xNC�^\\x�H�%��m�#p7$+�$�W-�[�^���46�PK4	�94g�`:t=}(��#�ӭ��Goę98P\0��*����-����,��L$�8�P��3� ����O3{��Esk���h���� _��G��⽿�%6q��N��\0\n|�uW2���<!9ݨ�>����yy�\0�)����8���\0�E��(�c�w�\\�\0��8�\0��>���{R>���G�e�[S�˚9X=-r�]�V�ǂ�\r��J�\\z�����Г�\0�H�(U%`�Z��n��P𹱷`w\\����(������)h��)kV�]h��\\Ư���0{���������NeU̥�x��2\0�]5մ��[\\ƲC ���z\Z�M�,t�Qm��Ems�5�O��<O�;�`9O�=��������19����|We<�����,qD�.��UG�&��z>��Ɖ��Cr�w/���}�k�[�>K�KiS�h�\r��Oå�	a�9�Iat�\'P��AV�AE>�/��4(m�|?ᕼ�D?r�8>za�$�I���T���w�	?�T��(��ꨮ]u������\'��/�߈�\0�O��\0��\0\ZV�����x�-��x�:�#\'��R.��r����O��	��ڋ�Q\\����\0�O��\0��\0\ZV�<D�������G���p::+�\Z�sτ.\0�k�z�t�k�!E|rx�����k].IEs�k��l~�`Ik���kCH�/���oty��\0)�S,��L��oo~\rJ�(�R�R�EPEPEPEPIE�QE\0�Ғ��*��Bb�E� �=ii��L�QEd0��)\0QE\0QE\0QE\0QE\0QE\0QE\0QE�(������\0(����JZ\0(����JZ\0(��\0(��\0(��\0(��\0(����J(h��\0)(���J(h����JZ\0(����(��(��(�ER\0��)�QE�(����J(h��\0(��\0(��`QE\0QE\0QE\0QE \n(��\n(����()i(���J\0Z(�����\0Z(��\n(��\n(��QH�(��(������J(h����J(h����)(h����J(h����J(h����(��(�EPE%- \n(��\n(��\n(��\n(��\n(��\n(��RRh��`QE \n(������\n(��\n(��\n(��QH�(��(�EPER\0��)�QE�(��\0(��\0(��`QE\0QE\0QE\0QE \n(��QH�(��(�������))�қN^�t�!1h���AM=i��֢{\n(��QE\0QE�(��\0(��`QE \n(��\n(��\n��5o��U�t�Li��f�$@�I3���\0/Z�+����.5��E�mTAz�D��Y��`w��u�H��H\r�.�[��2hڡ��f.!���������z�\\Qx�E�S�N���wa$1��Wi ���\09�x�R��$�<Ae�mN(˫�o�8���#���󠺒�⧊�`�y�;�U^��q��R}?*n:�a�x�Fբ�����[A���Ԡ�\0{\Z�H���l�4�Ը0�_h#ns���Ѡ����g���HZg[���г~u�x�e�/�F�����P_.���Gρ���w��)&�w��\Z��1YL�=��)���c���?�_��t6�ؠ�`�I�D��d-�\'�$��?�M�3-���5��$�<�NX��JZ�QIE 9��^G�i�X�Oe%ƣ&X\\�����q�Cx\Z�<x�� c�٨�)�����k��U���rv�+�����y牼1��v�Q����{x����NG���Kq��6y�2M-�N�z��β�\"ȇ��\0�!�\0�\n���υ4��e��(n�^8�N��KOkkh�l���3H�����uȮ����9�d�E��!�V�g���Y�<�],��7+����ax_[��<7�����P�_ɁI ��P�����-��-Oĺ�~>��l���q,�),J�����+�GS�]a u8�\n���x��g�MњBr^GU.���1�k{S�I|ac5ި���:r��%�����\0#��-q͸��@lpH����\Z��������Mi�Ml���T/\0�\'�O�S�|�1ͯ�ʲ����\"ۤ�I�!F{cӜ�=R:?�|c�.7��]�ddn�B��$Sq���G�-y���x��B��N�x�.9$�mA�d�ˎ�t����g�A�}�?�l�3������MX	(���(��\0�=O�>,�5�~$�,㴙5�O�ݐo��ɫ���j��;�_���\0��<�\0#����?�%v�r�N�q:\r����������y4�=V�B�o0/��s]���l#*)a���_�j����\0��u=�=���\'�x��z�K�.̉�2�h��:� �^���t:;�j��WK32��k`W��K�q���| ��p�H#�ldx�1�C��2�j��h�w2��@��p��s�H�БM�:��(�W�|C-͕΍i\r�ݬ��y/�O=H1�\\����ő>)�Q����wo:K\n��0�\0�u�4�t���\r\"o�r���W�i�if�X�B̡I�$��9~�.�o����E��eӤ�[���8e\\��##=�\0������q\\��+�OK�ڎ�|-d�tf�ҹpX.>n�8�\\ƹmmm��P����P�-�D�j��o�J�~�.�8kw�$�/��%R�<p3)�L��z��ǻ�M���4��Uys\'��M(!��$�$�4[�.@ܹ�#8����xoV��Z׶��}��q[�Hn$���\\��s���Թ@쨢���-%�-�Rh����.��\0���֤��,`,H����3�`jօ��[B��F�n!YT�+��G�X:�Ε����N�q	����R)���KЕ]�� ��X	5Co6���/m#Ke*Ys����i�_��U���j\Z���h�W�1[½^F\0g�z�a�fA��\nh��x��W�5��G��{(���\\ϊ��S⿇􋃺�(�ǖG�{s�-G��]��>��\"j����,g�\"��r�$u�d\Z��t�7I�T��X����K��~ᑀ<�zUI|e��\r��~�%�<�$�E����+���e|B����Y�6�G�U�\r��.~;խ*�[�F�A�ҐX�*+��(l�Tm#��r�Ji&��(�k����0٤z��F�ˍ��X�`�#�����$�H���P���������}�T��RQE���S�QI@IE\0�����Q\\�Cik-�Ă8bR����_�w��\0\n�\0R���#�:��\\�Z�)h�ν�\'���nc�t��1�/�%�b;��(#�|s�����žњ�+�-Z$ug�)*�!F0d���Y�[�����̻���7_�c_񦑠�?���w>k�ȁ#$�c�Pz��7��hk^\"�4�j����H�(ͻz��� ����&Ӓ����L��	�[�	�r��G���QBx�l�[�;<U�K��C6�~�s4����A\'�#55`=��xn�&�P�cm��A�B=*��~�}�}�&�D�\0ǃ#���\0��s�k���xwź����YL�n����R@�sԕ����zԨ��Y�.��MZ��ۼ�(\n3d~\0��Z�}rm��k��;$�v`��r�k§?n�q��S>/cm��v�\0%���X���>���ϭ4���u��\Z��3�\0��3n��\rG�tY�����a{(�D�H��wu*Oz��%96�\Z��݌��&�ԍ����8��]�~����[�ٴ�wj-�Ϭx����8�C���ۢ�N�l|L5�6��>G�剈�������:w�y�*�`\n(��������QHaEP�QE1IE�f��{�O\r�7vs���y��(݌\\c�k�\Z��|K�{�Ao����!F�%>U���ל{����?�)��\0��7��k�����?\'��u��̳��70@+�<g��2?���\":/��1��:u�]ۤWV�y�H%Y[8 rs�z{�l�$�5䙴�ϴ1�b7R��8`=�\\�OO6�\Z,:h���P����-�����k�Qm���j��`��v�����<7y�[_�*@��e�����(5�.�I�T���k8U�Ic;�9���1��|�C���\rB���Hb��c�q���;�dV��]g���|���[�[h��8� ���$`t��Ѹ�5��׆��	d�$T�ϔM��>8�}�������ۋ8�_�6�����YPu8*3׵s1��4A��p���&+��!�O�|��y~f>m��3�MD��ZN��i�F� ����H�=��L��Q���K�xn%��u���������QǦ��!�\'̉�\0���`x������R�<��g�;�lnN\\���䞞�8�@�Cqsg����Ic�{xZei���qP��~���3W�/�4��Ԭ��f1F�Բ����#�q�^���9ǅuc�\0NS���Q��l���v�|�?��@������o���N�muk6a\"!�n�+�����<��\\����3��P��z*��*�������;������\0��������c�H./!i��,��c�v�=�J\Z���,I,N����r�J����	�k��a��yE���7�j��[��\0hx`i��^�|�󳝇����5\'Ę!��q��k\ZnFڣ-2�I�ml����{ۻ[X.��x�Kp�H�U$�e\0�U��=��P��%���V�b˴��گhqF�����e�T�#ӂEy���{���;���i��nUX�[���l`�f8�>T��\ZΟ�C,�}��a�� h�Xc �\0�����桊1%�f�Ȓ�CJ���\0>°��E�ͺ��t\'�x��T��L�}O|J���E�(�����)\0QKIL?\Z��W�./��>��\no߹�v��u/�|A�\0	\'���x�+�c\r�jE���|g8��\0�/���\n$��z�%gDG��&K�K�����N��|�8于ƭ%`4<w�;��6�o��6J:��}� c���:籭m�k����%<�h�}�,���k��,�3�W�\"���:�[D�\0�f��\0���鶮x�S��>\Z�i`���[�$��w&I�dr3�;]�dE-p�6ѭ4\r�oHg��ee��2��d��9����~�L��-���K-�>C%�K�$���ד�ɩ���E%-HQ@Q@	E��J)i)��QE\0���P� �n���������&\n�\\����]\\���|E�\'ܷ��!����^�m%զ�k���k5���\'c)���5�����48�+u1��� ��u���#�ҵ�̼#��^�T�Ͱ���7?Ԡ�\'ex��郜`���;լ���[��-��7�[f���*6ϑ���q�g�V����W��_�[�/�.�bF��v����#ڗ(fFq�ik��(�?��\\��&�h!/�ΐ�pp�_�;�Z�n�i��z����d�d�d���>Pzu��\0CVJ�����(�aKIE�(��(���*@8>��Pk�k\Z_��G֯���k)|���#�$q�\0~�^��^���6:~�r��W��V0	w��8��뎦��}k^��*���\"�u�מ#�=�=����}cK�Ě����1�P�\0F��=�I��~`u,�k4�I@w�q�\'����S�6��8��:�Q�����8㩭����Z�q��V1�n]�\0��I�\'�}:qJ�@ޢ��1i�e��\r#Eo\ZƦF���O��j���QK@	KIK@QL�(��(�ES\0��)\0QE�))h�EPE�\0QE\0QE���M�^�T�!1�QEt)��:�z��`AEVVQE�EPEPEPIKE �Z(���\0��i�\'ѥ�<��ﭮ/e��9.$G�]���=��	=s]Uրs�N�|�\'������5���v.���K1Q��`cֳ��Yx�R�i����K\\H� �����Fz�8�Ί.���Q�[���d��;k;i�9f(0;p8�J��}�xb��]KI��C��\\��n\\|��g���Z.-�=^�4�ӵ[�9��ݡvfL�S�w��$�~��-2K�׵e�� �Nι��x�G��P����s�8�5-sL��J���[ĹY&$�61�y������<?�I�\0��cER��U�> �d��hK��	�~�k��-�F��������F*�a�[��+��si�K��+��N���̤9RX|��^?���m/<oi�\'	�\"!���A�1��_�qҺ:JW��4}r�\0�ZN�zoٴ֐��g&�	�08y��u#Y6�]�\r���/�K˺�7���ۯ�ֺJZ.5��\']�u�f����{{��bH�+<p0\0<�O�b�<7{���k&؍V�i��$\'o�\0 nQ�1�溚Z|�7MҼoag����l�(��!�ِ\0��ܚ�vF��p1�ޝE&�E%- �Z(��C��-_P�\'�-BP�n|��W!~���\"���\"��Ã��o𮺒��X�tM�C�k��i͑�D�/��p���Һk�:���#y��UI� ~U%7�π4-Cú,��ٮgi�ݛ9��p����ί������K�C\Z�(���8��V�]��rv6~8t��Q��V�`Mqn$7��3�����r*}OE�n�w����X�#�֑���Hc���#=���IE�@�&ѵ7�����lc�6����Ö�p>bS��^����/��vsh-��$n�@7+��:���k���f3��𯉡�Mφ��K�-��ʊ�����\\䌀x>٭hZ��H�O�X�z�\Z����>R�\0�����g���;���A��Xt��;�m5�?,���6�S�p}p{�s���[������\Z&Ԃ�[��b���q[�R�c\n(����������,S.<���q�i�$$)n��8�(�h?����7F�5/�5��,��nIYܶyQ��?\\֯�_����H��t�BmUI��v����������3��G�%���Z��-�M=�!|��\\�cc��H���4O��L]2�\r*�%�$3,�)��>ޝ봥����<M��N�\0��ӧ�܉SK>P2�t(8$���jW���hP��E�Ar���g���c*�>�$��]-���|_�x�S��b�5�g4\r��f��ヹA<��y�+�PB\0�$O�-���Ium�\\�#�;Y�?�������qT�|;�j/sy�Y�<����:s�������ߡT�@�7�K�ז�s\"�\0�\'�������\0�_���C�5�\0@;/��)���xoh�v8?�EU���[66�Ds�(�U���E�\0}���\0�;�_���\0�b��\0O���3��w�?,��g�v������7�⏵[��_�ج��C�5�\0@K/��)��^?�-2x��?.��6Eձ�q�\0��E��a��������\0�;�C�`v_��Q�\0w���	e�\0~��)$rcupӜS����i�TM�g\r�;ne�q���U���Gso\rմ���\"�J��\Z��\0�_k~���G��<�T��F�H���l��ӷ9��xCZ�7�l�K�4�mQv���pm��G|w�޻�*���񾇬�ri��m`�g8�&���G�s�t��W�[��{O��9���+S�<��%^�*3�����))4\rޕ�k�2�6�l�m�E�e���G��]�~�՟��\rj��!�5��[��2I;2��\0�j��z5u�Q��o��5�k���w`�|��ˉ�~\\�8�y_�zjƩ�G�z��>�-�6V�kfg3?x�\0bpH�9Us�9?�\Zֽ6���%�q��矴���:�O{��R���`-�<Or��#H�����tTQ�Sů�P��͟�(��BT���AǮ;��j��4�puPGc2�\0�Y T����<%�&����80)�1M4��������������������z5y�j�xG�eN�a�����\nxp*����9����v�jh� 2o 8�A��K�)3���\\H����D<5���;��\"����>�i��9�R?\"(�\0���������\0���4�ښw�-���\0�Sxu�iд�{[ ?�?��:�T�Zh������d�\ZW}N���\0��ӿ�t������\0\Z��\0Ǉ���*�!�H �ZnZ���������\0A+?����V`��Vh%Icn���Ef�\0�/������r?��?¯YX�i�lm ����F�8���OET�fo��o��-;��{��[�Iت�p��N���>���<5�M�Zϣ�O29$2f2q�\0���+���J���!�����^�u��F�e�+��$\03��>ÁM�F���1��2X��s}�<��s������{�UE.f��|�m[H��ư��jD��9��9`8!���T����˫/�As�;��Wc�D�s�g�#���O���x��z��/4�t�T�s/�K8��\nx�}{�W1���`X��N����$⤢����}��O��5ݕ��J�Lf���FJ�����֗�\Z��\\j�jo`��o�fٜ�bNG��]Us03<Ii{�^X�:�&�t�ʪ�\'�I8<W3�?x��:Si�6�����WyIP@�\n7t�]�)4�;�O	C��noe���R�$�p�(9b�(��<�Gn�6��^ů꺖��N�Ȣ���t�ANG`��O�nR�vi�mWN��s��Id�u�A���Tn8�Fw��y��j��H�׼3>�`��$웚r���@��[�Q�-���B���h��V7h�*�F3����h��t��ڪ.�,z����������}�����M��^v�6�wf�2�[Gi��n����$�ʠ�^��h�wQkZ���<��%��s�7<��A��5��C`%-R\0��J\0(��C����񞗨kz�e�vdL�dk�@\n�����E7��\Z�\0��B���E��9R]��=r2F	�N@������x�D���.�.���G E-4��5VN~���ǆ�����x.�T)$�h�1�dc�5�QG3��4�x�G]\'Um>$d73Z���*�HP��G^~���ì�Μ4��a��`n�U;�!��8 q�Nq��:�P��մإh��mD8ei�>�<S���MR��\'O����<�4�.�$�1gv�BX�I\'�g�#�\0���\0���\0�\Z`�:P�ُ�n��H�ސ�{U���O�?����\0�����(�\0�c����?�?�@\'����\0�-c�\0�	�5��zkzq�\0���\0\Zo�#>�\0���\0���\0���x{��:g�G���\0�h���?�\0S�i��M�����I�\0Ǉ����$�G�#>�\0���\0���\0��>\"Ї]kN����D^!Ч�!�ZӤ�F\n��HY��\0��?����\0t����)W�^V��9Z���G��-&8�-HrZ��K�麥��I�d��i�- q��������)�5wc�V9-n/��2���A噇F�(^;�M\Z�����R�gM��@�F��`���܃�t��WKE;������{m%�/t����K��8���i�䜓��ry�V�ᶟ�z�w�0���`A �{���j���v��x�u���Y�*�M)�S�v���>�ɡ=u_鍤�^��`�i1�\'/��BA=�e�>��ַ��Ʊye��\\@�)�9y#���y�A�Z�\00*�Kk�W���9���G\"�Sߡ��p!\Z��zjVg�ۯ��gJu;!�\0m��j��\"��\0���\0����1���\0��\n��HXҏMN��\'_��gI�\0�����\0O��\0��xw��Zg���Q�\0Ǉ���*�0\':ސ:�#���i������\'��?���{��:g���R�\0�1���\0��	�Q��wF=5{��O�k�)�����C�\0Ǉ����$�K�\0Ǉ����$�F�Oi��W�m5;;�H�ȧWo�\Z�Y���gr��M�&v��+.F�MhP��(��\0��%�l�i�\\H���Qr��$�ӌ����>��h>�K�>��C7�%��nŹFI�]\r���D�5�[�׳F��[�nY�%A��A��ԓR�F�4�`�Ph��\"7��=2J�E;�����ZE�j�)zbc�����q��}Jw�$Z����\nO�/t}+P�K}���ȫ�<�+��#�&��\0�1���\0���R����������?Ɣk�1�\0����\'��?���{��Zg���Q�\0��s��-7�\0S�(V״U�����*�;}�Z����������\0t��O���L�\0�T�\0\n\0�����\0�R���\0���5�$�\0�R���\0����E�=�\0@3�\0S�(�\0�[ù����\0���g�cJ�\0�����\0_����?�%i�\0��j��\"��\0���\0����x�����?:�q�+���e�Lʼ��,\\�{y��h�0ӊ��\0�;�_���\0�B�i�>���\Zu������$\n[2i�t�QH�(�EPEPEPEPQE(��@�8��/J���QEt)��:�z�O`AEVC\n(��\n(��EPER\0��(\0��(\0��J\0ZJZ��O\Z�^���5���6݋;���y���\r4�IEs��M&�P[-En��\\�\r�%���Ǿq]\r\r4�IE \nZJ(\0����\'�����:(�嶻q<��W24Q���Ła�s��i��,���{D�.-���ᰝ���=x�\0�\Zvv��U-#T�ִد�%�m����<�E\\�EP�E%\0-�P�QE\0QE!�Q@Tw�mo$�H�R�ǰ-%C\r�r��\rEw�Q���>�s�cG��K�?��~��B��qm�88f#w�4��tV]��4��\0��W�I,T4�iE�$\r���px&�����4\Z��J�ϻj�\0a�*s�GP{�`4(������׵�}H�Q��y\"���nnN3��H�+��EA��G�i��І\\Ĳ�q�\0F}�������4�TK��b�ڃ,��sB�V6��[M{C�U����g_)�c\0�@$�z���m|E���g�3((V��?Z,�Ԣ��I�Md���6���P���hL�3�tW ���1�>�Qk��E%-\0QH6pA���\0-RP�QE\0QU5mF-\'J��\'�i\"�B�#�^���-��-T�ִ�}J�H!�w(�v�䃑�r���-�0�Gk.�iFcb>W=�^��\0�Պ\0)i(����\0Z(����(\0����\n(�z���f�y�yF_�B��a��h\'�Ҁ.RWm�]��s�fxfA\"8�\\2��~�:?x�E������ҫ����V/�<D�\'�Ƣ��l|ƌ��dc�x��u��N�KV�\0:QTub�L�����G-��L+�����Յ^��\0QE�QE\0QU5[���:[ϲ�]yx�ͬ~d������P�Jd2y���7�m�0˞�z��(��C\nZJ)�)k\"�Ěm���Хi��:�E�R9�c�A��V��IE!8��vZ+H����^�[Z^�g,�<�\"�@\\��89��=��ZT�Y�Y����6�H9�G�Y��E%-\0%-%�ZJZJ`-%P1i*��ie�Xi�	�ˈF8;NOnߝ^4(��3������QAsƞ@�Ώhl�y�w���j\Zh�)������\'���F2́����+/Ú������Y�<p�(��w��+R���)�RpNAސ��������s�����ۗ���cc�v#����:���M�\\�<�Í�\n��$���Uf�_���΂9v:oP�\\a�#���@-% e,TH�=*����z���X^@-Y@�h��0#����P�(��E%-0\n)(���(\0��(\0��J\0Z(��\n(��\n(����(\0������K���\Z��O��C��p>�1��\Z�����H�\0ʤ_�T���utW#c��Q�Se��m=��$7k(«�\\��g����U-#V�֬��X��RGO|d{H�QI@IT��A���Seun-�hCO�(ľ�{\Z�@E%-\0QI@EPEPEPEPEPEPE%-\0QE\0QE\0QE\0QE\0QE\0QE0\n(��Q@Q@Q@Q@	E�\0�QE!�*���/J���QEt)��:�z�O`AEVC\n(��\n(��\n(��\n(��\n(��\n(��Q@	^i��X�3x}�C1D�\0��$�=I��^�^]�]F�|b��C������F���z����	~ �/�o-<=�m�����`�V�\'$������{h���Q3�1�R�հ1�^{�:��� ��9.�ӆulvn�=�z��ߍt��?�����-cIA�@$�I�L�3Ȧ���|U;�J��\'u�Ϲ�M�l#{(� ���=��}?x��k�r�F���(� ����?�;�/�N��4-V��s�Ȩ�G���\'���Ln�U�\Z��5�um�F��Ar\"�����r	?]�g\"�-��Ѵֳ���u�U�EyO�8�����pN98�*���ִ�7�s�I&��.�Q+�\0aq���~���_��+�˭N��m�΂I\0�p�oS�{Uj��8��%�I�,bd(�w�|��q��\Z�P*�w���t��z�:�ݑ�%K��t<���J�0q�z���}��o�n\\�{<ki#�,�&W��lN�k����-+Eե�l�������n%w�{;��w�8�羇Ğ&���A��v�Xx�L�ر�ᘟN;�p)�D�\Zg���#!��An�ہ��#���W�1Y�{�+$��<�3�|a��|�q��ҧ��u^{y%U�i�F��\'��5�<C���%�\rCW�K�\0\\!|2�WL�O����N��u:M[B{�.;\r6�}23s�J��C�ffp��Kg���sRAr�!�?�5/�5���nXe�sװoϵt~�^#���כ8nL�R��\"�>��:q��\\�����s��x\r��s��U�ɇ�\0��o��������[a�^� ��m3LD�\'����\0��1�\Z��]O��P��m������_~��\0{�<j��<���MK�p7�D�f,0���\ZÂ�A��P66A���&xWw���H�L���5�g@����?-���ɼ�5Ģ�ɗ����7\"լ���׊�V��VKK��	w C�GPG\\UO^[/��Ӡ���a|���ϵO�޿����^��G��L7 \\-��C�F?��x�=���`C���t_�������-�w.aP\0]�=�뚩��X���5�ɮrK.�;�\"��~ �t�\n������֦G�y����sn�{�cEP��j�\0	�4�r<�<��Ñ��^\n�n�[�Z��tӭj����+k[)��T%~c�G\'��t��~�榷\Z��Y��*�	-�!��9���<�_��e�xth���i��.��ް��bYH݌���Ue��_Auq���]�rP��`���\0\0�R���>��j�u�M��`���Lcj�אOӶ\r)MCO�o���}oR�.�G0i�p�N1�����D|9\Z8,/m$n\nQpH��i<wu<*� VI70#��?P*���mR)��Z�ڭ�׵�j�\r��Hq���O��M>�k�L�o�dq9�����}H!��A�]�^k�n�ӡ��l��ϟۀ[�6�W�?,�;�\'�@v�����W���-���8���[�B��OO�\0�|=���3J�s��,#RQI�T�9åu��k{��*�fX�+�i�Hn�P[�,�Q\r\r��,��Y�V��+������mvC��v�H�P���\0W9�G��|<��o�g[��K�@ϱϹ\0T�g�t�Q$�������ӈ]��uǶh���}�:�ޡAn.bD��~��\'���}\0��#�z���|(�����u�I�Λa*�1%@<n�W�|�e�cs��_$��1!crF��J� z���7��6��F�<��˵��BO�b\\�}��Ǹ�7:K�C�lu�X�K��Ʌ�$�-�\0�\'�P_�k�=���R�r��r3�t�N�Ͼ%�]��F���K����8�\'b��?����u\ZO�<9��6��O�M�o�ٗ�\\��T\0;q԰�Ud�X��o�MV��K�����{����y�:dd沵\rV�W�i�O�i�i�)��R��̹�CTt�z�� ���zO�Esz׶��a(��2`}w�Z>\'���y��I��M���B�.@\0�<�Iǰ�J�O�^jPh>��ma����g�F\"(�`�:�G\0d�P3�g�z�MV������}V��)	�^8�C�^��>�W��\\Cwn��8ʺ�)M2��\rU�L�]��kn-~�%��̻�1��3צ}9O\nkW:ͥ��m����KI<�,�S�����k��������qoi���h�	�\'o-�`���χ���o�K`\Z�5�W����ې@��O�,�1o�ҳ�Ԧ\'?�p�_Ɲ�c��p�3Hy=~n�[���o��u\Z�]�,�6g�}@����	/ ��0�#���GYub������4���n.m|�Km*�J�o�ݔv�zd7_�ȫ���\0�]u��W�˃�u�bd���?�o����;��Q��\"�~�O��k�]��)��ݘ�!���:\0==�V�\r�s�\Zƍ�i�qee��ws�++��u<c����h^�\Z��$�iVv@@�录X��F�2��~�5�|P���I�&k��J)�KF�İ�GOQ�Vu�G�����Q���O~tk��/��h$��ϮqU�OÚ���\r�V�^X\\��h�|nGF�r:�3�;w�������o%=����[��x��<sj<C�[k9��n�ʯ(�t?w$����~_�?����?�-\ZO>#^\\�	�3���D���|E���Z�흓��G�GK�{x�\n�mcV��>��_�e,Z�K�H7#FȻ�A\'#���c��[��S]�3�/��fUbRy8<{s�X\Z����xJ����|���F.]B���,A\'��zR�`n��=U�[}�[�V�X���J�+��2�.@��\0��9�h>!Ԯu��W�����/>6�Ɋd�2229#��b��ս���.���\0�>��p�z�`O�Vt���mf�A5���-<��ǔ�b�0��v@G����\Z�y-��oŤ�B�=��Y@;���^���<���/�\Z�����h��!��c�c9�؏ΩxT����M��0����L����^��*�OH���5yG�%��4������Вx����\r?Q��>�jV�s%��Hѻ��\0�|q�\0�:7^!e�2���F��o���{`l�䜜}i�����.��eX2)�F\n��=��Z}�z���7iz%��\"�\'-�-7L�6y�(`t^/�7^�>��O���,~IPoN3���qL�ֵG��ھ�i\r���!�Y�)l��$�!����(�a�#cg)��?!��/w����z�7��y�ƥ�$r�?��)\'�d\r+���Ʊ�TEm�[�p3�|T�Gqo�c�C� ��28<����J(�IKI@-%\0����\0������`���9G�V�dx�+x7X	c��]��c�)�\0\"���\0^0�\0赭J�t��\Z���i=ܢh-b�@!c�U\0��گ���\n��Î�?�U8��o�f���H�@q��Ƹ����\0�\'���&L��ַ|]���{@��y�.d[��/&8���>�I{�s^,���%���Zy�>�.�.Z2�9$����_��V=s@�����e¸ᗟFgڳ�oi��E�Q��������RܖXI\'�Z��M����}c�mw�\\�,�\';�-�q���N�kU`6\"��w�]_D��m<�FId�`��n��%Np����x�[�[R�F�i��J�/�+X��܁�;��P���|[�kqI$Q*l�(�zd���57�o�.~\"x�`������*�\0�S��;⟷�j�j��k6�4�ܘ�:m\\���s����x�{\r>�Vq�Ke6����3\\\0܌\r�dH8�Fk+F��R�@��x��w&c�?��2q�@���kGK�gӭ��%�V���\'��/��<\0H�y�;$���<Iui��6zx��S��9D�	*���I=pN#���-F�}Ϋ�ڥ�l(�C`�z�1���J��N���\'���QF`�@�\'�o�*g�&�|T�(�|�\"�L�$`��|�l�I�)vOW�\'��N���Iu=I���mU��vf�Q����g�ki�f��\r=ՠ�c��G��m}����׌?]�����(�\Zm:ԕ��s\"�|c�3��w��#�V\Zh��D-=ǔ��ڿ0\'��\ZV��Q��:��z����H�-���IcO����=1��O���M�u��,���d�IVIv����o����9�O���]:���\Z���f�򝅷�q�U��=S��x�[��ൔ	+y�C�)F�2���m<��K�\rsL�4�}��ǧ_ܭ���/,n�wwA�\'�����k����i�]���5K{����v_����v��y�L���k��\0�������\0z��x�R�񅆋��^���9\\��$�`v<9��C�i�|Y�]���\0G�X�����X(cؒzv�֭k׶��φ�����c�x��.��q��z��54]sS�ė:�go\r�@.����F��i�y�����+��w����i�i��ɶ�e˼̸�@R\0�rs����/�\'��$q\\F��``��]�~��\0��7��ݧ�����Կf���e���l�ǂ��\\pG�(�\r-��#�-b{�ܱ��څ�P���?*��������x�i�qx�ص�V;�HP`rq�O�k3����zg��e��5;�ٞ6\\#��s��z��T4}N�M�/4��@w(P��<z�l��X��Z�4�oF�Ԇ�$z�4l`܆6\071�2q�~�����F�g�YL�hnVI.Y6��w7�{�m\0�=q�x�U�&����oss\r���V��R�rI\0�s�\n�}J�>2�^��\0�����7���9��\r�z����Vi{����B�]sѹ�}�q�ޥ{����ϻʶ��`��\0g=���?5���;Z��#!c3�1���]�����66ۼ�\"�8,T����\r+��&��1��B��s[��]=���<�n8�8��~��K�x�kMIմ�$��Q�\"	,����\'8w�c��0�8\r2�����s)�W�n;�=�;_�/���}�����q,d��;?��8���w�<�ܓ�.�igj���o)}�FNrC�p3�Ν\":I\Z�+��)�#�W9��\0Ǡxf�uK���l��Ğts�8�g���U�Ʒ�j)�i�}&��%�J�1��|��~`�>�+������[��	s��23��+��\Z5���oy%������$����W��d�\0�5���U���R��^4�ky1����8����Ow�����\0C�\'����R�� \Z~��Eck:l�,qܬ��#�e�=�#�{�/j6w<Lm�#�eH62��؁[�5�e�8�?	x�-N[�5\"�e�PL\0PRys�\Zv`u��\"�]C����9�y`�	ؔ��Bݹ\'����{K�Z:�嶧���Q���Y|��� ��0;���Ǫxf����עf���!V�9#P����Ol՟�����6P�]�V1��K;��ܔ�T�p;�����|3��υ.�	d�AlN7���8��s���+��5=OJ��چ�/5�ۙ71�\\g�>ٯ5��ǧ�6���]�Iy����Ѥ!]�F;�H<�R1]o��]\rσ\"�4k����Q�s<(|�d���t��u���֥e��;G���H5��<$�WE���O�Q�k��=�uM)�o��S3�Rx���HL�@�2FX���k�r1��2�5��T�>��h�C�i��ە}��fJ��s�x�g�jέ�G�o������][�\Z\'0{pH���*�\0�u+�\Z��m�\"��@�F��c\n�=��d�C��川�h!�܁\r���+:�����>�<rK��6u\Z�Ϧ��v>|�r$�)1@�%��\'<�U��r�O_�\Z��i!�n!��J�B@!�\';�?�\r�jZ*]Oqm�K+���Ur��y\0��H��\rF���4�1�(&�-d����݂��q��q�M-K�|�9�i��$B��\0�1�����]m\\�u�zm���O1�n_pu\'%��pA���/w\r�įX��nn^�7̪�I�A�/^���g{��Mkp����i^��\n1�7�H\r?\n�׺�ޫc�[A�0FXK�A�y?���<O$Z��j	Y��K��K	�_b���n?^����mGI񕖩�F<�a�9 �G8�!�9\0g�D>����I>�h�\\e�(cX������$)��V7U�Ժ=Ō�:EݥÄ�;IKK\0 |����<z�s��!���I�#����Q��B5�����Y����\\v�׌�g�L�ER\0��(\0��(\0��(\0��J\0Z(���(�0��(���^�KH��;w5��k6������{�7[���o�ؙϧ `�\Z�_��6	}?W���q�N;5k$؃\\?�w�7������䒻j�u�,��\0���)p6�<؊m�>:�\0��W��\0$��7��� �ᳲ$^j-�L��`���ʡ�~���;a�o\Zj>O0X]F��^c�\08��� ��[˥��Ɨ��<�hш���Z2����Hc��z���P��ig���u�Y��u�҅Y��v�>K.X��Ǡ�#��B�[�l�v���k���U�l$e�����\\kk�����{m�%�*W2\0�RN89N�q��\r_����5���HԮV9����r=F\n���NzV_����i\Z>�6�������J��d�P�q���߾(K@6|9�K�Va��<�4ۇ�˷o0����NA�3�Y�~*���\0�x��N�8`&�!�X�,@9\'���S�~��a�;�8�q<W�1���S�PJ����j�v�𘱹�P�SK+��`����#1����6v�*���;�--���`��[vs.�Vc���q�8�MwY��]���i�q��������E�C�VO���2O�FX]m\r�Av<�d�*H.w���S���������F�Z}�=����r).�v�Q֊����\0Z))i�(��\0(��\0(��\0(��\0))i(\0��Z@RR�@QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0%QH�(�aN^��r����	�EW@��zө��D�QEd0��(\0��(\0��(\0��(\0��(\0��)\0QE\0RR�PA��Fh���\0��p8�P\"���A#�8�̀��Ԥ9\0�K@��hNv.q��m]�����q�)Ԕ\0`g8搪���?Ju\0�``Q�g8�����B �F1��JZ(�h�h�2)C�H�Ӈ�S`c�\08\0\n(�dS�[ܮۋx�_I0�jEUE\n�G@--\0:\0>��T���▖�Ĥڹ�џ�:����C�.��C�Wʳ��|�T�N;�C�֥�Cg���G������W>��k;Y�I5�28�΀����P��`cҐ\"�v�c�u%!����\0�P\0\0J(�P�:P@#���\0B���(���E-%\0 U@�\nP\0\0�E\0P@=@4Q@��i)�QE�\0�֖�Jb9KK\rP�O��eӞ;��,sc;�el�\r���ӷR�ˍ�F[\0���O��:�m�)�7Q���SWӍ���t��$���� �WU��n:b��M�3+�W\Zզ�h\Z|7�>hV�G`��G9\0~4h\Zuů����_�$��9UUQ ��5�E;�a\Z��&����Qt�1d�\\��9	�	\'ێ�\Z̈��)B0T�1KE+��QH�(����b\n(��)h����(Qڊ(��#*��*�����@:1I�I�Q�\\R�@\r��lPOS���TB�OR-j\0��6���F�\\sKE\Z���%A#�\"�UnA�IC\0�P8�\n(�P�p:�V*��Q�UOU���(08�Q�rёӊZ(\0�8�3G|�(�P\n\0q��J(�P\n�h���>�QE\0!U\'%A>���z�~��PA\0�\0�ih�!)��~�JC\0\0$�2z�Ӡ�E\0�C0{�T�\nZ)�`c��QH�)i�@\0$�2z�QK@Ģ�(P\08�K@@8��Ҋ(��(�1h��b\n(��\n(��\n(��\n(���������\0ZJ(�0���b�Z(�I\0�����PJ�2�=�TD��UϠ�:�,1��\0�\n0\0��P!�T�\0�ET�b�#��:���QH�(���)�(��\0(��`QE \n(��\nJZ((��@����QL�(��(�ES\0��(\0��)\0QE\0QE\0QE\0RR�PERR�JJr����	�EW@����OZ��(���aER\0��(\0��(\0��(\0��(�QE�(��.Y�Z�gp��z��&7G-�+.FFA9�E_�M�t�G�g������\"[����c8׏ʚ����wL�\0���\0Ʀ�����z����#�����?��x{��:g�G��˧��|c�ⲱ��O�;�0���p8�;�I0;�)`���<��&�C��$�U�WbB����~n�*��SL�$X˨v�\'�\\\n���&��(�v�X	��Y̢ك6�$�x�?���u�Xb���너,��7������{\n�P;�+*��zN�s5����`P�q<�P# ��v��=�ݦ�e{���ms���`�8\\w�zc��jm�T��&Ἄ��8���|Q��w\r����d%�tIL+��`�ڹ��x��N�0R\ZM=��8�\r�\'׎1�)��⒩Y�\Z}�uamr$��8���~���\0��Uڐ�Ź�^�j���0D��y�\Z$l�@�G>���z敥i˨__E��d���3�h-��x杘\Z4Vf��T�&���a���C��w\r����FpN;֕\r5� u4��|AԵ��},o�B�;��V �l�\\�~�m�츮��x��b����2	�FR2�E��fU��}M�\"����e9��V����}��}���,d��gs� ����M[������n��oⳒ_��n�3*`��#�}��la۠C:!P�X�\\�d�ʝ\\�Ư��p�WS^A;��/�������>��+�+z����c73�\\$jfv�\0rOғ@Z����kM�Z�l���l�&FVGC�ǿN��@��â8�m@�2�aI�L����v��8��\r�+7T��\"x!�um���ۯ�����|S�j���}���(	(��c����&�06(���K-���؁yr�mj	��\\���,}�Ѐ��r)k��m}3h�跬\r�3[8�9@N�ӧe�j�ƛ�$o���l��D�$���=z\Z����x|S�O����	�C�ʂx�1c�@I��4�\0�:����g�E-��@`�X�7~��>��06h��G\\Ӵل73��F|��yXR��\'��y4\'֒�3������y��s�8�yY��Q�43�0ʒb����è8�=+*��Z��6VڜO4>z ���y8�8�i���	?��O�ybծ\\��U�0��n�zq�N�nQX���B�+I}�&�D\'��,N?�cn=�{�i�7�����$C\Z�;>9<(<{�V`^����sL��纴�\r\r�2�]Yey!�\0Ef�xYl���䴆0DN[v3������`ttT7�څ�7�����(tq�����@Z(��\n(��QE�(��@RQ@.��\Z����k&Ln�[�V\\���sЊ���{L�\0���\0ƹ�7M��~\'��/�-n�#�+��i��@}������L�\0�H�\0­��kMoH��Ag���LA\"8n���\Z�\\\r����|Z��V�����Ȍ o���_z�H# Ғ�Ep-c��>+�#ګ�<H\0¨�ӷ�)~\"Y��\"�Ɉ���є���w�|����=�d���j�8�}�>���������/���$�������2:���j���caq��9�UgH���r��qI�/QX�x�A�I�S]J1i��wVR��ݤn϶*;�xj��+Y5�_2P\n�m�3�,2���G+v���j�\Z[@��7�}����}�A\'���i�\Z֝�5�[�|�g\"4m�0���B��$�Rk���>�	%mjܬr��.�bøP2���{�۝GF��̷����M�$<���F�H��c�x�N�\r(�%�d����ee9�\Zudhw\Z�����-\"$fG%��w����M��V�syoi�Y�FaY!xğB���8��l�IY��!Ҭn�{�f�\"E�cdn�܎y�$�����Cj��[�����U����u��U��o���-muXf��i�Np�|�ٰiف�KL�$��Eܒ)V�A���~4�$���g\'*H��\"s�I+����MwH�i$p���3\0Rk\Z�S�_.���K���	H����q���Ձ�MgEeV`�(\'�g��sŞ(:����<��J�Le�� 61վa�3��>��\0���Jk��plT�H���ʎ�dU(��Ee�x�E���N�Ԡ��}��@�\'����4?���ť�,�D:�d �`3�{z��`k�Yw�!���$����� ������v�8ϽY�5+-Z�/4�����:z��c�+0-n]�w\r��3�)k��m��<E���-�����=�v##����n�(�\'5ʯ�e�`�}\0\\���r�p;�)	\0N\0�X\'ƞ�+ja�S\nN�H\"fo+���$�~��h�(%���s����x�M}&�����8����c�7��z׭K�7�ܷZe����p��7\r��p8Ó�~_Z,��}�]M���ou8-�]w������zw#4��\Z�4��w�<�(fB��2����(�`lQX�>(ѭ��=�?؎.\Z(d�b>�UHc�۽i�OմW08xfA\"8��FA��j�RQJ�-�S�E%\\���.�IE\0�������\'��(g�u�>9bb��r�U�PA5�\\���;Q��Ro��+��&ƚvf��8:���@��\0�\'��������jŖ��jlu;;�Uw�urL���Ϋ�\0�3���\0��	�W?ggc��\\YZCm�>JB������(Ӡ�-W����,䴼�e�Q�F�^o��f����Z�/��G�.��\0Ǣ��}�\'4����� f���X�Ϭ�v�h#iR�\0j�g yr0��G��֍����_+���&?�/#y`�J=\0Ѡ�$����\"�e�ܺ���qeo!1�w���pGN��sT<7�&��eյu�$d�\\\0�����9����#ڄ���]@��Mи��V�֥�{L��7��:�	�Z,d�p�6ܹ�}�z֨��G��Y���~��?s�1����L�U	u�>-.\rFK�-��-��M�*�$�����柨�Ig�-�H$hf��}��pW\0����֍@Ѥ�eWR����=�;ᵍ���\0��FV�\0�q�~4֨ʖ�_i�r|F��\0�;�$`H߰�П�px���ZӬ/��睾�:���y��p��{��>���Ef��e�s��ܖ��.&c������;b����t���6���0F�i�q���+1\Z�Vp�4�����>����ǀpx<�qI6��@�/%��\0��Ͳ�l�(ۻ!@�B;w��\r*�)��!�9lQ�0;Xu��8�zV��k\"��K1�.e*U���\0}y���5GÓ�fG�.49m����EbI~NIo���#����j�9�h���c��PqЏJ��|1?��\0��n�\'�-\rýăr��\0���c���OOhl����X�$�����T���+�֓�\r�+/S����Ag�j[M8,�L��Rz(��LҼM�k��X^��0�����B���g���E�\Z�RVMǉt�yg��,�ݶ����*���eR���ע���4��?햽���Cy�\'��x�\\�[�Q�`�����t�#Dr1�N0�<�Jv`m�$�8�t����\n��>�����O��\0v�.N��#��gڱ�9�}>�B����\Z��w\n�,�jY�w�N�3�1�t����AyR�q*�G��]��yZF�\Z�d��0<2���eq�\'��X�A$���n�Ee�1���.?��q����O������y>by�wl�7c�q�O�!�O�>-\\ܱ��g��Ҝ���@$]��u�=s].��iz�s>�v��-�E���}Հ>���44��w��\n���^�H�cʐH�g.�Ts�Z��k�F���ڄ0�����|���FX�22y�f�%g�:5�鷱ܛg�.��y�^����+���m�9��1���E ᐓ���?�҄��mI\\�4K/�nmkF�}>�C;�4n��8a�y8�t����/J��]�\Z�hc�4ggb��A8��q�M�.�آ���kM�\r��m\'�2edou`�=8>��^��B�3��������-�t�󍥕H�5:��qq�&k���% ��������*B@\'���E熥��o�M�%\Z6������ϛ�q��T�%j�M�M��,�M8X�dBF\r�p\\����J�tk�X��Ʒ���]�(�r��FxaY]�V�+��4��i+�jzzCkh�1#E,\r�\0\0æ:��zݴ�Ҵ�\0[��,piq���@�6��\'#�$�Z�\ZTV\\ �\'���J�*�\nKo$~`Q���Jө���\r\Z��]��,1��h�0���,����f���M���&�B�h$���w)*��?NzU8���EfI�H�`v\0�O�>�o�����T�l�|��������x?Һ�KW������-�_ˆ5Fwv�U�sӑ�K����CO���J{�-gc5�x�\'���L�\0����N�-�Y.�H�c\0�[>�q�=�ǽb::k�ƌ��QFY���j���e}�Ǩ�\\�%���e���Ls����r>4�4-c�\Z�ǒx�b9~�/�情��v�� ��4+��v���He# ��E-ahw��w�4i������K1�`\09\'�U�3�ZV�=����t�I��=p���5�\Z�W=/�<1ڃ�j�dbI\'(���8�[�Mͼs���C����E�J(���IK@Q@RP�IE\0-Q@�P�IK@�PERQE\0S��6�zUS���QE� ����i�Q=�QY(��\0(��@QE0\n(��\n(��Q@Q@r�\0����-�X����_�z����7���r�_d�W�\0��:�E��t��j?�Z������+��En�XM�}x�-#�\Z>��é[�<�̜���gN1Ӟ�0ӊ����M��7����̚���\\�FS��H�����E/*�! �ˌ���Es6>\n�O_d�u���O6VFK1�O)��ׁR�3m��g�+M#���ۋG%�2�$r��sѽ��k��U<1�U��ͫcL�ƛ��\r@����v���L��3��=\0�h���߉�u�/oŢ��%d� ��\\󓓜�B������]x�_�M�X�#-�ӱa#�!\0L���ƹr?gñ�����\Z�?���_����!{�\Zh �h������\'��M;I����h��TQ�-��3K��`t�\0��s���@[�lt}WO���!��K�Im�)��FC�r�&\Z���e.��Iq�+���,8�<���|\r�i�E��J�K���0���2�\0g>���xv	�S�ooE�1�k��[pr۞s��q�G2Lx:���\0��Oe�ۊ��~�L1�1<��y#s�3Oo��N{fe�+Y^6Q�!#�R�|-g�k�Z����5۴�[y���ܓ��I=xϥnu��)]\\k��O��N�d�HYdV^	,���r+���o�z\r�(�Ow�\\��谮�?��	����Y�g���Dy=q�%s�G�*MS�z~��C���Z|X�ͫ*����YI<��y9�̮�peH�de\nX(��g�f���;I��d0#I#`��I�砥�?&�8���.�9f��OsY�$����7�:����p[���3���T�f6��kRi7�S�lO���-��º�a�N0�^�=sM�m5ͥ���\0��H�fW$4o�R	��]�x��$�=��.�9f��}�����*��yzn��#.�\"0\0\n	�=��-n\"�������\0�z�w\Z��{&*���X2A��C�����\'����Ԗ�/�:ya?��g���~z�O��յǊ��@�wkuo����^�rۓ�ǿ�>dg�-��?\r$0�\Z&�nQ@\0���뫐����a嶖�\0gV	��_}�ϰ�?xv\rz[G����ZH&�-�To�I�����^\Z��Cki�ٷ�qn�$��1�v�̺����S�&DK��}�m��4J����0;~��k������i�[���f23Ff$�����ך�,�5�ZZ\\C\'�.亄�=���$�!��[���1Yq|?�c�e���T��B\n�.��s�G9<��M5Ձ��k�3B��\0��b9\nO#�p?!R��4<\'(E2ݩlr@���A������V�R�Li/��\Zc+��*�.!�r�ǁ���Ժ��-�Yk^^	��a�Dc=x۞{��]�lW-�\rOR��ൖ�GRe�K�3�\0!\n������nR�##k+��:\n],W��&�_:F�uc���\\ʥ1����+\rn���a�\n�\\-���9�C����tV���\0���M3G�DWGՠVVa�5��oZ���k���c�Q*���I`%OL����[}cI���Ge��T�d_5�,T�2zb��h�+[y_Ï$�l�YA�[;���g�G����l�~k��vأ��xnnk	no�62	cX]UY�0�6��?�Z~���mSZ��9�n�]=�D�8T$���\0y�G2�ᴺ����W���K�<��08\"6��^���f}�@�g�!����3[�,�|�����\0����s^�f���	�;\\��(�����v#�:g�q�Y�\0�j�|?s���Cu��2�L�3}�f9�=�M�1�/�\"z+��� 69\0���\n�����7�?g\02��c��h�>��]/N�K���`�v����F�v�������M��n.�c���(�q&X�7a���sStM�K���ַ�)�Z�/4	6�Pr�Fe9�9�W�ǌ��!7駳����A��G\r�q�03�8�m>�֓8�m@Y;om<ܷ����^��u\'��^ռ/a��6���^Aun�^�i�[�$�$s�OB?JL�$��3�u�L� ��eء@.��0	�Fj?��$�5X�E��\0iL�Qv�6�\0z}{V���;L���/:+�����$� �眜��5��{-F��4����r����$\0v�q����͠~�\0�<�?����z�k7��%�����m%�HQ����d�\0\0}iTI݀�RQ@EPE%\0R�R�QE�3��?�x���[�]�s:ǁ4-gR����s=ª�I��\0��~UK�����g��1��l�}+G���f��|^��c�o0�\0�\0�]�s\ZG��Y�T��t�`�Җ\\��y�8$u�5�ȥ�t�X�z���)\'����MC[�z�,�6���\\�@w#��<��i�=&�O��\"m��j�H�̸yTe��\08<z��ۥ��m|?ywuo};�ҋ��6s���y��^𵾻mus��WE����66��|��W���8�\Zո�9�/�x�L����<?=���Z\'��ly��,��BXI*9�kG[��ZԖ/s�_G�)h�,�\ZAћ�<�]M>�A[�u5x�+�K��@VM��������\ZJV�յhu_�� �M!l�Rv��݈`%��F2@��#�7��[[��_�+j�ts&�\n@����\'�Ɠ�Z=����Z��ݚrg�Y�n�Fe��\'\0`��Z���:��t�/�[�!o6��E.\0#%Wq��Ǡ�U}\0��f�����K�^{b�J��|�aܑ���)|6%O��)Y�K2Z�*�A8�$�>����^�Z����������[9|��z��^��im<-�Y��mn	.���yLZvq�y�\'�ԑ��23��?�$�I�k7~Qʌ`}9<{��ࡻ���mr6��?4�c�nh��E����Q�$�s�$ydR�����r99�)����/6�m{|���̾b���n\0<��h��5ɏྉ����R��L��J��W�>��\Z����Kcs},֒�ڻ6ݎH�0y��aU�</���`�~O6���m����e@��=j���;J�	\r�z-Nm㼸�eT\0���7$G\\w�I����&�\n._V��Q����\Z�����\Z�����=���f�)��VR3ב�}Na49�Fm��� �5�2�cF�@?�܏LV���h�\0�	�%��䉶��\0�t��׾s޴öQ�7zLO4q�o3�dg��Id�3��@�!д���y���g*Xs��8�5Nw@h��)b��h.oeʁ�F��#�������ܸǛ	��G�\\����=>ݠ����h�����P�3��JQj�`tZ��	�_G~C�-dy��;��N8��/���q���A��3�KE����)�@�~`I��ɮ���6V��$׺���@m���1�3��N�O֩���&m�*��T�ux�[��\0���c#��>�i�>�X|A�?-�wjJ;�TБ�ԟn��1)��b\r�`eFy�<~B�����v�1�MwX�$�Xf\"@@��$�=r:�k���4饽���9Đ�r)�3nRX�:�_SG2��F�⟅آ�1�d㓄$~F�b#� (̚.	����V����<Mi��{z��lQ#��A۞rs����ͻx�?5��E1��������ޜ���4s+����͓�qK\"����i�\0~)�Y�M��~��7H��vҬ�+�!���(>��}+���ų���v���*�\0e�Bˎ��+��������K]>3:DnV�R�@���r@�1�c9-���Zsi^�����#̥�q27��=���=�!�f�i�L�����]m幺������1��@u�>��Y|:���0�����lۊAvI�����&��>�qc��w����y%L�����8��+��2�>��v��Xb\'��5�fE ���9#���]F��;%��E���א��I/�2?��P�T�����.������TIru�~Uh�\'�=i��P���9��[�����Í����s�\0}V���?Q�m4��!��$�D���ː�П�\nMo�6�б^_�,\\I�7V�I�ׯ<�W@fx�T�I�UO�u����$%>1��F�{���\0��k�A}�+-jK�Ś�H�#��\n�py���oZ����-svn�/)b��c�rq�g�|�X����<e�b-bYncyd���}��m��:c�+s�\r���9��\n!���px/J���u��ɿ�f�,���v�3�ORq�V���[O�1��o3B��f�����>���&���\r\Z(�����wh���IKE0\n)\r��QEW��k~-||��H���b�Z�/>�n������v��V�Ϝ�nc��{�-[Qer��W���\0�����g0�N�\0�ZZ��MPk�6�╡�[2�2	<���@7k��o��.��uH���N�hȑ����~]��]Bn-�%�XKq�D@a��5Gú��t�ӭ\'��fe��1\\�@�\0���H}/L�ԭ�C��SY��{+���\\,Ф.�\'��<䞚�{I|m�ç� �����N�yDU�9H�霐l\\i�w:���І����ɒ\nn[��Y�>�n<Fu�2��O.A�F���nۃ�q�p2\rW2lG;�觴�W�m�d����=��89��k|<�~��n�>S��������h��t;K�[(d]�d�IY��O�{��N�|9c��i�R�$R#&�pœ9�9���v\'49&�m���cekp��\'�E�S#�2=�b�73ͣ��#��7Om;|��@w�)(=��2+���o��%t�I�%��L��y `���&��G��]�Y�\0/g�ay=T���\0�\"�`9������е��6�gdlʹ\0 ��G�\Z�_Y����X����5\0�+3F���ڈ8\0���jk�-���5���	;�\n0���<����i>�Kh\'�p���\\��8��)]X\r��\'�Xj�}�)v�8;&t�\\c;H��u�J�H��e�7&2>��xj���]5�����̒-����պ}�������s��g����\"�7\\��-#9�P@���X�u�q=������u&�����/3�]���~�;�K��Z�T�-ui������E��S׿�C��N�|/a��V���you\nye�g1y���b9�^�~�w]Fe�6�V�B�,N�RbU�=?}A���\r�_�qe�I�i,U�p�ʝ\0o���O��oN��[�B��߶�U�,��H䓓��U��,�]�Yh�{�\\����cבؚ|��#����M8�b����˝�\rg������ǣ�9�	��\0�8���U��\0h��[xs��s�\'�0pO \ZӃG��\\��#��1�R>z�����U=_��\Z��m�I5�ݺ�Z�c.�\'a#�rz`�֋�3<0��+��-j�*����q��{��~���~\\��\"��xf={������;�:f��M�ڬ�s:}�3����N}i4?\rZ�sj[]]�-��l�3�a�9(�h�VÏgo��\0��e��S��cN&ѕ�H�r*��2��� ����)�fHo(�����2�����M+~��jk��}A��[�7Xa�@\'�9�T_���.�s6�un�+��t�f2\0P0�`������N�T�i\'����9���?[-�O2�u��o�>e\nX�y�MG��:���y$�h�n>Ω/�I�3�8�n�=kw�;MnY�Ţ�������=�\0�����j���&�Į�5����-\'S!��c��v��/��N�q{iwa%��:�O�eo�A���5�F��WǱ��ۭ��Ɗ��B��]g�QG�tf��0��{��ש�&�,$�%ѣAk(!��Hv��e�I�9�r	�\ZF�����ۼ�\0�_sc9�}���m�h/ċ)/�	�G�Ƃlg#o�t\Z��Ơ���4��`�l��������i�5ϧ�,�ne�J����c�Hl�Q]���WV��1��Ox^����V��	�\ZB	=��������+����^�t��I2��%��3\\������0=��Z�ֽ���n�Ds2Pۀ`#\'����Z�T���	\Z&F{~���t�~�\0�ɶ1���q����F��\0�,�\0���7�j���/����c�q��y�i����C}�Gsw%��ĉ$��c���p)�!��������gQKy��9�O+��(͎���vV�Z\'��m�{�h��h�I9e�28#��U����\0jK{�֫9&k{k�R�9prxLU�W��:���k���æ��o.0T\0�$p�&�mn#i#D,QK��@���\'��|X�\0����G�\0�\n�OZ��/�-�Kf�����[�c�eP�gʒz����O[���:V����;���c$w2:nQ�*[��G?����ŀ�j�x�Ԅr:�\\�����\'��n���Y�nn&�1��l�o�\0d��u���V�Y�m5)n/-��AU��o-�Obq�rz��;�\'G7Qx���YnB[4Cn>S��{���+;�\0��YɲH�M\r�+`������|[:g���3\\�խ���\\F#q$����\'�5���}<������� �1�\'$�8�8�7%`)��+��Ŧ�b�%�!��\0J��߿=���_��?H�jV���gC�Hy.-l�ۈ�X&B� �O��)�ׇ,��\"2�{�o�vI�����qϯ֕��x�U���\0�\0�Ly�W\'�M�L�����XY�˴FIϷ��h���\'H���xYB<�`�Gb���׾ri���i����;���� Y\\�����jB%�l���l//������Ws��c\0w<g��jЮF�n����G<�A�B�3�@��������2�)08mX|i��gFؿ¬�V�֗�jZ��4:���EޚO�T�#?>L~�,�+cg�9uԸ�{فY�\n�##��������XuF�oش��0IP���U� 0|a�A�����SE	XTq$PTp8#�lx���<Y�[����ݥ6�3�Xg���`{G{\Z��t�O@��d{�l��mH\\)`�\01 ��y�K�x^�V���k�خlx��	�H���9�0y<�S�z$/�\rt�u�֖�Ѡ�HP��$�c��\nO\0*��|���N	����}k^��\Z]����+p/\Z!3\\;\0�d���=��&��M������������̼py�s�қ�`�=��.c�|U�P&�ԩ��M��r��Mw0X[������>��c���T�G���+���&���fi��\' �\0�Aӿ5��\0\n�L6X6��5��	no�͸m\\c�����O�n=�\\|;��&����x��SgPA$����>��/�,��Ue���څ��\ZVSVX�B ���V�<-�^�z�$��+t�Y���cT:���x�!{������S1��\0i����b���2Y-�\0�*P`��<{�>��V&��mU��\"�������� `H9GL�=nR���QEHQ@%-\0QE%\0�Q@Q@Q@Q@Q@%�\0�QE!�9zSi�Ҫ��&-Q]\ni�N����QE�(��(�EPEPIKE\0QI@E�\0QE�QE\0QE\0QE\0QE\0QE\0QE\0QE\0`dQE \n;�E\0QE6ER\0��)�P(��\n(��QE�(��`QE�(��(��(��(��(��(��(�����	ފ(�0��(\0��(\0��)�Qފ)^���Q�6����BNvJ��}y�R[��k[�C0���\Z�U�RQN�袊@QE�(�EPER\0��)�QE�(��\0;QA��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��E%�QE&0��(\0��Z\0J(��\n(��������)iJ(����(�0��(h����������J\0)i)h\0��(\0�������C��(h��b\n(����(\0��(\0��J\0(����(�0��(\0��Zb\n(��\n(��\n))h\0��J\0(���EQq�QBh��� ����\n(��\n(�����\0Z)(�����\nJ(����\0(��C\n(��\nr��ӗ�U?�LZ(���֝M=j\'� ��+!�QH�(�ER\0��(\0��(\0����\n(����g�W�,�t�\Z=A���{�&�	������\0�N�O�s��\0�b�@��.�K�1Ut������A�a�vOM��~p��>���θ�C�K^��\0`��rU-@�d.#c\Z�p>U\'\0�L��	��_�~%�M��Sy/�?�ߜr����H���bx�+i�[�UV0�NNO�{ww�V�\Z��$ھ��i�:c�O`WxiC��Ӱ��1�V5b���zn��n�]�q&*��#�w�+���k�Qk��u�^�\n嶲mE\'�|̜{gҺM�\0��e�j#\r���+�n<�_]�٫q[�&���]�h���J�\"��I�~pFF8� ����\0jଢ��⟉㱽�Ե�?3��a�&t������!�j�z΍���sy�ʡn�aD���ʌ\0F9�풥�lh�\Z��7\r�X���;,J�[#ןN�[�xn�&�O-�o���è8�G�s��5-N�XMJ�^{mFkU�(U�����g\'�5�����x�U���䉧��{|�n�I�O^w~4�o���׺��%����j77R��X\r!�,��;��\0ws�:�w�s��(.\Z!icW1H0ɑ�؎��lԔ���)h�����������(�0��(i(��-%�-�P!i(�������JZ\0JZJ(����Z(�����\0ZJZJ\0Z)(���J\0(��C8�o��/�4}\Z= Eb�6��.��Ԟ¬���\0�c�\0&*�������~�\0�-vU�v��k�\'�񞛢k1�;ԑ�Y�\0�����J쫉�?�xs����\0�$�۽)������\r`h�u�j\Z����\nȨ��@˱��p8���[��:AI��[Y3�k�k�9b$�oA�<�k+�.�?j�K��{�Fꈹ#� |���>�����|��2�\'�$o�d�X��\nvI�\r9���K��	Hdw���V�<Mq�>��\r7���(���n�y$��W\'yuwu��r�h�6��\Z��>��N��&��\'��x3OCu��p�O0\01\n�1�Q�1�4(����\\��{�\r�zUĺ�7\Ze���5�ۄ1�����\'��:t����%�֑mwul�Q#�%��\\9w�(X��9�K��E�xCS�/���o��[��%�噃�8�t#�t5G�מ+����j�q����c[`^h�9�\0�\0�OJ\\�v��e���N���=�Z1�Y������\'��v�u-����H��I*3�*�?�g�լ���d.��X��K�\0��[K��A��Z��-g�\Z���Z)Ӗ��!.�|�	�6��a�������F�q����O�B�X�Km����X	<9�_j�ƭkqg0�J!E1�3s���zc8����_\'��K���[��e˼���;dl>٩u�k\\���+5�Z����M�ԞU���%�\0c�ڻ���5]jt���M.8���34�.v[�8�qԓ���j�����wӥ�->�$�#��B��$zK�����5�{R��i��k�>���u�cS���9<��*\r{�bc���a�y��.\'�%!L�2O<d`s�����wX���G����Ιj���r�p�?��9�j�w�i�\r��*�-����q�J�#8��&�2�����Σ���P��]Ѿ�~R@�\0)F9�&���u��k\ZD?��d�U����+8���\0����L�ҟ(����O��~�Z{_����m���l��^H /8\'Ӝd��5�E|*��ڠ�k�\rcn��e���S��[#!G�G.����۝wQI��&+H��u�t�>U�������צnZ�\0mE�6�vY�����V}�(����9���q��K��#�E[{�<0	�V�N\0\r���9��5��k�ZA�^\\F�1\'	c��}�\0��K������k�������\r���J��<��ߨlq���dz���k���m摧{+wk|��T��=�I�I��sjw\ZL2����^���F���OQ���WZ���ᴽ��\r����4�}����s�V6��;�K��ΰ��a�w˅WL�x�{�J_�w�|3�[��_�k��1H�;c����4��P:�+����g��uΑ{���P�$�Fp˖\0q�Ӷ=���ZMX�(�E-\0�QE!�IE�-%P�E%\0-%PERQE\0��R�RR�P�QE\0-Q@	KE\0�QE\0-%�\0��RP�IK@�PKIE\0-��\0QIE\0-Q@RP�E\0QE%\0-Q@RP�E\0RR�PE-%\0-RP�E\0QE\0QE\0QE\0QE\0QE\0�QE\0-Q@Q@Q@Q@Q@	KE\0QE\0��RP�E%\0-%-%\0QE!�Q@9zSi�Ҫ��&-Q]\ni�N����QE�(�EPEPEPEPEPEPW5ֱ�x�^�����\r�B\"�.Uc8<r*��5M:��/o�m��Uf�P��2j�x�C|�ִ��\\\\���Q���\0��Ŀ�\"^�\0���\0�U}4���Ļ^�B����Ţs0�?7C�y|��\\u�\0��/�,?�%?Ɠ�\r��:���ӿd�r_tk�KK���w.�gr����\\�`�2T�{)���������I�\0	�:�:���ԫ�@��Ƃ�>6z|r�q����~S�1��ݏz��,L�-��ɟn�ܜ���gb}ؚo�$Z�_��;*pGړ#��o����\0�%?ƞ�@9�L>)k�2X_G�h�N��1EP�1�8=>��\0\n<�����m>������ۺ��)##��qמ��<C���֜��?Ɲ����cO�\0���\0\Z}���~��\0���ayk��N[���G��ߎk3�:]��?X��Ɨsc3y���Q������o�����\0�to���B�\'����\0A�?�\0S�iݠ9}_״�&-�º�����xd�G��\n�Rd\'���t�^g��n<ͣv:g�Q_�o�u�8�����x�Cn�Μ~�)�4�w�\r*J�> ��]gO[��\0\Zj��@o��i��Q�\0�+04�k5|A�>v�:{c��������1a�\0�)�4Y��IT������\0���\0\ZC�h���`>�)�4Y��EP����\0�-c�\0�	�4n�����\0���\0\Z,��Eg���7�����?Ə��������E�\ZV����\0A�?�\0S�i�41�Y������ҳF������1��\0�J�\'�$\Z\'�t�\0�	O��\r\Z+7���Zw���о!П��Zsc�����\r**����\0A{�O��~��`>�	�4Y��IY��h����\0�%?ƃ�\r!s���W��J`~�Y��Ee��|u�t��\0oq�\0���{���g���4Y��KY_�x{���g���4�M���i���ӳV���\0������?�.?��o�{L�\0���\0Ƌ05h���I�=�\0A�3�\0��\0\Z?�&��������h�R����&��������h�\0������?�.?��\rJ+/�o�{L�\0���\0Ə�I�=�\0A�3�\0��\0\Z9X\Z�VW�$��\0����\0�q�\0��x{���g���4Y��Ee�O���i�����\0	7���=��\\�E�\Z����\0	7���=��\\�G�$��\0����\0�q�\0�`jR�Q�/��]wL�\0���\0Ɯ�#�W��������NYu����Zxz�P��(B:0@J�:9�q����/1��%�L�q����?�It������\0�C��kN�\0���\0\Z���ھ���Dѵ9�?w��io(��9^U�\0�X{��0+�+4x�Cn�֜~�)�47��%��ޜ>�I�4��@9���𯋵N	�4�Wk�-c�$��nr�w1$�8�mwR���ɴ�L��K�򤹼�hc�6��2�`��[�h���\0�%?Ɛ��Au�8���;��bx�C�/�3��d;�H���>�RNRpOMf��I��Z�MUf{�aٷH�A��� g���ƽ�����\0���\0\Z_�����?���Bo��\0�f�y�>��}���Q��G���G\Z�wq���{�z���5��b�L�Դ�Q#Y��7K��)�`NOQ���kZKt�,��t�\0\Zo����1a�\0�	�4��@+iz��ݵ��ޕsgj�}�L� �J�\0?\Z��\\��K��I���-�-�NA�q�}+���ѿ�/a�\0�	�4���ִ���O�[l��Yo�=������H���������\r��Fō�	#�1�c=~_ֵ��4E��Ξ>�)�5�x�k�+�-�\Z����[���\nZ]�K)���}sM\'�������>\n��i��Z������;�ô���z��9��F��|3�Ӭ⺾ԯ��̶�Y�ݳ#9�ѷ���C�\r-�W�t�;v�Gn	<�)��Ztִ���O����y��ǅ��{m*k�[+�^[8N_�Ue*0rN�j���-椲�xZ�եl���@��~,��޴G�4��sM8����i�_�]gO���F���h��6?����/�7�D�\\��H�r@�W����#�>��]��[�G���K���!V�c��S���|u��\Z�i����A���u�<}nS�i������.��i���#[Ⱥ��®6����s����ҩ��x�]��<9�����Kk_=p��t#����u��\r��Y��=.S�i?�\"п�7��R�%p%��K-�i�����,��q��xS�	��u]V��X��:u�ō�H&�(ZO)�6�(<����53x�C_����>�(?',1,6,7,1213),(6,'ETO Parent Engagement Pre-Assessment.pdf','48350','application/pdf','%PDF-1.7\r%����\r\n7 0 obj\r<</Linearized 1/L 48350/O 9/E 44301/N 1/T 48061/H [ 486 156]>>\rendobj\r                    \r\n22 0 obj\r<</DecodeParms<</Columns 4/Predictor 12>>/Filter/FlateDecode/ID[<460C054866AA094EA09A7E70BDA65C06><460C054866AA094EA09A7E70BDA65C06>]/Index[7 38]/Info 6 0 R/Length 83/Prev 48062/Root 8 0 R/Size 45/Type/XRef/W[1 2 1]>>stream\r\nh�bbd``b`*�ˀC)��Z�@�y.��K�����f�bW !/ұDX\0	1 ����Ȱd\n#�����\0\0+\n5\r\nendstream\rendobj\rstartxref\r\n0\r\n%%EOF\r\n           \r\n44 0 obj\r<</Filter/FlateDecode/I 87/Length 77/S 38>>stream\r\nh�b``�e``�a\0��OP#�0p4 ��B1C)C竒&��=���/�u=08���,����+\nj�	�\0\0>�\r\nendstream\rendobj\r8 0 obj\r<</Metadata 1 0 R/PageMode/UseNone/Pages 5 0 R/Type/Catalog/ViewerPreferences<</FitWindow true/NonFullScreenPageMode/UseNone/PageLayout/SinglePage>>>>\rendobj\r9 0 obj\r<</Contents[10 0 R]/CropBox 42 0 R/MediaBox 43 0 R/Parent 5 0 R/Resources 23 0 R/Rotate 0/Type/Page>>\rendobj\r10 0 obj\r<</Filter[/FlateDecode]/Length 2250>>stream\r\nx��X�n�6}�W���e��2/���l�E2��xaȋܭ��NKr��8ޯ�*�x�o@�Þ*��:,V�\"G0?~+%ٺ�*g�.1�/�\'�f+�-�����dS��$C\"�?��a8-�Jf�(˴��Y�8�K\"`�>�2�P��`}��i�Ԭ2�U�[9�`��j\"���z�L�����ʩ��&Z���)�uA�ɷG���f�tQ6 2^��b�O��̄LyA3���\0\Z��3�����J��\0����	��V��gTBQd�rr�wm�\nf[�*@R@�j$��H�>#�;�����2O�Z# ��Wh�V<-\\+	>��F�i0�@�ee��(�	M7�*�Q�a&�j�䜻L�ydb�s��9/}&�bA�*+kb$�2Ѹ ��ۣ� s!B�	��|&�31���\\(��Fv����#�>ɉ�.��c��r�P6��JxlE��؊��؊�r،l�MV����c#\'4}�&E�3R�D#E�4V!�q�&�����p�7<$����\"t�\r�_T�e��\r���y��rȇG����6�2�ujt���Hȩ�RDHC��!�L�C*➋xHF!B�ؖ�umtBE�(�jwj��ִX<�*����a�s_�<���Clj���Bxl⋸��^�@e$�\n�a���xTd<�2���a���~�����▮�:�f��U\\gY�YV�:3\"�)�U�v����7w廻�ڻZ�w֙53^EuF�i��ufd[g�g���*l�*��*j�*��*�3��n��v��:��i�vuF��3R��:j�j��U�RU�SU�TUTgN�}2ؾ��:#\0v�vuF���@�꨻�E{U��)��T��Ԣ�����������7�վ�H�A2Xg�og*�3���y^࿐���_{��Õxi�/Z����R��܍?�ݎ?�ލ?�?S�l^��>�Lr�G����o!P�\'��`U��O�y<�i*�4 ӛ���EHVex�U�/B���\"dd��њ~�#�\"DNh:�&<�8�K�O@��	^靑�W	����:S�Gpa	�RnRUI.����ӵ[k�y��ëΒK���A�B�N�bQ�C\'�����I�\"�Ti8��8U(��\Z���-c���]�=`^����\"0��߯Ah9�y�)��uO�`�K�R��6���L�pd�]�k{?O���<���տ�6ͱ�|î��T&����&1np��i���>�u�ه���af�Ҹ�c7z��ȱA�di�ഄ�C\\�f�l=�w���\r;vܷl;N=��ܲnXN��[vg�M߾c�Z��wl����.�߾��}��j!e\ZX!1����s7u����u������	�ݍ��۔]ﻙ�w�۷�;��{�0�6=\0���>^����!�j}��\0��,�ƿ�k�{o�r��%Bz��@��p+�������:|dFۮ[������L���\'߷�̱�V�L��\0K��=E}��ظe�i2\'�!�:c�q75�[������xbQE`ࢀ�k,��~j?¤I�57K]l�\'>�ֆ���hVC��@p�n�v�݈���?�	�٘z�\'��0�+!���\rڒv�i4u���+�������\r�B3�N��lc6��^�:o`�C7��8l�0�q�(�Yb ��(�1}��[8�Ή���o��X�0޳���8d�Y�����\Z��mA�kI��n8)�|d%���3c_���*+u�1`:����9�k�:;�۩���\0]�/e&lVh�i��\n�\n��p߶_�b�=1��?�qX���o���`Rw�Q���q�:�/\'�@��\Z��1��@%����~��Ez�쿅�n��8qY��i�����Òn�4�.�����XRHw;5�CxN��<�ߵ�f��n����#\"r�k%�[��:���L��w�>��ywh��M�8��H���L:�}�Sw����4Ë�\"��m�\0�3���|u =,C���L�_h>�\Z5�j���f��?���s@�x`+v�%]���_�8쎬�G��vӝ�p�/��Ǯo��\"�6���6w0M�b�3\0���p�\\w�@+D���ےg�\r�%�v��<㛉�o�/1��o�\')��Zǻ�Ox��~�ԃc�7x�l���[��G|0N��8���+p�!_���w\ZL7�g�Z�?,��p8�2�!C�i��S��𺰿��n���y���������(?#2�˙_�+���������D������$�9��)8��#����?�>���g�1�W�?#y��\r\nendstream\rendobj\r11 0 obj\r<</Filter[/FlateDecode]/Length 10735/Length1 14628>>stream\r\nx��z	|TE�oU���ӝN��N�����	�}�>d��� b 0�&��KpE��G�{�F��ƹ3^Ge��븍���C4s��\'��~u:At�w�}�t���Ω�_����j�BF�\r1�~֜@n��]�1��;�cU{h��e�!���t\\��=ϳ4ʿC���вU����!�]���e+7.�r�N#B��t�kI{gF�/�τ�� �R�+����u�Zw}v�ލ_����=�Əc�!DNAzݪ��C�8��oC�}m��%�GoD�i\\�Y�n�z�\ZB���5KBl~�,�_�g$��0.z�>�u��\"4�N.O���9\\?<gx�������ÛFG�\ZiÙZ���?��>�bt����k�̟�_��7�b>f~�<`>I#���Z��\n���4I�գhev��E�(eBY6�CN��D�@Yȏ�AV$C�]HB�rQ�!ِ`|FģX���P����q�g�&4����QweD~r\ZVj�D�\r����/D�9����G �(-�~�V�O�&�w��G\'�0�q}h3�-���Ͽ��e��9.��f�<ܿbڑ�+@��=x�(���}�$�m�@�y(Qxe�_���w��m�ߝ�q(�{��èC��5��]ж�[�� b_@���*��܄��������:2̴1[�av{��rKy�Q�\n��p��\"��\"��\r�:�n��	�wz��YC�a��E��x��d�7=kn0�d~Q���bɵ<n��vG�����m۵U���~�Ν���S��_W�����x�o{���~���~�+�ڍ]�^���!?�ɑ_�>�\ZÉ��E��X���\'׌9n@,`q��6��D=~,�.Q�6�>(��V��W��S��Cꂖ	 HAsagq�0�y`qgUc�����k���?W;G��i���8v��\\�,I�mߊw�m�o���z�+�7C�R=�1�҃�3�Ʊ؄1�b�%��pf�� ��E��Zx����6[h/�ϡ��y4�TlB��g|���Qj8��i�x;���14\0u^�g�E��a,��:܏� F2�,�z\\�����C�@�x���y�}�)�\nz�	��߇>d��qt=��^��Xad29KDH)m,.*,�����L���g����$��I�+1!�눱Gۢ��l2\Z�:Ix�eF�8�l:+����9k,��t�I���F�Ur�����~�N���F��oe}�14�0�\nc[�Vp�hi���no��pleg[<Q���)Á��h�>��Uz+��2�1��z�A��1<e�\"dJu�1�DcVf����jzw���m�V���$ꇒS��7]]���XT$��|eX��u/+�a��},s���S2Z��7tz;��̵C�!&�����c5�ۺ�a^�N�qWw���t:��� �V�S�4��ʦ]�Ag�\n��a�?<jL�t���W;��i���;|�즫K=4lnnv@�����BxYuw��ʌ�il:ۺi����������K��ޤ�A�Z������_���l﬈��2�4j?�qA�6@���汬�\nP�j%mU͞�d�54UҎy۫��e���6���nڃ\ZxA�����&/T-���b��Q���ӌ���\nsɲ���5\n�6�Ѕ紏����׈F�x����O������\Zݶ�떽�����C�m�j}<uj����𔛚�r[.������tz,�����$H���p`�[3���\Z�<n���M�N��&\Zo�x�	�[k<6mt��_��ʱ��Cѹ���C\"�mvS$�F���#%���h�%��%�siɶ�+��y��\'4�S�|Ͳ=���4�����%��pTe�$͑q24���N/��!���Ex���a�i�Y��- ������^���H��H)\0�������DA����}L���,h\Z��u�nlz�`R�V�|�eMn�Z.��KSn�Bu��Q+r(m�JY-CKw��H���0�8E\"y����\r6��r�����\\�~bq��*�o\Z�B�O��}��_��e�_���p?�#�}�{�>t����p���>����]�u�u0�u�`��N�+�A�n�O|ǾX��}~���<.�ӆ��˅�ӮӁ�L�i��b�1=����~G�o��*�2�_c���\"qQ�	\\^�u��~#�9�x����W�x�x[8��}|�����y�����@hC�O@䏽\\g�~�����^�k������g��<�>�k�+�k,?�~��ݓ���p���s��s�v�������>�kG_��^�s�����GY�~,/r/R1_���:\\7�ֺ���\r��V��{�zC��l����.���b.�񸢬��,s�ߔ�nNI5���I^��cNt���	FGl�1�c�Fٌf�b0MI�7��h`X΀01��mf���x�0�bFA4�\"�2� Rz ��4�Dg��2��.�Dt�b�U����:T�X���;�\"��;%��p��.,�/l:��-͐&�ay\Z��n@Y#��N�XZ�3M]@�����ov^�57�us�¡��p.�ܖЌ�p�]�v�Z���:&��;*�}�Re���[u���4���[������^IE�W]ȿ^�_��iE������b��q���x�X��X\n�U�9)��#q�L�u,�@���8��cq����?oɚ��k�3+zVv�����>~4-AkP\'jG�	�MZ	��_��C���{�����S%�pa�����J�w���g� \'�c�X�!�P��m�DD���\"n/�2XS��9�R�z���\'�c���,[KQ-ԣ;�\"����<���\n�ғn��Hn�%/�oB����$0��݂m�`�~-{r�1���OI�@3�r�&an����>𥺍\\˿�-hU�Ve��i��vq�?��\\�|nr��ɝ��);�\\hupj���n��y��_ؓ�����Re���e�:j���f�9~�ܼ\"���5�,#���巧*FsQj��!�l|�n�v���S��\\lNs���4�/������@K���Hn.Lp$7෌���aL�6:E���&����\n�S�I�����l���4��,,18b����y)k��{��%�8��h~)�S��8[��8�s>�d�\\�ʹ٢2�퓬��m�\'++E�[�-�lN�V�)G�υ]����$6�`ɲt}btr{�٬7K`��6l���(:$�J(��st<�	�v�.Q�$�=�y��4i�uU�Aܵ!\\�me�hs��lǃK+	�s�s�݉�Q<�V��#~])�U��]�i���[���\\ί��lm1��Fi�i�͆�o�}�*#Q��Z�E���.I�>t:1���q�������!�_�\"?�ʣM}Q�fލ,2�@�{����kޜ�����c0��8[�M=�t��v��˾�\Z�s2q6�v\\��M�<w���\"s�Y��Ȏ�/���.���Y,�;�d�و��S�lG����>�@L���P���@�<�<%�ʼ¼FsV���b�Q����Nm۱�\'ΐ��]��$���y�cK]��A���3�sG��*�:���>�\'z�(<�י�Θ����`N��Q�Ӊ=-yy�V��-y�7�7TRh�^%G`j��i��X�1\\��\\_���?���܅g��&f�Ԫ���D��r��xOV����)k�z��5oB� /د@^�AZ�I�g�\n�Ƈ@\'�y�0w;at�c���,G�, ��K��I�2�a�Җ���C%�؇����l�H\r���fr�;�~���}:s`o���~k����\\�x�}f�̼{K�r{w�Vq�a�wS�>�����S�9:��.>^����hX��	;�O�êQ���ks}_�dMr�|�Z�\"s4	O�4Y�i�n�\"�h�i\0U�/̞��m�?��Y�l]�V�+~���/���S+�_��ΉFܢt-��r��\r�]7��퉓��m86�\0�]0	������)3�)��G�����_nK\Z��0�4t�2��3���i���r���p�)w�ɖaMҝ6�l6%�����>b1���\"�pe������P�B�Y^*�8�ݘ����,\Z|�A,ha�U��E��h��Tt�Q<�]�s4{�+�O<����ʬyL���$�a����;4��4t�-�z��H2ə��]\'���%<���z>^��[DFm�3G�,��\0Јn~b��p��j8� $�C�)\r<�$�H���!�v;��E|�P�W	�Fa�X��_-��xfH�uH\'aV�M<���\'�$N�8�*�?+V��d6`dp0G7YK��o�y���?�⒒��&E��fp[�V�mi�-����A-����4C\"��:>أ\'|��v����ԭ$?�?yg��qg/�\"���QJ.�O��9v�6ڮȹ�\Z���z�Q�ѹ�+�!��1A��Y�ť�	L=�\\��\"�\'��Y�{1\n��`��I�g��4���L��sC�T�PE�`(0�~-\0�Ĕ�$�1c�����c��/�|�}T�[����jR��nR_T�~�b��9ur�-����7��)���{�>��?�|���΢^�ݸ�7��pZTV\\�\'0!=�\"E����o�%�狪�3�2���r�/`^=ǽ	�oy�lþ��Y�0L�ܻ�r��X,QJ{�p�����\rir[��y�)M��b*�X,�M5���޾}�m?�ۉS����Sps�r����g�P��Q������(���H����`n�Zb��(��K1,���xo�;m;��$�S�3x4�A5l�`p�/�&u�ՆG�E�fn���i\'��vN�nο���g�͡�y+s|\ri��D&�=_;�>=Y��F�W4������Jy�$>D�&`�ަ�u��V���[-3��\\ĸ�\ZY��.��pv����Lr���������C\Z�)�&�����P=����3�̙V���%7V�.�`J���[�ܐs����p96�����9~��RI�M��}��dX�U�sK� �O���m�	z(n��K����L����t�Rg5�u��[\"]\'���>fC��\'0ZK��@��\'y���,����D��[�,[�q\Z�%\r���|�\n���ߢ�t_ǲ~���R௵T�X��WX��7[��\r-�tc�?ii����1|mȓ䣻��h�Mt· yrY�K|tq��$e�Kս���:t}���ۻƗY2�������8y?v-O_�^ڝݚ�Z�`k�]�}\0���:49/i]j0Yr�FټΉg�����ȴv��<1�,gq�?���5��\Zp��v+�l&(���8���.N���V9�\\]+\\[ܦ�A.��\Z}�8,����hȐ�`ɖ�,��e��>�S�L�/�.d��O���_ ����q���4��&7);�d�6�~\n)�����Dy�ɺ)��8�j�W�/�f�����1/�̟�x�m���j�/)ߞ7w qJM�w�{�njEn�zƚcO8y�/vE�2��3iur�x��f�Q<��/�n��1c�^��݋��	��ڤ��@�Ϗ��ڒ�tДE�O��nF�ڇ�����d��ϥ\0?�#/�(�胒�9��� \0��0>�}���[?\"�\"L��S\n\r~L��͟�>���gp5NQ4Y��z}n�����ɞ�$���$���\0�}q4������w�Wt�LKO��HݽlѮ�T��Q�rƟ��������	�W��[q���206N�����*�Y*��7��*P\\�#��8yob���MS?Ñ�dz@\nˠ$C�i�\r��g��)��(e{.\'�R��i}���,���2Q_Y�c��/P���Y=����V����N�al�0�#�\Z��b�!\r�5L\0a��Ql�]���������~�S�c�m�=,4%bx�2�q_ :0�̣}�z\nr�^�{��l�7�/�����&�j�!i_���%^��h�땘�1h�1�\ZY�ѶOb@������F���R�����d\0��d���*�=��1\r��)��4�#؟̳cFNDb\\��+,�s�}ԩ�8���\r�qܷ��ǯ�-=<�*�5���^`W�\"���:ߋW����Y��3��	��6~�~O��X���aN$�l�IJ����G-�Z�+l�H4\'�-wrv�i��)���%4�͚���cZ����\r譤���ڧ~������B��k��Yo�%6wurrR����X#v/�~��i�fQr+�&���ն�T\\�_/�ʘ\'��	���峱���6�`�0����zX����H�<�\'!�lc����-~��RR�38.���\'��|��\0�$@#�b����&��J�R�Ф�L�v^��KC]3@ԲzM:�0/����V��/nc���ޣ�\\��\0���M%(f�\'���`h���k�R3�\"4�~�|�/�M��{.�Kw(F`����^%۴J,6�ǘl�7�[�Z�YG��\nl6��%�?��P[|���x\ni���≸g���7�dy|S��@?�%Tvk;\Z�Jg�i&z��8�w�9j����\nGo�Q�#�0�\"Z�j�fi	��R�Nl��q�͋^���bN�����Rɽߴ�3k�cs��L/�u�I{�fuW���H}�������ʕ�Y����V�*����������I@�)���ld��k�������I!�Z䉆�$�f�:�9��\Z�g����L*��^�<���N��w.�f`���#���o����t��98ޟ*�0JT�����j#mL[T�-DBL(*d3Y���~�������G&��¢BkA>�̡�c�2�]��&�ԕ���H����;�0up�l�Nڰe�&�����G���\'���(>����^4=d1u ���q�8\"�E����\n\"���m�Y`Æ.)�2�*�/J�ԁ���ך�h��1#����oԃ���A��\\� X���.^��������֟D��1�sݬE�j��-e8��x�}���Ee��@��<���s0Ɍ�+f���d=��[��	5ϼ����@@W�W�7s��) ͒4)A�@K��EM5*���QˬePD���\"<Q�CͰf�6u��jބo&o~��v���������?d����x��k��(G�A��>LP�2�ƨ\n�ƅ8JUh�c�[c(P�����\r#PB�l�@�gr�zk�_?AN���-՗��\'���O��Oɭ�87�g�6�w���m/�oү+vN��xO����3�vI���h�[�M�/��juWN̞W�D��0Ȁ\r\Z�@��C\ZM�&�4)�ǉ8z�����R�c�q��&G4�2},:��rJ��k���sR�}�Q�;��Y���_�0w�������)׼�,���~���\r��n�[C���,?19XY��S�G�c�VN�j���Y����d�a�D\\陘��s�5[��i2��!�=�Q\"p��|�L���D�V�AX/�/��oI#�re������&��\r�լ�b*p��\0�Bs�F�)1T/���!֥#,���:�ݜ��\nN��\0f9���A�B���	s�n�#~W�\"P5=#�d�\0�\n��6�^�Z��:dDk���vc@����F�Ja�q��ި7�ی!#c��K�xx<��1�<3Kת#:A2�{u�]|@�s��+�Дi�C�����v\\�j;\0�Y�\\����#2�w�<�:�W�Ǵ]>@�F>��S���&�n�JF�u�s	�6^G6\Zy�>���\'����&zT�r�W�����L���E�ӎ�D\0jE�&���\'G��go_�^~|�+�S׮XW�yK{��m�/&����l����N,�F}���g��//�����8*�\0� �x�R�9lǱd*�\0`9~����!L\'^A��̈́��LT�14@a�dZO��g�12ԏ���l� �\"�N��&�`գ�Yj����Ř��t/�q�2â�g��,��G�o���Z\"<K�l:IaKp�d�eR���b�J�B2�]$�ѭ$��J�]���ح�\Z]<��-M�l�(`MT���pKp7�\Z�˯��	É��@�2����AbS�a��Y6�M����G0C�{p֚�^�9� Ԅ���I��#�u���ԭ�Cx��0����|=������8�z����#7ڣ,cu6�͑�dqI� �r3��\\ET����2��\"c����ìd;u��NGH���zG�ċq!J��oű���C���.���^�H�R�v���b�qŃ��ϧ�)�<�U9!@����15�e)�c{�\n�jU6XVy��iO֥)X��[����+��%�KJ$�ǳ�ҲҺ+;�N��9βw��Qf9�����3~Rf�5q/:�,1˘ǔ�e�<�d�F�l��i�d,7�rbb�ᔤC)����Lw�.Eo)r���]:��,��:m�C���?�3�=09]�GH\r�����@�/\'b.c��E_�}�ۙ����O��NZ��L�;2��������K�w��}��\Z\\��k\n�%������O���LS?�\n6IFѓt6��H;�(Q�$v?���X�߯��~�`�1\Z\\�l��m�)�+�\\�ո�H��?�,��^K���/2]/b�y��w��[;a~�qC(MD�J]6��b��������z�\\_g�✵�u�u�Z���E�>p��n�;��B�=|lB��nH�y��,�Q�C��:f-A�]�TX\0u���|kQDZ�N��g_=�6���%7�q��7n�����m�.�%o�<�⼱a�M��G;�ߩ��TK\\�ɾ���mi$\'=~z��_Z�Ru�̚�yX~�8{}h��S�5zN?<�$-����MI-�5-���6�n�w�/2\\	���[��Z[�\n��ܞ-*b���a�EN\'0��J��0\"#U7���r���i�����\"�kPq�W��m���FB�ّ?�7���C�<��d3����У3��̠:���$�H+�!�����)+��h�rFDwnD��\Z�TA���k�Frz�aoe�4�}\'��hgT�����)���:ýн��7��g����;�j;���\'������N�������k���z�4�銧U�$��S~p���^~�_+�:F?�fp_�\\�\0�pP�ˤ���s&;f�4�V]���ٜyMNcIc�[��/�,��p���bZ�.vS��\'���L%sNfk���5��b�!.�e��D��؄~���u����(��f��\"e�,��$,ED$�;H�����Ǩ&�F�ݙ[�[�����˲̾t6=�\rۖn݈�9�����12���ү�[\'ᨈGV��O����;^�1�f���7�i@�l��o�=Ԏ���:WBJ�����	i�i!�\r~��׻�|���.W���|a�_\'��\'�?��3�v���/{��M_`�X��e��^8o�i���L9���ks�-fR��GG?�&M���+�j\\�0߼������&YB΃�]��@�]|u�$F�#�q�Ȉ��n\n�+\'�]?I}��knQ̠/����7/ݑ�2\'uJ=@P�UOK)[㝊�����t%��b�=<f�4@���E��Dɤ�/e���$(��uRn��ū�^�Uک�ܯ�<��|�����w��f�%��<�S$�&�z��`\Z}[qB���ulA :3�����ѯճ:\n�D�\\�#zAP���&����q���8��S��((�\0;��⠟�f[�cJ�Xc��kP[��-���ÿ\0�����v����V��G�G���|�RY�T�+O�M��դ/�X[�[�8�)]Q��l䶚7�m)������d�ûP���X[�$%�����I��>.�)7��s\\�k��GG�Eq?v�`�B[�F5��_�e�-�V_8[�/δĞ��\n˦����xwpN��M{ߚ�p�zc =azF�T�+5#��Z�՝�0�O��^�a�U��&wjF֮�܂t�����Y ��ovm���wz�]Ӧ��;�1}:շ^�ҭ��s���>H:\n�\0��ԓw�?��uDz	!�H�R�\'ao�V��wx=ޥ��)�S�hH1�[�G��T��(�\Z=��@$��җr�����fJ�x������z��1�>T2!�\0��H��xN�K��@�Ä�����Ğ\Z}U�@���籨C���\ZA?o�E��ei�ҫӳ�5����6B��p@��[ S1���w\rʑ#a�S׃Ln��y���)��s��h��?�N�G.�{�:\\��I�UO�ڑ�P�n�f8�،A^T��T�j]��־���m6m���å�Z+�\n��I�C����1\r�P�e�@��^D�@N���\"kgJմڿ}�BMmEUm�#�����B�ڽys�ʍW��N�o��wt.^����;/^ҹX=w\Z�>�XV���s�������ZK�:�A�S�X&V�l�X$�L< > \'�!~,J���?�L\'�B7Y\"l\"�A`��]��aE0�YpkG~�{�q񘒼@�\n�k��-�wm���S@z4��k/�#�#/2�GHçd=>\Z�	�X��w�%�II@@��5�&0�x����|�1�2�4Æ7lZ\"�\r�����x�R4C�\nX=F�]�:q�NJLB�h��f��l�8C��Mѷ�z�I\\$5�zH;�\\얖��7��RHw�~/�c�J}�������t��\"�Ĺ�@l\\Dfa\'��H[\"N�ru�zKw���[D���SMi(���v��T&F\'I��\re�f&dIza�X�8�K�Y\\.�*�tnn��U�\Z�����1�񿄶h�o�4�k^8%�N�Q�_��!������dj�;�}�y�r!w��(��\r��\0���w\r\nendstream\rendobj\r12 0 obj\r<</Filter[/FlateDecode]/Length 597>>stream\r\nx�mTM��0��W踥;z�H����C?h���!��6�s�_͛�B���������Ry:=O�fʟ��]�f�q��t�k�L���dv��c��=��ݚŔ���z���<\r�����_޷��<}�������|�2��L�c��:NW���t�ϗǲ��[�6S����i(�ӷf��ܒ)�C�%�7s��Kӥ�����>M��IS������k_�Z�*_�:��U�/E-ج��+<*<+<� Hhqhqlq��T�Pqhw�p��:d������{K�p0��ԩS��PV2�!��a!�G���d��\0����@P�\0�@�\0`\00�QX�a����Щ��E�e�E�����0�ב�#�;�9�:%m@ڐ��5.�`��*{�����u���Z���Ȋ�h����@Yd#H4u�{rxp��,���p\0\",D���C?a��� ,ab���\r���Ne�\'$�:L�q.sUDS�\ZE.T�B	��-��G��!�\r-��@�X����21��\"�\"I���)�,�%6/�\\���-��4_����nalrC��E�X�|��Y��ΊqJ���2/8\Z�/�\0�T.�\r\nendstream\rendobj\r13 0 obj\r<</Filter[/FlateDecode]/Length 7693/Length1 10688>>stream\r\nx��z	XW��9���꭪h����l��\ZZ�IPYՎ��qi�;�\r.�$.cV��$��I�Lr���d�l�8�����1&���/�{�H����̝�澥�T���})@!�C]�B5�3]y����\"!��:IK0�܂��?����W�&VN3!DU �/-.Zr���{b��}�h�څ�3�����B�ߵ.h	<5�8o\r�/l�h���0DɭKV�y�V�[8�qo_�l~˚��`}�+���	�~��al[ڲd����)��A�3;�l媑2gkb������o�j�q1�)��\ni��\\��l�#C������qC%C��ʇ|C5C�C\rCmC����;�֎� k�oXS��iZ<�\"�F�J�.�7��\'@�i��>$<.�a��˨�E�\"}bGVĠx�*\n	0�\"8��H+MH�1sp�u3\"*&y��v���F����OP9���*��a���y�JC]���A��\Z�+#��`]ծ�[G_Auԣ�C��ȫ��M=:\"_�������瑛�+\n�;�IF@7��P��gt�q- ��j\Z�����ig.���k�J�*���{�/��-�kj�:Q�[�jn�<���n��]����3��K�\n�GVNa�o�_*?����W���Մ�V�m��\r���d�(�(�i�#h\ry�CD��Ck�s��2�fC���M7�Ӝ?��ӄg������҄���\r�\\��J����fR���@K�8k1kY!�,����_�?���{80��?����ō��ʅϒ��A��_|��N�g��{t����C\0�0���qt�{�oУ�A��Z݉	�B�it�\r������P=Z�V��h\'�=�nX�E�h-j��C���#��<�2�d��n��<��G_c\Z�F��H<� ��\"wS+�g\0���\\��xv��=�V�	;�J��\'!2xޏ��,�N�-���rs\\㲳���i�)Ɏ$�MJL�����X���&�A�:�F�s*��)�AUC1�GbUN��no���8Q)��C�x�\"��6��l��q���!dU:�+䃏��K!d\nas�o��[�M��|�v��-[hn���r����}D�.w�/Pgg�#j\rt5Ѓ��#�rV:��Wr� N��2:C$�\'���wG3tp̘����~\n����)��!�<�R�kky[Bh��H�@��~�kvj�@��\\�xQ)��Z��>�5��B4�ܬ\0��Zm����f�;*`�\n0_޸�>`\r�����`�M�.Z�^_L�M��n����x��]�755�\0½>���ˀ�WvV��Q���w���x��m�;(��TpP��ZA0-��U�����h	�EN/yk���ը��h\Z�.�Z�i�h�G�]5��\\F��Ra���*�y\0�ؤM�`\n�ͷ�ЌF,-�o�Q��bEy�Mv�\\�bRD���{�͎��7BZF!l��=��������J��������k��&:z�TU�}��֚F��?��k�rgSHln�%�{Y*g4�Z톦�a���J�bir��;e�\\F��v0����\n|j���Џ<eE�-��M�т��)����v����y0uMo��mh���u9A�����LT�<�56su{�����B\\��_A�6�ZKB8�1� 22�7RV��+%��N��	!����^�GHt����&�h\0 Ko��j��F����D ���z\0��hi�5%Y�A=0�[~�Å&�16P�:�\\�L�\nQ`�F��>��o�9�������g&��eMG�a��\rܰ%W���&�P����N���\"ԥ��\n@���H�qc0����LT`pe+)���6M�/����_}+]�2NE�n}�[��oR���dI������E�<m�����~�49��I\'�M�8X$�0O���{��r���n��B�ח-��{�����UJR������I�{��!���.�3�g}&~�����ς���㼦Pƣ��X(>����X���GmG���ϑ?�.~a��`�`� U��=Ws.x����Q�гy�ߠ=�,���,��O���O�I��0����}��>�Z,|�\'��	�t�u�z�D�4\0���Uҋ\'$�D�Gڽ�Jڵ�Jڹ#]��Q.�mG�M҃�q���qҶ�L��; ��]#m���0��6>��(m骒6wVIޮ��]���Ftn�I�MػiryaF`|�*�h�\n��`���2%k�bc2%��K&c���-d:��Bj�>9EHr�mv!Q�[�t1�q��h��h2�Ѡ���Z^�Ѳ*NKьa��.�x�.�x�.��U#oj\'���2ԉ^B��Y�s�P�I���P1\'ոq�X��j�B&ϙe!����C3ByΪ_3��ƻ�\0\Z\"�AkC�v��Z�2�f7��Xy�[	:���]ݻvY�����	�@���P0�)�\'w�IhBN�V�Z�r��\\Gx��eG������Qq�/_+�)�G�p+V�6�ZC��z��ڔ�Q^\nm��Z���q��U�1������ʈ������\'j��B/S�@�H&�;�\'H��F������?4�g���d�*s�/XhYڒ5eU����:����2�$tZ��-����@Jڂ*���[�:`�k��}�?V\"\"�O,\0^���(U��\\o��r�ͱ��aX��.�$?t�\0u�|�|�\\��w�7�ј5N��N#U�9��1sS��t\Z:-S��t�>�NNN�C��d�T����Ш�\"�6#n#u4]�n��v9�F͠�%���F�>��%�����\Z���rs��\r�E���h��1��Î$VŒ(s�;��h.r�X��)�E�ĆU+qͻ�/�����E���K}m���>Y9�5E�j�͊S�����잤�������z��]�H�TP\'�\\z�j�X��h���To�b�G>���uE�Q挨6}k�:���`L0�g8��f�iAЙ��&�$�=��`0�#~��l�qcY����3�:�!�\ZWb8��k��1 ���t0���*����6�m�s������Mئ�d`���N��fVE9L�pA~��ʁ��$|���������f.�v���q�����_��w��-f�4�$\n��j�jK��`��oW�ܫ��ns�O=���	���5�Q������g;X��x�D�|\'���,����\"BT�\\� Z ��!n���\\�r���9�粃��qL�O~���C1,^�7�|IW�w��5y�<E�X�̗Y�[�Y;)N�?r�kԈE�hٯA�����dAV/#�_2�3�ftfPq[�d-��j澦d�9N?��\n\ZT��*u�>�1�o?<q�wެ���۲�yBFF����{zJ7e�֚4�\r/���?�� :\nS�4�DE\'����u 9ʒ�{;��w��6�9=�^���\0��6!�ɕ��*1绦DU�j3f����#�� � 1�\'7ߜ��_��/�-,*,�Ȉ�}���\Z�5�E������x*>>�T��32R�g���^S4���7�i�e!8�K�Dq�	�h�6��	�+��� ?�c u�p�2p$���[���\Z�6G��XQ��Q��v���y�f�8#���qo���뎕�q�[,��p���>�P�x�/8s�g�~���:���7O��y@e����}���f�3�s&��\"�q!u�.�D�\Z�n�O����~���&n�T�Լ�bv�� �Tu:c��\rN=�=�d�ɘd��$��\Z�>c�q��1�䗈F���q����e���\Z��*�ReoU��Œ����I\"r�Fs�v�J��\\�����W�	m�Ue�kx\0S�A��܉8�6�x�{��,E��r�>������꟞�T������,,�9�?�n������-%�m�y�J�&.�c�͠�W�����q�/Ď���\\�WQ��s{��}ц,G�){JS�Գ��7W ن�@׶\0��=�7�WQ��Z�=: urA�F	$f� ����Q[��ĭ����`0�@��~��LT7R����1r�-sj.x����g~{�ɋ�w\n==�Z���o~���/|ya�~c��;?��潎����W�[�{ߜ��U�\0���YoJ\'��R�m�EIE��پ$_�/��mHҋ�$C4��m�hK�e��7����L��X�Y~m���Ee�`�5G���p�$II��c��m6;m���s��s��c/K��|�z[����r\\%�c.��,Ѻ7U����Xv���K�1��-��݀?��3�ϝ�*�&�]U�����^j <������@݄�փ�&��~7�.˝�-��>j�}j���g�M��8>�;\\@6L�Θ]>q���Ô�u�u}cqx��!�̀8�anӯ������_����������O��*�/�#_�\Z��ݛ�G1yqQQy�r�ܨ��f�z�#[ClZ�H��H6t�Y�>���ݞ~ A�ј�5P�~+��m�T�s�%�B��#�b��6^/�/�9����4z<�A�J���7���rFB��,���8S%��:�k�X�EY({X=�{7�Z���*�w���zd�-iK�;�����^/MW���+\'m|`ڭ������uR�)cn��޺��c���Y�n����,����y�&m�6aݜ[�-�xytc�9�^���~���T\Z]O/�)��a�#x�\nQ��u(�-Z�R���:*���\n�C7�z���{#26�b2�f*CQ}A5V�jD1,�@b\0�N���@���\\�60�q۰`��;(;聝�0=x*ox�wg�՘��k�ᰟ9{e����5�j�JD��s��xc�q��VS�i�I�Hh:�\ZcI��K��b��<�����!h�Y$�TR��m̀~�\rr\\��kAf�l3S�`<�\'�1⭂N��7D+��=�VPw�u���\\�_\r��	*hr`P٩��}-��En���6%�7�Q�S��jGqgn/h��ΤΪ�U����pڂ�)7�s��k��J�I�<9���e�,��=읞�]�8��(2+��V��j������Z�4P�>��\Z�H�(�Sm��m��!��P��\"!Ţ��?z�!MW+������0���a�,��S�Z��*Y��9ؿM�E(�>�r��c�n�_n�p�Y�\'�O<�Nn�VŜ���>���9�S}�\'}aA\"ĮƑKJ��!��ͣ���l�	��S4��^�X��Q�����+�Z~O��&o���MJ��E&SF�V�c�Ơ��Q��h&��r���{pRr����~����\Z`�ͻϧa�����w���\r�+�X�7-��Z��W3iR3y<!=��5�{�\'}�v�/>���>�8fס��7��� ��}Џ�&��ۼS\n�$J49L��HZ��sA]д>~U�^���b��Z�S�{4Z����=k��*��4h��P���͘��X�\ZD������X��J�LP��~\'�d�%C\Z({eYeǢ}�5�\Zu�c�\r�آ����gퟴ�8n9n�?��𓯶����-}�W�.�U���\\�u��¶�i�L�ǎ�3O|�����I���w:��.�5�mPWQh�7\r�7B�C����#���0Pt�%�e:I\'C\n�Uz}A�/��ǭ���ˬ�DgW@�{�MD1h��~5�YN��1�uݲ8��k� O�	�`l19BN��1�!&N��B��P��+�M��u:F	b�N��p�p�A��\'(��O���`䖍�%��~��!�M�\0�k�<�C6�Q�O��NhN]�^������>>�qgr\'���3�j�-���x�����򡖋�p�k(��h�7.VW����ih�J�p\Z\rn^m�y�Qր�\0��4c�G]���>�����d6���L@�^A�<PR�Pq5\\˦r5\\�\'\\#A�c�\nuB��˽�Xݳ\'FN�v���ʤ����	W������̨$���:�C?�c�c��\'q��j\n�I��u�V[�qM!k	\r����Cb̈́�\nz}�Nk��M��u$V�CD$�zT�:���\']��&$���ʴr��e�@<�t���F�!�,$�R�(�kۀ(��U�<9Q��G��*���ל����Մۏ-��Q�{������6������Ðj�ّ�� �3-�P___L���֍|�d���v��5%nJR;-g�����pء~��6Ѧd���\rZ$X�|�T(f	IQ�q<I��u��Db�s�T.W��U\"������t}c���Y��d�MY;��б@}�W[��M�W�yJ��O��ڧ�����0�ai��SS���.�=�P�Y�͵yr\r�!�������f�a��lå:;���K)��Z��1���]ߖ}Í�℟�҅�ȫ�݄�	p^�s��닔X�i��ht�����e8��T\\��W�����n��qw8@�\0�B��4�H��6�/�/4w��f����i���TP�P6kp�r������X�b����h!9�f���T7x��V���:7-�p�����Gq�Vum8������>\n߿ιh	1\nE�ca2�LM%5�Ԧ�oZ+.7�MHe�6b�Qeԟ@�2���v��`l\n�IZ�;�H�����םZ�}`Ŋ�K�5uP/�����O6��:ԏW���h�zOX��\Z�nO)<�?G>��Y쒥��c�e�D\0� �J�#�\"��r�TZcִ��֣N3K��01��U�YVe��c���c�򽨐�d�Րq���9[l_Pα٘>%)\Z�Lq�򏅧H2��N,\'�yё�R�h��F�������6������x�OjoOJvv�vl�3k.�(\'�N�\Z~�9����y��O���oO>���ٍ.w\0}����5޺�)��&�K�}�2��j�V�\r�Z!hZ�A���!X�\'&�u=Z�6٣-K�h|�zM���D�c�Z�Xc�w����$Lpa�#�\rXu�#޵�$����5��n�bl/:��f��߆�,.Vb�޵���$W�?l[�֕VĚ��A\0����j%oNJ����!��TA��OA�/C3�f��]9�6Q�����\nYxR�<d\n��f�N((�lz0=��x|;�@��G>��\0J1*Bq�����Pv�#��\\2�J��\r�y\"ت�$b�.��>��~;����WNR��\0���+J���Ąl�h3EѢ*GU�4�hQ�Ã^��MaD�T*UHUR\r�jJE�*)���e|\'E���@��dC�sBY �!/R,,�z��xً��CÃ�w���Ã��_���Ȥ?8�D�}x�E�y��p��.!����ȗ����V���\0����^G�qA�jMC>�2�6.�rA���8�;�L@�jb��bVȄp@G��]u��N=)e����&f%�0L�+	z��*����)YW)l��T��\"_ձ��J��wc��>1�c(v?U9���xp	^%�9j�C���#T���)#�z�f%�F�6y��\"D�ڬ֘�j\r�D�p��sH��nq�֣)KU�+�\r��jF��iK��i�=g��E5S���d��R�Q+�A��r���ɓk�1iɎB��쑆��iW�m��o��N���}\"<��ᷟ`΂��3�9ke��od�T&��M2x�|C5Wa�%��\Z�?>`l�I�����Nkg<L�@��XS�Fԟ���?z��3�׺6U(a�)l��F�-{l�q�/6�eǝz��1Xkǲ�S����,_�}/c�w�ֿ����5�o��%����w�:�}���s(��+�W��\'��dkpi�Ӄ�|�=1�?��?]\r\nendstream\rendobj\r14 0 obj\r<</Filter[/FlateDecode]/Length 454>>stream\r\nx�mSM��0��W�e,+������C����{�q0ld�8���;O�.j���<Oϣ�p�v��ڟe�\'��4�T��J$�B�9�Ψ4����6^�U��|z�nt9�iQ�д���u+o�������1�O�m|��\'�>�De�g���p��鶮�t��)��{�hj���q�1^H��-S��;�%�u#�1�I\rvګ!�{E9�����$�e��`w[�����u5Z�c���@��_S:\0�\0�\0 \0�Q5L��j�f�	I\"\0@��\rhk��J[���\"�J�e�����p(ꤨC\n(�*���(���H1H1�b\0�^��E=(x���c7�\Z������H�.�Q�@u���n���F�0�Á��R\'/�|%���\0�PÁ�b��	\"P�@ǰr���Y����5<RgӅ;�1��V\nq�(u~1�s����.+fo�˱��\r\nendstream\rendobj\r15 0 obj\r<</Filter[/FlateDecode]/Length 10331/Length1 15900>>stream\r\nx��z\r|������������r���].�p�r�H�%/�p`�KB�I �A«���U^������>�ڧ5D��R��j��K��R�Vi�ES��Br���ޅ�K�~�g��������o���Y\0\0�p��a�?PҼ|* 7�l���懛�C�w��޲M�s��H������X��˫����\\�j�������\n@@����L���<�N�Ki7)�s�4�|#���^�a��kI_C�՚e0�\0i���/^ݱ��7�i��ܻ��X�ŷ߽\0&�{׬�0�\06����]��+�~�\0 ���Rթ\0=��U�L��8�.\Z..��n^0�h�ux�p����[��\0`������3<��w_9����_ȟ�N�Y�@��|8N� #� �\\3A(d�`*�aT���FƒrA>p�l �d�|��H��:�\r�Ȩ-�\r̤W-@d0��ۀ��,I����.L�M�~��=`�j�ˠ��U����s�\r���G�	^\'P\0<E��H{��@%i{��\ns�z�������y=�\0���>Bir>%�\0�I�_�vh\'���|���O��c\n8�_#��~3���n8�M\\)�\nn�o��\nOk6��ĳ�f�U:�n����1T���/��?������̏Zj,�&MOzٺ�f��ގ�{��78\ZS0[iC�5�\ri�M��H��nM>�=q���.��Uw��Mn%�����p���ɗ�n��_�>�=\"�0�c�0��1w��\r��-BF�� ����q���|�B򾵺[㈸x��B�[\r���L�A3A�� �����\'�6��@j�؟�>�m�u�Z�䑕��G� 8^�u<�~7�p�x��~�o������ৠ��v�X�C�\'���x<G�v��I�����n\r�nw���k0=^��Bu�\0=:	�ý��W���`\'�	8��U��FR��p�R:Ȑ�գ�p$\nz�U� i�˸U������2�X��������V2���������y��1y��#t����C���I�Ue�c\0��A�Rt=�n&���(���e����l�5�b6�y�\n��\\v����ѽ�]����i�)*��o��I�xZ�\nݤ����ݵ�37u;����_?ʮ�gO��vBxk<�I�Xst��\r��+���~����c{n8jK�}�Nog�-�\\y�A@ӽ��������~L�f�TR\"��n\'Wo\ry��I�Tݲ�s,��B~k�;�Y�Ŭ��r{j+��vϞ]����L���kkk��6���l߳g��=sO����cۗz�&�Ȟ��vw?hl釤����ϼ�����\r��)�y̜�N��I/���*`)���>�E�w���@��Z�Q;�9���5њ퉚��۽���-\\*\"Gx#���k���/���D���wP��,n$��޽�e\0AT�^�z0�Ե�PX)����޸�\r�@$����\n\0�Y-f�~�QX��(�`�Q���e��a�Lae� �A�[&���t� n�	��P{��c,;�d�JM�e�q�w`��}���?�=60<���Ǔ��\Z(7��QCS[Z�޻�hނd<�/�oó����exV}\0ב�>T�+�\\����\\N�U��x9r�C(��%� �`(�|?8䎎}z�pv]�ѱ�6y�流�$�v��M�v\"�\Z>t��8����JY�����p���H����r�=�T�۞Z�ܞL�ےSKw�Hr���;��M�>�u�����{��ؾ�����طk�nY��d*�׹�!e��/�WC�	��5��8r�J�K!XjZ����:�|9,��q�5�������6�f`��\Z���7�Z�L��S��i\r`i�D�k�:����V�XgT����ṈK�lĥ=qI��\".������Г<q�\'\"��-p{����y��zr��z����s��9�K��/��>����G����CH�>��#�#\rG��`����k�̑�;\"j�2�7 ��8� @�<<\n�`�%\"��� �]PuP\n�\"���v�xcz�m����[���\r��~���_�,���G��֯�}����������f=�1�#�&��~�Ҳ�������VB}����÷>^���]��oz\'�r%�ԕZ���; NcB�4��Ҩa���[�҈�ό�)_�1�{�@�fУ��ܵ��㪎wf��U��t[�	:�-�\0���\n��\"����[G:e\r6�X���CO�Kx�]&{�s6�@���v\\����q�XgM2�|��Ჸ�����\ZwM��#�0ە�&&W�e�t��D�������Ƣ�\"�%	5�^O��$	�&Wg�@ɲ���Z&��:�;}�V�b�]�b�(�``���j�Ê��\n��@��l]���)�w��2{��4;���{L�=��U�L_dʡ�MZ�=)��u��<!.�]bL��W�\\N�\Z\'{�����^�t�{�0}!N):�\ZkL����	��a�.J�BS��vA�G؛(���:\\&Ŵ�ę�ѳ������{sy����8C/�(WT������<:�8��9�99�LAc���n	]b+--	ؓ�զI2ؒ��5h�Jνk��P�c��ݛ�n�ʣ��mu;�|�\r�ɕ�!�m��<�oδ��qt[������?2�����Z�%���+�iƠ)h�f�kL5ֈ]����9�^�<j\"�Y�1B|�(g��)0����\"!�WW8�o����s*�q^��\\�R�WJ8eM\n�`�*[I[CK�`�]Z#��F�t���c1%��.�h���i��p��M�}��[>>3�F�	x3��J�R�۬��@)^��_��>��g�\n�>z�?yt�m?E�b�Ş��L�*c��>{���z��7�|N;�F� (Uz���xNg�L7�|jjr��\Z��ґܐ.\ZL�&6Uf�f69��F1��4���2S��հ4	�j(^͔�4�\r냔�]]M2e�fw�ř�T��M������\\	����2{C%����1[��vʋ�4\Z�����\r��b�D�}näN�Vk�}�?\0gĞ9�Z���S�\"7��\n��8�K�$�f�m�q&�X���\ZDD�D��B	�%G��P���De�� �)/�ʌ�.N��Ȍ�����+A<��e����r�;�IǺѱ5�1šck�s\Z��� M�i`�\r	}aH,!N����� �g���>���	���@tⲨ�(�p����+j����pېő�$2��T쇖=�4�6wWNA>q�:�R���_F��S��ȷ�D_\'���3�i���j1D2\Z�=���͆�FX�r�i�6�;:�%�q@�	˒^�Q�=L�S��60�	�q>�UjKo���\'��\\��ji70�⠫f11�f�ka�ka�f,,;�	n�2֜U9R�\'rZ��Q����F��\"&m�nUr-�8�p��o��oj^���ڶ�c�c\'����x�z���(u����//|)�A���ؗ_�����T�r�H�jC�L���K2Ar�V�%�L�3��Z�<�7`U��V��K\'��F`�Ƞ�qJ	(I�P�Xc)� i\\��,�#� �\n��b8�v\'}Gf� jT�f�����i\ZJ=\Z��i���Bn�V�[9�g���^�7��א�[���_++�\n�S����֍<u��6�3NͼA�\"!I��@�D��	r�uN��T��F�Ό�#��s�I�M�q+l��~��U�ݴ/��)��3U��F �\'*-L�Y�i4��⬰٨>�R�\n��h]�9[V��CC}}ǟ\nw�K��+o�902�{�@���ЋD����LǛA(�+�V�{S�6/�Y�\nٵ�][��2�(\\ilO_St�v��7��B-�*�͊��n�!\r��9�n<y������͹!e\\\r~U�U�q=��Ӄ���=�:K�YE�dPT��f��7�gS����Br�\n��Ib��I���>2I��LJ�Q�YFߩ��w�D�N��.4���v��[n�]u;��H5��..��ܤ\"7�����(�?��>R��	�F�H�ҲҬ�и>�TLw�3�Vq���TJS����_]ݵf<TT��[9�H��앮M�)ᪧ�?��׹��e]m��$�N��wOQ�[LW:�M����Y��I�����2ޚ�����1�``U�W]��ЯU&M/N-��\"Is\n�\n#ŗ�(���W�=�m|�ۜ�[<�<%{|�q�J*3�\Z��&Ͱid\n��\04K\0�\0(��Z�	���y�c�	����;󙁓���V^]�[�@8�|L���d�R&ڋ�Z�lړ�N{r0v�\'kIir�1yܟ=CW��oYP��>����ԭ0OfNn�DUۥ��]Vd���ֱ��3�L�c���֟��N:���]�7���\'�:o�\'�踶^�?��r��uw�����G�s)��,�I��W�,�����wrά�ܼ�ߣ���W�=N�#d\r�0������G�\'�#\"[���;����~�� �*yL\Z/�!L�T%��n3=����wL��n�����/�\Zo��Q�!�����I�\r��]�,N��npV�չ[�n��$Y 2�FŌ*^k�~�4���T������$�ڒ��KC�+3��R�SM�&5Udn�H��G{Yo\"s[D�Rdn��FiO��%Q�%�eA�a\\�R���Bh^�\n��ښ�;Zvc=g���ok|h���`���wٜ��\\���1��L�/��w��Ә�z0։�|S^g*�Tn��Q����lYa���-Mk���*3��� ����	q�!ܚJ=�D(�J�ê�B�	��<��t�|5�S�lL��:���M�N}ۄ�P}�^�4�%\"M��q�@ϼ=%�@��}ư����\Z�UGr|y��a�A}$kܼ�ۢ�\Z3�Tx�e��u.��~h(�T�<��yE\Z���ӏ*vp��y9y�B�_�M������壻��������u�BX��4!��h\Z5ݸW��)b��\'6�b��#���>g�1����`��0Ԉ�e�K۠��bp9�@%C+&�cĔQ�c���IB������<$��ÔU�P�\Z���>�T��&������MQmI��\n�e:C�aD!$<�%�S�g��~���ş\Z]�6s���ѝ���L᪱��7��T(�$��PJj�T��*���9YK��}��ٿ0��_eoww��֭|�y�{K���۰ù+���T0:�q�=���433g�j_��:��<F:;�y>�\\>�i~j��0&�-���$������@	�Y���\n<\r��q�W���7ָL��	Q�R�e��7�m���B��%34�i�8Y��3�ܣ�N����u�xD.�UJf\0��^���`.U��?4�^lq�ךL�%z��}g��fj[���vCNΪ��n��|ꔟ]��R����e+��\n���v�,Xu��Ӽ�U746Wef:$�1���j���&{�o�����ڌ��d�O\0�O!���OQ�\Z�&�����th�j4�(C$��M\n5��J�.��^A��X@�a�����(@�I�4�%!�y��4I��㋐X���	fX�S9LI��\Z07\nl��:E�k�<s\\Q6��HMd�mU%a1.E�v:!N�\'��S64�J��9�QuY�m�`\n�[%���RY�@s	?���a	�n���-򂂏�|������\'��$P�g��	�C�ӆ���E�� � Y���pӁ�Ӂl:01��!>aӡ�\\��0~�(TD+�G|u�Z�{<,M�N|ψ�{c��LO�d���M2��\0�W��Qr�b�[�=�!L80C���㣍�>�e����G��:ʬ�)����/S�\Z\"C��{�׵�;,���k��3�!N�y�O��-��+dl����\r3�Uꄈ\r���*1l~|�<{�O�O6^M\\	�c��w���j�>R��L%$�+G�p��뇆x�s�q��W��Gn4�ef2�(��� q\Z>�K�g�z�,�[8	i��މ9\\fb8D��u�#�À�+S2��A\Z�\rz�V��I�9��kqވy�}�X����L샟�	kb&F��1�Nx������Wbտ���b=����ܑ�\n��q�������0U���V\r�x�ě�?�ov�}�c������_��Q�[9�H	�SJ&���W���ߞ�V�J�;��U��H���]Yb�\'�?��\"�J�J�|����/�a��{�xz��bZ�\\�\r��|e��C&gj����E��E\Z�|�1z]�_aޜi\\��!�Q����R\\.�����ϗ�\n?�o�y��;9��\\n\n(�f�Y�F���G9��HD�c�Ȋモ�EY���uq9̥Q��}_C\Z��٨����K��^��_�¿��!Aqtd���������a�L\"崙L0�:K2HR�)�Ep�@Ӧk1��ے$�l�Ue�WS盤-6�\Z�!OP�C?���q	��ф]C�..]C�v��ȭϖ�����gslo!�&����Be��?dV#wg��w�N9N1e���>��b�\"�rf��P�RV�Elt҄�>��e�W\\��������W�@����f�F>�Sl��5|Ng콣Gc��Z޽lt��K�W�v�L8-���{�wb��e n;6����G���\04���`42q$�o��t�RKHҩ3QBLæ����_����H�t?��dM��e^���E�[�l�l�,�4~�!d��3�]��PklHoȨw�qQ�/���m)KR�im�m=\\��e^j[�ы6���}i}��z�F���A�I.�iŲ\"2sɕ_�u��r͆����N��$ڎ)+���K��Y\Z�nwȔI\\��� �F��u�Ĩ�Gj�����O���<�W��B���7��V�v���w\\��]�Yg�|�� we�ʏ�q����>�N߆k��W�S����[��o�_���D6�\'z�&�3�x�.%����i�i�`F-����#���&Co������ʪ�$���/H�UR��n�ȦxO���\nCs4��,0G[دb�L\\e�I�E�	y��l�x�ȦO�����Mb_����<�����ySR��[ږ\\���b��l�\\�\r}[�n�{���X����޹s���ͽ첆ٟ����Ϳ���4�سSĆ�+����|h��@���%�(�G���<�4���ɏ�g!��FpX	�*{u:�������~E�.d������Z�3��Ͱ�o�5�{t��=�u��B�T8�Sk��iS	>a����vI��lp��1ϖ�^O�dK�1W�,c���MʘZ�����f`���r�F�;��N�X�V�����\0�������w�v�x;!�������o̚�glv;6O�]yq˶�rө+�{\'�m��x���\'���No�}��ꇫ�f?vu�6����+�?\Z�Y=�{r���y�+3\\��m-��tZk���N�+,�}��A�Q,�����e�G��`7�g�L.)�Ϯ�\\]��\r��FO�g�d��˯OOJJ����(D@�,�[�`�X�5Y��>y�M�����\\.w�#�G�Pg�,�����GVf�N5Eg#G~���V@8A)�\'�I�L�H~$��[W�m�6E[�}pZc�6m��7ǀm�W��<���Ų��ʦ[�\"4�|ҕ���S샚�����0p��>��95���%!o����[��ּ{�������ޓԇ&<�A�x�]�ԊN�\'V�!s�=\"֘��{ĭ�>=�YO�W��=���D�H�5���LwC:L�ܚD��n��K7RΥ�X����`��B��U���|*\ZYL�T]��\"\Z�Qu�~;iF��	^�s��~}��/3��g֎`aQ���-N㶏��-�l92�����􌙑��ׂ�y�憹=��C���m�8?X�sh!�i��3Q���8`qs�y<>g�%P��b�P.�+�(���9|����4�F�E���t��R�)�H��+u[�w�:�A�FZ�ݪ��SI�xH&	Il�\\��u��\'�q�d�%�8Ls��k4��5F4���h��h���>ap��^kP�i�!7��af����>������$�������?�,���/��`Ƴԝ�#ԥ���\'�}�$6�1��y�&�?���I�(.��\\�\"�7�8y�n%�\n�q�I���a��rZ�Z^!�1j��R�1��c�50�\r��3��Q��hq5�&}��0i<:\Z��N�~4����?�y�����߼#J���d��ر��p�c��\"	O֒�[�Z\'�Ï}S�\r!י��O6�~ XG��?:�A�+h\'���d�[	�3A��:(�f���%CY��\\��J��p����T�񈐳��yVIgh��o�LtJ�FΟ�T�������/6�%~{�H�b�VF�����ai���I!|,�ϝ�m��̝q�Y�,��3��\Zx������E>�i,�g9�q�=䨇\r�\Zc�}��6W�.�V�ޘd2Y�z��8Ü${:���OB��H}��Lb�ԍ�d�\'�Jl�P��/��� 	�nuc{Gfb���T�2�d�.���ޢ���V\\۔�p_,�Iۖ��a�?��j��Xt����o���ٴ3����޽Z���ܓ�uo���[��|f���\n��Ht��Fyt����q�C#���d��9�1E�����i���X!�h��\"�׈s�jmD��&��_�i���]�u��G����^�^�&��n�M�ӌ��J�	Gb��*�*�\Z�\'���5�V�Q�:��h�6c�+�O��H�i/U,\0��X�_sc�;��:��۱M/�r$A,#^��~��?y�\0��B���%{�/�ocQ�($O��kP��)�E��>�4}b?f(�V\'�����������\'�l����:ƄO\0�l\"w�ſ�F��m��݃x��?�=������h��|uz֣�������\Z�����n������wDe7�?���(\'(XG_�� �J�ԉ�͚2�=+�%PZϥ��X�����Z8M�K�kP;��o�(���^��Ij�.�q��n���Z�I3�K�}��	����\Z��A�(iu$�gv�2YA�x^{��]�Ecn?`���G�.j�n�Q&`l4rq�V�g1��a!�&Xj�K�O�~�H�N쐟f��&�Qլ2�����ϧ��G�[qF�VBtbme�r]��<^3�\'[��?w<�tS�k\ZI��&��������ɑ�Jb#�>���]��ġ���v�\r��zP��\nx5�	�Ђ8?�:���4�\0a?��3�]�$�:�ђ���C�\Z�k�k;��s?�B\"M��Ռ�ID��k51��\Z_�oؾ���g��y.����ڪ�ou�S��7db�\r��Y��|5a{�e�Ǘ��F�t��~:�\Z3��.����EH,�Z��$L�0�1��ӎ��?��|�5�˟=�ꈮ�9��?L��U��Z+�#�Hz�q��%kR�@c� �Fr��$�o̐���@�\0Odɗ=����s�/������i�\Z��	{P��*�f�ܐƹ!��/�>M|���EJtG��7�U�K�W�3���a�\0�Z�K!81� �a�V;}��?��ɺ��˥e��,y��ͷ���X^���s玾��,*.t��uY��џ���=S����0եx%8-��a�V�-�Z��/��!�x��=��	�Q�_�%�_�a����5>0���s>F4���J�ސ�FƎ�=��sh�s���������g���<����{���5E�}���-�r0�\'���]ml�V-��H�\\��*Z]�b�#˕�/KMS�B�҂�b��>��5;���5�6����LY���Z�k�_c�u��7l(�i�J��T&�Q�fgN<��`:\r���֓gs2��I���&��<N	$�s�.3Tmȁ�\0�z&\'��x\\��I7�Rl-�Ey��y[̛�7�̻�|G�6�ʒC	�$lI\r��x�ζ�H(������9l�Σy��o�vll�q-���ї:�E[z�X��=P�26��z�lߢ�m��?�?Y��4��bڗK��Y�l������S�U��k��;ړf̳�{UY���e�@��N���r��.}1l�[�k�J��w�7��\"�M\Zg1KC�B�BT\"�A�ʨ�*�l�\r�@�4�}���~�¾KaQ��`r�0)e�B �	[o��tָ�\ZW^�������>��ųB�O��c���Q�1����q1�钤KE���c����:\\7���v}�\Z?9���E>�8�ϟ���u��o���e��ɣ/{�\nV��c�<4v�\r\nendstream\rendobj\r16 0 obj\r<</Filter[/FlateDecode]/Length 509>>stream\r\nx�USˊ�0��+t�a��-)&�d.9�\r�w?�`���q���R�L *wwU�����z��ݔ?����݌�<l�<�>�.^����S�������Ք)��v���<��i����>����<}����O܆vn�M�c�6�W���tI��c]��[�wS���q,�ӷv��ޢ)?���;�2����qk�k4��Gӄ������[�n��C��KU�-#��������H[�8 ���\0�pH�,S,\"<\"<#<�\Z@M�\0@	D\0���CG��R��J�K��TU�R� B!	P�SUU�VJWH�=Xz��\0Pϳ�GQFKZZt�Kbɴ�X4�~�y��\0���*��h��QI��tO�BA�BZ�ťYޜ��	�\n�\n�\n��Z�&�0���������n;�퐂;^���\'��C�c\r�k@��t�\n�J�\n��-��l�I��O����[���*��h��G.�\0�#mڊ����r���c��Ƕ�9�C�G�4��c��e���_��{��\r\nendstream\rendobj\r17 0 obj\r<</Filter[/FlateDecode]/Length 7616/Length1 10452>>stream\r\nx��yyxTE�詺[/I��%�$!�v:ib:�!		�@7d��;@$!$$B@@�\0#h�Q�D�N�҉����|>�A�Q��1�w�v2�}�?޽��SuNݪ:{u�\0@2lfϚ(X �L��8ZӸ��햹{k�˽�:�IgrJ��V��bu1�N��oW����Ӿ��R�\0�-M\r��~�4����0]�݀�Wa?�eu�ƪ\\)���O[���������9�6�qA�H߅}�چ�M����!Meۚu���	÷�7�M�gn0aW<��s�\'	x��6d1�CyC�C���f-Z1�f�}h�ЦX@ÍM�\Z��.�̟��\n`~��+s7���������D[��h]p񱀈kZ����c�q����:X�e<����_G/G���+�uPA��\nl����p?��a��\0�&�1�B+���c��{�/����ć$Y�H_��ug�����onu.5�}�s봭�o�k�����s^a8-��}�����I�@\0���P$Mkq��fj�	�(�R=��?��3�U ��M�F�\"��dңI��#5Pnx�ܟ�k8\r�.�h�ֶ�wP�pe���Ԁ��L�/�[+!��1N�>��kGZc�0�Ț������M���\"��]�����6���_�v<{�X��\0�/��h�a8�ӿ����������p\n�]�FpC9�C���bߐ*r-�<\r*`.㾁O\'	.a],Ϥ�_�)z%��)Pӡ����Ľ���<�8�y��&���[�.�D����1\\��|P�H�������W�g��h仑���GCL�JX��y\rކ�3�Y@������x�_sĎ��GA��w&�n��ȱ�����v��6�O͞8��]���-D�@>��X��d��d\Z�GZɣ��h)��\0�\'\'p9�s���ܟ�����i�F��h��Īc-���}��O��\n�����%p54੮���؉�z߇a<� \n}����)��?����Ii&��F�9J��w��im���S��[�k@��g���ߏ�Ȅ�]#�#���b=��ľ�\r#7�y6r4�Є+߆6v?�x��������!�����N�$�\\F�I���dYDV����L�$]�~���^����u�\'�\"�!g���H�T��4���1����;h}��/���#��~D?����,��L��M�fpK�5�Fnw#w��6�	ϣ��|����?�?Ͽ���[0\nw\n{�_\n�	�� ��$q��\"�#F�%N�#5K7J[���c:�yu�@ZG7��g]�����r����d6}��KL���$���vZF#d&up� �H�\"g�,�<����\'ɣ�\"Z�.z\r�ț�U�S�0���st\0�o�:��Wۀb5���\nX\r�P;�M��«�����w��N��d:�\r��B밐 �D;&�����}A�`!����B4�2�Dzi\r�6ơS�Eԗj���d��89C�Lz��W$&~R#�0���M皩���9u-�\\ɽK��h�����5�0��!7�+���Fʓ[���^n\Zo��p�;/�C�����ɵdo�r����q�B1�{k�c�y/�O�%���#+�C�����v�����cB�h�w����oӣ�W���&ߡ�܂\\*&9PC3�\Z:ERE;����t�Y�p��Ch��Pp��\'�N(_TX0nl`L~�?���Ѿ�,o�GU2F����]NG��f��fSr�Ѡ�I��R%�W魪W#����N�����h��@}Dš�Ki\"j�F�^JB�����)C(���AY~�Z�U#�*�j�,�Fxw��V�j�L\r�}Z\';�P+]-j�ԫ���\r-�����n���[�d�σn�A#B����8\'\r��ʉ�tɸ�H���2��V�-D��ʆ��siOm~^��7z�E�;5b�k$P�-�#����ʎw��y\';wEeXV�OZ�]ް$�\Zj�\Z?�[qnp]��ǭ��?Ǧq���V�u;;w��G��������sivU}g.��q����������d#�+Ո�;��ҹ������<=�����\'�Z�v�{=�`����\"���s7��C��RL~^�l�s��dN\0I�?�.�4H#gP���$lG���Qŝ��x�	��|��q��SKpVd9��5�/��\'�q6?\"d�^��{@�{��t�!1\"f���r\\P0ğ�#~$7��T���=N�����6Di��MV�A���0N��@�{<L�wDC�;�ms��\n��z ��Fh=Ü<�IY�0��c.L�����R����w��,;l�-#���@7�����s�����o��_ҋ�\'\\�%���<̥�D�8\r����1넓\"|6���&/�J:TEm��U�~Z��5x<��hl��Қ��یL�_ڿ���%�K��pü�V�_��i�W�~���ʫVu�w6DcۖyU���G��Ot�U֟�h4�GZ�jW-��LDm�0��Kv��������f����O���B\\�Oi���(멬�5���4TZ_`�����%���Ώh��������Rx̌�b��I���=�x� ��zJCQz�WN)`m�ĺO�&Y�N�Ѓ�<�X����X�gaY����{�b�{�jMo͜�m��rf��M����x��o�2���Y�@o��x?w\\�����˘	\\��f�X�X�b�q��)����v6mojZ��ݏ�q�~m��CD[g��$���~m�Vo��Z��V��/��Z}B����V�z�V��j����5�_��%�2d�<\n�1T)$�GB\n��D��S��c��H��+X\n�+�<l,��NS�xr+���=��N\'��jх���#;��w$�>J�=�W*S�d\"��l�b,`�{rە�q��uQ+���\\~�,�Q~T�:ң�[�R�)�R�*/(�+3�7s+}H�@�U�<R=���Cf�e.nn@٨�R�U5�*6!�҈��.R���p�\ZU[�\n?sL�DdEn��cJH�])�צ��ǔqJ�2Fіˋ/wY|o9�9����2�U*���d}I��R�!���u��5E�\\�*���K]c����嗺���Q�]g��:�.Ig��t���Q�|���\'!?���1K�F�Y�k�LYM�WJt/FWM��M%Ց��P�L��0�%�-�w*�X��z�TWd��:*��FJ��i��p7!w��h��Dӝ�7�-���>�����i��ݶ�����u������R�\'j����䩞���Iv�a��u�X�5*ro��p��Q���F�VG��S�����LeEy�5��>.�<W9��sy���(\Z���9F�k�N�>u�kt<��y5:T�8�C�F�u���e�g].k���	dht�O~F��ﭬ��z��_��+R��(\n�x�ME�HB5���$�	�1H�h+q�\"��IV��$������4��le�2;ܭ���ٴ�!�M����DZ?���\n��\r�\Z�S!t��2�\"\"IX��׍i�<�C\Zu\'\'P�S�0j/C�X��@�n�ܓ�O%P2[p�����c=>�l���.�O�PɝW	bP햤J̼*jql��1��2\Z;��el��.^���ȍc���,���j��p+���9رN��Z��As�)lq�d?�!lK�\"B>�x��J0,M���N�<�{��p��T����6�ʛ�Ѱ����)�\n�c���\0� �C��B#̅&X�׬U8��_���I�.�ڏ���%��M�h\0\"H��>J��� 1�(�N�G�{��_F���l��F>[6s���?a5n���dc��~R��?�8*ׄ0�y��fH�C�O�h�m�m��v+o�S�6�$��٨%�l�\0��Sb�=�&�S=9�<�s@�\Z%\'B�)�1(���6q�(���\n� ��f�RU�.��_VGj��f����m�?e��\0�U�1ƿE~\r,�R���R*��H�O��&*�^g��/����0)����k���c�=7�#�/FVNh�3�S��}��7O6{�����s�n�b��ž����0\Z��+�9��I�!��M�ΛHf1�+�]�Y���r�| Ǘ̙!;Û��lɆ���?ϐl7�Y��8�ڔT�g(P8�3lvG��*�PE_�Ỳ��m�Ro,#d�A���&��x�n�+�k��F>S��Cݠ<��9����ẁ�1~S�-��0�X��R��3�.[����E��%�Y%Ș�>o�(�...,`�H��bwz}6Q�L4��(D�q���5�=2g{�$�`Fʘ��=����������t�q�$�U͏�<��a���[�T?����y�$Ө�YMu�#���j[�6�g\\]DΘe��u�˖>�x<~�*�V�q&�Q}��}�+[��E�m��A���gGyW�~��ɷm���;�f[�S�P��(�<��`p�$��n���\\w�,\0���;C���.�r�b��l�Qf�K�v��H�w8�έN�8�m�w��R\'�W�f������P:U����/h ` ���lp\Z�����2���/��[KΠ\\>�������[�N���x3�o��Ӛ�k�ID��7�)� j�&D��g�a�_ӽ6n,ԑ�uu�H�N��D�����%ie�+)�L�طٝ&5+*�7�D\'����jL�Xw�{���_o��ڬ��{�߾m[���S2�T�FV�f�\rה�[&O�8��Xx����$��_?w.��K-S��u�y�Kf��B��ny��=o1��Dۘ�rs��N���G�)*V&�0JM/�d���ͻ�W�R	��_ws>.�x]�T-��g%�(Ȓ�N��d6�1�i�y�.�Vj��$9�h�һCivU��R�!�Zf��f>m�͓�|�����v��f!��9꘯�[;�9\r��7��.��2����Yh�*,`���@<�\Z3Env�7��K^_��{^������뎌d��d�5\'H����W�w�s�}_�S3Wq���f�9=i�G13��~_8	F�ʨ�[�%��0�L7̧a�`0\Z�������3��c$z��ΐ�D?�E�(�=��\'28�����j�-��$����X�;�wjam��&\n�+()�����e� �Ԝ�֑S��\rW(~nJN�!k)�{9�{.��*l�JxJ8M�j���g�eRQHK�gp��E)3*kR��\\ �����3�pB��KV�h4�����VA��6���e�����d��d�,`-ASBA��bM>TW	�dZR���������W����޾�hך���*S�=�.صv<�KJ�94�����|uϽ꯿�qq׾9�˲�:�O��p��C+��!�K�Ӷ�v�E|�b+�2�O�)�a��I�Qo�8^Pr�,1�zb�y�\r5��DGlv�C� h�HIA_=߁��%i?�Կ�%�Y���~&��@�@` e���2Q�w��R�MI���$9\nײ`h��L��\"$��K����{��Q�+��u���x�L_bw�5�W�vݷv��Q���7����:N�y\"Lø��áb�(|��+��=\'�N��h���D��N\'I�%-��1�KQ��W�%���^��\\</�G.\\����k0��Q�Z\n0s;���5u����ͦi\0�$�J)��������4|����H���+&��T�>����?��S�g�����^��iy��g/����W�,LiN7{g��d�08Z��,NTl�z���s��ꑥ(�dC���Q�Z������Y�ߦ��,J=�6=�%�f���[?���,Ls1�_��Y�¦�V]#1�h�o��)S\n9n߉����b:�ۖ��x]-��qjx\0���\'�%\'ƕ�أW\n	�4nU&�j�d����(����ꅻ���7�7�x��G�sW����k�i�%�	��ggM��w�oi`M���H��;o#��m��}�G=�@�Z���gC������=z^Lv$�����#\'�h?��id��H&3��l��5K։Fd-2Y�T�@��lC�$iN�*�W\Z����\rރ!de��,�5���G�.����4Ƶ���+�N��=A��MHor!���z��N��ɰ�KMm»�χq�E���yv[�5}\\[h+��$K�C���ˣ�s�[<kF`��7J���0�P�GG2_�\rus���:Z�ֹ���I���|��:��֤��{�{���D�hC�k���Б��%摀\\j�n�S�.���p�!�t+��>)�+�캱ri���tn�^��Y�F�� ��8�:Av�13��]᠛��Y��5n��[z�PQr<�����{�\'���@�Sp\n��	�$��\Z�ܙ�gј�b�g�3$4��?XVV�TS�A���@��Xg��+\'��Z�Sb+��sW��r�o\\_涣wZ�_q�V�cT�ѿ<y�����i�p�@Y���t�����yڑ9��~��:�\ZCI!���O2&c�g�5NHu:=^Z$ )`#:�,˅��.I�d�A��d��d�x,��jC\r�M�L����ӻ!�p����� �k<9�\\6����|���ڈ̿�c�km��$��q�6����\'�/��+���3�e!�4�x�/�#�O�n���������:73Ҏ�E]�?v���7ވ���,�Jg	���ժ�\\��l�ac{Ce�\\-���zp�;\n�<WN�j��C�%�R�U8􆢂�W��jOvͣ��tt�zR�\\�L�Z���\Z4�oZ����Ø�~���<�?XZ��V�iY��ҮDX%��@��b�$�B\"gwh܉w�o�έ���+ٸ-�7�/��<��7<�i���Sv_�q����n[��%Η�{�mk���k��h8g��#�~�s�w�����[?c�0Lj�ڹjK��o1�7�i�S�jB�,i��wI=��ĕR��ܣ.JY)%�`�����y�iX}�ݮϲ�3�A��A���`�$���@aI��7+��\Z�o�3�j�\\�;��ؽ�Y�(���ߊr����k�5魩�)\Z{\'4E��%Y����R��\\j\r���QKW[lͩ�i�鍣�e\\O��:i\'�7�	1�9F�Yd��SE�W�U��*�G�@���W�G���߄���4]��۟��LK��l�h��)����S���Y�����\0�� ٽ[<�Gژ�x��;��3�w��x�ӝz�-o7��F��~��vyo�������²��w=���O[^\\~����\\��� �[�}�oG^X �B)Wٯ��c�h!.W����*o4�E/�*��\0�˷z�ϸI��pAW�����^�2TQp��dk��iA}��fj�<�b��:bVl+��������IK��[ׅx(�{��{��C��,9p�cO����I[ްeS�-�s�\nɧ�dۙ�\'���?�9��\Z½���֥۩p��]3m�\0B#(�6<�z<g.�2F;�N=6ޠ�a��1p\"P�,]I��|��ϥ����.Yr�f�U�!\'EMx5\'���B��R0�a%�&.&h7y�5�������:���x��98 h�$D̈́m+q\\�B��A&���l�d�\"���l���כ�T׃O����\'���GNoڴp�ȇ�~�=��xඓ7������wmS����O�:�--�{}��i��Q�d@\r\nendstream\rendobj\r18 0 obj\r<</Filter[/FlateDecode]/Length 347>>stream\r\nx�m�ۊ�0��}��l��Ƃ���b���K�F���o��3���\nN�/3�?3��ͩ�f���M��+\r��N/��)Mg}1�Ҍz���)X5v3�>��/�;LTUQ��/���is�wz98�]_���\Z������{�������6�W=j�RBuM�������ݨ)�\'IpI*�^/s����ES%DM��פm��.JK9|�����$~��\"��`��/H\0�@�\09�܃��ȐC \\pr8d\0(\0\n�;�wv\0E��=2$���\0$�Ё��x���:J�QB��R�J<�OpR��e�E�Z��`<u�{��<��9(us��0��0>L�X�|H�4c(�����w\r\nendstream\rendobj\r19 0 obj\r<</Filter[/FlateDecode]/Length 240>>stream\r\nx��Q�WUIPV�T��P��5�.40(��.��\nk�����2-9sfv�Ԣ��5���+W1,�b]aȽȜc�=�\n+�\rv�K��׹*o�P���#��eI��ƒ��E�z�W6��虰�o▉��͘�}��=KV�^�r��9.9�l���k�Zwh��3[���u�꣫��p�����\\����[��~z����������כO�����o?�}���ۯ���������~����a��\0\'��\r\nendstream\rendobj\r20 0 obj\r<</BitsPerComponent 8/ColorSpace 41 0 R/Filter[/FlateDecode]/Height 29/Length 625/Name/img0/Subtype/Image/Type/XObject/Width 54>>stream\r\nx���]s� ����+�Ԭac%$��B\0���	���iI���N/t��xx_���a\'��}�������I�1\"�b3��|�S��y0��I\ng�8�M9T	��$��ߌ�{�\Z��	D�e�:���Ϝ4�a�&ǵk(��68�c��8I�t�1l��fl�\r(�b,���x�[+���n��jx�\"��X8Z� �駰��GS4�1���|d�~jc�(�\Zg��q��|����I:.]�\',���)f���kiϾ��m|��f����ض�;\"�Q��\r�����;�u�\'��8WC(-�R H����8�Y���^#���(�����5Y�p���8ꯣ�wL�b��O�O�%ׇ�8V��5��Ϊ�{����=]��K$2	��.+��٫����W��D_ۦ��[]U�����K���^8���=�yS���Q�\nR��`�\0�27�`�-	\0�<�>���JO�O.�\n��q`4U��|~���r�?|�Wd���fWQ�$��;hፉ^��UHI�7���A�u�\n���_���:ܗթ(��\'�=(�<���L\0^[QM#���E!=0W��,Wa��i��J�s��NH��}����sZ)�&���Q����}�o\0�N?\r\nendstream\rendobj\r21 0 obj\r<</Filter/FlateDecode/First 158/Length 934/N 21/Type/ObjStm>>stream\r\nh޴�mO�8ǿ���V~~�VH-�{��AB��Ur*-j�+�����\riZ����{ƞ��Q�	��)ˤ�L9��c�3�5S�y����Gʹ�\n��dR�Y+&�D��Ԇ�_:�	0UTh�<�z�=���-�3���S�H�h��%��\r{(����E�!�nxAƩ�HV�2��P9;�_V��m�h^������iB���L�Z���~`�`-����j��$-*�\nˇ�f��i�Ĭ��x�L��bV~�j�������l�Lvt4Z��n�qz��-�ۆ?��ć��÷�����h9�򫪘���b6OL��TL�����k�R����z���_�Uz��\Z�o�w���l�\\\\�/�r�l<X���7��^S��v��PKrx~J1b7��\'�]~ ��=@/�k�V7���k�^�6IsI	��w�u.0#����5*�=��t^�6�f|��b\"�\0���>�=M�b%�<�0*։v�7\\�r��Ο��@g��Q�����T���|�(4w��)��n�uQN����zov��9�k:������zêA`�&y�Uq��fk�ª{`mW_s�ׁ�}��(MX�/��]`�5�����o���m��(�H�vZ�����[�kXc��	d1�62R�P�#�N_[\'��mنt�\Z���{N�G���Q����\0�.��(��@-\Z\0�k��1�?\0��,���g{�;o�B����u��_���]D�v�i���5F�:���ބ�.Z � C�Hړ1�-mT\'�H�\r�j�],�1���t4[q�4}�hq C��&�y�@Փ��\"�{��0\\�ż?��|�Dr��$*p�뱸��E�ڏp(e_��G�m�k��ɾ��Eo������Ug�����W8\0W��ſ\\��]z���s1K�Z�����_-��5MAүr�n�ᒧO\\\Z�p_o���z��[�\0���\r\nendstream\rendobj\r1 0 obj\r<</Length 3344/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.2-c001 63.139439, 2010/09/27-13:37:26        \">\n   <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\">\n         <xmp:CreatorTool>Crystal Reports</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-02-18T11:48:32-06:00</xmp:ModifyDate>\n         <xmp:CreateDate>2013-02-18T11:48:32-06:00</xmp:CreateDate>\n         <xmp:MetadataDate>2013-02-18T11:48:32-06:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\">\n         <pdf:Producer>Powered By Crystal</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\">\n         <xmpMM:DocumentID>uuid:8fdfa484-6eb5-4f1a-857a-8635ff993a08</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:cc023c2f-c7f2-4f42-90f8-ba215e45851c</xmpMM:InstanceID>\n      </rdf:Description>\n      <rdf:Description rdf:about=\"\"\n            xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n         <dc:format>application/pdf</dc:format>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>\r\nendstream\rendobj\r2 0 obj\r<</Filter/FlateDecode/First 4/Length 48/N 1/Type/ObjStm>>stream\r\nh�2U0P���w�/�+Q0���L)�����T��$����\0�w�\r\nendstream\rendobj\r3 0 obj\r<</Filter/FlateDecode/First 4/Length 107/N 1/Type/ObjStm>>stream\r\nh�2S0P���w.JM,���sI,I�p�2204602�044�06�50S70Pׄ��/�p.�,.I�QJ-�/*)����O��3�(?�49�H# �<�(5E��Rj���@�\0�\n&�\r\nendstream\rendobj\r4 0 obj\r<</DecodeParms<</Columns 3/Predictor 12>>/Filter/FlateDecode/ID[<460C054866AA094EA09A7E70BDA65C06><460C054866AA094EA09A7E70BDA65C06>]/Info 6 0 R/Length 37/Root 8 0 R/Size 7/Type/XRef/W[1 2 0]>>stream\r\nh�bb```b\\�����������x�����f0\0)A\r\nendstream\rendobj\rstartxref\r\n116\r\n%%EOF\r\n',1,6,7,1314),(7,'FY13 NHZ Parent Survey.doc','71168','application/msword','��ࡱ\Z�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0��	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0����\0\0\0\0�\0\0\0�\0\0\0����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������\0{�	\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0bjbjBrBr\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\rr\0\0 \0 \0D\0\0\0\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0\0�\0\0T\0\0\0\0\0\0T\0\0\0\0\0\0T\0\0\0\0\0\0T\0\0\0\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0h\0\0\0\0\0\0h\0\0\0\0\0\0h\0\08\0\0\0�\0\0$\0\0\0�\0\0\0\0h\0\0\0\0\0\0j\0\00\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0$\0\0\0�\0\0�\0\0L \0\0R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0V\0\0\"\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0\0\0\0T\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0v\0\0$\0\0\0\0\0�\Z\0\0\0\0\0\0�\Z\0\0\0\0\0\0�\Z\0\0\0\0\0\0x\0\0^\0\0\0T\0\0\0\0\0\0�\0\0\0\0\0\0T\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0\0\0\0\0�\Z\0\0\0\0\0=\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\0\0\0\0�\0\0\0\0\0\0����\0\0\0\0`��3b��\0\0\0\0\0\0\0\0����\0\0\0\0�\0\0^\0\0\0U\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0:\0\00\0\0\0j\0\0\0\0\0\0]\0\0\0\0\0� \0\0\0\0\0\04\0\0�\0\0� \0\0\0\0\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e\0\0\0\0\0� \0\0\0\0\0\0\0\0\0\0\0\0\0\0T\0\0\0\0\0\0y\0\0\\\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0�\Z\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0j\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0� \0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0x\0\0\0\0\0\0�\0\0 \0\0\Z\0\0:\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Nombre del ni�o:Fecha:			\rEn el mes pasado, cuantas veces ha realizado las siguientes actividades con su hijo/a?NuncaUna o dos vecesUna vez por semana2 a 3 veces por semana4 o m�s veces por semana1.Hablar con mi hijo/a acerca de la escuela012342.Ayudar a mi hijo/a con la tarea012343.Ayudar a mi hijo/a a encontrar un tutor u otro tipo de apoyo para su trabajo en la escuela012344.Hablar a mi hijo acerca de la importancia de graduarse de la escuela012345.Hablar con mi hijo/a acerca de un libro que est� leyendo.012346.Animar a mi hijo/a a que vaya a la biblioteca y sacar libros012347.Ir a con mi hijo/a a un museo012348.Ir con mi hijo/a a un evento comunitario ( un paseo a granja o una fiesta de la comunidad)012349.Hablar con el maestro de mi hijo/a para ver c�mo va en la escuela.0123410.Participo en actividades que ofrecen en la escuela de mi hijo/a (por ejemplo: junta de padres, talleres, comit�s).01234\rSe�ale el numero que mas identifique lo que piensa de las siguientes afirmaciones:Totalmente en desacuerdoEn desacuerdoNeutroDe acuerdoTotalmente de acuerdo1.Creo que es importante hablar con mi hijo/a acerca de su trabajo en la escuela012342.Me siento capaz de apoyar el desarrollo acad�mico de mi hijo/a.012343.Creo que es importante hablar con mi hijo/a acerca de sus planes futuros012344.Me siento capaz de ayudar a mi hijo/a a preparase para el futuro.01234\rComentarios:\r\r\r\r\r\r�Gracias por su participaci�n!\r\rChild�s Name:Date:\rIn the past month, how often have you done the following activities with your child?\rNot at allOnce or twiceAbout once a week2 to 3 days a week4 or more days a week1.Talked to my child about his/her school work.012342.Helped my child with his/her homework.012343.Helped my child find a tutor or other support for his /her school work.012344.Talked to my child about the importance of graduating from high school.012345.Talked with my child about a book he/she is reading.012346.Encouraged my child to go to the library to check out books.012347.Gone with my child to a museum.012348.Gone with my child to a community event (like a farmer�s market or community celebration).012349.Met with my child�s teacher or teachers to talk about his/her progress at school.0123410.Participated in activities at my child�s school (like committees, the parent teacher association or other groups). 			\rCircle the number that best describes how much you agree or disagree with the following statements.Strongly disagreeDisagreeNeither disagree nor agreeAgreeStrongly agree1.I think it is important to talk to my child about his/her school work.012342.I feel confident in my ability to support my child�s academic development.012343.I think it is important to talk to my child about his/her plans for the future.012344.I feel confident in my ability to help my child prepare for his/her future.01234\rComments:\r\rThank you for your participation!\r\r\r\r\r\r\r\r\r\r\r                         New Horizons\r                         Parent Survey: FY13 Pre-Test\r\r\r\r\r\r\r\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0�\0\0�\0\0�\0\08	\0\0�	\0\0�	\0\0�	\0\08\n\0\09\n\0\0j\n\0\0x\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0\0\0\0\0i\0\0j\0\0m\0\0n\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0@\0\0����ʾ�߶߶ߧ߶ߧߧߟߧߧ�������������r��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h/�\0hsF\0CJ\0aJ\0mH\nsH\n\0hsF\0hsF\0mH\nsH\n\0h/�\0hsF\0mH\nsH\n\0hsF\0mH\nsH\n\0h�I9\0mH\nsH\n\0h/�\0hGJ�\0CJ\0aJ\0mH\nsH\n\0hGJ�\0mH\nsH\n\0h/�\0h�l\0\05�mH\nsH\nh/�\0hGJ�\05�mH\nsH\nh�x�\05�mH\nsH\nh/�\0hGJ�\0mH\nsH\n\0hGJ�\0hGJ�\05�mH\nsH\nh�I9\05�mH\nsH\n\0)\0\0\0\0\0\0\0\0\0\Z\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0?\0\0\0\0\0\0\0\0\0\0\0\03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n&\0F\0\0�h^�hgdGJ�\0�\0\0kd\0\0\0\0$$If\0\0\0\0T\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0�F\0Q�SA\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a���p�\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0yt�I9\0�T\0	\0\0$If\0\0\0gdQ�\0	\0\0$If\0\0\0gdg�\0	\0\0$If\0\0\0gdGJ�\0\0\0\0u\0\0{\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0	\0\0	\0\0	\0\0	\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdQ�\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0Ff\0\0\0\0$$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdGJ�\0\0	\0\0	\0\0\n	\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0�\0\0kd,\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0ytsF\0\0\n	\0\0*	\0\0,	\0\0.	\0\00	\0\02	\0\04	\0\05	\0\08	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0Ffq\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdQ�\0\0�	\0\0�	\0\0�	\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0�\0\0kd�\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0ytsF\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0.\n\0\00\n\0\02\n\0\04\n\0\06\n\0\08\n\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0Ff\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdQ�\0\08\n\0\09\n\0\0<\n\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0�\0\0kdf\r\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0�F&\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0B�a�\0\0ytsF\0\0<\n\0\0y\n\0\0{\n\0\0}\n\0\0\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0Ff�\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdQ�\0\0�\n\0\0�\n\0\0�\n\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0�\0\0kd1\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0�F&\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0B�a�\0\0ytsF\0\0�\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0_\0\0a\0\0c\0\0e\0\0g\0\0i\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0Ff�\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdQ�\0\0i\0\0j\0\0n\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0�\0\0kd�\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0�F&\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0B�a�\0\0ytsF\0\0n\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0@\0\0Y\0\0g\0\0n\0\0y\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0Ff�\0\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0gdGJ�\0\0\0\0Ffc\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdQ�\0\0@\0\0�\0\0\r\0\0$\r\0\0.\r\0\0/\r\0\0U\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0\0\0\0\0\0\0\0\0$\0\0&\0\0*\0\0,\0\0-\0\0.\0\0?\0\0�\0\0�\0\0�\0\0\n\0\0\0\0?\0\0�������������ܽ䮥�ȜȘ����xtogcgc\\ch�7�\0h�x�\0\0h�x�\0\0h9E1\0h�x�\05�	h�x�\05�h�I9\0\0h/�\0h�I9\0mH\nsH\n\0hGJ�\0h�I9\05�mH\nsH\nh�I9\05�mH\nsH\nhQ�\0\0hGJ�\05�mH\nsH\nhM�\05�mH\nsH\nh/�\0hGJ�\0CJ\n\0aJ\n\0mH\nsH\n\0h/�\0h�x�\0mH\nsH\n\0h/�\0hGJ�\05�mH\nsH\nhGJ�\0mH\nsH\n\0h�I9\0mH\nsH\n\0h/�\0hGJ�\0mH\nsH\n\0h/�\0hGJ�\05�CJ\0aJ\0mH\nsH\n\0$�\0\0�\0\0�\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0�\0\0kd\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����P��\"&&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0ytQ�\0\0�\0\00\r\0\02\r\0\04\r\0\06\r\0\08\r\0\0:\r\0\0;\r\0\0>\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0$If\0\0\0gdGJ�\0\0\0$$If\0\0\0a$gdQ�\0\0\0\0FfB!\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gd�I9\0\0�\r\0\0�\r\0\0�\r\0\0\"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gdQ�\0�\0\0kd�#\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0�F\0֞\0����P��\"&&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0ytQ�\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\r\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0gdGJ�\0\0\0\0Ff�%\0\0\0\0$�x\0�x\0$If\0\0\0a$gdQ�\0	\0\0$If\0\0\0gdQ�\0\0\r�\r\0\0�\r\0\0�\r\0\0�\r\0\0\0\0\0\0%\0\0&\0\0,\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0$If\0\0\0gd�I9\0\0\0\0\0\0\0$a$gdGJ�\0\0\0\0gdGJ�\0\0n\0\0kd(\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0���*\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0\Z�\0\0\0��\0\0\0��\0\0\0��\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�\n\0\0\0�\0\0\0�\0\0ytQ�\0\0,\0\0-\0\0.\0\0�\0\0�\0\0�\0\0�\0\0Z\0\0\0\0\0\0\0\0\0\0\0\0X\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0\0\0\0\0\05\0\0\0\0\0\0\0\0\0\0\0\05\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\0\0$��\0& #$/��\0If\0\0\0gd��\0\0\0\0�\0\0kd�(\0\0$$If\0\0\0\0T\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0�F\0Q�SA\'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a���p�\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0yt�I9\0�T\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$�x\0�x\0$��\0& #$/��\0If\0\0\0a$gd��\0\0\0$��\0& #$/��\0If\0\0\0gd��\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\0\0\0Ff�*\0\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0kd�,\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0yt��\0\0\0\0\0\0?\0\0A\0\0C\0\0E\0\0G\0\0I\0\0J\0\0M\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0FfZ/\0\0\0\0$�x\0�x\0$��\0& #$/��\0If\0\0\0a$gd��\0\0\0$��\0& #$/��\0If\0\0\0gd��\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\0?\0\0I\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0`\0\0a\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0Q\0\0R\0\0S\0\0T\0\0U\0\0V\0\0W\0\0X\0\0Y\0\0Z\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0	\0\0\n\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0B\0\0C\0\0D\0\0E\0\0G\0\0H\0\0J\0\0K\0\0M\0\0N\0\0P\0\0Q\0\0�����������������������������������������������������������������������̾\0\0\0\0\0\0\0\0\0\0\0\Zj\0\0\0\0h�I9\0UmH\0nH\0u\0h��\0\0j\0\0\0\0h��\0Uh2w�\0h�x�\05�	h�x�\05�huO_\0h�x�\05�h9E1\0h�x�\05�h�x�\0\0h�7�\0h�x�\0I�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0kd�1\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0yt��\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0.\0\00\0\02\0\04\0\06\0\08\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ff-4\0\0\0\0$�x\0�x\0$��\0& #$/��\0If\0\0\0a$gd��\0\0\0$��\0& #$/��\0If\0\0\0gd��\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\08\0\09\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0kd�6\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0yt��\0\09\0\0<\0\0y\0\0{\0\0}\0\0\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ff\09\0\0\0\0$�x\0�x\0$��\0& #$/��\0If\0\0\0a$gd��\0\0\0$��\0& #$/��\0If\0\0\0gd��\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0kdj;\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0yt��\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0p\0\0r\0\0t\0\0v\0\0x\0\0z\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ff�=\0\0\0\0$�x\0�x\0$��\0& #$/��\0If\0\0\0a$gd��\0\0\0$��\0& #$/��\0If\0\0\0gd��\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\0z\0\0{\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0kd=@\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0yt��\0\0{\0\0\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0a\0\0s\0\0|\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0FfLF\0\0\0\0$$If\0\0\0a$gd��\0	\0\0$If\0\0\0gd��\0\0\n&\0F\0\0�h^�hgd�x�\0\0\0\0Ff�B\0\0\0\0$�x\0�x\0$��\0& #$/��\0If\0\0\0a$gd��\0\0\0$��\0& #$/��\0If\0\0\0gd��\0\0\0$$��\0& #$/��\0If\0\0\0a$gd��\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$�x\0�x\0$If\0\0\0a$gd��\0	\0\0$If\0\0\0gd��\0\0\0$$If\0\0\0a$gd��\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gd��\0�\0\0kdtH\0\0$$If\0\0\0\0T\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0��h�<�\"R&�*��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0yt��\0�T\0\0\0\0P\0\0R\0\0T\0\0V\0\0X\0\0Z\0\0[\0\0^\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0$If\0\0\0gd��\0\0\0$$If\0\0\0a$gd��\0\0\0\0Ff�J\0\0\0\0$�x\0�x\0$If\0\0\0a$gd��\0	\0\0$If\0\0\0gd�x�\0\0�\0\0�\0\0�\0\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$$If\0\0\0a$gd��\0�\0\0kd�L\0\0$$If\0\0\0\0T\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0��h�<�\"R&�*��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0yt��\0�T\0\0�\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0!\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0m\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\0kd^Q\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0���*\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0\Z�\0\0\0��\0\0\0��\0\0\0��\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�\n\0\0\0�\0\0\0�\0\0yt��\0\0\0\0gd�x�\0\0\0\0Ff�N\0\0\0\0$�x\0�x\0$If\0\0\0a$gd��\0	\0\0$If\0\0\0gd��\0\0!\0\0C\0\0D\0\0F\0\0G\0\0I\0\0J\0\0L\0\0M\0\0O\0\0P\0\0R\0\0x\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$a$gdQ�\0\n\0&d\0P�\0\0\0�\0\0\0\0\0gdQ�\0\0\0\0gdGJ�\0\0\0\0\0\0\0$a$gd�x�\0\0Q\0\0k\0\0w\0\0x\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h�x�\0\0h��\0\0hr\0h�I9\0CJ\0aJ\0\0hGJ�\0h�I9\0mH	sH	\0h�I9\0mH	sH	\0h�I9\02\01�h:pQ�\0��/ ��=!��\"��#��$��%�\0\0�������F��\r\0\0���z����\\��dzH������\0JFIF\0\0`\0`\0\0��\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=��\0C\r=)#)==================================================��\0\0g\0m\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�j(��ב��P�t���gyJ�f�\0�:����m\Zx���u���o�pĮk�	�KV�MۭQм=��K.�\Z�d�f�6��d;��e�|S�h�%Ͳ��\"�G���ñ���O�����1�ٝ�7����B?�~�����xwP��b�g�V�L`��zdv�kf��\r\'\'�K�ɻ��v�u��7�^c�fa+��5<~#�a�\0W�_�n���ͫ�>�>���al>y[��ݏ�W�(�+�b����xmR}&mSY��H\"!)U\\��ҳ�U�x���si{Ηps�%m��G�{�O�z�Y[��oNb��\Z���#j�\0S�T�-���5� ���	c�\'�}��{����ӷ��7ع���7>#��[�� uǖ�AR=>��]\\���\'7��T�w��n��d���?\n�떷/;�����(��Ȱ��(��}���^O��˶;�x�>���{rs,����{�{g�c��A��Fs\r����u�A���H�;�\0�x��I4��jv1����!�wֻp�P����0��������?l�$77v\"�� �:o�q��f��8�Y8�.�*�s�z��^\"�C�gm��$�x�WR+�Ak.k�m��/���X��Z3Q���h\Z���n��!3с���e��i�#�O%�ț��W�3�v���w�N��K�F���)�{R7Cq�A_�����cmR��8�~�K��t@�]x,|�Y|���Oe���b\'M8�D�\Z\'��[�ɯk�Wd��\\�G8��MC�h�~M_��ܸ[�4�F8=��֞�\n|����Hમ�0=��s�\0ڭ�\0\'�8���~��y�Y۷�_^��E�ɻ���!��t=_�Z�����M4����3Ո�c�ֽqs��?�!�im�\'N�QO?��W�R6zwB�EQ@��M<�:=�*H/}q��W��w�Y薗\Z���^���o�\"����kмgc�_�P.�ѭ�W)*��\\m�<���n�]�wpj�0>�yz\'!1~F���|�7뱅E�f7����Pnno$5�g,OS��4_�\0k���Ɉk7B 뷩�A�+�G����H�T��Ҥ�����g����rר�˘d�:�%-\\R��^��ɧ_�$�f�dl�y\r���gq���V|}\0}N�XI�b,�� ��`�j���:�9��$K���~�^i����X��BNoZ�`+<t12�������#��m����M��1I�s��#ne(gך�|{�3!o�\"3�D��*�����~�#��2LFB�S]V���+J�o.�iℲ��\0=����\r]P��mh���:t�J<�c3Aյ_��Hk�M�[H\\�v/RN>������4��[P���\Z*{�7?�W�V��*��ZƔ~�EW)�QE��V�Y4+I�~�+��c�A��u�q��L�ƥ�r@�I�+ߵ�5u��ű���S��A��^C�iW�%���g,-��Ҩ�xg?*��<���O�P�[����sԅ�X4]��t�����&�D��!�����J�.o�m���xy\"ef�\0�5A-�u����d;�������	���7 c?0\n\"k:8*���<C��Yz\'�.jVJ:#�Ѽ9�i�YF��i݄��=�\\���F�Ԏ��\0�ܟ��ᓿ����R��HSse0<�\n~��l������}miy\"cw�W�G*�pxϭS��SѦ���J�9Ñ�w�!H�+l�e,�}NH��_�z�V���S=�\n<��Iǧ�ZojF�Ag��@`c�}3ҹ�e�yZY�i$c�w9\'񬰜9Z�9�qN˛�-��]�x��|�6��f���Bp����\0F�~��q��tx^�[��?����\0}\n����:ft�(���7\n)(���0��iih��F\0=-Ps�CsK�����a�x��o���ѻ�LS��QU�;14��,~�t�\0ˬ��3�0�3�����N��QU��3${ޗ�-HԢ��I��d��7\0H�q]%T�nN�w\ZIl-��#9\rY�VЯ5{���O9�-�m�Gp�\'�?�t�	��%��Ƥ���}Z�/��%���G�-<Q�T�����f���-���C$_�1.1�z����ؔ����|G-Ǌ�ln]1	�J����ߍ�\'�/��;�)�~�\Z�9pz�һ�l�.,�I��s+�+�u�O�t�Mj�m�U�%p�U��çOJ|��N³�FZ�WV>5�HyMŭͩ���&S����3�Z�G+Au.�!>kZ`���0�F?��m��[]It�Z�E\n�HŘ��2zaM�K�{�.7̒I��rFq��y�G4n����\'[�\"�d��R�`������o�b��P��Ɣ�s��x�ȱ�K��9��t6����Gom\Z�Jz\0*���Zj��݉��ǵ��a��J-)]�\r;X���+�����-���l��2\00ĀO��<o}w�i��Y\\<.�q��pr�y�+V�b]M<ϵʂ7b䂣��J5]�Y�8�U�#q\"�r�0�x���d�����fu\"�@���8`y�ֱ|q�{{����i�;��ҷ!$\r3a�i ���m���l�`���[hH�yͷ �^y��Mrُ[ܧ��7��\0i���M\Z�\\�`Q[�X��Y�x�20����Z�V���]�j�\\�ӥAs���|��-���JHQ�;S�l�Y��QPQ���e�����V�h?+m%A�=��ѣ�i��n4�p��bPP0{���QZ%x6O�9�B��j��@-�0�B�ňݐ�����|G��v�O-��N<�b$2>�A��Ǳ���+8��bV���y��ji�I�H�}�0����fO��\'��|��r˓̅���<�QS[~C{\"\ZʱZi�}�o�$����8�=���\"��M\Z��!�	\\)\n��B�ڊ)��i����uı�i&�G�m$Qb|�e��� czסQE׽�w=���+C��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0$$If\0\0\0���!v\0h#v\0#v�#v�:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\05�\05��5��a���p�\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0yt�I9\0�T\0N$$If\0\0\0�\0\0!v\0h#v\0T#v�#v*#v#v	#v�:V\0�l\0	�\0\0\0\0\0\0\nt\0\0��<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0T5��5�*5�5�	5��p�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0\Zkd�\0\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0ֈ\0���l��\"�&�*�T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\nt\0\0��<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0�\0$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��ytsF\0r$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0Vkd�\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0�\0$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��ytsF\0r$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0Vkd�	\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0�\0$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��/�\0\0\0\0�\0\0B�ytsF\0�$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��/�\0\0\0\0�\0\0B�p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0\\kdK\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0�F&\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0B�a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0�\0$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��/�\0\0\0\0�\0\0B�ytsF\0�$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��/�\0\0\0\0�\0\0B�p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0\\kd\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0�F&\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0B�a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytsF\0�\0$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��/�\0\0\0\0�\0\0B�ytsF\0�$$If\0\0\0�\0\0!v\0h#v\0.#v&#v�#v*#v#v	#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5�&5��5�*5�5�	5��/�\0\0\0\0�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt�z=\0Vkd�\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l��\"�&�*�.\0\0\0\0\0\0\0\0�&\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0�*\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�	\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt�z=\0@$$If\0\0\0�\0\0!v\0h#v\0*#v�#v�#vX#vv:V\0�l\0	�\0\0\0\0\0\0\nt\0\0��<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0*5��5��5�X5�vp�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytQ�\0\Zkd�\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0ֈ\0���P��\"&&�*�*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\nt\0\0��<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytQ�\0�\0$$If\0\0\0�\0\0!v\0h#v\0.#v�#v�#v�#vX#vv:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5��5��5��5�X5�vytQ�\0d$$If\0\0\0�\0\0!v\0h#v\0.#v�#v�#v�#vX#vv:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5��5��5��5�X5�vp�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytQ�\0Vkd�\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����P��\"&&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytQ�\0�\0$$If\0\0\0�\0\0!v\0h#v\0.#v�#v�#v�#vX#vv:V\0�l\0�F\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5��5��5��5�X5�vytQ�\0d$$If\0\0\0�\0\0!v\0h#v\0.#v�#v�#v�#vX#vv:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0.5��5��5��5�X5�vp�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytQ�\0Vkda$\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����P��\"&&�*�.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0ytQ�\0�\0$$If\0\0\0�\0\0!v\0h#v\0+:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\065�\0+p�\n\0\0\0�\0\0\0�\0\0ytQ�\0�\0$$If\0\0\0���!v\0h#v\0#v�#v�:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\05�\05��5��a���p�\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0\0\0\0�\0\0\0�\0\0yt�I9\0�T\0`$$If\0\0\0�\0\0!v\0h#v\0#v�#v�#v8#v�#v�:V\0�l\0	�\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05��5��5�85��5��p�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0,kda)\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0ֈ\0���l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0p�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�\0$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��yt��\0�$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0hkd�-\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�\0$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��yt��\0�$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0hkd�2\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�\0$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��yt��\0�$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0hkdz7\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�\0$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��yt��\0�$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0hkdM<\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�\0$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0\nt\0\0�\r6 ��\0��\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��yt��\0�$$If\0\0\0�\0\0!v\0h#v\0#v#v�#v�#v8#v�#v�:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0��\0,�\05�\05�5��5��5�85��5��p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0hkd A\0\0$$If\0\0\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0����l�(#\'�*�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0�\r6 ��\0��\0�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\06�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0���\04�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0:$$If\0\0\0�\0\0!v\0h#v\0�#v�#v�#vJ:V\0�l\0��	�\0\0\0\0\0\0\nt\0\0��<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0�5��5��5�Jp�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�T\0&kdE\0\0$$If\0\0\0\0T\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0��ֈ\0���<�\"R&�*��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\nt\0\0��<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�<\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�T\0�\0$$If\0\0\0�\0\0!v\0h#v\0�#v�#v�#v�#vJ:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0�5��5��5��5�Jyt��\0�T\0Z$$If\0\0\0�\0\0!v\0h#v\0�#v�#v�#v�#vJ:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0�5��5��5��5�Jp�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�T\0^kd-I\0\0$$If\0\0\0\0T\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0��h�<�\"R&�*��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�T\0�\0$$If\0\0\0�\0\0!v\0h#v\0�#v�#v�#v�#vJ:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0�5��5��5��5�Jyt��\0�T\0Z$$If\0\0\0�\0\0!v\0h#v\0�#v�#v�#v�#vJ:V\0�l\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0,�\05�\0�5��5��5��5�Jp�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�T\0^kd�M\0\0$$If\0\0\0\0T\0�l\0�\0\0\0\0\0\0\0\0\0\0\0\0֞\0��h�<�\"R&�*��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\0\0\0\0\0\0\0\nt\0\0��F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0�0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\Z�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0��\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�4�\0\0\04�\0\nl\0a�\0\0p�F\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0\0\0\0����\0\0\0yt��\0�T\0�\0$$If\0\0\0�\0\0!v\0h#v\0+:V\0�l\0\nt\0\0��0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0\065�\0+p�\n\0\0\0�\0\0\0�\0\0yt��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\06\0\06\0\06\0\06\0\06\0\06\0\0>\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0�\0\0\06\0\06\0\0\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0�\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0h\0\0H\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0�\0\06\0\02\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\02\0\0(\0\0�\0\0�\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\08\0\0X\0\0�\0\0\0\0\0\0V\0\0~\0\0 \0\0\0OJ\0PJ\0QJ\0_HmH	nH	sH	tH	\0\0\0\0H\0\0`��\0H\0\0\0GJ�\0\0\0\0N\0o\0r\0m\0a\0l\0\0\0\0\0\0 \0CJ\0OJ\0\0QJ\0\0_HaJ\0mH	sH	tH	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0A ���\0D\0\r\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0R\0i@���\0R\0\0\0\0\0\0\00\0T\0a\0b\0l\0e\0 \0N\0o\0r\0m\0a\0l\0\0\0\0�\0\04�\0\nl\04�\0\0\0a�\0\0\0\0\0\0(\0k ���\0(\0\0\r\0\0\0\0\0\00\0N\0o\0 \0L\0i\0s\0t\0\0\0\0\0\0\0\0\0<\00@\0�\0<\0\0\0GJ�\00\0L\0i\0s\0t\0 \0B\0u\0l\0l\0e\0t\0\0\0\0\0\n&\0F\0m$\0\0@\0@\0@\0\0GJ�\00\0H\0e\0a\0d\0e\0r\0\0\0\r\0\0\r�\0H�$\0\0mH\0\0sH\0\0tH\0\0R\0�o��R\0\0\0GJ�\00\0H\0e\0a\0d\0e\0r\0 \0C\0h\0a\0r\0\0\0$\0CJ\0OJ\0\0PJ\0QJ\0\0^J\0\0aJ\0mH\0\0sH\0\0tH\0\0@\0 @\0\"@\0\0GJ�\00\0F\0o\0o\0t\0e\0r\0\0\0\r\0\0\r�\0H�$\0\0mH\0\0sH\0\0tH\0\0R\0�o��1R\0\0\0GJ�\00\0F\0o\0o\0t\0e\0r\0 \0C\0h\0a\0r\0\0\0$\0CJ\0OJ\0\0PJ\0QJ\0\0^J\0\0aJ\0mH\0\0sH\0\0tH\0\0PK\0\0\0\0\0!\0����\0\0\0\0\0\0\0\0[Content_Types].xml���N�0E�H���-J��@%�ǎǢ|�ș$�ز�U��L�TB� l,�3��;�r��Ø��J��B+$�G]��7O٭V��\Z<a������(7��I��R�{�pgL�=��r����8�5v&����uQ�뉑8��C����X=����$␴�?6N�JC�������F�B.ʹ\'�.�+���Y�T���^e5�5�� ��ð�_�g -�;�����Yl�ݎ��|6^�N��`�?���[\0\0��\0PK\0\0\0\0\0!\0�֧��\0\0\06\0\0\0\0\0_rels/.rels���j�0���}Q��%v/��C/�}\0�(h\"���O�\n������=������ ����C?�h�v=��Ʌ��%[xp��{۵_�Pѣ<�1�H�0���O�R�Bd���JE�4b$��q_����6L��R�7`�������0̞O��,�En7�Li�b��/�S���e��е����\0\0��\0PK\0\0\0\0\0!\0ky��\0\0\0�\0\0\0\0\0\0theme/theme/themeManager.xml�M\n� @�}�w��7c�(Eb�ˮ��\0C�\ZAǠҟ����7��՛K\rY,�\r�e�.���|,���H�,l����xɴ��I�sQ}#Ր���� ֵ+�!�,�^�$j=�GW���)�E�+&\n8�\0\0��\0PK\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0theme/theme/theme1.xml�YOo�6��w toc\'v\Zu�ر�-M�n�i���P�@�I}��úa��m�a[�إ�4�:lЯ�GR��X^�6؊�>$���������!)O�^�r�C$�y@�����/�yH*��񄴽)�޵��߻��UDb�`}\"�qۋ�Jח���X^�)I`n�E���p)���li�V[]�1M<����\Z��O�P��6r�=���z�gb�Ig��u��S�eb���O������R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j�����zA�\0�V�2�F���i�@�q�v�֬5\\|��ʜ̭N��le�X�ds���jcs����7����f����\r��W���+�Ն�7����`���g�Ș��J�\Z��j|��h(�K��D-����\0\rdX��iJ�؇(��x$(��:��;�˹!�I_�T��S1�������?E��?������?ZBΪm���U/������?�~����xY����\'���y5�g&΋/����ɋ�>���G�M�Ge���D�����3Vq%\'#q�����$�8��K�����)f�w9:ĵ��\nx}r�x����w���r�:\\TZaG�*�y8I�j�bR��c|XŻ�ǿ�I\nu3KG�nD1�NIB�s���\n��R��u���K>V�.EL+M2�#\'�f��i~�V��vl�{u8��z��H�\n�*���:�(W�☕\r~��J��T�e\\O*�tHG��HY��\0}KN��P�*ݾ˦���TѼ�9/#��A7�qZ��$*c?���qU��n��w�N��%��O��i�4=3��N���)cbJ\ru�V�4����(Tn���\n7��_?���m-ٛ�{U����B�w�<w���_���$�#��[Ի���8{���(�/�$Ϫ0h݋�F۴��®{L�)#7�i�%�=A�:s�$�),��Qg20pp��f\r\\}DU4�p\nM{��DB��%J��â������+{�l�C���]��=��5\n2F��hsF+��Y��\\Ɉ�n�ì��:3���E�[��6�9����`��&45Z!��*��5k8�`Fmw��-��\"�d>�z���n���ʜ\"Z��x��J�Z��p;����\Z���{/�<�P;��,)\'\'K�Q�k5���q���pN��8�K�Gb�e���\r�S��d�̛�\\17	�p�a�>��SR!���\r\r3��\0K4\'+�r�zQ\nTT��I����Ivt]K�c⫲�K#�v�5+�|��D�\Z�����~��O@%\\w���_�nN[�L��9K����q��g�V�h��n\nR!�y+��U�n�;�*&�/H�r��T��	�>��>\\\r�t��=.Tġ\n���\ZS; Z�~�!������P��9gi���C�ڧ!�#	B��,��;�X=ۻ,I�2UW�V�9$l�k���=A��j���;�{�A�P79�|s*Y�����;�̠�[�MC�ۿ�hf��]o��{oY=1k�\ZyV\0��V����5E8�Vk+֜���\\8���0X4D)�!!��?*|f�v�\ru����\"�x��A�@T_������q��6�4)kڬu�V�7��t�\'��%;���i�9s�9�x���,��ڎ-45x�d���8?�ǘ�d�/Y|t��&LIL�J`�& �-G�t�/\0\0\0��\0PK\0\0\0\0\0!\0\rѐ��\0\0\0\0\0\'\0\0\0theme/theme/_rels/themeManager.xml.rels��M\n�0���wooӺ�&݈Э���5\r6?$Q��\r�,.�a��i����c2�1h�\Z:�q��m��@RN��;d�`��o7�g�K(M&$R(.1�r\'J��ЊT���8��V�\"��AȻ�H�u}��|�$�b{�\0�P����8\Z�g/]�QAsم(����#��L�[����\0\0\0��\0PK-\0\0\0\0\0\0!\0����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�֧��\0\0\06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00\0\0_rels/.relsPK-\0\0\0\0\0\0!\0ky��\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0theme/theme/themeManager.xmlPK-\0\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0theme/theme/theme1.xmlPK-\0\0\0\0\0\0!\0\rѐ��\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0theme/theme/_rels/themeManager.xml.relsPK\0\0\0\0\0\0]\0\0�\n\0\0\0\0<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<a:clrMap xmlns:a=\"http://schemas.openxmlformats.org/drawingml/2006/main\" bg1=\"lt1\" tx1=\"dk1\" bg2=\"lt2\" tx2=\"dk2\" accent1=\"accent1\" accent2=\"accent2\" accent3=\"accent3\" accent4=\"accent4\" accent5=\"accent5\" accent6=\"accent6\" hlink=\"hlink\" folHlink=\"folHlink\"/>\0\0\0\0�\0\0\0\0d\0\0\0����\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0m\0\0\0m\0\0\0o\0\0\0o\0\0\0o\0\0\0r\0\0\0\0\0\0@\0\0?\0\0Q\0\0�\0\0\0\0\0\0\0\0\"\0\0\01\0\0\0\0\0\0\0\0	\0\0\n	\0\0�	\0\0�	\0\08\n\0\0<\n\0\0�\n\0\0�\n\0\0i\0\0n\0\0�\0\0�\0\0�\r\0\0�\r\0\0�\r\0\0,\0\0�\0\0\0\0\0\0�\0\0�\0\08\0\09\0\0�\0\0�\0\0z\0\0{\0\0�\0\0\0\0\0\0�\0\0�\0\0!\0\0�\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0!\0\0\0#\0\0\0$\0\0\0%\0\0\0&\0\0\0\'\0\0\0(\0\0\0)\0\0\0*\0\0\0+\0\0\0,\0\0\0-\0\0\0.\0\0\0/\0\0\00\0\0\0\0\0�t\0\0\0\0\0� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�,\0\0\0R\0�$\0\0\0���z����\\��dzH��\0�\r\0\0\0\0\04d\0\0\0\0\0\0@\0�\0\0\0��\0\0\0\0�\0���\0�\0\0\0�V\0\0 \0�\0\0\0\0\0\0\0\0\0�>\0\0\0�(\0\0\0\0	�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n�\0\0\0\0\0\0\0\0\0\0�\0\0�\n�\0\0\0\0\0\0\n\0\0�\0��\0\0\0�\0\0\0A\0\0\0�0\0\0\0?\0\0\0�\0\0\0�\0\0\0��\0\0\0��H\0\0\0�\0\0\0 \0G\0a\0d\0s\0 \0H\0i\0l\0l\0 \0L\0o\0g\0o\0 \0-\0 \0c\0o\0l\0o\0r\0\0\0P\0i\0c\0t\0u\0r\0e\0 \01\0\0\0D\0e\0s\0c\0r\0i\0p\0t\0i\0o\0n\0:\0 \0G\0a\0d\0s\0 \0H\0i\0l\0l\0 \0L\0o\0g\0o\0 \0-\0 \0c\0o\0l\0o\0r\0\0\0#\0\"�\0\0\0�\0\0`\0?\0\0\0\0\0�\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0�\0\0\0\0�\0\0\0\0\0\0\0\0\0�0\0\0\0\0�(\0\0\0\0	�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n�\0\0\0\0\0\0\0\0\0\0�B\0\0\0\0\n�\0\0\0\0\0\0\0\0S\0�\0\0\0�\0\0\0�\0\0\0\0�\0\0\0	\0\0\0?\0\0\0\0�\0\0\0\0\0\0\0\0\0r\0\0\0\0\0x\0\0\0�����\0\0�\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0#\0\0D\0\0F\0\0G\0\0I\0\0J\0\0L\0\0M\0\0O\0\0P\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0s\0\0\0t\0\0\0\0\0\0\0D\0\0F\0\0G\0\0I\0\0J\0\0L\0\0M\0\0O\0\0P\0\0�\0\0�\0\0\03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0u\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0\n\0\0*\0\08\0\0�\0\0�\0\0�\0\0�\0\0.\0\0<\0\0y\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0_\0\0j\0\0�\0\0�\0\0@\0\0�\0\0�\0\0�\0\0\0\0$\0\0.\0\0/\0\00\0\0>\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0C\0\0D\0\0F\0\0G\0\0I\0\0J\0\0L\0\0M\0\0O\0\0P\0\0R\0\0k\0\0w\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����Nzx\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�h����\0h^�h`���OJ\0QJ\0o(\0\0��\0\0\0����\0\0\0\0\0\0\0\0\0\0\0\0������\0\0\0\0\0��\0\0\0\0\0\0z�S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�l\0\0r \0� \0V|6\0�I9\0�z=\0sF\0�\\J\0uq�\0Q�\0g�\0�$�\0M�\0nz�\0��\0�x�\0GJ�\0\0\0\0\0D\0\0F\0\0\0\0\0\0\0\0\0�@�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@��{\0\0\0\0\0\0\0�\0\0�\0\0\0@\0\0��\0\0\0\0U\0n\0k\0n\0o\0w\0n\0��\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0��\0\0\0��\0\0\0\0��\0\0\0��\0\0\0\0\0\0\0G�\0\0�*\0�Ax\0�	\0\0\0\0\0\0\0�\0\0\0\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\05�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0S\0y\0m\0b\0o\0l\0\0\03.�\0\0�*\0�Cx\0�	\0\0\0\0\0\0\0�\0\0\0\0\0\0A\0r\0i\0a\0l\0\0\07.�\0\0�\0���\0@	\0\0\0\0\0\0\0�\0\0\0\0\0\0C\0a\0l\0i\0b\0r\0i\0\0\0A�\0\0�\0��$\0B\0\0\0\0\0\0\0\0�\0\0\0\0\0\0C\0a\0m\0b\0r\0i\0a\0 \0M\0a\0t\0h\0\0\0\"\0\0q�\0��\0\0h\0\0\0\0u�u�^�\0\0\0\0\0�\0\0p\n\0\0\0\0\0\0\0�\0\0\0�\0\0p\n\0\0\0\0\0\0\0\0\0\0\0\0\0!\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\0�\0��20\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0>\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03�Q\0�\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HX\0\0\0\0	��$P\0\0�\0\0���������������������GJ�\0\0\0\02\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0x\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0s\0a\0l\0v\0a\0d\0o\0\0A\0m\0e\0l\0i\0a\0 \0T\0s\0a\0n\0g\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�����Oh��\0+\'��0\0\0\08\0\0\0\0\0\0\0\0x\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0	\0\0\0�\0\0\0\0\0\0�\0\0\0\n\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0(\0\0\0\0\00\0\0\0\0\0�\0\0\0\0\0\0\0\0xsalvado\0\0\0\0\0\0\0\0\0\0Normal\0\0\0\0\0\0\0\0Amelia Tsang\0\0\0\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0Microsoft Office Word\0\0\0@\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0Ī�^��@\0\0\0\06b��@\0\0\0\06b��\0\0\0\0\0\0\0\0\0�\0\0\0\0\0p\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��՜.��\0+,��0\0\0\0�\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0p\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\r\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0Microsoft\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Title\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',1,6,54,1213),(17,'issue_events.csv','155','application/vnd.ms-excel','\"Information ID\",\"Person Name\",\"Person Contact\",Month,Year,\"Issue Area Event Type\"\n1,Maria,Acevedo,\"(555) 342-1234\",\"(333) 222-1111\",1,2012,\"Medical Card\"\n',1,6,NULL,0),(18,'enrichment attendance 3 10 14.tif','55141','image/tiff','II*\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0Q�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0\0\0\0\0RICOH\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP����F\0\ZYX\0hda��@#\0�,,\04��\0hda����F\0\ZYX\0h����@#�F\0�<0\0\Zy`\04��\0����@�̛��:�L��u�M���@#�F\0�<0\0\Zy`\04��\0h�����@#�F\0�<0\0\Zy`\04������@#�F0\0\Zy`\04������@#�F\0�<0\0\Zy`\04��\0h�Q�F0\0\ZE�\0h�Q�F0\0\ZE�\0h�Q�F0\0\ZE�\0h�Q�F0\0\ZE�\0h�Q�F0\0\Ze \04���(@��F0\0\ZE�\0h��\0�(@��F\0�\"`\04�@\0h��\0�(�Q@��F\0�2\0\Ze \04�@\0h��\0�(�Q@��F\0�2\0\Ze \04�@\0h��\0�(�Q@��\0\Ze \04��\0��@�\0�2\0\Ze \0�UIK@\0(����\0P��M* \0�Y���o��\0�f�&��@\0hSN�y]Y@\0h�[Bl�@�8Э&��J@k}���h+�.6��\0�Z�\rDO�B&6e��7�6�c_�ؔ�V�G�&o�O�6�ؔ�V�B��$ʩ�)��Zݓ3���\0�\nU���~e\"^��;�eS\0Z��|XH����y����)\0-��� \\��T-C���_����!6e��p��8(�iu�&.؉#owMO��9�}>�bS\0�����5\rm���xuf�~�����?�����C}��MY@\0h�=\r1����fBa~��Î3;����<nW4T<n����\n�)\0ͨ����cF,צ@ԡS�#�����A�������v�QS�#6e����VW���HҪ��k�=�ة�����N�C���M����snr|�T��MY@\0hlmu5�O�0|�;�}ȓ�@�9���<�|>>n~n\Zn��W\n\\`8	>j*�̦, \04%�������t��\Z���\0\nꛟqG���=>\Zn:nj:5�.L�ࣦ��l�@�c0�`NK`R��vMG+�CC���pv�͎��Á��7	�|<>�����)�q&A���\n\r�)\0Mp��Q0U8�R��t�R�_hh8(<>n?�s�QS3�&��������	���I��?	|�T�MY@\0�N	�!���J�c�o��t���ۅ? \r\r;7���������`4�����)hУ� ��C��ؔ�l��Q#����t�O�&�C������~�P��(x�y�h��|<Ԍ�s桅���r��MM��V:t�xq\n̦, \0d��4(��2�j�ߛ��|��ih�x|>ƐS�q�y��{��y���>:77\r	�z|��o������\0Ю4�O4GP釩�Q/�L�ǎ����,������T�9x����C��gZxx�h���i�)�Rƃ�\r|�~\"����\0�.:Ո�hƉ�Ӌ��i4�.�?r��\'u4;|�,������a˹�s���\Z�G�Ø2��|��<<44�t�t4\ZWT�@�G�l$@;��Ɣ#z���*�����N��������Q�s���H�t�|<���\n?�v>jj��)s棿yxh�������qF�D0;C@\0hg4tQ��y��*�\\SO�>;5~j\n\Znn:������aUT�����p�sSS�ϙ���Ǎ�ᦇ<������\0@;㣟\"��hv�;��9﹦��<nn:7ɹ����!9UT�x�Ĺ��i���\'W�8\Zj~v�Q�Ǝ>dB2\0팏~��	�\'��.�)v��8�q��n:nn:�����a�\\��1\'��G�M�>����~������˴\0�!��S�5=E0�s��������p\r���h4�575��MGr���xC5s>�5j~nj�\"��Ç�#�!BY��3\0����G�\r*�꛺����й=\\����#��������ᅛ��\\�q��j�<|�T��㦦�2��p��\0��Z���B~@<G��ꦾ�}\Znn�)���Hp��M��MM7�T�q��0�j���Q��Ɓ	����\0LE�Lzv7����vu����yh<�\\Ssӑ� ������n:�sE���k�����.8�QG�����\00����k������������}�0�k�an:�p�������tTS����#�J5�>��f$3\0p�u-��᚞���ׇ���#��FF�5���#��an:����\\+Wt|ngtA��t3L3\0[� ���y�������!��8��y��y��Hp�M���G�pӑk�\r���B������vT\"x�ה�y`,2x�8h�	�F�pӑ��p���������/�#Op�aFz\0�Q��q��k��Ԭ�У�#�&�k\r7	�7?��1��R�6#=\0��D�4sM���?=7\r��5�����p�QS�G��/!\'2#- \0��b�r\\S�f�OO���CCwsM��#�9�h�8�#��\'6�4\0��D��ה�y(k����q��ஹ���MGz^��A�m�i\0�Q���)sSӿ���>5|����8␯e\'��a��vT,HhpsM����\\���� �	Ptl���\0��bA��\\S���z)��`�!d\rd\0�Q����\r�`�Z����c�\0hG��kȵ��M�,�~���<\0������C��<�P\0�Q1hf�g��\0��@`|;�	2\0��hd�1\0\r>\0\r>\0\r>\0\r>\0\r>\0\r>\0\r>\0\r>\0\r!\0\Z|\0\ZB\04�\04�\0��%;�\0h�J���N#\0�d��;��v\Z1\0Ц��0ϔ�N#\0�Tp�B���v\Z1\0�&������4b\0�5��&�-�i�\0@k+>%M^.t����4b\0�5?���B��i�N#\0Z�x#�s\"��Ls���F\0��\'{cw\"��Ls�vi1\0в4�wt�\rDD��i�dg\0-�(��S��6/�(��d�2ٙ�\0@K�8��sfP�����7��3��\ZL��c;�\0h}�t����j\rU�ZGV.��!�dv�u�(䱝I\04�c���y��YA�C��3g���q����8�gj�LΏ�Lb\0�Y�9=\r\r�K���\n^j�PX�<9v43��;�Ǉ��J�I\04W҆����x�}\nCh�I��P9��(��N�57uTh�����]Z\04G���BD�Ga��֛�8q���+�x|8�����|<�<8$a��4gl�\0-�b���Bp�G���\"^o~�s_��v�x�t�����������]`#��B����b\0�0KS�\rZ����N�l0yj��sp����x�t\Zj~jj>jj>�����\nݏ��b\0�0K�����a�E��(�Q����������Bt>j~jj>jj:D�:�l�\0M��gm\"� �T}4�hm0�`|4jj~&P5?55\r7=B�9�	�N#\0���h`��g-Z� Τࣆ���+S�Q�ppP�P��|��<���<�<�T0-q*��Dv\Z1\0���iHM��Ӧ�=~4;c\r\r�`�\\a055��M�C��0F�QS��SS���pS|\n�1�\"\0�G �B�jڼݴ�pA�8��;c5=\\p��S���|ԌA����a�ࣦ�᧦����ʅ\n��T\0d#�0�4���c5���T)c�dv�=;&����9�sU�]���|�\\�<�<�c5?557Eg*��C��l��M�\"\r�igFUI�!g�u~��Yp�\n8/���X���|Դ|n?/xU��P��SS�������(��@�]E\0d����2%�A�XM����8��`�����xpDp�\n�C3/<h,�n~n�����畖������������H.\0��1�&J��а���Çf��;��#+{<<|<<n,�A2/|(>ө�����W��}>j~jjz�;\Zv�%\0��a�)!�c�(h��j\n4c�p� �������y��|<<>�p�\nZ�qf���tj~n,<�W<\\c�y|��t8��g4T�*\0�d\Z��w*<,0�Ch8�������������y��<|0�0����=���V7?�����c�e�uG���M��\0@�LO����9���3\Z��ƻ�ر{��yxx�y�>~>�߄�Bh��g?2/���y����v�a0�@�[�\'\0�dʴ))�qٹ,���������p����|<Լb?;?/��!�L83�>WXt��|�Fq�!#��K\0P\'S�MI���N�d��}4<n:\Zjn5??75��G����A0a��UOK��k�=7>�Ps�^�B-\0�d�x��)������`������������������W��g���㠅1�1�ђp��0t~�h O���nA!\0�dʘV���A���\'�������8�x�����GM�+F����q�߄� ��ż�\n$0HF����\0�ɔ1�g�8�2MAO\nL���q��q���\Z����GM��й�x�8�=�0A�L}�5�Y�w\r��\0�ɔqF��ώy��LCsӳ\Z���i��G��GM��������kZnn>��C&(���na���]\0�ɔ)�����LC�P��t�4\\r>:>\Z&���|<�\\c�����������8�1ᤶ؂b	\0�������3#(�P4��t�4��|t|4̹��y|<�,\'���<~j?�1���D�gA!\0�~�5��i(~F�:>7sn~~j��<e�3��`�1%	�-(�\0�.�@3�������)Ӑ���1t�4<�|t||\\��9|5#���9G\Z�u	jA-\0�p���GM��H�i(@G�>n\Zn>:��υ����q���_����fK\0P�p`���GMMM�Tx(@G�U��M��MG���sAp<h�A�2���Y�\0�%��q�QSS60.��������\'���r�i���l�\0u	7.||4�ԄM��a~�`���x(7�#œPʼY�\"��%\0�Kxp���ᦦ���0=1p��>\Zj<-NҼ�Y�\0�%|��8�h���A�c����\\�!8Ҟ~]�;���\0u	~>>>njzhZ�	�,�c�K\0P����������0�����QɎ\r���\0u	=>�����1����6��\0�.��������qN�&�\0�%��q�0�GpG>S��*-@��fdP��l�.@~\Z�&K��X��X��X�!	\0\Z�$\0h�t3I\0�2If�\0�e���%@˪�A,@��b3tI\0Ь��]\04+9����%@�do��`��K�f�ުW6C�\0͒��Q�\"l�.	\0�%�Ux���$\0h�\\���ń��%@���p��^#l�.	\0�%&��ڋ	��K�f�&G6ċ	oR!�xI\0�,ق��{1�\r�u[�$\0h�l�ܛnذw��qÌ��K�f�&������ks,g��\0͒M��&Z��=>HM/	\0�%[xi#,�x�{|;U��%@�d�m��W���p�\n[�$\0h�l1���ZQ��\0�(�Ҽ��q�Ż�<4\\h���%@34(���o�9*�>����K��TP-�p���1����CC���,^\0� !:F���%L[�=�2Y�$\0h��\n�@���٘6�\Z�ދ��2��,^\04�FA�A	��(��cY�e�5Y�$\0h���`tag�&�p�>\Z�!��P&���K�&�ЀS���ǉ�(�����p��2��,^\04QřĔ±z�NL#;G���@m�2��I\0Є�2�S-�wB+�s0�s���q^d�7Q��L��\0MH�P��h	xǿ���:�q;\n�7=5�d����P���H�&��q��h�s���ɩ��=ƪ�.	\Zʔ��hI\0Є�2�Sg�p���n~�q����9z[n ���<\\(S��K�&�8�T�@V��uA]л�Pw����9z[n �|�y���-^\04Ѡ�oA?��ڙW�M�MOQpsS3�s���@Vv��<\\�&��\0M4�7��������U��㦧��P3p%z[n`CS?�9�d�\0��&�w���\\��(s����nz�S3p%z[n`C�����%@M�������^��C%yM�P��3g�����h�\rlh��\"]��M@-Ꝣ����M1����?�\"�g�05��h�\rlhL�(��[�%@-ꃼ����&ON�C�\rz��\\0A��q�ۈ��x��\0h�M^��y88p����&��~�DP3p\"yc,�dΐ\0M��o�3���SECM�=>n~�DP3p�u�U2gL@m���T4�|���g��f��mzXVy�r���\0h\"������J�C%��7=�75�\Z���m�����EO@)��B/�x���u��	�PoHX�.��EK�&���SV�����q��Rƃ�xFu�Λ�eY�d\04��L��i����U��;5B����(0�d\04��bρ��ƋǇ�V��y<o��8L�a�\0�	��	4������dt\'T�0ss��\0h�d}��FW��?!�(�ԓЄ9т�w�����q�ў�&̉k^N��0b�b2\0�0O��atK�d\04�`�-iL@�\nx���$2\0�W��o�&�ynt2\0\Z�d\04`�� &�AL@���1\0\rb2\0\Z�d\04`�� &���1\0\rXd\04`�ЀE@\0\rXd\04��\0h�\"���,2\0\Z��\0h�\"���,2\0\Z��\0h�\"���,2\0\Z��\0h�\"��@\0\rXd\04`�ЀE@^\r�,2\0\Z�j\04`�ЀW����\Z\0\rx5\0\Z�j\04��\0h��ЀW����\Z\0\rXd\04��\0h�\"��@^\r��\Z\0\rx5\0\Z�j\04��\0h��ЀW��@^\r��\Z\0�Ej\04��\0h���X줫P�8,mZ�P�\Z�q-o��\0h45�4��v���z�J\r���᠙�Vj\0�II�M+5\0�$�ZW�i�@h�	$�M+5\0Z��=�(oZ��:�7�:ʛVj\0�F%4\\	���\Z\0��@���Q޴R�U�p�Щ�Q޴R�%��^�|Sjk�i�@+�9˺��0�Q޴R�e$����k���+m�7��\0hI4R���4,�\\�Fy�J\r���8P\'�u͙��+m�7��\0hE8P�H�3���7ʛVj\04���t��of\\�H��M+5\0�A��.�Tot��}3�QO��M+5\0��\09��Z��i���}3�9�fB�rQ`�7�j\04o9��x�j`�Ï�y���*��3dг��f5\0Z0�/1�S\r�#��73e4��c�����ԛVj\04U\rډe�jlʘ��{h�̸��)��\Z>��޴R�)\Z�:��r�&�M�JH���͌{Ύ�σ��Ƿ��Vj\04A$[��r��V�D��ȼ���p`FL8\\P�������f�7��\0��<�	�ĲҧJJ[=�#3�qf�z��q�<|��|�I�i�@v��wb\Z\n#Z��#�L2�&�C�>�_��kf�3\'��G㦧��M+5\0�)��K�:����6m�Ȕ�M�`��N<��7���X1ᮐ��#�>�LoZ��\r��Ĳ**m��)㛣�?�h��M�C��GVL�+$����g~�J\r�v�q ���XV\'>NڴգСS)|�������C��O=vLx.$��(�	��M�\0u����8��:N|��i�G���8x��)h��yn\Zn~�f�s!�MG砂Y޴R�6���Ĳ��e\'R5s:H�(�w�3���������C���;&<�|4�\\0˛v\0&(�p�S�XV�)�D>��������y�����M�́\r8��<�	>jj�Yߴ+\00 w��O,���9	��S����Я<*��������MÑ�!�sf)&\\��棦 Λ�M�\07:�� �`��W=�*?�w���Ѥ<\ZyA~�|���#M���E�	W$h�qc)ެoZ�p�Cwl�}b^��;�{|8�xh��hV��a?C񜎟��V4��\\P�pE��m�qi�o�\0����&�\'�U����G��C�MG����Z���禦\nu:>*�:�HСNM�⍿iW\0�F�`��W��ozj>\r7?E*���t��4��:\n>n*�:�����卿iW\0�F����.1�zc���x�y��j����>q\"��xx��?>n⌒n�H��oZ�p���uVH��;1���?t|��<�,�L����SV��s�������p����7�\n\0��ob=P��O,�>�>jj~.gv�LA��A��Ç��\Zv�Q\'j	bo��v\0n�7��h��%�U�<|��<|�.(ɔ\\Lஹ���C��ǎ����\'��o�\0����z#9{>1�����������M�H�47�!C�H!���G+A��x�J\r��M�7��y�?>jjj:n�D:�E�Q�#ٯYc��~Ӯ\0���&��ۿļ�O���������\n�N�hł�M�I�{޴+\0p����G4�	��ļ�O���CM�C�A�\ZSM��b�u�7�\n\0��ob�w��Q��bO��gg|<<�4x�(iD��e�b9lm�\07��X��3$��@ߝ\'�U���=>j:ǁ�x\Z�<�r�M�\07��X����Gu~�u?1�z�����a��Xs�c�u�7�\n\0��ob�4>7?j\Zn�~b^�|F2���C(k�S���iV\0�F�]��p�QS�xX�O�+���x�UZ�Z�(o�\0����z�?�t���<��\'�jm�c�u�u�7�\n\0��ob�;�7555?1�(��ֵ�Q�4+\0p����>C�����f]��O���^�ZGy�J��M�w�QSS��O�\'J�k�k���i�\0���&���;555���|�$�u�u�7�\n\0��ob�+h��QSSS���X��bJ�\\Gy�J��M��55\r�:~b�N�����\07��X�������n?�H�J�\\Gy�J��M��0755\r\Z�~b^�Z�ZGy�J��M���������ǉy�*]s�M�\07��X�`MMM��}b^�Z�ZGyӬ\0���&ֻ�A�\ZuG��;1�S�k���iV\0�F����㩥S��ש�5�Q޴R\0�F�b{>1�S�k���iV\0�F�`��ש�5�Q޴R\0�F�`��ש�5�Q޴R\0�Fo�M�O�����(oZ)\0p���M�O�����(oZ)\0p���&�\'�u�u�u�7�\n\0��m�	��y�z]s�M�\07�[d�ub^�^�\\Gy�J���-6�>1�S�k���i�\0����`��ө�5�Q޴R\0�x�M�O,�T��(oZ)\0pS�E&X\'�u�u�u�7�\0�)�b��:պ�:ʛV\n\0�o�	։e�j]s�M;\07�[d�ubY�Z�\\Gy�J���Ml�ubY�Z�\\Gy�J��Ml�ubY�Z�\\Gy�J���-2�:��S�k���i�\0�M�\ro�ubY�Z�\\Gy�J���Ml�ubY�Z�\\Gy�J���Ml�ubY�Z�LG~��M�&6�:��S�k�#�i�\0�M�&6�:��S�k�#�i�\0�M�&6�*1�S�k�#�i�\0�M�&6�:��S�k�#�i�\0�x�`��שֵ֑ߴR\0�x�`�Xֵ֑֩ߴC\0pS��M�N,�T�Z��oZ)\0pS��M�J��T�Z��o�!\0�)��&X\'�u�u�u�7�\0�)��&X\'�u�u�u�7�\0�ob��:պ�t�7�\0�ob��:պ։��oZ)\0pS��M�N,�T�ZJ�\ry��M�&6�*1�S�Ai3�\'��v\0n�7�	։e�j�J{ ��I�z��M�&6�:��S��f�\rc�2�HڴC\0pS��M�J��T��R��8&G�c��!i��M�&6�:��S�P�B*�#�1��i�\0�x�`��ש�_��4$u��$q	Y�v\0n�7�	V�y�Z�-����KHoA\0pS��M�J��T\'M)��\"�E#QY�v\0n�7�	���D�ͪ��HI�CRDx�H�C֦���Ml�}b\Z��oV%�DJҎ���nJ�F֦���Ml�}b�A߬J\Z�)�&rpPDgdm�!\0�)��&�\'�ii� mV%͊���N�(�3�6�\0�ob��TT�1SWҬXI�Z�hqRGx������Ml�}b��yT��۸��<e�%�{����M3\07ś���<U�T� �6��YIY�ӂ�W�!�KKm�7�\0�ob���\'G��&ڸ@!{�]����\nW8�$Z��i�\0�x�`���x�<�L�h�N\r��������;ׄ�na�M+\0n�7�	��y\n��\'��&�޸(!Z5��}*������Z���i�M�&6�>1O\Z9�$8��C�%�V�P��Tޅ�Bp���(o�!\0�)��&�\'�I���3�]�.4W������K�-dD�!�����Ml�}b��%.�%-��ŵ�#\"FI�I�Md��������Ml�}b^�@��u�Ri�P�D1rw*o8�ʛf\0n�7�	��EJ\\���k-��Q��yb8$#���F=�7�\0�ob����\\Y���o�PU[#\'&B6�8+��F=�7� \0�)��&�\'�\Z�\\�2o��x�H\\��!�UބF�(oZA\0pS��M�O,�!9�4����������:d��2����1p��i�M�&6�>���=}br5���d̊��He�3c�Fy�\n���Ml�}b-�P�\'&��{�Pj�k�X�ʛ�a��0ʛV\0�ob��T��\'&�@w�J��	�$�7+ۈ�L�M+\0n�7�	��y&��ɦӎAX)��U����Q��M+\0n�7�	��E\Z��Ē��*!BH�$�w�nD@�Cy�\n���Ml�}bY#u�X��ۧ�JrS&IUdz����\07ś��Ĳf�>�$��B�UL5#�7��HG}�\n���Ml�}bY3E�X���Eh[�*F*��$�7� \0�)��&�\'�5S��KR�}%L�b��V9I���\07ś��Ĳ��r|I궯���h�u��i�M�e�}bY#u��$u�\'5�p��r�M+\0nJmX&�\'�I���c�h��Q\r3�@R=h�Bz�\n��R�	��e���)ھfT/ (ژ7�8�o�\07�6,�˴�%��m_3�W�M��p����޴�\0�Ԇe�}b��6�N��5L5��$4ЛV\0ܔڰL�O,���Wƞ��G\Z�[(�{�\n��R�	��e��E�䍏,��i޵p ��(oZA\0pS�	�`�XNe���х5�:ʛV\0ܔoB&�\'�SyO\r݁µ���oZA\0pS�	�`�XNEk�qe�vm�t�7� \0�)��&X\'�u�堕��Q޴�pS��M�N,�t�ƥ���oZA\0pS��M�N,\'��u�t�7� \0�)��&X\'�Ӂ���:�V\0ܔob��4w������\07��[�e9P�[c]k�M+\0n�7�	��y�	u]3�M+\0n�7�	V	[8h�t������\07����1\Z��N������\07���]�.�u�u�t�7�`\0ܔobl�\09�-Y�Z�ZGn��M�&6��wPƕb�j]3�M+\0n�71�4h&�u�u�u�7�`\0ܔobv9h\"�X֩�5ӑߴ�\0�|�Q���:պ�:r�f0\0n�71[��F=1�S�k�#�i�|ہ�#%�u�u�u�7�`\0ܔob]cؓ҉y�j]k�M3\07�X��\\W��שֵ֑�4�pS���H\\��y�j]k�M3\07�8�p`����שֵ�Q�4�\0�|o�p`g+\'�u�u�u�7�`\0ܔobR�`S:1�S�k���i�|�@�N>1�S�k���iজd�M��:պ�:ʛf0\0n�aМM�O��T�Z�(o��\0�)a�v��:U��:ʛf0\0n�7�	��y�j]k�M3\07���ļN��������Ml�}b^�zCN��(o��\0�)��&�\'�u�7�����\07���ļN��%�:ʛf0\0n�7�	��y��\rAy�M3\07���ļN�#I������Ml�}b^�zC%�:ʛf0\0n�7�	��y��\r�&�:ʛf0\0n�7�	��y��\r&�	������Ml�}b^�j��K�u�7�`\0ܔob��:�����(o��\0�)��&�\'�u�78?J�u�7�`\0ܔob��:���x^����i�|�`��ש�t��	������Ml�}b^�~���b�M3\07���ļN����%�:ʛV`\0�To�	��y������	���\07�[d�ub^�~c�sy	���\07�[l�}bN�zc�sy	���\07�[d�ubY�z#��N�u�7�`\0�To�	։9��@|/��,6��\0���\"��:��3���\'l�l��V`\0�To�	։e�ꍱ��o�8�ߴ�z�`�X֩�EI�&�As�ߴ�z�`�X֩��f�q��O��V`\0�Tob��:��`/a=Ѿi��z�`�X֩��m\Z���oZ�pS��M�J��To����\r�t�7��\0����M�N,�To��!5а���i�M�&6�:��S��@�)�Q޴�z�L�J��T�u�ӑߴ�pS��M�N,�T7h�q���Q޴�z�`���4C,�^G~�\n���Ml�ub9����Fd�M;\07՛����&r_�-�	����\07՛����&�z#��� ��o��\0����&X\'�Q�,�7�x�M;\07՛���I���^G~�N�M�&6�*U@���o�D:ʛv:\0n�7�	֛4$�T�ZoB�������Ml��f��T�Zoq��i��z�`��Ǧ]�Z�zJ�7�t\0�Tobh�J�:պ֛;!޴�pS���A�W�Z�Z�z���M;\07՛�݅.��:պֻ�\'��v:\0n�71y�];��שֵ��8�ߴ�pS���$d���שֵ��8�ߴ�pS���+p$r�y�j]�]��M3\07՛X�r?1�S�k�sQ��4�pS����ļN��+��s�T�i��z\' `�/\'�u�7]	坟q��M3\07՛x��]�ļN�F(���/Uo��\0����{\n\\l��:�3~�~�﴾i��zS�.6��:�6]�	��*N˛f:\0n�7�I��ļN��w~�	~�L�M5��T\'�B�z#N@+�o��\0���|��r�ވ������x�L�M��&�\'��Ti#r\'�3~o��\0���ĺ\\v������7�.1�31~o��\0�����8g\'N�oH�zc��=�N�M3\07՛Xى�RZ߈�$y���Sy�L�M�&N@F��N���`Jp�9�ߣu�T�4�pS��T��ĉ�\rVWoD�~ϫSy�L�M�&N��h��ĉ�M?8�|\\WR�G�Sy�L�M�&��U̓�N����b�T�r��=W�J������M,i�@,��N����:\\���q%�[��o��\0��V���=�*;qb~#�5��[^q�{L��4�pS\rIyI��tv���F\\J�-_�+��-�y�L�M5��\'�A�|.�!����FT���]�sB�#ĸҼi��\Z��\'��@\\η�K�Ხqb~#*N��WB�#�~�L�M5�ʫ�f5���@�r缮yb~#N�vB�c�R�iE�M5$���V�Ƞ��|7^��}y]����L��]�(!�a��R�i��\Zl�G5� ���3�����5O�oL�S��q�%�;,ߝ�M+:\0n�!)�8� ���]�$1�d��/��u�s[.\\�R��\'�;��M3\07�`+)׾��5}c2x��}��Y�:1�1��J�ǵ8��W���J��Vt\0�TCRr�h<��:_d����J��}bn�_Ǖ�]W�������]��M+:\0n�!)y,���������\\q�k�X�������9�o7n�b���\07Ut+Go�����D�]��ߗ�ź���-�r��ո8��iy��[�7�Vt\0�T�S����T��#0���ߗ��ץN,o����9�\Z���f~ӊ��zp�!�.-��\"�彿/\'�ץN,o���\Z�.ŝ�wv��޴��\n�r��8��x���D6|����`]���3����嘟�wK��fzӊ��*p*#`�x���\">|��a]���B�Y�ո0N���fzӊ��zp*c���%����M�>�Hg:��������t\'�,\\��M+:\0n����Y��K�>�������u�˻���^��u�7��\0����<�wQ8;�u�w�����1��tbyW����+�Ǖ�:ʛVt\0�T�SY>���u_r7��+��Ǎ:�HIg:�hצ���+���:ʛVt\0�ԃSY>��y��_?P�� u�oa�3�X���xK��pAƕ�:ʛVt\0�T�S�~ჟ�s78��IІיO,�E8���{�)���iE�M=8��R ��擿�ҙK��E�\Z�kK�WV�+�t�7��\0��\'�ze9���V��YN,�u�[������\'�q�ڴ��\ng�����\nl�O�oX�$���ɥ/����\07�t*F}3�d����z��K�r�]�oZ�pS/�����m5����^fxk���j�r��ToZ�pS���T[�=J��e���{WB�\Z�T�iE�M�&�RbC9��	�~k�W\'0p��ԛVt\0��ob������ڠ���#�iE�M�&6�*1����Z\'�(B���oZ�pS��M��X�B�Xo�7h�%�M+:\0n�7�	���\r���xO8��o�u�7��\0����&�\'�71�[s �p%�t�6��\0����&X%�71�4u����\07������&F~7h�ҕӑ�4��~�`��O+P��^�ZG~ӊ���Ml�}b~S\09�]�5ӑ�4��~�`��g�\r���������Ml�}b!�]I����ܦ���Ml�}�j�׵֑�4��~�`�4|�j]k�M3\07����-\n�u�u�u�7�\0��ob�Acc֩�J�u�7�\0��ob��qP��ښ�To$A�Q�4#\0pS��M4�:���(o�\0������YN��ToH=�	������M̦\Z.��:U�w����iF\0�~��@�\'�u�78�T�a$�o�\0����v\n`Ǖ�ļN�G��w��x�xӌ\0�M�&����+Q��ש���R���Oěf\0n�7�N�z}b^�j#ZJ��#J�M3\07��8��Nzb^�zӃ���k=�7�\0��o�T��qb�N�F��B��iF\0�~o�q`g��:Ua�T����f\0n�71P�Q��ש�t�z�қf\0n�714����:Ua�T�R�>�7�\0�Գ\09��y����(�g�K�7�\0��C��	։y����(�g9��ěf\0njPA����\'�7¼���Ro�\0���b��;C�0/af9ZO�M3\07��X�^�<1���	�F����%�����M�S��\'��U�o�b��U�xӌ\0�M�&J3�.e?�\'��ŝ0o���z���7�\0��o�4�@�,�)O��(a�����\Z�RoZ!\0pS����kBg��t���&J�7��ͪvo�\0���D�mDVnY�<1�o��yӱ�o�=b\\�x�\n���M,	����J^�)N��8a�`\'�7��D�iF\0�~��ڈ(�j��DubnO��y���߬�8\'�M3\07�tV�\\�FDahW���N�\'���K�7�	x��(SZ�4#\0pӌA�&{m#�0����|���ŉ�=��\r��V�ݙ���\07�r�j^ۈ(��R{���(O,�o������M3\07͕�AS��F$��f�Ww��q+Q�X�S)��\'���J�7�\0�i�:C���Z�0���	Ȑ���}�zbyO�yC��f\n��	�����l�{Kr�G��^�7F��fz����	�����(M�\'��M3\07��ŠC�5�<�y�9�r��C���287�	���wI�V81&-C�M+\0n��y�C��錓7}������t����=���.1�葤~�\n��frP�ý���G�)7e��C3�\n�+�����(���c\r��M+\0n�%C\r~L��\Z_��5�b�?4�\'��t%������.1ּ?�i�\0�M39����r����ߔ����И���J�%��?1�j\'�ڄ��o�1\0�i&=��(���k�v�͓�C7=!��h��}������\'�7�\0�i$z�oQi���ڹ6O����e���+������&;��>~b�i�\0�M#�J#�����%���a���+���}W=���֛�Dn㹒�M+\0n\Z�S\Z�ǋJ�śڹ�\'�G�p�w���]Q-1����$y�%�7�\0�i�^yL�����~�JW��.����L|��\n��Rb~��[R��}�$y�\n��F�U�,\\����}��8��r.ed8\Z�v$ќX޹��8����xӎ�M#Ȫc.�rߕ����帇1��!�9i������8������\07��U�G8[p�rW��|]����a:RIg����	��pR��q%�7�\0�iFD�|��¥�+���!��j��|3���Xޥ�f8������\07͈I��[��#ጝ�2Zs�DvQb~����~�o�1\0�i�\\��~���c��G��11�vQb~���I�v�\'ƛV\0�4�/�Q�_p���.��\r�]���ŉ��y��4,m�1\0�i��Ǩ�8C�x�$�����I�v�h�[�ěV\0�4W0ƨ/%��p��͝$o��B;�.�7�\0�i^a\\h������%�[I�G8h�ڌ6�\0�i^G}��[8�׵�Z��4B\0�y�`���D���\Z$�J�7�\0�4ob��pR�s9Phq\"�i�\0�y�`��߄Y	(���IҦ\07͛����&��o-���n%�7�\0�i��&�\'�7�x�ǁӬ��i�\0�y�`���KI1%�$�:ʛf\0n�7�	��������J��(o�1\0�i��&�\'��چ\n�N������Ml�}b~�m��ҵ�Q�4c\0pӼ�M�O��j$ �Ŵ�������Ml�}b~����Z�(o�1\0�i��&�\'汀&-�Z�(o�1\0�i��&�\'�q�H��Z�(o�1\0�i��&ا4t�t���N�7�\0�4ob�7�p w1֩�5��8��M3\07͛�{&�޷N���n��R�����Ml�=H6�:�����N՛f\0n�7�	ؓb���`�$y��N�f\0n�71;�p�H���o��I�f5ᴾi�\0�y����ļN���O�7�a��M3\07͛�M\Z{=1�S���⍷��7�\0ܴ��ve ��\Z\'�u�w�R���������Ml����O����:^��������M���>\'�u�w�(A�x������M���\\�91�S��E	��`\'�M3\07͛8��=d_N����zQ�̢v��4c\0pӼ��\n��IO����*��ev��4c\0pӼ�7l@\'�t�w=q�̢�p��4c\0pӼa��&{��ש���I��*�p��4c\0pӼ	`g9���л�� ����M3\07�(@a�9���p���;Af	�(-oZa\0p��\";�I����I���MI!�=�	~ӌ�M�9;���zby��~���x��N�V\0�4ox�`:%����\'Ż��\'śu�p��4c\0pӼ��%���\'Żv�\'śu<���i�\0�y����%���\'N�7&?JjmVN˛V\0�4o��|�`\Z5��Zb~�\'��\'��ոDi}�\n���\r�$�ި�o^R=�����O�7nᴾi��M�&F�X4Daesޥ�Zb~��\'ț�����7�0\0�i��jc�9\n+���%��>A��]���v�R��\07M�́������	�_\"91����\r�K�7�R��i��M;X$#\\���\r3�8�ɉ��� opxI���K�7�0\0�i�`�1�C)GaeÜ�ߜ���K$\'�7q��!�m���x�\n���\Z�����P�QXًv�)?�ɉ��\'����SB�i��MS]0�������|���S�����HN�o�8A�`J��<N�7�0\0�i�>C_{�J9���0�����u��Drb~��	��@�$���D�\n�����u��\\�� g$/]�����Drb~��y��$iT oZa\0pӾ�}��\\G�\\�ѳ�䅣��]>%����\'�[�Ę�|?�ߴ�\0�]��!������}g��-d/]W�\Z���j����M.I\"IPR�i��M�:�+�����󕻲1�(�0�+wMuI����]J�7�Ęą��M+\0n��+�2��y�{O�+����+w��ɉ����o�9�M�6�0\0�iR��jH��ܸX^���)w��j��}I�&;I��	/1޴�\0�]��+���\\�O�q���Oӕ;��]\"91��+���9\r�Ѧ\07�`Vze�ߕ�)7.���0��u���)����ݜ$o�y-���M+\0n�1�+3�*yu�q���aO�)w��Drb~ws��%u�K�6�0\0�i��+��W���Q���]���|%��{���(���Dn���v������J^]n\\,�Ga��u��}\'��{���(��S��i��M;٠W{���ˍK�rB_m�� |/w���|b~Ox	�\rt\"��$y���v�A���r�r�;��\\�p��uvj���\'���8��J��8��4�\0ঝl�kW{ߕk��9;�nZa�tŉ�}NXo���=N�7�0\0�i�z�����Ӕ{_����C��O�o�	�\r|R�ǉ��\07풡�.:����W.�[�#ߍoG91�CQ�z��+��4�p�Nj�E� ��!G�>�3�v���KXo���}N�7�0\0�i\'�F���΃tH��%;ʉ��OXo������ŦY��vu٨�A\nwś4;ʉ��K�o`N��yKo�,�M{�T�:I��h\'�wvzs�?�@A��Y���ʍz�Ȏ~b~���	���8�l��F\0ܴWx�������.%�6�xj0�Ro��\0�i��&�\'�wqb��9���ŝo��\0�i��&�\'�7/1�Xު����x�,�M�&6�>1�y����&�\\��\'��F\0ܴob���(I�X�\Z�u�7�r\0ܴob��[�$m�䮍���Y���Ml�}b~�ce᠁+�u�7�r\0ܴob��[8I��T�Q�4�\0�}�`��߄73h�u�7�r\0ܴob��nӁ��k���i��}�`���K��@B�����\07�����^\n�܌u�u�7�r\0ܴob��4@�z]s�M�\07����r\0�D�&;��Q�4�pӾ�M�Od��!o5N�u�7�r\0ܴob�2PХS�Ɲ �(o��\0�i��&��<��֩ߐ�^Gy�,�M�&6�8��\"��\riJ�u�7�r\0ܴo\",P�t�7�?��Q�4�pӾ��U�?)���\r>���(o��\0�i���4\\j%�6�&ě^)!�Ή�Y���MĆ�v�X�D]¼��b�}�D~�,�M�&�K�9��EW���br\'śf9\0n�7�������}I�FL�03w� o��\0�i��:p��Ɖ��/\'�Q��T)A�4�pӾ���t�˻�O�7&���i�~�,�M��O�@b��;�K�3\\��4|��i��}�o&`ǳS���yQ���f��J�7�r\0ܴo�\r6L������-o)ɗ�(��4�p���i�;�։����-=a��WB�i%�\r�&�@��]b~_�~�_J��-ƕo��\0�Ar�ɕ���r��uK	����M�\07�8�M�O��{9���X�y����\07�q�n�Ub~O˩~��%���K�7�r\0� ��:��t��{^N�w\\B,�_N�7�r\0� ob��:J��=�%��>ї�/\'�Vr\0� ��:2U�QO��VB��}�\\�~�J��M��`Awe������]\'J�����M+9\0nm���9p�:j��=%̻.s�$=�� oZ�p�h�����\'��L�o��I�4_I�\07�6<���%z�F��=��-\'w���+)޴��цW �Z�|z���݉�-/���)����p�����@K�OO�(1�g~��N(3�K�6��\0�A$z��7��F\n#Υ ������	�ƔPfr�$oZ�p��z��7#i���Kv4����s9)�1N�3A��M#9\0n��A/7�&��WA>G���?�XN��9�o��Xpj�H�d�����Ն�Q�_���C��t�ˉ�=]Iі;!�L	�M#9\0n�!}���od��M��]���u]��|b~OwR�NHb�����\07��}��!��ƃ���]S{�ɞ��=]��N�\'��4%�6�	i)���4���}�Z�sn����s��k����J�]��|b~_Q��N�3;!�i$�\r2��ʊ���ùi:���;z�}�U��r������$yӝ�gq�~�H�dD��!_7>^����u��\'����v������\'�7�	{\'�7��\0�AFA�2��8���kzOic��]�])�r����~\'�7�	k\'�7��\0�A�A�\Z�{]�7����/^��o�r������6���f-a�i�p����~ez�It/<�[�%����t]W.1���M	�\r)a�Y���4�\0�A�?A�2F\'<tʍ/��v]��t]��|b��K�oE	�������\rr������z�h�]��^���x��\\b>1�s	��(�Y���4�\0�A����L��p\\���u�Ej����y�B^.1�����V��ެ���4������2�*8/wM��\\�?�׮��;���\\b>1�K	��pb�q\'�7��\0�A^/�@�L�\n��}S�:Ίs�ܫ����{Pg��I���.%���Ɲ��4��y��ڵ��n	?�M�����v�unv9��~b~��[]b��	�Ms\r���kWG�n��7�8��ռ�J᧲Nqb~�Л\\���	�M#9\0n�W���y���V7����{�|�d�O�o^z�K��;�i�p�Lj�ᏻi�#8�����v��[��ޒ�N�7�5\0n��A�a�A�5�ݎ:2So�:1�E����pb�i�p�L�:�.��\'<��}b~��-9I��9˛�\Z\07��QCa~!���C���DI����+P�o\Z�p�L�e5�u�҉�M�$��6�p��z�\\�Y��&���M�$��6�\\�Ms\r��M�h�����p���9�$����\r�&6�>1��y\n(\\t\'��\Z\07ț����^J��rf\'��\Z\07ț����^J��c�ǉ����\r�&6�>1�ג�\n4;��D~�\\��&6�>1����M\05�\r���Ms\r��Ml�}by/%�(�@���W��i�p�j�`�X�k	\Z����i�p�j�`�X�k�4\\:�:ʛ�\Z\07������\Z.ź�:ʛ�\Z\07ț���򮒀��e]s�Ms\r��Md�uby���r]K:ʛ�\Z\07ț���\"�8��p�u]s�Ms\r��\ro�uR��f�Z�\\Gy�\\�yÛ`�8p���Qֵ���i�p���M����@�Y:���t�7�5\0n�7�	��;�o!�z]s�Ms\r��\ro�-p��*�T��(o�k\0� mbX8p$�t�u�w���4�\0�A����@�%�u�u�7�$���\Z\07蛘MK.rj%�u�u�Y�o�k\0� mb6Plĉy��A��>\'ț�\Z\07H��\"�qmi%�u��\n�O���K�7�5\0n�7�=GB>1�S�~N�#J�7�j\0� mb	8B���ש�N���K�7�j\0ܠo�$:ԉy��M�:��j)!�4�\0�A�ĉ���:՛X^���ZB�i�p���7��v��:՛X^���ZB�i�p����.6��:՛SB�uUB�i�p������~\'�u��sB�uUB�iU�i��qPbW:1�S��0%ĚU%D�F5\0nб��e\"?1�S��\'L�U\'z�F5\0nPP�l�}b^�z���	�f�	ܦQ\r��}��RR�����I��yӨ�\r�&օ��V��ZK�5[N�7�j\0ܠo�D2f;����� �ג<͖��M�\Z\07�8����vĉ�]����k	�V�I��Q\r��M�iW���vĉ�]9�ߕג<�DI��Q\r��M�����:;����ƕ���K	�V�D~Ө�\r�&�X�jyvĉ�]�+�ߵ��<���M�\Z\07��]Ra���{\rW���-\'�Z~\'ɛF5\0n�7��]Ra���{/!ڵ�bu��xӨ�\r:�@�-�:eBɎ81��qN��ܢD�t����4�p�NG@�[:�q#�+����>��i��N�5(���4�p�NG@�[:��JDq�_��tb~/y	�Ƹ��k1���Q\r�t��bz�)-.�/�}b~������)� k?!�iT��r�]a�Ür��xxҡO�o�W��1��z�ڛF5\0n�1k,7R\\}f����\r������C���p�T�1vN�Jho\Z�\0�AǬ��enW@�pCJ�W�1����]N�:��E3�T�18/���Q\r�t���]Έc|g�h����1������ub�&���7���%�7�j\0ܠ˙d���|}]4����[t����P\'m�W��\'쥝P�4�p�.�*˝���9v_Sn��z��\\W�ӡN�oQv�����N(o\Z�\0�A�!Jˍ#�zg_Sn����s]UN�:1��e\\�zӝ�f*��iT�L��a|��.��@0x�\\W�ӡN�o1紼�%��J(o\Z�\0�AW0�r��D�ڹb�Q1w;���r:ԉE[ĝ�7�<��F5\0n�ՆZ���\r�s�d�Ҹ<�ub~�q%�\r)����Q\r�t�A���q�-�ڹkLN�x�k络ub~�`\'�\rq��	�Ms�tI��M�׻t�sә<��9��w9���.µ����43\'�7�j\0ܠK]nO�����o򰳇�CєӡN��\"\\�	~�K�Y���4W\0�A��܋��w�k���];�ܸ!�c���.U��[�$��֛�\n\07�A��w��7���q���Gpڈ#:퉹���x�orI�fu�z�\\��1h���\\�˝��� \\�K0��(�~��\'��W*��&;��x	�Ms�tI��M�Se�;�L���v�s��0p�����o������\r�d�j��k�Ψ�`�P��\r|bn�p�O�-qR�]	�M�\Z\07��r��捣�@���X2�����N�f���0�7�\0n���̨W@R���.1�H��\'�	E8PǛ�\n\07�G�Q�i��>��G�ԥy�o&�Q�i�\0p�^#\"���)1�\'�ҿ�J���6�Ms�t9�B?ul�˻�OV�7��z*�����4W\0�A��)bS���-\\�q�X�́<Q�i�\0p���M�J�����Ы7�\0n�7�	V���a)��z(0�(o�+\0ܠox��;J(\'<(��Q�4W\0�A��&X%�w�P�d���Q�Q�4W\0�A��&�\'�wWB\Z�q%����\r��7�*1��	�\Z\\Ie�Ms��Ml�}b~�������\r�&6�>1�}\\[2\Zĺ�:ʛ�\n\07ԛ�����H����:ʛ�\n\07ԛ����������(o�+\0�Pob���@�b]s�Ms��Ml�}b�A3��k�#���\0pC��M�J�8���u�t�7�\0n�7�	�T8���T�Z��o�+\0�Pob���&�:պ�:r��\n\07ԛ�{ pl�u�u�u�6�*\0�Pob�<�ӲN����ܦ��\r�\rϮ��d�j]k�M}��M̞�\Z�ļN��5�I�M�\n\07ԛ�\r����שֵ�>A���\0pC���R@�AO����J��KPm\ZU\0����v��\'ĉy�Z�6.�<����Q��M��y�:1�S�+\'�iq�~Ө�\r�&�3(��QN��T����$�����\r�&N��n/\'�u��Z)I�-���4�\0pC���P�AN�����Dd�����\r�&��`Ü�ש����z�q\'�7�*\0�Pob�q�`�>1�S�ᗒb��қF\0n�7�9;�y��M����KJo\ZU\0��r~b^�~�%ȴ�q%�7�*\0�P�ؗM�O��Tm���V���Q�\n�T6�>1�S���xZ���F\0n�7�	��y��M������Ǖ��4�\0pC��u��81�S���}Z���F\0n�7��j;�ļN�&h)ѧW�zӨ�\r�&N�dg��ש�0/%� r\'�7�*\0�Po�\r�\Z���qb^�~���%���p%�7�*\0�Po�\r6-�dg��ש����>ȸ��Q��M��b��s:��z�2.O(!�iT��z/pi��4;����\'���p�>�����Q�j�A�i�j���;�����p�>ȸ�D��Q�j2�,�V2ivƉ��O��D	<�c\\��M�\n\07Ԋ��{+�������.J��x	2�{\\��M�\n\07Ԑ��{+���\'�G�ĉ�ݔ��+\'� r����F\0n���,�VrA=�Wg\'N�m\\�x	�]9;)�8Q�iT�����ro�` ����y<�����f>~�z���z��p%�7�*\0�P#\"���/Ц� �9}�e\'�7����ݜ���O�o�W\0�Pc\"]n:�x��f ���7��.N,o�c���^	�I2mى�M�\n�j�I�q{����\r��u���t�ŉ�ͪ6~z�H�v\\ى�M�\n\07��4���<}�w�_�7�s����2˽�J���	yZ���\07Ե{�j�;O���n���?����<�Q�oL	y��q�\'�7�+\0n�k����s�wg���Ϲ����,�b\\I��8!M;>M�o�W\0�P�܆�v]��t�瞐�E��;wMvqb��xJ�7��4�x�g\\	�M�\n���g�k�0�M}.c�rS���.J̳����(!M����y�\ru�7����~���w��wn���<��;I�\'�i#N�o�W\0�PW��v�ܞ���8g���N��g>���pv\\�	�M�\n���� ׮��G~i	�����.����g��N�7��=����\07ԕ�A�\r�����/��u�\'�|M�.{91�\"/��o��h��P�4�\0����\rrm������_�Ǯ� q��^N�3�+%���5��	�M�\n���� ׆糏y�;~��)G���;�Pb�Y^WR��%�����4�\0�����6q�]�������siq\\>ى���xI���frB~Ӽ�����<ѐ����!s��v����Ÿ�\r.a�\\B~Ӽ��Z���][tq.#�\\�����*��,|�y�KX�(��i^pC-�;�^��1|�h��\Z\'�a� oH	x�ayӼ��J�t�:��T�k��g.��o��I\r�՛�\07T{٨o�A��\'�@�~C���P�@���y�\r=�xho�AQ��y�q�N����v0�Ho�W\0�Pm�\r\Z�k��grU��N@�D��_pC��7�Jl�>1��D+�@�H�4�\0����	y��y��%z[Ѧ\r�N~Ӽ��~�`������x��q�ą��ܦ~�\r�&6�>1/�r\'̛<�����i���~�`���bL	�As+����_pC��M�O�K�QZI���~�\r�&6�>1/=�i���(o�W\0��ob������@��i�Q�ԯ\0����&�\'�\'5�u�u�7�+\0n�7�	��y� !�@k����_pC��M�O�Ku�@���5�Q�ԯ\0����&�\'1�,��Z�(o�W\0��ob쓊p��Ey��5�Q�ԯ\0����&ا��[�T�k����_pC��M���;P �S�k���i���~�`�ԛ�S�k����_pC��M���VY�J�\\GyS���~��@�$ҩ�5�Q�4ZpC���с�O,ҩ�5�Q�4ZpC��٤�\ZŉE:���:ʛF+\0n�71B�v}b�N������\n��Ml�v��:1�S�k���i���~�o�q%��:���:ʛF+\0n�7��\r\Z���ש�5�Q�4ZpC����p q�\'�u�uͩO\Zo\Z�\0���ĉ.H�`%�u�uͩJ\Zo\Z�\0����\n�q�5O���owR�����\n��M�_8h���ש��<eI�M�\07��(\\�qb~\'ƛU���N�o\Z�\0���eH�AO�mqb̒���(i�i���	4\\&����K�YJ�S8i�i���v�L�O�m^b��Iu\n\'�7�V\0��ธ�U�ӞX޼�x���T�(i�i���~�J�4\'�7/1޸���4�4ZpC����*�ӞX�Ÿ���+������\n��M�4��:M��]�O�7��<���D��\n��M�hM$�\'�w1~R�qNʣ\'�7�V\0��o��#r�Db����λ���sR�>��i���~ç���ӞX�Y�|\\I��ǅ+)��8��i���~�+�i�bE$�%�w.� o<?A�6�(��i���~���\r�+\"I�-1��=�y�y	j������\n�z�A�yC�B�H�AN��\\���o��	t4���F+\0n��� ����SD;~WP]Rb~��	�fW�@Gs�+)�i���^r�\r���St�2��º����_	�fm�hG�8)�i������V�[�������7���;N�7kÉfT߸�қF+\0n��r���Ї����]�tΟ��N>1��wB�2����G�;A�i��Vz�zmf~����\Z_w���������{\'�,�z\'�Q�%�7�V\0�J�󡮭`�G�Շ��u]]���sӧ�O�ￔ�8s���	�M�\0�ҫxPצC�͏��p����/��w�5��O�ￌ+afqW�ՙ��\0��䠮�h܌�|��|��]�副��-��.1�oebT\'�7�\0n��A]�{�ܽ���=��˯�ԗJ�N>1�/^��l�	}T��ț�\0��꠯��=~�١3��n\"��[����7�����zf�Nh��syӼ\0�VZ�����J\r�z�_�����K>�t��}��|f/N��p���K�o�\0�J�WZ���v�����\\w�y�ϛ>�|b~ϰS=sU	u��!��M�\0��ꕖ�����!�����\n�Μxӧ�O��	v�f�A��(�;��͛�\0�Ҋ��\'���<DX�w]�(w�,�>�|b~�k�3���qƕ�ǂN�o�\0�J+RZ�<^�����]��,,\Z7�tȉ�=��Z�9.�	yd�K4m�\0�JR��<y���揱��s�:�rD�x8��{�O���C�	i�͛�\0�Ґ��.�s�g��c�;;R>���\'��\\���B�+a��u\\��M��[i�*˃g�s�����K�͎��;�3�=����弔V1v�\Z��՛�\0�ҐU�΍��S�(���yp8p��N�K���=.�u&��O��T9Q��_\0p+\rNey�����.��4��[h��\'��.\\�����)��(�%�7�\0n���,��<���䴗u��k�N��V8�y�zS�\0�V\Z<<�r��t���7�:Ӊ��#J��V�+1�+�l�\0�J�#�z��Po�#������e)�K@J��m�\0�J�#��B�|�Hި��|b~G����%�6P����Zp+M6�ҩ��Hg91�#��H��C��yS�\0�V\Z�2�ҩ����zb~Ǌ_:FI\"J᠉k3��_\0p+���SnSn��;V��R�)Iv������/\0�����)�zb~��SI*�[sHp�՛�\0�қX:v��;&+�� r �HG}S�\0�VzK�����ɧ��;�!���~���&ք�����T�d�ܨ�(o�\0�Job��ۗ��J���u�7�\0n�7�	����3N���t�M��[�Ml�}b~�)������~���&6�>1�]I8p�ĺ�:ʛ�\0���	���-\Z���(o�\0�JoX&�\'�7��7c]s�M��[�Ml�}b-h�^�\\GyS�\0�Vz�`��s w%�u�u�7�\0�Job�8tź�:ʛF\0n�7�	�[�q!�S�k����_\0p+��M��(X֩�5�Q�4Z\0p+��M��,H6�:պ�:ʛ�\0�қ��ӲN�����~���&f�\0�N�������[�M�N��D�e�j]s�M�\0�қ�\r%�w��ש�5�Q�4Z\0p+����@�AN��T�c��o\Z-\0����v��R}b^�z��HFZg}�h���ו�W�<1�S���Ie�t�7�\0�Jo\"�\0��tb^�Z���<�˛�\0��>�������S/�))�E��M�\0��~3;�������K��%豎ӛF\0n�7��	�����HR�U)A\\���4Z\0p+��AA�M���>O	�f�5pQ�~�h���/���tb~߹^#�-�$����[ie q�܉�=�b����\'�7�\0�J��/���(N��Y���(A\r����4Z\0p+Ì���ى�����&%��\Z\'�7�\0��ob]Z��d\'��[N�5\"JPuNZo�a\0�Jm��2�\ZR�Mv�81���$��D	j��������&N�~Sz,zKJ\'�����2w��Qv�|�h���&N����(*.��;1���TOʼ=�R�|�h���&��vFk��,�ӫ�{^Ou$�K�3*N\Zo\Z-\0����[ͻQ-��^����Z��p))-I�+����\0�Vjo5�b�P\r�ӫ�{^K�\Z.%�%H�4Z\0p+��Lmn�P����pR����R���/)G�p\"iSk���&�Pk���B��<���G�����R�Iyr�H���\0��G`��=�3Vȼ��5�7S���߷K��5�J*��q�+����p+�)�^^�4+�GC�OC_�:O�~b~�S����:�@�I�M�\0��u��Ә����]{�}��<N�������5�%��J�o�a\0���}��+�����sv�)����\'����S��݉4�r\'�7�0\0�u��s��+��|��`(�8��מr����	qb~�q>�kB�Ɗ�%�7�0\0�u��s�˝��8x�x�܅��:D�/����˞s0%ĉ��G�ע�$��қz\0��u��9�vxpNѸϑC�{_�kO�Ҝy	qb~ޟ�Hq�\ZbDI�M=�[��t��K]����=���!�eϫkO��V��%ĉ����T��$=$p	�M=�[���r�K���}n���Y�\\i^���ť�J��;�&-\'� AJPo�a\0���A/��w]��>糹!�ǵ��/.]�81�s^�0i9I\r������<ƾ�r;�]������\\q\\{����sB�����K��Jځǥ(����p+� ��P�����+G7P<���+\'��]_B����DO�I{p��z\0��tV^^3���}�r�<}\"|����`�uN��Nഝ��[�����<C/w�����+�����1\\.GXt�O���͏$���t��M=�[yL�P�ݼ]��|e�����-���9�O,�M������K�o�a\0��cn]�a�t}��U�H��G��R6��M�91����X�Ik�u������1�r���{Wq��o�#�>8������8�hg�d)\'������z\0��uo��~���{����TW�}ob2�~H/\'��K��KZӭ�7�0\0n��� ˝�}���.N�8�������QN�o�8A�.iMOo�a\0��W΁,w�뻾�w�q.H�b?^�ω�M�%��N���śz\0��s �]x�슾��,�#X��}N�ox/��v�\\GyS�V�.w�-7�Aqn5v��,�,����^�x���:��6�0\0n�kc��8(rG�VH:��wb~/�	<SI�2�z\0��rO�(/�G���^�x�;1���}�Ɖ\0j\\�7�0\0n��=���Ka�����~��\\�x#͞7�0\0n�h	��X�����^9�g.i��M�����&N��^N��ʉ>sI�u(��M=�[�M�cd\'�w�	��\n亿��p+��M�O,��$\Z������&2�*1�k\'ĩ\n�:ʛz\0������;a�T@���:ʛz\0�������;afށז^Gy�����7�*1�1%�`9h&�u�7�0\0n�7�	V���)�F_�Q�4�p+��M�O�o�[���������7�*1�^8h�B]�\\GyS�Vn�`����@��u�u�7�0\0n�7�	V�yM��ߪ��(o�a\0��ox���8h$�u�u�7�0\0n�7�	V	h�_�\\GyS�Vy�`���@=�T��(o�a\0�*ob�6]8h�h֩�5�Q���\0�U��&؃���S�k���i�Vy�`_�c��S�k���i�Vy�P$�u�u�u�7�`\0�*obv2h���y�j]s�M#\0�ʛ�\rZ8h��O��T��(o\Z�\0�U��l(6Љy�j]s�M#\0�r�؎iN��T�\Z�r�~����&֙Ɓ=ќ�ש�w�Z	ITo\Z�\0�U��:xHp���y��h��D٦�[�M���_�81�S�q���]��M-\0�ʛ8	��n>1�Sk�]�&оDѦ�[�M��@��O���ڬ�� e\'�6�`\0�*ob&�����שb�������Ԃp���!@��}=1�SͲ(QO/Q���V�(�5N�oB	H,��4\'�7�`\0�*+������%�̉�4\'�7�`\0�*���������N�%�i\"J�oj�\0�Uk�&�\'���K��%j����Ԃp���M�O���O��%�#���Ԃp����v��+\'�L�%�i&N�oj�\0�U�ĉ��v���%�L��h��(�Ԃp����ٱN��X� 3�����R�|S���&N4�ٱN��X� 3��h��R�|S���&NԮ�c���q���r��ڼD���[�ML�>qWٱN�o>Afr.�N��D���[�M�I���X\'�O�3�h��r�zS���&�{�8�ٱN�o<⤘��2���D���[eVV�|*{k�����\'�7qR��+�L��D���[eL���J)�^*5n�˭��߾+�3{J�Ss>Q���VY�u?��K�����i�\'�7~9)f�.�N��yS��r����M��;��{��Kg��߾�%��%����h�Ԃp�\\�\rr�eMq��̸\rw�wW�w��81���J�Y�%�9�O�oj�\0�U��U�r�#��s�� gI�D_�����tƉ���wR�b?)M�>A���V��rMU�s� G��>{��D�{|�O�Og����Q��oVJ�S;JPo�	\0�*W�^c�p���s��[��E����J:���Ƌ�D~�rR������\0��rU1�r������s���>[��g�$�tƉ���}\"�Y�T�F�қz\0�ʕ�ià�������H�t���\\����ۏ�D�y�IejN�o�	\0�*WΦ�����.�-0:l�y�X`�Ӥ3N,o/����%�i�T��\0�U��M;�ex�떪�����Մ�Kg���q�+1�^R��I�M=�[�ߴAЯW庥*�����+�rѥ3J��8����<���z\0�ʵ�AV�W庥��.	���/�t��;��۝��qR}SO\0�VY�8�LW)Z˵�<�k�������!]}b~�q~GIy\Z\'�7�\0n�1�������e7?�Q鋿�#:�Ĭ=G	�%�i�T��\0�U��u�S)�G�q>�o����xS���%\'f�)N@�.)M����\0����PWO�p��\r���xm�7q�����{�л���qR}SO\0�VIm�������r�ݐ{�i	F-��_�Ɖ�=y��\'�i�T��\0�U&}���\rES�9gH�x��]~b~�qb���4N�o�	\0�*)R��w�re?ZІ�����\'��\'�{(�L����\0��$ڕs�]Au�x��������=��v\Z\'�o�	\0ܪ�F��v����ڎ91�?1ޗ+�N�)\n�M=�[%z�Q�v���S1�sb~��$y?%�i�+������\0��:ưQ�Do�����;�\'���ʹQ\0�k/o�	\0�*�T�6z5��O��\"/��y�D3\r�m�7�\0n�+I��FY���󻌗��̉�MWBzSO\0�Vi���eW��ߜ�͝8h�K�o�	\0ܪob��5N�oΉ�漱䠱L��\0���&F�]���N䷈��U�uRySO\0�V}�;ɉ�M8���+�l�i�T��\0�U��(���M8�W�T�����\0���&6�>1�	\'�h�򴜔�T\0�U��&�\'�7�-\rԸt� ���T\0�U��&�\'��Ҧu^��I�M=�[�Ml�}b~/��	.\\�뚁8)��&\0p���M�O���M^��I�M5�[�Ml�}b4����R�j\0��������Z��kRRySM\0�V}�`�$㠡Y��k����&\0p���M��*�Y�S�k����&\0p���M����ש�5�Q�T\0�U��&أ���N��%�7�\0n�7�	6��Je��]�h�$�7�\0n�71��8p�J��T�$�hP܉�M5�[�M�j��y���Є>�s��M5�[�M�F	���\"��}�ZT�%�7�\0n�7��46�E:�{��T\'�7�\0n�7���:�H�~w��6ep��M5�[�M���FR=1�S�#��p��M5�[�M��@�KN����H�Ц.Q��&\0p������ļN���j�/%�7�\0n�7qrа���ש�QB��D���\0���&ޒq a[N���o<��:�ˉ�M5�[�M��l�\'�u�7\\B���D���\0����%�����|b^�~���P�h9Q��&\0p�N2�&���͝���Ц.Q��E\0�V}������8Ifi)�M9|�~S�\0��\n˴�`����(�gi)�M9Q�~S�\0���&6�:���]R�|�m|�D���[�\r��vɉ��]I=�E�b4%�7�\0ܪox��vI���zf\'��-J4oj\0�U�����s�+%��TJ��[�h��\"\0p����`l�����JI1�.~�\Z�E���M-\0�j�8=^R+g����x���9�\\�\Z�?������M�\n/���%\'�7>qR̼N�St\'�7�\0ܪm�6������5⤘9�q���+A��E\0�&�z�W\\�M���svI���:qR�}�͔;\'�7�\0�$C^	X��S�XQ�Z�҉��:|R,E�;�L�+���E\0�&�n�H���F�|�s#�KA:ԉ��:QR,�^�������dM���}�ˢ���2�X-1�Y\'N�YФ4��ƛZ\0n���&�$/��}7WF���5���\'�Y�/\'�����N\Zoj\0�I\'�$/�ެƗ._�+����K)1�Yw����\Z��2UI�M-\0�j�Do�#O�C����+���뭃��߬���~��\'�J\Zoj\0�U�$ʑ��Bsawpߞf���t]�o���N[b~���\'��<UI�M-\07��s�!^79y8����<|Oו���z� \'�7���o���T%�7�\0�$���V�hi|���;�%��u�>A�[�-1���+��>~R����M-\07�ำ�+�{������#���W�rb~�{]\"�}��4u��M-\07�ำ�+\"��.ν�HgG<�+�}���AN�o<�O�����.ihS�\0�M28�l����ۥ#��8]��rb~�~�$�v��ډ�M-\07�ำ�+\"*n�j�ۿ�+�M���AN���O�w;AO�D���dp�����sr,�۟�+�uߕ�AN�����=%詝H��\"\0p��;[�\"\"^���3y����}�w�t��圀�S���D���dp����ڼ�7y����}���t��q~��4%�7�\0�$���V��p���.�o����Պ�fG��rb~\'�����qR}S�\0�M28�l���ڼ⼟��/n7�n?���\ZթO��qBz��4N�oj\0�I\'ʑWX87����]�6�sSP��]�qK�91��	I�K��8���E\0�&�(G^���q��i��Qx�ѐ|b~����@�qR}S�\0�M28Q����\'�s4D@������>\'��9�L�ڦ��dpD�Wa��qf��㳡���_�z�ȴ%%��Z\0n��]�j/�!�������_�z�H4�j�Z\0n���u��8�gC;1�����N Ӿ����M-\07�`�hq�֌\r����V;�@��r��Ѧ��d�0q�ֈ\r���~\'�v.��	f�M�����M�Ic�81�s	�]N �M��D\0�&yo�٨N������������Ml�}b~g\'��4hx:ʛJ\0n�7�	���]J�\'9hQ����D\0�&y�2�>1�K	�M	滖������\r����.%�7�q�����Q�T\"\0p��a�`����<x�q%�u�7�\0�$oX&�\'�7?�@���:ʛJ\0n�7,��[hS����������Ml�}b>	�F]�\\GyS�\0�M�&6�>1�Q�z��(o*\0�I��&�\'�@c��k����D\0�&y�`�X����������Ml�}�\Z\n\\z�k����D\0�&yÛ`�X�A�ө�5�Q�T\"\0p���L�ڐq���N��������Md�54hn�:պ�:ʛ\07I[d�-.�qm�u�u�u�7)\0n�7�I���N��������\r�.\r\\�ĲN��������M̦$��O��T��(o*\0�I��l��ڒ�:պ�:ʛJ\0n�7��8���ש�5פ��&�M�&�Y�A	?Q��ש�5\'�x	�M\n���M���ܥ�\'�u�w/A��A	�M%\07I�8����qb^�z�B��.N�oR\0ܤo�\0��|b^��%G�J%�7)\0n�6�e���ļN5�3\'��[JXoR\0ܤob�@�Fqb~sN�\"JTC���ޤ\0�I���`\'N��$�L/%ʡ�J�oR\0ܤorv���k\'��-%ʡ�J�o*\0�Ig\0�	�����Y��D9�U	�M%\07)��o�}b~O�^��D9TU	�M\n����c��{�%�ҭ%���J�oR\0ܤob��\'��-%*A���ޤ\0�I��&�\'�wO�K;Q	����&�M�&��k�nW���=|B,\\�\Z����&�M�&�X3���~b~G�	�Tĉf����\07�x����lG���\\�,�(�\\Bz��&}o`�Y��v̉�/%�҉�PJ�oR\0ܤob	��$���;^J���%ڡr%�7)\0n�7��69n;�����b�r	t�r	�M\n��t�uX��Od�|ҫ�;^J�������M\n��tp���[��q�j���������b��4���\07��1�r��:�/��o\n9�/\'�w��3%塠��M��t9���Zn��4>9�&g��|�u�����f�=\\I)Вқ\07��갖{�4e4#�s.�p�=�?>1�{�����j�N�m\0ܤ����ܠj�C_���}Od��?]�O�O��>!f�D:�t�\07��갖��q������r�5�o287�=]WN�O��(!����қ\07��*c-w9#_�����7]�M�Q�h:�����ߝ(!b*iU�n�\0�&\\�r���r���M_�\";�E�\'����%��%��JJo\0ܤ����ܹ��sW�������������������=��P%�7	\0n���a-��.w��;��9O��Rw�t�Ģ�.%z�%�����$\0�IW������ҕ�Ks����<-�����˻�%p,\'Ҡ���$\0�IW����7�t�⾔eL����)��\'m��K�YJ�C9A�I\0p��k��O�ҕ�xQ�8�-<^8w:|b~7_I1K�$h\'�7	\0n���a-w9�S��}��w]���<^8w�s�����z\'�����$\0�IW���`�JW�+�y��js�׊�]^N�O��$򛵤\Z4\'�7	\0n���a-���ҕ�x����Y��終�>։����ެN�Cs}�\0�&\\�rË¹+�qM_w�kg~Ws�v��������K*)9��I\0p��k���w��r�0Ѹ��_���#D³�}b~��/���	D�\07��갖��υ���\'L4��h�\0��Y�81���wRN�	D�\07��갖�8����1�����i�k���y��ƝTVvy�\0�&\\q]mQ\r���ϑ�Ik]�����\'�7�Iy�ț\07����k���c/s?��k���ybn�q%��;)�zb�|�\0�&\\����\r�+m̪��։�����QR>Q\nr�M��t�+s�/��FYյN,���x��қ�Cho\0�\Zc���o�)�k���e\\����#\Z\\{}�\0��X�H�{c�a]���.����N��j\\[�M�[�M�q\'�:S��]v%�{J�P$�7	\0n�7���N.1�ˮ$yOi\r~�\0��xo���󻔀ާM��:ʛ\07i���1������\Z�:ʛ\0�ƛ�fE�%�7��~3�\Z���I\0pkh�2A:1���I��8P$���&�M�&d�tb~��z4Iy�M�[C������4h�t�:ʛ\0�ƛ����&��!�5�Q�$\0�5��&X%�71.P�pA�k���I\0pk��M�O�ob���V�k���I\0pk��M�J�ӎE�u�u�7	\0n�7�	������X�\\Gy�\0��x�`�@��,)�5�Q�$\0�5��&�o�pU��^�\\Gy�\0��x�`��p��^�Zל��ʛ\0�ƛ�{����T�S@�қ\0�ƛ�+L�N�4ь#A�I\0pk���5Ɓ=)�S��NT�rv}�\0��x�W@�>1�S���D9Jp	�M�[�M̆��2�f=1�%%�f��(Gn)�j�\0��x��;�Mub~+��߬��HU\'�7	\0n�7�]-�T��ߊ���|����M�[�M�+ˁ#���ߐ����r���D�&���&�a`ׁO�oH_��ZJ�c�)ѼI\0pk���������O3�k	}�0%Zm\0�\Zo���@b�81�!�R����>ֈ͛\0�ƛx3��M��ߐE)�n-���D�&���&V\r6��q�gj=Q�5�D�&��������D�\\LW\'��G�h۪\0�5&e?1�\'|��E�#N�o\0�\Z���`��ߊ���k�r�\'�7	\0n\rX��	����H�X�f�D5��m[\0����<_�>1��������K�mU\0�\ZoX:��:���H�X�6q�8y���\n�[�\rKG�}b~+%|i\'��(��Upk�am�`��}b~��%|i����O�oU\0�\ZoX��i@<�r:������-N4\'?��Upk�am�s���b�t��[/�Ks)ь�\\	�\n�[�\r������*���&WJ��\\N�c]��ު\0�5��\np0��*���&��+�ҜO cU��ު\0�5�{0��A1T��ŉ�M�|��2V�	��\n�[#p0\n,�y�rЁX:��N>1�%])��+���rRz���a�^]:#^}��u��-iJ=��:vDI�\n�[#9��d����q9���8w���[R;�L�%��#N�oU\0�\Z����{]Q:a`vt(��uƉ�M.�f&��؉��[\0�F��ْ���wOxa���7��ܗ�\'�$/�L�%�+%շ*\0n���y�*�\"$��;�cI������.�QbzKp�3����F*�Tߪ\0�5��瑫LFs�\\8ȹ;_g2x��}��Y:1�՜�̻��H}��\n�[s��I���������S�ڹ��}�Ҭ���d\'1���2RS�x���<8ɫ�__�<�Qn�V�����W�X\'�7��g��2R}�z��ֈn��WO�����8;�.�]�}�+ǋu��Q��<�Q�z���<xƫ	$����M�R�X�r����ӱN�oF��Y�K�#s�~��ֈnD�W���/��T*u�\nc���O��c��ߌ��\'呝�ު\0�5��իa9��ߥv����	ұO�o�Ry��%����ު\0�5�3�+/���+��R�]R���珰�tb~����\'����ު\0�5\'��gGW.7��s�����}9�:������Ii��[\0��t�Ǻ��}��k��k��&�����ӑN�o�R~\'�Q��ߪ\0�5W�}�����]�8;7��rO��e��\'�7�ӿ�	zԒ�[\0��ઑ��t>��o���ʢ�{7�בO�o`N�nNP���ߪ\0�5�{�ڰ��97}����5\\q C����-!����r�ws�\Z�I�\n�[spK��Mx:���f�����#�0^j�����4�q�\Z�$�V��9��\\��,<n���9,���v��rb~c��}N��9i�Upk��<�#�=�s�y�ۑ�1�(����v��p�Dr�Upk�x�\\M��S8�f��\"_G=1��J�>N ��`Pߪ\0�5\'���!p��Fy+��vb~G�~���m�q� �UpkNw�\\-��n+HG?1��K�~\'�)�ځb�[\0��r�П�O���u������D;)�6�[\0��8A�@�\'�u��;�^�FR�Upk��M�O��T�����|�`��ש��\n(z�\n�[�Ml�}b^�z���A�f�\n�[�Ml�}b^�zS�Ƭ��Upk��M�O��T����fZGy���|�`��ש�ꄺ��V���&6�>1���AC��Qު\0�5��&�\'�2p��\Z�(oU\0ܚob��&ں�:�[\0������F���k���Upk��M�O�k��&]׌��V���&6�>1_�f^�M$oU\0ܚob��p���o]3vN*m\0ܚob�+P�:U�F�}I�\n�[�Ml��V�&�:U����r[\0���{%���u�t���%��\n\0n�7�	�E$�y�z]#�EI���[�Mlr��+!�S���؉�R[\0�曘]4�ļN��p\'��\'J�o\0ܚob6�q`w)��שߍ$��^N�o\0ܚm1�qb^�~{�\n+���V����)�=��y����KTc���*\0���b;$��ļN�f��(�z9)�U\0pk��:���ļN�f]�(�\Z.)�U\0pk���8���UO��T�L�(�\Z>��U\0pk�������:���\'ʱ�K�o\0�Zo�M!����:���%ʱ�O*o\0�Zob�dC?1�S��r�k���V���&$r\\�D�)�j��X%��\n\0n-�\0rv��:�L-\'ʱ%��\n\0n-��D}bY���D1V���V��j�2�.1�%��L�\'ʱ�%շ\n\0n-t�L�K�o$�L�%ʱ�\'��\n\0n-mX&H\'�7��t3��(�r.��U\0pk�	�`����rif�(Q�].��U\0pk�	� ����x�g�(Q��9��U\0pk�	m�U�.1��R�d^��v�x�\0��zo��=f��>q��O4#�4�*\0���Ĩ�0T�l����>�L�K4�h�~�\0��z+ >�A,bc-1�/���s�f`41�U\0pk���<�1hpl�\'�7��3��%ڑK�o\0�ZC^k��7z���%�7��3�%�����*\0��G@�FD�Ѽ0�z���ߘ���4^�@G)1�U\0pk�`�8�	n�y5$�Kn;k���i=�L�]���V����Ό�^ި�z\njʅ���\'�7���3s��F-I�U\0pk\r��c\\{]K�W��8�k��q�YO�o���g�OJ����*\0���Ub\\���V�RFԮ��w�u����z��\'�Q���*\0����qe	ι��\n�n���yl��[���3�2ZI��[kp����.��ԏ�ץp���u���\'�7���g��:ZI��[kp����h��q����ݽ��<����M9�̔TGs�~�\0��\Zf�WV4>����.�kw���O�o�p�\'-Ф:���[\0����c���D�U���R�v��r�e��Q�5��\'��K�o\0�Z��\r��Oו��Y��������O�op�䳌�TFw�z�\0��\Z܂0^y�|�ru\"<����t]�?1�����2^R����V��5������+W���zz�w������O��9)OQ�z�\0��\Z�%W^��]�U�X�������\'�b~jm\\xIy\n\'ͷ\n\0n��!,��꯻����6���u�e��[Q>�۝��p�|�\0��\Z=�/��+�k��j�}�;�\"���ߊ�i��Iy\n\'-m\0�Z��\'���麊���&[�{͎D�?1���i�QR������[kp�%������4>��.ν��Ύ����V�K�NJS:i�U\0pk\r��d�aw�Ź��M��r�35�#�Q�.N�or}�w8)Mu�|�\0��\Z=�n�]�~�:#���P\'�7�(]�9A�#�U\0pk\r�^���͎�9�4n�0۟�ߒ���ऴ��V��58Dٵ�y������S�\r����P�m礴���j�\0��\Z�/\\	^���fC91�N�NJ\'5P�\"�*\0����	7w-2���PN�o�\'�h�H�*\0��F ��˵�gC=1�N�ݜ�ޮ\n�\r�V��5�����lh\'�7É��	J�@��[\0�V��ֈ\r�������{��ÁWR~�\0��z�2�>1��{��������[�M����Vߥ�>o�8������pk�	�`���\n}��\rP．�V����`���`�ҿ�[e���[�M�����v�Q��fR����pk�E&X\'�7����.�u��[�-2�:1����p`�A�Q��\0����&X\'�7RJ��!Y�\\Gy+��~�L�J�o��8p�X�\\Gy+��j�L�O��M\\�j]s��[�Ml�}bh�Y�\\Gy+��~�`�H�¥�4��(oe\0��ob�:��:�[\0������\Z�Xҩ�5�Q��\0����&�K����T��(oe\0��obl�ǁ׆^�Z�\\Gy+��~����A	?A֩�5�Q��\0������@���ש�5�Q��\0����쬠�M�e�j]s ᔘ��\0����l�����:պ�x�~+��~ۡw`�\Z\'�u�u��<NRoe\0��ob;r\\	�ļN�fU�X/i��pk��uT���ļN�f=��W$����\0���ĉ8t��:՛�8)��p�|+��~\'	(����:՛�PRZ\\�|+��~o�k��ש�8\'�/N\Zoe\0��o�\09��ļN���ʊג�[\0���\r4���:՛Ub�8i��pk���٩N�o��ͪp�^�G�H��\0���r�������(ƕ�W\'ҷ2\0n�����UN�\'�7XI�f�9A�8H��\0��a�Ks;.��zb~��S�f�O�+n��[\0���XG[6%��*N��U>���X?���pk��uT�ɹzb~��S�\\1��\"��H��\0���ĺq�\\=1�ϩz���N����I��[�M��bF����\\.����0ϩz�r�+Ѭ>�\'��2\0n�7��Ʃ�Or�zb~��Oi}��j\'��y��V���&������\\.����_i}��h&�[\0���X��{;W�r�zb~�𯴾Yw���\\�x+��~+�7��J���JX\'��/�oV����/i��pk:c0\'Ƹ�q#��+h:1�i}��+;Q.�K�oe\0��C�Ę�(1�M�Wj���qb~���fuW�\\2ޕ���\0��cD���[���9�o_���$\'m1�\\Zc��?Q,ٿ��[\0��1�����}�	��_W�������ʧ*s�\'��uI���[;��53�{}+���s9||����y�]�D>1�Ţ��Y�Ǖ�g��%��2\0n�鮙��j��7�\n*�%�s���nsn��=Ή|b�����Z���$�V�-5��>�ڵ��Q�َ7y��3�.�~O���Z�)w�I�����\Z�E	=���$�V�-5��1��d�������S{�V߾ڹi-�0�ߔ�O,�|����\Z����V�-5��1����A��y�i��ߔ��y禵\\W�����]\"ƕ�X��+�̉��[j��#ƕՍ���}����MŊ��87�����8����%���2���:�uַ2\0n�醋W&��o�겧���\\�X�禵\\W�s%��]�K�,��P�`����[j��;ƕ	$�nggO����v��s|�Mk�����r\"������2�\'\\�	e�oe\0�R�M<1Z�z�q�K��}_�]���s?ʵ���O��;���Y�hB\n+����[j�E�ʫ�+.�/���Ŋ����8���Y�{�O��;_��Y\Z���%䱜X�J\0����b\\�⹪������k+~�΍�]n���\'w����_}�߬�\\��:�[	\0�� �s�V^<W������TR�9;w<u�#�{?$1JL�_�N�5�p%챬���\0pKM7?�ʋ�������/7Ω{��S� �GP��}�xw�߬ɝ��Ng}+��\Z\\C}��WW\\���w�ƹqu�8�����Cp���O,�Cp8�$ެ#N�cqby+��\Z\\C}Ű\'~T\\���w����z)�qƍ8�׿��������K��\Z���[	\0���\n�k��������/�����e������D�YC�+����V�-58D��&|���������G2³�O��~o�N@#�X�J\0���������1��{7vG���%�wG/�7>]��H%��\0n��!�բ��!gG�U����������HN���m%\0�R�C�\\	��m�p��l=1�{ȉ���#9��`��\0pK\r�s%|yKg)1�;ȩ�%������[j���%�z;��ͪXQ��o�p���V�-�ZͯO�١K�oVy�S^ל�7�[	\0�ԛP�]��<�\"�)�k�\0\r�y+��z�`��gQ,9�:�8p�����[�Ml�}b�yOR��&P��:�[	\0�ԛ���<��t��q�����\0pK��M�O̳ȅ�4o4�vm�:�[	\0�ԛ���<�����	4\\�e��[�Ml�}b���K=f4�:�[	\0�ԛ����f\r��\Z�|��[�Ml�}b~�j�p��u�u��\0n�7�	���t@M�����V�-�&6�>1��ݵ�u�u��\0n�7�	��yR���\Z��(o%\0�Rob��h�\'�u�u��\0n�7�	�	���_ל���[	\0�ԛ��-\rԿN��94)��\0pK��M�ߘqЀZ�Z�㜠�J\0����&�ӎ�V�S�k��w�z+��z�`��=��T뚣�;���\0pK��M4�:�t�Q#�h�J\0�����d�p��:U��(-%ڷ\0n�71�\n����ש�k��Z�}+��z��q`ǵ�N��T�#��h�J\0����vT Osb^�Z���D�V�-�&֙�<�(O��T�#_�h�J\0���b��ļN��9R�	��[�M�T�D�:1�S�k�t}y+��z\'!�]vɉy��O�a��@�J\0��ڄ6:P���y��=H���	T[	\0���h�b�<1�S����n)A��pK�	)@�}91�S��+Q��r��V�-�fv|v��:��{\'ʱ_J��J\0��R��)�	�ļN��J	=�\'hm%\0�Ұ�\"�b�N�ozI���	=��[	\0����uj���ω���T�}QB;��V�-�&�S\Z��>1��v��G��GZ���J\0��߄t	$������ߕﴼ��H����V�-�&��5��gH��;1��r�x�%����~R}+��~�a)^� ���{]��7>?�\r�K$o%\0��oQ�$������{]�����\'4!A��[	\0���8�I3R:��Ԇ#J������%��\0n�h�\Z�FI�����%�7|�o���F.1��pK�E�i�\'�EH!�߉�-���۩��F.1��pKy�����Hz7�Cg�N�o�멼}?��FvbzC��܊H���Hz�R���xX��o=��S.������-=��d�	o���\r��{�wb~s�멼۹�6J��\r\r�[z9^FYn�Br��􍻛�߉�M���;�K裔���\0���u�	K�M�#�[Q���s7��;1���S~��	}��\Z\0����Q�����n�8;�j�9u���]D�߉�MT��;hJ�8I��pK�u�	�s�� <w�|��lu��weM1l}�X�D�)���D9���\Z\0����P��p�݄C=�t��w������7��K�)��	��7G�j��\Z\0�����܄����i:��)7�%=�ߴ�p���߄�ҿ��D5jI�\r\r�[zp�܄��8��<�\\�(f�9��57a}N�o��ҿ�Q��$���-=�Z�\0����Sn�㟸���RX�߉�M�R�w��hF-I��pKNΌ尘��yʵs�@q�ߘ+	�sb~���=8ю�$���-=8��Mx`t���S���0N���y�����>|���2ZI�\r\r�[zpK���T��rݔkgGrcO�w�w�b}N�ob>��9��V�zC��=�r��x�מr�\\�|~)��{��8�߉�\r�O����@Gs�~C�����&<U��<�ڹ�<�/������ω�\r�Sy7%��8i��pKy�	OU��t�r�o�o��׾��������xGx	tt\'�74\0n���#/7�q��}�y�\r���v9\\�v�xG�<=N��e?������NZoh\0�҃G^n��r�{w�)w�<�q.x����t��{��1��N�oh\0�҃/Yn����a|/�΍����E:ˉ���7\'xi\Z\'�)�4��\0��^�܄����k�9|�e��QN��5�.�K��@�,i��pK�~�Zn�=gj\n;�#_�v;ʉ�]q��wv�������-=8�]-7��҈��yW�QN��j���v.ў������-=8�]q�\nm��k3mG=1�k��wq�9�A#T��pK6G����v��$\'�7\rP����\0���@/�\'���\'��	��%�7.4�7�\Z\0���5N��S���5\'̛;�H��	~C��~�`����Q¼�y4��\Z\0�������&�%�[x+��K�zC��~�`��߈��M�Р����pK��M�O�oz�~�c��&�Q��\0����&�\'�7�T�o\\8pl�u�74\0n�������;U��$�(oh\0�Lo�	��E\\:���o�\r\r���-6�>1��m$�Е�Q��\0���b����8p�cK�\\GyC�fz�M���ߐ`��9]c�\r\r���-6�>1�\"47h��:�\Z\07�[l�}bd8�Z�HG~C�fz�M�OP�	UZ�5ґ��\0���b�Sv�\r)��\Z�(oh\0�L��&�o`��Q��%]#)HzC�f�&6��D8h��V��5�O�74\0n����\n(6�:���\Z�)���\0����L8��J�u�u�H#��oh\0�Lo1;�4�ĴN��ɫ��\r\r���-b�\n%�u�u�U�J�74\0n�71[\r��)1�S�k���yC�fz�i�bK��ҩ�5WI^���\0p3���3�	����O�u͕�8��P\0����:6P���ԆфX�H9D	�����&N��A_)1�4a�O�fecJ�6\0n�7�D��vĉ�����=��(S6�yC�fzo�p �k���%^����D����\'�\n\07ӛxа���9�T��wBO��\'�\n\07ӛh��~b~�i}��%�����\r���-����������Nh+�W%�\n\07���Ą~b~��iy���VگJ�7\0n&�P��������fm9���_��o(\0�L0Xd�tb~�r�e���J{K������&6�*1�g�	������\\���\0p3��M�O��s�gi-���G�o(\0�Lo�$��81�gL�������qzC�fzo�+�\'��$/����V�+�O�o(\0�Lo���Blĉ�}cN�,W%ԕ��	�\r���M���b#N��I^\"fi=�����\'�7\0n�7���*6����BK�������~?!��\0p3�$�|����81��.�;��\"�&�7\0n���z�7��\'��\'x���*������,pr-�F�56����;q�g1q�Xe�D���,�a-�F�(��\'��=�<�E�b���\n\07�r\\���m��� ��CN��+���j~�\\Չ�\r��ipkH˽�v�+��u�������iy�r>QM�D����4�%��ֺC.����u��\'��?������ĉ�\r��ip�������6�u��ﲃO��o�S�f�;�L�D����488��F ��&7�c��}�s�|b~��(���.�L�D����48�(ˍ�}�������3~鲃O��\\�\'��(�NZ�~C�f\Z�x�坧���-\Z���\'�w�K�7+�	t��\n\07�����-��e�?�ޢAp�����\'�wyN�6��:��\n\07��������?��y�D�|b~�����q�^�D����48�c�r�0����\0�7!�7��\'�7/J�7�Iy��\n\07S�D�������ǘ�7a��]v���-�x���(Q��\0p3\r�;[��u���c�Ҙ�w�|b~��D�Iy\r\'�7\0n��qgV,w����\'I�4.���e����}���Iy\r\'�7\0n��q+��nq��I��;��k|����(N�w8)�Y�|C�f�w�b���\\���#;w|O�q�]~b~�G	�\'�5�(�P\0���+V������[���C��F���{9N��;)��D���ݼYr�j����\rW/�edxР�N?1����hGIi-\'�7\0n��q���D�<���^�G��v��{=N�w��������ݢ�_�h���|�$�̽϶���k~´�	z-Nho(\0�̃�ޕ�\\z� ��H�Ϧ}b~W{	��t��0��P\0��GtW��(3�l�\'�w��0�.A��M#��7\0n��eWZ׆c�>1����yw	:-�\0M�6\0n����Ze6��[����v�^�j��ߋ6\0n���A��g�>1�1���)AOf[K\n\07�[��cc:1�1���q�z�:!��\0p3�Ek6����~_I�Aå�7\0n�����F8��k�\r.x�\r���Ml�Ub~�K���)hp��#��\0p3��M�J�oz�~�+���X��o(\0��ob���$_	h\\)�#��\0p3��M�O��T����:�\n\07���ļ��Aå�ב�P\0����&�\'�2Јu�u�7\0n�7�	���-\r\Z����o(\0��obl%���7c]siJ�o(\0��ob����@���uͥ�����&6�>1��h�5�b�����&6�>I����Y�\\�_z��f~�`��A�w�T�k^J@oP\0��ob�7\r|�u�u�I%�\07��[h@�k#�S�kN:Qb�Ap3��M��A9�u�u�I�O�7(\0n�71�&P$�u�u�U[J�7(\0n�71�\n���:պ�-%�\07󛘍(\\L\'�u�u�UZK�7(\0n�71+Pl��:պ�*U\'�\07�خ�T��ש�5Wn=�Ap3��uU���TO��T�+���ޠ\0����:$�.91�S�k��zz��f~\'J`�ǉy�j]s��\07�89���\'�u��O�+���ߠ\0����[2��l�ļN5�����\'�7(\0n�7��8P�)��שҴ+i�Q�z��f~�@��>1�S�5�y	�\r\n��y�q�`g91�S��>i�l^�~��f�\n�b��:��%��]JHoP\0�,�������9Af\nW\"]�������`���I���O�+{�\'�7(\0nmb��[�N��ƝTWv��Pߠ\0�Y�b��K�WR]��ߠ\0�Y��,6����r��t�TV���\r\n���-ސ��l�\'����K�L�Iy\'�7(\0n��x���lqb~��𩚩?A��D�������Lf��;����\'�U8ѼAp�h/(���������S5S=~�Z��\07�J+�p��o���Ģ�-�5)�����\07ː�r�y��&�ֱN��o9�3��ȪN4oP\0�,�-`(�Sś6\Z�ك4EA:����-�%�~�D���\07�0X����J����n<�s�p�@\'��.-IϝhVu�y��ffܼ�z9��ۋ���q�QG���I:1�_>|Z�^?Q��D���28>��|ޣ\'����wS�tΏ�:������Ӻ�B~���D���2����|���L�\\�\\a _���|���z���ǇO�R�R�%�7(\0n���y���QFJ��o�o��o�}������81�_�֥���$N�oP\0�,��G^������u]����\Z�����81����֥Z��	)��\07��I�s���u�����@]�p��J���\'�w��j��	%��\07��I����u���k�����}���%�w�+�j�\nƝP\'u�z��fb���_�������(	�q������tF�����T-�0.�	-\'�7(\0n��!Z~�n_�T�`lgGż������81��ޗ���p9�\\	5��\07��0-�=�a������������r:����������O��:Q�Ap������o�*u��|]٢�\\��S�읒|�*�	e��\07���/�K�T�]����}o�RN:1�K���K�\n/NHi8Q�Ap�N������&~{��]ߗ���p�3J�o��\'��ɍ���p�x��f�<����u�����o�������&�>�\'�؝�k\'~�N��\07���c-��}]�k��\\���]�|�>g�]]b~��Y{̣����\07��갖��_������L��N�(�8��IO�o�d��%����ޠ\0�YW������:�q�75���~x����8A�SB[�����2�*la�.\r��<�s@�`&:i����ߋdU͈��%�7\0n��U�U�/�y�C�±s��j��\Z\'���^U3����t��f\\�����E����^\'-1��x�{z	�\"�7(\0n��Uî^ �?���X�<1��}�{p	�t㠁���2�K����X�(1��}E�ʛ��.o\0�,ˡ������X�>1�k\'�$�������Jo\0�,o����J�:1��%Ĥ�%�p�%�\07˛8��\r��������4@��\07˛����Ɣ0kDn3@S���A\00�j�`��ߘf��)���:�\0�6�	����(�ך\\j�V���A\0p���M�O�oDI>�4)�Q� \0�Y��&�\'�7�T���D������&6�>1��m\r9P��u�7\0n�7�	���\rnW�y��(o\0�,ob��<h��k���A\0p���M�O�o�46x]s�\r���Ml�}b^4\\[j]s�\r���Ml�}b>uB_�\\Gy�\0�fi�M�O��AC_�5�Q� \0�Y��&�oM�@A�S�k���A\0p���M��h��S�k���A\0p���&�S��f�S�k���A\0p���M�w�@�J�N���������K��+Q�S�k�1�D������A�>1�S�k�\nIho\0L�o1���N��T�+�$�7\0n�6!���ļN����s	�\r���MȎ\r䩜�ש�5��;!�A\0p���uM�HJ\'�u�49i|B~�\0`b}��@�CN��T��P�%�7\0&�7�\ZJ��y�*U�D2hK	�\r���M(�8���X\'�u�U�N*����� \0�X�⍵9۝�שW�pR�������k�ȉy�z�����D	�\r���M.��ļN�rKIi�|����ĺ��q�k��שW�:A�/ƕ�� \0�X��A	����&�++W�����J�o\0L���*�s��rU	*�|qB~�\0`b}�t�u����TV�:)M{�O�o\0L�o�j�����N�J�	*��RB~�\0`b}�4X)1�1�ҭRu�����P� \0�X��	Nb�����K�JU	jڢ/�j�\0`b}o�w�5������Ҭ�5mѕдA\00���7û��u��[�r�U[KP���6\0&�71�@�kk������Ӭ��5�Q�(�A\00����r�ֻ�v:��[�R�I^JЃ���\r��uj!�b9S(���N=1���SO\\��>N�o\0L�C^P�k���\r�v:��]��z��� y�D�\r��uppm�r���Ͱ$�J:��]��z҈�Ҡ8��A\00��!�K��Bo3\\�G2��AO���SO\ZqR\Z�8��A\00�.Ǣy9-�G��S8��W��AO����ԓ����O o\0L������M��Ϸ>�y��󥃞����i&u))��h� \0�X\'ʑ�����G�t�\\xz����5�/����ZO3����P{��\r��up�y�n����n�Sn�׸�I���5gO:��]��fR������\0���?�����k9ť����ߒ���\ZƤ�����K���pRZ^�m�`b�I��p9���(ʽ��z3z˹��t��</�Z�qRz?Ѷi0������p����V��rݛ��px]�zb~�p���N$+q�m�`b�/��w�w�r_�a��+8;��t���?��Џ��J�@޴\0�X����Ww}/��z��tM]�zb~��8�I��N\Z+;��i0�n%��7���/��:�������I=1�W�S�r8��Vvy�`b�e,�M�x/��:��[���<�\'���^IR+;��i0�n9X��s|�����r�B�~{�8?�\'��ʉ�vIje\'�7-\0&��&j&/��]����\\�<~��?��.���^9��.I�����:آc�����]/���E��u��]�t��{\r?!�.I��D����:��o���w�r_n����r_S�΍�Ӝ���~BD*/I��D����:��9��3gO���}��h�������+����~B�!/I��D����:��9��3gO�ŋ�/w�v�Aԑ��^N��u?!&=Jګ8Ѿi0�6wN����q�+�}>>t@�3���k~�,U�^�D����O7w_*��B�����3���k~�,U�^�D�h�`§[�?^��˸)�\\�};ˉ�]�\'�R%�U��`�i0��-|���|�����YN��j/ɗrҚD[���oZ\0L�t�H�z=������U~�/]�z��&���i0�ˡ��#6������|��$��iߴ\0��1�8Ib���O��N��A3A޴\0��������z�*P��\0�Ml�}b~c�O�Lm�q��u�7-\0&\\������p�gjW@��z�M�	�&6ARb�Fp�b\nm(�7b�M�	�&6�>�h#8UI��f^Gy�`µ�M�O�o:�Jt�J��(oZ\0L�[l�}b~C�̠�|�XGy�`��b��[�ƌ9�Ic�M�	�M�O�oE4�E��������E&X\'淢����5�Q޴\0����ļF8Pl�u�u�7-\0&�-2�:�hꥴ�k���i0�o�	��4�J˺�:ʛ\0��`��|�j\'x]#�M�	�L��9P�j�K�F:�\0�&6�\nD��V��u�u�7-\0&�Ml�}���&��u���D������M4\\	�M.�\ZACś\0�&f\'M)1��%b]#(���\0�&fS��.��\\\"�5-;��i0�ob�<��\\b^�Z�t���������㠑�ļN��H��������uf �O�\'�u�u�A\"J(oZ\0L��X���/%�u�u�h���ߴ\0��7qR$��y�j&%�i[J�oZ\0L��8�@a\'��שf:iF��������7:P��,\'�u��NZ�T��޴\0��71Pೡ��שָ����>!�i0�ob�p�`�O��Tk%ͨ�KHoZ\0L�\n|v��:�\Z����T����4\0��%���2!��ש�؝���:��i0���%�`��ש��K�SW�P޴\0�p�ڱ��\'�u�5�NZS�8��i0�ob�X���ש�8�J�S�8��i\00�ob��tŉy�j����4�K�m\Z\0L�M��ެ��:�\Z;\'�i&���4\0��7qB��fMW������^\"�&�D�����7��qo���[]�ה��+�N��K�o\Z\0L��x�ys��OW���jNbM�.�D2�^\'�7\r\0&�M�ռ��7��81�չ_S��+�LI��D������0��7��81���\'���D2\r���4\0���x97ik.ބ��rb~+쥼��{\\Iu�ɛ\0>$ظ�����T��\'/#��������^�T�)��i\00�әh�,w�4.�s*��y\n�����ߊ���)�qR��D���W��3y�3�q��l��r���[��[єnM���4%�7\r\0&<�ܼl�r����o�]�^���z��ߊ�4k�뜔�qR}�\0`�����]L���=p������έ�������V�K���Iiڒ�\08^I��ły�M���}{Ω}���u�ew�z��ߊ�S��/)O[R}�\0`��..V,w�;��P7N���Kw~��RvW�ǉ����|�qe\'�iK�o\Z\0Lx���c�.��}7~�{G��z��kc0���]�\'��Ѝ+�k���)��i\00����cz�����{�Cg��K���;n�O�o�u�q\'�AJ*o\Z\0Lxt���̻���}%�c�n��M���\'�b؛y�D	j��ʛ\0��p�Z�y�}ߗa3<L4Un����\'��ś)��� N�o\Z\0Lxtsg+�0�D�)�}_a ��\\�xʜkg�qb~+T�Yֈ(��������VSs����}9������y*εsz��ߐko�4\"�@uRz�\0`£[p�bL��ޔ��/�	�ϼs>:O���O���|\\[;���͠NJo\Z\0L>8�S�i.<�����:c9s������������hK�L�zP\'�7\r\0&��zLǼ�����T��\n玺v3���ю�;1�����kD�J4�:)�i\00���V��9w������S>�͝{��a����b~�����X0~��I�M���0y�߹��}�W����2�v�����⭹F��D3��қ\0��dL����}������J�gѬk�����o�5��.Q�������H^��슾�{sH��$�Yv��,r�t��x�D5��қ\0�Nn~�܅�A�����@��پ���_��m�5�����P%�7\r\0&\\m�5�9vn�Q�٧��O�o��yڪ��3?QZR���䃫,\\]SA�ƻ��O�m��>N������q%ʡ��`o\Z\0L>�5�k4k��VN�o��q9Um�U�|\\�b�v�ț\0�O\'�K�	[91�+9����>Ɖ\"�;Єv�����!o��<6qb~W�#���1�D!4����o\Z\0L�&N�و��\r�ƕ�	=�D����ob��[>�j��c\\[J.4�NJo\Z\0L�&6�>1�壶A׸>�0�KII�M����&�\'�|�7�\Z��h�ڗ^G~�\0`�7�	���\r+��y/���\\G~�\0`�7�	���\r+�jSO-�$_G~�\0`�7�	���\r�S��w���N��(�4\0��Ml�}b�^���Lꄶ��M����&�\'���.@����(�4\0��Ml�}b~WB�����o\Z\0L�&6�>1�	�pm�u�u�7\r\0&�`���\"���5ב�4\0��Ml�}���~�Z�\\G~�\0`�7�	�	\Z:y]s�M����&�o�(�T���o\Z\0L�&6�~а�S�k�#�i\00���{�(6�:պ�:�\0���MWZ֩�5ב��\0��M�-���N�������ob��@\'�u�u�u�65\0&�a�&��\'�u�t�u�65\0&۵�zӞ�ש�5ב��\0��MlG\0{+�O��T��(oj\0L�&�A�?I��ש�5�Q��\0��-��u��:պ�:ʛ\Z\0S��	�q��ļN������o��v��:պ�:ʛ\Z\0S�ś\Zl��:պ�:ʛ\Z\0S�Š�ɦyb^�Z�\\GyS`��x�@Ύtb^�Z�\\GyS`�A���o2\'�u�u�u�75\0��\0y�7�>1�S�k����0X���ļN������o�	��y�j]s�M\r�)��M�O��T�\Z�(oj\0L�Ml�}b�N������o�	��y�j]s�M\r�)�b��:U��:ʛ\Z\0S��&�\'�u�t�u�75\0�x�M�O��T�\Z�(oj\0L��`��ש�5�Q��\0��-2�:1�S�k����0ś��ļN������o�	։y�z]c�M\r�)��&X%�u�u�u�75\0�x�`��֩�5�Q��\0�x�`��ҩ�5�Q��\0��Ml�}bJ�Z�HG~S`�7�	V�y�j]c�M\r�)��&�\'�t�u�t�75\0�x�`��ש�5ґ��\0��Ml�}b^�Z�\\G~S`�7�	��y�j]#�M\r�)��&X%�u�u�u�75\0�x�`��ש�5ґ��\0��Ml�Ub^�Z�\\G~S`�7�	��y�j]s�M\r�)��&X%�u�u�t�75\0�x�`��ש�5ב��\0��Ml�}b^�Z�HG~S`�7�	��y�j]s�M\r�)��&�\'�u�u�t�75\0��&6�>1�S�k�#��0ś��ļN����Ǜ\Z\0Sk�`��ש�5J ;(oj\0L�&6�>1�S�k�\nh&�)��&�\'�u�u�70��\'%\0L�&6�>1�S�k�<�.]\r�)��&�\'�u�u�a�p�\0S��M�O��T���aW�ob��:�IE�p������)��&�\'�u�S�5;�)��&�\'�u�7h��h\0��Ml�}b^��h�2�\00E[l�}b^�z-i\0L��`����@c����b��4]\0S��&�\'�7�h,H\00���	���Mjs`\0L��`��W�\0S��&�\'�9h����o�	�	{4�B\00E[l���\Z�f�\00�[l����\Z�%4\0L��`OԸ,�\0��-6�ޅ;.˚\0��-6a\n�2\0�~����A�U��o1�8PX��o1ی��5\0�~����iM\Z\0S��u�q �e	\0S�Ez=68\0�~\'(�@b\n\0S��S�M\0�~o,9P����ob)а�\r�������=\0�z& �\r\n��W��K\0Sö-\0Lm\\2�Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\04(Р@�\0\rJ\0��e�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP�A	�%\0\Z�\0hP \0 \0 \0',1,6,NULL,0),(19,'LISC TTM SPECS.doc','24064','application/msword','��ࡱ\Z�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>\0\0��	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*\0\0\0\0\0\0\0\0\0\0,\0\0\0\0\0\0����\0\0\0\0)\0\0\0��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������\0�	\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0/\r\0\0\0bjbj$$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0.\0\0F|\0\0F|\0\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0\0\0�\0\0$\0\0\0\0\0\0$\0\0\0\0\0\0$\0\0\0\0\0\0$\0\0\0\0\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\08\0\0\0\0\0\08\0\0\0\0\0\08\0\0\0\0\0\08\0\0\0\0\0L\0\0\0\0\08\0\0\0\0\0\0�\0\00\0\0X\0\0\0\0\0n\0\0\0\0\0\0n\0\0\0\0\0\0n\0\0\0\0\0\0n\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0s\0\0\0\0\0u\0\0\0\0\0\0u\0\0\0\0\0\0u\0\0\0\0\0\0u\0\0\0\0\0\0u\0\0\0\0\0\0u\0\0$\0\0\0$\0\0�\0\0�\Z\0\0j\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0$\0\0\0\0\0\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0n\0\0�\0\0\0�\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0I\0\0\0\0$\0\0\0\0\0\0n\0\0\0\0\0\0$\0\0\0\0\0\0n\0\0\0\0\0\0s\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0s\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0n\0\0\0\0\0\0����\0\0\0\0��o��Y�\0\0\0\0\0\0\0\0����\0\0\0\0[\0\0R\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0_\0\0\0\0\0�\0\00\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0@\0\0\0\0\0\0�\0\0R\0\0\0@\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0\0\0\0L\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0�\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0�\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0����\0\0\0\0@\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0I\0\0\0\0\0\0�\0\0 \0\0�\0\0:\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0LISC TTM SPECS\rWebserver Specs:\rURL:  HYPERLINK \"https://liscttm.chapinhall.org\" https://liscttm.chapinhall.org  (uses SSL [128-Bit Encryption - TLS 1.0])Operating System:  SUSE Linux Enterprise Server 11 (x86_64) PATCHLEVEL 2Hosting Service: Apache/2.4.2 (Unix) PHP/5.4.5 OpenSSL/0.9.8j-fipsConfigure Command:\'./configure\' \'--with-apxs2=/usr/local/apache2/bin/apxs\' \'--disable-debug\' \'--enable-ftp\' \'--enable-inline-optimization\' \'--enable-magic-quotes\' \'--enable-mbstring\' \'--enable-wddx=shared\' \'--enable-xml\' \'--with-gettext\' \'--with-regex=system\' \'--with-zlib\' \'--with-libdir=lib64\' \'--with-mysqli\' \'--with-mysql\' \'--with-gd\' \'--with-ldap\' \'--with-jpeg-dir=/usr/local\' \'--with-curl\' \'--enable-calendar\' \'--with-freetype-dir=lib64\' \'--with-ttf=lib64\' \'--enable-gd-native-ttf\'\rLanguages Used: PHP, HTML, Javascript, MySQL (DB)\rDatabase Server Specs:\rOperating System:  SUSE Linux Enterprise Server 11 (x86_64) PATCHLEVEL 2MySQL Version: 5.5.25a MySQL Community Server (GPL)\rCurrent Site Stats:\rMain Back-End:Total Files (all sites) Size: ~97MBCurrent DB Size: ~200KB\rBickerdike:Files Size: ~5.8MBCurrent DB Size: ~400KB\rEnlace:Files Size: ~70MBCurrent DB Size: ~500KB\rLSNA:Files Size: ~2.3MBCurrent DB Size: ~500KB\rSWOP:Files Size: ~3.3MBCurrent DB Size: ~1MB\rTRP:Files Size: ~1MBCurrent DB Size: ~300KB\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0$\0\0%\0\0&\0\0R\0\0S\0\0q\0\0r\0\0�\0\0�\0\0�\0\0�\0\0�\0\0)	\0\0*	\0\0=	\0\0\0\0\0\0#\0\0D\0\0E\0\0[\0\0\\\0\0m\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0��������������������������󒦊���~�~w��o��\0\0\0\0\0\0\0\0h�\n�\0h�\n�\06�h#a\0h�\0\0h�\0h�\0\0	h�\06�h�\0h�\06�h�&<\0h�\06�h#a\0h#a\05�h�\n�\0\0h�\0\0h#a\0h#a\06�h�(\0\0h�\"i\0h�\"i\0\0h�\"i\0\0h�\"i\0h�\"i\06�h�X?\0h�&<\00J\0\0j\0\0\0\0h�&<\0Uh�&<\0\0h�&<\0h�&<\06�	h�\n�\05�h�\n�\0h�\n�\05�	h#a\05�h��\0\0h�+\0*\0\0\0\0\0 \0\0\0\0E\0\0\\\0\0�\0\0�\0\08\0\0o\0\0�\0\0�\0\0\r\0\0/\r\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0gd�\0\r\0\0$d\0N�\0\0\0�\0gd�\0\0\0\0gd�&<\0\0\0\0\r\0\0&d\0P�\0\0\0�\0gd�\n�\0\0\r\0\0\0\0\0\0 \0\07\0\08\0\0C\0\0D\0\0W\0\0_\0\0f\0\0g\0\0o\0\0u\0\0v\0\0w\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\r\0\0\r\0\0\r\0\0\r\0\0\r\0\0)\r\0\0,\r\0\0.\r\0\0/\r\0\0�����������������������������������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h79�\0\0	h79�\06�h�+\0\0h�\n�\0h�\n�\06�h�(\0h�\n�\06�h�\n�\0\0h�(\0\0h��\0\0h��\0),\01�h��/ ��=!��\"��#��$��%�\0\0������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\0�\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\0v\0\06\0\06\0\06\0\06\0\06\0\06\0\0>\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0�\0\0\06\0\06\0\0\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0�\0\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0h\0\0H\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\06\0\0�\0\06\0\02\0\0\0\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\02\0\0(\0\0�\0\0�\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0 \0\00\0\0@\0\0P\0\0`\0\0p\0\0�\0\0�\0\08\0\0X\0\0�\0\0\0\0\0\0V\0\0~\0\0 \0\0\0OJ\0PJ\0QJ\0_HmH	nH	sH	tH	\0\0\0\0J\0\0`��\0J\0\0\0\0\0\0\0\0\0\0N\0o\0r\0m\0a\0l\0\0\0\0\0\0d\0��\0\0CJ\0_HaJ\0mH	sH	tH	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0A`���\0D\0\r\0\0\0\0\0\0\0\0D\0e\0f\0a\0u\0l\0t\0 \0P\0a\0r\0a\0g\0r\0a\0p\0h\0 \0F\0o\0n\0t\0\0\0\0\0R\0i\0���\0R\0\r\0\0\0\0\0\00\0T\0a\0b\0l\0e\0 \0N\0o\0r\0m\0a\0l\0\0\0\0�\0\04�\0\nl\04�\0\0\0a�\0\0\0\0\0\0(\0k ���\0(\0\0\r\0\0\0\0\0\00\0N\0o\0 \0L\0i\0s\0t\0\0\0\0\0\0\0\0\06\0U@���\06\0\0\0�(\00	\0H\0y\0p\0e\0r\0l\0i\0n\0k\0\0\0\0>*B*\0ph\0\0�\0PK\0\0\0\0\0!\0����\0\0\0\0\0\0\0\0[Content_Types].xml���N�0E�H���-J��@%�ǎǢ|�ș$�ز�U��L�TB� l,�3��;�r��Ø��J��B+$�G]��7O٭V��\Z<a������(7��I��R�{�pgL�=��r����8�5v&����uQ�뉑8��C����X=����$␴�?6N�JC�������F�B.ʹ\'�.�+���Y�T���^e5�5�� ��ð�_�g -�;�����Yl�ݎ��|6^�N��`�?���[\0\0��\0PK\0\0\0\0\0!\0�֧��\0\0\06\0\0\0\0\0_rels/.rels���j�0���}Q��%v/��C/�}\0�(h\"���O�\n������=������ ����C?�h�v=��Ʌ��%[xp��{۵_�Pѣ<�1�H�0���O�R�Bd���JE�4b$��q_����6L��R�7`�������0̞O��,�En7�Li�b��/�S���e��е����\0\0��\0PK\0\0\0\0\0!\0ky��\0\0\0�\0\0\0\0\0\0theme/theme/themeManager.xml�M\n� @�}�w��7c�(Eb�ˮ��\0C�\ZAǠҟ����7��՛K\rY,�\r�e�.���|,���H�,l����xɴ��I�sQ}#Ր���� ֵ+�!�,�^�$j=�GW���)�E�+&\n8�\0\0��\0PK\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0theme/theme/theme1.xml�YOo�6��w toc\'v\Zu�ر�-M�n�i���P�@�I}��úa��m�a[�إ�4�:lЯ�GR��X^�6؊�>$���������!)O�^�r�C$�y@�����/�yH*��񄴽)�޵��߻��UDb�`}\"�qۋ�Jח���X^�)I`n�E���p)���li�V[]�1M<����\Z��O�P��6r�=���z�gb�Ig��u��S�eb���O������R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j�����zA�\0�V�2�F���i�@�q�v�֬5\\|��ʜ̭N��le�X�ds���jcs����7����f����\r��W���+�Ն�7����`���g�Ș��J�\Z��j|��h(�K��D-����\0\rdX��iJ�؇(��x$(��:��;�˹!�I_�T��S1�������?E��?������?ZBΪm���U/������?�~����xY����\'���y5�g&΋/����ɋ�>���G�M�Ge���D�����3Vq%\'#q�����$�8��K�����)f�w9:ĵ��\nx}r�x����w���r�:\\TZaG�*�y8I�j�bR��c|XŻ�ǿ�I\nu3KG�nD1�NIB�s���\n��R��u���K>V�.EL+M2�#\'�f��i~�V��vl�{u8��z��H�\n�*���:�(W�☕\r~��J��T�e\\O*�tHG��HY��\0}KN��P�*ݾ˦���TѼ�9/#��A7�qZ��$*c?���qU��n��w�N��%��O��i�4=3��N���)cbJ\ru�V�4����(Tn���\n7��_?���m-ٛ�{U����B�w�<w���_���$�#��[Ի���8{���(�/�$Ϫ0h݋�F۴��®{L�)#7�i�%�=A�:s�$�),��Qg20pp��f\r\\}DU4�p\nM{��DB��%J��â������+{�l�C���]��=��5\n2F��hsF+��Y��\\Ɉ�n�ì��:3���E�[��6�9����`��&45Z!��*��5k8�`Fmw��-��\"�d>�z���n���ʜ\"Z��x��J�Z��p;����\Z���{/�<�P;��,)\'\'K�Q�k5���q���pN��8�K�Gb�e���\r�S��d�̛�\\17	�p�a�>��SR!���\r\r3��\0K4\'+�r�zQ\nTT��I����Ivt]K�c⫲�K#�v�5+�|��D�\Z�����~��O@%\\w���_�nN[�L��9K����q��g�V�h��n\nR!�y+��U�n�;�*&�/H�r��T��	�>��>\\\r�t��=.Tġ\n���\ZS; Z�~�!������P��9gi���C�ڧ!�#	B��,��;�X=ۻ,I�2UW�V�9$l�k���=A��j���;�{�A�P79�|s*Y�����;�̠�[�MC�ۿ�hf��]o��{oY=1k�\ZyV\0��V����5E8�Vk+֜���\\8���0X4D)�!!��?*|f�v�\ru����\"�x��A�@T_������q��6�4)kڬu�V�7��t�\'��%;���i�9s�9�x���,��ڎ-45x�d���8?�ǘ�d�/Y|t��&LIL�J`�& �-G�t�/\0\0\0��\0PK\0\0\0\0\0!\0\rѐ��\0\0\0\0\0\'\0\0\0theme/theme/_rels/themeManager.xml.rels��M\n�0���wooӺ�&݈Э���5\r6?$Q��\r�,.�a��i����c2�1h�\Z:�q��m��@RN��;d�`��o7�g�K(M&$R(.1�r\'J��ЊT���8��V�\"��AȻ�H�u}��|�$�b{�\0�P����8\Z�g/]�QAsم(����#��L�[����\0\0\0��\0PK-\0\0\0\0\0\0!\0����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�֧��\0\0\06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00\0\0_rels/.relsPK-\0\0\0\0\0\0!\0ky��\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0theme/theme/themeManager.xmlPK-\0\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0theme/theme/theme1.xmlPK-\0\0\0\0\0\0!\0\rѐ��\0\0\0\0\0\'\0\0\0\0\0\0\0\0\0\0\0\0\0�	\0\0theme/theme/_rels/themeManager.xml.relsPK\0\0\0\0\0\0]\0\0�\n\0\0\0\0<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<a:clrMap xmlns:a=\"http://schemas.openxmlformats.org/drawingml/2006/main\" bg1=\"lt1\" tx1=\"dk1\" bg2=\"lt2\" tx2=\"dk2\" accent1=\"accent1\" accent2=\"accent2\" accent3=\"accent3\" accent4=\"accent4\" accent5=\"accent5\" accent6=\"accent6\" hlink=\"hlink\" folHlink=\"folHlink\"/>\0\0\0\0/\0\0\0\0\0\0\0����\0\0\0\0\0/\r\0\0\0\0\0	\0\0\0\0\0\0/\r\0\0\0\0\0%\0\0\0R\0\0\0q\0\0\0/\0\0X��\0\0�8\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0�\0\0\0��\0\0\0\0�\0���\0�\0\0\0\0�\0\0\0\0�\0\0\0\0\0\0\0\0\0�0\0\0\0\0�(\0\0\0\0	�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n�\0\0\0\0\0\0\0\0\0\0�B\0\0\0\0\n�\0\0\0\0\0\0\0\0S\0�\0\0\0�\0\0\0�\0\0\0\0�\0\0\0	\0\0\0?\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0Z\0\0]\0\0p\0\0t\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\07\0\0;\0\0E\0\0K\0\0[\0\0a\0\0k\0\0p\0\0z\0\0|\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\0\0\0\0\0.\0\08\0\0\0\0\0\08\0\0B\0\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0�\0\0B\0\0C\0\0u\0\0v\0\0�\0\0�\0\0�\0\0�\0\0\0\0\0\01\0\0\03\0\03\0\03\0\03\0\03\0\03\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0�\0\0\0�\0\0\0\0\0\0\0�\0\0\0\0\0\0.\0\0.\0\01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�>\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0�(\0#a\0�+\0�\0�&<\0�\"i\0!2|\079�\0J�\0Rs�\0��\0��\0�\n�\0\0\0\0\0/\0\01\0\0\0\0\0\0\0\0\0�@�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0/\0\0�\0\0\0@\0\0��\0\0\0\0U\0n\0k\0n\0o\0w\0n\0��\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0��\0\0\0��\0\0\0\0��\0\0\0��\0\0\0\0\0\0\0G�\0\0�*\0�Ax\0�	\0\0\0\0\0\0\0�\0\0\0\0\0\0T\0i\0m\0e\0s\0 \0N\0e\0w\0 \0R\0o\0m\0a\0n\0\0\05�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0S\0y\0m\0b\0o\0l\0\0\03.�\0\0�*\0�Cx\0�	\0\0\0\0\0\0\0�\0\0\0\0\0\0A\0r\0i\0a\0l\0\0\07.�\0\0�\0���\0@\0\0\0\0\0\0\0�\0\0\0\0\0\0C\0a\0l\0i\0b\0r\0i\0\0\0A�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0C\0a\0m\0b\0r\0i\0a\0 \0M\0a\0t\0h\0\0\0\"\0\0q�\0��\0\0h\0\0\0\0N�$g��$g\0\0\0\0	\04\0\0\0�\0\0\0i\0\0\0\0\0\0\0�	\0\0\0�\0\0\0i\0\0\0\0\0\0	\0\0\0\0\0\0\0!\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\0�\0��20\0\0\0\0\0\0\0\0\0\0\0\0\0\0-\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0K�\0�\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HP\0\0\0\0	��\0	$P\0\0�\0\0����������������������+\0\0\0\02\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0x\0\0\0x\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P\0a\0t\0r\0i\0c\0i\0o\0 \0A\0g\0u\0i\0l\0a\0r\0\0P\0a\0t\0r\0i\0c\0i\0o\0 \0A\0g\0u\0i\0l\0a\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�����Oh��\0+\'��0\0\0\04\0\0\r\0\0\0\0\0\0p\0\0\0\0\0\0x\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0	\0\0\0�\0\0\0\0\0\0�\0\0\0\n\0\0\0�\0\0\0\0\0\0�\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0\0\0,\0\0\0\0\0�\0\0\0\0\0\0\0\0Patricio Aguilar\0\0\0\0\0\0\0\0\0\0Normal.dotm\0\0\0\0\0\0\0Patricio Aguilar\0\0\0\0\0\0\0\0\0\09\0\0\0\0\0\0\0\0\0Microsoft Office Word\0\0\0@\0\0\0\08�C\0\0\0@\0\0\0\0�ϣ�Y�@\0\0\0\0�y�Y�\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0i\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��՜.��\0+,��D\0\0\0��՜.��\0+,��4\0\0�\0\0\0\0\0\0\0\0\0h\0\0\0\0\0\0p\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\r\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\0\0\0\0\0\0\0\0Chapin Hall\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Title\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\08\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0_PID_HLINKS\0\0\0\0�\0\0A\0\0\0x\0\0\0\0\0\0\0\0\0u\02\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0h\0t\0t\0p\0s\0:\0/\0/\0l\0i\0s\0c\0t\0t\0m\0.\0c\0h\0a\0p\0i\0n\0h\0a\0l\0l\0.\0o\0r\0g\0/\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0����\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0����\"\0\0\0#\0\0\0$\0\0\0%\0\0\0&\0\0\0\'\0\0\0(\0\0\0��������+\0\0\0����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������R\0o\0o\0t\0 \0E\0n\0t\0r\0y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��������\0\0\0	\0\0\0\0\0�\0\0\0\0\0\0F\0\0\0\0\0\0\0\0\0\0\0\0`�{��Y�-\0\0\0�\0\0\0\0\0\0\01\0T\0a\0b\0l\0e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����\0\0\0����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0W\0o\0r\0d\0D\0o\0c\0u\0m\0e\0n\0t\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0��������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(\0\0\0\0\0\0\0����\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0D\0o\0c\0u\0m\0e\0n\0t\0S\0u\0m\0m\0a\0r\0y\0I\0n\0f\0o\0r\0m\0a\0t\0i\0o\0n\0\0\0\0\0\0\0\0\0\0\08\0������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0\0\0\0\0\0C\0o\0m\0p\0O\0b\0j\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0������������\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������\0��\n\0\0����	\0\0\0\0\0�\0\0\0\0\0\0F \0\0\0Microsoft Word 97-2003 Document\0\n\0\0\0MSWordDoc\0\0\0\0Word.Document.8\0�9�q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',1,6,NULL,0);
/*!40000 ALTER TABLE `Programs_Uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schools`
--

DROP TABLE IF EXISTS `Schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schools` (
  `School_ID` int(11) NOT NULL AUTO_INCREMENT,
  `School_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`School_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schools`
--

LOCK TABLES `Schools` WRITE;
/*!40000 ALTER TABLE `Schools` DISABLE KEYS */;
INSERT INTO `Schools` VALUES (1,'Pilsen Elementary Community Academy'),(2,'Cristo Rey Jesuit High School'),(3,'Cooper Branch School'),(4,'Benito Juarez Community Academy'),(5,'Orozco Academy'),(6,'No School Selected');
/*!40000 ALTER TABLE `Schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher_Exchange_Rooms`
--

DROP TABLE IF EXISTS `Teacher_Exchange_Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teacher_Exchange_Rooms` (
  `Teacher_Exchange_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Classroom` varchar(5) DEFAULT NULL,
  `Home_Teacher` varchar(45) DEFAULT NULL,
  `Exchange_Teacher` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Teacher_Exchange_ID`),
  UNIQUE KEY `Participant_ID_UNIQUE` (`Participant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher_Exchange_Rooms`
--

LOCK TABLES `Teacher_Exchange_Rooms` WRITE;
/*!40000 ALTER TABLE `Teacher_Exchange_Rooms` DISABLE KEYS */;
INSERT INTO `Teacher_Exchange_Rooms` VALUES (2,6,'RG270','LD','MD'),(5,10,'test','','');
/*!40000 ALTER TABLE `Teacher_Exchange_Rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teachers` (
  `Teacher_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_First_Name` varchar(50) DEFAULT NULL,
  `Teacher_Last_Name` varchar(50) DEFAULT NULL,
  `Date_Created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ttm-core`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ttm-core` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ttm-core`;

--
-- Table structure for table `Log`
--

DROP TABLE IF EXISTS `Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Log` (
  `Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Event` varchar(50) DEFAULT NULL,
  `Log_Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Log_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1603 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log`
--

LOCK TABLES `Log` WRITE;
/*!40000 ALTER TABLE `Log` DISABLE KEYS */;
INSERT INTO `Log` VALUES (1,'cdonnelly - Invalid Login','2013-01-10 17:19:58'),(2,'cdonnelly@chapinhall.org - Logged In','2013-01-10 17:20:29'),(3,'HumboldtParkUser - Logged In','2013-01-10 17:21:23'),(4,'HumboldtParkUser - Logged In','2013-01-10 17:22:08'),(5,'HumboldtParkUser - Logged In','2013-01-10 18:00:21'),(6,'cdonnelly@chapinhall.org - Logged In','2013-01-10 18:31:28'),(7,'HumboldtParkUser - Logged In','2013-01-10 18:31:47'),(8,'HumboltParkUser - Invalid Login','2013-01-10 20:07:58'),(9,'HumboltParkUser - Invalid Login','2013-01-10 20:08:03'),(10,'HumboldtParkUser - Logged In','2013-01-10 20:08:14'),(11,'LoganSquareUser - Logged In','2013-01-10 21:39:56'),(12,'mwilson@chapinhall.org - Logged In','2013-01-10 22:19:47'),(13,'HumboldtParkUser - Logged In','2013-01-11 14:49:44'),(14,'HumboldtParkUser - Logged In','2013-01-11 15:15:59'),(15,'HumboldtParkUser - Logged In','2013-01-11 16:06:17'),(16,'HumboldtParkUser - Logged In','2013-01-14 14:57:14'),(17,'cdonnelly@chapinhall.org - Invalid Login','2013-01-14 15:09:46'),(18,'cdonnelly@chapinhall.org - Logged In','2013-01-14 15:09:51'),(19,'jgawel - Invalid Login','2013-01-15 13:41:46'),(20,'jgawel - Invalid Login','2013-01-15 13:41:48'),(21,'HumboldtParkUser - Logged In','2013-01-15 15:07:32'),(22,'cdonnelly@chapinhall.org - Logged In','2013-01-15 15:12:28'),(23,'cdonnelly@chapinhall.org - Logged In','2013-01-15 18:51:47'),(24,'HumboldtParkUser - Logged In','2013-01-15 21:04:35'),(25,'HumboldtParkUser - Logged In','2013-01-16 20:43:10'),(26,'HumboldtParkUser - Logged In','2013-01-17 15:07:06'),(27,'HumboldtParkUser - Logged In','2013-01-17 16:30:49'),(28,'HumboldtParkUser - Invalid Login','2013-01-17 21:23:39'),(29,'HumboldtParkUser - Logged In','2013-01-17 21:23:42'),(30,'cdonnelly@chapinhall.org - Logged In','2013-01-17 22:10:25'),(31,'HumboldtParkUser - Logged In','2013-01-18 14:55:21'),(32,'HumboldtParkUser - Logged In','2013-01-18 16:06:55'),(33,'HumboldtParkUser - Logged In','2013-01-18 17:21:23'),(34,'HumboldtParkUser - Logged In','2013-01-18 17:40:04'),(35,'HumboldtParkUser - Logged In','2013-01-18 17:44:59'),(36,'HumboldtParkUser - Logged In','2013-01-18 17:55:28'),(37,'HumboldtParkUser - Logged In','2013-01-18 18:52:35'),(38,'maggie wilson - Invalid Login','2013-01-18 20:47:45'),(39,'mwilson@chapinhall.org - Logged In','2013-01-18 20:47:55'),(40,'HumboldtParkUser - Logged In','2013-01-22 14:18:09'),(41,'HumboldtParkUser - Logged In','2013-01-22 15:13:20'),(42,'cdonnelly@chapinhall.org - Logged In','2013-01-22 15:32:16'),(43,'HumboldtParkUser - Logged In','2013-01-22 16:13:34'),(44,'HumboldtParkUser - Logged In','2013-01-22 19:29:15'),(45,'HumboldtParkUser - Logged In','2013-01-22 20:08:10'),(46,'cdonnelly@chapinhall.org - Logged In','2013-01-22 20:09:32'),(47,'mwilson@chapinhall.org - Logged In','2013-01-22 21:05:25'),(48,'cdonnelly@chapinhall.org - Logged In','2013-01-23 15:14:18'),(49,'HumboldtParkUser - Logged In','2013-01-23 15:15:14'),(50,'HumboldtParkUser - Logged In','2013-01-24 14:51:50'),(51,'HumboldtParkUser - Logged In','2013-01-24 15:53:10'),(52,'HumboldtParkUser - Logged In','2013-01-24 16:33:09'),(53,'HumboldtParkUser - Logged In','2013-01-24 21:36:39'),(54,'mwilson@chapinhall.org - Logged In','2013-01-25 14:44:23'),(55,'cdonnelly@chapinhall.org - Logged In','2013-01-25 15:08:36'),(56,'HumboldtParkUser - Logged In','2013-01-25 17:43:21'),(57,'HumboldtParkUser - Logged In','2013-01-25 20:02:04'),(58,'cdonnelly@chapinhall.org - Logged In','2013-01-28 15:07:13'),(59,'HumboldtParkUser - Logged In','2013-01-28 16:43:30'),(60,'HumboldtParkUser - Invalid Login','2013-01-29 14:47:22'),(61,'HumboldtParkUser - Logged In','2013-01-29 14:52:34'),(62,'HumboldtParkUser - Logged In','2013-01-29 14:53:48'),(63,'HumboldtParkUser - Logged In','2013-01-29 17:32:56'),(64,'HumboldtParkUser - Logged In','2013-01-29 19:12:27'),(65,'HumboldtParkUser - Logged In','2013-01-29 19:26:16'),(66,'cdonnelly@chapinhall.org - Logged In','2013-01-29 20:23:59'),(67,'HumboldtParkUser - Logged In','2013-01-30 15:08:08'),(68,'HumboldtParkUser - Logged In','2013-01-30 15:34:09'),(69,'HumboldtParkUser - Logged In','2013-01-30 16:32:25'),(70,'HumboldtParkUser - Logged In','2013-01-30 21:22:32'),(71,'HumboldtParkUser - Logged In','2013-01-30 23:27:20'),(72,'cdonnelly@chapinhall.org - Logged In','2013-01-31 15:41:38'),(73,'HumboldtParkUser - Logged In','2013-01-31 15:55:08'),(74,'HumboldtParkUser - Logged In','2013-02-01 15:55:28'),(75,'HumboldtParkUser - Logged In','2013-02-01 16:11:17'),(76,'HumboldtParkUser - Logged In','2013-02-01 19:22:59'),(77,'HumboldtParkUser - Logged In','2013-02-01 19:26:16'),(78,'HumboldtParkUser - Logged In','2013-02-01 19:38:46'),(79,'HumboldtParkUser - Logged In','2013-02-01 20:16:10'),(80,'HumboldtParkUser - Logged In','2013-02-04 14:51:00'),(81,'HumboldtParkUser - Logged In','2013-02-04 14:59:51'),(82,'LoganSquareUser - Logged In','2013-02-04 15:52:35'),(83,'HumboldtParkUser - Logged In','2013-02-04 15:52:36'),(84,'HumboldtParkUser - Logged In','2013-02-04 16:09:11'),(85,'HumboldtParkUser - Logged In','2013-02-04 18:14:00'),(86,'HumboldtParkUser - Logged In','2013-02-05 14:51:02'),(87,'cdonnelly@chapinhall.org - Logged In','2013-02-05 15:43:00'),(88,'cdonnelly@chapinhall.org - Logged In','2013-02-05 16:15:16'),(89,'LoganSquareUser - Logged In','2013-02-05 21:24:11'),(90,'HumboldtParkUser - Logged In','2013-02-05 21:30:37'),(91,'mwilson@chapinhall.org - Logged In','2013-02-05 21:45:14'),(92,'HumboldtParkUser - Logged In','2013-02-05 21:46:07'),(93,'HumboldtParkUser - Logged In','2013-02-06 15:06:10'),(94,'HumboldtParkUser - Logged In','2013-02-06 15:15:17'),(95,'HumboldtParkUser - Logged In','2013-02-06 16:24:53'),(96,'HumboldtParkUser - Logged In','2013-02-06 17:51:15'),(97,'HumboldtParkUser - Logged In','2013-02-06 18:04:18'),(98,'cdonnelly@chapinhall.org - Logged In','2013-02-06 18:37:24'),(99,'HumboldtParkUser - Logged In','2013-02-06 19:26:47'),(100,'HumboldtParkUser - Logged In','2013-02-06 20:05:13'),(101,'HumboldtParkUser - Logged In','2013-02-06 20:21:03'),(102,'cdonnelly - Invalid Login','2013-02-06 20:21:14'),(103,'cdonnelly@chapinhall.org - Logged In','2013-02-06 20:21:24'),(104,'HumboldtParkUser - Logged In','2013-02-06 22:26:07'),(105,'HumboldtParkUser - Logged In','2013-02-07 14:41:34'),(106,'HumboldtParkUser - Logged In','2013-02-07 21:14:29'),(107,'LoganSquareUser - Logged In','2013-02-07 21:40:50'),(108,'HumboldtParkUser - Logged In','2013-02-08 15:47:24'),(109,'HumboldtParkUser - Logged In','2013-02-08 17:18:58'),(110,'HumboldtParkUser - Logged In','2013-02-08 17:44:32'),(111,'HumboldtParkUser - Logged In','2013-02-08 17:53:31'),(112,'cdonnelly@chapinhall.org - Logged In','2013-02-08 18:08:06'),(113,'cdonnelly@chapinhall.org - Logged In','2013-02-08 18:10:04'),(114,'cdonnelly@chapinhall.org - Logged In','2013-02-08 18:12:34'),(115,'LoganSquareUser - Logged In','2013-02-08 18:21:15'),(116,'cdonnelly@chapinhall.org - Logged In','2013-02-08 18:27:54'),(117,'HumboldtParkUser - Logged In','2013-02-08 22:15:58'),(118,'HumboldtParkUser - Logged In','2013-02-11 14:54:17'),(119,'cdonnelly@chapinhall.org - Logged In','2013-02-11 14:59:11'),(120,'LoganSquareUser - Logged In','2013-02-11 14:59:25'),(121,'LoganSquareUser - Logged In','2013-02-11 15:02:01'),(122,'cdonnelly@chapinhall.org - Logged In','2013-02-11 15:24:07'),(123,'LoganSquareUser - Logged In','2013-02-11 15:25:40'),(124,'HumboldtParkUser - Logged In','2013-02-11 15:50:08'),(125,'LoganSquareUser - Logged In','2013-02-11 15:52:23'),(126,'cdonnelly@chapinhall.org - Logged In','2013-02-11 16:13:06'),(127,'HumboldtParkUser - Logged In','2013-02-11 17:19:01'),(128,'HumboldtParkUser - Logged In','2013-02-11 17:49:24'),(129,'cdonnelly@chapinhall.org - Logged In','2013-02-11 18:56:09'),(130,'HumboldtParkUser - Logged In','2013-02-11 19:49:27'),(131,'cdonnelly@chapinhall.org - Logged In','2013-02-11 19:51:45'),(132,'LoganSquareUser - Logged In','2013-02-11 20:06:34'),(133,'LoganSquareUser - Logged In','2013-02-11 20:26:03'),(134,'HumboldtParkUser - Logged In','2013-02-11 20:46:29'),(135,'HumboldtParkUser - Logged In','2013-02-11 20:58:52'),(136,'LoganSquareUser - Logged In','2013-02-11 21:13:46'),(137,'HumboldtParkUser - Logged In','2013-02-11 21:38:37'),(138,'HumboldtParkUser - Logged In','2013-02-11 21:43:40'),(139,'HumboldtParkUser - Logged In','2013-02-11 22:23:59'),(140,'HumboldtParkUser - Logged In','2013-02-12 15:05:38'),(141,'HumboldtParkUser - Logged In','2013-02-12 17:57:00'),(142,'cdonnelly@chapinhall.org - Logged In','2013-02-12 18:24:03'),(143,'HumboldtParkUser - Logged In','2013-02-12 18:58:25'),(144,'HumboldtParkUser - Logged In','2013-02-12 20:12:01'),(145,'LoganSquareUser - Logged In','2013-02-12 20:13:59'),(146,'HumboldtParkUser - Logged In','2013-02-12 20:33:41'),(147,'HumboldtParkUser - Logged In','2013-02-12 20:40:47'),(148,'LoganSquareUser - Logged In','2013-02-12 21:11:25'),(149,'HumboldtParkUser - Logged In','2013-02-12 21:41:35'),(150,'LoganSquareUser - Logged In','2013-02-12 21:42:56'),(151,'cdonnelly@chapinhall.org - Logged In','2013-02-12 22:13:20'),(152,'HumboldtParkUser - Logged In','2013-02-13 15:15:09'),(153,'cdonnelly@chapinhall.org - Logged In','2013-02-13 15:23:32'),(154,'HumboldtParkUser - Logged In','2013-02-13 15:46:00'),(155,'LoganSquareUser - Logged In','2013-02-13 15:46:20'),(156,'HumboldtParkUser - Logged In','2013-02-13 15:50:53'),(157,'HumboldtParkUser - Logged In','2013-02-13 15:51:42'),(158,'Humboldtparkuser - Logged In','2013-02-13 15:57:12'),(159,'cdonnelly@chapinhall.org - Logged In','2013-02-13 16:35:34'),(160,'cdonnelly@chapinhall.org - Logged In','2013-02-13 17:31:27'),(161,'cdonnelly@chapinhall.org - Logged In','2013-02-13 18:15:59'),(162,'HumboldtParkUser - Logged In','2013-02-13 19:32:25'),(163,'HumboldtParkUser - Logged In','2013-02-13 19:35:58'),(164,'cdonnelly@chapinhall.org - Logged In','2013-02-13 21:13:19'),(165,'cdonnelly@chapinhall.org - Logged In','2013-02-14 15:35:50'),(166,'HumboldtParkUser - Logged In','2013-02-14 15:59:50'),(167,'HumboldtParkUser - Logged In','2013-02-14 16:42:11'),(168,'LoganSquareUser - Logged In','2013-02-14 17:36:49'),(169,'cdonnelly@chapinhall.org - Logged In','2013-02-14 18:47:00'),(170,'cdonnelly@chapinhall.org - Logged In','2013-02-14 19:38:39'),(171,'cdonnelly@chapinhall.org - Logged In','2013-02-14 22:34:12'),(172,'LoganSquareUser - Logged In','2013-02-14 22:40:34'),(173,'HumboldtParkUser - Logged In','2013-02-14 22:42:21'),(174,'HumboldtParkUser - Logged In','2013-02-14 22:59:42'),(175,'HumboldtParkUser - Logged In','2013-02-15 14:39:42'),(176,'HumboldtParkUser - Logged In','2013-02-15 14:43:31'),(177,'cdonnelly@chapinhall.org - Logged In','2013-02-15 15:03:13'),(178,'cdonnelly@chapinhall.org - Logged In','2013-02-15 18:12:11'),(179,'HumboldtParkUser - Logged In','2013-02-15 18:43:12'),(180,'HumboldtParkUser - Logged In','2013-02-15 19:08:57'),(181,'LoganSquareUser - Logged In','2013-02-15 20:59:47'),(182,'cdonnelly@chapinhall.org - Logged In','2013-02-15 21:13:57'),(183,'cdonnelly@chapinhall.org - Logged In','2013-02-18 15:00:18'),(184,'LoganSquareUser - Logged In','2013-02-18 15:10:19'),(185,'cdonnelly@chapinhall.org - Logged In','2013-02-18 18:37:02'),(186,'LoganSquareUser - Logged In','2013-02-18 19:29:03'),(187,'cdonnelly@chapinhall.org - Logged In','2013-02-18 21:41:21'),(188,'LoganSquareUser - Logged In','2013-02-18 21:46:51'),(189,'LoganSquareUser - Logged In','2013-02-18 22:25:25'),(190,'LoganSquareUser - Logged In','2013-02-18 22:38:48'),(191,'LoganSquareUser - Logged In','2013-02-18 22:39:10'),(192,'cdonnelly@chapinhall.org - Logged In','2013-02-19 15:16:15'),(193,'HumboldtParkUser - Logged In','2013-02-19 16:10:29'),(194,'cdonnelly@chapinhall.org - Logged In','2013-02-19 17:31:28'),(195,'cdonnelly@chapinhall.org - Logged In','2013-02-19 17:32:57'),(196,'cdonnelly@chapinhall.org - Logged In','2013-02-19 17:33:52'),(197,'huboldtparkuser - Invalid Login','2013-02-19 19:05:30'),(198,'HumboldtParkUser - Logged In','2013-02-19 19:05:49'),(199,'HumboldtParkUser - Logged In','2013-02-19 19:58:19'),(200,'HumboldtParkUser - Logged In','2013-02-19 20:18:24'),(201,'cdonnelly@chapinhall.org - Logged In','2013-02-19 20:29:34'),(202,'cdonnelly@chapinhall.org - Logged In','2013-02-19 20:56:10'),(203,'LoganSquareUser - Logged In','2013-02-19 21:32:41'),(204,'humboldtparkuser - Logged In','2013-02-19 22:54:35'),(205,'cdonnelly@chapinhall.org - Logged In','2013-02-20 15:44:16'),(206,'cdonnelly@chapinhall.org - Logged In','2013-02-20 18:39:31'),(207,'HumboldtParkUser - Logged In','2013-02-20 19:17:01'),(208,'LoganSquareUser - Logged In','2013-02-20 20:42:52'),(209,'cdonnelly@chapinhall.org - Logged In','2013-02-20 22:05:27'),(210,'cdonnelly@chapinhall.org - Logged In','2013-02-21 14:52:53'),(211,'HumboldtParkUser - Logged In','2013-02-21 15:48:20'),(212,'humboldtparkuser - Logged In','2013-02-21 17:56:18'),(213,'humboldtparkuse - Invalid Login','2013-02-21 18:21:34'),(214,'humboldtparkuser - Logged In','2013-02-21 18:21:43'),(215,'LoganSquareUser - Logged In','2013-02-21 18:58:57'),(216,'mwilson@chapinhall.org - Logged In','2013-02-21 18:59:27'),(217,'HumboldtParkUser - Logged In','2013-02-21 21:48:43'),(218,'HumboldtParkUser - Logged In','2013-02-21 22:29:58'),(219,'cdonnelly@chapinhall.org - Logged In','2013-02-22 15:57:40'),(220,'cdonnelly@chapinhall.org - Logged In','2013-02-22 20:30:08'),(221,'HumboldtParkUser - Logged In','2013-02-23 23:01:50'),(222,'cdonnelly@chapinhall.org - Logged In','2013-02-25 15:07:48'),(223,'TESTviewONLY - Logged In','2013-02-25 16:47:34'),(224,'TESTviewONLY - Logged In','2013-02-25 16:49:17'),(225,'TESTviewONLY - Logged In','2013-02-25 16:50:24'),(226,'TESTviewONLY - Logged In','2013-02-25 16:51:33'),(227,'TESTviewONLY - Logged In','2013-02-25 16:53:34'),(228,'TESTviewONLY - Logged In','2013-02-25 16:53:59'),(229,'TESTviewONLY - Logged In','2013-02-25 16:55:22'),(230,'cdonnelly@chapinhall.org - Logged In','2013-02-25 17:05:14'),(231,'cdonnelly@chapinhall.org - Logged In','2013-02-25 17:05:23'),(232,'cdonnelly@chapinhall.org - Logged In','2013-02-25 17:05:50'),(233,'cdonnelly@chapinhall.org - Logged In','2013-02-25 17:06:38'),(234,'HumboldtParkUser - Logged In','2013-02-25 17:24:19'),(235,'LoganSquareUser - Logged In','2013-02-25 19:28:06'),(236,'HumboldtParkUser - Logged In','2013-02-25 19:29:36'),(237,'HumboldtParkUser - Logged In','2013-02-25 22:40:25'),(238,'HumboldtParkUser - Logged In','2013-02-26 14:50:18'),(239,'cdonnelly@chapinhall.org - Logged In','2013-02-26 16:11:01'),(240,'HumboldtParkUser - Logged In','2013-02-26 16:32:52'),(241,'humboldtparkuser - Logged In','2013-02-26 18:15:38'),(242,'humboldtparkuser - Logged In','2013-02-26 18:24:35'),(243,'cdonnelly@chapinhall.org - Logged In','2013-02-26 19:44:50'),(244,'HumboldtParkUser - Logged In','2013-02-26 19:45:56'),(245,'HumboldtParkUser - Logged In','2013-02-26 20:01:18'),(246,'HPDataEntry - Logged In','2013-02-26 20:32:16'),(247,'HPDataEntry - Logged In','2013-02-27 16:12:59'),(248,'HPDataEntry - Logged In','2013-02-27 16:13:20'),(249,'HPDataEntry - Invalid Login','2013-02-27 16:13:28'),(250,'HumboldtParkUser - Logged In','2013-02-27 16:15:56'),(251,'humboldtparkuser - Logged In','2013-02-27 17:57:26'),(252,'LoganSquareUser - Logged In','2013-02-27 19:10:17'),(253,'LoganSquareUser - Logged In','2013-02-27 22:12:59'),(254,'LoganSquareUser - Logged In','2013-02-28 14:50:47'),(255,'cdonnelly@chapinhall.org - Logged In','2013-02-28 15:01:55'),(256,'cdonnelly@chapinhall.org - Logged In','2013-02-28 15:39:21'),(257,'HumboldtParkUser - Logged In','2013-02-28 15:42:08'),(258,'testPartnerAcct - Logged In','2013-02-28 15:45:26'),(259,'HumboldtParkUser - Logged In','2013-02-28 15:50:13'),(260,'testPartnerAcct - Logged In','2013-02-28 15:53:35'),(261,'cdonnelly@chapinhall.org - Logged In','2013-02-28 15:59:01'),(262,'LoganSquareUser - Logged In','2013-02-28 16:33:39'),(263,'LoganSquareUser - Logged In','2013-02-28 16:42:50'),(264,'LoganSquareUser - Logged In','2013-02-28 16:44:30'),(265,'LoganSquareUser - Logged In','2013-02-28 16:44:49'),(266,'LoganSquareUser - Logged In','2013-02-28 16:45:28'),(267,'LoganSquareUser - Logged In','2013-02-28 19:09:07'),(268,'humboldtparkuser - Logged In','2013-02-28 22:00:07'),(269,'HumboldtParkUser - Logged In','2013-02-28 22:56:14'),(270,'LoganSquareUser - Logged In','2013-03-01 15:46:31'),(271,'cdonnelly - Invalid Login','2013-03-01 16:44:00'),(272,'cdonnelly@chapinhall.org - Logged In','2013-03-01 16:44:08'),(273,'HumboldtParkUser - Logged In','2013-03-01 17:05:46'),(274,'cdonnelly@chapinhall.org - Logged In','2013-03-01 20:04:43'),(275,'cdonnelly@chapinhall.org - Logged In','2013-03-04 15:06:45'),(276,'LoganSquareUser - Logged In','2013-03-04 15:53:53'),(277,'cdonnelly@chapinhall.org - Logged In','2013-03-04 18:37:26'),(278,'LoganSquareUser - Logged In','2013-03-04 20:35:17'),(279,'LoganSquareUser - Logged In','2013-03-04 21:00:51'),(280,'cdonnelly@chapinhall.org - Logged In','2013-03-05 17:29:50'),(281,'cdonnelly@chapinhall.org - Logged In','2013-03-05 20:29:58'),(282,'humboldtparkuser - Logged In','2013-03-05 21:44:36'),(283,'LoganSquareUser - Logged In','2013-03-06 15:23:10'),(284,'humboldtparkuser - Logged In','2013-03-06 18:16:26'),(285,'LoganSquareUser - Logged In','2013-03-06 19:13:14'),(286,'humboldtparkuser - Logged In','2013-03-06 20:31:17'),(287,'LoganSquareUser - Logged In','2013-03-06 20:44:16'),(288,'LoganSquareUser - Logged In','2013-03-06 20:44:18'),(289,'LoganSquareUser - Logged In','2013-03-06 22:19:14'),(290,'LoganSquareUser - Logged In','2013-03-07 16:15:26'),(291,'LoganSquareUser - Logged In','2013-03-07 16:28:35'),(292,'humboldtparkuser - Logged In','2013-03-07 17:50:31'),(293,'LoganSquareUser - Logged In','2013-03-07 19:27:32'),(294,'cdonnelly@chapinhall.org - Logged In','2013-03-07 19:31:38'),(295,'LoganSquareUser - Logged In','2013-03-07 20:59:51'),(296,'HumboldtParkUser - Logged In','2013-03-07 21:28:22'),(297,'HumboldtParkUser - Logged In','2013-03-07 21:43:49'),(298,'HumboldtParkUser - Logged In','2013-03-07 21:50:59'),(299,'HumboldtParkUser - Logged In','2013-03-07 21:53:11'),(300,'LoganSquareUser - Logged In','2013-03-08 15:10:46'),(301,'cdonnelly@chapinhall.org - Logged In','2013-03-08 15:25:09'),(302,'LoganSquareUser - Logged In','2013-03-08 18:11:56'),(303,'LoganSquareUser - Logged In','2013-03-08 21:14:48'),(304,'LoganSquareUser - Logged In','2013-03-11 14:01:29'),(305,'HumboldtParkUser - Logged In','2013-03-11 14:10:30'),(306,'cdonnelly@chapinhall.org - Logged In','2013-03-11 15:20:01'),(307,'LoganSquareUser - Logged In','2013-03-11 18:27:03'),(308,'cdonnelly@chapinhall.org - Logged In','2013-03-11 18:58:27'),(309,'LoganSquareUser - Logged In','2013-03-11 20:18:02'),(310,'cdonnelly@chapinhall.org - Logged In','2013-03-12 14:21:42'),(311,'LoganSquareUser - Logged In','2013-03-12 14:50:03'),(312,'cdonnelly@chapinhall.org - Logged In','2013-03-12 17:48:29'),(313,'LoganSquareUser - Logged In','2013-03-12 18:10:22'),(314,'cdonnelly@chapinhall.org - Logged In','2013-03-12 20:54:05'),(315,'LoganSquareUser - Logged In','2013-03-13 13:54:41'),(316,'cdonnelly@chapinhall.org - Logged In','2013-03-13 14:06:13'),(317,'LoganSqureUser - Invalid Login','2013-03-13 17:04:29'),(318,'LoganSquareUser - Logged In','2013-03-13 17:04:35'),(319,'HumboldtParkUser - Logged In','2013-03-14 18:34:32'),(320,'LoganSquareUser - Logged In','2013-03-14 19:59:23'),(321,'LoganSquareUser - Logged In','2013-03-14 20:23:52'),(322,'LoganSquareUser - Logged In','2013-03-15 14:06:12'),(323,'LoganSquareUser - Logged In','2013-03-15 17:37:57'),(324,'LoganSquareUser - Logged In','2013-03-15 20:38:14'),(325,'LoganSquareUser - Logged In','2013-03-18 14:06:41'),(326,'LoganSquareUser - Logged In','2013-03-18 14:25:05'),(327,'cdonnelly@chapinhall.org - Logged In','2013-03-18 15:00:24'),(328,'LoganSquareUser - Logged In','2013-03-18 18:44:01'),(329,'cdonnelly@chapinhall.org - Logged In','2013-03-18 18:46:56'),(330,'cdonnelly@chapinhall.org - Logged In','2013-03-18 19:26:39'),(331,'cdonnelly@chapinhall.org - Logged In','2013-03-18 19:32:42'),(332,'cdonnelly@chapinhall.org - Logged In','2013-03-18 20:16:43'),(333,'LoganSquareUser - Logged In','2013-03-18 20:21:40'),(334,'cdonnelly@chapinhall.org - Logged In','2013-03-18 20:51:32'),(335,'cdonnelly@chapinhall.org - Logged In','2013-03-19 14:20:30'),(336,'LoganSquareUser - Logged In','2013-03-19 17:38:58'),(337,'cdonnelly@chapinhall.org - Logged In','2013-03-19 17:40:17'),(338,'cdonnelly@chapinhall.org - Logged In','2013-03-19 23:37:18'),(339,'LoganSquareUser - Logged In','2013-03-20 17:30:20'),(340,'cdonnelly@chapinhall.org - Logged In','2013-03-20 18:42:25'),(341,'cdonnelly@chapinhall.org - Logged In','2013-03-21 14:12:52'),(342,'HumboldtParkUser - Logged In','2013-03-21 17:31:35'),(343,'cdonnelly - Invalid Login','2013-03-21 19:49:05'),(344,'cdonnelly@chapinhall.org - Logged In','2013-03-21 19:49:12'),(345,'cdonnelly@chapinhall.org - Logged In','2013-03-22 15:09:24'),(346,'HumboldtParkUser - Logged In','2013-03-22 18:30:32'),(347,'cdonnelly@chapinhall.org - Logged In','2013-03-25 14:03:17'),(348,'LoganSquareUser - Logged In','2013-03-25 15:17:19'),(349,'cdonnelly@chapinhall.org - Logged In','2013-03-26 14:20:21'),(350,'cdonnelly@chapinhall.org - Logged In','2013-03-26 18:46:19'),(351,'LoganSquareUser - Logged In','2013-03-28 21:40:46'),(352,'LoganSquareUser - Logged In','2013-03-29 13:56:36'),(353,'LoganSquareUser - Logged In','2013-04-01 18:44:09'),(354,'cdonnelly@chapinhall.org - Logged In','2013-04-02 15:46:01'),(355,'cdonnelly@chapinhall.org - Logged In','2013-04-02 18:52:57'),(356,'cdonnelly@chapinhall.org - Logged In','2013-04-03 17:06:54'),(357,'cdonnelly@chapinhall.org - Logged In','2013-04-03 19:37:01'),(358,'cdonnelly@chapinhall.org - Logged In','2013-04-04 14:48:08'),(359,'HumboldtParkUser - Logged In','2013-04-04 17:53:21'),(360,'cdonnelly@chapinhall.org - Logged In','2013-04-04 19:09:00'),(361,'cdonnelly@chapinhall.org - Logged In','2013-04-05 14:04:17'),(362,'LoganSquareUser - Logged In','2013-04-05 14:10:49'),(363,'cdonnelly@chapinhall.org - Logged In','2013-04-05 16:09:01'),(364,'mwilson - Invalid Login','2013-04-05 17:24:01'),(365,'LoganSquareUser - Logged In','2013-04-05 17:24:09'),(366,'cdonnelly@chapinhall.org - Logged In','2013-04-05 17:57:04'),(367,'cdonnelly@chapinhall.org - Logged In','2013-04-05 19:47:47'),(368,'PilsenUser - Logged In','2013-04-05 20:29:59'),(369,'HumboldtParkUser - Logged In','2013-04-05 20:38:15'),(370,'PilsenUser - Logged In','2013-04-05 20:39:06'),(371,'HumboldtParkUser - Logged In','2013-04-05 20:50:22'),(372,'ChicagoLawnUser - Logged In','2013-04-05 21:07:53'),(373,'LittleVillageUser - Logged In','2013-04-05 21:14:43'),(374,'cdonnelly@chapinhall.org - Logged In','2013-04-08 14:07:35'),(375,'cdonnelly@chapinhall.org - Logged In','2013-04-08 17:21:49'),(376,'cdonnelly@chapinhall.org - Logged In','2013-04-08 17:38:38'),(377,'LoganSquareUser - Logged In','2013-04-08 18:12:49'),(378,'PilsenUser - Logged In','2013-04-08 18:15:25'),(379,'cdonnelly@chapinhall.org - Logged In','2013-04-09 13:59:33'),(380,'PilsenUser - Logged In','2013-04-09 15:16:45'),(381,'HumboldtParkUser - Logged In','2013-04-09 19:38:45'),(382,'ChicagoLawnUser - Logged In','2013-04-09 20:03:20'),(383,'PilsenUser - Logged In','2013-04-10 14:01:11'),(384,'cdonnelly@chapinhall.org - Logged In','2013-04-10 14:03:38'),(385,'LoganSquareUser - Logged In','2013-04-10 14:06:11'),(386,'LoganSquareUser - Logged In','2013-04-10 17:07:35'),(387,'cdonnelly@chapinhall.org - Logged In','2013-04-10 17:11:22'),(388,'cdonnelly@chapinhall.org - Logged In','2013-04-10 20:16:08'),(389,'logansquare - Invalid Login','2013-04-10 20:59:49'),(390,'Logan Square - Invalid Login','2013-04-10 20:59:59'),(391,'LoganSquare - Invalid Login','2013-04-10 21:00:53'),(392,'LoganSquare - Invalid Login','2013-04-10 21:00:55'),(393,'LoganSquareUser - Logged In','2013-04-10 21:07:00'),(394,'Logan Square User - Invalid Login','2013-04-10 21:12:32'),(395,'LoganSquareUser - Logged In','2013-04-10 21:12:49'),(396,'cdonnelly@chapinhall.org - Logged In','2013-04-10 21:33:12'),(397,'LoganSquareUser - Logged In','2013-04-10 21:43:20'),(398,'ChicagoLawnUser - Logged In','2013-04-10 22:13:31'),(399,'PilsenUser - Logged In','2013-04-10 22:23:15'),(400,'PilsenUser - Logged In','2013-04-10 22:46:18'),(401,'LoganSquareUser - Logged In','2013-04-10 22:46:30'),(402,'PilsenUser - Logged In','2013-04-11 14:50:48'),(403,'cdonnelly@chapinhall.org - Logged In','2013-04-11 14:55:03'),(404,'LoganSquareUser - Logged In','2013-04-11 15:05:17'),(405,'cdonnelly@chapinhall.org - Logged In','2013-04-11 17:52:58'),(406,'LoganSquareUser - Logged In','2013-04-11 18:31:47'),(407,'PilsenUser - Logged In','2013-04-11 18:42:32'),(408,'cdonnelly@chapinhall.org - Logged In','2013-04-11 20:01:06'),(409,'LoganSquareUser - Logged In','2013-04-11 20:01:55'),(410,'LoganSquareUser - Logged In','2013-04-11 22:00:23'),(411,'cdonnelly@chapinhall.org - Logged In','2013-04-12 14:09:01'),(412,'LoganSquareUser - Logged In','2013-04-12 14:32:39'),(413,'LoganSquareUser - Logged In','2013-04-12 15:03:11'),(414,'cdonnelly@chapinhall.org - Logged In','2013-04-12 17:40:53'),(415,'LoganSquareUser - Logged In','2013-04-12 18:27:02'),(416,'cdonnelly@chapinhall.org - Logged In','2013-04-12 18:50:48'),(417,'LoganSquareUser - Logged In','2013-04-12 19:50:28'),(418,'cdonnelly@chapinhall.org - Logged In','2013-04-15 19:04:55'),(419,'LoganSquareUser - Logged In','2013-04-16 14:10:35'),(420,'cdonnelly@chapinhall.org - Logged In','2013-04-16 17:15:14'),(421,'LoganSquareUser - Logged In','2013-04-16 17:23:15'),(422,'cdonnelly@chapinhall.org - Logged In','2013-04-16 20:18:41'),(423,'PilsenUser - Logged In','2013-04-16 20:44:43'),(424,'ChicagoLawnUser - Logged In','2013-04-16 20:46:14'),(425,'LoganSquareUser - Logged In','2013-04-17 15:23:22'),(426,'LoganSquareUser - Logged In','2013-04-17 16:38:26'),(427,'PilsenUser - Logged In','2013-04-17 19:58:30'),(428,'LoganSquareUser - Logged In','2013-04-17 20:21:30'),(429,'cdonnelly@chapinhall.org - Logged In','2013-04-18 14:57:12'),(430,'cdonnelly@chapinhall.org - Logged In','2013-04-18 18:11:13'),(431,'cdonnelly@chapinhall.org - Logged In','2013-04-18 21:20:39'),(432,'cdonnelly@chapinhall.org - Logged In','2013-04-19 14:40:06'),(433,'LoganSquareUser - Logged In','2013-04-19 15:38:33'),(434,'cdonnelly@chapinhall.org - Logged In','2013-04-19 19:41:45'),(435,'LoganSquareUser - Logged In','2013-04-19 20:52:56'),(436,'cdonnelly@chapinhall.org - Logged In','2013-04-22 13:55:32'),(437,'PilsenUser - Logged In','2013-04-22 14:11:52'),(438,'LoganSquareUser - Logged In','2013-04-22 15:17:22'),(439,'LoganSquareUser - Logged In','2013-04-22 18:36:24'),(440,'cdonnelly@chapinhall.org - Logged In','2013-04-22 20:29:19'),(441,'LoganSquareUser - Logged In','2013-04-22 21:37:21'),(442,'cdonnelly@chapinhall.org - Logged In','2013-04-23 13:27:11'),(443,'LoganSquareUser - Logged In','2013-04-23 14:06:04'),(444,'LoganSquareUser - Logged In','2013-04-23 14:11:59'),(445,'LoganSquareUser - Logged In','2013-04-23 15:11:05'),(446,'cdonnelly@chapinhall.org - Logged In','2013-04-23 17:04:19'),(447,'LoganSquareUser - Logged In','2013-04-23 20:25:20'),(448,'cdonnelly@chapinhall.org - Logged In','2013-04-23 21:09:49'),(449,'PilsenUser - Logged In','2013-04-23 21:52:16'),(450,'cdonnelly@chapinhall.org - Logged In','2013-04-24 14:28:15'),(451,'PilsenUser - Logged In','2013-04-24 15:01:02'),(452,'ChicagoLawnUser - Logged In','2013-04-24 21:46:06'),(453,'cdonnelly@chapinhall.org - Logged In','2013-04-25 14:02:08'),(454,'PilsenUser - Logged In','2013-04-25 14:29:09'),(455,'LoganSquareUser - Logged In','2013-04-25 20:01:00'),(456,'LoganSquareUser - Logged In','2013-04-25 20:01:05'),(457,'PilsenUser - Logged In','2013-04-25 21:15:29'),(458,'cdonnelly@chapinhall.org - Logged In','2013-04-26 14:02:57'),(459,'cdonnelly@chapinhall.org - Logged In','2013-04-26 14:37:08'),(460,'PilsenUser - Logged In','2013-04-26 15:41:04'),(461,'LoganSquareUser - Logged In','2013-05-03 15:52:43'),(462,'PilsenUser - Logged In','2013-05-03 15:54:05'),(463,'PilsenUser - Logged In','2013-05-03 19:39:14'),(464,'LoganSquareUser - Logged In','2013-05-03 20:13:40'),(465,'LoganSquareUser - Logged In','2013-05-06 14:31:34'),(466,'LoganSquareUser - Logged In','2013-05-06 17:41:05'),(467,'LoganSquareUser - Logged In','2013-05-06 17:44:55'),(468,'ChicagoLawnUser - Logged In','2013-05-06 18:06:25'),(469,'PilsenUser - Logged In','2013-05-07 13:59:39'),(470,'cdonnelly@chapinhall.org - Logged In','2013-05-07 14:16:24'),(471,'ChicagoLawnUser - Logged In','2013-05-07 14:52:58'),(472,'cdonnelly@chapinhall.org - Logged In','2013-05-07 17:18:02'),(473,'LoganSquareUser - Logged In','2013-05-07 18:53:49'),(474,'LoganSquareUser - Logged In','2013-05-07 19:49:18'),(475,'LoganSquareUser - Logged In','2013-05-07 19:49:26'),(476,'cdonnelly@chapinhall.org - Logged In','2013-05-07 20:27:14'),(477,'cdonnelly@chapinhall.org - Logged In','2013-05-07 20:55:10'),(478,'HumboldtParkUser - Logged In','2013-05-07 20:58:26'),(479,'cdonnelly@chapinhall.org - Logged In','2013-05-08 14:14:43'),(480,'LoganSquareUser - Logged In','2013-05-08 15:06:53'),(481,'HumboldtParkUser - Logged In','2013-05-08 17:13:04'),(482,'PilsenUser - Logged In','2013-05-08 18:25:50'),(483,'cdonnelly@chapinhall.org - Logged In','2013-05-08 19:55:41'),(484,'humboldtparkuser - Logged In','2013-05-09 16:39:09'),(485,'humboldtparkuser - Logged In','2013-05-09 16:50:47'),(486,'HumboldtParkUser - Logged In','2013-05-09 17:17:07'),(487,'cdonnelly@chapinhall.org - Logged In','2013-05-09 17:55:02'),(488,'ChicagoLawnUser - Logged In','2013-05-09 20:43:04'),(489,'LittleVillageUser - Logged In','2013-05-09 21:10:19'),(490,'swopUSER - Invalid Login','2013-05-10 13:45:56'),(491,'ChicagoLawnUser - Logged In','2013-05-10 13:46:55'),(492,'cdonnelly@chapinhall.org - Logged In','2013-05-10 14:01:52'),(493,'LoganSquareUser - Logged In','2013-05-10 14:42:55'),(494,'ChicagoLawnUser - Logged In','2013-05-10 18:03:11'),(495,'PilsenUser - Logged In','2013-05-10 18:27:22'),(496,'cdonnelly@chapinhall.org - Logged In','2013-05-13 14:00:43'),(497,'ChicagoLawnUser - Logged In','2013-05-13 15:19:03'),(498,'cdonnelly@chapinhall.org - Logged In','2013-05-13 18:55:22'),(499,'cdonnelly@chapinhall.org - Logged In','2013-05-14 15:22:03'),(500,'PilsenUser - Logged In','2013-05-14 15:39:42'),(501,'HumboldtParkUser - Logged In','2013-05-14 17:09:53'),(502,'HumboldtParkUser - Logged In','2013-05-14 17:23:40'),(503,'cdonnelly@chapinhall.org - Logged In','2013-05-14 18:05:12'),(504,'ChicagoLawnUser - Logged In','2013-05-14 18:46:49'),(505,'PilsenUser - Logged In','2013-05-14 18:57:48'),(506,'troch@lisc.org - Logged In','2013-05-14 20:27:20'),(507,'cdonnelly@chapinhall.org - Logged In','2013-05-14 20:28:17'),(508,'troch@lisc.org - Logged In','2013-05-14 20:31:09'),(509,'troch@lisc.org - Logged In','2013-05-14 20:33:26'),(510,'cdonnelly@chapinhall.org - Logged In','2013-05-14 20:33:35'),(511,'cdonnelly@chapinhall.org - Logged In','2013-05-15 13:27:37'),(512,'LoganSquareUser - Logged In','2013-05-15 14:16:20'),(513,'LoganSquareUser - Logged In','2013-05-15 14:17:37'),(514,'LoganSquareUser - Logged In','2013-05-15 15:23:23'),(515,'cdonnelly@chapinhall.org - Logged In','2013-05-15 15:28:51'),(516,'LoganSquareUSer - Logged In','2013-05-15 18:35:14'),(517,'LoganSquareUser - Logged In','2013-05-16 14:09:08'),(518,'HumboldtParkUser - Logged In','2013-05-16 15:35:59'),(519,'HumboldtParkUser - Logged In','2013-05-16 18:42:08'),(520,'LoganSquareUser - Logged In','2013-05-16 19:13:38'),(521,'LoganSquareUser - Logged In','2013-05-16 19:58:43'),(522,'LoganSquareUser - Logged In','2013-05-17 15:08:07'),(523,'LoganSquareUser - Logged In','2013-05-17 18:00:13'),(524,'LoganSquareUser - Logged In','2013-05-17 18:47:22'),(525,'HumboldtParkUser - Invalid Login','2013-05-17 19:52:03'),(526,'HumboldtParkUser - Logged In','2013-05-17 19:52:06'),(527,'CLOCCUser - Invalid Login','2013-05-17 19:52:15'),(528,'CLOCCUser - Invalid Login','2013-05-17 19:52:23'),(529,'PilsenUser - Logged In','2013-05-17 20:43:29'),(530,'LoganSquareUser - Logged In','2013-05-20 14:09:32'),(531,'cdonnelly@chapinhall.org - Logged In','2013-05-20 14:51:50'),(532,'LoganSquareUser - Logged In','2013-05-20 17:20:03'),(533,'cdonnelly@chapinhall.org - Logged In','2013-05-20 19:14:58'),(534,'LoganSquareUser - Logged In','2013-05-20 20:20:34'),(535,'ChicagoLawnUser - Logged In','2013-05-20 20:33:39'),(536,'LoganSquareUser - Logged In','2013-05-20 21:32:17'),(537,'LoganSquareUser - Logged In','2013-05-21 13:36:17'),(538,'cdonnelly@chapinhall.org - Logged In','2013-05-21 14:17:53'),(539,'ChicagoLawnUser - Logged In','2013-05-21 14:31:14'),(540,'LoganSquareUser - Logged In','2013-05-21 15:12:20'),(541,'ChicagoLawnUser - Logged In','2013-05-21 15:31:25'),(542,'cdonnelly@chapinhall.org - Logged In','2013-05-21 17:37:14'),(543,'PilsenUser - Logged In','2013-05-21 18:33:28'),(544,'LSNADataEntry - Logged In','2013-05-21 19:53:06'),(545,'LSNAViewer - Logged In','2013-05-21 19:53:18'),(546,'LoganSquareUser - Logged In','2013-05-21 19:53:31'),(547,'LoganSquareUser - Logged In','2013-05-21 19:58:28'),(548,'LSNADataEntry - Logged In','2013-05-21 19:58:37'),(549,'LSNADataEntry - Logged In','2013-05-21 20:04:55'),(550,'LoganSquareUser - Logged In','2013-05-21 20:18:07'),(551,'LoganSquareUser - Logged In','2013-05-21 20:20:11'),(552,'LSNADataEntry - Logged In','2013-05-21 20:20:46'),(553,'LSNAViewer - Logged In','2013-05-21 20:27:49'),(554,'LoganSquareUser - Logged In','2013-05-22 14:18:16'),(555,'cdonnelly@chapinhall.org - Logged In','2013-05-22 15:24:16'),(556,'LSNAViewer - Logged In','2013-05-22 15:24:30'),(557,'LSNAViewer - Logged In','2013-05-22 15:24:54'),(558,'cdonnelly@chapinhall.org - Logged In','2013-05-22 15:29:32'),(559,'LSNAViewer - Logged In','2013-05-22 15:30:02'),(560,'LSNADataEntry - Logged In','2013-05-22 15:30:21'),(561,'cdonnelly@chapinhall.org - Logged In','2013-05-22 15:34:31'),(562,'humboldtparkuser - Logged In','2013-05-22 17:54:37'),(563,'LoganSquareUser - Logged In','2013-05-22 18:02:32'),(564,'troch@lisc.org - Logged In','2013-05-22 19:06:09'),(565,'HumboldtParkUser - Logged In','2013-05-22 19:15:05'),(566,'cdonnelly@chapinhall.org - Logged In','2013-05-22 19:28:45'),(567,'ChicagoLawnUser - Logged In','2013-05-22 19:33:02'),(568,'HumboldtParkUser - Logged In','2013-05-22 19:38:21'),(569,'humboldtparkuser - Logged In','2013-05-22 20:19:06'),(570,'ChicagoLawnUser - Logged In','2013-05-22 22:12:22'),(571,'cdonnelly@chapinhall.org - Logged In','2013-05-23 13:44:11'),(572,'ChicagoLawnUser - Logged In','2013-05-23 13:53:59'),(573,'HumboldtParkUser - Logged In','2013-05-23 15:10:53'),(574,'troch@lisc.org - Logged In','2013-05-23 17:23:25'),(575,'HumboldtParkUser - Logged In','2013-05-23 18:21:19'),(576,'cdonnelly@chapinhall.org - Logged In','2013-05-23 20:41:34'),(577,'LoganSquareUser - Logged In','2013-05-24 14:03:37'),(578,'cdonnelly@chapinhall.org - Logged In','2013-05-24 14:34:10'),(579,'LoganSquareUser - Logged In','2013-05-24 17:20:42'),(580,'cdonnelly@chapinhall.org - Logged In','2013-05-24 17:45:54'),(581,'LoganSquareUser - Logged In','2013-05-24 19:16:14'),(582,'cdonnelly@chapinhall.org - Logged In','2013-05-24 20:46:18'),(583,'cdonnelly@chapinhall.org - Logged In','2013-05-28 13:59:01'),(584,'HumboldtParkUser - Logged In','2013-05-28 18:29:53'),(585,'ChicagoLawnUser - Logged In','2013-05-28 19:06:54'),(586,'PilsenUser - Logged In','2013-05-28 20:25:31'),(587,'cdonnelly@chapinhall.org - Logged In','2013-05-28 20:25:41'),(588,'ChicagoLawnUser - Logged In','2013-05-29 15:26:30'),(589,'LoganSquareUser - Logged In','2013-05-29 15:28:27'),(590,'cdonnelly@chapinhall.org - Logged In','2013-05-29 15:47:15'),(591,'humboldtparkuser - Logged In','2013-05-29 18:28:00'),(592,'cdonnelly@chapinhall.org - Logged In','2013-05-29 19:10:05'),(593,'cdonnelly@chapinhall.org - Logged In','2013-05-30 13:39:38'),(594,'ChicagoLawnUser - Logged In','2013-05-30 15:37:34'),(595,'cdonnelly@chapinhall.org - Logged In','2013-05-30 16:40:47'),(596,'LoganSquareUser - Invalid Login','2013-05-30 18:42:24'),(597,'LoganSquareUser - Logged In','2013-05-30 18:42:26'),(598,'cdonnelly@chapinhall.org - Logged In','2013-05-30 19:51:57'),(599,'LoganSquareUser - Logged In','2013-05-31 13:45:30'),(600,'LoganSquareUser - Logged In','2013-05-31 14:24:21'),(601,'LoganSquareUser - Logged In','2013-05-31 14:45:01'),(602,'cdonnelly@chapinhall.org - Logged In','2013-05-31 16:06:15'),(603,'LoganSquareUser - Logged In','2013-05-31 16:49:42'),(604,'cdonnelly@chapinhall.org - Logged In','2013-05-31 17:22:48'),(605,'HumboldtParkUser - Logged In','2013-05-31 18:39:25'),(606,'cdonnelly@chapinhall.org - Logged In','2013-05-31 20:23:22'),(607,'LoganSquareUser - Logged In','2013-05-31 20:37:35'),(608,'cdonnelly@chapinhall.org - Logged In','2013-06-03 13:50:56'),(609,'LoganSquareUser - Logged In','2013-06-03 14:08:48'),(610,'LoganSqureUser - Invalid Login','2013-06-03 14:38:34'),(611,'LoganSqureUser - Invalid Login','2013-06-03 14:38:36'),(612,'LoganSqureUser - Invalid Login','2013-06-03 14:38:38'),(613,'LoganSquareUser - Logged In','2013-06-03 14:38:45'),(614,'cdonnelly@chapinhall.org - Logged In','2013-06-03 16:51:39'),(615,'cdonnelly@chapinhall.org - Logged In','2013-06-03 17:05:15'),(616,'LoganSquareUser - Logged In','2013-06-03 19:23:23'),(617,'jpcirre@aol.com - Logged In','2013-06-03 19:25:27'),(618,'LoganSquareUser - Logged In','2013-06-03 19:26:00'),(619,'jpcirre@aol.com - Logged In','2013-06-03 19:26:16'),(620,'jpcirre@aol.com - Logged In','2013-06-03 19:27:43'),(621,'LoganSquareUser - Logged In','2013-06-03 19:28:58'),(622,'LoganSquareUser - Logged In','2013-06-03 19:39:59'),(623,'cdonnelly@chapinhall.org - Logged In','2013-06-03 19:52:50'),(624,'LoganSquareUser - Logged In','2013-06-04 13:43:16'),(625,'cdonnelly@chapinhall.org - Logged In','2013-06-04 13:51:24'),(626,'LoganSquareUser - Logged In','2013-06-04 16:47:34'),(627,'cdonnelly@chapinhall.org - Logged In','2013-06-04 16:52:23'),(628,'LoganSquareUser - Logged In','2013-06-04 19:58:56'),(629,'ChicagoLawnUser - Logged In','2013-06-04 21:05:41'),(630,'cdonnelly@chapinhall.org - Logged In','2013-06-04 21:24:30'),(631,'humboltparkuser - Invalid Login','2013-06-04 21:40:51'),(632,'humboldtparkuser - Logged In','2013-06-04 21:40:58'),(633,'LoganSquareUser - Logged In','2013-06-04 21:42:25'),(634,'cdonnelly@chapinhall.org - Logged In','2013-06-05 13:27:36'),(635,'HumboldtParkUser - Logged In','2013-06-05 14:03:16'),(636,'ChicagoLawnUser - Logged In','2013-06-05 16:12:29'),(637,'ChicagoLawnUser - Logged In','2013-06-05 16:12:47'),(638,'cdonnelly@chapinhall.org - Logged In','2013-06-05 16:37:35'),(639,'LoganSquareUser - Logged In','2013-06-05 16:37:55'),(640,'cdonnelly@chapinhall.org - Logged In','2013-06-05 19:12:52'),(641,'LoganSquareUser - Logged In','2013-06-05 19:33:20'),(642,'ChicagoLawnUser - Logged In','2013-06-05 21:49:22'),(643,'HumboldtParkUser - Logged In','2013-06-05 22:17:19'),(644,'LoganSquareUser - Logged In','2013-06-05 22:17:55'),(645,'cdonnelly@chapinhall.org - Logged In','2013-06-06 14:09:25'),(646,'ChicagoLawnUser - Logged In','2013-06-06 14:20:43'),(647,'humboldtparkuser - Logged In','2013-06-06 20:27:27'),(648,'cdonnelly@chapinhall.org - Logged In','2013-06-06 20:40:37'),(649,'ChicagoLawnUser - Logged In','2013-06-06 21:13:37'),(650,'cdonnelly@chapinhall.org - Logged In','2013-06-07 13:33:49'),(651,'ChicagoLawnUser - Logged In','2013-06-07 14:12:05'),(652,'LittleVillageUser - Logged In','2013-06-07 14:30:00'),(653,'ChicagoLawnUser - Logged In','2013-06-07 14:31:06'),(654,'LittleVillageUser - Logged In','2013-06-07 15:40:57'),(655,'ChicagoLawnUser - Logged In','2013-06-07 18:13:15'),(656,'cdonnelly@chapinhall.org - Logged In','2013-06-07 18:21:57'),(657,'LoganSquareUser - Logged In','2013-06-10 13:53:31'),(658,'cdonnelly@chapinhall.org - Logged In','2013-06-10 13:55:11'),(659,'logan square - Invalid Login','2013-06-10 14:29:14'),(660,'logan square user - Invalid Login','2013-06-10 14:30:28'),(661,'logansquareuser - Logged In','2013-06-10 14:30:46'),(662,'LittleVillageUser - Logged In','2013-06-10 15:23:18'),(663,'logansquareuser - Logged In','2013-06-10 16:08:52'),(664,'lsnaviewer - Invalid Login','2013-06-10 16:55:48'),(665,'lsnaviewer - Logged In','2013-06-10 16:55:53'),(666,'logansquareuser - Logged In','2013-06-10 17:06:01'),(667,'LSNAViewer - Logged In','2013-06-10 17:06:33'),(668,'LSNAViewer - Logged In','2013-06-10 17:13:51'),(669,'Logansquareuser - Logged In','2013-06-10 17:15:29'),(670,'logansquareuser - Logged In','2013-06-10 17:34:54'),(671,'cdonnelly@chapinhall.org - Logged In','2013-06-10 18:40:35'),(672,'LoganSquareUser - Logged In','2013-06-10 19:58:23'),(673,'LSNAViewer - Logged In','2013-06-10 20:48:39'),(674,'cdonnelly@chapinhall.org - Logged In','2013-06-11 15:32:00'),(675,'LSNAViewer - Logged In','2013-06-11 15:42:36'),(676,'LoganSquareUser - Logged In','2013-06-11 15:45:25'),(677,'LSNAViewer - Logged In','2013-06-11 15:45:39'),(678,'LoganSquareUser - Logged In','2013-06-11 18:34:37'),(679,'cdonnelly@chapinhall.org - Logged In','2013-06-11 18:56:52'),(680,'ChicagoLawnUser - Logged In','2013-06-11 19:10:44'),(681,'cdonnelly@chapinhall.org - Logged In','2013-06-12 14:10:14'),(682,'ChicagoLawnUser - Logged In','2013-06-12 14:29:12'),(683,'cdonnelly@chapinhall.org - Logged In','2013-06-12 21:02:10'),(684,'logansquareuser - Logged In','2013-06-12 21:20:16'),(685,'cdonnelly@chapinhall.org - Logged In','2013-06-13 13:48:33'),(686,'ChicagoLawnUser - Logged In','2013-06-13 15:21:54'),(687,'cdonnelly@chapinhall.org - Logged In','2013-06-13 19:45:41'),(688,'LoganSquareUser - Logged In','2013-06-13 20:03:20'),(689,'LSNADataEntry - Logged In','2013-06-14 13:36:06'),(690,'cdonnelly@chapinhall.org - Logged In','2013-06-14 14:01:18'),(691,'ChicagoLawnUser - Logged In','2013-06-14 14:13:41'),(692,'LoganSquareUser - Logged In','2013-06-14 17:50:33'),(693,'LoganSquareUser - Logged In','2013-06-14 19:00:48'),(694,'ChicagoLawnUser - Logged In','2013-06-14 20:14:42'),(695,'ChicagoLawnUser - Logged In','2013-06-17 13:46:44'),(696,'LoganSquareUser - Logged In','2013-06-17 14:17:12'),(697,'cdonnelly@chapinhall.org - Logged In','2013-06-17 14:23:00'),(698,'LoganSquareUser - Logged In','2013-06-17 15:31:54'),(699,'LoganSquareUser - Logged In','2013-06-17 16:43:26'),(700,'LSNAViewer - Invalid Login','2013-06-17 17:23:07'),(701,'LSNAViewer - Logged In','2013-06-17 17:23:10'),(702,'LSNAViewer - Logged In','2013-06-17 17:26:24'),(703,'LoganSquareUser - Invalid Login','2013-06-17 17:28:39'),(704,'LoganSquareUser - Logged In','2013-06-17 17:28:41'),(705,'ChicagoLawnUser - Logged In','2013-06-17 18:21:18'),(706,'LittleVillageUser - Logged In','2013-06-17 18:58:47'),(707,'LoganSquareUser - Logged In','2013-06-17 19:00:03'),(708,'cdonnelly@chapinhall.org - Logged In','2013-06-18 13:59:38'),(709,'ChicagoLawnUser - Logged In','2013-06-18 14:51:27'),(710,'cdonnelly@chapinhall.org - Logged In','2013-06-18 19:15:14'),(711,'ChicagoLawnUser - Logged In','2013-06-18 20:22:54'),(712,'cdonnelly@chapinhall.org - Logged In','2013-06-19 13:28:59'),(713,'ChicagoLawnUser - Logged In','2013-06-19 14:52:52'),(714,'HumboldtParkUser - Logged In','2013-06-19 15:55:02'),(715,'ChicagoLawnUser - Logged In','2013-06-19 16:02:21'),(716,'ChicagoLawnUser - Logged In','2013-06-19 17:13:51'),(717,'cdonnelly@chapinhall.org - Logged In','2013-06-19 19:06:40'),(718,'chicagolawnuser - Logged In','2013-06-19 20:28:01'),(719,'ChicagoLawnUser - Logged In','2013-06-19 20:29:02'),(720,'cdonnelly@chapinhall.org - Logged In','2013-06-20 13:42:19'),(721,'PilsenUser - Logged In','2013-06-20 14:18:07'),(722,'ChicagoLawnUser - Logged In','2013-06-20 15:24:41'),(723,'LSNAViewer - Logged In','2013-06-20 16:39:02'),(724,'cdonnelly@chapinhall.org - Logged In','2013-06-20 16:45:19'),(725,'LSNAViewer - Logged In','2013-06-20 18:02:46'),(726,'lsnaviewer - Logged In','2013-06-20 18:09:25'),(727,'lsnaviewer - Logged In','2013-06-20 21:48:16'),(728,'cdonnelly@chapinhall.org - Logged In','2013-06-21 13:38:24'),(729,'ChicagoLawnUser - Logged In','2013-06-21 14:04:43'),(730,'LSNAViewer - Invalid Login','2013-06-21 14:44:01'),(731,'LSNAViewer - Invalid Login','2013-06-21 14:44:04'),(732,'LSNAViewer - Logged In','2013-06-21 14:44:19'),(733,'LoganSquareUser - Logged In','2013-06-21 14:49:42'),(734,'LSNADATAENTRY - Logged In','2013-06-21 14:50:03'),(735,'LoganSquareUser - Logged In','2013-06-21 15:02:42'),(736,'DATAENTRY - Invalid Login','2013-06-21 17:15:50'),(737,'LSNADataEntry - Logged In','2013-06-21 17:16:49'),(738,'LoganSquareUser - Logged In','2013-06-21 17:24:02'),(739,'cdonnelly@chapinhall.org - Logged In','2013-06-21 18:19:18'),(740,'cdonnelly@chapinhall.org - Logged In','2013-06-21 19:26:51'),(741,'LSNAViewer - Logged In','2013-06-21 19:29:04'),(742,'cdonnelly@chapinhall.org - Logged In','2013-06-21 19:31:59'),(743,'PilsenUser - Logged In','2013-06-21 20:32:47'),(744,'HumboldtParkUser - Logged In','2013-06-21 21:01:20'),(745,'LittleVillageUser - Logged In','2013-06-21 21:06:28'),(746,'LoganSquareUser - Logged In','2013-06-21 21:23:23'),(747,'ChicagoLawnUser - Logged In','2013-06-24 15:18:26'),(748,'lsnaviewer - Logged In','2013-06-24 16:59:29'),(749,'lsnaviewer - Logged In','2013-06-24 16:59:58'),(750,'lsnaviewer - Logged In','2013-06-24 17:00:47'),(751,'cdonnelly@chapinhall.org - Logged In','2013-06-25 14:09:49'),(752,'LittleVillageUser - Logged In','2013-06-25 15:09:45'),(753,'cdonnelly@chapinhall.org - Logged In','2013-06-25 17:31:03'),(754,'ChicagoLawnUser - Logged In','2013-06-25 18:18:52'),(755,'chciagolawnuser - Invalid Login','2013-06-25 18:35:30'),(756,'ChicagoLawnUser - Logged In','2013-06-25 18:35:58'),(757,'PilsenUser - Logged In','2013-06-25 21:08:45'),(758,'ChicagoLawnUser - Logged In','2013-06-26 13:55:57'),(759,'cdonnelly@chapinhall.org - Logged In','2013-06-26 14:14:07'),(760,'ChicagoLawnUser - Logged In','2013-06-26 19:38:09'),(761,'LittleVillageUser - Logged In','2013-06-26 19:51:11'),(762,'cdonnelly@chapinhall.org - Logged In','2013-06-27 13:36:13'),(763,'ChicagoLawnUser - Logged In','2013-06-27 14:03:00'),(764,'ChicagoLawnUser - Logged In','2013-06-27 20:01:32'),(765,'LoganSquareUser - Logged In','2013-06-27 20:12:57'),(766,'cdonnelly@chapinhall.org - Logged In','2013-06-27 21:23:35'),(767,'LittleVillage - Invalid Login','2013-06-28 13:07:51'),(768,'LittleVillageUser - Logged In','2013-06-28 13:07:58'),(769,'cdonnelly@chapinhall.org - Logged In','2013-06-28 13:35:05'),(770,'ChicagoLawnUser - Logged In','2013-06-28 14:29:36'),(771,'PilsenUser - Logged In','2013-06-28 18:16:42'),(772,'chciagolawnuser - Invalid Login','2013-06-28 20:54:37'),(773,'chicagolawnuser - Logged In','2013-06-28 20:54:44'),(774,'cdonnelly@chapinhall.org - Logged In','2013-07-01 13:51:21'),(775,'LittleVillageUser - Logged In','2013-07-01 15:27:24'),(776,'ChicagoLawnUser - Logged In','2013-07-01 18:27:55'),(777,'cdonnelly@chapinhall.org - Logged In','2013-07-01 18:54:54'),(778,'PilsenUser - Logged In','2013-07-01 18:59:43'),(779,'LittleVillageUser - Logged In','2013-07-01 20:45:42'),(780,'LittleVillageUser - Logged In','2013-07-02 14:52:15'),(781,'ChicagoLawnUser - Logged In','2013-07-02 15:30:14'),(782,'cdonnelly@chapinhall.org - Logged In','2013-07-02 15:56:28'),(783,'ChicagoLawnUser - Logged In','2013-07-02 19:02:51'),(784,'LittleVillageUser - Logged In','2013-07-03 14:47:07'),(785,'cdonnelly@chapinhall.org - Logged In','2013-07-03 16:43:54'),(786,'ChicagoLawn - Invalid Login','2013-07-03 19:14:18'),(787,'ChicagoLawn - Invalid Login','2013-07-03 19:19:51'),(788,'ChicagoLawn - Invalid Login','2013-07-03 19:21:36'),(789,'ChicagoLawnUser - Logged In','2013-07-03 19:22:24'),(790,'cdonnelly@chapinhall.org - Logged In','2013-07-03 19:57:08'),(791,'chicago lawn user - Invalid Login','2013-07-03 21:24:23'),(792,'ChicagoLawnUser - Logged In','2013-07-03 21:24:38'),(793,'cdonnelly@chapinhall.org - Logged In','2013-07-05 14:11:50'),(794,'cdonnelly@chapinhall.org - Logged In','2013-07-05 17:28:37'),(795,'cdonnelly@chapinhall.org - Logged In','2013-07-08 13:17:33'),(796,'LittleVillageUser - Logged In','2013-07-08 14:15:20'),(797,'LittleVillageUser - Logged In','2013-07-08 17:03:03'),(798,'cdonnelly@chapinhall.org - Logged In','2013-07-08 19:40:17'),(799,'ChicagoLawnUser - Logged In','2013-07-08 20:37:44'),(800,'ChicagoLawnUser - Logged In','2013-07-08 20:41:08'),(801,'cdonnelly@chapinhall.org - Logged In','2013-07-09 13:51:49'),(802,'LoganSquareUser - Logged In','2013-07-09 14:25:38'),(803,'LoganSquareuser - Invalid Login','2013-07-09 14:29:57'),(804,'LoganSquareUser - Logged In','2013-07-09 14:30:17'),(805,'LoganSquareUser - Logged In','2013-07-09 14:30:20'),(806,'LoganSquareUser - Logged In','2013-07-09 14:30:29'),(807,'LoganSquareUser - Logged In','2013-07-09 17:15:48'),(808,'LoganSquareUser - Logged In','2013-07-09 17:31:28'),(809,'cdonnelly@chapinhall.org - Logged In','2013-07-09 18:16:56'),(810,'ChicagoLawnUser - Logged In','2013-07-09 20:35:10'),(811,'cdonnelly@chapinhall.org - Logged In','2013-07-10 14:24:26'),(812,'ChicagoLawnUser - Logged In','2013-07-10 14:57:42'),(813,'LoganSquareUser - Logged In','2013-07-10 16:38:06'),(814,'chicagolawnuser - Logged In','2013-07-10 18:00:10'),(815,'chicagolawnuser - Logged In','2013-07-10 19:05:35'),(816,'cdonnelly@chapinhall.org - Logged In','2013-07-11 13:52:48'),(817,'ChicagoLawnUser - Logged In','2013-07-11 15:20:05'),(818,'cdonnelly@chapinhall.org - Logged In','2013-07-11 15:57:41'),(819,'cdonnelly@chapinhall.org - Logged In','2013-07-11 17:53:38'),(820,'ChicagoLawnUser - Logged In','2013-07-11 20:37:56'),(821,'cdonnelly@chapinhall.org - Logged In','2013-07-12 14:10:20'),(822,'ChicagoLawnUser - Logged In','2013-07-12 14:24:14'),(823,'LoganSquareUser - Logged In','2013-07-12 14:34:25'),(824,'cdonnelly@chapinhall.org - Logged In','2013-07-12 15:16:21'),(825,'logansquareuser - Logged In','2013-07-12 16:08:00'),(826,'LoganSquareUser - Logged In','2013-07-12 16:16:47'),(827,'LoganSquareUser - Logged In','2013-07-12 17:17:33'),(828,'chicagolawnuser - Logged In','2013-07-12 18:38:56'),(829,'cdonnelly@chapinhall.org - Logged In','2013-07-15 13:45:47'),(830,'LoganSquareUser - Logged In','2013-07-15 14:08:03'),(831,'LoganSquareUser - Logged In','2013-07-15 14:35:39'),(832,'cdonnelly@chapinhall.org - Logged In','2013-07-15 14:36:45'),(833,'PilsenUser - Logged In','2013-07-15 16:18:57'),(834,'LoganSquareUser - Logged In','2013-07-15 19:14:25'),(835,'cdonnelly@chapinhall.org - Logged In','2013-07-15 19:48:48'),(836,'LittleVillageUser - Logged In','2013-07-15 19:55:21'),(837,'PilsenUser - Logged In','2013-07-15 20:30:30'),(838,'LoganSquareUser - Logged In','2013-07-15 21:36:39'),(839,'cdonnelly@chapinhall.org - Logged In','2013-07-16 13:50:57'),(840,'LoganSquareUser - Logged In','2013-07-16 15:23:11'),(841,'cdonnelly@chapinhall.org - Logged In','2013-07-16 18:50:30'),(842,'LoganSquareUser - Logged In','2013-07-16 19:23:08'),(843,'LoganSquareUser - Logged In','2013-07-16 20:24:02'),(844,'cdonnelly@chapinhall.org - Logged In','2013-07-17 14:10:47'),(845,'chicagolawnuser - Logged In','2013-07-17 14:59:13'),(846,'cdonnelly@chapinhall.org - Logged In','2013-07-17 17:19:56'),(847,'cdonnelly@chapinhall.org - Logged In','2013-07-17 20:46:23'),(848,'pilsenuser - Logged In','2013-07-17 20:50:18'),(849,'PilsenUser - Logged In','2013-07-18 14:07:59'),(850,'cdonnelly@chapinhall.org - Logged In','2013-07-18 15:10:50'),(851,'cdonnelly@chapinhall.org - Logged In','2013-07-18 20:22:58'),(852,'cdonnelly@chapinhall.org - Logged In','2013-07-19 13:50:17'),(853,'LoganSquareUser - Logged In','2013-07-19 14:46:44'),(854,'logansquareuser - Logged In','2013-07-19 15:40:39'),(855,'cdonnelly@chapinhall.org - Logged In','2013-07-19 17:56:02'),(856,'LoganSquareUser - Logged In','2013-07-19 18:42:10'),(857,'ChicagoLawnUser - Logged In','2013-07-19 19:11:55'),(858,'pilsenuser - Logged In','2013-07-19 19:39:24'),(859,'ChicagoLawnUser - Logged In','2013-07-19 20:36:36'),(860,'ChicagoLawnUser - Logged In','2013-07-19 20:36:57'),(861,'ChicagoLawnUser - Logged In','2013-07-19 20:37:05'),(862,'cdonnelly@chapinhall.org - Logged In','2013-07-19 20:40:50'),(863,'ChicagoLawnUser - Logged In','2013-07-19 21:06:06'),(864,'cdonnelly@chapinhall.org - Logged In','2013-07-22 13:27:27'),(865,'ChicagoLawnUser - Logged In','2013-07-22 14:21:10'),(866,'LoganSquareUser - Logged In','2013-07-22 14:41:34'),(867,'cdonnelly@chapinhall.org - Logged In','2013-07-22 17:06:08'),(868,'ChicagoLawnUser - Logged In','2013-07-22 18:22:51'),(869,'ChicagoLawn - Invalid Login','2013-07-22 18:26:39'),(870,'ChicagoLawnUser - Logged In','2013-07-22 18:26:51'),(871,'LoganSquareUser - Logged In','2013-07-22 19:03:54'),(872,'cdonnelly@chapinhall.org - Logged In','2013-07-22 20:26:25'),(873,'LoganSquareUser - Logged In','2013-07-22 20:26:26'),(874,'logansquareuser - Logged In','2013-07-23 13:53:24'),(875,'cdonnelly@chapinhall.org - Logged In','2013-07-23 14:07:43'),(876,'ChicagoLawnUser - Logged In','2013-07-23 15:26:31'),(877,'troch@lisc.org - Logged In','2013-07-23 16:24:42'),(878,'LoganSquareUser - Logged In','2013-07-23 16:27:05'),(879,'LoganSquareUser - Logged In','2013-07-23 16:55:46'),(880,'LoganSquareUser - Logged In','2013-07-23 17:23:38'),(881,'LoganSquareUser - Logged In','2013-07-23 17:33:15'),(882,'cdonnelly@chapinhall.org - Logged In','2013-07-23 17:50:41'),(883,'LoganSquareUser - Logged In','2013-07-23 18:05:04'),(884,'ChicagoLawnUser - Logged In','2013-07-23 18:46:03'),(885,'LSNAViewer - Logged In','2013-07-23 20:50:07'),(886,'cdonnelly@chapinhall.org - Logged In','2013-07-24 15:10:58'),(887,'ChicagoLawnUser - Logged In','2013-07-24 15:52:11'),(888,'ChicagoLawnUser - Logged In','2013-07-24 15:55:17'),(889,'naardema - Invalid Login','2013-07-24 18:27:43'),(890,'lsnaviewer - Invalid Login','2013-07-24 18:28:24'),(891,'lsnaviewer - Invalid Login','2013-07-24 18:28:39'),(892,'lsnaviewer - Invalid Login','2013-07-24 18:28:50'),(893,'lsnaviewer - Logged In','2013-07-24 18:28:57'),(894,'lsnadataentry - Invalid Login','2013-07-24 18:29:43'),(895,'lsnadataentry - Invalid Login','2013-07-24 18:29:50'),(896,'logansquareuser - Logged In','2013-07-24 18:29:59'),(897,'lsnadataentry - Logged In','2013-07-24 18:30:48'),(898,'ChicagoLawnUser - Logged In','2013-07-24 18:42:58'),(899,'cdonnelly@chapinhall.org - Logged In','2013-07-24 21:21:21'),(900,'jbrown - Invalid Login','2013-07-25 14:55:04'),(901,'jbrown - Invalid Login','2013-07-25 14:55:21'),(902,'dataentry - Invalid Login','2013-07-25 14:55:57'),(903,'lsnadataentry - Invalid Login','2013-07-25 14:55:59'),(904,'lsnadataentry - Invalid Login','2013-07-25 14:56:08'),(905,'LSNAdataentry - Invalid Login','2013-07-25 14:56:13'),(906,'logansquareuser - Logged In','2013-07-25 14:56:32'),(907,'logansquareuser - Logged In','2013-07-25 14:56:40'),(908,'ChicagoLawnUser - Logged In','2013-07-25 17:54:41'),(909,'cdonnelly@chapinhall.org - Logged In','2013-07-25 17:58:55'),(910,'ChicagoLawnUser - Logged In','2013-07-25 18:19:44'),(911,'cdonnelly@chapinhall.org - Logged In','2013-07-25 18:57:25'),(912,'cdonnelly@chapinhall.org - Logged In','2013-07-25 20:21:58'),(913,'ChicagoLawnUser - Logged In','2013-07-25 20:22:09'),(914,'cdonnelly@chapinhall.org - Logged In','2013-07-25 20:22:25'),(915,'ChicagoLawnUser - Logged In','2013-07-25 21:40:58'),(916,'ChicagoLawnUser - Logged In','2013-07-25 22:36:07'),(917,'cdonnelly@chapinhall.org - Logged In','2013-07-26 13:58:26'),(918,'cdonnelly@chapinhall.org - Logged In','2013-07-26 14:15:14'),(919,'mwilson@chapinhall.org - Logged In','2013-07-26 14:15:47'),(920,'ChicagoLawnUser - Logged In','2013-07-26 14:16:20'),(921,'cdonnelly@chapinhall.org - Logged In','2013-07-26 15:18:01'),(922,'LittleVillageUser - Logged In','2013-07-26 15:19:41'),(923,'LittleVillageUser - Logged In','2013-07-26 15:20:30'),(924,'kbocanegra - Logged In','2013-07-26 15:21:24'),(925,'LoganSquareUser - Logged In','2013-07-26 15:32:46'),(926,'LittleVillageUser - Logged In','2013-07-26 15:33:04'),(927,'kbocanegra - Logged In','2013-07-26 15:33:20'),(928,'dcooper - Logged In','2013-07-26 15:33:40'),(929,'kbocanegra - Logged In','2013-07-26 15:36:24'),(930,'mrodriguez - Logged In','2013-07-26 15:37:38'),(931,'dcooper - Logged In','2013-07-26 15:39:40'),(932,'cdonnelly@chapinhall.org - Logged In','2013-07-26 16:26:20'),(933,'littlevillageuser - Logged In','2013-07-26 18:32:10'),(934,'ChicagoLawnUser - Logged In','2013-07-26 19:51:45'),(935,'cdonnelly@chapinhall.org - Logged In','2013-07-26 20:02:49'),(936,'littlevillageuser - Logged In','2013-07-29 13:11:43'),(937,'cdonnelly@chapinhall.org - Logged In','2013-07-29 14:17:21'),(938,'ChicagoLawnUser - Logged In','2013-07-29 14:44:57'),(939,'littlevillageuser - Logged In','2013-07-29 17:13:51'),(940,'LittleVillageUser - Logged In','2013-07-29 18:01:52'),(941,'cdonnelly@chapinhall.org - Logged In','2013-07-29 19:11:16'),(942,'ChicagoLawnUser - Logged In','2013-07-29 19:31:24'),(943,'cdonnelly@chapinhall.org - Logged In','2013-07-30 13:58:37'),(944,'littlevillageuser - Logged In','2013-07-30 14:24:53'),(945,'LoganSquareUser - Logged In','2013-07-30 15:02:51'),(946,'LoganSquareUser - Logged In','2013-07-30 15:03:41'),(947,'LoganSquareUser - Logged In','2013-07-30 15:19:08'),(948,'pilsenuser - Logged In','2013-07-30 15:21:46'),(949,'littlevillageuser - Logged In','2013-07-30 21:10:16'),(950,'cdonnelly@chapinhall.org - Logged In','2013-07-30 21:19:04'),(951,'kbocanegra - Logged In','2013-07-30 21:24:31'),(952,'dcooper - Logged In','2013-07-30 21:24:53'),(953,'cdonnelly@chapinhall.org - Logged In','2013-07-31 14:05:27'),(954,'littlevillageuser - Logged In','2013-07-31 17:09:34'),(955,'chicagolawnuser - Logged In','2013-07-31 19:55:25'),(956,'cdonnelly@chapinhall.org - Logged In','2013-07-31 20:16:41'),(957,'chicagolawnuser - Logged In','2013-08-01 14:08:27'),(958,'cdonnelly@chapinhall.org - Logged In','2013-08-01 14:12:26'),(959,'pilsenuser - Logged In','2013-08-01 14:58:47'),(960,'troch@lisc.org - Logged In','2013-08-01 17:12:22'),(961,'pilsenuser - Logged In','2013-08-01 17:24:39'),(962,'cdonnelly@chapinhall.org - Logged In','2013-08-01 17:54:34'),(963,'PilsenUser - Invalid Login','2013-08-01 18:05:46'),(964,'PilsenUser - Logged In','2013-08-01 18:05:55'),(965,'PilsenUser - Logged In','2013-08-01 18:06:27'),(966,'PilsenUser - Logged In','2013-08-01 18:32:07'),(967,'cdonnelly@chapinhall.org - Logged In','2013-08-01 18:41:09'),(968,'PilsenUser - Logged In','2013-08-01 21:25:42'),(969,'cdonnelly@chapinhall.org - Logged In','2013-08-02 13:48:32'),(970,'chicagolawnuser - Logged In','2013-08-02 14:19:27'),(971,'pilsenuser - Logged In','2013-08-02 16:56:21'),(972,'chicagolawnuser - Logged In','2013-08-02 19:08:51'),(973,'pilsenuser - Logged In','2013-08-05 13:58:33'),(974,'cdonnelly@chapinhall.org - Logged In','2013-08-05 14:05:45'),(975,'LittleVillageUser - Logged In','2013-08-05 14:58:04'),(976,'ChicagoLawnUser - Logged In','2013-08-05 17:35:32'),(977,'SWOPDataEntry - Logged In','2013-08-05 17:36:31'),(978,'SWOPDataEntry - Logged In','2013-08-05 17:37:13'),(979,'SWOPViewer - Logged In','2013-08-05 17:37:28'),(980,'SWOPDataEntry - Logged In','2013-08-05 17:43:42'),(981,'troch@lisc.org - Logged In','2013-08-05 18:09:04'),(982,'kbocanegra - Logged In','2013-08-05 18:25:58'),(983,'Dcooper - Logged In','2013-08-05 18:37:31'),(984,'SWOPDataEntry - Logged In','2013-08-05 18:38:29'),(985,'SWOPViewer - Logged In','2013-08-05 18:43:24'),(986,'SWOPDataEntry - Logged In','2013-08-05 18:44:00'),(987,'SWOPDataEntry - Logged In','2013-08-05 18:44:32'),(988,'SWOPDataEntry - Logged In','2013-08-05 18:47:38'),(989,'SWOPDataEntry - Logged In','2013-08-05 18:48:35'),(990,'SWOPDataEntry - Logged In','2013-08-05 18:49:11'),(991,'SWOPDataEntry - Logged In','2013-08-05 18:49:30'),(992,'SWOPViewer - Logged In','2013-08-05 18:59:03'),(993,'SWOPViewer - Logged In','2013-08-05 19:01:48'),(994,'SWOPViewer - Logged In','2013-08-05 19:05:52'),(995,'ChicagoLawnUser - Logged In','2013-08-05 19:18:56'),(996,'cdonnelly@chapinhall.org - Logged In','2013-08-05 19:52:26'),(997,'cdonnelly@chapinhall.org - Logged In','2013-08-06 14:06:34'),(998,'chicagolawnuser - Logged In','2013-08-06 14:17:13'),(999,'cdonnelly@chapinhall.org - Logged In','2013-08-06 16:08:22'),(1000,'chicagolawnuser - Logged In','2013-08-06 20:43:07'),(1001,'cdonnelly@chapinhall.org - Logged In','2013-08-06 20:44:55'),(1002,'pilsenuser - Logged In','2013-08-06 21:10:36'),(1003,'humboldtparkuser - Logged In','2013-08-06 21:16:33'),(1004,'mwilson@chapinhall.org - Logged In','2013-08-06 21:17:11'),(1005,'humboldtparkuser - Logged In','2013-08-06 21:17:27'),(1006,'cdonnelly@chapinhall.org - Logged In','2013-08-06 21:17:54'),(1007,'mwilson@chapinhall.org - Logged In','2013-08-06 21:18:20'),(1008,'humboldtparkuser - Logged In','2013-08-06 21:18:52'),(1009,'pilsenuser - Logged In','2013-08-06 21:25:23'),(1010,'cdonnelly@chapinhall.org - Logged In','2013-08-07 13:50:48'),(1011,'chicagolawnuser - Logged In','2013-08-07 14:06:48'),(1012,'pilsenuser - Logged In','2013-08-07 16:32:18'),(1013,'Pilsen - Invalid Login','2013-08-07 17:23:33'),(1014,'Pilsen - Invalid Login','2013-08-07 17:23:37'),(1015,'Pilsen - Invalid Login','2013-08-07 17:23:53'),(1016,'Pilsen - Invalid Login','2013-08-07 17:24:38'),(1017,'cdonnelly@chapinhall.org - Logged In','2013-08-07 17:26:32'),(1018,'cdonnelly@chapinhall.org - Logged In','2013-08-07 19:13:32'),(1019,'cdonnelly@chapinhall.org - Logged In','2013-08-07 23:07:00'),(1020,'pilsenuser - Logged In','2013-08-08 13:27:31'),(1021,'hachanzar - Logged In','2013-08-08 13:39:25'),(1022,'uzatarain - Logged In','2013-08-08 13:39:51'),(1023,'cdonnelly@chapinhall.org - Logged In','2013-08-08 13:48:05'),(1024,'chicagolawnuser - Logged In','2013-08-08 14:14:39'),(1025,'chicagolawnuser - Logged In','2013-08-08 14:35:25'),(1026,'jalcazar - Logged In','2013-08-08 15:54:51'),(1027,'humboldtparkuser - Logged In','2013-08-08 18:48:29'),(1028,'chicagolawnuser - Logged In','2013-08-08 18:51:45'),(1029,'cdonnelly@chapinhall.org - Logged In','2013-08-08 19:21:58'),(1030,'cdonnelly@chapinhall.org - Logged In','2013-08-09 13:46:30'),(1031,'chicagolawnuser - Logged In','2013-08-09 13:51:25'),(1032,'humboldtparkuser - Logged In','2013-08-09 16:24:09'),(1033,'littlevillageuser - Logged In','2013-08-09 16:28:19'),(1034,'pilsenuser - Logged In','2013-08-09 16:31:14'),(1035,'logansquareuser - Logged In','2013-08-09 16:37:00'),(1036,'chicagolawnuser - Logged In','2013-08-09 16:42:17'),(1037,'chicagolawnuser - Logged In','2013-08-09 17:50:19'),(1038,'troch@lisc.org - Logged In','2013-08-09 17:58:59'),(1039,'ChicagoLawnUser - Logged In','2013-08-09 19:09:30'),(1040,'swopdataentry - Logged In','2013-08-09 19:35:06'),(1041,'cdonnelly@chapinhall.org - Logged In','2013-08-09 19:57:02'),(1042,'cdonnelly@chapinhall.org - Logged In','2013-08-12 14:05:22'),(1043,'littlevillageuser - Logged In','2013-08-12 14:40:01'),(1044,'littlevillageuser - Logged In','2013-08-12 18:26:12'),(1045,'littlevillageuser - Logged In','2013-08-12 18:32:50'),(1046,'cdonnelly@chapinhall.org - Logged In','2013-08-12 18:38:50'),(1047,'littlevillageuser - Logged In','2013-08-12 18:48:22'),(1048,'LittleVillageUser - Logged In','2013-08-12 18:59:58'),(1049,'LittleVillageUser - Logged In','2013-08-12 19:26:53'),(1050,'cdonnelly@chapinhall.org - Logged In','2013-08-13 14:06:19'),(1051,'chicagolawnuser - Logged In','2013-08-13 14:34:40'),(1052,'littlevillageuser - Logged In','2013-08-13 15:56:33'),(1053,'cdonnelly@chapinhall.org - Logged In','2013-08-13 18:25:03'),(1054,'LittleVillageUser - Logged In','2013-08-13 19:34:58'),(1055,'SWOPDataEntry - Logged In','2013-08-13 19:37:56'),(1056,'SWOPDataEntry - Logged In','2013-08-13 19:38:11'),(1057,'SWOPViewOnly - Invalid Login','2013-08-13 19:55:34'),(1058,'SWOPViewer - Logged In','2013-08-13 19:55:40'),(1059,'cdonnelly@chapinhall.org - Logged In','2013-08-13 20:18:21'),(1060,'chicagolawnuser - Logged In','2013-08-13 20:18:34'),(1061,'chicagolawnuser - Logged In','2013-08-14 14:21:34'),(1062,'cdonnelly@chapinhall.org - Logged In','2013-08-14 16:11:08'),(1063,'chicagolawnuser - Logged In','2013-08-14 18:26:17'),(1064,'cdonnelly@chapinhall.org - Logged In','2013-08-14 19:11:20'),(1065,'logansquareuser - Logged In','2013-08-14 19:34:52'),(1066,'chicagolawnuser - Logged In','2013-08-14 20:02:51'),(1067,'cdonnelly@chapinhall.org - Logged In','2013-08-14 20:37:09'),(1068,'cdonnelly@chapinhall.org - Logged In','2013-08-15 13:01:15'),(1069,'cdonnelly@chapinhall.org - Logged In','2013-08-15 14:08:53'),(1070,'chicagolawnuser - Logged In','2013-08-15 15:04:50'),(1071,'swopdataentry - Logged In','2013-08-15 15:29:06'),(1072,'littlevillageuser - Logged In','2013-08-15 15:59:36'),(1073,'chicagolawnuser - Logged In','2013-08-15 16:45:20'),(1074,'littlevillageuser - Logged In','2013-08-15 17:21:39'),(1075,'cdonnelly@chapinhall.org - Logged In','2013-08-15 17:24:41'),(1076,'jalcazar - Logged In','2013-08-15 17:35:22'),(1077,'jalcazar - Logged In','2013-08-15 17:35:26'),(1078,'jalcazar - Logged In','2013-08-15 17:35:43'),(1079,'littlevillageuser - Logged In','2013-08-15 20:28:56'),(1080,'cdonnelly@chapinhall.org - Logged In','2013-08-15 20:47:32'),(1081,'cdonnelly@chapinhall.org - Logged In','2013-08-15 20:47:38'),(1082,'troch@lisc.org - Logged In','2013-08-15 21:45:49'),(1083,'cdonnelly@chapinhall.org - Logged In','2013-08-16 14:30:08'),(1084,'ChicagoLawnUser - Logged In','2013-08-16 17:44:25'),(1085,'cdonnelly@chapinhall.org - Logged In','2013-08-16 18:05:20'),(1086,'cdonnelly@chapinhall.org - Logged In','2013-08-16 20:53:53'),(1087,'LittleVillageUser - Logged In','2013-08-19 13:38:44'),(1088,'cdonnelly@chapinhall.org - Logged In','2013-08-19 15:08:13'),(1089,'littlevillagedataentry - Invalid Login','2013-08-19 17:12:43'),(1090,'enlacedataentry - Logged In','2013-08-19 17:12:50'),(1091,'cdonnelly@chapinhall.org - Logged In','2013-08-19 18:24:20'),(1092,'kbocanegra - Logged In','2013-08-19 19:24:41'),(1093,'cdonnelly@chapinhall.org - Logged In','2013-08-20 14:07:09'),(1094,'LittleVillageUser - Logged In','2013-08-20 14:42:48'),(1095,'littlevillageuser - Logged In','2013-08-20 17:49:39'),(1096,'cdonnelly@chapinhall.org - Logged In','2013-08-20 17:52:14'),(1097,'SWOPFinances - Logged In','2013-08-20 18:32:11'),(1098,'SWOPFinances - Invalid Login','2013-08-20 18:36:19'),(1099,'SWOPFinances - Invalid Login','2013-08-20 18:36:23'),(1100,'SWOPFinances - Logged In','2013-08-20 18:36:27'),(1101,'SWOPFinances - Logged In','2013-08-20 18:37:05'),(1102,'SWOPDataEntry - Logged In','2013-08-20 18:37:31'),(1103,'SWOPFinances - Logged In','2013-08-20 18:46:21'),(1104,'DataFinances - Invalid Login','2013-08-20 18:52:05'),(1105,'DataFinances - Invalid Login','2013-08-20 18:52:09'),(1106,'SWOPFinances - Logged In','2013-08-20 18:52:17'),(1107,'SWOPDataEntry - Logged In','2013-08-20 18:52:35'),(1108,'cdonnelly@chapinhall.org - Logged In','2013-08-20 18:52:55'),(1109,'cdonnelly@chapinhall.org - Logged In','2013-08-20 18:54:26'),(1110,'cdonnelly@chapinhall.org - Logged In','2013-08-20 18:55:24'),(1111,'cdonnelly@chapinhall.org - Logged In','2013-08-20 18:56:06'),(1112,'cdonnelly@chapinhall.org - Logged In','2013-08-20 18:58:33'),(1113,'cdonnelly@chapinhall.org - Logged In','2013-08-20 18:59:00'),(1114,'cdonnelly@chapinhall.org - Logged In','2013-08-20 18:59:32'),(1115,'SWOPDataEntry - Logged In','2013-08-20 18:59:47'),(1116,'SWOPDataEntry - Logged In','2013-08-20 19:00:56'),(1117,'SWOPFinances - Logged In','2013-08-20 19:01:13'),(1118,'SWOPFinances - Logged In','2013-08-20 19:01:45'),(1119,'DataFinances - Invalid Login','2013-08-20 19:02:15'),(1120,'SWOPFinances - Logged In','2013-08-20 19:02:22'),(1121,'SWOPFinances - Logged In','2013-08-20 19:09:26'),(1122,'SWOPFinances - Logged In','2013-08-20 19:11:01'),(1123,'SWOPDataEntry - Logged In','2013-08-20 19:11:16'),(1124,'SWOPDataEntry - Logged In','2013-08-20 19:12:40'),(1125,'SWOPFinances - Logged In','2013-08-20 19:13:42'),(1126,'SWOPDataEntry - Logged In','2013-08-20 19:13:52'),(1127,'cdonnelly@chapinhall.org - Logged In','2013-08-20 19:15:40'),(1128,'SWOPFinances - Logged In','2013-08-20 19:15:51'),(1129,'SWOPDataEntry - Logged In','2013-08-20 19:16:02'),(1130,'SWOPFinances - Logged In','2013-08-20 19:16:20'),(1131,'SWOPFinances - Logged In','2013-08-20 19:16:27'),(1132,'SWOPFinances - Logged In','2013-08-20 19:18:08'),(1133,'SWOPDataEntry - Logged In','2013-08-20 19:18:23'),(1134,'cdonnelly@chapinhall.org - Logged In','2013-08-20 19:52:56'),(1135,'littlevillageuser - Logged In','2013-08-21 17:03:49'),(1136,'humboldtparkuser - Logged In','2013-08-21 19:13:23'),(1137,'chicagolawnuser - Logged In','2013-08-21 19:44:58'),(1138,'littlevillageuser - Logged In','2013-08-21 20:55:41'),(1139,'littlevillageuser - Logged In','2013-08-22 13:50:14'),(1140,'cdonnelly@chapinhall.org - Logged In','2013-08-22 16:00:38'),(1141,'LittleVillageUser - Logged In','2013-08-22 18:39:58'),(1142,'cdonnelly@chapinhall.org - Logged In','2013-08-22 19:01:41'),(1143,'cdonnelly@chapinhall.org - Logged In','2013-08-23 13:55:36'),(1144,'cdonnelly@chapinhall.org - Logged In','2013-08-23 16:57:40'),(1145,'cdonnelly@chapinhall.org - Logged In','2013-08-23 20:10:53'),(1146,'cdonnelly@chapinhall.org - Logged In','2013-08-26 13:52:08'),(1147,'chicagolawnuser - Logged In','2013-08-26 14:21:04'),(1148,'cdonnelly@chapinhall.orgq - Invalid Login','2013-08-26 17:57:37'),(1149,'cdonnelly@chapinhall.org - Logged In','2013-08-26 17:57:42'),(1150,'littlevillageuser - Logged In','2013-08-26 19:44:30'),(1151,'chicagolawnuser - Logged In','2013-08-26 20:02:42'),(1152,'logansquareuser - Logged In','2013-08-26 20:02:56'),(1153,'pilsenuser - Logged In','2013-08-26 20:03:06'),(1154,'littlevillageuser - Logged In','2013-08-26 20:11:14'),(1155,'cdonnelly@chapinhall.org - Logged In','2013-08-26 20:58:35'),(1156,'PilsenUser - Logged In','2013-08-26 21:11:07'),(1157,'pilsenuser - Logged In','2013-08-27 12:17:01'),(1158,'cdonnelly@chapinhall.org - Logged In','2013-08-27 14:10:38'),(1159,'littlevillageuser - Logged In','2013-08-27 14:58:54'),(1160,'cdonnelly@chapinhall.org - Logged In','2013-08-27 18:00:08'),(1161,'PilsenUser - Logged In','2013-08-27 18:31:38'),(1162,'hachanzar - Logged In','2013-08-27 18:34:03'),(1163,'paguilar - Logged In','2013-08-27 18:34:31'),(1164,'littlevillageuser - Logged In','2013-08-27 18:41:49'),(1165,'cdonnelly - Invalid Login','2013-08-27 18:44:20'),(1166,'cdonnelly@chapinhall.org - Logged In','2013-08-27 18:44:26'),(1167,'littlevillageuser - Logged In','2013-08-28 12:54:59'),(1168,'kbocanegra - Logged In','2013-08-28 13:57:25'),(1169,'littlevillageuser - Logged In','2013-08-28 16:06:12'),(1170,'cdonnelly@chapinhall.org - Logged In','2013-08-28 19:37:10'),(1171,'LittleVillageUser - Logged In','2013-08-28 20:03:30'),(1172,'cdonnelly@chapinhall.org - Logged In','2013-08-29 14:05:19'),(1173,'pilsenuser - Logged In','2013-08-29 15:13:45'),(1174,'cdonnelly@chapinhall.org - Logged In','2013-08-29 15:26:44'),(1175,'pilsenuser - Logged In','2013-08-29 15:34:19'),(1176,'paguilar - Logged In','2013-08-29 15:36:24'),(1177,'paguilar - Logged In','2013-08-29 15:41:18'),(1178,'uzatarain - Logged In','2013-08-29 15:41:54'),(1179,'cdonnelly@chapinhall.org - Logged In','2013-08-29 16:04:46'),(1180,'cdonnelly@chapinhall.org - Logged In','2013-08-29 20:08:41'),(1181,'cdonnelly@chapinhall.org - Logged In','2013-08-29 20:27:29'),(1182,'cdonnelly@chapinhall.org - Logged In','2013-08-29 20:55:20'),(1183,'cdonnelly@chapinhall.org - Logged In','2013-08-29 20:55:40'),(1184,'cdonnelly@chapinhall.org - Logged In','2013-08-29 20:55:48'),(1185,'cdonnelly@chapinhall.org - Logged In','2013-08-30 14:04:59'),(1186,'cdonnelly@chapinhall.org - Logged In','2013-08-30 17:10:54'),(1187,'cdonnelly@chapinhall.org - Logged In','2013-09-03 14:06:04'),(1188,'cdonnelly@chapinhall.org - Logged In','2013-09-03 18:04:13'),(1189,'cdonnelly@chapinhall.org - Logged In','2013-09-04 14:21:51'),(1190,'cdonnelly@chapinhall.org - Logged In','2013-09-04 18:32:06'),(1191,'ChicagoLawnUser - Logged In','2013-09-04 19:11:48'),(1192,'littlevillageuser - Logged In','2013-09-04 19:49:39'),(1193,'cdonnelly@chapinhall.org - Logged In','2013-09-04 21:02:17'),(1194,'cdonnelly@chapinhall.org - Logged In','2013-09-05 14:00:57'),(1195,'ChicagoLawnUser - Logged In','2013-09-05 18:51:30'),(1196,'cdonnelly@chapinhall.org - Logged In','2013-09-05 20:40:04'),(1197,'cdonnelly - Logged In','2013-09-06 13:49:07'),(1198,'cdonnelly - Logged In','2013-09-06 16:52:47'),(1199,'vgalvan - Invalid Login','2013-09-06 18:32:02'),(1200,'ChicagoLawnUser - Logged In','2013-09-06 18:32:45'),(1201,'cdonnelly - Logged In','2013-09-06 19:52:36'),(1202,'ChicagoLawnUser - Logged In','2013-09-09 18:05:56'),(1203,'cdonnelly - Logged In','2013-09-09 19:17:08'),(1204,'ChicagoLawnUser - Logged In','2013-09-09 21:56:11'),(1205,'cdonnelly - Logged In','2013-09-10 14:12:04'),(1206,'cdonnelly@chapinhall.org - Invalid Login','2013-09-10 16:17:35'),(1207,'littlevillageuser - Logged In','2013-09-10 16:18:33'),(1208,'cdonnelly - Logged In','2013-09-10 16:18:56'),(1209,'cdonnelly - Logged In','2013-09-10 17:27:01'),(1210,'enlacedataentry - Logged In','2013-09-10 17:28:03'),(1211,'cdonnelly - Logged In','2013-09-10 17:48:33'),(1212,'cdonnelly - Logged In','2013-09-10 20:30:35'),(1213,'jalcazar - Logged In','2013-09-10 21:34:20'),(1214,'cdonnelly - Logged In','2013-09-11 14:25:49'),(1215,'cdonnelly - Logged In','2013-09-11 19:35:02'),(1216,'ChicagoLawnUser - Logged In','2013-09-11 20:12:32'),(1217,'cdonnelly - Logged In','2013-09-11 20:22:38'),(1218,'SWOPDataEntry - Logged In','2013-09-11 20:28:33'),(1219,'SWOPFinances - Logged In','2013-09-11 20:28:46'),(1220,'SWOPDataEntry - Logged In','2013-09-11 20:29:49'),(1221,'SWOPDataEntry - Logged In','2013-09-11 20:33:54'),(1222,'cdonnelly - Logged In','2013-09-11 20:42:36'),(1223,'Jalcazar - Invalid Login','2013-09-12 17:30:35'),(1224,'Jalcazar - Logged In','2013-09-12 17:30:46'),(1225,'cdonnelly - Logged In','2013-09-12 20:58:08'),(1226,'cdonnelly - Logged In','2013-09-13 18:26:23'),(1227,'cdonnelly - Logged In','2013-09-13 21:26:52'),(1228,'cdonnelly - Logged In','2013-09-16 14:24:20'),(1229,'cdonnelly - Logged In','2013-09-16 17:25:06'),(1230,'cdonnelly - Logged In','2013-09-16 20:35:06'),(1231,'cdonnelly - Logged In','2013-09-17 14:01:53'),(1232,'cdonnelly - Logged In','2013-09-17 18:06:31'),(1233,'cdonnelly - Logged In','2013-09-18 14:02:17'),(1234,'cdonnelly - Logged In','2013-09-18 17:37:39'),(1235,'cdonnelly - Logged In','2013-09-18 20:42:32'),(1236,'cdonnelly - Logged In','2013-09-19 14:00:41'),(1237,'LoganSquareUser - Logged In','2013-09-19 16:53:30'),(1238,'cdonnelly - Logged In','2013-09-19 17:21:51'),(1239,'cdonnelly - Logged In','2013-09-19 20:22:12'),(1240,'cdonnelly - Logged In','2013-09-23 13:58:14'),(1241,'LoganSquareUser - Logged In','2013-09-23 15:05:25'),(1242,'cdonnelly - Logged In','2013-09-23 17:34:49'),(1243,' ChicagoLawnUser - Invalid Login','2013-09-23 17:43:40'),(1244,' ChicagoLawnUser - Invalid Login','2013-09-23 17:43:47'),(1245,' ChicagoLawnUser - Invalid Login','2013-09-23 17:43:53'),(1246,' ChicagoLawnUser - Invalid Login','2013-09-23 17:44:15'),(1247,' ChicagoLawnUser - Invalid Login','2013-09-23 17:44:15'),(1248,'ChicagoLawnUser - Logged In','2013-09-23 17:44:59'),(1249,'logansquareuser - Logged In','2013-09-23 18:06:08'),(1250,'chicagolawnuser - Logged In','2013-09-23 19:23:41'),(1251,'LSNADataentry - Invalid Login','2013-09-23 20:02:11'),(1252,'lsnadataentry - Invalid Login','2013-09-23 20:02:20'),(1253,'LoganSquare - Invalid Login','2013-09-23 20:02:30'),(1254,'LSNAUser - Invalid Login','2013-09-23 20:02:46'),(1255,'LoganSquareUser - Logged In','2013-09-23 20:02:52'),(1256,'cdonnelly - Logged In','2013-09-23 20:46:28'),(1257,'cdonnelly - Logged In','2013-09-24 14:12:23'),(1258,'cdonnelly - Logged In','2013-09-24 18:12:04'),(1259,'cdonnelly - Logged In','2013-09-25 14:02:03'),(1260,'cdonnelly - Logged In','2013-09-25 17:02:41'),(1261,'cdonnelly - Logged In','2013-09-25 20:03:04'),(1262,'kbocanegra - Logged In','2013-09-25 20:40:28'),(1263,'cdonnelly - Logged In','2013-09-26 14:02:04'),(1264,'troch@lisc.org - Logged In','2013-09-26 15:54:24'),(1265,'troch@lisc.org - Logged In','2013-09-26 19:04:34'),(1266,'cdonnelly - Logged In','2013-09-26 19:40:31'),(1267,'cdonnelly - Logged In','2013-09-27 14:00:22'),(1268,'cdonnelly - Logged In','2013-09-27 17:01:06'),(1269,'cdonnelly - Logged In','2013-09-27 20:27:29'),(1270,'cdonnelly - Logged In','2013-09-30 13:58:45'),(1271,'cdonnelly - Logged In','2013-09-30 17:00:58'),(1272,'cdonnelly - Logged In','2013-09-30 20:12:43'),(1273,'cdonnelly - Logged In','2013-10-01 13:52:36'),(1274,'sdeoleo - Invalid Login','2013-10-01 16:57:27'),(1275,'sdeoleo - Invalid Login','2013-10-01 16:57:31'),(1276,'Sdeoleo - Invalid Login','2013-10-01 16:57:38'),(1277,'LoganSquareUser - Logged In','2013-10-01 16:57:48'),(1278,'cdonnelly - Logged In','2013-10-01 17:58:46'),(1279,'cdonnelly - Logged In','2013-10-01 19:02:07'),(1280,'cdonnelly - Logged In','2013-10-02 14:54:25'),(1281,'cdonnelly - Logged In','2013-10-02 15:01:37'),(1282,'LoganSquareUser - Logged In','2013-10-02 15:27:05'),(1283,'cdonnelly - Logged In','2013-10-02 18:02:13'),(1284,'logansquareuser - Logged In','2013-10-02 20:53:39'),(1285,'cdonnelly - Logged In','2013-10-02 21:02:18'),(1286,'cdonnelly - Logged In','2013-10-03 13:31:46'),(1287,'paguilar - Logged In','2013-10-03 14:13:34'),(1288,'ChicagoLawnUser - Logged In','2013-10-03 14:13:42'),(1289,'vgalvan - Invalid Login','2013-10-03 14:14:00'),(1290,'SWOPDataEntry - Logged In','2013-10-03 14:17:32'),(1291,'SWOPDataEntry - Logged In','2013-10-03 14:18:01'),(1292,'SWOPDataEntry - Logged In','2013-10-03 14:18:44'),(1293,'SWOPDataEntry - Logged In','2013-10-03 14:56:06'),(1294,'cdonnelly - Logged In','2013-10-03 14:56:18'),(1295,'cdonnelly - Logged In','2013-10-03 19:18:33'),(1296,'cdonnelly - Logged In','2013-10-03 21:07:15'),(1297,'cdonnelly - Logged In','2013-10-04 13:58:10'),(1298,'cdonnelly - Logged In','2013-10-04 18:31:53'),(1299,'cdonnelly - Logged In','2013-10-07 13:46:48'),(1300,'troch@lisc.org - Logged In','2013-10-07 14:42:28'),(1301,'cdonnelly - Logged In','2013-10-07 15:23:25'),(1302,'cdonnelly - Logged In','2013-10-07 18:47:07'),(1303,'cdonnelly - Logged In','2013-10-08 14:22:50'),(1304,'cdonnelly - Logged In','2013-10-08 17:38:58'),(1305,'cdonnelly - Logged In','2013-10-08 20:49:29'),(1306,'cdonnelly - Logged In','2013-10-09 14:25:37'),(1307,'cdonnelly - Logged In','2013-10-09 18:24:09'),(1308,'cdonnelly - Logged In','2013-10-10 13:56:46'),(1309,'cdonnelly - Logged In','2013-10-10 17:42:35'),(1310,'cdonnelly - Logged In','2013-10-10 20:42:41'),(1311,'cdonnelly - Logged In','2013-10-11 15:09:20'),(1312,'cdonnelly - Logged In','2013-10-11 18:19:04'),(1313,'cdonnelly - Logged In','2013-10-14 14:12:29'),(1314,'cdonnelly - Logged In','2013-10-14 17:39:27'),(1315,'cdonnelly - Logged In','2013-10-14 20:44:28'),(1316,'cdonnelly - Logged In','2013-10-15 13:58:34'),(1317,'cdonnelly - Logged In','2013-10-15 17:00:20'),(1318,'cdonnelly - Logged In','2013-10-16 14:06:09'),(1319,'logansquareuser - Logged In','2013-10-16 15:30:50'),(1320,'cdonnelly - Logged In','2013-10-16 17:51:24'),(1321,'cdonnelly - Logged In','2013-10-16 20:51:21'),(1322,'admin - Invalid Login','2013-10-17 15:28:48'),(1323,'cdonnelly - Logged In','2013-10-17 15:28:54'),(1324,'cdonnelly - Invalid Login','2013-10-17 19:24:57'),(1325,'cdonnelly - Logged In','2013-10-17 19:25:01'),(1326,'cdonnelly - Logged In','2013-10-18 13:53:04'),(1327,'cdonnelly - Logged In','2013-10-18 18:06:25'),(1328,'cdonnelly - Logged In','2013-10-21 15:25:07'),(1329,'cdonnelly - Logged In','2013-10-21 18:28:03'),(1330,'cdonnelly - Logged In','2013-10-22 18:50:31'),(1331,'cdonnelly - Logged In','2013-10-23 13:59:22'),(1332,'cdonnelly - Logged In','2013-10-23 18:24:15'),(1333,'cdonnelly - Logged In','2013-10-24 14:07:53'),(1334,'pbarry - Logged In','2013-10-24 16:48:17'),(1335,'pbarry - Logged In','2013-10-24 16:50:11'),(1336,'cdonnelly - Logged In','2013-10-24 16:52:16'),(1337,'pbarry - Logged In','2013-10-24 16:58:40'),(1338,'cdonnelly - Logged In','2013-10-24 20:07:59'),(1339,'cdonnelly - Logged In','2013-10-25 14:04:55'),(1340,'cdonnelly - Logged In','2013-10-25 17:09:01'),(1341,'cdonnelly - Logged In','2013-10-29 20:51:50'),(1342,'troch@lisc.org - Logged In','2013-10-29 21:50:16'),(1343,'cdonnelly - Logged In','2013-10-30 14:16:19'),(1344,'cdonnelly - Logged In','2013-10-30 19:45:02'),(1345,'cdonnelly - Invalid Login','2013-10-31 14:06:20'),(1346,'cdonnelly - Logged In','2013-10-31 14:06:26'),(1347,'cdonnelly - Logged In','2013-10-31 17:44:28'),(1348,'cdonnelly - Logged In','2013-11-01 14:00:55'),(1349,'cdonnelly - Logged In','2013-11-01 17:31:25'),(1350,'cdonnelly - Logged In','2013-11-01 20:37:56'),(1351,'cdonnelly - Logged In','2013-11-04 14:59:05'),(1352,'cdonnelly - Invalid Login','2013-11-11 18:51:50'),(1353,'cdonnelly - Invalid Login','2013-11-11 18:51:54'),(1354,'cdonnelly - Logged In','2013-11-11 18:51:56'),(1355,'cdonnelly - Logged In','2013-11-12 15:04:16'),(1356,'cdonnelly - Logged In','2013-11-12 20:17:03'),(1357,'cdonnelly@chapinhall.org - Invalid Login','2013-11-12 21:55:26'),(1358,'cdonnelly@chapinhall.org - Invalid Login','2013-11-12 21:55:28'),(1359,'jgawel - Logged In','2013-11-12 22:01:19'),(1360,'cdonnelly - Logged In','2013-11-13 15:05:41'),(1361,'cdonnelly - Logged In','2013-11-13 18:16:01'),(1362,'cdonnelly - Logged In','2013-11-14 15:04:00'),(1363,'cdonnelly - Logged In','2013-11-14 18:08:51'),(1364,'jgawel - Logged In','2013-11-14 19:19:35'),(1365,'cdonnelly - Logged In','2013-11-15 15:07:52'),(1366,'cdonnelly - Logged In','2013-11-15 20:53:10'),(1367,'cdonnelly - Logged In','2013-11-18 21:09:14'),(1368,'krak - Invalid Login','2013-11-18 22:11:18'),(1369,'kbocanegra - Logged In','2013-11-18 22:11:28'),(1370,'mrodriguez - Logged In','2013-11-18 22:19:32'),(1371,'hachanzar - Logged In','2013-11-18 22:28:28'),(1372,'paguilar - Logged In','2013-11-18 22:29:01'),(1373,'kbocanegra - Logged In','2013-11-19 14:47:58'),(1374,'troch@lisc.org - Logged In','2013-11-19 21:52:43'),(1375,'admin - Logged In','2013-11-20 18:58:26'),(1376,'admin - Logged In','2013-11-20 20:08:23'),(1377,'pilsenuser - Logged In','2013-11-22 14:48:35'),(1378,'pilsenuser - Logged In','2013-11-22 14:52:42'),(1379,'PilsenUser - Logged In','2013-11-22 16:01:01'),(1380,'admin - Logged In','2013-11-22 16:16:33'),(1381,'PilsenUser - Logged In','2013-11-22 16:42:59'),(1382,'PilsenUser - Logged In','2013-11-22 18:05:33'),(1383,'Dcooper - Logged In','2013-11-25 21:39:26'),(1384,'PilsenUser - Logged In','2013-12-02 20:13:07'),(1385,'Dcooper - Logged In','2013-12-06 18:39:48'),(1386,'troch@lisc.org - Logged In','2013-12-10 19:01:22'),(1387,'tboharic - Invalid Login','2013-12-11 15:15:04'),(1388,'EnlaceDataEntry - Logged In','2013-12-11 15:16:34'),(1389,'EnlaceDataEntry - Logged In','2013-12-11 18:37:29'),(1390,'EnlaceDataEntry - Logged In','2013-12-11 21:38:28'),(1391,'paguilar - Logged In','2013-12-11 21:39:47'),(1392,'paguilar - Logged In','2013-12-11 21:40:14'),(1393,'EnlaceDataEntry - Logged In','2013-12-12 14:17:59'),(1394,'paguilar - Logged In','2013-12-12 14:18:33'),(1395,'EnlaceDataEntry - Logged In','2013-12-13 19:07:49'),(1396,'paguilar - Logged In','2013-12-13 19:08:05'),(1397,'paguilar - Logged In','2013-12-16 20:50:20'),(1398,'paguilar - Logged In','2013-12-17 14:43:06'),(1399,'paguilar - Logged In','2013-12-18 20:56:57'),(1400,'paguilar - Logged In','2013-12-19 14:22:29'),(1401,'paguilar - Logged In','2013-12-19 20:31:38'),(1402,'paguilar - Logged In','2013-12-19 21:45:54'),(1403,'Dcooper - Logged In','2013-12-19 22:56:14'),(1404,'paguilar - Logged In','2013-12-20 15:43:07'),(1405,'paguilar - Logged In','2013-12-20 16:46:11'),(1406,'paguilar - Logged In','2013-12-20 19:46:36'),(1407,'troch@lisc.org - Logged In','2013-12-20 20:09:13'),(1408,'paguilar - Logged In','2013-12-23 14:48:38'),(1409,'vgalvan - Invalid Login','2013-12-23 20:04:25'),(1410,'swopdataentry - Logged In','2013-12-23 20:05:33'),(1411,'SWOPDataEntry - Logged In','2013-12-23 22:05:26'),(1412,'SWOPDataEntry - Logged In','2013-12-24 15:13:36'),(1413,'paguilar - Logged In','2013-12-30 18:21:19'),(1414,'paguilar - Logged In','2013-12-30 18:35:18'),(1415,'troch@lisc.org - Logged In','2013-12-30 19:16:34'),(1416,'hpadmin - Logged In','2013-12-30 21:04:02'),(1417,'hpdataentry - Logged In','2013-12-30 21:04:12'),(1418,'hpdataentry - Logged In','2013-12-30 21:04:22'),(1419,'hpdataentry - Logged In','2013-12-31 14:22:36'),(1420,'hpdataentry - Logged In','2013-12-31 14:22:45'),(1421,'HPDataEntry - Logged In','2013-12-31 17:26:10'),(1422,'HumboldtParkUser - Logged In','2014-01-02 15:39:51'),(1423,'EnlaceDataEntry - Logged In','2014-01-02 16:13:48'),(1424,'hpdataentry - Logged In','2014-01-02 17:25:10'),(1425,'enlacedataentry - Logged In','2014-01-02 17:25:27'),(1426,'paguilar - Logged In','2014-01-02 18:04:20'),(1427,'pilsenuser - Logged In','2014-01-02 20:50:48'),(1428,'pilsenuser - Logged In','2014-01-02 20:51:08'),(1429,'admin - Logged In','2014-01-02 21:51:15'),(1430,'admin - Logged In','2014-01-03 15:39:08'),(1431,'admin - Logged In','2014-01-03 18:36:40'),(1432,'admin - Logged In','2014-01-03 22:05:44'),(1433,'admin - Logged In','2014-01-03 23:48:47'),(1434,'admin - Logged In','2014-01-04 02:51:07'),(1435,'admin - Logged In','2014-01-04 14:42:37'),(1436,'admin - Logged In','2014-01-04 21:36:12'),(1437,'Dcooper - Logged In','2014-01-06 18:59:16'),(1438,'Dcooper - Logged In','2014-01-06 19:46:56'),(1439,'dcooper - Logged In','2014-01-06 19:52:23'),(1440,'admin - Logged In','2014-01-07 20:22:41'),(1441,'admin - Logged In','2014-01-08 01:27:20'),(1442,'admin - Logged In','2014-01-08 15:38:10'),(1443,'admin - Logged In','2014-01-08 20:31:46'),(1444,'troch@lisc.org - Logged In','2014-01-08 22:23:42'),(1445,'admin - Logged In','2014-01-08 23:33:24'),(1446,'admin - Logged In','2014-01-09 16:11:02'),(1447,'admin - Logged In','2014-01-09 20:02:02'),(1448,'admin - Logged In','2014-01-09 23:04:47'),(1449,'admin - Logged In','2014-01-10 14:48:51'),(1450,'admin - Logged In','2014-01-10 18:27:10'),(1451,'admin - Logged In','2014-01-10 21:31:59'),(1452,'admin - Logged In','2014-01-13 20:26:49'),(1453,'admin - Logged In','2014-01-14 18:28:28'),(1454,'jalcazar - Invalid Login','2014-01-15 23:57:47'),(1455,'jalcazar - Logged In','2014-01-15 23:57:51'),(1456,'admin - Logged In','2014-01-22 17:43:12'),(1457,'admin - Logged In','2014-01-22 19:49:44'),(1458,'admin - Logged In','2014-01-23 14:08:50'),(1459,'jgawel - Logged In','2014-01-28 16:49:40'),(1460,'troch@lisc.org - Logged In','2014-01-29 21:38:05'),(1461,'admin - Logged In','2014-02-03 20:45:30'),(1462,'admin - Logged In','2014-02-04 16:11:03'),(1463,'admin - Logged In','2014-02-04 16:34:46'),(1464,'admin - Logged In','2014-02-04 19:28:50'),(1465,'admin - Logged In','2014-02-05 15:48:14'),(1466,'admin - Logged In','2014-02-05 20:51:49'),(1467,'admin - Logged In','2014-02-06 17:38:42'),(1468,'admin - Logged In','2014-02-07 15:15:09'),(1469,'admin - Logged In','2014-02-07 18:20:39'),(1470,'admin - Logged In','2014-02-10 15:19:05'),(1471,'admin - Logged In','2014-02-10 16:50:38'),(1472,'admin - Logged In','2014-02-10 19:22:22'),(1473,'admin - Logged In','2014-02-10 19:27:14'),(1474,'admin - Logged In','2014-02-11 15:11:37'),(1475,'admin - Logged In','2014-02-11 18:39:24'),(1476,'admin - Logged In','2014-02-24 16:29:42'),(1477,'admin - Logged In','2014-02-25 17:07:28'),(1478,'admin - Logged In','2014-02-25 20:19:17'),(1479,'admin - Logged In','2014-02-26 19:27:50'),(1480,'PilsenUser - Logged In','2014-02-27 16:00:58'),(1481,'admin - Logged In','2014-02-27 18:03:15'),(1482,'admin - Logged In','2014-02-27 19:35:02'),(1483,'admin - Logged In','2014-02-27 20:48:23'),(1484,'admin - Logged In','2014-02-27 21:15:04'),(1485,'admin - Logged In','2014-02-28 20:23:36'),(1486,'admin - Logged In','2014-03-03 14:14:56'),(1487,'admin - Logged In','2014-03-03 17:33:27'),(1488,'admin - Logged In','2014-03-03 18:17:45'),(1489,'vrizzi - Invalid Login','2014-03-05 17:01:44'),(1490,'vrizzi - Invalid Login','2014-03-05 17:02:00'),(1491,'vrizzi - Invalid Login','2014-03-05 17:02:09'),(1492,'vrizzi - Invalid Login','2014-03-05 17:02:21'),(1493,'vrizzi - Invalid Login','2014-03-05 17:02:41'),(1494,'uzatarain - Logged In','2014-03-05 17:03:06'),(1495,'admin - Logged In','2014-03-05 21:26:55'),(1496,'admin - Logged In','2014-03-06 16:26:13'),(1497,'admin - Logged In','2014-03-06 19:52:47'),(1498,'admin - Logged In','2014-03-07 16:40:56'),(1499,'admin - Logged In','2014-03-07 20:32:59'),(1500,'admin - Logged In','2014-03-10 15:44:20'),(1501,'dataentry - Invalid Login','2014-03-10 17:59:37'),(1502,'sdeoleo - Invalid Login','2014-03-10 17:59:51'),(1503,'sdeoleo - Invalid Login','2014-03-10 17:59:55'),(1504,'sdeoleo - Invalid Login','2014-03-10 18:00:02'),(1505,'SDEOLEO - Invalid Login','2014-03-10 18:00:09'),(1506,'SDEOLEO - Invalid Login','2014-03-10 18:00:18'),(1507,'sdeoleo - Invalid Login','2014-03-10 18:00:26'),(1508,'sdeoleo - Invalid Login','2014-03-10 18:00:36'),(1509,'sdeoleo - Invalid Login','2014-03-10 18:00:47'),(1510,'LoganSquaredataentry - Invalid Login','2014-03-10 18:01:25'),(1511,'DataEntry - Invalid Login','2014-03-10 18:01:40'),(1512,'syanun - Invalid Login','2014-03-10 18:01:54'),(1513,'SDEOLEO - Invalid Login','2014-03-10 18:02:10'),(1514,'SDEOLEO - Invalid Login','2014-03-10 18:04:14'),(1515,'SDEOLEO - Invalid Login','2014-03-10 18:04:16'),(1516,'SDEOLEO - Invalid Login','2014-03-10 18:04:27'),(1517,'syanun - Invalid Login','2014-03-10 18:05:22'),(1518,'admin - Logged In','2014-03-10 18:54:39'),(1519,'admin - Logged In','2014-03-11 19:15:29'),(1520,'admin - Logged In','2014-03-12 18:44:05'),(1521,'admin - Logged In','2014-03-13 16:23:57'),(1522,'admin - Logged In','2014-03-13 19:31:33'),(1523,'admin - Logged In','2014-03-17 16:12:07'),(1524,'admin - Logged In','2014-03-17 19:04:02'),(1525,'admin - Logged In','2014-03-18 13:51:42'),(1526,'admin - Logged In','2014-03-18 18:50:01'),(1527,'admin - Logged In','2014-03-18 20:08:52'),(1528,'admin - Logged In','2014-03-19 16:23:18'),(1529,'admin - Logged In','2014-03-20 13:10:50'),(1530,'ChicagoLawnUser - Logged In','2014-03-21 15:35:45'),(1531,'admin - Logged In','2014-03-22 19:34:15'),(1532,'admin - Logged In','2014-03-24 15:19:34'),(1533,'LSNAdataentry - Invalid Login','2014-03-24 15:35:20'),(1534,'LSNADataentry - Invalid Login','2014-03-24 15:36:05'),(1535,'admin - Logged In','2014-03-24 19:17:02'),(1536,'admin - Logged In','2014-03-25 18:17:20'),(1537,'admin - Logged In','2014-03-26 14:45:26'),(1538,'admin - Logged In','2014-03-26 17:47:44'),(1539,'admin - Logged In','2014-03-27 15:23:14'),(1540,'admin - Logged In','2014-03-27 20:24:15'),(1541,'admin - Logged In','2014-03-28 15:53:35'),(1542,'admin - Logged In','2014-03-30 15:45:47'),(1543,'troch@lisc.org - Logged In','2014-03-30 16:32:01'),(1544,'admin - Logged In','2014-03-31 16:13:39'),(1545,'admin - Logged In','2014-03-31 19:24:23'),(1546,'admin - Logged In','2014-04-01 12:06:53'),(1547,'admin - Logged In','2014-04-01 15:08:37'),(1548,'troch@lisc.org - Logged In','2014-04-01 17:33:27'),(1549,'admin - Logged In','2014-04-01 18:17:21'),(1550,'admin - Logged In','2014-04-01 18:48:08'),(1551,'admin - Logged In','2014-04-02 14:19:49'),(1552,'admin - Logged In','2014-04-03 11:58:39'),(1553,'admin - Logged In','2014-04-03 15:06:14'),(1554,'admin - Logged In','2014-04-03 18:12:05'),(1555,'admin - Logged In','2014-04-08 12:05:32'),(1556,'admin - Logged In','2014-04-08 17:01:11'),(1557,'admin - Logged In','2014-04-10 12:21:02'),(1558,'admin - Logged In','2014-04-10 19:47:00'),(1559,'troch@lisc.org - Invalid Login','2014-04-14 14:12:25'),(1560,'troch@lisc.org - Logged In','2014-04-14 14:12:27'),(1561,'admin - Logged In','2014-04-14 14:32:27'),(1562,'troch@lisc.org - Logged In','2014-04-14 19:18:44'),(1563,'admin - Logged In','2014-04-15 12:21:19'),(1564,'vrizzi - Logged In','2014-04-15 13:06:20'),(1565,'admin - Logged In','2014-04-15 13:08:32'),(1566,'admin - Logged In','2014-04-15 16:27:43'),(1567,'vrizzi - Logged In','2014-04-15 17:45:09'),(1568,'admin - Logged In','2014-04-15 19:29:19'),(1569,'admin - Logged In','2014-04-16 14:57:45'),(1570,'vrizzi - Logged In','2014-04-16 19:55:20'),(1571,'admin - Logged In','2014-04-17 14:21:41'),(1572,'vrizzi - Logged In','2014-04-17 17:18:32'),(1573,'admin - Logged In','2014-04-17 17:29:15'),(1574,'troch@lisc.org - Invalid Login','2014-04-17 17:29:18'),(1575,'troch@lisc.org - Logged In','2014-04-17 17:29:21'),(1576,'admin - Logged In','2014-04-17 20:36:40'),(1577,'admin - Logged In','2014-04-22 12:17:04'),(1578,'admin - Logged In','2014-04-22 18:21:55'),(1579,'roch@lisc.org - Invalid Login','2014-04-28 18:39:39'),(1580,'roch@lisc.org - Invalid Login','2014-04-28 18:39:47'),(1581,'troch@lisc.org - Logged In','2014-04-28 18:44:09'),(1582,'admin - Logged In','2014-04-29 12:08:18'),(1583,'admin - Logged In','2014-04-29 15:14:55'),(1584,'admin - Logged In','2014-05-01 11:56:16'),(1585,'admin - Logged In','2014-05-01 14:58:00'),(1586,'admin - Logged In','2014-05-01 18:09:41'),(1587,'admin - Logged In','2014-05-06 12:19:26'),(1588,'admin - Logged In','2014-05-06 15:22:20'),(1589,'troch@lisc.org - Logged In','2014-05-06 18:47:49'),(1590,'admin - Logged In','2014-05-07 16:29:58'),(1591,'admin - Logged In','2014-05-08 12:31:29'),(1592,'kfogel - Logged In','2014-05-08 14:15:14'),(1593,'kfogel - Logged In','2014-05-08 23:12:54'),(1594,'admin - Logged In','2014-05-12 17:00:58'),(1595,'admin - Logged In','2014-05-13 12:34:12'),(1596,'admin - Logged In','2014-05-13 18:30:45'),(1597,'admin - Logged In','2014-05-14 14:50:43'),(1598,'slynjones - Invalid Login','2014-05-14 15:24:58'),(1599,'slynjones - Invalid Login','2014-05-14 15:25:03'),(1600,'slynjones - Logged In','2014-05-14 15:34:01'),(1601,'slynjones - Logged In','2014-05-14 16:33:52'),(1602,'admin - Logged In','2014-05-14 19:10:04');
/*!40000 ALTER TABLE `Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Privileges`
--

DROP TABLE IF EXISTS `Privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Privileges` (
  `Privilege_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Privilege_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Privilege_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Privileges`
--

LOCK TABLES `Privileges` WRITE;
/*!40000 ALTER TABLE `Privileges` DISABLE KEYS */;
INSERT INTO `Privileges` VALUES (1,'All_Sites'),(2,'Logan Square Neighborhood Association'),(3,'Bickerdike'),(4,'The Resurrection Project'),(5,'Southwest Organizing Project'),(6,'Enlace');
/*!40000 ALTER TABLE `Privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Site_Privileges`
--

DROP TABLE IF EXISTS `Site_Privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Site_Privileges` (
  `Site_Privilege_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Site_Privilege_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Site_Privilege_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Site_Privileges`
--

LOCK TABLES `Site_Privileges` WRITE;
/*!40000 ALTER TABLE `Site_Privileges` DISABLE KEYS */;
INSERT INTO `Site_Privileges` VALUES (1,'Administrator'),(2,'Data Entry'),(3,'Viewer');
/*!40000 ALTER TABLE `Site_Privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Email` varchar(45) DEFAULT NULL,
  `User_Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','password'),(2,'mwilson@chapinhall.org','kuscheltier'),(3,'HumboldtParkUser','bickerdike'),(4,'LoganSquareUser','lsna'),(11,'TESTviewONLY','hide'),(12,'HPDataEntry','testing'),(13,'HPAdmin','bickerdike'),(14,'NewUser','new'),(15,'testPartnerAcct','test'),(16,'PilsenUser','trp'),(17,'ChicagoLawnUser','swop'),(18,'LittleVillageUser','enlace'),(19,'troch@lisc.org','taryn'),(20,'LSNADataEntry','lsna'),(21,'LSNAViewer','viewonly'),(22,'jpcirre@aol.com','ttmlsna'),(23,'kbocanegra','kbocanegra'),(25,'dcooper','dcooper'),(26,'mrodriguez','mrodriguez'),(27,'uzatarain','uzatarain'),(28,'SWOPDataEntry','data'),(29,'SWOPFinances','finance'),(30,'jalcazar','jalcazar'),(31,'hachanzar','hachanzar'),(32,'EnlaceDataEntry','data'),(33,'paguilar','paguilar'),(34,'pbarry','pbarry'),(35,'jgawel','jgawel'),(36,'vrizzi','vrizzi'),(37,'kfogel','uaqiaEse0ehS'),(38,'slynjones','Austin2013');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Privileges`
--

DROP TABLE IF EXISTS `Users_Privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Privileges` (
  `Users_Privileges_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) DEFAULT NULL,
  `Privilege_Id` int(11) DEFAULT NULL,
  `Site_Privilege_ID` int(11) DEFAULT NULL,
  `User_Privilege_Created_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Program_Access` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Users_Privileges_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Privileges`
--

LOCK TABLES `Users_Privileges` WRITE;
/*!40000 ALTER TABLE `Users_Privileges` DISABLE KEYS */;
INSERT INTO `Users_Privileges` VALUES (2,1,2,1,'2012-10-17 18:52:13','a'),(3,1,3,1,'2012-10-17 18:52:13',NULL),(5,2,2,1,'2012-11-27 15:54:22',''),(6,3,3,1,'2013-01-03 20:30:02',NULL),(7,4,2,1,'2013-01-03 20:30:21',NULL),(10,11,3,3,'2013-02-25 16:46:53',NULL),(11,12,3,2,'2013-02-26 20:30:19',NULL),(12,13,3,1,'2013-02-27 16:17:05',NULL),(13,14,3,2,'2013-02-27 16:25:48',NULL),(14,15,3,3,'2013-02-28 15:45:18',NULL),(15,16,4,1,'2013-04-05 20:29:43','a'),(16,17,5,1,'2013-04-05 20:59:50',NULL),(17,18,6,1,'2013-04-05 20:59:50','a'),(18,1,4,1,'2013-04-08 14:07:25','a'),(19,1,5,1,'2013-04-08 14:07:25',NULL),(20,1,6,2,'2013-04-08 14:07:25','n'),(21,19,2,1,'2013-05-14 20:27:09','a'),(22,19,3,1,'2013-05-14 20:27:09',NULL),(23,19,4,1,'2013-05-14 20:27:09',NULL),(24,19,5,1,'2013-05-14 20:27:09',NULL),(25,19,6,1,'2013-05-14 20:27:09',NULL),(26,20,2,2,'2013-05-21 19:52:40',NULL),(27,21,2,3,'2013-05-21 19:52:40',NULL),(28,22,2,2,'2013-06-03 19:25:18',NULL),(29,23,6,1,'2013-07-26 15:20:46','a'),(30,24,6,1,'2013-07-26 15:20:49',NULL),(31,25,6,1,'2013-07-26 15:33:34','a'),(32,26,6,2,'2013-07-26 15:37:24','9'),(33,27,4,1,'2013-08-01 18:20:30','2'),(34,28,5,2,'2013-08-05 17:37:06',NULL),(35,29,5,3,'2013-08-05 17:37:06',NULL),(36,30,4,1,'2013-08-08 13:30:09','a'),(37,31,4,1,'2013-08-08 13:30:33','a'),(38,32,6,2,'2013-08-19 14:58:01','a'),(39,33,6,2,'2013-08-27 18:34:25','9'),(40,34,2,1,'2013-10-24 16:47:46','a'),(41,34,3,1,'2013-10-24 16:47:46',NULL),(42,34,4,1,'2013-10-24 16:47:46',NULL),(43,34,5,1,'2013-10-24 16:47:46',NULL),(44,34,6,1,'2013-10-24 16:47:46',NULL),(46,35,2,1,'2013-11-12 22:01:13','a'),(47,35,3,1,'2013-11-12 22:01:13',NULL),(48,35,4,1,'2013-11-12 22:01:13',NULL),(49,35,5,1,'2013-11-12 22:01:13',NULL),(50,35,6,1,'2013-11-12 22:01:13',NULL),(51,36,4,1,'2014-04-15 13:05:57','a'),(52,37,2,1,'2014-05-08 14:14:57','a'),(53,37,3,1,'2014-05-08 14:14:57','a'),(54,37,4,1,'2014-05-08 14:14:57','a'),(55,37,5,1,'2014-05-08 14:14:57','a'),(56,37,6,1,'2014-05-08 14:14:58','a'),(57,38,5,1,'2014-05-14 15:33:22','a');
/*!40000 ALTER TABLE `Users_Privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ttm-swop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ttm-swop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ttm-swop`;

--
-- Table structure for table `Campaigns`
--

DROP TABLE IF EXISTS `Campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns` (
  `Campaign_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Campaign_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Campaign_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns`
--

LOCK TABLES `Campaigns` WRITE;
/*!40000 ALTER TABLE `Campaigns` DISABLE KEYS */;
INSERT INTO `Campaigns` VALUES (1,'Housing'),(2,'Job Retention'),(3,'Affordable Childcare'),(4,'Promoting Local Businesses'),(5,'Bank Accountability'),(6,'Test');
/*!40000 ALTER TABLE `Campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campaigns_Events`
--

DROP TABLE IF EXISTS `Campaigns_Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns_Events` (
  `Campaign_Event_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(100) DEFAULT NULL,
  `Event_Date` date DEFAULT NULL,
  `Campaign_ID` int(11) DEFAULT NULL,
  `Subcampaign` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Campaign_Event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns_Events`
--

LOCK TABLES `Campaigns_Events` WRITE;
/*!40000 ALTER TABLE `Campaigns_Events` DISABLE KEYS */;
INSERT INTO `Campaigns_Events` VALUES (1,'Cinco de Mayo','2013-05-05',1,'Block meetings',NULL),(2,'Database Check-in Meeting','2013-05-10',1,'TTM',NULL),(3,'SWOP Organizer Meeting','2013-05-30',1,NULL,NULL),(5,'Farmers\' Market','2013-06-01',4,NULL,NULL),(6,'Craft Fair','2013-07-01',4,NULL,NULL),(7,'Better Business Bureau Meeting','2013-06-15',4,NULL,NULL),(8,'Leadership meeting','2013-06-22',3,NULL,NULL),(9,'Ice Cream Social','2013-06-29',3,'Development',NULL),(11,'Summer session kick-off?','2013-06-22',2,'0','0'),(12,'Sidewalk Sales','2013-06-29',4,NULL,NULL),(13,'Fourth of July BBQ/information session','2013-07-04',3,NULL,NULL),(14,'Midsummer Movie Night','2013-07-31',4,NULL,NULL),(15,'TTM SWOP staff and leader mtg','2013-07-01',1,'0','Test'),(16,'SWOP Housing Staff Meeting','2013-07-01',1,NULL,NULL),(17,'MDRC Walkthrough','2013-07-11',1,NULL,NULL),(18,'Fourth of July Celebration','2013-07-04',3,'0',NULL),(19,'July 5th Celebration','2013-07-05',3,'Block meetings',NULL),(20,'Health Fair','2013-07-06',3,'Health Awareness',NULL),(21,'Meeting at a New Place!','2013-07-15',1,'TTM','SWOP/NHS Office'),(22,'Coffee Hour','2013-07-21',3,'0','5400 Block of Kenwood'),(23,'Northeast Chicago Lawn Community Meeting','2013-07-26',1,'Block meetings','SWOP/NHS Office'),(24,'Vigil','2013-07-17',3,'',''),(25,'Vigil','2013-07-17',1,'',''),(26,'Planning meeting','2013-07-25',5,'',''),(27,'Event X','2013-08-03',5,'Community awareness','SWOP/NHS Office'),(28,'Bank of America Planning Meeting','2013-08-08',5,'Institutional engagement','SWOP/NHS Office'),(29,'Housewarming Party','2013-08-10',1,'Block meetings','5400 Block of Kenwood'),(30,'Test Property Problem','2013-10-09',3,'Testing','0'),(31,'Wednesday','2013-10-16',6,'',''),(32,'11111111','2013-12-01',6,'Capital Campaign','0'),(33,'11111111','2013-12-02',6,'0','Chicago City Hall'),(34,'22222','2013-12-02',6,'qqqqq','wwwww'),(35,'22222','2013-12-02',6,'qqqqq','wwwww'),(36,'222','2013-12-02',6,'333','55555'),(37,'','0000-00-00',6,'0','0'),(38,'sdgsdg','2013-12-19',6,'0','0'),(39,'sdgsdg','2013-12-19',6,'333','0'),(40,'sdgsdg','2013-12-19',6,'333','0'),(41,'3333333','2013-12-23',6,'333','Test'),(42,'444444','2013-12-24',6,'ggggggggg','hhhhhhhhhh'),(43,'555555','2013-12-25',6,'333','5400 Block of Kenwood'),(44,'6666666','2014-01-03',6,'0','0'),(45,'7777','2014-01-04',6,'',''),(46,'88888888888','2013-12-25',6,'asdgdsgs','Test');
/*!40000 ALTER TABLE `Campaigns_Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campaigns_Institutions`
--

DROP TABLE IF EXISTS `Campaigns_Institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns_Institutions` (
  `Campaigns_Institutions_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_ID` int(11) DEFAULT NULL,
  `Campaign_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Campaigns_Institutions_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns_Institutions`
--

LOCK TABLES `Campaigns_Institutions` WRITE;
/*!40000 ALTER TABLE `Campaigns_Institutions` DISABLE KEYS */;
INSERT INTO `Campaigns_Institutions` VALUES (1,53,1),(2,52,1),(3,54,3),(4,51,3),(5,53,3),(6,52,2),(7,55,4),(8,55,1),(9,67,1),(10,66,5),(11,59,1),(12,59,1);
/*!40000 ALTER TABLE `Campaigns_Institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Current_Housing`
--

DROP TABLE IF EXISTS `Current_Housing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Current_Housing` (
  `Current_Housing_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Current_Housing_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Current_Housing_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Current_Housing`
--

LOCK TABLES `Current_Housing` WRITE;
/*!40000 ALTER TABLE `Current_Housing` DISABLE KEYS */;
INSERT INTO `Current_Housing` VALUES (1,'Owner-current'),(2,'Owner - in foreclosure'),(3,'Renter'),(4,'Living with family'),(5,'N/A');
/*!40000 ALTER TABLE `Current_Housing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Households`
--

DROP TABLE IF EXISTS `Households`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Households` (
  `New_Household_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Household_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`New_Household_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Households`
--

LOCK TABLES `Households` WRITE;
/*!40000 ALTER TABLE `Households` DISABLE KEYS */;
INSERT INTO `Households` VALUES (1,'Donnelly'),(3,'Donnelly-Griffin'),(4,'Bartow'),(5,'SCOTUS'),(6,'Ginsburg'),(7,'Household Name'),(8,'juan garcia'),(9,'Garcia'),(10,'Nelly Claudio'),(11,'Meyer'),(12,'Anders'),(13,'Windsor');
/*!40000 ALTER TABLE `Households` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Households_Participants`
--

DROP TABLE IF EXISTS `Households_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Households_Participants` (
  `Households_Participants_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Household_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  `Head_of_Household` int(11) DEFAULT NULL,
  PRIMARY KEY (`Households_Participants_ID`),
  KEY `household_referenced` (`Household_ID`),
  KEY `person_in_household` (`Participant_ID`),
  CONSTRAINT `household_referenced` FOREIGN KEY (`Household_ID`) REFERENCES `Households` (`New_Household_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `person_in_household` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Households_Participants`
--

LOCK TABLES `Households_Participants` WRITE;
/*!40000 ALTER TABLE `Households_Participants` DISABLE KEYS */;
INSERT INTO `Households_Participants` VALUES (4,3,20,NULL),(9,4,18,1),(10,4,21,2),(11,3,30,2),(12,5,30,2),(13,6,30,1),(14,7,29,0),(15,8,29,1),(16,9,25,1),(17,9,20,2),(18,10,54,1),(20,5,21,2),(21,12,21,1),(22,12,34,2),(23,13,73,2),(24,13,74,1),(25,1,20,2),(26,1,19,0);
/*!40000 ALTER TABLE `Households_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institution_Types`
--

DROP TABLE IF EXISTS `Institution_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institution_Types` (
  `Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institution_Types`
--

LOCK TABLES `Institution_Types` WRITE;
/*!40000 ALTER TABLE `Institution_Types` DISABLE KEYS */;
INSERT INTO `Institution_Types` VALUES (1,'Church/Religious Organization'),(2,'School'),(3,'Financial Institution'),(4,'Community Organization');
/*!40000 ALTER TABLE `Institution_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institutions`
--

DROP TABLE IF EXISTS `Institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institutions` (
  `Institution_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_Name` varchar(150) DEFAULT NULL,
  `Street_Num` int(11) DEFAULT NULL,
  `Street_Direction` varchar(45) DEFAULT NULL,
  `Street_Name` varchar(100) DEFAULT NULL,
  `Street_Type` varchar(45) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  `Institution_Type` varchar(100) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Contact_Person` int(11) DEFAULT NULL,
  `Date_Added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Institution_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institutions`
--

LOCK TABLES `Institutions` WRITE;
/*!40000 ALTER TABLE `Institutions` DISABLE KEYS */;
INSERT INTO `Institutions` VALUES (51,'St. Rita\'s Church',0,'N','','ST',NULL,'','555-555-5555',0,'2013-05-01 05:00:00'),(52,'SWOP',2609,'w','63rd ','street',NULL,'','773-471-82',0,'2013-04-07 05:00:00'),(53,'Al Salam Mosque',3247,'W','63rd','ST',NULL,'1','',0,'2013-06-02 05:00:00'),(54,'Fairfield Elementary',0,'','','',NULL,'','',0,'2013-02-01 06:00:00'),(55,'Rotary International',0,'N','water','ST',NULL,'','1234567800',0,'2013-01-20 06:00:00'),(56,'St. Mary Star of the Sea',5515,'','kenneth','',NULL,'1','312-777-55',0,'2013-03-14 05:00:00'),(58,'NHS-Chicago Lawn Gage Park',0,'','','',NULL,'','',37,'2013-07-02 19:29:11'),(59,'Greater Southwest Development Corp',2609,'','632rd','',NULL,'4','773-255-36',89,'2013-07-02 19:30:18'),(61,'Morrill Elemetary School',0,'','','',NULL,'','',0,'2013-07-02 19:30:47'),(62,'Morrill Elementary School',0,'','','',NULL,'','',0,'2013-07-02 19:30:54'),(63,'Ashburn Lutheran Church',0,'','','',NULL,'','',0,'2013-07-23 16:09:25'),(64,'',0,'','','',NULL,'','',0,'2013-07-25 17:58:12'),(65,'New Institution',0,'','','',NULL,'','',0,'2013-07-25 17:58:27'),(66,'St.Gall',5555,'n','talman','st',NULL,'','773-566-77',0,'2013-07-25 21:57:42'),(67,'St. Turibius',5516,'s','kildare','ave',NULL,'','773-555-66',0,'2013-07-25 22:01:43'),(68,'St. Turibius',5516,'s','kildare','ave',NULL,'','773-555-66',0,'2013-07-25 22:05:51'),(69,'It Gets Better Fdn',0,'','','',NULL,'','',0,'2013-07-26 18:15:31'),(70,'Kennedy Center Honors',0,'','','',NULL,'','',0,'2013-07-26 18:17:34'),(71,'Test, Test',0,'','','',NULL,'','',0,'2013-07-31 20:47:22'),(72,'',0,'','','',NULL,'','',0,'2013-08-01 17:15:55'),(73,'Test Linking Person',0,'','','',NULL,'4','',45,'2013-08-06 14:50:50'),(74,'Double Test',0,'','','',NULL,'2','',25,'2013-08-06 14:55:15'),(75,'Test Institution',0,'','','',NULL,'','',0,'2013-08-23 17:25:16'),(76,'Testing Blockgroups',2442,'W','63rd','St','170318350002013','','',0,'2013-09-30 20:17:18');
/*!40000 ALTER TABLE `Institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institutions_Participants`
--

DROP TABLE IF EXISTS `Institutions_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institutions_Participants` (
  `Institutions_Participants_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  `Is_Primary` int(1) DEFAULT NULL,
  `Individual_Connection` varchar(50) DEFAULT NULL,
  `Connection_Reason` varchar(400) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Activity_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Institutions_Participants_ID`),
  KEY `participant_at_int` (`Participant_ID`),
  KEY `institution_of_particip` (`Institution_ID`),
  CONSTRAINT `institution_of_particip` FOREIGN KEY (`Institution_ID`) REFERENCES `Institutions` (`Institution_ID`) ON UPDATE CASCADE,
  CONSTRAINT `participant_at_int` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institutions_Participants`
--

LOCK TABLES `Institutions_Participants` WRITE;
/*!40000 ALTER TABLE `Institutions_Participants` DISABLE KEYS */;
INSERT INTO `Institutions_Participants` VALUES (6,52,18,1,'','Jeff is a SWOP employee.','2013-06-06 05:00:00',6),(9,55,23,NULL,NULL,NULL,'2013-06-06 05:00:00',6),(12,53,26,0,'','','2013-06-06 05:00:00',6),(13,55,22,1,'','','2013-06-14 17:32:55',6),(14,56,24,1,'','','2013-06-14 17:35:17',6),(15,54,24,0,'','','2013-06-14 17:36:04',6),(16,54,21,0,'24','Alex\'s daughter attends Fairfield.','2013-06-24 18:12:54',6),(17,51,19,NULL,NULL,NULL,'2013-06-26 16:33:07',NULL),(18,53,30,1,'26','','2013-06-26 17:25:11',6),(19,56,30,0,'24','','2013-06-26 17:40:27',6),(20,55,19,NULL,NULL,NULL,'2013-06-26 17:56:21',NULL),(24,51,22,0,'19','','2013-06-27 15:34:05',6),(25,58,37,0,'','','2013-07-03 21:03:07',6),(26,58,34,0,NULL,NULL,'2013-07-03 22:11:07',NULL),(27,58,36,NULL,NULL,NULL,'2013-07-03 22:11:29',NULL),(28,58,36,NULL,NULL,NULL,'2013-07-03 22:11:46',NULL),(29,54,33,NULL,NULL,NULL,'2013-07-08 20:32:41',NULL),(31,54,20,0,'','','2013-07-09 16:29:30',6),(33,53,39,1,'26','something something something','2013-07-09 21:25:31',6),(38,62,45,1,NULL,NULL,'2013-07-15 20:19:50',NULL),(40,54,46,0,'33','','2013-07-17 21:06:35',6),(41,62,47,1,NULL,NULL,'2013-07-19 14:52:32',NULL),(42,58,20,0,'','','2013-07-19 15:28:13',6),(43,59,27,1,'','','2013-07-19 16:55:07',6),(44,51,18,NULL,NULL,NULL,'2013-07-19 20:16:05',NULL),(47,51,51,1,NULL,NULL,'2013-07-22 17:15:41',NULL),(51,56,54,1,NULL,NULL,'2013-07-22 18:48:42',NULL),(52,56,55,1,NULL,NULL,'2013-07-22 19:14:46',NULL),(55,63,56,1,NULL,NULL,'2013-07-23 16:10:06',NULL),(56,56,57,1,NULL,NULL,'2013-07-24 18:49:44',NULL),(57,59,57,0,'','','2013-07-24 19:02:31',6),(58,52,54,1,'25','','2013-07-25 21:43:49',6),(60,63,62,1,NULL,NULL,'2013-07-31 21:26:06',NULL),(61,56,63,1,NULL,NULL,'2013-07-31 21:27:32',NULL),(64,69,61,1,'25','Board member','2013-07-31 21:41:13',6),(68,63,67,1,NULL,NULL,'2013-08-02 16:06:40',NULL),(69,52,29,1,NULL,NULL,'2013-08-02 19:09:11',6),(70,66,68,1,NULL,NULL,'2013-08-02 19:20:19',6),(71,54,69,1,NULL,NULL,'2013-08-02 19:30:34',6),(72,56,70,1,NULL,NULL,'2013-08-02 20:08:56',NULL),(73,73,45,NULL,NULL,NULL,'2013-08-06 14:52:48',NULL),(74,74,25,NULL,NULL,NULL,'2013-08-06 14:55:15',NULL),(75,52,34,1,NULL,NULL,'2013-08-06 15:07:21',6),(76,62,71,1,NULL,NULL,'2013-08-06 15:10:43',6),(77,56,20,0,NULL,NULL,'2013-08-06 15:22:15',6),(78,61,20,0,NULL,NULL,'2013-08-06 15:26:05',6),(79,63,20,1,NULL,NULL,'2013-08-06 15:26:58',6),(80,68,72,1,NULL,NULL,'2013-08-08 14:15:38',6),(81,51,66,1,NULL,NULL,'2013-08-08 14:36:56',6),(82,63,73,1,NULL,NULL,'2013-08-09 16:43:21',6),(83,63,74,1,NULL,NULL,'2013-08-09 16:45:01',6),(84,56,75,1,NULL,NULL,'2013-08-09 19:15:39',NULL),(87,51,77,1,NULL,NULL,'2013-08-14 16:35:32',6),(88,54,79,1,NULL,NULL,'2013-08-14 16:58:12',6),(89,66,86,1,NULL,NULL,'2013-08-15 15:12:28',6),(90,74,87,1,NULL,NULL,'2013-08-15 15:16:09',6),(91,59,88,1,NULL,NULL,'2013-08-15 15:21:53',6),(93,51,57,1,'25','hyimmolol','2013-08-16 18:23:57',6),(94,59,89,1,NULL,NULL,'2013-08-16 18:27:28',6),(95,56,93,1,NULL,NULL,'2013-09-04 19:41:44',6),(96,56,96,1,NULL,NULL,'2013-09-06 19:56:38',6);
/*!40000 ALTER TABLE `Institutions_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leadership_Development`
--

DROP TABLE IF EXISTS `Leadership_Development`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Leadership_Development` (
  `Leadership_Development_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Detail_ID` int(11) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Leadership_Development_ID`),
  KEY `participant_developing` (`Participant_ID`),
  KEY `detail_added` (`Detail_ID`),
  CONSTRAINT `detail_added` FOREIGN KEY (`Detail_ID`) REFERENCES `Leadership_Development_Details` (`Leadership_Development_Detail_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_developing` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leadership_Development`
--

LOCK TABLES `Leadership_Development` WRITE;
/*!40000 ALTER TABLE `Leadership_Development` DISABLE KEYS */;
INSERT INTO `Leadership_Development` VALUES (1,18,3,'2013-06-07 16:07:26'),(2,18,2,'2013-06-07 16:36:36'),(3,20,1,'2013-06-07 18:37:29'),(4,20,2,'2013-06-07 18:38:27'),(5,25,1,'2013-06-11 19:23:20'),(6,24,2,'2013-06-12 17:15:26'),(7,24,1,'2013-06-12 17:16:03'),(8,24,3,'2013-06-12 17:16:48'),(9,30,3,'2013-06-26 17:26:04'),(10,30,2,'2013-06-26 17:26:07'),(11,30,1,'2013-06-26 17:26:10'),(12,48,1,'2013-07-19 22:24:07'),(13,54,1,'2013-07-25 21:44:38'),(14,54,3,'2013-07-25 21:44:42'),(15,54,1,'2013-07-25 21:52:03'),(16,35,1,'2013-07-26 17:50:52'),(17,21,2,'2013-07-26 17:51:54'),(18,21,1,'2013-07-26 17:55:37'),(19,21,18,'2013-07-26 17:56:42'),(20,21,15,'2013-07-26 17:58:40'),(21,21,11,'2013-07-26 17:58:59'),(22,24,7,'2013-08-02 20:16:13'),(23,24,6,'2013-08-02 20:16:17'),(24,24,10,'2013-08-02 20:16:21'),(25,29,2,'2013-08-07 20:05:49'),(26,74,1,'2013-08-09 20:52:28'),(27,85,1,'2013-09-03 16:40:07');
/*!40000 ALTER TABLE `Leadership_Development` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leadership_Development_Details`
--

DROP TABLE IF EXISTS `Leadership_Development_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Leadership_Development_Details` (
  `Leadership_Development_Detail_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Leadership_Detail_Name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Leadership_Development_Detail_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leadership_Development_Details`
--

LOCK TABLES `Leadership_Development_Details` WRITE;
/*!40000 ALTER TABLE `Leadership_Development_Details` DISABLE KEYS */;
INSERT INTO `Leadership_Development_Details` VALUES (1,'Tertiary - regularly attends meeting or actions'),(2,'Tertiary - accepts small roles in meeting or actions'),(3,'Tertiary - goes where they are needed'),(4,'Secondary - has 2 or the 3 key qualities of a leader - Vision, Talent, or Network'),(5,'Secondary - has all qualities of tertiary leader'),(6,'Secondary - basic understanding of organizing'),(7,'Secondary - does 1-1\'s'),(8,'Secondary - plays greater role in SWOP'),(9,'Secondary - willing to pull someone to action'),(10,'Secondary - has frustration or anger about world as it is'),(11,'Secondary - starting analyzing and strategizing'),(12,'Secondary - thinking about personal and institutional self-interest'),(13,'Primary - has all 3 key qualities of a leader - vision, talent, network'),(14,'Primary - has all qualities of secondary and tertiary leader'),(15,'Primary - has power in institution and in community'),(16,'Primary - can communicate how and why we organize'),(17,'Primary - engages in leadership development'),(18,'Primary - can carry meeting or action'),(19,'Primary - can carry training component'),(20,'Primary - can analyze and strategize'),(21,'Primary - self-motivated'),(22,'Primary - understands personal and institutional self-interest');
/*!40000 ALTER TABLE `Leadership_Development_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leadership_Levels`
--

DROP TABLE IF EXISTS `Leadership_Levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Leadership_Levels` (
  `Leader_Level_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Leader_Level` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Leader_Level_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leadership_Levels`
--

LOCK TABLES `Leadership_Levels` WRITE;
/*!40000 ALTER TABLE `Leadership_Levels` DISABLE KEYS */;
INSERT INTO `Leadership_Levels` VALUES (1,'Primary'),(2,'Secondary'),(3,'Tertiary'),(4,'Not in leadership development');
/*!40000 ALTER TABLE `Leadership_Levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outcome_Locations`
--

DROP TABLE IF EXISTS `Outcome_Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Outcome_Locations` (
  `Outcome_Location_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Outcome_Location_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Outcome_Location_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outcome_Locations`
--

LOCK TABLES `Outcome_Locations` WRITE;
/*!40000 ALTER TABLE `Outcome_Locations` DISABLE KEYS */;
INSERT INTO `Outcome_Locations` VALUES (1,'Inside TTM Area'),(2,'Outside TTM Area/In SWOP Community'),(3,'Outside SWOP Community'),(4,'N/A');
/*!40000 ALTER TABLE `Outcome_Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outcomes_for_Pool`
--

DROP TABLE IF EXISTS `Outcomes_for_Pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Outcomes_for_Pool` (
  `Outcome_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Outcome_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Outcome_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outcomes_for_Pool`
--

LOCK TABLES `Outcomes_for_Pool` WRITE;
/*!40000 ALTER TABLE `Outcomes_for_Pool` DISABLE KEYS */;
INSERT INTO `Outcomes_for_Pool` VALUES (1,'Purchase'),(2,'Loan modification'),(3,'Rent placement'),(4,'Purchase investment property'),(5,'Exit with no outcome');
/*!40000 ALTER TABLE `Outcomes_for_Pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants`
--

DROP TABLE IF EXISTS `Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants` (
  `Participant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name_First` varchar(45) DEFAULT NULL,
  `Name_Middle` varchar(45) DEFAULT NULL,
  `Name_Last` varchar(45) DEFAULT NULL,
  `Address_Street_Num` int(11) DEFAULT NULL,
  `Address_Street_Direction` varchar(45) DEFAULT NULL,
  `Address_Street_Name` varchar(45) DEFAULT NULL,
  `Address_Street_Type` varchar(45) DEFAULT NULL,
  `Phone_Day` varchar(45) DEFAULT NULL,
  `Phone_Evening` varchar(45) DEFAULT NULL,
  `Education_Level` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Lang_Eng` int(1) DEFAULT NULL,
  `Lang_Span` int(1) DEFAULT NULL,
  `Lang_Other` int(1) DEFAULT NULL,
  `Ward` varchar(45) DEFAULT NULL,
  `Other_Lang_Specify` varchar(45) DEFAULT NULL,
  `Notes` varchar(15000) DEFAULT NULL,
  `Next_Notes` varchar(1000) DEFAULT NULL,
  `Primary_Organizer` int(11) DEFAULT NULL,
  `First_Interaction_Date` date DEFAULT NULL,
  `ITIN` int(11) DEFAULT NULL,
  `Date_Added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Activity_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants`
--

LOCK TABLES `Participants` WRITE;
/*!40000 ALTER TABLE `Participants` DISABLE KEYS */;
INSERT INTO `Participants` VALUES (18,'Jeff',NULL,'Bartow',0,'','','','','',NULL,'','m','0000-00-00',1,0,0,'3','','',NULL,0,NULL,0,NULL,NULL),(19,'Francis',NULL,'Robert',959,'S','Halsted','','','',NULL,'','m','1993-05-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Cecilia',NULL,'Non Pool',0,'','','','555-801-7543','555-801-4321',NULL,'c.n.p@chapinhall.org','f','2013-12-14',1,0,1,'20','French','Ah, whoops, this doesn\'t save automatically on blur, does it?',NULL,46,NULL,1,NULL,NULL),(21,'Alex',NULL,'Ander',0,'','','','999-888-7777','999-888-7777',NULL,'','','1990-10-17',1,0,1,'','','Save test notes.','test next step notes',18,NULL,0,NULL,NULL),(22,'Josef',NULL,'K',NULL,NULL,NULL,NULL,'654-321-0000','',NULL,'josef.k@genericorp.net','m','1978-05-28',0,0,0,'','','',NULL,0,NULL,NULL,NULL,NULL),(23,'Daisy',NULL,'Miller',NULL,NULL,NULL,NULL,'260-868-2352','',NULL,'marguerite.americaine@gmail.com','f','0000-00-00',1,0,0,'17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'John',NULL,'Shade',NULL,NULL,NULL,NULL,'','',NULL,'','m','0000-00-00',0,0,0,'','','',NULL,0,NULL,0,NULL,NULL),(25,'Carolina',NULL,'Herrera',NULL,NULL,NULL,NULL,'773-202-LUNA','',NULL,'carolina@ch-llc.net','f','1978-03-03',0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Ted',NULL,'Sample',NULL,NULL,NULL,NULL,'','',NULL,'','m','0000-00-00',0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Jeff',NULL,'Gawel',NULL,NULL,NULL,NULL,'','',NULL,'','','0000-00-00',0,0,0,'','','',NULL,79,NULL,0,NULL,NULL),(28,'Agnes',NULL,'Hamm',NULL,NULL,NULL,NULL,'','773-702-8955',NULL,'agnes@yachtandco.com','f','0000-00-00',1,0,0,'','','',NULL,NULL,NULL,NULL,NULL,NULL),(29,'David',NULL,'McDowell',NULL,NULL,NULL,NULL,'773-471-8208','',NULL,'','m','0000-00-00',1,0,0,'','','will be doing outreach',NULL,0,NULL,0,NULL,NULL),(30,'Ruth Bader',NULL,'Ginsburg',NULL,NULL,NULL,NULL,'401-555-1234','',NULL,'rbg@scotus.gov','f','2013-07-01',1,1,0,'9','','',NULL,0,NULL,NULL,NULL,NULL),(31,'New',NULL,'Person!',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Blank',NULL,'Blank',NULL,NULL,NULL,NULL,'','',NULL,'','','0000-00-00',0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'David',NULL,'McDowell',NULL,NULL,NULL,NULL,'773-471-8208','999-999-9999',NULL,'david.organizing@sbcglobal.net','m','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'Valentin',NULL,'Garcia',NULL,NULL,NULL,NULL,'773-349-6932','708-843-2739',NULL,'','m','0000-00-00',0,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Mike ',NULL,'reardon',NULL,NULL,NULL,NULL,'',NULL,NULL,'','m','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Vedia',NULL,'Johnson',NULL,NULL,NULL,NULL,'773-459-7712','',NULL,'','f','0000-00-00',1,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'Leos',NULL,'Janacek',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'Gertrude',NULL,'Stein',NULL,NULL,NULL,NULL,'7732025267','',NULL,'','f','1978-08-08',0,0,0,'','','',NULL,NULL,NULL,NULL,NULL,NULL),(40,'Corretta',NULL,'Scott Key',NULL,NULL,NULL,NULL,'','',NULL,'','','0000-00-00',0,0,0,'','','',NULL,23,NULL,NULL,NULL,NULL),(42,'Jane',NULL,'Doe',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'Calia',NULL,'Swatch',NULL,NULL,NULL,NULL,'',NULL,NULL,'','f','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-12-06',NULL,NULL,NULL),(45,'Finchel',NULL,'Twain',NULL,NULL,NULL,NULL,'',NULL,NULL,'','f','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,'2011-04-19',NULL,NULL,NULL),(46,'Sophia',NULL,'Kinsella',NULL,NULL,NULL,NULL,'',NULL,NULL,'','f','1969-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,'0000-00-00',NULL,NULL,NULL),(47,'Tessa',NULL,'Newell',NULL,NULL,NULL,NULL,'(555) 312-4013',NULL,NULL,'tessa.newell@gmail.com','f','1995-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,44,'2012-11-30',NULL,NULL,NULL),(48,'Robin',NULL,'Thicke',NULL,NULL,NULL,NULL,'','',NULL,'','','1973-07-03',0,0,0,'','','',NULL,0,'0000-00-00',NULL,NULL,NULL),(50,'Jelani',NULL,'Cobb',NULL,NULL,NULL,NULL,'312-213-3122','312-132-2312',NULL,'cobb.j@home.net','','0000-00-00',0,0,0,'','','',NULL,0,NULL,NULL,NULL,NULL),(51,'Patricia',NULL,'Marquez',NULL,NULL,NULL,NULL,'','',NULL,'','','1973-08-01',0,0,0,'','','',NULL,0,NULL,0,NULL,NULL),(52,'Teresa',NULL,'Acevedo',NULL,NULL,NULL,NULL,'','',NULL,'','','0000-00-00',0,0,0,'','','test test',NULL,72,NULL,1,NULL,NULL),(53,'Nelly ',NULL,'Claudio',NULL,NULL,NULL,NULL,'','',NULL,'','f','0000-00-00',1,1,0,'','','',NULL,0,NULL,NULL,NULL,NULL),(54,'Maria Paula',NULL,'Claudio',NULL,NULL,NULL,NULL,'','',NULL,'','f','0000-00-00',0,1,0,'','','',NULL,0,NULL,NULL,NULL,NULL),(55,'Nelly',NULL,'Claudio',NULL,NULL,NULL,NULL,'','',NULL,'','f','0000-00-00',1,1,0,'','','',NULL,0,NULL,NULL,NULL,NULL),(56,'Harry ',NULL,'Meyer',NULL,NULL,NULL,NULL,'','',NULL,'','m','0000-00-00',0,0,0,'','','',NULL,0,'0000-00-00',NULL,NULL,NULL),(57,'Vicky',NULL,'Galvin',NULL,NULL,NULL,NULL,'312-213-3122','',NULL,'vgalvin.swop@hotmail.com','f','1973-03-09',1,1,0,'14','','why is it asking me for primary organizer again, when I added new participant this information was already filled in.',NULL,34,'0000-00-00',0,NULL,NULL),(58,'Tyler',NULL,'Smith',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(59,'Tyler',NULL,'Smith',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(60,'Tyler',NULL,'Smith',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(61,'Emilia',NULL,'Vasquez',NULL,NULL,NULL,NULL,'','',NULL,'','','0000-00-00',1,1,0,'','','',NULL,0,NULL,0,NULL,NULL),(62,'Person',NULL,'With-Address',NULL,NULL,NULL,NULL,'',NULL,NULL,'','m','1993-07-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,56,'0000-00-00',NULL,NULL,NULL),(63,'Test',NULL,'New-Address',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,57,'0000-00-00',NULL,NULL,NULL),(66,'Carl',NULL,'Carpenter',NULL,NULL,NULL,NULL,'773-202-5555','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'Anita',NULL,'Carpenter',NULL,NULL,NULL,NULL,'','773-565-9155',NULL,'anacarp@home.net',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'Angela',NULL,'Reed',NULL,NULL,NULL,NULL,'444-555-6666','999-888-7777',NULL,'tangela1@home.net',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'Tanya',NULL,'Lluviosa',NULL,NULL,NULL,NULL,'',NULL,NULL,'','f','2003-08-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(70,'Ben',NULL,'Brayton',NULL,NULL,NULL,NULL,'401-555-1234','401-444-2345',NULL,'ben.brayton.1990@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'Contina',NULL,'Testerra',NULL,NULL,NULL,NULL,'',NULL,NULL,'','f','1993-08-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,47,'2013-04-03',NULL,NULL,NULL),(72,'Terrestria',NULL,'Constella',NULL,NULL,NULL,NULL,'999-888-4562','125-557-5564',NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(73,'Kate',NULL,'Middleton',NULL,NULL,NULL,NULL,'773-202-LUNA','',NULL,'katie@royalfamily.co.uk','f','1980-05-05',1,0,0,'','','',NULL,68,'2013-05-04',0,NULL,NULL),(74,'William',NULL,'Windsor',NULL,NULL,NULL,NULL,'',NULL,NULL,'will@royalfamily.co.uk','m','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(75,'Maggie',NULL,'Wilson',NULL,NULL,NULL,NULL,'','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'Cecilia',NULL,'Donnelly',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(77,'Leslie',NULL,'Miller',NULL,NULL,NULL,NULL,'',NULL,NULL,'','m','1983-09-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,NULL,NULL),(78,'Lola',NULL,'Gates',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-14 16:37:28',NULL),(79,'Carmine',NULL,'Stuckey',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-14 16:58:12',NULL),(80,'Seth',NULL,'M',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-14 21:22:54',7),(82,'Kylie',NULL,'M',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-14 21:36:16',7),(83,'Lila',NULL,'S',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-14 21:41:58',7),(84,'Harry',NULL,'Ford',NULL,NULL,NULL,NULL,'','',NULL,'','','0000-00-00',0,0,0,'','','test regular notes','test next notes',0,'0000-00-00',0,'2013-08-14 21:49:45',7),(85,'Emily',NULL,'Ford',NULL,NULL,NULL,NULL,'',NULL,NULL,'','f','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,'0000-00-00',NULL,'2013-08-14 21:51:21',7),(86,'Patricia',NULL,'Marx',NULL,NULL,NULL,NULL,'773-777-3333',NULL,NULL,'patricia.marx@newyorker.com','f','1976-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,68,'2013-05-10',NULL,'2013-08-15 15:12:28',7),(87,'John',NULL,'McPhee',NULL,NULL,NULL,NULL,'',NULL,NULL,'','m','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-15 15:16:09',7),(88,'Ariel',NULL,'Levy',NULL,NULL,NULL,NULL,'',NULL,NULL,'','f','1980-06-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-15 15:21:53',7),(89,'Ghian',NULL,'Foreman',NULL,NULL,NULL,NULL,'773-454-5656',NULL,NULL,'ghian.f@gsdc.org','m','1978-03-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2013-08-15',NULL,'2013-08-16 18:27:28',7),(90,'Not',NULL,'Working!',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-08-23 16:52:05',7),(91,'Test Address','tester','Save',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-09-03 15:41:01',7),(93,'Carl','testtt','Orff',NULL,NULL,NULL,NULL,'773-486-9343',NULL,NULL,'orff@home.net','m','1983-09-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-09-04 19:41:44',7),(95,'New-Address','te','Test-Directions',NULL,NULL,NULL,NULL,'',NULL,NULL,'','','0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0000-00-00',NULL,'2013-09-06 18:46:23',7),(96,'First-Interaction','test','Date-Check',NULL,NULL,NULL,NULL,'','',NULL,'','f','1935-09-01',0,0,0,'','','',NULL,0,'2009-09-30',0,'2013-09-06 19:56:38',7);
/*!40000 ALTER TABLE `Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Events`
--

DROP TABLE IF EXISTS `Participants_Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Events` (
  `Participants_Events_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  `Role_Type` int(11) DEFAULT NULL,
  `Exceptional` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participants_Events_ID`),
  KEY `FK_Participants_Events__Participants__Participant_ID_idx` (`Participant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Events`
--

LOCK TABLES `Participants_Events` WRITE;
/*!40000 ALTER TABLE `Participants_Events` DISABLE KEYS */;
INSERT INTO `Participants_Events` VALUES (1,1,20,2,1),(2,1,21,1,NULL),(3,1,25,NULL,NULL),(4,2,26,1,NULL),(6,2,19,NULL,NULL),(7,3,19,3,NULL),(9,1,18,1,NULL),(10,5,20,3,NULL),(11,6,0,0,NULL),(12,6,0,0,NULL),(13,5,21,1,NULL),(14,7,0,0,NULL),(15,5,18,2,NULL),(16,2,0,1,NULL),(17,2,21,4,NULL),(18,8,25,4,NULL),(19,8,24,0,NULL),(20,9,23,3,1),(21,8,23,3,NULL),(22,12,22,1,NULL),(23,8,21,0,NULL),(24,9,25,0,NULL),(25,9,20,0,NULL),(26,7,30,2,NULL),(27,1,30,1,NULL),(28,6,21,4,NULL),(29,13,33,4,NULL),(30,11,22,4,NULL),(31,15,29,5,NULL),(32,16,0,0,NULL),(33,3,29,2,NULL),(34,1,29,0,NULL),(35,2,18,1,NULL),(36,15,18,2,NULL),(37,17,20,2,NULL),(41,1,41,NULL,NULL),(42,12,21,0,NULL),(43,13,41,0,NULL),(44,21,46,5,NULL),(45,11,25,7,NULL),(46,1,27,0,NULL),(47,3,29,4,NULL),(48,7,29,0,NULL),(49,20,29,7,NULL),(50,3,49,NULL,NULL),(51,23,50,3,0),(52,23,51,6,NULL),(53,1,52,NULL,NULL),(54,0,29,0,NULL),(55,24,53,7,NULL),(56,24,54,NULL,NULL),(57,25,55,7,1),(58,0,29,3,NULL),(59,24,57,3,1),(60,23,57,7,NULL),(61,24,57,0,NULL),(62,25,57,0,NULL),(63,0,47,0,NULL),(64,0,61,NULL,NULL),(65,26,61,4,NULL),(66,0,22,0,NULL),(67,0,30,0,NULL),(68,0,41,0,NULL),(69,0,41,0,NULL),(70,0,41,0,NULL),(71,23,41,0,NULL),(72,23,39,0,NULL),(73,26,28,2,NULL),(74,26,66,NULL,NULL),(75,26,67,4,NULL),(76,27,29,3,NULL),(77,27,68,4,NULL),(78,13,70,6,NULL),(79,14,21,0,NULL),(80,28,34,3,NULL),(81,29,20,0,NULL),(82,29,35,10,NULL),(83,27,70,4,NULL),(84,27,72,7,NULL),(85,28,66,4,NULL),(86,22,73,0,0),(87,27,73,0,NULL),(88,27,74,5,NULL),(89,27,75,10,NULL),(90,24,64,2,1),(91,15,57,0,NULL),(92,29,85,0,NULL),(93,29,52,0,NULL),(94,23,93,0,NULL),(95,30,35,0,NULL),(96,31,20,1,NULL);
/*!40000 ALTER TABLE `Participants_Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Leaders`
--

DROP TABLE IF EXISTS `Participants_Leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Leaders` (
  `Participants_Leader_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Leader_Type` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Activity_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participants_Leader_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Leaders`
--

LOCK TABLES `Participants_Leaders` WRITE;
/*!40000 ALTER TABLE `Participants_Leaders` DISABLE KEYS */;
INSERT INTO `Participants_Leaders` VALUES (1,18,1,'2013-05-10 14:07:33',2),(2,26,3,'2013-05-30 18:18:52',2),(6,20,3,'2013-06-07 18:38:59',2),(7,26,2,'2013-06-07 20:24:48',2),(8,25,4,'2013-06-12 14:32:38',2),(9,18,4,'2013-06-12 14:54:27',2),(10,18,2,'2013-06-12 15:31:45',2),(11,24,3,'2013-06-12 17:08:58',2),(12,23,3,'2013-06-14 14:55:42',2),(16,26,2,'2013-06-14 15:02:12',2),(17,30,3,'2013-06-26 17:26:41',2),(18,32,2,'2013-06-26 18:21:35',2),(19,36,1,'2013-07-02 19:20:52',2),(20,29,0,'2013-07-02 22:16:01',2),(23,37,4,'2013-07-03 21:03:29',2),(24,37,4,'2013-07-03 21:10:30',2),(25,29,1,'2013-07-03 22:13:33',2),(26,29,2,'2013-07-03 22:13:43',2),(27,29,0,'2013-07-03 22:13:50',2),(28,18,1,'2013-07-11 15:31:34',2),(29,18,4,'2013-07-12 15:43:35',2),(30,44,3,'2013-07-15 19:03:44',2),(31,46,4,'2013-07-17 21:07:10',2),(32,20,2,'2013-07-19 15:53:44',2),(33,27,3,'2013-07-19 16:52:44',2),(34,48,3,'2013-07-19 22:25:12',2),(35,35,3,'2013-07-22 16:51:10',2),(36,30,2,'2013-07-22 16:52:05',2),(37,29,1,'2013-07-22 18:35:34',2),(39,55,1,'2013-07-22 19:16:39',2),(40,37,3,'2013-07-23 16:00:58',2),(41,57,1,'2013-07-24 19:00:48',2),(43,54,1,'2013-07-25 21:47:18',2),(49,72,4,'2013-08-06 15:17:23',2),(50,74,2,'2013-08-09 16:47:44',2),(51,57,4,'2013-08-16 18:12:31',2),(52,85,1,'2013-09-03 16:40:33',2),(53,21,1,'2014-04-22 18:23:26',2),(54,21,1,'2014-04-22 18:23:28',2);
/*!40000 ALTER TABLE `Participants_Leaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Pool`
--

DROP TABLE IF EXISTS `Participants_Pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Pool` (
  `Participant_Pool_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Date_Joined` date DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_Pool_ID`),
  KEY `participant_in_pool` (`Participant_ID`),
  KEY `member_type` (`Type`),
  CONSTRAINT `member_type` FOREIGN KEY (`Type`) REFERENCES `Pool_Member_Types` (`Type_ID`) ON UPDATE CASCADE,
  CONSTRAINT `participant_in_pool` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Pool`
--

LOCK TABLES `Participants_Pool` WRITE;
/*!40000 ALTER TABLE `Participants_Pool` DISABLE KEYS */;
INSERT INTO `Participants_Pool` VALUES (1,18,'2013-04-24','2013-04-24 19:57:14',5),(5,19,NULL,'2013-04-26 15:30:04',4),(8,21,NULL,'2013-05-22 18:51:01',5),(9,23,NULL,'2013-05-28 20:30:28',4),(10,25,NULL,'2013-05-30 16:19:19',3),(11,26,NULL,'2013-05-30 18:19:03',1),(12,27,NULL,'2013-05-30 20:02:14',4),(13,20,NULL,'2013-06-04 21:07:04',NULL),(14,24,NULL,'2013-06-14 17:05:36',NULL),(15,22,NULL,'2013-06-14 17:08:41',3),(16,28,NULL,'2013-06-21 14:33:35',NULL),(17,30,NULL,'2013-06-26 17:36:22',1),(19,35,NULL,'2013-07-03 20:44:31',NULL),(20,33,NULL,'2013-07-05 14:19:46',NULL),(22,46,NULL,'2013-07-17 21:06:59',NULL),(23,47,NULL,'2013-07-19 19:22:35',NULL),(24,48,NULL,'2013-07-19 22:17:06',NULL),(25,29,NULL,'2013-07-22 18:35:47',NULL),(26,55,NULL,'2013-07-22 19:16:57',NULL),(27,37,NULL,'2013-07-23 16:00:51',NULL),(28,56,NULL,'2013-07-23 16:10:19',NULL),(29,57,NULL,'2013-07-24 19:00:55',NULL),(30,68,NULL,'2013-08-02 19:29:15',NULL),(31,72,NULL,'2013-08-06 15:17:31',NULL),(32,52,NULL,'2013-08-06 16:15:01',NULL),(33,53,NULL,'2013-08-06 16:17:17',NULL),(34,74,NULL,'2013-08-09 16:45:19',NULL),(35,78,NULL,'2013-08-14 16:56:40',NULL),(36,85,NULL,'2013-09-03 16:49:24',NULL),(37,96,NULL,'2013-09-06 19:58:06',NULL);
/*!40000 ALTER TABLE `Participants_Pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Properties`
--

DROP TABLE IF EXISTS `Participants_Properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Properties` (
  `Participant_Property_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Property_ID` int(11) DEFAULT NULL,
  `Date_Linked` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Unit_Number` varchar(11) DEFAULT NULL,
  `Rent_Own` varchar(45) DEFAULT NULL,
  `Start_Date` datetime DEFAULT NULL,
  `End_Date` datetime DEFAULT NULL,
  `Primary_Residence` int(1) DEFAULT NULL,
  `Start_Primary` datetime DEFAULT NULL,
  `End_Primary` datetime DEFAULT NULL,
  `Reason_End` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Participant_Property_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Properties`
--

LOCK TABLES `Participants_Properties` WRITE;
/*!40000 ALTER TABLE `Participants_Properties` DISABLE KEYS */;
INSERT INTO `Participants_Properties` VALUES (1,20,1,'2013-05-20 18:13:11','3','own','2012-06-01 00:00:00','0000-00-00 00:00:00',1,'2012-06-16 00:00:00','0000-00-00 00:00:00',''),(2,19,1,'2013-05-20 18:37:41','5','','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(3,20,5,'2013-05-22 19:33:31','2E','rent','2010-06-15 00:00:00','2012-06-16 00:00:00',1,'2010-06-15 00:00:00','2012-06-16 00:00:00','moved'),(4,24,9,'2013-05-28 19:52:00','309','rent','2013-01-01 00:00:00','0000-00-00 00:00:00',1,'2013-01-01 00:00:00','2013-06-30 00:00:00','foreclosed'),(6,25,7,'2013-05-30 15:42:34','3','rent','2013-05-01 00:00:00','0000-00-00 00:00:00',1,'2013-06-01 00:00:00','0000-00-00 00:00:00','foreclosed'),(7,25,0,'2013-05-30 18:13:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,26,7,'2013-05-30 18:17:37','','','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2012-01-01 00:00:00','2013-01-31 00:00:00',''),(9,27,5,'2013-05-30 20:00:42','2E','rent','2013-02-01 00:00:00','2014-02-01 00:00:00',1,'2013-03-01 00:00:00','2013-07-19 00:00:00',''),(10,21,9,'2013-06-07 13:46:22','','','2013-07-29 00:00:00','2013-07-30 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(12,28,16,'2013-06-21 17:40:11','','rent','2013-01-01 00:00:00','0000-00-00 00:00:00',1,'2013-06-01 00:00:00','0000-00-00 00:00:00',''),(13,30,12,'2013-06-26 17:27:15','3','rent','2013-01-01 00:00:00','2013-12-31 00:00:00',1,'2013-01-01 00:00:00','2013-12-31 00:00:00','moved'),(14,30,16,'2013-06-26 17:55:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,32,16,'2013-06-26 18:22:20','5','','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(16,32,14,'2013-06-26 18:22:30','','own','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(17,26,10,'2013-06-27 19:56:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,39,13,'2013-07-10 18:39:27','','own','2013-07-01 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(19,38,13,'2013-07-10 18:44:42','','rent','2013-08-01 00:00:00','0000-00-00 00:00:00',1,'2013-08-01 00:00:00','0000-00-00 00:00:00',''),(20,18,16,'2013-07-10 21:15:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,18,16,'2013-07-10 21:15:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,46,21,'2013-07-17 21:06:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,22,23,'2013-07-17 21:16:37','3','rent','2010-07-01 00:00:00','2013-07-01 00:00:00',1,'2010-07-01 00:00:00','2013-07-01 00:00:00','moved'),(24,27,7,'2013-07-19 16:35:54','','own','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(26,24,25,'2013-07-19 19:48:20','4','rent','2013-08-01 00:00:00','0000-00-00 00:00:00',1,'2013-08-01 00:00:00','0000-00-00 00:00:00',''),(27,20,30,'2013-07-22 14:46:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,62,32,'2013-07-31 21:26:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,65,37,'2013-07-31 21:33:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,53,32,'2013-08-02 15:36:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,69,25,'2013-08-02 19:30:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,71,38,'2013-08-06 15:11:19','2','rent','2012-10-01 00:00:00','0000-00-00 00:00:00',1,'2012-10-01 00:00:00','0000-00-00 00:00:00',''),(33,72,5,'2013-08-06 15:17:03','','','2013-08-01 00:00:00','2014-07-31 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(34,0,1,'2013-08-06 15:53:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,0,1,'2013-08-06 15:53:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,52,24,'2013-08-06 16:06:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,35,36,'2013-08-06 16:49:19','','rent','2013-08-01 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',''),(38,34,23,'2013-08-07 14:07:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,68,5,'2013-08-07 14:21:01','2','rent','2013-08-01 00:00:00','0000-00-00 00:00:00',1,'2013-08-01 00:00:00','0000-00-00 00:00:00',''),(40,29,9,'2013-08-07 15:02:09','','rent','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2013-08-01 00:00:00','0000-00-00 00:00:00',''),(41,70,14,'2013-08-07 15:48:10',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(42,72,28,'2013-08-08 14:15:52','','','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2013-01-01 00:00:00','0000-00-00 00:00:00',''),(43,74,23,'2013-08-09 16:46:28','','own','2005-08-01 00:00:00','0000-00-00 00:00:00',1,'2005-08-01 00:00:00','0000-00-00 00:00:00',''),(44,76,32,'2013-08-09 19:42:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,73,41,'2013-08-13 19:03:46',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(46,50,42,'2013-08-13 20:37:52',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL),(47,79,38,'2013-08-14 18:28:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,88,43,'2013-08-15 15:22:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,89,44,'2013-08-16 18:28:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,91,45,'2013-09-03 15:41:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,92,46,'2013-09-03 16:20:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,92,47,'2013-09-03 16:20:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,66,19,'2013-09-04 15:13:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,94,48,'2013-09-06 18:42:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,95,49,'2013-09-06 18:46:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,35,52,'2013-10-09 16:52:12',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Participants_Properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Roles`
--

DROP TABLE IF EXISTS `Participants_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Roles` (
  `Role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Role_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Roles`
--

LOCK TABLES `Participants_Roles` WRITE;
/*!40000 ALTER TABLE `Participants_Roles` DISABLE KEYS */;
INSERT INTO `Participants_Roles` VALUES (1,'Speaker'),(2,'Chairperson'),(3,'Floor Team'),(4,'Media Contact'),(5,'Testimony'),(7,'Turnout');
/*!40000 ALTER TABLE `Participants_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pool_Benchmarks`
--

DROP TABLE IF EXISTS `Pool_Benchmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pool_Benchmarks` (
  `Pool_Benchmark_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Benchmark_Name` varchar(100) DEFAULT NULL,
  `Pipeline_Type` int(11) DEFAULT NULL,
  `Benchmark_Info` varchar(45) DEFAULT NULL,
  `Step_Number` int(11) DEFAULT NULL,
  `Benchmark_Type` varchar(45) DEFAULT 'Benchmark',
  PRIMARY KEY (`Pool_Benchmark_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pool_Benchmarks`
--

LOCK TABLES `Pool_Benchmarks` WRITE;
/*!40000 ALTER TABLE `Pool_Benchmarks` DISABLE KEYS */;
INSERT INTO `Pool_Benchmarks` VALUES (1,'Reclaiming SW Orientation',1,NULL,1,'Benchmark'),(2,'One on One',1,'Leader name',2,'Activity'),(3,'Individual homeownership plans developed',1,NULL,3,'Benchmark'),(4,'Homebuyer class',1,'Class Provider',4,'Benchmark'),(5,'Barriers identified - Individual',1,'Barriers',5,'Benchmark'),(6,'Preapproval for financing',1,NULL,8,'Benchmark'),(7,'Home buying process',1,'Price',9,'Benchmark'),(8,'Home purchased',1,'Price',10,'Benchmark'),(9,'30-60 days late',2,NULL,2,'Benchmark'),(10,'Summons',2,NULL,3,'Benchmark'),(11,'In counseling',2,'Counseling Provider',4,'Benchmark'),(12,'Court Date',2,NULL,6,'Benchmark'),(13,'Mediation process',2,NULL,7,'Benchmark'),(14,'Resolution',2,'Resolution',8,'Benchmark'),(15,'Barriers identified - Structural',1,'Barriers',6,'Benchmark'),(16,'Referred to CWF',1,NULL,7,'Benchmark'),(17,'Referred to CWF',2,NULL,5,'Benchmark'),(18,'Referred to CWF',3,NULL,2,'Benchmark'),(19,'Referred to landlord',3,'TTM or non-TTM; direct or indirect connection',3,'Benchmark'),(20,'Placed in rental housing',3,NULL,4,'Benchmark'),(21,'Reclaiming SW Orientation',2,NULL,1,'Benchmark'),(22,'Reclaiming SW Orientation',3,NULL,1,'Benchmark'),(23,'Follow up call',1,NULL,NULL,'Activity');
/*!40000 ALTER TABLE `Pool_Benchmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pool_Employers`
--

DROP TABLE IF EXISTS `Pool_Employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pool_Employers` (
  `Pool_Employer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Employer_Name` varchar(150) DEFAULT NULL,
  `Work_Time` varchar(4) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Pool_Employer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pool_Employers`
--

LOCK TABLES `Pool_Employers` WRITE;
/*!40000 ALTER TABLE `Pool_Employers` DISABLE KEYS */;
INSERT INTO `Pool_Employers` VALUES (1,18,'SWOP','full','2013-06-07 19:29:05'),(2,18,'LISC','part','2013-06-07 19:35:54'),(4,25,'self employed','full','2013-06-12 16:49:01'),(5,28,'self-employed','full','2013-06-21 14:35:28'),(6,30,'United States Government','full','2013-06-26 17:39:50'),(7,32,'Employer','','2013-06-26 18:29:13'),(8,32,'Employer','','2013-06-26 18:29:31'),(9,32,'Employer','','2013-06-26 18:31:57'),(10,32,'Employer','','2013-06-26 18:32:56'),(11,32,'Employer','','2013-06-26 18:33:07'),(12,20,'Chapin Hall','full','2013-06-27 18:40:06'),(13,46,'Employer','','2013-07-17 21:09:03'),(14,27,'Chapin Hall','full','2013-07-19 16:22:09'),(15,55,'Employer','full','2013-07-22 19:18:53'),(16,35,'CTA','full','2013-08-06 16:19:26'),(17,74,'Self employed','full','2013-08-09 16:46:15'),(18,52,'Chapin','full','2013-09-10 20:57:05'),(19,52,'Employer','','2013-09-10 21:12:02'),(20,52,'Employer','','2013-09-10 21:21:34'),(21,18,'test','full','2013-09-11 14:48:43');
/*!40000 ALTER TABLE `Pool_Employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pool_Finances`
--

DROP TABLE IF EXISTS `Pool_Finances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pool_Finances` (
  `Pool_Finance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Credit_Score` int(11) DEFAULT NULL,
  `Income` varchar(45) DEFAULT NULL,
  `Current_Housing` int(11) DEFAULT NULL,
  `Household_Location` int(11) DEFAULT NULL,
  `Housing_Cost` varchar(45) DEFAULT NULL,
  `Employment` varchar(100) DEFAULT NULL,
  `Assets` varchar(100) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Pool_Finance_ID`),
  KEY `pool_person` (`Participant_ID`),
  KEY `housing_situation` (`Current_Housing`),
  CONSTRAINT `housing_situation` FOREIGN KEY (`Current_Housing`) REFERENCES `Current_Housing` (`Current_Housing_ID`) ON UPDATE CASCADE,
  CONSTRAINT `pool_person` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pool_Finances`
--

LOCK TABLES `Pool_Finances` WRITE;
/*!40000 ALTER TABLE `Pool_Finances` DISABLE KEYS */;
INSERT INTO `Pool_Finances` VALUES (1,18,600,'80000',1,0,'2000','SWOP','500','2013-04-24 19:58:43'),(2,18,650,'70000',1,2,'0','','5000','2013-04-25 15:45:34'),(3,19,650,'34000',4,1,'','','','2013-05-06 18:18:44'),(5,26,0,'',2,0,'','','','2013-05-30 18:22:06'),(6,21,0,'13000',4,0,'','','','2013-06-06 19:53:19'),(7,21,0,'15000',4,0,'','','','2013-06-06 20:05:03'),(10,25,685,'35000',3,1,'900/month',NULL,'','2013-06-12 16:49:01'),(11,28,685,'35000',3,1,'900/month',NULL,'n/a','2013-06-21 14:35:28'),(12,30,760,'80000',1,2,'',NULL,'','2013-06-26 17:39:50'),(18,22,700,'27500',1,1,NULL,NULL,NULL,'2013-06-27 16:10:17'),(19,20,700,'70000',3,2,'1200',NULL,'','2013-06-27 18:40:06'),(20,46,0,'',1,1,'',NULL,'','2013-07-17 21:09:03'),(21,27,720,'800000',1,2,'2000',NULL,'100000','2013-07-19 16:22:09'),(22,55,720,'2200',1,1,'1200',NULL,'15000','2013-07-22 19:18:53'),(23,35,670,'35000',3,1,'765',NULL,'','2013-08-06 16:19:26'),(24,74,790,'75000',1,2,'2000',NULL,'50000','2013-08-09 16:46:15'),(25,52,0,'20000',2,0,'',NULL,'','2013-09-10 20:57:04'),(26,52,0,'20000',2,0,'',NULL,'','2013-09-10 21:12:02'),(27,52,0,'34',5,0,'',NULL,'','2013-09-10 21:21:34'),(28,18,2,'',5,0,'',NULL,'','2013-09-11 14:48:43');
/*!40000 ALTER TABLE `Pool_Finances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pool_Member_Types`
--

DROP TABLE IF EXISTS `Pool_Member_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pool_Member_Types` (
  `Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Name` varchar(100) DEFAULT NULL,
  `Pipeline` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pool_Member_Types`
--

LOCK TABLES `Pool_Member_Types` WRITE;
/*!40000 ALTER TABLE `Pool_Member_Types` DISABLE KEYS */;
INSERT INTO `Pool_Member_Types` VALUES (0,'',''),(1,'Owner looking for loan modification','2'),(2,'Person looking to own','1'),(3,'Renter looking to improve/change rental situation','3'),(4,'New renter','3'),(5,'Established owner looking to purchase investment property','1');
/*!40000 ALTER TABLE `Pool_Member_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pool_Outcomes`
--

DROP TABLE IF EXISTS `Pool_Outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pool_Outcomes` (
  `Pool_Outcome_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Outcome_ID` int(11) DEFAULT NULL,
  `Outcome_Location` int(11) DEFAULT NULL,
  `Date_Exited` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Activity_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pool_Outcome_ID`),
  KEY `outcome_names` (`Outcome_ID`),
  KEY `participants_with_outcomes` (`Participant_ID`),
  KEY `location_name` (`Outcome_Location`),
  CONSTRAINT `location_name` FOREIGN KEY (`Outcome_Location`) REFERENCES `Outcome_Locations` (`Outcome_Location_ID`) ON UPDATE CASCADE,
  CONSTRAINT `outcome_names` FOREIGN KEY (`Outcome_ID`) REFERENCES `Outcomes_for_Pool` (`Outcome_ID`) ON UPDATE CASCADE,
  CONSTRAINT `participants_with_outcomes` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pool_Outcomes`
--

LOCK TABLES `Pool_Outcomes` WRITE;
/*!40000 ALTER TABLE `Pool_Outcomes` DISABLE KEYS */;
INSERT INTO `Pool_Outcomes` VALUES (4,26,2,2,'2013-06-14 14:57:53',3),(8,22,1,1,'2013-07-15 18:24:52',3),(9,35,3,1,'2013-07-15 18:25:41',3),(11,46,2,1,'2013-07-17 21:07:28',3),(12,29,4,1,'2013-07-22 18:36:50',3),(18,24,1,2,'2013-08-02 20:18:56',3),(19,72,2,1,'2013-08-06 15:18:55',3);
/*!40000 ALTER TABLE `Pool_Outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pool_Progress`
--

DROP TABLE IF EXISTS `Pool_Progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pool_Progress` (
  `Pool_Progress_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Benchmark_Completed` int(11) DEFAULT NULL,
  `Date_Completed` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Activity_Type` int(11) DEFAULT NULL,
  `Expected_Date` date DEFAULT NULL,
  `More_Info` int(11) DEFAULT NULL,
  `Barrier_Notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Pool_Progress_ID`),
  KEY `benchmark_passed` (`Benchmark_Completed`),
  KEY `participant_progressing` (`Participant_ID`),
  KEY `test_idx` (`More_Info`),
  CONSTRAINT `benchmark_passed` FOREIGN KEY (`Benchmark_Completed`) REFERENCES `Pool_Benchmarks` (`Pool_Benchmark_ID`) ON UPDATE CASCADE,
  CONSTRAINT `participant_progressing` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pool_Progress`
--

LOCK TABLES `Pool_Progress` WRITE;
/*!40000 ALTER TABLE `Pool_Progress` DISABLE KEYS */;
INSERT INTO `Pool_Progress` VALUES (1,18,1,'2013-05-06 05:00:00',1,NULL,NULL,NULL),(2,21,4,'2013-06-07 14:25:58',1,NULL,NULL,NULL),(3,26,12,'2013-06-14 14:57:04',1,NULL,NULL,NULL),(4,21,5,'2013-06-18 21:03:42',1,NULL,NULL,NULL),(5,18,2,'2013-07-12 15:43:17',1,NULL,NULL,NULL),(6,30,17,'2013-07-17 16:50:44',1,NULL,NULL,NULL),(30,27,9,'2013-07-19 16:38:03',1,NULL,NULL,NULL),(31,27,10,'2013-08-02 05:00:00',1,'2013-08-18',NULL,NULL),(33,27,17,'2013-08-16 05:00:00',1,NULL,NULL,NULL),(35,27,12,'0000-00-00 00:00:00',1,'2013-09-15',NULL,NULL),(36,47,18,'2013-07-19 19:29:40',1,NULL,NULL,NULL),(37,47,19,'2013-07-29 05:00:00',1,'2013-08-18',NULL,NULL),(38,47,20,'2013-07-31 05:00:00',1,'2013-08-28',NULL,NULL),(39,48,1,'2013-07-25 05:00:00',1,NULL,NULL,NULL),(41,48,2,'2013-08-14 05:00:00',1,'2013-08-24',45,NULL),(42,48,3,'0000-00-00 00:00:00',1,'2013-09-13',NULL,NULL),(44,18,14,'2013-07-26 05:00:00',1,'2013-08-21',NULL,NULL),(48,57,2,'2013-07-24 19:06:18',1,NULL,NULL,NULL),(50,35,1,'2013-07-26 16:43:21',1,NULL,NULL,NULL),(51,21,1,'2013-08-08 05:00:00',1,'2013-08-25',NULL,NULL),(52,21,2,'2013-09-04 05:00:00',1,'2013-09-07',NULL,NULL),(53,57,1,'2013-07-31 05:00:00',1,'2013-08-25',NULL,NULL),(55,57,3,'2013-07-26 19:13:11',1,NULL,NULL,NULL),(56,57,4,'2013-07-31 05:00:00',1,'2013-08-25',NULL,NULL),(57,57,5,'2013-07-31 05:00:00',1,'2013-08-30',NULL,NULL),(61,57,15,'0000-00-00 00:00:00',1,'2006-12-30',NULL,NULL),(66,56,3,'2013-08-23 05:00:00',1,'2013-09-15',NULL,NULL),(67,56,1,'2013-08-16 05:00:00',1,'2013-09-01',NULL,NULL),(68,56,2,'2013-08-09 05:00:00',1,'2013-09-15',NULL,NULL),(70,56,4,'2013-08-30 05:00:00',1,'2013-09-22',NULL,NULL),(71,56,5,'2013-09-06 05:00:00',1,'2013-09-29',NULL,NULL),(72,56,15,'2013-09-13 05:00:00',1,'2013-10-06',NULL,NULL),(73,56,16,'2013-09-20 05:00:00',1,'2013-10-13',NULL,NULL),(74,56,6,'2013-10-11 05:00:00',1,'2013-10-20',NULL,NULL),(76,56,8,'2013-12-06 06:00:00',1,'2013-11-24',NULL,NULL),(77,21,3,'0000-00-00 00:00:00',1,'2013-10-04',NULL,NULL),(80,72,21,'2013-08-19 05:00:00',1,'2013-08-22',NULL,NULL),(82,35,1,'2013-08-16 05:00:00',1,'2013-09-05',NULL,NULL),(83,35,2,'2013-08-01 05:00:00',1,'2013-09-15',65,NULL),(84,35,3,'0000-00-00 00:00:00',1,'2013-09-19',NULL,NULL),(86,72,9,'0000-00-00 00:00:00',1,'2013-10-18',NULL,NULL),(87,29,21,'2013-08-08 19:31:30',1,NULL,NULL,NULL),(88,29,9,'0000-00-00 00:00:00',1,'2013-09-07',NULL,NULL),(90,18,3,'2013-08-13 15:08:13',1,NULL,NULL,NULL),(91,18,4,'2013-09-10 05:00:00',1,'2013-09-12',NULL,NULL),(92,18,16,'2013-08-30 05:00:00',1,NULL,NULL,NULL),(94,18,6,'2013-09-26 05:00:00',1,'2013-09-29',NULL,NULL),(95,18,7,'0000-00-00 00:00:00',1,'2013-10-25',NULL,NULL),(97,48,2,'2013-09-23 14:48:29',1,NULL,61,NULL),(98,48,3,'0000-00-00 00:00:00',1,'2013-10-23',NULL,NULL),(99,96,21,'0000-00-00 00:00:00',1,'2013-10-23',NULL,NULL),(100,96,2,'2013-09-23 14:50:09',1,NULL,NULL,NULL),(101,96,3,'0000-00-00 00:00:00',1,'2013-10-23',NULL,NULL),(102,21,5,'2014-04-01 13:28:21',1,NULL,NULL,'Alex has never had a credit card.'),(103,21,15,'0000-00-00 00:00:00',1,'2014-05-01',NULL,NULL),(107,52,23,'2014-05-12 17:24:02',1,NULL,NULL,NULL),(108,52,2,'2014-05-12 17:25:11',1,NULL,NULL,NULL),(109,52,10,'0000-00-00 00:00:00',1,'2014-06-11',NULL,NULL);
/*!40000 ALTER TABLE `Pool_Progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pool_Status_Changes`
--

DROP TABLE IF EXISTS `Pool_Status_Changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pool_Status_Changes` (
  `Pool_Status_Change_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Active` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  `Date_Changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Activity_Type` int(11) DEFAULT NULL,
  `Member_Type` int(11) DEFAULT NULL,
  `Expected_Date` date DEFAULT NULL,
  PRIMARY KEY (`Pool_Status_Change_ID`),
  KEY `Test_idx` (`Member_Type`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pool_Status_Changes`
--

LOCK TABLES `Pool_Status_Changes` WRITE;
/*!40000 ALTER TABLE `Pool_Status_Changes` DISABLE KEYS */;
INSERT INTO `Pool_Status_Changes` VALUES (1,1,21,'2013-03-22 18:51:01',4,NULL,NULL),(2,0,21,'2013-05-22 18:52:15',4,NULL,NULL),(3,1,21,'2013-05-22 18:55:51',4,NULL,NULL),(5,0,21,'2013-05-22 19:14:36',4,NULL,NULL),(6,1,21,'2013-05-22 19:22:32',4,NULL,NULL),(7,1,23,'2013-05-28 20:30:28',4,NULL,NULL),(8,1,25,'2013-05-30 16:19:19',4,NULL,NULL),(9,1,26,'2013-05-30 18:19:03',4,NULL,NULL),(10,0,26,'2013-05-30 18:20:03',4,NULL,NULL),(11,1,26,'2013-05-30 18:20:51',4,NULL,NULL),(12,0,26,'2013-05-30 18:25:10',4,NULL,NULL),(14,1,19,'2013-06-04 19:44:15',4,NULL,NULL),(17,1,26,'2013-06-04 21:07:46',4,NULL,NULL),(18,0,26,'2013-06-04 21:07:58',4,NULL,NULL),(19,1,26,'2013-06-04 21:08:00',4,NULL,NULL),(20,0,26,'2013-06-04 21:08:04',4,NULL,NULL),(21,1,26,'2013-06-04 21:08:07',4,NULL,NULL),(22,0,26,'2013-06-04 21:08:19',4,NULL,NULL),(23,1,26,'2013-06-04 21:08:21',4,NULL,NULL),(24,0,23,'2013-06-05 16:20:41',4,NULL,NULL),(25,1,23,'2013-06-05 16:20:53',4,NULL,NULL),(26,0,23,'2013-06-14 14:56:07',4,NULL,NULL),(27,1,24,'2013-06-14 17:05:36',NULL,NULL,NULL),(28,1,22,'2013-06-14 17:08:41',5,3,NULL),(29,1,22,'2013-06-14 17:15:14',4,2,NULL),(30,1,23,'2013-06-18 15:46:51',4,4,NULL),(31,1,28,'2013-06-21 14:33:35',4,2,NULL),(32,1,28,'2013-06-21 15:08:26',5,4,NULL),(33,1,24,'2013-06-24 15:34:51',5,0,NULL),(36,1,24,'2013-06-24 15:50:17',5,1,NULL),(37,1,28,'2013-06-24 16:24:59',5,2,NULL),(42,0,30,'2013-06-26 17:36:22',4,5,NULL),(43,0,30,'2013-06-26 17:41:03',4,NULL,NULL),(44,1,32,'2013-06-26 18:26:37',4,2,NULL),(45,0,32,'2013-06-26 18:35:24',4,NULL,NULL),(46,0,32,'2013-06-26 18:35:53',4,NULL,NULL),(47,0,24,'2013-06-26 19:48:05',4,NULL,NULL),(48,1,24,'2013-06-26 19:48:16',4,1,NULL),(51,0,30,'2013-06-27 14:29:58',5,0,NULL),(52,1,23,'2013-06-27 20:55:29',5,4,NULL),(53,1,27,'2013-06-27 21:23:54',5,1,NULL),(54,1,35,'2013-07-03 20:44:31',4,2,NULL),(55,1,33,'2013-07-05 14:19:46',4,2,NULL),(60,0,30,'2013-07-10 19:19:48',5,1,NULL),(62,1,28,'2013-07-11 15:32:27',5,4,NULL),(65,1,18,'2013-07-12 15:55:20',4,1,NULL),(66,0,22,'2013-07-15 18:24:52',4,NULL,NULL),(67,0,35,'2013-07-15 18:25:41',4,NULL,NULL),(68,1,41,'2013-07-15 18:26:13',4,2,NULL),(69,1,41,'2013-07-15 18:37:04',5,1,NULL),(70,0,41,'2013-07-15 19:18:50',4,NULL,NULL),(91,1,30,'2013-07-17 20:07:46',5,4,NULL),(96,1,30,'2013-07-17 20:28:02',5,2,NULL),(97,1,46,'2013-07-17 21:06:59',4,1,NULL),(98,1,41,'2013-07-18 16:24:45',5,5,NULL),(99,1,41,'2013-07-18 16:25:15',5,4,NULL),(100,1,41,'2013-07-18 16:25:20',5,3,NULL),(101,1,41,'2013-07-18 16:25:43',5,1,NULL),(103,1,41,'2013-07-18 16:57:56',5,2,NULL),(106,1,41,'2013-07-18 17:12:25',5,3,NULL),(107,1,20,'2013-07-19 15:53:52',4,2,NULL),(108,0,20,'2013-07-19 15:54:01',4,NULL,NULL),(109,0,27,'2013-07-19 16:55:14',4,NULL,NULL),(110,1,47,'2013-07-19 19:22:35',4,3,NULL),(111,1,48,'2013-07-19 22:17:06',4,2,NULL),(116,1,29,'2013-07-22 18:35:47',4,0,NULL),(117,1,55,'2013-07-22 19:16:57',4,1,NULL),(118,1,37,'2013-07-23 16:00:51',4,5,NULL),(120,1,57,'2013-07-24 19:00:55',4,2,NULL),(121,1,22,'2013-07-25 17:59:43',5,0,NULL),(122,1,18,'2013-07-25 19:32:17',5,2,NULL),(123,1,35,'2013-07-26 16:43:21',4,2,NULL),(125,1,21,'2013-07-26 16:52:07',4,2,NULL),(126,0,57,'2013-07-26 18:21:55',4,NULL,NULL),(127,1,57,'2013-07-26 19:12:46',4,2,NULL),(132,1,56,'2013-08-02 14:29:36',4,2,NULL),(134,1,20,'2013-08-02 15:03:21',5,0,NULL),(135,1,68,'2013-08-02 19:29:15',4,3,NULL),(136,1,72,'2013-08-06 15:17:31',4,1,NULL),(137,1,52,'2013-08-06 16:15:01',4,1,NULL),(138,1,53,'2013-08-06 16:17:17',4,2,NULL),(139,0,35,'2013-08-06 16:49:56',4,NULL,NULL),(140,1,35,'2013-08-06 21:01:25',4,2,NULL),(141,1,29,'2013-08-08 19:31:23',5,1,NULL),(142,1,74,'2013-08-09 16:45:19',4,5,NULL),(143,1,78,'2013-08-14 16:56:40',4,2,NULL),(144,1,27,'2013-08-14 20:34:05',5,0,NULL),(145,0,81,'2013-08-14 21:24:43',4,NULL,NULL),(146,1,32,'2013-08-14 21:32:46',5,0,NULL),(147,1,82,'2013-08-14 21:36:16',4,NULL,NULL),(148,1,83,'2013-08-14 21:41:58',4,3,NULL),(149,0,84,'2013-08-14 21:49:45',4,0,NULL),(150,0,85,'2013-08-14 21:51:21',4,0,NULL),(151,0,86,'2013-08-15 15:12:28',4,0,NULL),(152,0,87,'2013-08-15 15:16:09',4,0,NULL),(153,0,88,'2013-08-15 15:21:53',4,0,NULL),(154,0,89,'2013-08-16 18:27:28',4,0,NULL),(155,0,90,'2013-08-23 16:52:05',4,0,NULL),(156,0,91,'2013-09-03 15:41:01',4,0,NULL),(157,0,92,'2013-09-03 16:19:58',4,0,NULL),(158,1,85,'2013-09-03 16:49:24',4,4,NULL),(159,1,93,'2013-09-04 19:41:44',4,2,NULL),(160,0,94,'2013-09-06 18:42:14',4,0,NULL),(161,0,95,'2013-09-06 18:46:23',4,0,NULL),(162,0,96,'2013-09-06 19:56:38',4,0,NULL),(163,1,96,'2013-09-06 19:58:07',4,4,NULL),(164,0,96,'2013-09-06 20:00:22',4,NULL,NULL),(165,1,96,'2013-09-23 14:49:56',4,1,NULL),(166,1,96,'2013-09-23 14:50:06',5,2,NULL),(167,0,96,'2013-09-23 14:50:12',4,NULL,NULL),(168,0,57,'2013-10-01 19:02:29',4,NULL,NULL),(169,0,20,'2013-10-18 15:35:30',4,NULL,NULL);
/*!40000 ALTER TABLE `Pool_Status_Changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Properties`
--

DROP TABLE IF EXISTS `Properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Properties` (
  `Property_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Address_Street_Num` int(11) DEFAULT NULL,
  `Address_Street_Direction` varchar(45) DEFAULT NULL,
  `Address_Street_Name` varchar(45) DEFAULT NULL,
  `Address_Street_Type` varchar(45) DEFAULT NULL,
  `Zipcode` int(11) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  `PIN` varchar(10) DEFAULT NULL,
  `Sale_Price` varchar(45) DEFAULT NULL,
  `Is_Vacant` int(11) DEFAULT NULL,
  `Is_Acquired` int(11) DEFAULT NULL,
  `Is_Rehabbed` int(11) DEFAULT NULL,
  `Rehabbed_Investment` varchar(45) DEFAULT NULL,
  `Disposition` int(11) DEFAULT NULL,
  `Construction_Type` int(11) DEFAULT NULL,
  `Home_Size` int(11) DEFAULT NULL,
  `Date_Entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Property_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Property_ID`),
  KEY `disposition_id` (`Disposition`),
  CONSTRAINT `disposition_id` FOREIGN KEY (`Disposition`) REFERENCES `Property_Dispositions` (`Disposition_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Properties`
--

LOCK TABLES `Properties` WRITE;
/*!40000 ALTER TABLE `Properties` DISABLE KEYS */;
INSERT INTO `Properties` VALUES (1,6106,'S','Ingleside','AVE',NULL,NULL,'','0',1,0,1,'10,000',3,4,1,'2013-05-19 05:00:00',1),(5,5220,'S','Woodlawn','ST',NULL,NULL,'','',1,0,1,'',4,4,2,'2013-06-19 05:00:00',1),(7,221,'W','Test','ST',NULL,NULL,'','',0,0,0,'',3,0,0,'2013-06-19 05:00:00',0),(9,1806,'N','Zembla','ST',NULL,NULL,'1234567890','',0,0,1,'',1,4,2,'2013-06-19 05:00:00',0),(10,2608,'W','73rd','ST',NULL,NULL,'7777777777','',0,0,0,'',4,0,0,'2013-06-19 05:00:00',0),(12,1509,'W','68th','ST',NULL,NULL,'9876543210','',0,0,0,'',4,0,0,'2013-06-21 14:06:07',0),(13,909,'W','65th','ST',NULL,NULL,'','5000',0,0,0,'',2,4,2,'2013-06-21 14:12:44',NULL),(14,1755,'S','Paulina','St',NULL,NULL,'','',0,0,1,'',1,NULL,NULL,'2013-06-21 14:17:16',NULL),(16,6851,'S','Indiana','Dr',NULL,NULL,'1212121212','50000',1,0,0,'',4,0,0,'2013-06-21 14:19:58',NULL),(21,2609,'E','63rd','ST',NULL,NULL,'','',1,0,0,'',4,0,0,'2013-07-03 21:53:25',0),(23,1200,'S','Prairie','ST',NULL,NULL,'1234567890','',0,0,0,'',4,NULL,NULL,'2013-07-17 21:10:06',NULL),(24,17,'W','Hamlin','ST',NULL,NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,4,4,2,'2013-07-19 19:46:19',1),(25,9500,'S','State','ST',NULL,NULL,'0987654321',NULL,NULL,NULL,NULL,NULL,2,4,3,'2013-07-19 19:47:51',3),(28,5235,'W','68th','ST',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-07-22 14:25:47',0),(30,7890,'W','70th','ST',NULL,NULL,'1231231234','35000',NULL,NULL,NULL,NULL,1,0,0,'2013-07-22 14:38:16',0),(32,5411,'S','Woodlawn','AVE',NULL,NULL,'1233345567',NULL,NULL,NULL,NULL,'',3,0,0,'2013-07-26 18:49:34',0),(34,3131,'N','Test','ST',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,2,0,0,'2013-07-26 19:44:26',0),(36,750,'N','Western','AVE',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,4,3,'2013-07-31 21:30:19',1),(37,470,'E','79th','ST',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,5,1,'2013-07-31 21:33:22',1),(38,3330,'S','Lituanica','AVE',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,5,2,'2013-08-06 15:11:19',1),(40,5703,'N','Woodlawn','AVE',NULL,NULL,'1231231234',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-08-13 19:00:33',0),(41,6230,'S','Woodlawn','AVE',NULL,NULL,'2342342345',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-08-13 19:03:46',0),(42,622,'W','Aldine','AVE',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-08-13 20:37:52',0),(43,6824,'W','Delancy','AVE',NULL,NULL,'9999999999',NULL,NULL,NULL,NULL,NULL,4,5,1,'2013-08-15 15:22:36',1),(44,2601,'W','63rd','ST',60629,NULL,'',NULL,NULL,NULL,NULL,'',4,5,3,'2013-08-16 18:28:57',2),(45,2600,'W','65th','ST',NULL,NULL,'',NULL,NULL,NULL,NULL,'',4,0,0,'2013-09-03 15:41:30',0),(46,120,'E','Cullerton','ST',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-09-03 16:20:15',0),(47,120,'E','Cullerton','ST',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-09-03 16:20:17',0),(48,1800,'','test','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-09-06 18:42:22',0),(49,908,'W','65th','ST',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-09-06 18:46:34',0),(50,5530,'S','Cornell','AVE',60637,NULL,'',NULL,NULL,NULL,NULL,NULL,4,4,3,'2013-09-27 17:01:33',1),(51,5522,'S','Western','AVE',60629,'170318351001009','',NULL,NULL,NULL,NULL,'',4,4,3,'2013-09-30 20:31:05',1),(52,4642,'S','Cornell','AVE',0,'','',NULL,NULL,NULL,NULL,NULL,4,0,0,'2013-10-09 16:52:12',0),(53,6106,'S','Ingleside','ST',0,'','',NULL,NULL,NULL,NULL,NULL,4,0,0,'2014-04-01 15:53:08',0),(54,6106,'N','Ingleside','ST',0,'','',NULL,NULL,NULL,NULL,NULL,4,0,0,'2014-04-01 15:56:33',0);
/*!40000 ALTER TABLE `Properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Dispositions`
--

DROP TABLE IF EXISTS `Property_Dispositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Property_Dispositions` (
  `Disposition_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Disposition_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Disposition_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Dispositions`
--

LOCK TABLES `Property_Dispositions` WRITE;
/*!40000 ALTER TABLE `Property_Dispositions` DISABLE KEYS */;
INSERT INTO `Property_Dispositions` VALUES (1,'Purchased by owner-occupant'),(2,'Purchased by an investor'),(3,'Properties paired with renters'),(4,'N/A');
/*!40000 ALTER TABLE `Property_Dispositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Files`
--

DROP TABLE IF EXISTS `Property_Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Property_Files` (
  `File_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Property_ID` int(11) DEFAULT NULL,
  `File_Name` varchar(45) DEFAULT NULL,
  `File_Size` varchar(45) DEFAULT NULL,
  `File_Type` varchar(45) DEFAULT NULL,
  `File_Content` blob,
  PRIMARY KEY (`File_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Files`
--

LOCK TABLES `Property_Files` WRITE;
/*!40000 ALTER TABLE `Property_Files` DISABLE KEYS */;
INSERT INTO `Property_Files` VALUES (1,32,'Slide notes.docx','13178','application/vnd.openxmlformats-officedocument','PK\0\0\0\0\0!\0	$���\0\0�\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO�@��&��W�z0Ɣ����M��.C��~dg���JK���Z���2���3��J��<*kR�Oz,#m��,e�����E��Di\r�l\r�F�ˋ�t�\0#�6��\"w�9����:0t�[�E�[?�N�1~���piM\0�Pi���r1/C4^���C�,��_��R&�+��H��d�\\�CB��w�P���V������*�h\"|x�0����gV�5���i�y�$4����V\"e�ˤ9�B��A���)j���T(�y�>vw\Z�餶ث�v�(�SL���qW�U�DX��˿Q�w��4\ZS�^�	��0�F�\"м�\\�gsld�Y�dL�uH�����݂��c\Z9>(hVDۈ5��{����A���7�t�	\0\0��\0PK\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���JA���a�}7�\n\"���H�w\"����w̤ھ�� �P�^����O֛���;�<�aYՠ؛`G�kxm��PY�[��g\rGΰino�/<���<�1��ⳆA$>\"f3��\\�ȾT��I	S����������W����Y\rig�@��X6_�]7\Z~\nf��ˉ�ao�.b*lI�r�j)�,\Zl0�%��b�\n6�i���D�_���,	�	���|u�Z^t٢yǯ;!Y,}{�C��/h>\0\0��\0PK\0\0\0\0\0!\0|;�9\"\0\0�\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��MO�0��&�һV]�ٲ5٫���-Sh��t����\nʢ.Mf����I�Z��U�����q�\"�����=loO.Y�$m.+gA������T��!,M�QH�(XI�\\q���Zb�\Z�aG;_K\n�/x#Փ,�/�d�}?�e��h��7�)��m�g;���k��k�4��D�f2�/��w�������Bm�w�4������A�^�#�࣡�FkP���ܚ�Hx�����ȽAt�~9\'���ozW�nM���t���V�WkJ�lN�W���z���^�>\\�\0\0��\0PK\0\0\0\0\0!\0a�@ \0\0�\0\0\0\0\0word/document.xml�W�n7}/�쳭�+_ X\n�81ĭP��cA�v	�Ii�<����˗���+ّ��I��.˙ù��._�Q��a�V�d�$�*ՙT�$���7�	9/T&J�x�l�%/��wY�3��+V�\0�ܸ6�$)�7�~ߥW��*�Z����R]��r)S���f���p��Sv��j#\\��U�hڰ�^Km+�]Oۼ_	�Z�c���B��o�=8�`�$Y[5n:�\\�M@�G�a�x`���@ܱo�DZ�B�}\Z_���.��cIl�����pt��.�����5Z�<�{�Y�T�MB�]�q8x,��#b��p�.�JH������-.N������مc�ס�U�V8�O�lpO���ܓ\0�������\\i+%\"��#\n�L���ζ��P=��d?O��`t=:=9O�G׼��7+�W�/��\rn~:/eƤ�gw��;��n\0�����K�hc9����[nmqZ���s��͠P�v��b����>�@�\"��N���q���3\"E?�e�v����Q�?�U�䘏h��O3��I�l�A����(�\n�\n��X7&_����%��\nS�G�n���Q�Qu!K�{+ҕ�du�-|!<�H2(�VdJ��0�h�l\\��\nFֱVx1Ő�8c��hң\\>��y��ʇ��F��YX}��]�C�&ԙΥJ�0�I�(zZ�� ����^��\\ 2�p�M�L�$����t����HM�C�����H\0��۸\r�@0W�a�amJ��eZ0F~@�4~��EޒƋHM�%.��Dio�q;\"/+���9���������}��իp5�{��2�\n�U��I��F�ġJ�\nv��Q�β��BW�����y�JD�\r�` T{�[��<[��IF~nI���D���d�O\Z��x��3�UB�A��G��kR3@�B���^����I�}�r���O�����hc�����(�����|o�^~+����G���y��;�D���^W�咗wV�(���$\Z/5f2FR�3_�x�	�l��â!�&F��7V(�L�Q�pW1���j.x��ݘ�\r\0\0��\0PK\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0word/theme/theme1.xml�YOo�6��w toc\'v\Zu�ر�-M�n�i���P�@�I}��úa��m�a[�إ�4�:lЯ�GR��X^�6؊�>$���������!)O�^�r�C$�y@�����/�yH*��񄴽)�޵��߻��UDb�`}\"�qۋ�Jח���X^�)I`n�E���p)���li�V[]�1M<����\Z��O�P��6r�=���z�gb�Ig��u��S�eb���O������R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j�����zA�\0�V�2�F���i�@�q�v�֬5\\|��ʜ̭N��le�X�ds���jcs����7����f����\r��W���+�Ն�7����`���g�Ș��J�\Z��j|��h(�K��D-����\0\rdX��iJ�؇(��x$(��:��;�˹!�I_�T��S1�������?E��?������?ZBΪm���U/������?�~����xY����\'���y5�g&΋/����ɋ�>���G�M�Ge���D�����3Vq%\'#q�����$�8��K�����)f�w9:ĵ��\nx}r�x����w���r�:\\TZaG�*�y8I�j�bR��c|XŻ�ǿ�I\nu3KG�nD1�NIB�s���\n��R��u���K>V�.EL+M2�#\'�f��i~�V��vl�{u8��z��H�\n�*���:�(W�☕\r~��J��T�e\\O*�tHG��HY��\0}KN��P�*ݾ˦���TѼ�9/#��A7�qZ��$*c?���qU��n��w�N��%��O��i�4=3��N���)cbJ\ru�V�4����(Tn���\n7��_?���m-ٛ�{U����B�w�<w���_���$�#��[Ի���8{���(�/�$Ϫ0h݋�F۴��®{L�)#7�i�%�=A�:s�$�),��Qg20pp��f\r\\}DU4�p\nM{��DB��%J��â������+{�l�C���]��=��5\n2F��hsF+��Y��\\Ɉ�n�ì��:3���E�[��6�9����`��&45Z!��*��5k8�`Fmw��-��\"�d>�z���n���ʜ\"Z��x��J�Z��p;����\Z���{/�<�P;��,)\'\'K�Q�k5���q���pN��8�K�Gb�e���\r�S��d�̛�\\17	�p�a�>��SR!���\r\r3��\0K4\'+�r�zQ\nTT��I����Ivt]K�c⫲�K#�v�5+�|��D�\Z�����~��O@%\\w���_�nN[�L��9K����q��g�V�h��n\nR!�y+��U�n�;�*&�/H�r��T��	�>��>\\\r�t��=.Tġ\n���\ZS; Z�~�!������P��9gi���C�ڧ!�#	B��,��;�X=ۻ,I�2UW�V�9$l�k���=A��j���;�{�A�P79�|s*Y�����;�̠�[�MC�ۿ�hf��]o��{oY=1k�\ZyV\0��V����5E8�Vk+֜���\\8���0X4D)�!!��?*|f�v�\ru����\"�x��A�@T_������q��6�4)kڬu�V�7��t�\'��%;���i�9s�9�x���,��ڎ-45x�d���8?�ǘ�d�/Y|t��&LIL�J`�& �-G�t�/\0\0\0��\0PK\0\0\0\0\0!\0�-w�\0\0S\n\0\0\0\0\0word/settings.xml�V�n�8}_`����:�/���Hx��N�*�\0J�DxHʊ��;$�(���h�\'�s93���ӳ��\rhÔ�%��,��er5K�ód`,��p%a�l�$�.����\rX�ff��䢚%kk�<MM�Ȃ�A�r�� �z�\n���zX)Q�Jƙݦ�,;I:5K\Z-�b(X��QK�\\r�\\�\n�O��?7x^�� ���j����f�j�į�a��������ѮeYv�J���I�9�ZU`6H�P� L����{@/G}�G��ة�B�Q�W}����v��7Vj�C�q\0\\��oVRiRr�v4M.p�~(%m^���I8���$u\n%�bk,����x��[�D���לq\Z�7s�̳Q��y����}��Dᴷ9F�yhs#\rf��@ܝر�\r���J��iǎ2\r�\rY�s\'�72&���\'��4������]U� .�Pq ���9YUO���h�{[qg+�|a�D8�,4�4�b�!cNǝ�Zc=�5���+l�V<�Qu��ҁ�i\r��\\�êD�ϒ ��c�(�.6��M�������Y:H!1jF����M_�~���_q�ґ�����@�6�!�>lk��\r�\n�;1�^0�������Kc];�&.�+ec�lz}zy�9��3{���Ok��9�\ZeדC>g����K��̺|D��^_���k�@��\"�Ԍ���K�~��dԗ����M��aP�44�[�j��2S_����ѫ����x㾾`9���VM����y1�h:��ߘ�rӔE���ЯT��w�\0��x���Î|�(D�b�@g���p�?,H]�eG�r5�%���ֳ��ş\0�)W�N7vCmq�t~C*WZwg�h�-z�$�&���`7�e�Qv��N�B�|�7Ms&��N��ɗ�s����dO�_�Y�NU>%��_ FfMj��;��۠r/�X�69<���Y����;�8�Κ��j쎭�9�zG:��G���;���ɥ�)T��؊���Pg�P#�[��D<��������\0\0��\0PK\0\0\0\0\0!\0\re�h�\0\0l\0\0\0\0\0word/webSettings.xml�UMO�0�#���Yک�JE�4�!$�������Q���_�׎1>�7Nul�W;/N.._��V�y	� I/&�0*i�y�M�2��L�Q����r|zr��(E��#d1>׼ �lN������58�.ݜj林����,�R*ִ�C��q��@]K.��/�0��S\'2��i�;[s[�����Ѫ��L�M�~#Ғ;�P�6C���\n�I�ZZ�H��fn��R�6IJƸ}�\\��7jrY$\r��4N�6^B���+���Bi�d��݊:�{��A�?�g`��N �_�XϤr���A�	&�ׂ��@�2�M�6�[��P{��,?Ut��w~��\"�Mw�g9�,d�$���zs\n�J�~��F�d;?��q�T��ݜ��� �|Sp�����R���]���ވ�\0\0\0��\0PK\0\0\0\0\0!\0��C\0\0�+\0\0\Z\0\0\0word/stylesWithEffects.xml��]S�:�����_�s��&m�i�B?�i)m`z��\n�`[>�B����d[q����\\A���jߵc����i�Q!����p4�x̲�yx}���uHE��$<����������z��I��P\0 ��m�õR�l0�њ�D�,\\�:�x:���`�E<GC�_.xD���NIvGdX�RL�9�`�)Q򐋛AJ��&?\0zN[���`\'��Í�f�C�!m2+*�T��e���G��f��84x&�,�-�4X�r�ε��4��m��1��.���	�����%qa�&E���v�I\r]�)wD#�}\\؟��$%,�����\\��s�����ܺ����γ[�Ҳ��l81ʫ/Mz�tk��0H���M�Y&��vt��A��ytFWd�(�?�KQ~,?�?�x�d��1�K��\\�m�vr;�D��H��L��E��&m��LHv�;��C�\\/�\'���,2��f���Jr��bTc�P �\\,��	A���<���B��J��x}~)P�v�4e_XS(�v\\�f1���ٵ�����O�D�\"���<O�f\'��h�KL��f��PG���*ۑ^(D�m��}F�cm!kk1�Mc!�ܣ����q���\"�.^��7�#�?L�b*���Su��R�(��ͼ\'�c���d���Ӡ�\Z�?���_m�a���捣~\\&$�k��TW�^ic\\��.x��Id�[���_G����\n�>��Zs-��c-��W&�*�!��Jha�Y0x��wz2v����l�V�xoΣ�Ʀ�?n��2����x���:J-sN{Z�9_��4w�����~�m�0u��)O�Xm�jO��0ue�5n�֕Hֲ-��,ړJpE�HӲ;�5�4�m�Z�N<����7U�Mq�AwSz���Oz�����Q��K\"ȍ 9��ܯJG�I����\rW�VW��ܑ{ٟg�,i��92��8���u96�w�ޜޕ�ѻ$u#zզNs�\"�Mq����%]�c�R�E�{B\'�%�����~�ۻ���wE�QyF�v`�+\r���x�/�pկV�b��P1�[��-T��*2�P1ŕ�Veu�b�+E-�.T�p�g�P�#��P��+X�����ĬP1���\nS����B�o�b��P1�[��%Td�$�b�+?���B�W�ZD]����V�����`�_�սۻ����]QhH�\nS\\�hP�P1�[��-T��*Fx#���^BE�O*���Ӫ�.T�p��Eԅ���l�y��b{W �P��+\n\r�Y�b�+\r�*�x#����B�o�b��P1�K���IB�W~Z�Յ�����P1��B5g;�*�wۻ�А�*��ѠX�b��P1�[��-T��*Fx#���̟$TLq�UY]��JQ��#\\����\Zԏ��\n����B��f�N��+*����w��Qջ�n��M��}��o{�Yӑ���	���ãﻏ̱5�.��l��~\Z|)�����txs��h�w~�\n�:�C�y��;t��>��3�f�sh�([4����\0[ӵR^6+*g5�C����w5p\\H��T����Z��Ÿ�����`���u�Wv����c\ZN�ޖ�;*0Ìǻ���+�aw8�t���+��3��R�b��S��au��^�����I���yÒ�e?N���=)&��Oi�|#f�ϻ�&t��oGC�8�@-�R<����x���֝)>�Et�;ۤK*�#�ĸ�B�T�S{s�c��F�۷=Q�|��:Z�=Pe7��jI����BR�N\r���+&������gӓW�͇~1���}�,)��BE\r�9W��d��,��U��@�v������.D����\0\0\0��\0PK\0\0\0\0\0!\0�l_c}\0\0�\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��Mo�0�����KZ���\"\r�iH�ƴi�,1��&Q(��K[(T�[l�yl�I:9\"؃�\\�Ń �b\\�3����cXG$#BI�PM�ۛ��*�Fi0��\r<Iڄ�m��	Ɩn� v��W���Ь�&tKր�Q�p�Gp\ruGDG$�R�h\0�bP�tǃ��La�^h*ʂ�J����^�m���`y\',�rP��1��1�\\��5��\\�^Q@y�h����|�\'�����t�5@�2�(N��������bm��Rf=�yK\r��?f۠��jA�[��]q`�Օ^5uK{^��<nzv�߲1�X�mJZSO���t���|ţ0\Z���2~L�I}ի��׶���8���w}�	к����/\0\0\0��\0PK\0\0\0\0\0!\0�^3�\0\0)\0\0\0\0\0word/styles.xml���s�8��o�����J~�4�!0���3P\ni�g�V\r����׳Z;��U�Ч6����j�k��Wo��$��%d6Gφa��H�\"[��ۛ�G/�@i��,����\\�o^��׫�T����\0\0����,\\k�O�y��3���\\�\"e\Z>�Aʊ��(�iδX�D���x8<\r+Lч\"�K�mR�i�<���Z�jG���me煌�R��4)y)�ŌN(Q!�\\�g��A�����|4���$�hz��d�	o;:	_C�b]�%�$Z���uQ}�>��2�*�N�����7\"�`_�m�U�|�N9S�L	����,S�f��3e²`�d���v~8���1�Yq4?�p�+����$��*G5�\r�7/��e���s\r_�B�D�x{y]Y@���y*>�8搳v\\�1���٭��������ՅHn2=ǧ܉D���\"��ԁ�2���W�\06o;�g;2��\r_sf���-��B�ւ�Mc!���\'�<��q��<I|\'OąZ�$����܈�`�0�F�f/��7�g���z�ߥ��)����U#��_�k�6b_�^�tԏ�E|-���\r��Ƙ���+�sAAj:ѿ�|���k�kM��б���P��zN]%�4��1�m����&�9Z��9��c->0>y��,�e��=-霧[�(��9�iI�|���*re�<�m�0q�ϹLd��$�=m��ĕEָuZW\"Y˶����@*�Y�#M��ּ�L��k�{�tۻ�TQ7��e�M魫n�K`_�a~͘�y|Ee_���\n���ix�OB��S_6R�]���1ޑ{�_f�x��9Ƈ�^�jp]���]��7�w%�F�.I݈^���ܫHuS\\��5���rL\\ʵ�\'t\"\\�m�_��W���+�~Q{W\Z�g��Jq�A����E���*T��*Ex�\"��J^B%�*���Ӫ�.T�p��EԅJ��l*}$�*�w�\n�ڻ�А�*��ѠX�R��P)�[��-T��*Ex�\"��J�%TJq�UY]��JQ���\"\\��*T|^�?�����Q{W �P��+\n\r�Y�R�+\r�*�x�\"��J�B�o�R��P)�K���QB�W~Z�ՅJ����P)��B�Wѿ!Tj�\n*�wE�!1+TJq�A�B�o�R��P)�[��-T��*Ex	��?J����O���P)�Q*E��U�x��B���@P�R{W\Z�B�W \Z+TJ�*Ex�\"��J�B�o�R��P����J)���*��\"\\)ju�R�+?͙\\��Y]�#���]�q�ìʩ�|�hm��]n��]l7��z�V��=��o�E\"$����}�1[���Ά��������a:n.���Sh�w~��\n�$���>�������BL��&��Y��;�\rclz6��V�˸�*��?t��<?w�U�T?�M�\r\Z��j�,��/Z�����ÿ�� �fl8�{[\r\n�\0�����عW��0�0�pT��#��7�{g$R�R�v���S�������I���eÒ�5�.�-��X9	|Γ����2���.�\r�q��ZH�e�m_�!7z���֝)?�Et�;ۤ^T\'��q%M�&�\0��x�c��F�۷Qa��e-�����Z0h��l���ԺS�d+�)8�� ��������r�_�V�/����A��!�J��l��*�TU�-A�v~j�@h����?��\0\0\0��\0PK\0\0\0\0\0!\0O*��\0\0�\0\0\0\0\0word/fontTable.xml��MO�0��+��|�vB�-)B,���a?�u�����m������_倣H��W3�������NzPζ��1RH+�Z�MK�gsR@�v͵��%{	�z�����t�(0�BcDK���R�4fn�/;�\rx�j��g��RZ�=�� ��?��u��[#mH��K���B�8�����ί�����~�+{�)�WFF	��ua���\\�V�^��3�F4��<_id7�5YL����ܠ�������p�n�cv\\��U�]�s����W��	�N��d8�,w�(�?�>���A���*�s@m�b+�|V�����-��פTXT^8)�����|RH�\\�T�g�Ju�<B���r����!	d�H��$�b�U�\0�`uT��B����_&��x��2�B����$`T\0��O����-7�o���|&>%1\r,�\0\0��\0PK\0\0\0\0\0!\0���(�\0\0�\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�RMo�0��|o�tY���!���>\n�iςL��dI�آ�������t\"ɧ�\'��{���l���UY�&�ַ��P}��R�L�����b�\\ܫ��)���,f�>o��(�I�M���+.{�4!��8M�Mc\r>�ڣ\'y]�7�	}��U�	�������fԗ��!�`��iB�s��Vu��BH������x�-f�9�R�������Ib��\r�-r�\Z��F[�~X�B\r�_G�8r�l��k�4��2��ֳ�w\nXX�mұ;��3��p�۫F�� /\0�B���֋G��$�Cq���\rh�������9M�~�C���h��opaƋ�n�a�7�X�ŖE�lּ���#�\\r�<�[��=�F���/�֛U�����כ���\0\0��\0PK-\0\0\0\0\0\0!\0	$���\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0|;�9\"\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0a�@ \0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0B	\0\0word/document.xmlPK-\0\0\0\0\0\0!\00�C)�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\r\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0�-w�\0\0S\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0\re�h�\0\0l\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0��C\0\0�+\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\Z\0\0word/stylesWithEffects.xmlPK-\0\0\0\0\0\0!\0�l_c}\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0�^3�\0\0)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�$\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0O*��\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�+\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0���(�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�-\0\0docProps/app.xmlPK\0\0\0\0\0\0	\0\0[0\0\0\0\0');
/*!40000 ALTER TABLE `Property_Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Marker_Names`
--

DROP TABLE IF EXISTS `Property_Marker_Names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Property_Marker_Names` (
  `Property_Marker_Name_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Property_Marker_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Property_Marker_Name_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Marker_Names`
--

LOCK TABLES `Property_Marker_Names` WRITE;
/*!40000 ALTER TABLE `Property_Marker_Names` DISABLE KEYS */;
INSERT INTO `Property_Marker_Names` VALUES (1,' Acquisition of property'),(2,'Construction commences'),(3,'Certificate of occupancy issued'),(4,'Property listed for sale'),(5,'Property is sold'),(6,'Possession or occupancy'),(7,'Interest in property for acquisition'),(8,'Vacancy status'),(9,'For sale?'),(10,'Ownership status'),(11,'Property condition'),(12,'Contract Signed'),(13,'Disposition');
/*!40000 ALTER TABLE `Property_Marker_Names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Markers`
--

DROP TABLE IF EXISTS `Property_Markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Property_Markers` (
  `Property_Marker_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Is_Vacant` int(11) DEFAULT NULL,
  `Is_Secured_Boarded` int(11) DEFAULT NULL,
  `Is_Unsecured` int(11) DEFAULT NULL,
  `Is_Open` int(11) DEFAULT NULL,
  `Code_Violations` int(11) DEFAULT NULL,
  `For_Sale` int(11) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `Owner_Occupied` int(11) DEFAULT NULL,
  `Absentee_Landlord` int(11) DEFAULT NULL,
  `Property_Condition` int(11) DEFAULT NULL,
  `Financial_Institution` varchar(45) DEFAULT NULL,
  `Second_Mortgage` int(11) DEFAULT NULL,
  `Owner` varchar(45) DEFAULT NULL,
  `Construction_Type` int(11) DEFAULT NULL,
  `Property_ID` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Home_Size` int(11) DEFAULT NULL,
  PRIMARY KEY (`Property_Marker_ID`),
  KEY `property_marked` (`Property_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Markers`
--

LOCK TABLES `Property_Markers` WRITE;
/*!40000 ALTER TABLE `Property_Markers` DISABLE KEYS */;
INSERT INTO `Property_Markers` VALUES (1,1,1,0,0,0,0,'',0,1,5,'',0,'',3,5,'2013-04-26 16:57:24',NULL),(2,0,0,1,1,0,0,'',0,1,5,'',0,'',3,5,'2013-04-26 17:01:27',NULL);
/*!40000 ALTER TABLE `Property_Markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Progress`
--

DROP TABLE IF EXISTS `Property_Progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Property_Progress` (
  `Property_Progress_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Marker` int(1) DEFAULT NULL,
  `Addtl_Info_1` varchar(45) DEFAULT NULL,
  `Addtl_Info_2` varchar(45) DEFAULT NULL,
  `Addtl_Info_3` varchar(45) DEFAULT NULL,
  `Addtl_Info_4` varchar(45) DEFAULT NULL,
  `Property_ID` int(11) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`Property_Progress_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Progress`
--

LOCK TABLES `Property_Progress` WRITE;
/*!40000 ALTER TABLE `Property_Progress` DISABLE KEYS */;
INSERT INTO `Property_Progress` VALUES (1,'2013-06-19 19:57:51',1,'30000',NULL,NULL,NULL,1,NULL),(2,'2013-06-09 20:09:20',0,'sale',NULL,NULL,NULL,1,NULL),(3,'2013-06-20 05:00:00',2,NULL,NULL,NULL,NULL,1,NULL),(4,'2013-06-21 05:00:00',3,NULL,NULL,NULL,NULL,1,NULL),(5,'2013-06-22 05:00:00',4,'5',NULL,NULL,NULL,1,NULL),(6,'2013-06-23 05:00:00',5,'40000','Alan Greenspan','90','n/a',1,NULL),(8,'2013-06-21 14:21:24',7,'vacant','','','',16,NULL),(9,'2013-06-21 14:22:39',1,'25000','','','',16,'The closing was held at 3PM.'),(10,'2013-06-21 14:23:32',1,'75000','','','',10,NULL),(21,'2013-06-26 16:39:42',10,'Unknown','Investor','Absentee',NULL,16,NULL),(24,'2013-06-26 16:49:07',11,'3','','',NULL,16,NULL),(25,'2013-06-26 16:51:03',9,'For Sale','50000','',NULL,16,NULL),(27,'2013-06-26 17:53:33',9,'Not for sale','','',NULL,16,NULL),(28,'2013-06-26 17:53:49',10,'Unknown','Owner Occupied Non-Landlord','N/A',NULL,16,NULL),(29,'2013-06-26 17:53:53',11,'4','','',NULL,16,NULL),(30,'2013-06-26 17:54:33',1,'75000','','','',16,NULL),(33,'2013-06-26 18:45:16',8,'Vacant','','',NULL,9,NULL),(36,'2013-06-27 15:26:04',6,'','','','',12,NULL),(37,'2013-06-27 16:41:45',4,'5','','','',14,'Decided to sell it.'),(38,'2013-06-27 16:45:25',5,'75000','Taryn','34','0',14,NULL),(39,'2013-06-27 18:43:09',8,'Vacant','3','',NULL,10,NULL),(40,'2013-06-27 18:43:23',9,'For Sale','50000','',NULL,10,NULL),(41,'2013-06-27 18:43:36',10,'Unknown','Investor','Absentee',NULL,10,NULL),(43,'2013-06-27 18:53:03',7,'vacant','','','',10,'Will be a lovely home once we fix it up a bit!'),(44,'2013-06-27 19:33:16',5,'25000','SWOP','45','n/a',10,NULL),(45,'2013-06-27 20:30:43',8,'Vacant','3','',NULL,13,NULL),(47,'2013-06-27 20:35:30',9,'For Sale','5000','',NULL,13,NULL),(48,'2013-06-27 20:56:26',8,'Vacant','2','',NULL,5,NULL),(49,'2013-06-27 21:02:15',8,'Not vacant','','',NULL,5,NULL),(50,'2013-06-27 21:07:47',7,'sale','','','',5,NULL),(51,'2013-06-27 21:10:57',10,'Calvin Coolidge','Owner Occupied Non-Landlord','N/A',NULL,5,NULL),(52,'2013-07-02 22:05:42',9,'Not for sale','','',NULL,19,NULL),(53,'2013-07-02 22:05:46',8,'Not vacant','','',NULL,19,NULL),(54,'2013-07-02 22:05:54',10,'GSDC','Investor','Absentee',NULL,19,NULL),(55,'2013-07-03 21:58:01',9,'Not for sale','','',NULL,21,NULL),(56,'2013-07-03 21:58:03',9,'Not for sale','','',NULL,21,NULL),(57,'2013-07-03 21:58:04',9,'Not for sale','','',NULL,21,NULL),(58,'2013-07-03 21:58:05',9,'Not for sale','','',NULL,21,NULL),(59,'2013-07-03 21:58:06',9,'Not for sale','','',NULL,21,NULL),(60,'2013-07-03 21:58:09',8,'Not vacant','','',NULL,21,NULL),(61,'2013-07-03 21:58:11',9,'Not for sale','','',NULL,21,NULL),(62,'2013-07-03 21:58:12',8,'Not vacant','','',NULL,21,NULL),(63,'2013-07-03 21:58:13',9,'Not for sale','','',NULL,21,NULL),(64,'2013-07-03 22:00:58',1,'12.00','','','',21,NULL),(65,'2013-07-09 20:45:56',8,'Not vacant','','',NULL,9,NULL),(66,'2013-07-10 20:19:59',8,'Vacant','2','',NULL,1,NULL),(67,'2013-07-10 20:21:21',8,'Vacant','3','',NULL,1,NULL),(68,'2013-07-11 15:32:12',9,'For Sale','50000','',NULL,16,NULL),(69,'2013-07-11 15:32:27',10,'Unknown','Investor','Absentee',NULL,16,NULL),(70,'2013-07-11 15:35:23',3,'','','','',16,NULL),(71,'2013-07-11 16:22:43',8,'Vacant','4','',NULL,16,NULL),(72,'2013-07-11 16:23:14',7,'vacant','','','',16,NULL),(73,'2013-07-12 18:15:06',1,'50000','','','',10,NULL),(74,'2013-07-12 18:19:39',12,'','','','',10,NULL),(75,'2013-07-12 18:29:23',2,'','','','',10,NULL),(76,'2013-07-15 17:48:02',10,'54','Investor','Absentee',NULL,16,NULL),(77,'2013-07-15 17:48:11',10,'54','Owner Occupied Non-Landlord','N/A',NULL,16,NULL),(78,'2013-07-15 17:48:20',10,'54','Investor','Living on premises',NULL,16,NULL),(79,'2013-07-15 21:02:54',1,'',NULL,NULL,NULL,7,NULL),(80,'2013-07-15 21:02:54',2,'',NULL,NULL,NULL,7,NULL),(81,'2013-07-15 21:02:54',13,'2',NULL,NULL,NULL,7,NULL),(82,'2013-07-15 21:06:22',13,'3',NULL,NULL,NULL,7,NULL),(83,'2013-07-16 16:07:22',8,'Not vacant','','',NULL,5,NULL),(84,'2013-07-16 16:07:26',8,'Vacant','3','',NULL,5,NULL),(85,'2013-07-16 16:07:30',9,'Not for sale','','',NULL,5,NULL),(88,'2013-07-22 14:22:05',8,'Not vacant','','',NULL,12,NULL),(89,'2013-07-22 14:22:19',1,'',NULL,NULL,NULL,12,NULL),(90,'2013-07-22 14:22:19',2,'',NULL,NULL,NULL,12,NULL),(91,'2013-07-22 14:23:09',8,'Vacant','2','',NULL,10,NULL),(92,'2013-07-22 14:23:52',8,'',NULL,NULL,NULL,0,NULL),(93,'2013-07-22 14:25:43',8,'',NULL,NULL,NULL,0,NULL),(94,'2013-07-22 14:25:47',8,'',NULL,NULL,NULL,28,NULL),(95,'2013-07-22 14:49:43',9,'For Sale','35000','',NULL,30,NULL),(96,'2013-07-22 14:49:54',10,'Unknown','Owner Occupied Non-Landlord','N/A',NULL,30,NULL),(98,'2013-07-23 16:17:38',8,'Vacant','2','',NULL,21,NULL),(102,'2013-07-25 20:20:18',12,'','','','',16,NULL),(103,'2013-07-26 18:49:28',8,'Vacant',NULL,NULL,NULL,0,NULL),(104,'2013-07-26 18:49:34',8,'Vacant',NULL,NULL,NULL,32,NULL),(105,'2013-07-26 18:49:47',1,'',NULL,NULL,NULL,32,NULL),(106,'2013-07-26 18:49:47',2,'',NULL,NULL,NULL,32,NULL),(107,'2013-07-31 21:27:50',8,'Not vacant',NULL,NULL,NULL,0,NULL),(108,'2013-07-31 21:30:19',8,'Not vacant',NULL,NULL,NULL,36,NULL),(109,'2013-07-31 21:33:22',8,'Not vacant',NULL,NULL,NULL,37,NULL),(110,'2013-08-02 15:41:35',9,'Not for sale','','',NULL,10,NULL),(111,'2013-08-02 15:41:41',8,'Not vacant','','',NULL,10,NULL),(112,'2013-08-02 15:41:49',10,'69','Owner Occupied Non-Landlord','N/A',NULL,10,NULL),(113,'2013-08-02 15:41:54',10,'69','Investor','Absentee',NULL,10,NULL),(114,'2013-08-06 15:11:19',8,'Not vacant',NULL,NULL,NULL,38,NULL),(115,'2013-08-06 15:21:11',1,'',NULL,NULL,NULL,5,NULL),(116,'2013-08-06 15:21:11',2,'',NULL,NULL,NULL,5,NULL),(117,'2013-08-15 15:22:36',8,'Not vacant',NULL,NULL,NULL,43,NULL),(118,'2013-08-15 15:30:55',10,'Unknown','Investor','Absentee',NULL,10,NULL),(119,'2013-08-15 15:31:23',10,'74','Investor','Absentee',NULL,10,NULL),(120,'2013-08-15 16:13:55',11,'3','','',NULL,10,NULL),(121,'2013-08-16 18:28:57',8,'Not vacant',NULL,NULL,NULL,44,NULL),(123,'2013-08-28 21:32:26',9,'For Sale','0','',NULL,1,NULL),(129,'2013-09-03 16:09:26',13,'',NULL,NULL,NULL,19,NULL),(130,'2013-09-03 16:09:51',13,'',NULL,NULL,NULL,19,NULL),(131,'2013-09-03 16:16:25',13,'',NULL,NULL,NULL,19,NULL),(132,'2013-09-03 16:16:49',13,'',NULL,NULL,NULL,19,NULL),(133,'2013-09-03 16:17:21',13,'',NULL,NULL,NULL,19,NULL),(134,'2013-09-03 16:17:49',13,'1',NULL,NULL,NULL,19,NULL),(135,'2013-09-03 16:17:56',13,'',NULL,NULL,NULL,19,NULL),(137,'2013-09-04 15:07:47',11,'2','','',NULL,19,NULL),(138,'2013-09-26 19:46:10',4,'1','','','',44,NULL),(139,'2013-09-26 19:46:13',11,'4','','',NULL,44,NULL),(140,'2013-09-27 17:01:33',8,'Not vacant',NULL,NULL,NULL,50,NULL),(141,'2013-10-21 16:35:20',10,'Unknown','Owner Occupied Non-Landlord','N/A',NULL,34,NULL);
/*!40000 ALTER TABLE `Property_Progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Property_Rehab_Progress`
--

DROP TABLE IF EXISTS `Property_Rehab_Progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Property_Rehab_Progress` (
  `Property_Rehab_Progress_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Property_ID` int(11) DEFAULT NULL,
  `Interest_Date` date DEFAULT NULL,
  `Interest_Reason` varchar(45) DEFAULT NULL,
  `Acquisition_Date` date DEFAULT NULL,
  `Acquisition_Cost` int(11) DEFAULT NULL,
  `Construction_Date` date DEFAULT NULL,
  `Construction_Cost` int(11) DEFAULT NULL,
  `Occupancy_Date` date DEFAULT NULL,
  `For_Sale_Date` date DEFAULT NULL,
  `Num_Contacts` int(11) DEFAULT NULL,
  `Sold_Date` date DEFAULT NULL,
  `Sale_Price` int(11) DEFAULT NULL,
  `Purchaser` varchar(100) DEFAULT NULL,
  `Days_on_Market` int(11) DEFAULT NULL,
  `Subsidy_Amount` int(11) DEFAULT NULL,
  `Possession_Date` date DEFAULT NULL,
  PRIMARY KEY (`Property_Rehab_Progress_ID`),
  UNIQUE KEY `Property_ID_UNIQUE` (`Property_ID`),
  KEY `property_rehabbed` (`Property_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property_Rehab_Progress`
--

LOCK TABLES `Property_Rehab_Progress` WRITE;
/*!40000 ALTER TABLE `Property_Rehab_Progress` DISABLE KEYS */;
INSERT INTO `Property_Rehab_Progress` VALUES (1,7,'2013-04-01','Vacant','2013-05-15',0,'0000-00-00',0,'0000-00-00','0000-00-00',0,'0000-00-00',0,'',0,0,'0000-00-00'),(4,10,'0000-00-00','n/a','0000-00-00',0,'0000-00-00',0,'0000-00-00','0000-00-00',0,'2013-01-01',0,'',0,0,'0000-00-00'),(8,5,'0000-00-00','n/a','0000-00-00',0,'0000-00-00',0,'0000-00-00','0000-00-00',0,'2011-05-10',0,'',0,0,'0000-00-00'),(9,9,'0000-00-00','n/a','0000-00-00',0,'0000-00-00',0,'0000-00-00','0000-00-00',0,'0000-00-00',0,'',0,0,'0000-00-00');
/*!40000 ALTER TABLE `Property_Rehab_Progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reports__Active`
--

DROP TABLE IF EXISTS `Reports__Active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reports__Active` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports__Active`
--

LOCK TABLES `Reports__Active` WRITE;
/*!40000 ALTER TABLE `Reports__Active` DISABLE KEYS */;
INSERT INTO `Reports__Active` VALUES (0,'No'),(1,'Yes');
/*!40000 ALTER TABLE `Reports__Active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reports__Activity_Type`
--

DROP TABLE IF EXISTS `Reports__Activity_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reports__Activity_Type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports__Activity_Type`
--

LOCK TABLES `Reports__Activity_Type` WRITE;
/*!40000 ALTER TABLE `Reports__Activity_Type` DISABLE KEYS */;
INSERT INTO `Reports__Activity_Type` VALUES (1,'Benchmark'),(2,'Leadership'),(3,'Outcome'),(4,'Status Change'),(5,'Member Type Change'),(6,'Institution Link'),(7,'New Person');
/*!40000 ALTER TABLE `Reports__Activity_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reports__ITIN`
--

DROP TABLE IF EXISTS `Reports__ITIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reports__ITIN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reports__ITIN`
--

LOCK TABLES `Reports__ITIN` WRITE;
/*!40000 ALTER TABLE `Reports__ITIN` DISABLE KEYS */;
INSERT INTO `Reports__ITIN` VALUES (0,'No'),(1,'Yes');
/*!40000 ALTER TABLE `Reports__ITIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ttm-bickerdike`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ttm-bickerdike` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ttm-bickerdike`;

--
-- Table structure for table `Activities_Users`
--

DROP TABLE IF EXISTS `Activities_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Activities_Users` (
  `Event_User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Established_Activity_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Event_User_ID`),
  KEY `event_id` (`User_Established_Activity_ID`),
  KEY `participant_id` (`User_ID`),
  CONSTRAINT `event_id` FOREIGN KEY (`User_Established_Activity_ID`) REFERENCES `User_Established_Activities` (`User_Established_Activities_ID`) ON UPDATE CASCADE,
  CONSTRAINT `participant_id` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`User_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Activities_Users`
--

LOCK TABLES `Activities_Users` WRITE;
/*!40000 ALTER TABLE `Activities_Users` DISABLE KEYS */;
INSERT INTO `Activities_Users` VALUES (1,1,11),(2,3,9),(7,3,7),(8,2,14),(9,10,14),(10,2,54),(12,2,45),(13,2,6),(19,17,21),(20,17,24),(21,10,5),(22,10,9),(23,10,45);
/*!40000 ALTER TABLE `Activities_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aldermanic_Records`
--

DROP TABLE IF EXISTS `Aldermanic_Records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aldermanic_Records` (
  `Aldermanic_Record_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Environmental_Improvement_Money` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Aldermanic_Record_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aldermanic_Records`
--

LOCK TABLES `Aldermanic_Records` WRITE;
/*!40000 ALTER TABLE `Aldermanic_Records` DISABLE KEYS */;
INSERT INTO `Aldermanic_Records` VALUES (1,'5000','2013-01-01'),(2,'4000','0000-00-00');
/*!40000 ALTER TABLE `Aldermanic_Records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bike_Trails`
--

DROP TABLE IF EXISTS `Bike_Trails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bike_Trails` (
  `Bike_Trails_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Miles_Bike_Lanes` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Bike_Trails_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bike_Trails`
--

LOCK TABLES `Bike_Trails` WRITE;
/*!40000 ALTER TABLE `Bike_Trails` DISABLE KEYS */;
INSERT INTO `Bike_Trails` VALUES (1,'2.4','2013-02-01'),(2,'2.5','2013-03-01'),(3,'3','2013-04-01'),(4,'4.5','2013-08-01');
/*!40000 ALTER TABLE `Bike_Trails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Community_Wellness_Survey_Aggregates`
--

DROP TABLE IF EXISTS `Community_Wellness_Survey_Aggregates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Community_Wellness_Survey_Aggregates` (
  `Community_Wellness_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Administered` varchar(45) DEFAULT NULL,
  `Question_15_CWS` varchar(11) DEFAULT NULL,
  `Question_20_CWS` varchar(11) DEFAULT NULL,
  `Question_21_CWS` varchar(11) DEFAULT NULL,
  `Question_24_CWS` varchar(11) DEFAULT NULL,
  `Question_29_CWS` varchar(11) DEFAULT NULL,
  `Question_31_CWS` varchar(11) DEFAULT NULL,
  `Question_30_CWS` varchar(11) DEFAULT NULL,
  `Question_32_CWS` varchar(11) DEFAULT NULL,
  `Question_69_CWS` varchar(11) DEFAULT NULL,
  `Question_72_CWS` varchar(11) DEFAULT NULL,
  `Question_91_CWS` varchar(11) DEFAULT NULL,
  `Question_41_a_CWS` varchar(11) DEFAULT NULL,
  `Question_41_b_CWS` varchar(11) DEFAULT NULL,
  `Question_44_CWS` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Community_Wellness_Survey_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Community_Wellness_Survey_Aggregates`
--

LOCK TABLES `Community_Wellness_Survey_Aggregates` WRITE;
/*!40000 ALTER TABLE `Community_Wellness_Survey_Aggregates` DISABLE KEYS */;
INSERT INTO `Community_Wellness_Survey_Aggregates` VALUES (1,'2009','1','2','1','1','2','4','2','2','3','2','90','4','1','4'),(2,'2012','3','1','2','0','3','1','1','1','2','1','30','1','4','2'),(3,'2013-8-1','3','4','2','3','3','3','2','2','2','3','90','2','2','3');
/*!40000 ALTER TABLE `Community_Wellness_Survey_Aggregates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Corner_Store_Assessment`
--

DROP TABLE IF EXISTS `Corner_Store_Assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Corner_Store_Assessment` (
  `Corner_Store_Assessment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Corner_Store_ID` int(11) DEFAULT NULL,
  `2_plus_fresh_veg_options` int(1) DEFAULT NULL,
  `Lowfat_Milk_Available` int(1) DEFAULT NULL,
  `Health_Promotion_Signage` int(1) DEFAULT NULL,
  `Healthy_Items_In_Front` int(1) DEFAULT NULL,
  `Date_Evaluated` date DEFAULT NULL,
  PRIMARY KEY (`Corner_Store_Assessment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Corner_Store_Assessment`
--

LOCK TABLES `Corner_Store_Assessment` WRITE;
/*!40000 ALTER TABLE `Corner_Store_Assessment` DISABLE KEYS */;
INSERT INTO `Corner_Store_Assessment` VALUES (1,1,1,1,1,1,'2013-01-29'),(2,1,0,0,0,0,'2013-01-28'),(3,2,0,1,0,1,'2013-02-04'),(4,3,1,1,0,0,'2013-02-22');
/*!40000 ALTER TABLE `Corner_Store_Assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Corner_Stores`
--

DROP TABLE IF EXISTS `Corner_Stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Corner_Stores` (
  `Corner_Store_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Corner_Store_Name` varchar(45) DEFAULT NULL,
  `Corner_Store_Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Corner_Store_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Corner_Stores`
--

LOCK TABLES `Corner_Stores` WRITE;
/*!40000 ALTER TABLE `Corner_Stores` DISABLE KEYS */;
INSERT INTO `Corner_Stores` VALUES (1,'Cornell Dollar','5501 S. Cornell Ave'),(2,'Humboldt Park Food and Liquor',''),(3,'Farmer\'s Basket','6300 S. Cottage Grove Ave');
/*!40000 ALTER TABLE `Corner_Stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funded_Organization_Records_Stores`
--

DROP TABLE IF EXISTS `Funded_Organization_Records_Stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Funded_Organization_Records_Stores` (
  `Funded_Organization_Records_Stores_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Store_ID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Sales_Data` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Funded_Organization_Records_Stores_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funded_Organization_Records_Stores`
--

LOCK TABLES `Funded_Organization_Records_Stores` WRITE;
/*!40000 ALTER TABLE `Funded_Organization_Records_Stores` DISABLE KEYS */;
INSERT INTO `Funded_Organization_Records_Stores` VALUES (1,2,'2013-01-01','100'),(2,2,'2013-01-01','100'),(3,1,'2013-01-01','90'),(4,2,'2013-08-01','170');
/*!40000 ALTER TABLE `Funded_Organization_Records_Stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Org_Partners`
--

DROP TABLE IF EXISTS `Org_Partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Org_Partners` (
  `Partner_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Partner_Name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Partner_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Org_Partners`
--

LOCK TABLES `Org_Partners` WRITE;
/*!40000 ALTER TABLE `Org_Partners` DISABLE KEYS */;
INSERT INTO `Org_Partners` VALUES (1,'CLOCC'),(8,'Bickerdike'),(9,'West HP Dev Council'),(10,'West HP Dev Council'),(11,'United Tap-Dancers of America'),(12,'Coalition of Expectant Mothers'),(13,'La Casa Norte');
/*!40000 ALTER TABLE `Org_Partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participant_Survey_Questions`
--

DROP TABLE IF EXISTS `Participant_Survey_Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participant_Survey_Questions` (
  `Question_Num` varchar(45) NOT NULL,
  `Question_Text` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`Question_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participant_Survey_Questions`
--

LOCK TABLES `Participant_Survey_Questions` WRITE;
/*!40000 ALTER TABLE `Participant_Survey_Questions` DISABLE KEYS */;
INSERT INTO `Participant_Survey_Questions` VALUES ('10','Have you heard of Humboldt Park Corridors?'),('11','Have you seen signs, fliers, programs, or local billboards in your community that address the importance of eating healthy and exercising regularly?'),('12','Are you aware of free or low-cost fitness opportunities in Humboldt Park?'),('13','Are you aware of free or low-cost nutrition opportunities in Humboldt Park?'),('14','How satisfied or dissatisfied are you with the selection of fruits and vegetables available at the store where you usually shop for food?'),('2','How important is diet and nutrition to you personally?'),('3','How many servings of fruits and vegetables do you eat in an average day?'),('4A','How many days per week do you do strenuous physical activity for at least 10 minutes at a time?'),('4B','How many minutes on those days?'),('5A','How many days per week do you do light or moderate physical activity for at least 10 minutes?'),('5B','How many minutes on those moderate activity days?'),('6','Do you have at least child between the ages of 0-18 that lives with you at least 3 days per week?'),('7','Yesterday, how many servings of fruits and vegetables did your child have?'),('8','On an average day, how many hours and minutes does your child spend in active play?'),('9A','Do you agree? I would walk more often if Ifelt safer in my community.'),('9B','Do you agree? I feel comfortable with my child playing outside in my community.');
/*!40000 ALTER TABLE `Participant_Survey_Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participant_Survey_Responses`
--

DROP TABLE IF EXISTS `Participant_Survey_Responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participant_Survey_Responses` (
  `Participant_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) DEFAULT NULL,
  `Question_2` int(11) DEFAULT NULL,
  `Question_3` int(11) DEFAULT NULL,
  `Question_4_A` int(11) DEFAULT NULL,
  `Question_4_B` int(11) DEFAULT NULL,
  `Question_5_A` int(11) DEFAULT NULL,
  `Question_5_B` int(11) DEFAULT NULL,
  `Question_6` int(11) DEFAULT NULL,
  `Question_7` int(11) DEFAULT NULL,
  `Question_8` int(11) DEFAULT NULL,
  `Question_9_A` int(11) DEFAULT NULL,
  `Question_9_B` int(11) DEFAULT NULL,
  `Question_11` int(11) DEFAULT NULL,
  `Question_12` int(11) DEFAULT NULL,
  `Question_13` int(11) DEFAULT NULL,
  `Question_14` int(11) DEFAULT NULL,
  `Date_Survey_Administered` date DEFAULT NULL,
  `Pre_Post_Late` int(11) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `Participant_Type` varchar(45) DEFAULT NULL,
  `Child_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_Survey_ID`),
  KEY `User_ID` (`User_ID`),
  KEY `Program_related` (`Program_ID`),
  CONSTRAINT `Program_related` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON UPDATE CASCADE,
  CONSTRAINT `User_ID` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`User_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participant_Survey_Responses`
--

LOCK TABLES `Participant_Survey_Responses` WRITE;
/*!40000 ALTER TABLE `Participant_Survey_Responses` DISABLE KEYS */;
INSERT INTO `Participant_Survey_Responses` VALUES (1,7,2,3,2,35,4,60,0,0,0,0,0,0,0,0,0,'2013-01-01',1,1,'parent',NULL),(15,16,2,4,3,30,4,40,1,3,180,2,2,0,0,0,2,'0000-00-00',0,1,'parent',NULL),(17,16,3,5,2,60,7,20,0,3,90,3,2,0,0,0,1,'2013-01-18',3,1,'parent',NULL),(28,28,4,7,7,30,4,60,0,0,0,0,0,0,0,0,0,'0000-00-00',0,49,'adult',NULL),(29,28,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',0,50,'parent',NULL),(30,28,2,346,1345,0,0,0,0,0,0,0,0,0,0,0,5,'0000-00-00',0,50,'youth',NULL),(31,33,2,2,2,10,1,10,0,0,0,3,0,1,1,0,2,'0000-00-00',1,40,'adult',NULL),(32,33,1,3,2,10,2,10,0,0,0,3,0,1,1,0,2,'0000-00-00',1,40,'adult',NULL),(33,33,1,2,3,20,1,40,0,0,0,3,1,1,0,0,1,'0000-00-00',1,40,'adult',NULL),(34,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',0,49,'youth',NULL),(35,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',0,50,'parent',NULL),(36,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',0,50,'parent',NULL),(37,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',0,50,'parent',NULL),(38,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',0,50,'parent',NULL),(39,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-02-03',0,49,'adult',NULL),(40,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-02-01',0,40,'adult',NULL),(41,25,3,1,2,0,3,0,0,0,0,3,3,0,0,0,3,'2013-02-01',1,59,'parent',NULL),(42,4,0,0,2,60,0,0,0,0,0,0,0,0,0,0,0,'2013-02-04',2,50,'adult',NULL),(43,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',1,50,'parent',NULL),(44,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0000-00-00',1,50,'parent',NULL),(45,48,1,1,1,3,1,5,0,0,0,3,0,0,0,0,0,'2013-02-12',1,42,'adult',NULL),(46,7,2,4,4,45,4,14,0,0,0,2,3,0,1,1,3,'2013-02-15',2,69,'youth',NULL),(47,49,3,2,3,30,3,35,0,0,0,2,3,0,1,0,3,'2013-02-19',1,63,'youth',NULL),(48,49,3,4,0,0,0,0,0,0,0,3,3,0,0,0,0,'2013-03-31',2,63,'youth',NULL),(50,46,3,3,3,15,0,0,1,3,135,3,1,0,1,0,3,'2013-02-27',2,75,'adult',NULL),(51,54,1,0,5,60,7,10,0,0,0,2,3,0,0,0,0,'2013-02-01',1,63,'youth',NULL),(65,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-06-03',1,46,'adult',0),(66,18,3,3,2,30,4,25,0,0,0,2,2,0,0,1,3,'2013-04-04',1,51,'youth',0),(67,18,4,5,3,30,4,20,0,0,0,2,2,1,1,1,3,'2013-05-31',2,51,'youth',0),(68,18,4,5,2,30,3,25,0,0,0,3,2,1,1,1,3,'2013-08-16',3,96,'youth',0),(69,16,2,2,2,2,2,25,0,0,0,3,2,1,1,1,3,NULL,2,1,'youth',0),(70,16,1,2,2,30,2,25,0,0,0,3,2,1,1,1,3,NULL,1,1,'youth',0);
/*!40000 ALTER TABLE `Participant_Survey_Responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Dates`
--

DROP TABLE IF EXISTS `Program_Dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Dates` (
  `Program_Date_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_ID` int(11) DEFAULT NULL,
  `Program_Date` date DEFAULT NULL,
  PRIMARY KEY (`Program_Date_ID`),
  KEY `Program` (`Program_ID`),
  CONSTRAINT `Program` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Dates`
--

LOCK TABLES `Program_Dates` WRITE;
/*!40000 ALTER TABLE `Program_Dates` DISABLE KEYS */;
INSERT INTO `Program_Dates` VALUES (9,1,'2013-01-07'),(10,1,'2013-01-14'),(11,1,'2013-01-21'),(12,1,'2013-01-28'),(36,40,'2013-03-15'),(37,45,'2013-03-01'),(38,45,'2013-04-01'),(39,45,'2013-03-15'),(40,46,'2013-03-22'),(42,46,'2013-03-28'),(43,47,'2013-02-04'),(44,48,'2013-02-03'),(45,48,'2013-02-05'),(46,49,'2013-04-01'),(47,49,'2013-02-04'),(48,49,'2013-02-06'),(49,49,'2013-02-08'),(50,50,'2013-01-01'),(51,50,'2013-01-05'),(52,42,'2013-02-05'),(53,42,'2013-02-12'),(54,42,'2013-02-19'),(56,43,'2013-05-01'),(57,43,'2013-02-01'),(58,44,'2013-02-02'),(60,51,'2012-11-15'),(61,51,'2012-11-30'),(63,51,'2012-12-15'),(64,51,'2012-12-30'),(66,52,'2013-04-13'),(67,56,'2013-01-26'),(68,56,'2013-02-02'),(69,59,'2013-02-11'),(70,59,'2013-02-18'),(71,59,'2013-02-25'),(72,60,'0000-00-00'),(73,60,'2013-02-01'),(74,61,'2013-02-04'),(75,62,'2013-03-01'),(76,64,'2013-01-01'),(77,68,'2013-01-01'),(78,68,'2013-02-01'),(79,68,'2013-03-01'),(82,72,'2013-01-30'),(83,73,'2013-01-01'),(84,64,'2013-04-05'),(85,75,'2013-03-15'),(87,69,'2012-10-01'),(89,69,'2012-10-15'),(90,69,'2012-11-01'),(91,69,'2012-11-15'),(92,69,'2012-12-01'),(93,69,'2012-12-15'),(94,75,'2013-03-01'),(95,63,'2013-02-19'),(96,53,'2012-01-01'),(97,42,'2013-02-26'),(100,77,'2013-07-01'),(101,53,'2013-02-01'),(102,94,'2013-02-04'),(103,94,'2013-02-11'),(104,95,'2013-02-01'),(105,95,'2013-02-28'),(106,77,'2013-02-01'),(107,96,'2013-02-01'),(108,96,'2013-02-02'),(109,96,'2013-02-03'),(115,59,'2013-08-01'),(116,59,'2013-08-08'),(117,59,'2013-08-15'),(118,59,'2013-08-22'),(119,59,'2013-08-29'),(120,51,'2013-08-05'),(121,51,'2013-08-19');
/*!40000 ALTER TABLE `Program_Dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Dates_Users`
--

DROP TABLE IF EXISTS `Program_Dates_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Dates_Users` (
  `Program_Dates_Users_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_Date_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Program_Dates_Users_ID`),
  KEY `date` (`Program_Date_ID`),
  KEY `attendee` (`User_ID`),
  CONSTRAINT `attendee` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`User_ID`) ON UPDATE CASCADE,
  CONSTRAINT `date` FOREIGN KEY (`Program_Date_ID`) REFERENCES `Program_Dates` (`Program_Date_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Dates_Users`
--

LOCK TABLES `Program_Dates_Users` WRITE;
/*!40000 ALTER TABLE `Program_Dates_Users` DISABLE KEYS */;
INSERT INTO `Program_Dates_Users` VALUES (18,9,11),(19,9,54),(21,11,4),(22,11,11),(23,12,11),(35,12,4),(36,12,54),(38,12,6),(43,9,4),(66,52,16),(67,52,22),(68,36,33),(69,56,21),(71,53,40),(72,69,21),(73,69,25),(74,83,4),(75,52,33),(76,54,33),(80,58,17),(81,53,48),(82,85,48),(83,54,40),(84,54,16),(85,9,16),(86,10,16),(87,11,16),(88,12,16),(89,60,18),(90,87,16),(91,87,46),(92,87,25),(93,87,36),(95,87,17),(96,87,22),(97,89,16),(98,89,46),(99,89,25),(100,89,36),(101,89,56),(102,89,48),(103,89,17),(104,89,22),(106,90,25),(107,90,36),(108,90,48),(109,90,17),(110,90,22),(111,91,16),(112,91,46),(113,91,25),(114,91,36),(115,91,48),(116,91,17),(117,91,22),(118,92,16),(119,92,46),(120,92,25),(121,92,36),(122,92,56),(123,92,22),(128,93,36),(130,87,7),(131,90,7),(132,91,7),(136,95,37),(137,100,22),(144,60,56),(146,101,54),(148,10,54),(149,67,16),(150,58,6),(151,91,56),(152,87,14),(154,90,56),(155,90,46),(156,87,48),(157,93,7),(159,93,14),(160,93,22),(161,93,16),(162,93,56),(163,93,48),(166,95,54),(167,107,18),(171,95,17),(172,60,55),(173,61,55),(174,63,55),(175,64,55),(177,61,18),(178,64,18),(179,121,18),(180,120,18),(181,95,18),(182,105,18),(183,104,18),(184,109,18),(185,92,48),(186,92,17),(187,93,25);
/*!40000 ALTER TABLE `Program_Dates_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Types`
--

DROP TABLE IF EXISTS `Program_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Types` (
  `Program_Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_Type_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Program_Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Types`
--

LOCK TABLES `Program_Types` WRITE;
/*!40000 ALTER TABLE `Program_Types` DISABLE KEYS */;
INSERT INTO `Program_Types` VALUES (1,'Fundraising'),(10,'Nutrition Education'),(11,'Fitness Education'),(12,'Wellness'),(13,'Group fitness'),(14,'Fitness/Nutrition Education');
/*!40000 ALTER TABLE `Program_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programs`
--

DROP TABLE IF EXISTS `Programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programs` (
  `Program_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_Name` varchar(100) DEFAULT NULL,
  `Program_Organization` varchar(100) DEFAULT NULL,
  `Program_Type` varchar(45) DEFAULT NULL,
  `Program_Created_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Notes` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`Program_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programs`
--

LOCK TABLES `Programs` WRITE;
/*!40000 ALTER TABLE `Programs` DISABLE KEYS */;
INSERT INTO `Programs` VALUES (1,'Nutrition: Cooking','8','9','2012-12-19 17:23:23','oops, that was silly.  good now?'),(40,'Step Aerobics','1','11','2013-02-01 18:58:15',NULL),(42,'Meditation Workshop','9','12','2013-02-01 19:03:12','Pilot program'),(43,'Women\'s Self-Defense','13','13','2013-02-01 21:47:36',NULL),(44,'Argentine Tango','','11','2013-02-04 14:55:57',NULL),(45,'Youth Tennis - Spring Session 2013','11','11','2013-02-04 15:02:57',NULL),(46,'Adult Tennis - Spring Session 2013','','11','2013-02-04 17:11:55',NULL),(47,'Spinning - Winter 2013','','11','2013-02-04 17:15:47',NULL),(48,'Spinning - Fall 2012','','11','2013-02-04 17:16:22',NULL),(49,'Spinning - Spring 2013','','11','2013-02-04 17:17:17',NULL),(50,'Spinning - Summer 2012','','11','2012-02-04 17:26:23',NULL),(51,'Advanced Vegan Barbecue','','11','2013-02-07 14:46:50',NULL),(52,'DIY Kitchen Gardens','13','11','2013-02-08 22:24:12',NULL),(53,'Apartment Horticulture','','11','2013-02-11 14:55:05','This is a pilot program that may be expanded in 2014.'),(54,'P90X - Beginner','','11','2013-02-11 15:04:47',NULL),(55,'P90X - Intermediate','','11','2013-02-11 15:05:53',NULL),(56,'Pilates - Spring 2013','','11','2013-02-11 15:09:58',NULL),(57,'Pilates - Winter 2013','','','2013-02-11 15:23:41',NULL),(58,'Bike Maintenance and Safety','','11','2013-02-11 15:26:46',NULL),(59,'Family Cooking Class','','11','2013-02-11 15:28:00',NULL),(60,'Is Gluten-Free Right For Me?','','11','2013-02-11 15:57:16',NULL),(61,'Prenatal and Infant Nutrition','','11','2013-02-11 16:06:07',NULL),(62,'Nutrition Puppet Show','','11','2013-02-11 16:20:48',NULL),(63,'All About Artichokes','9','11','2013-02-11 16:24:06',NULL),(64,'Make Your Own Cheese and Yogurt','','11','2013-02-11 16:26:25',NULL),(65,'Whole Grain Baking','','11','2013-02-11 18:53:49',NULL),(66,'Intro to Family Meal Planning','','11','2013-02-11 19:03:42',NULL),(67,'Kids\' Food Safety Class','','11','2013-02-11 19:03:56',NULL),(68,'Water Aerobics: Theory and Practice','','11','2013-02-11 19:07:46',NULL),(69,'Nutrition Class - Fall 2012','8','10','2013-02-11 19:09:37',NULL),(70,'Nutrition Class - Winter 2013','','11','2013-02-11 19:11:04',NULL),(71,'Nutrition Class - Spring 2013','','11','2013-02-11 19:12:14',NULL),(72,'Nutrition Class - Summer 2013','','11','2013-02-11 19:52:44',NULL),(73,'Nutrition Class - Fall 2013','','11','2013-02-11 21:17:47',NULL),(74,'Swimming Class','','11','2013-02-11 21:28:10',NULL),(75,'Sunrise Yoga','','11','2013-02-12 15:18:22','Snowed on second session.\n'),(76,'test','','','2013-02-13 15:57:19',NULL),(77,'Test Ajax Loader','','','2013-02-19 20:47:07',NULL),(78,'Eat and Live Well','8','14','2013-02-22 16:09:58',NULL),(94,'Constellation Studies','','','2013-02-25 18:00:45',NULL),(95,'Consent-Based Relationship Models for Beginners','12','12','2013-02-25 18:02:46',NULL),(96,'Newer Program Name','1','14','2012-02-26 20:17:15','test, test');
/*!40000 ALTER TABLE `Programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programs_Users`
--

DROP TABLE IF EXISTS `Programs_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programs_Users` (
  `Program_User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Program_User_ID`),
  KEY `prog_for_user` (`Program_ID`),
  KEY `user_for_program` (`User_ID`),
  CONSTRAINT `prog_for_user` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON UPDATE CASCADE,
  CONSTRAINT `user_for_program` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`User_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=latin1 COMMENT='User signed up for program, not specific dates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programs_Users`
--

LOCK TABLES `Programs_Users` WRITE;
/*!40000 ALTER TABLE `Programs_Users` DISABLE KEYS */;
INSERT INTO `Programs_Users` VALUES (1,1,11),(5,1,54),(6,1,4),(10,1,6),(15,1,5),(18,1,16),(28,1,22),(56,45,16),(57,49,17),(58,49,28),(59,50,4),(60,50,11),(61,50,28),(62,50,30),(63,42,16),(64,42,22),(65,44,6),(66,40,33),(67,42,33),(68,42,33),(69,43,21),(70,51,18),(71,51,17),(72,45,14),(73,40,40),(74,42,40),(75,52,41),(76,56,16),(77,57,8),(78,59,25),(79,59,21),(80,53,54),(81,60,36),(82,60,16),(83,60,6),(84,61,14),(85,61,24),(86,62,56),(87,64,28),(88,64,41),(90,73,4),(93,44,17),(94,42,48),(95,75,48),(96,67,7),(97,52,54),(98,69,16),(99,69,46),(100,69,25),(101,69,36),(102,69,56),(103,69,48),(104,69,17),(105,69,22),(106,69,14),(107,69,7),(108,75,46),(109,63,18),(110,63,17),(111,63,37),(118,77,22),(119,64,9),(125,51,56),(126,51,39),(127,51,40),(128,51,37),(129,51,53),(130,95,18),(133,96,18),(134,96,22),(135,96,43),(138,53,55),(139,46,4),(140,46,16),(141,60,59),(142,52,56);
/*!40000 ALTER TABLE `Programs_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Established_Activities`
--

DROP TABLE IF EXISTS `User_Established_Activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Established_Activities` (
  `User_Established_Activities_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Activity_Name` varchar(100) DEFAULT NULL,
  `Activity_Date` date DEFAULT NULL,
  `Activity_Created_Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Activity_Type` int(11) DEFAULT NULL,
  `Activity_Org` int(11) DEFAULT NULL,
  `Notes` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`User_Established_Activities_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Established_Activities`
--

LOCK TABLES `User_Established_Activities` WRITE;
/*!40000 ALTER TABLE `User_Established_Activities` DISABLE KEYS */;
INSERT INTO `User_Established_Activities` VALUES (1,'Fitness Program Session','2012-12-17','2012-12-17 21:36:50',0,NULL,NULL),(2,'Nutrition Program','2012-11-01','2012-12-18 19:00:50',0,0,NULL),(3,'Nutrition','2013-01-01','2012-12-18 19:01:41',0,0,NULL),(10,'Get Out The Vote','2012-11-05','2012-12-18 19:32:42',0,0,'check'),(17,'Potluck','2013-01-29','2013-01-23 17:15:39',0,0,''),(19,'Test Event 1-29','2013-01-29','2013-01-29 16:40:08',8,8,NULL),(20,'Healthy Me, Nutrition, Session 2','2013-02-11','2013-01-29 19:34:34',11,9,NULL);
/*!40000 ALTER TABLE `User_Established_Activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Health_Data`
--

DROP TABLE IF EXISTS `User_Health_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Health_Data` (
  `User_Health_Data_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) DEFAULT NULL,
  `Height_Feet` varchar(45) DEFAULT NULL,
  `Height_Inches` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `BMI` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `User_Count` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_Health_Data_ID`),
  KEY `User_ID_health` (`User_ID`),
  CONSTRAINT `User_ID_health` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`User_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Health_Data`
--

LOCK TABLES `User_Health_Data` WRITE;
/*!40000 ALTER TABLE `User_Health_Data` DISABLE KEYS */;
INSERT INTO `User_Health_Data` VALUES (1,5,'5','8','139','21.1','2013-01-15',1),(2,5,'5','8','135','20.5','2013-01-17',2),(3,16,'5','4','119','20.4','2013-01-17',1),(4,7,'5','6','145','23.4','2013-01-18',1),(9,25,'6','0','150','20.3','2013-01-25',1),(11,14,'5','0','100','19.5','2013-01-25',1),(13,56,'5','6','143','23.1','2013-01-30',1),(14,25,'6','0','180','24.4','2013-02-04',2),(15,25,'6','0','175','23.7','2013-02-04',3),(18,25,'6','0','170','23.1','2013-02-04',4),(19,25,'6','0','172','23.3','2013-02-04',5),(20,4,'5','8','140','21.3','2013-02-11',1),(22,54,'4','11','100','20.2','2013-02-26',1),(23,54,'5','0','100','19.5','2013-02-26',2),(27,16,'5','1','141','26.6','2013-02-28',2),(28,16,'5','0','141','27.5','2013-02-28',3);
/*!40000 ALTER TABLE `User_Health_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Zipcode` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL,
  `Race` varchar(45) DEFAULT NULL,
  `Address_Street_Name` varchar(95) DEFAULT NULL,
  `Adult` int(1) DEFAULT NULL,
  `Parent` int(1) DEFAULT NULL,
  `Child` int(1) DEFAULT NULL,
  `email_address` varchar(150) DEFAULT NULL,
  `Notes` varchar(400) DEFAULT NULL,
  `Address_Number` int(6) DEFAULT NULL,
  `Address_Street_Direction` varchar(3) DEFAULT NULL,
  `Address_Street_Type` varchar(15) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (3,'testing confirmation','lil box',60601,NULL,NULL,NULL,NULL,'Ingleside',0,0,1,NULL,NULL,6106,'S','Ave',NULL,NULL),(4,'Jessie','Murdock',60603,NULL,'F',NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Jessie','Dilts',60637,'2012-12-09','M','20','b','4425 W Haddon Ave',1,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Jessie','Jean',0,'0000-00-00','F',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Justin','T',60611,'1985-09-01','M',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Jessie','Lil J',0,'1900-01-01','F',NULL,NULL,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'James','Murdock',60611,'2008-10-01','M',NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Lafayette','Virginia',60611,NULL,'F','12','w','9 Salisbury Rd',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Checking','Survey',60606,NULL,'M','12','l','676 W. Halsted',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Karl','Lagerfeld',60610,NULL,'M','60','w','',0,1,0,NULL,'user testing',NULL,NULL,NULL,NULL,NULL),(16,'Donna','Moss',60101,NULL,'F','20','w','3232 W. Hirsch St.',0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Charles','Young',60624,NULL,'M','20','b','4101 W Carroll Ave.',0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Zoey','Bartlet',60651,NULL,'F','12','w','4106 W Augusta Blvd.',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Toby','Ziegler',60651,NULL,'M','45','w','4430 W. Haddon Ave.',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Maggie','Wilson',60613,NULL,'F','20','w','Byron',0,0,0,'mwilson@chapinhall.org','',1340,'W','St','',NULL),(22,'Joshua','Lyman',60606,NULL,'M','35','w','',0,0,0,'j.lyman@gmail.com','',NULL,NULL,NULL,NULL,NULL),(24,'Leo','McGarry',60611,NULL,'M','60','w','',0,0,0,'leo@whitehouse.gov',NULL,NULL,NULL,NULL,NULL,NULL),(25,'Claudia Jean','Cregg',60611,NULL,'F','35','w','',0,0,0,'cjcregg@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL),(26,'Testing','Type Choice',0,NULL,'M','12','b','',0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'','',0,NULL,'','','','',0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(28,'Jaimerais','Terevoir',60611,NULL,'F','35','b','7 Place des Etoiles',1,0,0,'voeux@fr.free',NULL,NULL,NULL,NULL,NULL,NULL),(30,'test','twe',60654,NULL,'F','20','b','slkjfgh',0,1,0,'drge@yahoo.com',NULL,NULL,NULL,NULL,NULL,NULL),(31,'','1234',0,NULL,'F','','-----','',0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(33,'Rishi','Desai',60647,NULL,'M','20','a','2550 W. North Ave.',1,0,0,'rdesai@bickerdike.org',NULL,NULL,NULL,NULL,NULL,NULL),(34,'John','Doe',60647,NULL,'M','12','b','1926 N. Kedzie',0,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(35,'','',0,NULL,'','','-----','',0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(36,'Pilar','Soto',0,NULL,'F','35','l','',0,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Graciela','Soto',0,NULL,'F','12','l','',0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(38,'','',0,NULL,'','','-----','',0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(39,'Sam','Seborn',0,NULL,'M','35','o','',0,1,0,'',NULL,NULL,NULL,NULL,NULL,NULL),(40,'Test','Participant',60637,NULL,'F','35','w','9 Salisbury Rd',1,0,0,'test@test.net',NULL,NULL,NULL,NULL,NULL,NULL),(41,'Joy','Aruguete',60647,NULL,'F','35','l','North',1,0,0,'joyaruguete@bickerdike.org','',2550,'W','Ave','','170312406001019'),(42,'Jaimerais','Terevoir',0,NULL,'','','-----','',0,0,0,'',NULL,0,'','',NULL,NULL),(43,'Jaimerais','Terrar',0,NULL,'','','-----','',0,0,0,'',NULL,0,'','',NULL,NULL),(45,'check','check',0,NULL,'','','-----','',0,0,0,'',NULL,0,'','',NULL,NULL),(46,'Amy','Gardner',0,NULL,'F','35','b','North',0,1,0,'','',2550,'W','Ave','773-202-LUNA',NULL),(48,'Chris','Brown',60647,NULL,'M','20','w','North',1,0,0,'cbrown@lisc.org',NULL,2550,'W','Ave',NULL,NULL),(49,'Elle','Fanning',60683,NULL,'F','12','-----','',0,0,0,'','who is this really?',0,'','',NULL,NULL),(50,'Ruben','Garcia',60651,NULL,'M','12','l','Broadway',0,0,0,'rubengarz5@yahoo.com',NULL,3103,'N','',NULL,NULL),(53,'Testing','Phone',0,NULL,'F','35','b','',0,0,0,'','',0,'','','555-5142',NULL),(54,'El','Rousse',60606,NULL,'F','12','w','71st',0,0,0,'test.tester@php.net','Everything changes',900,'E','St','555-314-9256',NULL),(55,'a','galvan',0,NULL,'F','20','l','',1,0,0,'','',0,'','','000-000-0000',NULL),(56,'Check Youth','Number One',0,NULL,'F','12','b','',0,0,0,'',NULL,0,'','','',NULL),(59,'Claire','T',60660,NULL,'','','-----','',0,0,0,'',NULL,0,'','','',NULL),(60,'Test','Block-Group',0,NULL,'F','12','-----','Milwaukee',0,0,0,'',NULL,3600,'N','Ave','','170311612001000');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Walkability_Assessment`
--

DROP TABLE IF EXISTS `Walkability_Assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Walkability_Assessment` (
  `Walkability_Assessment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Evaluated` date DEFAULT NULL,
  `Cars_Stop` int(1) DEFAULT NULL,
  `Intersection_Assessed` varchar(100) DEFAULT NULL,
  `Speed_Limit_Obeyed` int(1) DEFAULT NULL,
  `No_Gaps_In_Sidewalk` int(1) DEFAULT NULL,
  `Crosswalk_Painted` int(1) DEFAULT NULL,
  PRIMARY KEY (`Walkability_Assessment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Walkability_Assessment`
--

LOCK TABLES `Walkability_Assessment` WRITE;
/*!40000 ALTER TABLE `Walkability_Assessment` DISABLE KEYS */;
INSERT INTO `Walkability_Assessment` VALUES (1,'2013-01-07',1,'56th and Dorchester',1,1,NULL),(2,'2013-01-08',1,'61st and Ingleside',0,0,0),(3,'2013-01-22',1,'6200 block of Ingleside Ave.',0,0,0),(4,'2013-02-08',0,'1800 block of Halsted',0,1,0);
/*!40000 ALTER TABLE `Walkability_Assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ttm-enlace`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ttm-enlace` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ttm-enlace`;

--
-- Table structure for table `Absences`
--

DROP TABLE IF EXISTS `Absences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Absences` (
  `Absence_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Program_Date` int(11) DEFAULT NULL,
  PRIMARY KEY (`Absence_ID`),
  KEY `FK_Absences__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_Absences__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Absences`
--

LOCK TABLES `Absences` WRITE;
/*!40000 ALTER TABLE `Absences` DISABLE KEYS */;
INSERT INTO `Absences` VALUES (5,3,4),(6,6,7),(7,4,4),(8,1,2),(9,2,1),(10,6,8),(11,4,12),(12,11,21),(13,2,20),(14,3,23),(15,27,19),(16,15,29),(17,27,3),(18,20,2),(21,4,3),(22,4,34);
/*!40000 ALTER TABLE `Absences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Assessment_Responses`
--

DROP TABLE IF EXISTS `Assessment_Responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assessment_Responses` (
  `Assessment_Response_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Question_ID` varchar(50) DEFAULT NULL,
  `Response_Select` int(11) DEFAULT NULL,
  `Response_Text` text,
  PRIMARY KEY (`Assessment_Response_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assessment_Responses`
--

LOCK TABLES `Assessment_Responses` WRITE;
/*!40000 ALTER TABLE `Assessment_Responses` DISABLE KEYS */;
INSERT INTO `Assessment_Responses` VALUES (1,'BYS_1',0,'N/A'),(2,'BYS_1',1,'Strongly disagree'),(3,'BYS_1',2,'Disagree'),(4,'BYS_1',3,'Agree'),(5,'BYS_1',4,'Strongly agree'),(6,'BYS_2',0,'N/A'),(7,'BYS_2',1,'Strongly disagree'),(8,'BYS_2',2,'Disagree'),(9,'BYS_2',3,'Agree'),(10,'BYS_2',4,'Strongly agree'),(11,'BYS_3',0,'N/A'),(12,'BYS_3',1,'Strongly disagree'),(13,'BYS_3',2,'Disagree'),(14,'BYS_3',3,'Agree'),(15,'BYS_3',4,'Strongly agree'),(16,'BYS_4',0,'N/A'),(17,'BYS_4',1,'Strongly disagree'),(18,'BYS_4',2,'Disagree'),(19,'BYS_4',3,'Agree'),(20,'BYS_4',4,'Strongly agree'),(21,'BYS_5',0,'N/A'),(22,'BYS_5',1,'Strongly disagree'),(23,'BYS_5',2,'Disagree'),(24,'BYS_5',3,'Agree'),(25,'BYS_5',4,'Strongly agree'),(26,'BYS_6',0,'N/A'),(27,'BYS_6',1,'Mostly A\'s'),(28,'BYS_6',2,'Mostly B\'s'),(29,'BYS_6',3,'Mostly C\'s'),(30,'BYS_6',4,'Mostly D\'s'),(31,'BYS_7',0,'N/A'),(32,'BYS_7',1,'Yes'),(33,'BYS_7',2,'No'),(34,'BYS_7',3,'Not sure'),(36,'BYS_8',0,'N/A'),(37,'BYS_8',1,'More than 3 hours'),(38,'BYS_8',2,'Between 1-3 hours'),(39,'BYS_8',3,'An hour or less'),(41,'BYS_9',0,'N/A'),(42,'BYS_9',1,'Never'),(43,'BYS_9',2,'Once or twice'),(44,'BYS_9',3,'3 or more days'),(46,'BYS_T',0,'N/A'),(47,'BYS_T',1,'Very important'),(48,'BYS_T',2,'Somewhat important'),(49,'BYS_T',3,'Not at all important'),(51,'BYS_E',0,'N/A'),(52,'BYS_E',1,'Very important'),(53,'BYS_E',2,'Somewhat important'),(54,'BYS_E',3,'Not at all important'),(56,'JVQ_1',1,'Yes'),(57,'JVQ_1',2,'No'),(58,'JVQ_1',0,'No response'),(59,'JVQ_2',1,'Yes'),(60,'JVQ_2',2,'No'),(61,'JVQ_2',0,'No response'),(62,'JVQ_3',1,'Yes'),(63,'JVQ_3',2,'No'),(64,'JVQ_3',0,'No response'),(65,'JVQ_4',1,'Yes'),(66,'JVQ_4',2,'No'),(67,'JVQ_4',0,'No response'),(68,'JVQ_5',1,'Yes'),(69,'JVQ_5',2,'No'),(70,'JVQ_5',0,'No response'),(71,'JVQ_6',1,'Yes'),(72,'JVQ_6',2,'No'),(73,'JVQ_6',0,'No response'),(74,'JVQ_7',1,'Yes'),(75,'JVQ_7',2,'No'),(76,'JVQ_7',0,'No response'),(77,'JVQ_8',1,'Yes'),(78,'JVQ_8',2,'No'),(79,'JVQ_8',0,'No response'),(80,'JVQ_9',1,'Yes'),(81,'JVQ_9',2,'No'),(82,'JVQ_9',0,'No response'),(83,'JVQ_T',1,'Yes'),(84,'JVQ_T',2,'No'),(85,'JVQ_T',0,'No response'),(86,'JVQ_E',1,'Yes'),(87,'JVQ_E',2,'No'),(88,'JVQ_E',0,'No response'),(89,'Solve_Problems',0,'N/A'),(90,'Solve_Problems',1,'Not likely at all'),(91,'Solve_Problems',2,'May be likely but probably not'),(92,'Solve_Problems',3,'Could go either way'),(93,'Solve_Problems',4,'Very likely, not absolute'),(94,'Solve_Problems',5,'Definitely will'),(95,'Stay_Safe',0,'N/A'),(96,'Stay_Safe',1,'Not likely at all'),(97,'Stay_Safe',2,'May be likely but probably not'),(98,'Stay_Safe',3,'Could go either way'),(99,'Stay_Safe',4,'Very likely, not absolute'),(100,'Stay_Safe',5,'Definitely will'),(101,'Alive_Well',0,'N/A'),(102,'Alive_Well',1,'Not likely at all'),(103,'Alive_Well',2,'May be likely but probably not'),(104,'Alive_Well',3,'Could go either way'),(105,'Alive_Well',4,'Very likely, not absolute'),(106,'Alive_Well',5,'Definitely will'),(107,'Manage_Work',0,'N/A'),(108,'Manage_Work',1,'Not likely at all'),(109,'Manage_Work',2,'May be likely but probably not'),(110,'Manage_Work',3,'Could go either way'),(111,'Manage_Work',4,'Very likely, not absolute'),(112,'Manage_Work',5,'Definitely will'),(113,'Friends',0,'N/A'),(114,'Friends',1,'Not likely at all'),(115,'Friends',2,'May be likely but probably not'),(116,'Friends',3,'Could go either way'),(117,'Friends',4,'Very likely, not absolute'),(118,'Friends',5,'Definitely will'),(119,'Happy_Life',0,'N/A'),(120,'Happy_Life',1,'Not likely at all'),(121,'Happy_Life',2,'May be likely but probably not'),(122,'Happy_Life',3,'Could go either way'),(123,'Happy_Life',4,'Very likely, not absolute'),(124,'Happy_Life',5,'Definitely will'),(125,'Interesting_Life',0,'N/A'),(126,'Interesting_Life',1,'Not likely at all'),(127,'Interesting_Life',2,'May be likely but probably not'),(128,'Interesting_Life',3,'Could go either way'),(129,'Interesting_Life',4,'Very likely, not absolute'),(130,'Interesting_Life',5,'Definitely will'),(131,'Proud_Parents',0,'N/A'),(132,'Proud_Parents',1,'Not likely at all'),(133,'Proud_Parents',2,'May be likely but probably not'),(134,'Proud_Parents',3,'Could go either way'),(135,'Proud_Parents',4,'Very likely, not absolute'),(136,'Proud_Parents',5,'Definitely will'),(137,'Finish_HS',0,'N/A'),(138,'Finish_HS',1,'Not likely at all'),(139,'Finish_HS',2,'May be likely but probably not'),(140,'Finish_HS',3,'Could go either way'),(141,'Finish_HS',4,'Very likely, not absolute'),(142,'Finish_HS',5,'Definitely will'),(143,'Pay_Attention',0,'N/A'),(144,'Pay_Attention',1,'None'),(145,'Pay_Attention',2,'One'),(146,'Pay_Attention',3,'2-3'),(147,'Pay_Attention',4,'More than 3'),(148,'Check_In',0,'N/A'),(149,'Check_In',1,'None'),(150,'Check_In',2,'One'),(151,'Check_In',3,'2-3'),(152,'Check_In',4,'More than 3'),(153,'Compliment',0,'N/A'),(154,'Compliment',1,'None'),(155,'Compliment',2,'One'),(156,'Compliment',3,'2-3'),(157,'Compliment',4,'More than 3'),(158,'Upset_Discussion',0,'N/A'),(159,'Upset_Discussion',1,'None'),(160,'Upset_Discussion',2,'One'),(161,'Upset_Discussion',3,'2-3'),(162,'Upset_Discussion',4,'More than 3'),(163,'Crisis_Help',0,'N/A'),(164,'Crisis_Help',1,'None'),(165,'Crisis_Help',2,'One'),(166,'Crisis_Help',3,'2-3'),(167,'Crisis_Help',4,'More than 3'),(168,'Personal_Advice',0,'N/A'),(169,'Personal_Advice',1,'None'),(170,'Personal_Advice',2,'One'),(171,'Personal_Advice',3,'2-3'),(172,'Personal_Advice',4,'More than 3'),(173,'Know_You',0,'N/A'),(174,'Know_You',1,'None'),(175,'Know_You',2,'One'),(176,'Know_You',3,'2-3'),(177,'Know_You',4,'More than 3'),(178,'KnowImportance',0,'N/A'),(179,'KnowImportance',1,'None'),(180,'KnowImportance',2,'One'),(181,'KnowImportance',3,'2-3'),(182,'KnowImportance',4,'More than 3'),(183,'BYS_6',5,'Mostly F\'s'),(184,'Cowardice',0,'N/A'),(185,'Cowardice',4,'Disagree a lot'),(186,'Cowardice',3,'Disagree a little'),(187,'Cowardice',2,'Agree a little'),(188,'Cowardice',1,'Agree a lot'),(189,'Teasing_Prvention',0,'N/A'),(190,'Teasing_Prvention',4,'Disagree a lot'),(191,'Teasing_Prvention',3,'Disagree a little'),(192,'Teasing_Prvention',2,'Agree a little'),(193,'Teasing_Prvention',1,'Agree a lot'),(194,'Anger_Mgmt',0,'N/A'),(195,'Anger_Mgmt',1,'Disagree a lot'),(196,'Anger_Mgmt',2,'Disagree a little'),(197,'Anger_Mgmt',3,'Agree a little'),(198,'Anger_Mgmt',4,'Agree a lot'),(199,'Self_Defense',0,'N/A'),(200,'Self_Defense',4,'Disagree a lot'),(201,'Self_Defense',3,'Disagree a little'),(202,'Self_Defense',2,'Agree a little'),(203,'Self_Defense',1,'Agree a lot'),(204,'Coping',0,'N/A'),(205,'Coping',1,'Disagree a lot'),(206,'Coping',2,'Disagree a little'),(207,'Coping',3,'Agree a little'),(208,'Coping',4,'Agree a lot'),(209,'Handle_Others',0,'N/A'),(210,'Handle_Others',4,'Disagree a lot'),(211,'Handle_Others',3,'Disagree a little'),(212,'Handle_Others',2,'Agree a little'),(213,'Handle_Others',1,'Agree a lot'),(214,'Negotiation',0,'N/A'),(215,'Negotiation',1,'Disagree a lot'),(216,'Negotiation',2,'Disagree a little'),(217,'Negotiation',3,'Agree a little'),(218,'Negotiation',4,'Agree a lot'),(219,'Parent_Disapproval',0,'N/A'),(220,'Parent_Disapproval',1,'Disagree a lot'),(221,'Parent_Disapproval',2,'Disagree a little'),(222,'Parent_Disapproval',3,'Agree a little'),(223,'Parent_Disapproval',4,'Agree a lot'),(224,'Parent_Approval',0,'N/A'),(225,'Parent_Approval',4,'Disagree a lot'),(226,'Parent_Approval',3,'Disagree a little'),(227,'Parent_Approval',2,'Agree a little'),(228,'Parent_Approval',1,'Agree a lot'),(229,'Self_Awareness',0,'N/A'),(230,'Self_Awareness',1,'Disagree a lot'),(231,'Self_Awareness',2,'Disagree a little'),(232,'Self_Awareness',3,'Agree a little'),(233,'Self_Awareness',4,'Agree a lot'),(234,'Self_Care',0,'N/A'),(235,'Self_Care',1,'Disagree a lot'),(236,'Self_Care',2,'Disagree a little'),(237,'Self_Care',3,'Agree a little'),(238,'Self_Care',4,'Agree a lot'),(241,'JVQ_12',1,'Yes'),(242,'JVQ_12',2,'No'),(243,'JVQ_12',0,'No response');
/*!40000 ALTER TABLE `Assessment_Responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Assessments`
--

DROP TABLE IF EXISTS `Assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assessments` (
  `Assessment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Baseline_ID` int(11) DEFAULT NULL,
  `Caring_ID` int(11) DEFAULT NULL,
  `Future_ID` int(11) DEFAULT NULL,
  `Violence_ID` int(11) DEFAULT NULL,
  `Pre_Post` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Assessment_ID`),
  KEY `FK_Assessments__Participants__Participant_ID_idx` (`Participant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assessments`
--

LOCK TABLES `Assessments` WRITE;
/*!40000 ALTER TABLE `Assessments` DISABLE KEYS */;
INSERT INTO `Assessments` VALUES (1,5,29,28,24,29,1,'2013-08-15 20:49:30'),(2,5,0,30,26,31,2,'2013-08-15 21:10:50'),(3,0,30,31,27,32,1,'2013-08-19 18:59:38'),(4,0,31,32,28,33,1,'2013-08-19 19:00:33'),(5,15,32,33,29,34,1,'2013-08-19 19:01:40'),(6,31,33,34,30,35,1,'2013-08-28 13:21:46'),(7,3,34,35,31,36,1,'2013-08-28 20:05:43'),(8,16,35,36,32,37,1,'2013-08-28 20:34:16'),(9,16,0,37,33,38,2,'2013-08-28 20:35:26'),(15,25,0,43,39,44,2,'2013-08-28 20:40:13'),(16,25,0,44,40,45,2,'2013-08-28 20:40:13'),(17,15,0,45,41,46,2,'2013-08-28 20:42:04'),(27,4,45,55,51,56,1,'2013-09-10 20:10:38'),(28,4,46,403,52,57,1,'2013-10-02 21:29:40'),(29,4,0,404,53,58,2,'2013-10-02 21:30:53'),(30,27,47,405,54,59,1,'2013-11-18 21:36:26'),(31,33,48,406,55,60,1,'2013-11-18 22:21:12');
/*!40000 ALTER TABLE `Assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Baseline_Assessment_Questions`
--

DROP TABLE IF EXISTS `Baseline_Assessment_Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Baseline_Assessment_Questions` (
  `Baseline_Assessment_Question_ID` varchar(50) NOT NULL,
  `Question` text,
  `In_Table` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Baseline_Assessment_Question_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Baseline_Assessment_Questions`
--

LOCK TABLES `Baseline_Assessment_Questions` WRITE;
/*!40000 ALTER TABLE `Baseline_Assessment_Questions` DISABLE KEYS */;
INSERT INTO `Baseline_Assessment_Questions` VALUES ('Alive_Well','When I think about the future Iwill be alive and well.','Participants_Future_Expectations'),('Anger_Mgmt','I don\'t need to fight because there are other ways to deal with being mad.','Participants_Interpersonal_Violence'),('BYS_1','I live in a neighborhood where people know and like each other.','Participants_Baseline_Assessments'),('BYS_2','People in my neighborhood are willing to help their neighbors','Participants_Baseline_Assessments'),('BYS_3','People in my neighborhood generally get along with each other','Participants_Baseline_Assessments'),('BYS_4','People in my neighborhood generally share the same beliefs about what is right and wrong.','Participants_Baseline_Assessments'),('BYS_5','People in my neighborhood can be trusted.','Participants_Baseline_Assessments'),('BYS_6','In the past 12 months, how would you describe your grades in school?','Participants_Baseline_Assessments'),('BYS_7','Are you receiving special education services (IEP)?','Participants_Baseline_Assessments'),('BYS_8','About how much time do you spend working on homework on an average school day?','Participants_Baseline_Assessments'),('BYS_9','In the past 30 days, how many times did you skip school when you were not sick?','Participants_Baseline_Assessments'),('BYS_E','How important is it to your family that you continue your education after high school?','Participants_Baseline_Assessments'),('BYS_T','How important is getting good grades to you?','Participants_Baseline_Assessments'),('Check_In','How many adults in your life would say something to you if something in your life wasn\'t going right?','Participants_Caring_Adults'),('Compliment','How many adults in your life say something nice to you when you do something good?','Participants_Caring_Adults'),('Coping','When actions of others make me angry, I can usually deal with it without getting into a physical fight.','Participants_Interpersonal_Violence'),('Cowardice','If I walked away from a fight, I\'d be a coward (\"chicken\").','Participants_Interpersonal_Violence'),('Crisis_Help','How many adults in your life could you go to for help in a crisis?','Participants_Caring_Adults'),('Finish_HS','Thinking about yourself and when you get older, how likely do you think it is that you will finish high school?','Participants_Future_Expectations'),('Friends','When I think about the future I think Iwill have friends and people that care about me.','Participants_Future_Expectations'),('Handle_Others','If a kid teases me or disses me, I usually cannot get them to stop unless I hit them.','Participants_Interpersonal_Violence'),('Happy_Life','When I think about the future I will have a happy life.','Participants_Future_Expectations'),('Interesting_Life','When I think about the future my life will be interesting.','Participants_Future_Expectations'),('JVQ_1','At any time in your life, did anyone steal something from you and never give it back? Things like a backpack, money, watch, clothing, bike, stereo, or anything else?','Participants_Baseline_Assessments'),('JVQ_12','At any time in your life, did a grown-up you did not know touch your private parts when they shouldn\'t have, make you touch their private parts or force you to have sex?','Participants_Baseline_Assessments'),('JVQ_2','Sometimes people are attacked with sticks, rocks, guns, knives, or other things that would hurt. At any time in your life, did anyone hit or attack you on purpose with an object or weapon? Somewhere like: at home, at school, at at a store, in a car, on the street, or anywhere else?','Participants_Baseline_Assessments'),('JVQ_3','At any time in your life, did anyone hit or attack you without using an object or weapon?','Participants_Baseline_Assessments'),('JVQ_4','At any time in your life, did you get scared or feel really bad because grown-ups in your life called you names, said mean things to you, or said they didn\'t want you','Participants_Baseline_Assessments'),('JVQ_5','Sometimes group of kids or gangs attack people. At any time in your life, did a group of kids or a gang hit, jump, or attack you?','Participants_Baseline_Assessments'),('JVQ_6','At any time in your life, did any kid, even a brother or sister, hit you? Somewhere like: at home, at school, out playing, in a store, or anywhere else?','Participants_Baseline_Assessments'),('JVQ_7','At any time in your life, did you get scared or feel really bad because kids were calling you names, saying mean things to you, or saying they didn\'t want you around?','Participants_Baseline_Assessments'),('JVQ_8','At any time in your life, did a grown-up you know touch your private parts when they shouldn\'t have or makr you touch their private parts? Or did a grown-up you know force you to have sex?','Participants_Baseline_Assessments'),('JVQ_9','At any time in your life, did you see a parent get pushed, slapped, hit, punched, or beat up by another parent, or their boyfriend or girlfriend?','Participants_Baseline_Assessments'),('JVQ_E','At any time in your life, were in you in any place in real life where you could see or hear people being shot, bombs going off, or street riots?','Participants_Baseline_Assessments'),('JVQ_T','At any time in your life, in real life, did you see anyone get attacked on purpose with a stick, rock, gun, knife, or other thing that would hurt? Somewhere like: at home, at school, at a store, in a car, on the street, or anywhere else?','Participants_Baseline_Assessments'),('KnowImportance','How many adults in your life know what is important to you?','Participants_Caring_Adults'),('Know_You','How many adults in your life know a lot about you?','Participants_Caring_Adults'),('Manage_Work','When I think about the future Iam sure that Ican handle work or school.','Participants_Future_Expectations'),('Negotiation','If I really want to, I can usually talk someone out of trying to fight with me.','Participants_Interpersonal_Violence'),('Parent_Approval','If a student hits me first, my family would want me to hit them back.','Participants_Interpersonal_Violence'),('Parent_Disapproval','My family would be mad at me if I got in a fight with another student, no matter what the reason.','Participants_Interpersonal_Violence'),('Pay_Attention','How many adults in your life pay attention to what\'s going on in your life?','Participants_Caring_Adults'),('Personal_Advice','How many adults in your life could you go to if you need advice about personal problems?','Participants_Caring_Adults'),('Proud_Parents','When I think about the future my parents will be proud of me.','Participants_Future_Expectations'),('Self_Awareness','I usually can tell when things are bothering me or getting on my nerves.','Participants_Interpersonal_Violence'),('Self_Care','If things are bothering me or getting on my nerves, I do things to relax.','Participants_Interpersonal_Violence'),('Self_Defense','It\'s okay to hit someone who hits you first.','Participants_Interpersonal_Violence'),('Solve_Problems','When I think about the future I am sure I can handle the problems that might come up.','Participants_Future_Expectations'),('Stay_Safe','When I think about the future Iwill be able to stay safe and out of danger.','Participants_Future_Expectations'),('Teasing_Prevention','Anyone who won\'t fight is going to be picked on even more.','Participants_Interpersonal_Violence'),('Upset_Discussion','How many adults in your life could you talk to if you are upset or mad about something?','Participants_Caring_Adults'),('US_Born','Were you born in the US? (optional)','Participants_Baseline_Assessments');
/*!40000 ALTER TABLE `Baseline_Assessment_Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campaigns`
--

DROP TABLE IF EXISTS `Campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns` (
  `Campaign_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Campaign_Name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Campaign_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns`
--

LOCK TABLES `Campaigns` WRITE;
/*!40000 ALTER TABLE `Campaigns` DISABLE KEYS */;
INSERT INTO `Campaigns` VALUES (1,'Youth Violence'),(2,'Immigration'),(3,'Public Safety'),(4,'Job Retention'),(5,'Working Groups');
/*!40000 ALTER TABLE `Campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campaigns_Events`
--

DROP TABLE IF EXISTS `Campaigns_Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns_Events` (
  `Campaign_Event_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(100) DEFAULT NULL,
  `Event_Date` date DEFAULT NULL,
  `Campaign_ID` int(11) DEFAULT NULL,
  `Address_Num` varchar(45) DEFAULT NULL,
  `Address_Dir` varchar(1) DEFAULT NULL,
  `Address_Street` varchar(45) DEFAULT NULL,
  `Address_Suffix` varchar(45) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Note_File_Name` varchar(100) DEFAULT NULL,
  `Note_File_Size` varchar(45) DEFAULT NULL,
  `Note_File_Type` varchar(45) DEFAULT NULL,
  `Note_File_Content` longblob,
  PRIMARY KEY (`Campaign_Event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns_Events`
--

LOCK TABLES `Campaigns_Events` WRITE;
/*!40000 ALTER TABLE `Campaigns_Events` DISABLE KEYS */;
/*!40000 ALTER TABLE `Campaigns_Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campaigns_Institutions`
--

DROP TABLE IF EXISTS `Campaigns_Institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campaigns_Institutions` (
  `Campaigns_Institutions_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_ID` int(11) DEFAULT NULL,
  `Campaign_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Campaigns_Institutions_ID`),
  KEY `FK_Campaigns_Institutions__Institutions__Institution_ID_idx` (`Institution_ID`),
  CONSTRAINT `FK_Campaigns_Institutions__Institutions__Institution_ID` FOREIGN KEY (`Institution_ID`) REFERENCES `Institutions` (`Inst_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campaigns_Institutions`
--

LOCK TABLES `Campaigns_Institutions` WRITE;
/*!40000 ALTER TABLE `Campaigns_Institutions` DISABLE KEYS */;
INSERT INTO `Campaigns_Institutions` VALUES (7,22,3),(8,13,2),(9,10,2),(10,14,2);
/*!40000 ALTER TABLE `Campaigns_Institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Child_Parent`
--

DROP TABLE IF EXISTS `Child_Parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Child_Parent` (
  `Family_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Child_ID` int(11) DEFAULT NULL,
  `Parent_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Family_ID`),
  KEY `child_id` (`Child_ID`),
  KEY `parent_id` (`Parent_ID`),
  CONSTRAINT `child_id` FOREIGN KEY (`Child_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parent_id` FOREIGN KEY (`Parent_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Child_Parent`
--

LOCK TABLES `Child_Parent` WRITE;
/*!40000 ALTER TABLE `Child_Parent` DISABLE KEYS */;
INSERT INTO `Child_Parent` VALUES (1,5,9),(2,13,12),(3,3,2),(4,3,1),(5,17,16),(7,20,6),(8,21,22),(9,31,30);
/*!40000 ALTER TABLE `Child_Parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Roles`
--

DROP TABLE IF EXISTS `Event_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Roles` (
  `Event_Role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Event_Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Roles`
--

LOCK TABLES `Event_Roles` WRITE;
/*!40000 ALTER TABLE `Event_Roles` DISABLE KEYS */;
INSERT INTO `Event_Roles` VALUES (0,'N/A'),(1,'Attendee'),(2,'Speaker'),(3,'Chairperson'),(4,'Prep work'),(5,'Staff'),(6,'Point person');
/*!40000 ALTER TABLE `Event_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Types`
--

DROP TABLE IF EXISTS `Event_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Types` (
  `Event_Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Event_Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Types`
--

LOCK TABLES `Event_Types` WRITE;
/*!40000 ALTER TABLE `Event_Types` DISABLE KEYS */;
INSERT INTO `Event_Types` VALUES (1,'Leadership Meeting'),(2,'Board Meeting'),(3,'Rally/March'),(4,'Press Conference'),(5,'Doorknocking'),(6,'Aldermanic Meeting'),(7,'City Council Meeting'),(8,'Legislative Meeting'),(9,'Petitions/Postcards'),(10,'Other'),(11,'Meeting/Assembly'),(12,'Working Group');
/*!40000 ALTER TABLE `Event_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Followups`
--

DROP TABLE IF EXISTS `Followups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Followups` (
  `Followup_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant` int(11) DEFAULT NULL,
  `Note` varchar(600) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Followup_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Followups`
--

LOCK TABLES `Followups` WRITE;
/*!40000 ALTER TABLE `Followups` DISABLE KEYS */;
INSERT INTO `Followups` VALUES (1,6,'Test a new note.\n','2013-08-07 16:54:54'),(2,29,'how bout now?','2013-08-23 20:59:30'),(3,23,'test new followup','2013-08-23 20:59:48'),(4,31,'Add followup note here.','2013-08-28 13:07:13');
/*!40000 ALTER TABLE `Followups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institution_Types`
--

DROP TABLE IF EXISTS `Institution_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institution_Types` (
  `Inst_Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Inst_Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institution_Types`
--

LOCK TABLES `Institution_Types` WRITE;
/*!40000 ALTER TABLE `Institution_Types` DISABLE KEYS */;
INSERT INTO `Institution_Types` VALUES (1,'School'),(2,'Church'),(3,'Community Organization'),(4,'Hospital'),(5,'University');
/*!40000 ALTER TABLE `Institution_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institutions`
--

DROP TABLE IF EXISTS `Institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institutions` (
  `Inst_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_Name` varchar(45) DEFAULT NULL,
  `Institution_Type` int(11) DEFAULT NULL,
  `Address_Num` int(11) DEFAULT NULL,
  `Address_Dir` varchar(45) DEFAULT NULL,
  `Address_Street` varchar(45) DEFAULT NULL,
  `Address_Street_Type` varchar(45) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  `Point_Person` int(11) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Inst_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institutions`
--

LOCK TABLES `Institutions` WRITE;
/*!40000 ALTER TABLE `Institutions` DISABLE KEYS */;
INSERT INTO `Institutions` VALUES (0,'N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,'Castellanos',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Corkery',1,1750,'S','State','St',NULL,6,'','momar.corkery@gmail.com'),(3,'Crown Academy',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Gary',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Hammond',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Howland (Catalyst Charter)',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Kanoon',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Little Village Academy',1,0,'','','',NULL,0,'',''),(9,'Ortiz',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Our Lady Tepeyac Catholic',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Madero',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'St. Agnes',1,0,'','','',NULL,0,'123-456-7890','info@stagnes.org'),(13,'Enlace Chicago',3,2100,'S','Ashland','Ave',NULL,0,'',''),(14,'Mt. Sinai',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Marquette U',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'St. Anthony',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Beyond the Ball',3,0,'','','',NULL,0,'555-665-9087',''),(18,'Rainbow House',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'New Life Centers',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Christ\'s Way',2,6142,'S','Woodlawn','Ave',NULL,14,'773-256-5566','info@christsway.org'),(23,'MMW LLC',5,0,'','','',NULL,0,'','maggie@mmw.us'),(24,'Lurie Children\'s Hospital',4,0,'','','',NULL,0,'',''),(25,'Partners In Health',3,0,'','','',NULL,0,'',''),(26,'Socios En Salud',3,0,'','','',NULL,0,'',''),(28,'Test Point.',3,0,'','','',NULL,0,'',''),(29,'Attempt Again',4,900,'N','Halsted','Ave',NULL,27,'',''),(31,'And Yet Again',4,6106,'S','Ingleside','Ave',NULL,0,'',''),(33,'Noise Reduction Co.',3,0,'','','',NULL,12,'',''),(34,'TestBlock Group',5,2700,'S','Western','Ave','170318413002019',27,'','');
/*!40000 ALTER TABLE `Institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants`
--

DROP TABLE IF EXISTS `Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants` (
  `Participant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Day_Phone` varchar(45) DEFAULT NULL,
  `Evening_Phone` varchar(45) DEFAULT NULL,
  `Address_Num` int(11) DEFAULT NULL,
  `Address_Dir` varchar(2) DEFAULT NULL,
  `Address_Street` varchar(45) DEFAULT NULL,
  `Address_Street_Type` varchar(45) DEFAULT NULL,
  `Address_City` varchar(45) DEFAULT NULL,
  `Address_State` varchar(45) DEFAULT NULL,
  `Address_ZIP` int(5) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Grade` varchar(45) DEFAULT NULL,
  `Grade_Entered` int(11) DEFAULT NULL,
  `School` int(11) DEFAULT NULL,
  `Role` int(11) DEFAULT NULL,
  `Date_Entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Email` varchar(45) DEFAULT NULL,
  `Early_Warning_Absences` int(11) DEFAULT NULL,
  `Early_Warning_Failed` int(11) DEFAULT NULL,
  `Early_Warning_Discipline` int(11) DEFAULT NULL,
  `Referring_Teacher` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants`
--

LOCK TABLES `Participants` WRITE;
/*!40000 ALTER TABLE `Participants` DISABLE KEYS */;
INSERT INTO `Participants` VALUES (1,'Eva','Wright','773-202-8640','773-202-8651',0,'','','','','',0,NULL,'2013-7-30',52,'f','',NULL,0,2,'2013-06-07 20:32:03','wright-wright@home.net',0,0,0,0),(2,'Hannah','Wright','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',31,'f','',NULL,0,2,'2013-06-07 20:33:38',NULL,NULL,NULL,NULL,NULL),(3,'Nelly','Wright','','',0,'','','','','',0,NULL,'2002-10-31',0,'f','',NULL,0,1,'2013-06-07 20:35:25','',0,0,0,0),(4,'Enzo','Angiolini','555-555-5555','',1600,'N','Pennsylvania','Ave','Chicago','IL',60623,NULL,'2001-1-1',12,'m','',0,0,1,'2013-06-07 20:49:27','',0,0,1,0),(5,'Antoine','Reed','','',0,'','','','','',0,NULL,'1999-7-14',0,'m','',NULL,0,1,'2013-06-14 19:01:42','coolkid1@uchicago.edu',1,0,1,0),(6,'Mylo','Omarion','','',1800,'W','Garfield','','Chicago','IL',0,NULL,'2001-4-6',0,'m','7',2013,4,0,'2013-06-20 16:47:19','',1,0,0,0),(9,'Estelle','Swaray','','',0,'','','','','',0,NULL,'1979-1-18',0,'f','',NULL,0,0,'2013-06-20 18:15:03','',0,0,0,0),(10,'Testing','Walkthrough','','',0,'','','','','',0,NULL,'2013-7-5',0,'f','',NULL,0,0,'2013-07-05 20:17:30','',0,0,0,0),(11,'Corinne','Taylor','','',0,'','','','','',0,NULL,'2002-8-8',0,'f','',NULL,8,0,'2013-07-26 18:34:21','',0,0,0,0),(12,'Elias','Taylor','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,0,'2013-07-26 18:56:30',NULL,NULL,NULL,NULL,NULL),(13,'Eugenia','Michaels','401-222-3322','401-222-3311',80,'W','65th','St','Chicago','IL',60601,NULL,'2000-7-12',0,'f','',NULL,0,0,'2013-07-29 14:29:02','',0,0,0,0),(14,'Fake','Name','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,0,'2013-07-30 14:45:49',NULL,NULL,NULL,NULL,NULL),(15,'Even','Faker','','',0,'','','','','',0,NULL,'2001-3-23',0,'','',0,0,1,'2013-07-30 14:46:16','',0,0,0,0),(16,'Camille','Paglia','','',0,'','','','','',0,NULL,'2001-3-3',0,'','',0,0,1,'2013-07-30 19:12:29','',0,0,0,0),(17,'Evette','Paglia','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,0,'2013-07-31 18:46:01',NULL,NULL,NULL,NULL,NULL),(20,'Miles','Omarion','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,0,'2013-08-08 18:17:01',NULL,NULL,NULL,NULL,NULL),(21,'Wynter','Gordon','','',9876,'W','28th','St','Chicago','IL',60623,NULL,'2000-8-4',0,'f','8',2013,1,1,'2013-08-12 15:24:20','',0,0,0,0),(22,'Anne','Gordon','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,0,'2013-08-12 18:07:25',NULL,NULL,NULL,NULL,NULL),(23,'Wynter','Gordon','','',0,'','','','','',0,NULL,'1999-5-3',0,'','',0,0,1,'2013-08-19 15:33:53','',0,0,0,0),(24,'Test','Roles','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-8-12',0,'','',NULL,0,1,'2013-08-19 18:27:27',NULL,NULL,NULL,NULL,NULL),(25,'Anna','Freud','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2001-11-11',0,'','',NULL,0,1,'2013-08-20 15:53:52',NULL,NULL,NULL,NULL,NULL),(26,'Morgan','Walsch','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1989-2-16',0,'','',NULL,0,3,'2013-08-20 15:54:40',NULL,NULL,NULL,NULL,NULL),(27,'placido','domingo','','',0,'','','','','',0,'','1993-08-01',0,'m','',0,0,1,'2013-08-20 17:14:05','',0,0,0,0),(28,'Test','DOB','','',0,'','','','','',0,NULL,'',0,'m','',0,0,2,'2013-08-23 20:56:29','',0,0,0,0),(29,'Test','DOB 2','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1990-02-01',0,'','',NULL,0,3,'2013-08-23 20:56:50',NULL,NULL,NULL,NULL,NULL),(30,'Maria','Yegros','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1980-09-05',0,'','',NULL,0,3,'2013-08-28 13:05:49',NULL,NULL,NULL,NULL,NULL),(31,'Liamar','Yegros','','',0,'','','','','',0,NULL,'2000-12-28',12,'f','',0,0,1,'2013-08-28 13:06:39','',0,0,0,0),(32,'test','old','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1920-9-3',0,'','',NULL,0,2,'2013-09-04 19:48:40',NULL,NULL,NULL,NULL,NULL),(33,'Fiselle','Scarlatti','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2000-2-28',0,'','',NULL,0,1,'2013-09-04 19:58:26',NULL,NULL,NULL,NULL,NULL),(34,'Test','Wrong-DOB','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2000-2-28',0,'','',NULL,0,1,'2013-09-04 20:04:11',NULL,NULL,NULL,NULL,NULL),(35,'Rachel','Wood','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2001-9-12',0,'','',NULL,0,1,'2013-09-10 17:53:31',NULL,NULL,NULL,NULL,NULL),(36,'test','no-dob','asdf','',0,'','','','','',0,NULL,'1990-12-14',0,'','',0,0,1,'2013-09-16 19:10:31','',0,0,0,0),(37,'test','dobagain','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1993-5-26',0,'','',NULL,0,1,'2013-09-16 19:34:02',NULL,NULL,NULL,NULL,NULL),(38,'test','dobagain','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1993-05-26',0,'','',NULL,0,1,'2013-09-16 19:34:23',NULL,NULL,NULL,NULL,NULL),(39,'test','dobagain','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1993-5-4',0,'','',NULL,0,1,'2013-09-16 19:38:54',NULL,NULL,NULL,NULL,NULL),(40,'Noaddress','Field','','',9,'','Salisbury','Rd','Foster','RI',2825,'440070133002022','',30,'f','',0,0,3,'2013-09-30 15:29:27','',0,0,0,0),(41,'Testing','New-People','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,2,'2013-10-07 19:22:33',NULL,NULL,NULL,NULL,NULL),(42,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,1,'2014-04-15 15:21:50',NULL,NULL,NULL,NULL,NULL),(43,'Ce','De','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,1,'2014-04-15 15:23:43',NULL,NULL,NULL,NULL,NULL),(44,'Test','Final','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,'','',NULL,0,1,'2014-04-15 15:24:33',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Baseline_Assessments`
--

DROP TABLE IF EXISTS `Participants_Baseline_Assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Baseline_Assessments` (
  `Baseline_Assessment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Program` int(11) DEFAULT NULL,
  `Home_Language` int(11) DEFAULT NULL,
  `US_Born` int(11) DEFAULT NULL,
  `Ethnicity` int(11) DEFAULT NULL,
  `Race` int(11) DEFAULT NULL,
  `BYS_1` int(11) DEFAULT NULL,
  `BYS_2` int(11) DEFAULT NULL,
  `BYS_3` int(11) DEFAULT NULL,
  `BYS_4` int(11) DEFAULT NULL,
  `BYS_5` int(11) DEFAULT NULL,
  `BYS_6` int(11) DEFAULT NULL,
  `BYS_7` int(11) DEFAULT NULL,
  `BYS_8` int(11) DEFAULT NULL,
  `BYS_9` int(11) DEFAULT NULL,
  `BYS_T` int(11) DEFAULT NULL,
  `BYS_E` int(11) DEFAULT NULL,
  `JVQ_1` int(11) DEFAULT NULL,
  `JVQ_2` int(11) DEFAULT NULL,
  `JVQ_3` int(11) DEFAULT NULL,
  `JVQ_4` int(11) DEFAULT NULL,
  `JVQ_5` int(11) DEFAULT NULL,
  `JVQ_6` int(11) DEFAULT NULL,
  `JVQ_7` int(11) DEFAULT NULL,
  `JVQ_8` int(11) DEFAULT NULL,
  `JVQ_9` int(11) DEFAULT NULL,
  `JVQ_T` int(11) DEFAULT NULL,
  `JVQ_E` int(11) DEFAULT NULL,
  `JVQ_12` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Baseline_Assessment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Baseline_Assessments`
--

LOCK TABLES `Participants_Baseline_Assessments` WRITE;
/*!40000 ALTER TABLE `Participants_Baseline_Assessments` DISABLE KEYS */;
INSERT INTO `Participants_Baseline_Assessments` VALUES (3,4,NULL,2,2,NULL,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-06-17 19:10:10'),(5,4,NULL,2,2,NULL,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-06-20 17:49:35'),(6,4,NULL,2,2,NULL,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-06-25 15:12:09'),(10,4,NULL,2,2,NULL,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-07-05 20:25:46'),(15,4,NULL,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-07-24 15:34:47'),(16,4,NULL,2,2,3,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-07-26 19:14:40'),(27,4,NULL,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-15 18:45:05'),(28,4,NULL,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-15 18:45:54'),(29,4,NULL,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-15 20:49:30'),(30,4,NULL,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-19 18:59:38'),(31,4,NULL,2,2,2,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-19 19:00:33'),(32,15,NULL,0,1,2,2,3,3,3,3,3,0,0,0,0,1,0,0,1,0,0,1,0,0,0,2,0,0,2,'2013-08-19 19:01:40'),(33,4,NULL,2,2,5,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-28 13:21:46'),(34,4,NULL,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-28 20:05:43'),(35,4,NULL,2,2,5,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-08-28 20:34:16'),(43,4,NULL,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,'2013-09-10 16:55:19'),(45,4,7,2,2,0,1,0,0,0,2,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,1,1,1,'2013-10-11 05:00:00'),(46,4,7,2,0,0,0,2,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,'2013-10-02 21:29:40'),(47,27,1,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-11-04 06:00:00'),(48,33,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-11-04 06:00:00');
/*!40000 ALTER TABLE `Participants_Baseline_Assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Caring_Adults`
--

DROP TABLE IF EXISTS `Participants_Caring_Adults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Caring_Adults` (
  `Caring_Adults_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Pay_Attention` int(11) DEFAULT NULL,
  `Check_In` int(11) DEFAULT NULL,
  `Compliment` int(11) DEFAULT NULL,
  `Upset_Discussion` int(11) DEFAULT NULL,
  `Crisis_Help` int(11) DEFAULT NULL,
  `Personal_Advice` int(11) DEFAULT NULL,
  `Know_You` int(11) DEFAULT NULL,
  `KnowImportance` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Program` int(11) DEFAULT NULL,
  `Pre_Post` int(11) DEFAULT NULL,
  PRIMARY KEY (`Caring_Adults_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Caring_Adults`
--

LOCK TABLES `Participants_Caring_Adults` WRITE;
/*!40000 ALTER TABLE `Participants_Caring_Adults` DISABLE KEYS */;
INSERT INTO `Participants_Caring_Adults` VALUES (1,4,0,0,0,0,0,0,0,0,NULL,8,1),(4,4,0,0,0,0,0,0,0,0,'2013-06-20 17:55:03',8,1),(5,4,0,0,0,0,0,0,0,0,'2013-06-25 20:19:03',8,1),(6,4,0,0,0,0,0,0,0,0,'2013-07-03 16:26:11',8,1),(7,4,0,0,0,0,0,0,0,0,'2013-07-05 20:26:13',8,1),(8,4,0,0,0,0,0,0,0,0,'2013-07-10 18:13:35',8,1),(9,4,0,0,0,0,0,0,0,0,'2013-07-10 18:19:42',8,1),(10,4,0,0,0,0,0,0,0,0,'2013-07-10 18:20:55',8,1),(11,4,0,0,0,0,0,0,0,0,'2013-07-10 18:41:40',8,1),(12,4,0,0,0,0,0,0,0,0,'2013-07-11 18:18:37',8,1),(13,4,0,0,0,0,0,0,0,0,'2013-07-22 18:53:57',8,1),(14,4,0,0,0,0,0,0,0,0,'2013-07-24 15:34:47',8,1),(15,4,0,0,0,0,0,0,0,0,'2013-07-24 15:41:25',8,1),(16,4,0,0,0,0,0,0,0,0,'2013-07-26 19:14:40',8,1),(17,4,0,0,0,0,0,0,0,0,'2013-07-26 19:15:38',8,1),(18,4,0,0,0,0,0,0,0,0,'2013-08-07 16:29:11',8,1),(19,4,0,0,0,0,0,0,0,0,'2013-08-07 16:29:59',8,1),(20,4,0,0,0,0,0,0,0,0,'2013-08-07 16:30:31',8,1),(21,4,0,0,0,0,0,0,0,0,'2013-08-13 16:48:53',8,1),(22,4,0,0,0,0,0,0,0,0,'2013-08-13 19:36:27',8,1),(23,4,0,0,0,0,0,0,0,0,'2013-08-13 19:40:00',8,1),(24,4,0,0,0,0,0,0,0,0,'2013-08-13 19:41:14',8,1),(25,4,0,0,0,0,0,0,0,0,'2013-08-13 19:41:53',8,1),(26,4,0,0,0,0,0,0,0,0,'2013-08-15 18:45:54',8,1),(27,4,0,0,0,0,0,0,0,0,'2013-08-15 20:47:52',8,1),(28,4,0,0,0,0,0,0,0,0,'2013-08-15 20:49:30',8,1),(29,4,0,0,0,0,0,0,0,0,'2013-08-15 21:10:14',8,1),(30,4,0,0,0,0,0,0,0,0,'2013-08-15 21:10:50',8,1),(31,4,0,0,0,0,0,0,0,0,'2013-08-19 18:59:38',8,1),(32,4,0,0,0,0,0,0,0,0,'2013-08-19 19:00:33',8,1),(33,15,2,2,3,2,3,2,0,0,'2013-08-19 19:01:40',6,1),(34,4,0,0,0,0,0,0,0,0,'2013-08-28 13:21:46',8,1),(35,4,0,0,0,0,0,0,0,0,'2013-08-28 20:05:43',8,1),(36,4,0,0,0,0,0,0,0,0,'2013-08-28 20:34:16',8,1),(37,4,0,0,0,0,0,0,0,0,'2013-08-28 20:35:26',8,1),(43,4,0,0,0,0,0,0,0,0,'2013-08-28 20:40:13',8,1),(44,4,0,0,0,0,0,0,0,0,'2013-08-28 20:40:13',8,1),(45,15,2,4,0,3,0,0,0,0,'2013-08-28 20:42:04',6,2),(46,4,0,0,0,0,0,0,0,0,'2013-09-10 16:44:13',8,1),(47,4,0,0,0,0,0,0,0,0,'2013-09-10 16:44:42',8,1),(48,4,0,0,0,0,0,0,0,0,'2013-09-10 16:47:16',8,1),(49,4,0,0,0,0,0,0,0,0,'2013-09-10 16:47:43',8,1),(50,4,0,0,0,0,0,0,0,0,'2013-09-10 16:51:20',8,1),(51,4,0,0,0,0,0,0,0,0,'2013-09-10 16:54:21',8,1),(52,4,0,0,0,0,0,0,0,0,'2013-09-10 16:54:45',8,1),(55,4,0,0,0,0,0,0,0,0,'2013-10-24 05:00:00',7,1),(383,286,3,3,3,3,3,3,3,3,'2013-09-13 22:50:06',22,1),(384,286,2,3,2,3,4,2,3,3,'2013-09-13 22:52:53',22,2),(385,286,2,3,2,3,4,2,3,3,'2013-09-13 22:52:57',22,2),(386,257,4,2,2,2,2,4,3,4,'2013-09-13 23:02:38',21,1),(387,285,0,0,0,0,0,0,0,0,'2013-09-13 23:03:47',21,1),(388,287,4,3,4,3,4,4,4,2,'2013-09-13 23:18:38',21,1),(389,283,4,3,4,4,3,3,3,2,'2013-09-13 23:21:21',21,1),(390,284,4,1,4,2,4,3,4,4,'2013-09-13 23:41:52',21,1),(391,288,4,4,4,3,4,4,4,3,'2013-09-13 23:48:55',21,1),(392,288,4,4,3,3,4,4,4,3,'2013-09-13 23:51:17',21,2),(393,289,4,4,4,4,3,3,3,4,'2013-09-14 00:05:08',19,1),(394,290,4,4,4,3,3,3,3,4,'2013-09-14 00:10:13',19,1),(395,92,3,3,3,3,3,3,3,3,'2013-09-14 00:12:12',19,2),(396,92,3,3,3,3,3,3,3,3,'2013-09-14 00:12:48',19,2),(397,91,4,3,3,3,3,3,3,3,'2013-09-14 00:15:31',19,2),(398,97,3,3,4,3,3,4,3,3,'2013-09-14 00:17:27',19,2),(399,93,4,4,3,4,4,4,4,3,'2013-09-14 00:20:06',19,2),(400,96,4,3,2,3,3,3,3,3,'2013-09-14 00:37:50',19,2),(401,89,3,3,3,2,3,2,2,2,'2013-09-14 00:40:18',19,2),(402,90,3,4,4,3,3,3,3,4,'2013-09-14 00:45:44',19,2),(403,4,0,0,0,0,0,0,0,0,'2013-10-02 21:29:40',7,1),(404,4,3,0,0,0,0,0,0,0,'2013-10-02 21:30:53',8,2),(405,27,0,0,0,0,0,0,0,0,'2013-11-18 21:36:26',1,1),(406,33,0,0,0,0,0,0,0,0,'2013-11-18 22:21:12',11,1);
/*!40000 ALTER TABLE `Participants_Caring_Adults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Consent`
--

DROP TABLE IF EXISTS `Participants_Consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Consent` (
  `Consent_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `School_Year` int(11) DEFAULT NULL,
  `Consent_Given` int(11) DEFAULT NULL,
  PRIMARY KEY (`Consent_ID`),
  KEY `FK_Participants_Consent__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_Participants_Consent__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Consent`
--

LOCK TABLES `Participants_Consent` WRITE;
/*!40000 ALTER TABLE `Participants_Consent` DISABLE KEYS */;
INSERT INTO `Participants_Consent` VALUES (1,6,1213,1),(2,6,1516,0),(3,11,1213,1),(4,13,1213,1),(5,4,1213,1);
/*!40000 ALTER TABLE `Participants_Consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Events`
--

DROP TABLE IF EXISTS `Participants_Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Events` (
  `Participants_Events_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  `Role_Type` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participants_Events_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Events`
--

LOCK TABLES `Participants_Events` WRITE;
/*!40000 ALTER TABLE `Participants_Events` DISABLE KEYS */;
INSERT INTO `Participants_Events` VALUES (22,11,5,1),(23,13,9,6),(24,14,0,0),(25,13,4,4),(26,14,0,0),(27,16,0,0),(28,14,0,0),(29,14,6,0),(30,17,9,4),(32,17,6,1),(33,14,5,3),(34,24,9,0),(35,24,5,0),(36,24,4,0),(37,25,0,0),(38,25,13,0),(39,24,6,0),(40,24,20,0),(41,24,21,0),(42,25,0,0),(43,24,31,0);
/*!40000 ALTER TABLE `Participants_Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Future_Expectations`
--

DROP TABLE IF EXISTS `Participants_Future_Expectations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Future_Expectations` (
  `Future_Expectations_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Solve_Problems` int(11) DEFAULT NULL,
  `Stay_Safe` int(11) DEFAULT NULL,
  `Alive_Well` int(11) DEFAULT NULL,
  `Manage_Work` int(11) DEFAULT NULL,
  `Friends` int(11) DEFAULT NULL,
  `Happy_Life` int(11) DEFAULT NULL,
  `Interesting_Life` int(11) DEFAULT NULL,
  `Proud_Parents` int(11) DEFAULT NULL,
  `Finish_HS` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Program` int(11) DEFAULT NULL,
  `Pre_Post` int(11) DEFAULT NULL,
  PRIMARY KEY (`Future_Expectations_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Future_Expectations`
--

LOCK TABLES `Participants_Future_Expectations` WRITE;
/*!40000 ALTER TABLE `Participants_Future_Expectations` DISABLE KEYS */;
INSERT INTO `Participants_Future_Expectations` VALUES (1,4,0,0,0,0,0,0,0,0,0,NULL,8,1),(2,4,0,0,0,0,0,0,0,0,0,'2013-06-20 17:55:29',8,1),(3,4,0,0,0,0,0,0,0,0,0,'2013-06-20 17:55:31',8,1),(4,4,0,0,0,0,0,0,0,0,0,'2013-06-20 18:54:51',8,1),(5,4,0,0,0,0,0,0,0,0,0,'2013-06-25 15:10:49',8,1),(6,4,0,0,0,0,0,0,0,0,0,'2013-07-03 16:46:54',8,1),(7,4,0,0,0,0,0,0,0,0,0,'2013-07-05 20:26:34',8,1),(8,4,0,0,0,0,0,0,0,0,0,'2013-07-10 18:41:40',8,1),(9,4,0,0,0,0,0,0,0,0,0,'2013-07-11 18:18:37',8,1),(10,4,0,0,0,0,0,0,0,0,0,'2013-07-22 18:53:57',8,1),(11,4,0,0,0,0,0,0,0,0,0,'2013-07-24 15:34:47',8,1),(12,4,0,0,0,0,0,0,0,0,0,'2013-07-24 15:41:25',8,1),(13,4,0,0,0,0,0,0,0,0,0,'2013-07-26 19:14:40',8,1),(14,4,0,0,0,0,0,0,0,0,0,'2013-07-26 19:15:38',8,1),(15,4,0,0,0,0,0,0,0,0,0,'2013-08-07 16:29:11',8,1),(16,4,0,0,0,0,0,0,0,0,0,'2013-08-07 16:29:59',8,1),(17,4,0,0,0,0,0,0,0,0,0,'2013-08-07 16:30:31',8,1),(18,4,0,0,0,0,0,0,0,0,0,'2013-08-13 16:48:53',8,1),(19,4,0,0,0,0,0,0,0,0,0,'2013-08-13 19:36:27',8,1),(20,4,0,0,0,0,0,0,0,0,0,'2013-08-13 19:40:00',8,1),(21,4,0,0,0,0,0,0,0,0,0,'2013-08-13 19:41:14',8,1),(22,4,0,0,0,0,0,0,0,0,0,'2013-08-13 19:41:53',8,1),(23,4,0,0,0,0,0,0,0,0,0,'2013-08-15 18:45:54',8,1),(24,4,0,0,0,0,0,0,0,0,0,'2013-08-15 20:49:30',8,1),(25,4,0,0,0,0,0,0,0,0,0,'2013-08-15 21:10:14',8,1),(26,4,0,0,0,0,0,0,0,0,0,'2013-08-15 21:10:50',8,1),(27,4,0,0,0,0,0,0,0,0,0,'2013-08-19 18:59:38',8,1),(28,4,0,0,0,0,0,0,0,0,0,'2013-08-19 19:00:33',8,1),(29,15,3,3,3,3,0,0,0,0,0,'2013-08-19 19:01:40',6,1),(30,4,0,0,0,0,0,0,0,0,0,'2013-08-28 13:21:46',8,1),(31,4,0,0,0,0,0,0,0,0,0,'2013-08-28 20:05:43',8,1),(32,4,0,0,0,0,0,0,0,0,0,'2013-08-28 20:34:16',8,1),(33,4,0,0,0,0,0,0,0,0,0,'2013-08-28 20:35:26',8,1),(39,4,0,0,0,0,0,0,0,0,0,'2013-08-28 20:40:13',8,1),(40,4,0,0,0,0,0,0,0,0,0,'2013-08-28 20:40:13',8,1),(41,15,0,0,0,0,1,0,3,0,0,'2013-08-28 20:42:04',6,2),(42,4,0,0,0,0,0,0,0,0,0,'2013-09-10 16:44:14',8,1),(43,4,0,0,0,0,0,0,0,0,0,'2013-09-10 16:44:42',8,1),(44,4,0,0,0,0,0,0,0,0,0,'2013-09-10 16:47:16',8,1),(45,4,0,0,0,0,0,0,0,0,0,'2013-09-10 16:47:43',8,1),(46,4,0,0,0,0,0,0,0,0,0,'2013-09-10 16:51:20',8,1),(47,4,0,0,0,0,0,0,0,0,0,'2013-09-10 16:54:21',8,1),(48,4,0,0,0,0,0,0,0,0,0,'2013-09-10 16:54:45',8,1),(51,4,0,0,0,0,0,0,0,0,0,'2013-10-24 05:00:00',7,1),(52,4,0,0,0,0,0,0,0,0,0,'2013-10-02 21:29:40',7,1),(53,4,0,0,0,0,0,0,0,0,0,'2013-10-02 21:30:53',8,2),(54,27,0,0,0,0,0,0,0,0,0,'2013-11-18 21:36:26',1,1),(55,33,0,0,0,0,0,0,0,0,0,'2013-11-18 22:21:12',11,1);
/*!40000 ALTER TABLE `Participants_Future_Expectations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Interpersonal_Violence`
--

DROP TABLE IF EXISTS `Participants_Interpersonal_Violence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Interpersonal_Violence` (
  `Interpersonal_Violence_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Cowardice` int(11) DEFAULT NULL,
  `Teasing_Prevention` int(11) DEFAULT NULL,
  `Anger_Mgmt` int(11) DEFAULT NULL,
  `Self_Defense` int(11) DEFAULT NULL,
  `Coping` int(11) DEFAULT NULL,
  `Handle_Others` int(11) DEFAULT NULL,
  `Negotiation` int(11) DEFAULT NULL,
  `Parent_Disapproval` int(11) DEFAULT NULL,
  `Parent_Approval` int(11) DEFAULT NULL,
  `Self_Awareness` int(11) DEFAULT NULL,
  `Self_Care` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Program` int(11) DEFAULT NULL,
  `Pre_Post` int(11) DEFAULT NULL,
  PRIMARY KEY (`Interpersonal_Violence_ID`),
  KEY `FK_Participants_Interpersonal_Violence__Participants__Parti_idx` (`Participant_ID`),
  KEY `FK_Participants_Interpersonal_Viol__Session_Names__Session__idx` (`Program`),
  CONSTRAINT `FK_Participants_Interpersonal_Viol__Session_Names__Session_ID` FOREIGN KEY (`Program`) REFERENCES `Session_Names` (`Session_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Participants_Interpersonal_Viol__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Interpersonal_Violence`
--

LOCK TABLES `Participants_Interpersonal_Violence` WRITE;
/*!40000 ALTER TABLE `Participants_Interpersonal_Violence` DISABLE KEYS */;
INSERT INTO `Participants_Interpersonal_Violence` VALUES (7,4,0,0,0,0,0,0,0,0,0,0,0,NULL,8,1),(8,4,0,0,0,0,0,0,0,0,0,0,0,'2013-06-19 21:18:10',8,1),(9,4,0,0,0,0,0,0,0,0,0,0,0,'2013-06-20 17:55:11',8,1),(10,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-03 16:45:07',8,1),(11,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-05 20:26:23',8,1),(12,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-10 18:41:40',8,1),(13,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-11 18:18:37',8,1),(14,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-22 18:53:57',8,1),(15,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-24 15:34:47',8,1),(16,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-24 15:41:25',8,1),(17,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-26 19:14:40',8,1),(18,4,0,0,0,0,0,0,0,0,0,0,0,'2013-07-26 19:15:38',8,1),(19,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-07 16:29:11',8,1),(20,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-07 16:29:59',8,1),(21,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-07 16:30:31',8,1),(22,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-13 16:48:53',8,1),(23,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-13 19:36:27',8,1),(24,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-13 19:40:00',8,1),(25,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-13 19:41:14',8,1),(26,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-13 19:41:53',8,1),(27,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-15 18:34:12',8,1),(28,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-15 18:45:54',8,1),(29,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-15 20:49:30',8,1),(30,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-15 21:10:14',8,1),(31,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-15 21:10:50',8,1),(32,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-19 18:59:38',8,1),(33,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-19 19:00:33',8,1),(34,15,1,2,3,2,0,0,0,0,0,0,0,'2013-08-19 19:01:40',6,1),(35,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-28 13:21:46',8,1),(36,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-28 20:05:43',8,1),(37,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-28 20:34:16',8,1),(38,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-28 20:35:26',8,1),(44,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-28 20:40:13',8,1),(45,4,0,0,0,0,0,0,0,0,0,0,0,'2013-08-28 20:40:13',8,1),(46,15,0,0,0,2,0,2,0,3,0,0,0,'2013-08-28 20:42:04',6,2),(47,4,0,0,0,0,0,0,0,0,0,0,0,'2013-09-10 16:44:14',8,1),(48,4,0,0,0,0,0,0,0,0,0,0,0,'2013-09-10 16:44:42',8,1),(49,4,0,0,0,0,0,0,0,0,0,0,0,'2013-09-10 16:47:16',8,1),(50,4,0,0,0,0,0,0,0,0,0,0,0,'2013-09-10 16:47:43',8,1),(51,4,0,0,0,0,0,0,0,0,0,0,0,'2013-09-10 16:51:20',8,1),(52,4,0,0,0,0,0,0,0,0,0,0,0,'2013-09-10 16:54:21',8,1),(53,4,0,0,0,0,0,0,0,0,0,0,0,'2013-09-10 16:54:45',8,1),(56,4,0,0,0,0,0,0,0,0,0,0,1,'2013-10-24 05:00:00',7,1),(57,4,0,0,0,0,0,0,0,0,0,0,0,'2013-10-02 21:29:40',7,1),(58,4,0,0,0,0,0,0,0,0,0,0,0,'2013-10-02 21:30:53',8,2),(59,27,0,0,0,0,0,0,0,0,0,0,0,'2013-11-18 21:36:26',1,1),(60,33,0,0,0,0,0,0,0,0,0,0,0,'2013-11-18 22:21:12',11,1);
/*!40000 ALTER TABLE `Participants_Interpersonal_Violence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Mentorship`
--

DROP TABLE IF EXISTS `Participants_Mentorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Mentorship` (
  `Mentorship_Time_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mentee_ID` int(11) DEFAULT NULL,
  `Mentorship_Date` date DEFAULT NULL,
  `Mentorship_Hours_Logged` varchar(45) DEFAULT NULL,
  `Mentorship_Program` int(11) DEFAULT NULL,
  PRIMARY KEY (`Mentorship_Time_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Mentorship`
--

LOCK TABLES `Participants_Mentorship` WRITE;
/*!40000 ALTER TABLE `Participants_Mentorship` DISABLE KEYS */;
INSERT INTO `Participants_Mentorship` VALUES (1,4,'2014-04-21','1',3),(2,13,'2013-07-15','2',3),(4,9,'2013-07-01','4',9),(6,6,'2013-07-29','1',5),(7,15,'2013-08-16','2',0),(8,15,'2013-08-02','3',6),(9,31,'2013-08-28','2',7),(14,9,'2013-10-07','2',9),(15,4,'2014-04-06','1.5',13);
/*!40000 ALTER TABLE `Participants_Mentorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Programs`
--

DROP TABLE IF EXISTS `Participants_Programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Programs` (
  `Participant_Program_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `Date_Added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Date_Dropped` date DEFAULT NULL,
  PRIMARY KEY (`Participant_Program_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Programs`
--

LOCK TABLES `Participants_Programs` WRITE;
/*!40000 ALTER TABLE `Participants_Programs` DISABLE KEYS */;
INSERT INTO `Participants_Programs` VALUES (3,4,7,NULL,NULL),(4,1,7,NULL,NULL),(5,3,3,NULL,'2013-07-24'),(6,2,3,NULL,NULL),(7,5,9,'2013-06-18 18:19:21',NULL),(8,6,8,'2013-06-20 16:47:44',NULL),(9,5,4,'2013-06-20 17:58:28','2013-07-29'),(10,4,3,'2013-06-28 16:32:51',NULL),(11,4,8,'2013-07-02 15:59:44','2013-08-09'),(13,9,1,'2013-07-03 15:41:37',NULL),(14,2,1,'2013-07-03 20:03:56',NULL),(16,6,5,'2013-07-26 15:16:15',NULL),(17,11,1,'2013-07-26 18:36:58',NULL),(18,13,3,'2013-07-29 14:36:24',NULL),(19,9,9,'2013-07-29 15:23:11',NULL),(20,3,4,'2013-07-29 17:40:36',NULL),(25,1,6,'2013-07-30 19:36:20',NULL),(26,17,13,'2013-07-31 19:25:09',NULL),(27,5,14,'2013-08-05 18:42:50',NULL),(28,15,6,'2013-08-12 20:25:01','2014-01-10'),(29,21,8,'2013-08-15 21:41:16',NULL),(30,27,1,'2013-08-20 17:14:19',NULL),(31,25,3,'2013-08-22 14:34:52',NULL),(32,25,4,'2013-08-22 14:35:02',NULL),(33,23,14,'2013-08-23 21:02:51',NULL),(34,31,12,'2013-08-28 13:18:01',NULL),(35,16,13,'2013-08-28 20:33:38',NULL),(36,27,7,'2013-09-10 16:19:38',NULL),(38,20,7,'2013-09-10 17:31:43',NULL),(39,22,NULL,'2013-09-10 17:39:17',NULL),(40,28,12,'2013-09-10 17:56:38',NULL),(41,14,17,'2013-09-10 17:59:50',NULL),(42,16,10,'2013-09-10 18:21:35',NULL),(43,11,26,'2013-09-24 18:17:09',NULL),(44,33,11,'2013-11-18 22:21:01',NULL),(45,4,11,'2013-12-11 21:46:40',NULL),(47,4,5,'2013-12-11 21:56:08',NULL),(48,4,13,'2013-12-11 22:10:17',NULL),(50,4,6,'2014-01-10 20:24:56',NULL),(54,42,6,'2014-04-15 15:21:50','2014-04-15'),(55,43,6,'2014-04-15 15:23:43',NULL),(56,44,6,'2014-04-15 15:24:33',NULL);
/*!40000 ALTER TABLE `Participants_Programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Dates`
--

DROP TABLE IF EXISTS `Program_Dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Dates` (
  `Program_Date_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_ID` int(11) DEFAULT NULL,
  `Date_Listed` date DEFAULT NULL,
  PRIMARY KEY (`Program_Date_ID`),
  KEY `program_at_this_date` (`Program_ID`),
  KEY `session_at_this_date` (`Program_ID`),
  CONSTRAINT `session_at_this_date` FOREIGN KEY (`Program_ID`) REFERENCES `Session_Names` (`Session_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Dates`
--

LOCK TABLES `Program_Dates` WRITE;
/*!40000 ALTER TABLE `Program_Dates` DISABLE KEYS */;
INSERT INTO `Program_Dates` VALUES (1,1,'2013-07-01'),(3,7,'2013-06-10'),(4,3,'2013-01-07'),(5,3,'2013-01-21'),(6,3,'2013-02-04'),(7,8,'2013-06-01'),(8,8,'2013-06-08'),(9,8,'2013-06-15'),(10,8,'2013-06-22'),(11,8,'2013-06-29'),(12,8,'2013-07-06'),(13,3,'2013-07-08'),(15,4,'2013-07-15'),(16,1,'2013-07-22'),(17,3,'2013-07-29'),(18,1,'2013-07-06'),(19,1,'2013-07-13'),(20,1,'2013-07-20'),(21,1,'2013-07-27'),(22,4,'2013-07-01'),(23,4,'2013-07-03'),(24,9,'2013-07-06'),(25,4,'2013-07-08'),(27,4,'2013-09-14'),(28,6,'2013-09-30'),(29,6,'2013-09-26');
/*!40000 ALTER TABLE `Program_Dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program_Surveys`
--

DROP TABLE IF EXISTS `Program_Surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program_Surveys` (
  `Program_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_ID` int(11) DEFAULT NULL,
  `Question_1` int(11) DEFAULT NULL,
  `Question_2` int(11) DEFAULT NULL,
  `Question_3` int(11) DEFAULT NULL,
  `Question_4` int(11) DEFAULT NULL,
  `Question_5` int(11) DEFAULT NULL,
  `Question_6` int(11) DEFAULT NULL,
  `Question_7` int(11) DEFAULT NULL,
  `Question_8` int(11) DEFAULT NULL,
  `Question_9` int(11) DEFAULT NULL,
  `Question_10` int(11) DEFAULT NULL,
  `Question_11` int(11) DEFAULT NULL,
  `Question_12` int(11) DEFAULT NULL,
  `Question_13` int(11) DEFAULT NULL,
  `Question_14` int(11) DEFAULT NULL,
  `Question_15` int(11) DEFAULT NULL,
  `Question_16` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Session_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Program_Survey_ID`),
  KEY `FK_Program_Surveys__Programs__Program_ID_idx` (`Program_ID`),
  KEY `FK_Program_Surveys__Session_Names__Session_ID_idx` (`Session_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program_Surveys`
--

LOCK TABLES `Program_Surveys` WRITE;
/*!40000 ALTER TABLE `Program_Surveys` DISABLE KEYS */;
INSERT INTO `Program_Surveys` VALUES (1,3,3,3,2,3,2,2,3,3,3,3,2,2,3,3,3,2,'2013-06-14 17:20:55',9),(2,8,3,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-06-20 17:53:40',12),(3,8,4,0,0,2,0,0,0,2,0,0,0,0,0,0,0,0,'2013-06-20 18:45:39',12),(6,10,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,'2013-07-03 19:51:10',5),(7,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,'2013-07-08 14:38:29',3),(8,1,3,3,2,3,3,3,3,2,2,2,2,2,3,3,3,3,'2013-07-29 13:21:45',8),(10,11,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-08-05 18:56:52',0),(11,8,3,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-09-17 14:45:15',5),(12,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-09-25 15:41:57',4),(13,2,3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'2013-09-25 15:59:38',4),(45,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,'2013-09-30 14:36:28',0),(46,17,3,3,3,3,2,3,3,3,2,3,3,3,3,3,3,3,'2013-09-30 14:36:28',20),(47,17,2,3,3,4,3,2,2,3,2,4,3,2,3,3,3,3,'2013-09-30 14:36:28',20),(48,17,3,3,3,3,3,2,4,4,1,4,3,3,3,3,3,3,'2013-09-30 14:36:28',20),(49,17,3,3,4,3,2,2,3,3,1,3,3,3,3,3,3,3,'2013-09-30 14:36:28',20),(50,17,4,3,4,3,2,2,2,3,2,3,2,2,3,3,3,3,'2013-09-30 14:36:28',20),(51,17,3,3,3,3,2,3,3,3,2,3,3,3,3,3,3,3,'2013-09-30 14:36:28',20),(52,17,3,3,4,4,2,2,4,3,1,2,3,2,3,3,3,3,'2013-09-30 14:36:28',20),(53,17,3,3,4,2,2,2,3,3,2,2,2,3,3,3,3,3,'2013-09-30 14:36:28',20),(54,17,3,3,4,3,2,2,3,3,1,2,3,2,3,3,4,3,'2013-09-30 14:36:28',20),(55,17,4,2,4,4,3,2,3,3,2,3,3,3,3,4,4,3,'2013-09-30 14:36:28',20),(56,17,3,3,3,3,2,3,3,3,2,3,3,3,3,3,3,3,'2013-09-30 14:36:28',20),(57,17,3,3,3,3,2,3,3,3,1,2,3,2,3,4,3,3,'2013-09-30 14:36:28',20),(58,17,4,4,4,4,1,3,4,4,1,4,4,2,4,4,4,4,'2013-09-30 14:36:28',20),(59,17,1,4,4,4,4,2,2,4,1,4,4,2,4,4,1,3,'2013-09-30 14:36:28',20),(60,17,4,3,3,3,4,2,3,3,2,3,3,3,3,4,4,3,'2013-09-30 14:36:28',20),(61,17,3,3,4,3,3,2,3,3,2,3,4,4,3,4,4,4,'2013-09-30 14:36:28',20),(62,17,4,3,3,3,2,2,2,2,1,3,3,2,3,3,2,3,'2013-09-30 14:36:28',20),(63,17,3,3,4,3,3,4,3,3,1,4,3,3,3,3,3,3,'2013-09-30 14:36:28',20),(64,17,4,3,4,3,2,1,2,3,1,4,3,3,3,4,3,3,'2013-09-30 14:36:28',20),(65,17,3,3,3,3,2,3,3,3,1,3,3,3,3,3,3,3,'2013-09-30 14:36:28',20),(66,17,2,3,3,3,2,3,3,3,2,3,3,3,3,3,2,3,'2013-09-30 14:36:28',20);
/*!40000 ALTER TABLE `Program_Surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programs`
--

DROP TABLE IF EXISTS `Programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programs` (
  `Program_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Host` varchar(45) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Start_Hour` int(11) DEFAULT NULL,
  `Start_Suffix` varchar(45) DEFAULT NULL,
  `End_Hour` int(11) DEFAULT NULL,
  `End_Suffix` varchar(45) DEFAULT NULL,
  `Max_Hours` varchar(45) DEFAULT NULL,
  `Activity_Class` int(11) DEFAULT NULL,
  `Activity_Clinic` int(11) DEFAULT NULL,
  `Activity_Referrals` int(11) DEFAULT NULL,
  `Activity_Community` int(11) DEFAULT NULL,
  `Activity_Counseling` int(11) DEFAULT NULL,
  `Activity_Sports` int(11) DEFAULT NULL,
  `Activity_Mentor` int(11) DEFAULT NULL,
  `Activity_Service` int(11) DEFAULT NULL,
  `Monday` int(11) DEFAULT NULL,
  `Tuesday` int(11) DEFAULT NULL,
  `Wednesday` int(11) DEFAULT NULL,
  `Thursday` int(11) DEFAULT NULL,
  `Friday` int(11) DEFAULT NULL,
  `Saturday` int(11) DEFAULT NULL,
  `Sunday` int(11) DEFAULT NULL,
  PRIMARY KEY (`Program_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programs`
--

LOCK TABLES `Programs` WRITE;
/*!40000 ALTER TABLE `Programs` DISABLE KEYS */;
INSERT INTO `Programs` VALUES (1,'Under the Rainbow','14','2013-07-01','2013-11-30',4,'pm',6,'pm','',0,0,0,1,0,1,0,0,0,1,0,1,0,1,0),(2,'Center for Peacemaking','15','0000-00-00','0000-00-00',8,'am',12,'am','',0,0,0,1,0,0,1,1,0,1,0,1,0,0,0),(3,'Community Wellness Program','16','0000-00-00','0000-00-00',0,'',0,'','',1,0,0,0,0,0,1,0,1,0,0,0,0,0,0),(4,'Project Play','17','2013-07-01','2013-09-30',12,'am',4,'pm','',1,1,0,0,0,0,0,0,1,0,1,0,0,0,0),(5,'Youth Development Leagues','17','0000-00-00','0000-00-00',0,'',0,'','',0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(6,'28.5','17','0000-00-00','0000-00-00',0,'',0,'','',0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(7,'Offsite Counseling','18','2013-06-01','2013-12-27',0,'',0,'','',1,1,0,1,0,0,1,1,1,0,1,0,1,0,0),(8,'Urban Life Skills Jr.','19','2013-06-01','2013-09-30',0,'',0,'','',0,0,0,0,0,1,1,1,1,0,1,0,1,0,0),(9,'Imago Dei Program','20','0000-00-00','0000-00-00',6,'pm',8,'pm','',0,0,0,0,0,0,0,0,0,0,1,0,1,0,0),(10,'Test New Program','13','0000-00-00','0000-00-00',0,'',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,'Demo','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'2nd Program Testing Sessions','3','0000-00-00','0000-00-00',0,'',0,'','',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(15,'Test Survey Due Date','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Test Survey Date Again','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Test Host Organization','25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'444444444','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Referrals`
--

DROP TABLE IF EXISTS `Referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Referrals` (
  `Referral_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Referrer_Person` int(11) DEFAULT NULL,
  `Referrer_Program` int(11) DEFAULT NULL,
  `Referrer_Institution` int(11) DEFAULT NULL,
  `Program_Referred` int(11) DEFAULT NULL,
  `Date_Logged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Referral_ID`),
  KEY `FK_Referrals__Participants__Participant_ID_idx` (`Participant_ID`),
  CONSTRAINT `FK_Referrals__Participants__Participant_ID` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Referrals`
--

LOCK TABLES `Referrals` WRITE;
/*!40000 ALTER TABLE `Referrals` DISABLE KEYS */;
INSERT INTO `Referrals` VALUES (1,5,5,2,17,6,'2013-07-11 19:19:28'),(2,9,NULL,NULL,4,1,'2013-07-29 14:14:48'),(3,13,11,2,19,8,'2013-07-29 14:48:49'),(4,9,10,0,13,7,'2013-07-29 15:00:43'),(5,5,15,0,14,2,'2013-07-30 19:51:07'),(6,5,14,0,19,7,'2013-07-30 19:52:17'),(7,31,0,7,0,0,'2013-08-28 21:04:29'),(8,31,0,7,0,3,'2013-08-28 21:07:00'),(9,31,0,7,0,3,'2013-08-28 21:07:11'),(10,31,0,3,0,11,'2013-08-28 21:08:34');
/*!40000 ALTER TABLE `Referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Roles` (
  `Role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (0,'No role'),(1,'Youth/student'),(2,'Parent/guardian'),(3,'Community/organization member');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Session_Names`
--

DROP TABLE IF EXISTS `Session_Names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Session_Names` (
  `Session_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Session_Name` varchar(45) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Survey_Due` date DEFAULT NULL,
  PRIMARY KEY (`Session_ID`),
  KEY `FK_Session_Names__Programs__Program_ID_idx` (`Program_ID`),
  CONSTRAINT `FK_Session_Names__Programs__Program_ID` FOREIGN KEY (`Program_ID`) REFERENCES `Programs` (`Program_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Session_Names`
--

LOCK TABLES `Session_Names` WRITE;
/*!40000 ALTER TABLE `Session_Names` DISABLE KEYS */;
INSERT INTO `Session_Names` VALUES (1,'',2,NULL,NULL,NULL),(3,'Spring 2013',2,NULL,NULL,NULL),(4,'Fall 2013',2,NULL,NULL,NULL),(5,'Summer 2013',8,NULL,NULL,NULL),(6,'Fall Semester 2013',6,'2013-08-26','2013-12-20','2014-01-10'),(7,'Summer 2013: Never Doubted For a Moment',13,'2013-06-10','2013-08-23','2013-09-20'),(8,'Fall 2013',1,'0000-00-00','0000-00-00','0000-00-00'),(9,'Spring-Summer 2012',3,'0000-00-00','0000-00-00','0000-00-00'),(10,'Beta Edition',4,'0000-00-00','0000-00-00','2013-08-10'),(11,'Welcome Autumn, 2013',5,'0000-00-00','0000-00-00','0000-00-00'),(12,'2013 Meetings',7,'0000-00-00','0000-00-00','0000-00-00'),(13,'Spring 2013',9,'0000-00-00','0000-00-00','0000-00-00'),(14,'Summer 2013 Camp Session',11,'0000-00-00','0000-00-00','0000-00-00'),(15,'Final Test Session (not really though)',10,'0000-00-00','0000-00-00','0000-00-00'),(16,'Spring 2013',11,'2013-07-01','2013-08-31','2013-08-19'),(17,'2012 Mentorship Setup',7,'2012-08-01','2012-11-30','2012-11-23'),(18,'Fall 2013',15,'2013-09-03','2013-12-20','0000-00-00'),(19,'Fall 2013',16,'2013-09-09','2013-12-13','2013-12-06'),(20,'Session Whatever',17,'0000-00-00','0000-00-00','2013-08-28'),(25,'Autumn 2013',13,'0000-00-00','0000-00-00','2013-09-16'),(26,'Fall 2013 - Alternates',1,'0000-00-00','0000-00-00','2013-09-17'),(30,'SSSSSSSSSSSS',19,'2014-02-04','2014-02-27','2014-02-20');
/*!40000 ALTER TABLE `Session_Names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ttm-lsna`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ttm-lsna` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ttm-lsna`;

--
-- Table structure for table `CLC_Subcategory`
--

DROP TABLE IF EXISTS `CLC_Subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLC_Subcategory` (
  `CLC_Subcategory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLC_ID` int(11) DEFAULT NULL,
  `Subcategory_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CLC_Subcategory_ID`),
  KEY `relevant_clc` (`CLC_ID`),
  KEY `sorted_subcategory` (`Subcategory_ID`),
  CONSTRAINT `relevant_clc` FOREIGN KEY (`CLC_ID`) REFERENCES `CLCs` (`CLC_ID`) ON UPDATE CASCADE,
  CONSTRAINT `sorted_subcategory` FOREIGN KEY (`Subcategory_ID`) REFERENCES `Subcategories` (`Subcategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLC_Subcategory`
--

LOCK TABLES `CLC_Subcategory` WRITE;
/*!40000 ALTER TABLE `CLC_Subcategory` DISABLE KEYS */;
INSERT INTO `CLC_Subcategory` VALUES (4,1,14),(5,1,59),(6,1,65),(7,1,17),(8,1,18);
/*!40000 ALTER TABLE `CLC_Subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLCs`
--

DROP TABLE IF EXISTS `CLCs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLCs` (
  `CLC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLC_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CLC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLCs`
--

LOCK TABLES `CLCs` WRITE;
/*!40000 ALTER TABLE `CLCs` DISABLE KEYS */;
INSERT INTO `CLCs` VALUES (1,'Ames');
/*!40000 ALTER TABLE `CLCs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `Category_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Housing & Community Development'),(2,'Education'),(3,'Immigration'),(4,'Health & Open Space'),(5,'Safety'),(8,'Youth'),(10,'Organizational Capacity');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category_Subcategory_Links`
--

DROP TABLE IF EXISTS `Category_Subcategory_Links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category_Subcategory_Links` (
  `Category_Subcategory_Link_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category_ID` int(11) DEFAULT NULL,
  `Subcategory_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Category_Subcategory_Link_ID`),
  KEY `category_linked` (`Category_ID`),
  KEY `subcategory_linked` (`Subcategory_ID`),
  CONSTRAINT `category_linked` FOREIGN KEY (`Category_ID`) REFERENCES `Categories` (`Category_ID`) ON UPDATE CASCADE,
  CONSTRAINT `subcategory_linked` FOREIGN KEY (`Subcategory_ID`) REFERENCES `Subcategories` (`Subcategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category_Subcategory_Links`
--

LOCK TABLES `Category_Subcategory_Links` WRITE;
/*!40000 ALTER TABLE `Category_Subcategory_Links` DISABLE KEYS */;
INSERT INTO `Category_Subcategory_Links` VALUES (34,2,2),(35,1,1),(36,1,3),(37,1,4),(68,4,20),(69,4,5),(71,4,8),(72,4,9),(73,4,10),(74,4,14),(75,2,19),(76,2,59),(77,2,65),(78,2,17),(79,2,18),(80,2,21),(81,2,22),(87,10,24),(88,10,25),(89,10,26),(90,10,27),(91,10,28),(92,1,29),(93,4,30),(94,2,31),(95,2,32),(97,2,34),(98,8,35),(99,8,36),(100,8,37),(101,8,38),(102,8,39),(103,8,40),(105,5,42),(106,5,43),(107,5,44),(110,5,45),(111,3,46),(112,3,47),(113,3,48),(114,3,49),(115,3,50),(116,3,51),(117,3,52),(118,2,53),(123,4,58),(127,8,62),(332,2,353),(333,2,354),(334,2,355),(335,2,356),(336,2,357),(337,2,358),(338,2,359),(339,2,360),(340,2,361),(341,2,362),(342,2,363),(343,2,364),(344,2,365),(345,2,366),(347,2,368),(348,2,369),(349,2,370),(350,2,371),(351,2,372),(353,10,374),(354,2,375),(355,4,376),(356,2,377),(536,2,557),(537,2,558),(538,2,559),(539,2,560),(540,2,561),(541,2,562),(542,2,563),(543,2,564),(544,2,565),(545,2,566),(546,2,567),(547,2,568),(548,2,569),(549,2,570),(550,2,571),(551,2,572),(552,2,573),(553,2,574),(554,2,575),(555,2,576),(556,2,577),(557,2,578),(558,2,579),(559,2,580),(560,2,581),(561,2,582),(562,2,583),(563,2,584),(564,2,585),(565,2,586),(566,2,587),(567,2,588),(568,2,589),(569,2,590),(570,2,591),(571,2,592),(572,2,593),(573,2,594),(574,2,595),(575,2,596),(576,2,597),(577,2,598),(578,2,599),(579,2,600),(580,2,601),(581,2,602),(582,2,603),(583,2,604),(584,2,605),(585,2,606),(586,2,607),(587,2,608),(588,2,609),(589,2,610),(590,2,611),(591,2,612),(592,2,613),(593,2,614),(594,2,615),(595,2,616),(596,2,617),(597,2,618),(598,2,619),(599,2,620),(600,2,621),(601,2,622),(602,2,623),(603,2,624),(604,2,625),(605,2,626),(606,2,627),(607,2,628),(608,2,629),(609,2,630),(610,2,631),(611,2,632),(612,2,633),(613,2,634),(614,2,635),(615,2,636),(616,2,637),(617,2,638),(618,2,639),(619,2,640),(620,2,641),(621,2,642),(622,2,643),(623,2,644),(624,2,645),(625,2,646),(626,2,647),(627,2,648),(628,2,649),(629,2,650),(630,2,651),(631,2,652),(632,2,653),(633,2,654),(634,2,655),(635,2,656),(636,2,657),(637,2,658),(638,2,659),(639,2,660),(640,2,661),(641,2,662),(642,2,663),(643,2,664),(644,2,665),(645,2,666),(646,2,667),(647,2,668),(648,2,669),(649,2,670),(650,2,671),(651,2,672),(652,2,673),(653,2,674),(654,2,675),(655,2,676),(656,2,677),(657,2,678),(658,2,679),(659,2,680),(660,2,681),(661,2,682),(662,2,683),(663,2,684),(664,2,685),(665,2,686),(666,2,687),(667,2,688),(668,2,689),(669,2,690),(670,2,691),(671,2,692),(672,2,693),(673,2,694),(674,2,695),(675,2,696),(676,2,697),(677,2,698),(678,2,699),(679,2,700),(680,2,701),(681,2,702),(682,2,703),(683,2,704),(684,2,705),(685,2,706),(686,2,707),(687,2,708),(688,2,709),(689,2,710),(690,2,711),(691,2,712),(692,2,713),(693,2,714),(694,2,715),(695,2,716),(696,2,717),(697,2,718),(698,2,719),(699,2,720),(700,2,721),(701,2,722),(702,2,723),(703,2,724),(704,2,725),(705,2,726),(706,2,727),(707,2,728),(708,2,729),(709,2,730),(710,2,731),(711,2,732),(712,2,733),(713,2,734),(714,2,735),(715,2,736),(716,2,737),(717,2,738),(718,2,739),(719,2,740),(720,2,741),(721,2,742),(722,2,743),(723,2,744),(724,2,745),(725,2,746),(726,2,747),(727,2,748),(728,2,749),(729,2,750),(730,2,751),(731,2,752),(732,2,753),(733,2,754),(734,2,755),(735,2,756),(736,2,757),(737,2,758),(738,2,759),(739,2,760),(740,2,761),(741,2,762),(742,2,763),(743,2,764),(744,2,765),(745,2,766),(746,2,767),(747,2,768),(748,2,769),(749,2,770),(750,2,771),(751,2,772),(752,2,773),(753,2,774),(754,2,775),(755,2,776),(756,2,777),(757,2,778),(758,2,779),(759,2,780),(760,2,781),(761,2,782),(762,2,783),(763,2,784),(764,2,785),(765,2,786),(766,2,787),(767,2,788),(768,2,789),(769,2,790),(770,2,791),(771,2,792),(772,2,793),(773,2,794),(774,2,795),(775,2,796),(776,2,797),(777,2,798),(778,2,799),(779,2,800),(780,2,801),(781,2,802),(782,2,803),(783,2,804),(784,2,805),(785,2,806),(786,2,807),(787,2,808),(788,2,809),(789,2,810),(790,2,811),(791,2,812),(792,2,813),(793,2,814),(794,2,815),(795,2,816),(796,2,817),(797,2,818),(798,2,819),(799,2,820),(800,2,821),(801,2,822),(802,2,823),(803,2,824),(804,2,825),(805,2,826),(806,2,827),(807,2,828),(808,2,829),(809,2,830),(810,2,831),(811,2,832),(812,2,833),(813,2,834),(814,2,835),(815,2,836),(816,2,837),(817,2,838),(818,2,839),(819,2,840),(820,2,841),(821,2,842),(822,2,843),(823,2,844),(824,2,845),(825,2,846),(826,2,847),(827,2,848),(828,2,849),(829,2,850),(830,2,851),(831,2,852),(832,2,853),(833,2,854),(834,2,855),(835,2,856),(836,2,857),(837,2,858),(838,2,859),(839,2,860),(840,2,861),(841,2,862),(842,2,863),(843,2,864),(844,2,865),(845,2,866),(846,2,867),(847,2,868),(848,2,869),(849,2,870),(850,2,871),(851,2,872),(852,2,873),(853,2,874),(854,2,875),(855,2,876),(856,2,877),(857,2,878),(858,2,879),(859,2,880),(860,2,881),(861,2,882),(862,2,883),(863,2,884),(864,2,885),(865,2,886),(866,2,887),(867,2,888),(868,2,889),(869,2,890),(870,2,891),(871,2,892),(872,2,893),(873,2,894),(874,2,895),(875,2,896),(876,2,897),(877,2,898),(878,2,899),(879,2,900),(880,2,901),(881,2,902),(882,2,903),(883,2,904),(884,2,905),(885,2,906),(886,2,907),(887,2,908),(888,2,909),(889,2,910),(890,2,911),(891,2,912),(892,2,913),(893,2,914),(894,2,915),(895,2,916),(896,2,917),(897,2,918),(898,2,919),(899,2,920),(900,2,921),(901,2,922),(902,2,923),(903,2,924),(904,2,925),(905,2,926),(906,2,927),(907,2,928),(908,2,929),(909,2,930),(910,2,931),(911,2,932),(912,2,933),(913,2,934),(914,2,935),(915,2,936),(916,2,937),(917,2,938),(918,2,939),(919,2,940),(920,2,941),(921,2,942),(922,2,943),(923,2,944),(924,2,945),(925,2,946),(926,2,947),(927,2,948),(928,2,949),(929,2,950),(930,2,951),(931,2,952),(932,2,953),(933,2,954),(934,2,955),(935,2,956),(936,2,957),(937,2,958),(938,2,959),(939,2,960),(940,2,961),(941,2,962),(942,2,963),(943,2,964),(944,2,965),(945,2,966),(946,2,967),(947,2,968),(948,2,969),(949,2,970),(950,2,971),(951,2,972),(952,2,973),(953,2,974),(954,2,975),(955,2,976),(956,2,977),(957,2,978),(958,2,979),(959,2,980),(960,2,981),(961,2,982),(962,2,983),(963,2,984),(964,2,985),(965,2,986),(966,2,987),(967,2,988),(968,2,989),(969,2,990),(970,2,991),(971,2,992),(972,2,993),(973,2,994),(974,2,995),(975,2,996),(976,2,997),(977,2,998),(978,2,999),(979,2,1000),(980,2,1001),(981,2,1002),(982,2,1003),(983,2,1004),(984,2,1005),(985,2,1006),(986,2,1007),(987,2,1008),(988,2,1009),(989,2,1010),(990,2,1011),(991,2,1012),(992,2,1013),(993,2,1014),(994,2,1015),(995,2,1016),(996,2,1017),(997,2,1018),(998,2,1019),(999,2,1020),(1000,2,1021),(1001,2,1022),(1002,2,1023),(1003,2,1024),(1004,2,1025),(1005,2,1026),(1006,2,1027),(1007,2,1028),(1008,2,1029),(1009,2,1030),(1010,2,1031),(1011,2,1032),(1012,2,1033),(1013,2,1034),(1014,2,1035),(1015,2,1036),(1016,2,1037),(1017,2,1038),(1018,2,1039),(1019,2,1040),(1020,2,1041),(1021,2,1042),(1022,2,1043),(1023,2,1044),(1024,2,1045),(1025,2,1046),(1026,2,1047),(1027,2,1048);
/*!40000 ALTER TABLE `Category_Subcategory_Links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Goals_Development`
--

DROP TABLE IF EXISTS `Goals_Development`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Goals_Development` (
  `Goals_Development_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Development_Date` date DEFAULT NULL,
  `Notes` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`Goals_Development_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Goals_Development`
--

LOCK TABLES `Goals_Development` WRITE;
/*!40000 ALTER TABLE `Goals_Development` DISABLE KEYS */;
INSERT INTO `Goals_Development` VALUES (1,1,'0000-00-00','We will go over the first steps in goal development in this meeting.'),(2,1,'2013-06-25','Today we\'ll move on to actually putting the date in the correct format.'),(3,65,'2013-07-01',''),(5,82,'2013-07-09','Maria has three goals.\n1. Learn English\n2. Take GED \n3. Start College\n\n'),(6,12,'2013-07-01','notes notes notes.....'),(7,12,'2013-07-02','we sure had a lot to talk about!'),(8,150,'2013-07-12','We discussed several other community members that Charles suggested might be interested in becoming involved in LSNA programs. He will follow up with their contact information. We also chatted about the weather. Sure was nice out today!'),(9,150,'2013-07-05','Initial meeting with Charles to discuss his family history in Logan Square and his hopes for the neighborhood in the next five years.'),(10,80,'2013-07-01',''),(12,1,'2013-06-28','Quick follow-up on some items we discussed earlier in the week.');
/*!40000 ALTER TABLE `Goals_Development` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Import_Destination`
--

DROP TABLE IF EXISTS `Import_Destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Import_Destination` (
  `Import_Destination_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_ID` int(11) DEFAULT NULL,
  `Program_Category` varchar(45) DEFAULT NULL,
  `Funding_Source` varchar(45) DEFAULT NULL,
  `Total_Enrollment` int(11) DEFAULT NULL,
  `Total_Dropped` int(11) DEFAULT NULL,
  `Current_Enrollment` int(11) DEFAULT NULL,
  `Total_Service_Days` int(11) DEFAULT NULL,
  `Total_Service_Hours` int(11) DEFAULT NULL,
  `Total_Present` int(11) DEFAULT NULL,
  `Total_Activity` int(11) DEFAULT NULL,
  `Average_Daily_Attendance` int(11) DEFAULT NULL,
  `Average_Weekly_Attendance` int(11) DEFAULT NULL,
  `Num_Weeks` int(11) DEFAULT NULL,
  `Attendance_Rate` varchar(45) DEFAULT NULL,
  `Percent_Sessions_With_Attendees` varchar(45) DEFAULT NULL,
  `Percent_Attendance_Recorded` varchar(45) DEFAULT NULL,
  `Report_Period` varchar(100) DEFAULT NULL,
  `School_Reported` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Import_Destination_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Import_Destination`
--

LOCK TABLES `Import_Destination` WRITE;
/*!40000 ALTER TABLE `Import_Destination` DISABLE KEYS */;
INSERT INTO `Import_Destination` VALUES (25,558,'Community Schools Initiative','Lead Partner Funds',16,0,16,3,3,35,48,12,12,3,'72.90%','100.00%','100.00%\r\n',NULL,NULL),(26,561,'Community Schools Initiative','General Fund: Education Fund (115)',18,0,18,5,5,47,90,9,9,5,'52.20%','100.00%','100.00%\r\n',NULL,NULL),(27,562,'Community Schools Initiative','General Fund: Education Fund (115)',7,1,6,18,36,80,112,4,5,5,'71.40%','100.00%','100.00%\r\n',NULL,NULL),(28,563,'Community Schools Initiative','General Fund: Education Fund (115)',24,6,18,17,34,243,302,14,17,5,'80.50%','100.00%','100.00%\r\n',NULL,NULL),(29,564,'Community Schools Initiative','In-Kind',17,0,17,18,36,171,306,10,11,5,'55.90%','100.00%','100.00%\r\n',NULL,NULL),(30,565,'Community Schools Initiative','Lead Partner Funds',32,0,32,12,39,317,383,26,30,5,'82.80%','100.00%','100.00%\r\n',NULL,NULL),(31,566,'Community Schools Initiative','Lead Partner Funds',16,0,16,12,36,107,192,9,12,5,'55.70%','100.00%','100.00%\r\n',NULL,NULL),(32,567,'Community Schools Initiative','General Fund: Education Fund (115)',43,1,42,17,34,622,726,37,41,5,'85.70%','100.00%','100.00%\r\n',NULL,NULL),(33,568,'Community Schools Initiative','Lead Partner Funds',20,0,20,22,132,422,440,19,20,5,'95.90%','100.00%','100.00%\r\n',NULL,NULL),(34,569,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,4,4,32,52,8,8,4,'61.50%','100.00%','100.00%\r\n',NULL,NULL),(35,570,'Community Schools Initiative','Lead Partner Funds',16,0,16,17,34,224,272,13,15,5,'82.40%','100.00%','100.00%\r\n',NULL,NULL),(36,571,'Community Schools Initiative','General Fund: Education Fund (115)',13,2,11,17,34,161,189,9,11,5,'85.20%','100.00%','100.00%\r\n',NULL,NULL),(37,572,'Community Schools Initiative','Lead Partner Funds',16,0,16,3,3,35,48,12,12,3,'72.90%','100.00%','100.00%\r\n',NULL,NULL),(38,573,'Community Schools Initiative','General Fund: Education Fund (115)',18,0,18,5,5,47,90,9,9,5,'52.20%','100.00%','100.00%\r\n',NULL,NULL),(39,574,'Community Schools Initiative','General Fund: Education Fund (115)',7,1,6,18,36,80,112,4,5,5,'71.40%','100.00%','100.00%\r\n',NULL,NULL),(40,575,'Community Schools Initiative','General Fund: Education Fund (115)',24,6,18,17,34,243,302,14,17,5,'80.50%','100.00%','100.00%\r\n',NULL,NULL),(41,576,'Community Schools Initiative','In-Kind',17,0,17,18,36,171,306,10,11,5,'55.90%','100.00%','100.00%\r\n',NULL,NULL),(42,577,'Community Schools Initiative','Lead Partner Funds',32,0,32,12,39,317,383,26,30,5,'82.80%','100.00%','100.00%\r\n',NULL,NULL),(43,578,'Community Schools Initiative','Lead Partner Funds',16,0,16,12,36,107,192,9,12,5,'55.70%','100.00%','100.00%\r\n',NULL,NULL),(44,579,'Community Schools Initiative','General Fund: Education Fund (115)',43,1,42,17,34,622,726,37,41,5,'85.70%','100.00%','100.00%\r\n',NULL,NULL),(45,580,'Community Schools Initiative','Lead Partner Funds',20,0,20,22,132,422,440,19,20,5,'95.90%','100.00%','100.00%\r\n',NULL,NULL),(46,581,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,4,4,32,52,8,8,4,'61.50%','100.00%','100.00%\r\n',NULL,NULL),(47,582,'Community Schools Initiative','Lead Partner Funds',16,0,16,17,34,224,272,13,15,5,'82.40%','100.00%','100.00%\r\n',NULL,NULL),(48,583,'Community Schools Initiative','General Fund: Education Fund (115)',13,2,11,17,34,161,189,9,11,5,'85.20%','100.00%','100.00%\r\n',NULL,NULL),(49,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(50,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(51,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(52,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(53,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(54,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(55,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(56,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(57,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(58,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(59,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(60,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(61,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(62,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(63,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(64,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(65,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(66,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(67,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(68,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(69,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(70,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(71,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(72,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(73,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(74,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(75,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(76,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(77,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(78,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(79,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(80,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(81,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(82,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(83,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(84,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(85,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(86,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(87,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(88,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(89,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(90,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(91,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(92,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(93,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(94,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(95,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(96,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(97,585,'Ames Middle School','',0,0,0,0,0,0,0,0,0,0,'','','','',''),(98,586,'Youth Participants','',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(99,587,'Total Enrollment1','Total Dropped2',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(100,588,'Mon. AVA Per. 1 Ames\"','13',0,3,8,39,3,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(101,588,'Mon. AVA Per. 2 Ames\"','16',0,3,12,47,4,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(102,588,'Mon. FYE Per. 1 Ames\"','20',0,3,15,60,5,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(103,588,'Mon. FYE Per. 2 Ames\"','13',0,3,9,39,3,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(104,588,'Mon. Recreation Per. 1 Ames\"','13',0,3,13,39,4,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(105,588,'Mon. Recreation Per. 2 Ames\"','12',0,3,14,36,5,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(106,588,'Mon. Soccer Camp Ames\"','29',0,3,36,87,12,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(107,648,'15','0',4,14,60,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(108,649,'12','0',4,10,48,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(109,650,'22','0',4,35,88,9,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(110,651,'13','0',4,14,47,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(111,652,'16','0',4,14,63,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(112,653,'20','0',3,8,56,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(113,654,'19','0',3,22,57,7,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(114,655,'20','0',4,21,65,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(115,656,'9','0',4,9,21,2,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(116,657,'29','0',4,38,113,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(117,658,'10','0',4,15,40,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(118,659,'26','0',5,38,124,8,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(119,660,'20','0',5,28,82,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(120,661,'25','0',5,49,125,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(121,662,'35','0',7,28,245,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(122,663,'20','0',9,46,173,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(123,664,'8','0',7,41,56,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(124,665,'10','0',9,31,90,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(125,666,'17','0',7,35,117,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(126,667,'31','0',9,53,279,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(127,668,'23','0',7,44,161,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(128,669,'29','0',9,90,256,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(129,670,'6','0',6,32,36,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(130,671,'19','0',9,59,170,7,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(131,672,'8','0',2,10,16,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(132,673,'31','0',9,90,279,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(133,674,'5','0',9,24,45,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(134,675,'0','0',9,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(135,676,'0','0',9,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(136,677,'96','0',5,171,480,34,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(137,678,'11','0',4,20,39,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(138,679,'11','0',5,22,55,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(139,680,'0','0',1,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(140,681,'11','0',9,36,99,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(141,682,'0','0',8,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(142,683,'16','0',9,92,144,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(143,684,'21','0',3,20,63,7,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(144,685,'10','0',4,15,40,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(145,686,'10','0',4,10,37,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(146,687,'31','0',20,413,620,21,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(147,627,'Total Service Days','Event Attendance',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(148,628,'1','115',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(149,629,'1','11',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(150,630,'1','490',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(151,631,'23','20',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(152,632,'1','15',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(153,632,'1','25',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(154,633,'1','50',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(155,634,'1','90',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(156,635,'9','20',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(157,636,'1','0',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(158,637,'1','20',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(159,638,'1','16',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(160,639,'1','100',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(161,640,'1','25',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(162,641,'1','90',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(163,689,'Community Schools Initiative','General Fund: Education Fund (115)',6,1,5,5,9,26,26,5,5,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(164,690,'Community Schools Initiative','General Fund: Education Fund (115)',16,1,15,5,6,70,75,14,14,5,'93.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(165,691,'Community Schools Initiative','General Fund: Education Fund (115)',4,0,4,5,8,20,20,4,4,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(166,692,'Community Schools Initiative','General Fund: Education Fund (115)',6,0,6,5,8,30,30,6,6,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(167,693,'Community Schools Initiative','General Fund: Education Fund (115)',15,0,15,16,20,227,240,14,15,5,'94.60%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(168,694,'Community Schools Initiative','Lead Partner Funds',17,1,16,6,12,84,98,14,17,2,'85.70%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(169,695,'Community Schools Initiative','General Fund: Education Fund (115)',10,1,9,16,20,139,145,9,9,5,'95.90%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(170,696,'Community Schools Initiative','General Fund: Education Fund (115)',11,1,10,16,20,153,164,10,10,5,'93.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(171,697,'Community Schools Initiative','General Fund: Education Fund (115)',15,0,15,16,20,233,240,15,15,5,'97.10%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(172,698,'Community Schools Initiative','General Fund: Education Fund (115)',14,2,12,16,20,192,198,12,13,5,'97.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(173,699,'Community Schools Initiative','General Fund: Education Fund (115)',13,4,9,4,7,37,44,9,9,4,'84.10%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(174,700,'Community Schools Initiative','Lead Partner Funds',10,0,10,23,46,230,230,10,10,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(175,701,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,7,4,109,112,16,16,5,'97.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(176,702,'Community Schools Initiative','General Fund: Education Fund (115)',14,2,12,9,5,105,111,12,12,5,'94.60%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(177,704,'Community Schools Initiative','General Fund: Education Fund (115)',15,0,15,9,5,133,135,15,15,5,'98.50%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(178,705,'Community Schools Initiative','General Fund: Education Fund (115)',14,2,12,7,4,84,87,12,12,5,'96.60%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(179,706,'Community Schools Initiative','Lead Partner Funds',17,2,15,5,8,78,81,16,16,5,'96.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(180,707,'Community Schools Initiative','Lead Partner Funds',31,0,31,2,2,62,62,31,31,2,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(181,708,'Community Schools Initiative','1',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(182,709,'Community Schools Initiative','1',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(183,585,'Ames Middle School','',0,0,0,0,0,0,0,0,0,0,'','','','',''),(184,586,'Youth Participants','',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(185,587,'Total Enrollment1','Total Dropped2',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(186,588,'Mon. AVA Per. 1 Ames\"','13',0,3,8,39,3,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(187,588,'Mon. AVA Per. 2 Ames\"','16',0,3,12,47,4,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(188,588,'Mon. FYE Per. 1 Ames\"','20',0,3,15,60,5,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(189,588,'Mon. FYE Per. 2 Ames\"','13',0,3,9,39,3,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(190,588,'Mon. Recreation Per. 1 Ames\"','13',0,3,13,39,4,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(191,588,'Mon. Recreation Per. 2 Ames\"','12',0,3,14,36,5,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(192,588,'Mon. Soccer Camp Ames\"','29',0,3,36,87,12,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(193,648,'15','0',4,14,60,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(194,649,'12','0',4,10,48,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(195,650,'22','0',4,35,88,9,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(196,651,'13','0',4,14,47,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(197,652,'16','0',4,14,63,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(198,653,'20','0',3,8,56,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(199,654,'19','0',3,22,57,7,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(200,655,'20','0',4,21,65,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(201,656,'9','0',4,9,21,2,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(202,657,'29','0',4,38,113,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(203,658,'10','0',4,15,40,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(204,659,'26','0',5,38,124,8,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(205,660,'20','0',5,28,82,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(206,661,'25','0',5,49,125,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(207,662,'35','0',7,28,245,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(208,663,'20','0',9,46,173,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(209,664,'8','0',7,41,56,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(210,665,'10','0',9,31,90,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(211,666,'17','0',7,35,117,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(212,667,'31','0',9,53,279,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(213,668,'23','0',7,44,161,6,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(214,669,'29','0',9,90,256,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(215,670,'6','0',6,32,36,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(216,671,'19','0',9,59,170,7,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(217,672,'8','0',2,10,16,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(218,673,'31','0',9,90,279,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(219,674,'5','0',9,24,45,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(220,675,'0','0',9,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(221,676,'0','0',9,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(222,677,'96','0',5,171,480,34,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(223,678,'11','0',4,20,39,5,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(224,679,'11','0',5,22,55,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(225,680,'0','0',1,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(226,681,'11','0',9,36,99,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(227,682,'0','0',8,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(228,683,'16','0',9,92,144,10,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(229,684,'21','0',3,20,63,7,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(230,685,'10','0',4,15,40,4,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(231,686,'10','0',4,10,37,3,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(232,687,'31','0',20,413,620,21,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(233,627,'Total Service Days','Event Attendance',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(234,628,'1','115',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(235,629,'1','11',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(236,630,'1','490',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(237,631,'23','20',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(238,632,'1','15',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(239,632,'1','25',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(240,633,'1','50',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(241,634,'1','90',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(242,635,'9','20',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(243,636,'1','0',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(244,637,'1','20',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(245,638,'1','16',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(246,639,'1','100',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(247,640,'1','25',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(248,641,'1','90',0,0,0,0,0,0,0,0,0,0,'','','','5/1/2013 to 5/31/2013',''),(249,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(250,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(251,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(252,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(253,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(254,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(255,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(256,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(257,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(258,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(259,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(260,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(261,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(262,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(263,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(264,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(265,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(266,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(267,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(268,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(269,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(270,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(271,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(272,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(273,689,'Community Schools Initiative','General Fund: Education Fund (115)',6,1,5,5,9,26,26,5,5,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(274,690,'Community Schools Initiative','General Fund: Education Fund (115)',16,1,15,5,6,70,75,14,14,5,'93.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(275,691,'Community Schools Initiative','General Fund: Education Fund (115)',4,0,4,5,8,20,20,4,4,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(276,692,'Community Schools Initiative','General Fund: Education Fund (115)',6,0,6,5,8,30,30,6,6,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(277,693,'Community Schools Initiative','General Fund: Education Fund (115)',15,0,15,16,20,227,240,14,15,5,'94.60%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(278,694,'Community Schools Initiative','Lead Partner Funds',17,1,16,6,12,84,98,14,17,2,'85.70%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(279,695,'Community Schools Initiative','General Fund: Education Fund (115)',10,1,9,16,20,139,145,9,9,5,'95.90%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(280,696,'Community Schools Initiative','General Fund: Education Fund (115)',11,1,10,16,20,153,164,10,10,5,'93.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(281,697,'Community Schools Initiative','General Fund: Education Fund (115)',15,0,15,16,20,233,240,15,15,5,'97.10%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(282,698,'Community Schools Initiative','General Fund: Education Fund (115)',14,2,12,16,20,192,198,12,13,5,'97.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(283,699,'Community Schools Initiative','General Fund: Education Fund (115)',13,4,9,4,7,37,44,9,9,4,'84.10%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(284,700,'Community Schools Initiative','Lead Partner Funds',10,0,10,23,46,230,230,10,10,5,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(285,701,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,7,4,109,112,16,16,5,'97.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(286,702,'Community Schools Initiative','General Fund: Education Fund (115)',14,2,12,9,5,105,111,12,12,5,'94.60%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(287,704,'Community Schools Initiative','General Fund: Education Fund (115)',15,0,15,9,5,133,135,15,15,5,'98.50%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(288,705,'Community Schools Initiative','General Fund: Education Fund (115)',14,2,12,7,4,84,87,12,12,5,'96.60%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(289,706,'Community Schools Initiative','Lead Partner Funds',17,2,15,5,8,78,81,16,16,5,'96.30%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(290,707,'Community Schools Initiative','Lead Partner Funds',31,0,31,2,2,62,62,31,31,2,'100.00%','100.00%','100.00%\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(291,708,'Community Schools Initiative','1',0,0,0,0,0,0,0,0,0,0,'','','\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(292,709,'Community Schools Initiative','1',0,0,0,0,0,0,0,0,0,0,'','','\r\n','5/1/2013 to 5/31/2013','McAuliffe - McAuliffe'),(293,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(294,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(295,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(296,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(297,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(298,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(299,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(300,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(301,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(302,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(303,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(304,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(305,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(306,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(307,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(308,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(309,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(310,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(311,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(312,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(313,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(314,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(315,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(316,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(317,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(318,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(319,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(320,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(321,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(322,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(323,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(324,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(325,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(326,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(327,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(328,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(329,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(330,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(331,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(332,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(333,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(334,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(335,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(336,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(337,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(338,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(339,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(340,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(341,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(342,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(343,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(344,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(345,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(346,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(347,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(348,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(349,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(350,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(351,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(352,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(353,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(354,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(355,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(356,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(357,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(358,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(359,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(360,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(361,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(362,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(363,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(364,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(365,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(366,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(367,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(368,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(369,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(370,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(371,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(372,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(373,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(374,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(375,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(376,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(377,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(378,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(379,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(380,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(381,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(382,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(383,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(384,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(385,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(386,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(387,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(388,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(389,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(390,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(391,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(392,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(393,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(394,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(395,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(396,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(397,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(398,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(399,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(400,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(401,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(402,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(403,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(404,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(405,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(406,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(407,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(408,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(409,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(410,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(411,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(412,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(413,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(414,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(415,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(416,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(417,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(418,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(419,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(420,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(421,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(422,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(423,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(424,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(425,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(426,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(427,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(428,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(429,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(430,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(431,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(432,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(433,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(434,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(435,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(436,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(437,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(438,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(439,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(440,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(441,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(442,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(443,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(444,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(445,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(446,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(447,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(448,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(449,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(450,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(451,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(452,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(453,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(454,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(455,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(456,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(457,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(458,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(459,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(460,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(461,353,'Community Schools Initiative','Lead Partner Funds',14,0,14,14,14,168,196,12,12,8,'85.70%','92.90%','92.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(462,354,'Community Schools Initiative','Lead Partner Funds',7,0,7,15,15,88,105,6,6,8,'83.80%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(463,354,'Community Schools Initiative','Lead Partner Funds',12,1,11,14,14,140,164,10,10,8,'85.40%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(464,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,117,150,8,8,8,'78.00%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(465,355,'Community Schools Initiative','Lead Partner Funds',10,0,10,15,15,137,150,9,9,8,'91.30%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(466,356,'Community Schools Initiative','General Fund: Education Fund (115)',18,2,16,8,8,102,134,13,13,8,'76.10%','87.50%','88.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(467,357,'Community Schools Initiative','General Fund: Education Fund (115)',13,0,13,8,8,87,104,11,11,8,'83.70%','87.50%','87.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(468,358,'Community Schools Initiative','Lead Partner Funds',18,1,17,15,23,201,263,13,14,8,'76.40%','93.30%','93.50%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(469,358,'Community Schools Initiative','Lead Partner Funds',15,2,13,14,21,135,195,10,10,8,'69.20%','92.90%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(470,359,'Community Schools Initiative','General Fund: Education Fund (115)',42,7,35,21,21,660,788,31,32,8,'83.80%','95.20%','95.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(471,360,'Community Schools Initiative','Lead Partner Funds',24,0,24,33,83,500,792,15,16,9,'63.10%','93.90%','93.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(472,361,'Community Schools Initiative','General Fund: Education Fund (115)',36,0,36,17,34,276,612,16,21,9,'45.10%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(473,362,'Community Schools Initiative','General Fund: Education Fund (115)',10,3,7,8,10,50,69,6,6,8,'72.50%','87.50%','89.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(474,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,1,13,29,65,246,322,8,9,8,'76.40%','93.10%','91.90%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(475,363,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,29,65,286,365,10,11,8,'78.40%','93.10%','92.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(476,364,'Community Schools Initiative','Lead Partner Funds',9,1,8,15,15,90,122,6,6,8,'73.80%','93.30%','93.40%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(477,365,'Community Schools Initiative','General Fund: Education Fund (115)',14,0,14,15,15,181,210,12,12,8,'86.20%','93.30%','93.30%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(478,366,'Community Schools Initiative','General Fund: Education Fund (115)',30,5,25,14,14,307,390,22,23,8,'78.70%','92.90%','93.60%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(479,584,'Community Schools Initiative','Lead Partner Funds',13,0,13,29,58,302,377,10,11,8,'80.10%','93.10%','93.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(480,368,'Community Schools Initiative','General Fund: Education Fund (115)',13,1,12,6,9,69,75,12,12,6,'92.00%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(481,369,'Community Schools Initiative','General Fund: Education Fund (115)',16,0,16,17,34,205,272,12,13,9,'75.40%','94.10%','94.10%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(482,370,'Community Schools Initiative','General Fund: Education Fund (115)',8,3,5,16,12,95,116,6,6,8,'81.90%','93.80%','95.70%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(483,371,'Community Schools Initiative','General Fund: Education Fund (115)',12,2,10,16,12,150,180,9,10,8,'83.30%','100.00%','100.00%\r\n','3/1/2013 to 4/30/2013','Funston - Funston'),(484,372,'Community Schools Initiative','9',0,0,0,0,0,0,0,0,0,0,'','','\r\n','3/1/2013 to 4/30/2013','Funston - Funston');
/*!40000 ALTER TABLE `Import_Destination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institution_Types`
--

DROP TABLE IF EXISTS `Institution_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institution_Types` (
  `Institution_Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_Type_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Institution_Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin7;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institution_Types`
--

LOCK TABLES `Institution_Types` WRITE;
/*!40000 ALTER TABLE `Institution_Types` DISABLE KEYS */;
INSERT INTO `Institution_Types` VALUES (1,'School'),(2,'Church'),(3,'Non-profit'),(4,'Civic organization');
/*!40000 ALTER TABLE `Institution_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institutions`
--

DROP TABLE IF EXISTS `Institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institutions` (
  `Institution_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_Name` varchar(150) DEFAULT NULL,
  `Street_Num` int(11) DEFAULT NULL,
  `Street_Direction` varchar(45) DEFAULT NULL,
  `Street_Name` varchar(100) DEFAULT NULL,
  `Street_Type` varchar(45) DEFAULT NULL,
  `Institution_Type` varchar(100) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Institution_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institutions`
--

LOCK TABLES `Institutions` WRITE;
/*!40000 ALTER TABLE `Institutions` DISABLE KEYS */;
INSERT INTO `Institutions` VALUES (1,'Ames Middle School',1920,'N','Hamlin','Ave','1',NULL),(2,'Mozart Elementary School',2200,'N','Hamlin','Ave','1',NULL),(3,'Logan Square Neighborhood Association',2840,'N','Milwaukee','Ave','4',NULL),(4,'Iglesia Episcopal de Nuestra Senora de las Americas',2902,'W','Logan','Blvd','2',NULL),(6,'Kelvyn Park High School ',4343,'W','Wrightwood','Ave','1',NULL),(7,'Logan Square YWCA',2858,'W','Diversey','Ave','3',NULL),(8,'Kimball Ave. Church',NULL,NULL,NULL,NULL,'2',NULL),(9,'Lathrop Leadership Team',3200,'N','Kedzie','Ave','4','170318391001104'),(10,'Logan Square Boys and Girls Club',NULL,NULL,NULL,NULL,'3',NULL),(11,'Logan Square Cooperative',NULL,NULL,NULL,NULL,'3',NULL),(12,'Logan Vistas',0,'','','','3',NULL),(13,'McAuliffe School',7773,'S','Sthng','Ln','1',NULL),(14,'McCormick Tribune YMCA',NULL,NULL,NULL,NULL,'3',NULL),(15,'Monroe Elementary School',NULL,NULL,NULL,NULL,'1',NULL),(16,'Neighbors Garden',NULL,NULL,NULL,NULL,'4',NULL),(17,'New Community Covenant Church',NULL,NULL,NULL,NULL,'2',NULL),(18,'Our Lady of Grace Catholic Church',NULL,NULL,NULL,NULL,'2',NULL),(19,'Palmer Square Apartments',NULL,NULL,NULL,NULL,'3',NULL),(20,'Paseo Garden',NULL,NULL,NULL,NULL,'4',NULL),(21,'Prime Care Community Health',NULL,NULL,NULL,NULL,'3',NULL),(22,'Sage Community Health',NULL,NULL,NULL,NULL,'3',NULL),(23,'St. Lukes Lutheran Church',NULL,NULL,NULL,NULL,'2',NULL),(24,'St. Sylvesters Catholic Church',NULL,NULL,NULL,NULL,'2',NULL),(25,'Unity Park',NULL,NULL,NULL,NULL,'4',NULL),(26,'Armitage Baptist Church',0,'','','','2',NULL),(27,'Active Transportation Alliance',0,'','','','3',NULL),(28,'Alliance of Logan Square Organizations',0,'','','','3',NULL),(30,'Avondale/Logandale School',0,'','','','1',NULL),(31,'Bickerdike Redevelopment Corporation',0,'','','','3',NULL),(32,'Christopher House',0,'','','','3',NULL),(33,'Community TV Network',0,'','','','3',NULL),(34,'Corner Farm',0,'','','','4',NULL),(35,'Daniel Alvarez',0,'','','','3',NULL),(36,'Darwin Elementary School',2840,'N','Milwaukee','','1',NULL),(37,'Dill Pickle Food Co-op',0,'','','','3',NULL),(38,'Diversey Square Apartments',0,'','','','3',NULL),(40,'Episcopal Church of the Advent',0,'','','','2',NULL),(41,'First Evangelical Lutheran Church',NULL,NULL,NULL,NULL,'2',NULL),(42,'Friends of Bloomingdale Trail',NULL,NULL,NULL,NULL,'3',NULL),(43,'Fullerton Avenue Neighborhood Association',NULL,NULL,NULL,NULL,'4',NULL),(44,'Fullerton/Linden/Albany/Kedzie - FLAK',NULL,NULL,NULL,NULL,'4',NULL),(45,'Funston School',NULL,NULL,NULL,NULL,'1',NULL),(46,'Goethe School',NULL,NULL,NULL,NULL,'1',NULL),(47,'Healthcare Alternative Systems',NULL,NULL,NULL,NULL,'3',NULL),(48,'Humboldt Park Social Services',NULL,NULL,NULL,NULL,'3',NULL),(49,'NEIU El Centro Campus',NULL,NULL,NULL,NULL,'1',NULL),(50,'Schurz High School',NULL,NULL,NULL,NULL,'1',NULL),(51,'Civitas Excolatur',0,'','','','4',NULL),(52,'Daughters of the American Revolution',1234,'W','Victory','Blvd','',NULL),(53,'ICS LLC',0,'','','','4',NULL),(55,'Work Hard Inc.',1234,'E','Slater','Dr','3',NULL),(56,'Herstory Research Group',0,'','','','4',NULL),(57,'Block-Group Testing',2300,'W','Cermak','Ave','4','170318391001104'),(58,'',0,'','','','','170318391001104');
/*!40000 ALTER TABLE `Institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institutions_Participants`
--

DROP TABLE IF EXISTS `Institutions_Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institutions_Participants` (
  `Institutions_Participants_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_ID` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  `Is_PM` int(1) DEFAULT NULL,
  `Year_12_13` int(11) DEFAULT NULL,
  `Year_13_14` int(11) DEFAULT NULL,
  `Year_14_15` int(11) DEFAULT NULL,
  `Year_15_16` int(11) DEFAULT NULL,
  PRIMARY KEY (`Institutions_Participants_ID`),
  KEY `participant_at_int` (`Participant_ID`),
  KEY `institution_of_particip` (`Institution_ID`),
  CONSTRAINT `institution_of_particip` FOREIGN KEY (`Institution_ID`) REFERENCES `Institutions` (`Institution_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_at_int` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institutions_Participants`
--

LOCK TABLES `Institutions_Participants` WRITE;
/*!40000 ALTER TABLE `Institutions_Participants` DISABLE KEYS */;
INSERT INTO `Institutions_Participants` VALUES (5,45,3,NULL,NULL,NULL,NULL,NULL),(6,13,7,NULL,NULL,NULL,NULL,NULL),(7,27,75,NULL,NULL,NULL,NULL,NULL),(10,2,79,1,1,NULL,NULL,NULL),(11,1,7,1,NULL,NULL,NULL,NULL),(12,30,76,1,NULL,NULL,NULL,NULL),(14,45,8,1,1,NULL,NULL,NULL),(15,38,8,NULL,NULL,NULL,NULL,NULL),(16,32,8,NULL,NULL,NULL,NULL,NULL),(18,50,87,1,NULL,NULL,NULL,NULL),(24,45,91,1,1,NULL,NULL,NULL),(25,13,92,1,NULL,NULL,NULL,NULL),(27,1,94,1,1,NULL,NULL,NULL),(28,13,93,NULL,NULL,NULL,NULL,NULL),(29,1,95,NULL,NULL,NULL,NULL,NULL),(30,36,5,1,NULL,NULL,NULL,NULL),(32,46,64,1,NULL,NULL,NULL,NULL),(33,3,87,NULL,NULL,NULL,NULL,NULL),(34,43,103,NULL,NULL,NULL,NULL,NULL),(35,45,107,NULL,NULL,NULL,NULL,NULL),(41,3,109,NULL,NULL,NULL,NULL,NULL),(42,1,113,NULL,NULL,NULL,NULL,NULL),(43,10,114,NULL,NULL,NULL,NULL,NULL),(45,38,70,NULL,NULL,NULL,NULL,NULL),(46,32,70,NULL,NULL,NULL,NULL,NULL),(50,3,116,NULL,NULL,NULL,NULL,NULL),(52,2,121,NULL,NULL,NULL,NULL,NULL),(99,52,121,NULL,NULL,NULL,NULL,NULL),(101,55,121,NULL,NULL,NULL,NULL,NULL),(125,25,122,NULL,NULL,NULL,NULL,NULL),(143,45,122,NULL,NULL,NULL,NULL,NULL),(162,20,123,NULL,NULL,NULL,NULL,NULL),(190,50,123,NULL,NULL,NULL,NULL,NULL),(191,51,123,NULL,NULL,NULL,NULL,NULL),(197,7,124,NULL,NULL,NULL,NULL,NULL),(221,22,130,NULL,NULL,NULL,NULL,NULL),(222,23,130,NULL,NULL,NULL,NULL,NULL),(223,24,130,NULL,NULL,NULL,NULL,NULL),(224,25,130,NULL,NULL,NULL,NULL,NULL),(235,12,131,NULL,NULL,NULL,NULL,NULL),(247,24,131,NULL,NULL,NULL,NULL,NULL),(268,47,131,NULL,NULL,NULL,NULL,NULL),(282,15,132,NULL,NULL,NULL,NULL,NULL),(283,50,64,1,NULL,NULL,NULL,NULL),(284,43,136,NULL,NULL,NULL,NULL,NULL),(285,42,150,NULL,NULL,NULL,NULL,NULL),(286,13,150,1,NULL,1,NULL,NULL),(288,36,90,1,NULL,NULL,NULL,NULL),(290,38,82,NULL,NULL,NULL,NULL,NULL),(291,45,1,1,1,NULL,NULL,NULL),(292,49,99,1,NULL,NULL,NULL,NULL),(294,15,81,1,NULL,1,NULL,NULL),(296,40,149,NULL,NULL,NULL,NULL,NULL),(299,41,3,NULL,NULL,NULL,NULL,NULL),(300,1,82,1,NULL,NULL,NULL,NULL),(301,2,157,NULL,NULL,NULL,NULL,NULL),(302,1,150,1,1,NULL,NULL,NULL),(303,50,82,NULL,NULL,NULL,NULL,NULL),(304,45,82,1,NULL,NULL,NULL,NULL),(305,36,150,1,NULL,NULL,NULL,NULL),(306,1,5,1,NULL,NULL,NULL,NULL),(307,36,5,1,NULL,NULL,NULL,NULL),(308,30,121,1,NULL,NULL,NULL,NULL),(309,30,121,1,NULL,NULL,NULL,NULL),(310,45,5,NULL,NULL,NULL,NULL,NULL),(311,45,87,1,NULL,NULL,NULL,NULL),(312,45,159,1,NULL,NULL,NULL,NULL),(313,45,5,1,NULL,NULL,NULL,NULL),(314,13,5,1,NULL,NULL,NULL,NULL),(315,36,82,1,NULL,NULL,NULL,NULL),(316,13,87,1,NULL,NULL,NULL,NULL),(318,45,82,1,NULL,NULL,NULL,NULL),(319,1,82,1,NULL,NULL,NULL,NULL),(320,46,82,1,NULL,NULL,NULL,NULL),(321,1,82,1,NULL,NULL,NULL,NULL),(322,30,160,1,NULL,NULL,NULL,NULL),(323,46,87,1,NULL,NULL,NULL,NULL),(324,6,87,1,NULL,NULL,NULL,NULL),(325,30,121,1,NULL,NULL,NULL,NULL),(326,1,100,1,NULL,NULL,NULL,NULL),(327,30,100,1,NULL,NULL,NULL,NULL),(328,1,100,1,NULL,NULL,NULL,NULL),(329,1,79,1,NULL,NULL,NULL,NULL),(330,30,89,1,NULL,NULL,NULL,NULL),(331,36,99,1,NULL,NULL,NULL,NULL),(332,46,7,1,NULL,NULL,NULL,NULL),(333,1,154,1,NULL,NULL,NULL,NULL),(334,1,154,1,NULL,NULL,NULL,NULL),(335,30,154,1,NULL,NULL,NULL,NULL),(336,1,137,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Institutions_Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institutions_Subcategories`
--

DROP TABLE IF EXISTS `Institutions_Subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institutions_Subcategories` (
  `Institutions_Subcategories_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Institution_ID` int(11) DEFAULT NULL,
  `Subcategory_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Institutions_Subcategories_ID`),
  KEY `instution_program` (`Subcategory_ID`),
  KEY `home_institute` (`Institution_ID`),
  CONSTRAINT `home_institute` FOREIGN KEY (`Institution_ID`) REFERENCES `Institutions` (`Institution_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `instution_program` FOREIGN KEY (`Subcategory_ID`) REFERENCES `Subcategories` (`Subcategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institutions_Subcategories`
--

LOCK TABLES `Institutions_Subcategories` WRITE;
/*!40000 ALTER TABLE `Institutions_Subcategories` DISABLE KEYS */;
INSERT INTO `Institutions_Subcategories` VALUES (1,2,19),(2,1,19),(3,7,1),(4,9,1),(5,1,20),(6,21,20),(7,22,20),(9,6,19),(10,36,19),(11,45,19),(12,42,10),(13,25,14),(14,36,65),(15,45,65),(16,15,19),(17,3,66),(19,3,4),(20,26,62),(22,37,42),(24,1,357),(25,3,25);
/*!40000 ALTER TABLE `Institutions_Subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Issue_Areas`
--

DROP TABLE IF EXISTS `Issue_Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Issue_Areas` (
  `Issue_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Issue_Area` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Issue_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Issue_Areas`
--

LOCK TABLES `Issue_Areas` WRITE;
/*!40000 ALTER TABLE `Issue_Areas` DISABLE KEYS */;
INSERT INTO `Issue_Areas` VALUES (1,'SNAP'),(2,'Medical Card'),(3,'Dental Van'),(4,'Health External referrals'),(5,'DACA Application'),(6,'Citizenship'),(7,'JFON Clinic'),(8,'Immigration external referrals'),(9,'Foreclosure referrals'),(10,'Housing Doors Knock/Outreach'),(11,'Voter Registration Doors Knock'),(12,'New Registered Voters');
/*!40000 ALTER TABLE `Issue_Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Issue_Attendance`
--

DROP TABLE IF EXISTS `Issue_Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Issue_Attendance` (
  `Issue_Attendance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Issue_ID` int(11) DEFAULT NULL,
  `Month` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Issue_Attendance_ID`),
  KEY `issue_idx` (`Issue_ID`),
  KEY `issue_attendee_idx` (`Participant_ID`),
  CONSTRAINT `issue_attendee` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `issue` FOREIGN KEY (`Issue_ID`) REFERENCES `Issue_Areas` (`Issue_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Issue_Attendance`
--

LOCK TABLES `Issue_Attendance` WRITE;
/*!40000 ALTER TABLE `Issue_Attendance` DISABLE KEYS */;
INSERT INTO `Issue_Attendance` VALUES (1,2,1,2012,82);
/*!40000 ALTER TABLE `Issue_Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Languages`
--

DROP TABLE IF EXISTS `Languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Languages` (
  `Language_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Language` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Language_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Languages`
--

LOCK TABLES `Languages` WRITE;
/*!40000 ALTER TABLE `Languages` DISABLE KEYS */;
INSERT INTO `Languages` VALUES (1,'English'),(2,'Spanish'),(3,'Other');
/*!40000 ALTER TABLE `Languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Actual_Attendance`
--

DROP TABLE IF EXISTS `PM_Actual_Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Actual_Attendance` (
  `PM_Actual_Attendance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_Mentor_ID` int(11) DEFAULT NULL,
  `Possible_Attendance_ID` int(11) DEFAULT NULL,
  `Num_Days_Attended` int(11) DEFAULT NULL,
  PRIMARY KEY (`PM_Actual_Attendance_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Actual_Attendance`
--

LOCK TABLES `PM_Actual_Attendance` WRITE;
/*!40000 ALTER TABLE `PM_Actual_Attendance` DISABLE KEYS */;
INSERT INTO `PM_Actual_Attendance` VALUES (1,75,1,16),(2,82,1,20),(3,82,2,20),(4,82,3,19),(5,82,4,10),(6,82,5,22),(7,72,1,22),(8,72,2,20),(9,72,3,22),(10,72,4,21),(11,72,5,22),(12,64,1,15),(13,64,2,15),(14,64,3,15),(15,64,4,15),(16,64,5,15),(17,0,1,20),(18,7,1,20),(19,79,1,20),(20,76,1,20),(21,7,2,18),(22,81,1,20);
/*!40000 ALTER TABLE `PM_Actual_Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Children_Info`
--

DROP TABLE IF EXISTS `PM_Children_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Children_Info` (
  `PM_Children_Info_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Child_ID` int(11) DEFAULT NULL,
  `Quarter` varchar(45) DEFAULT NULL,
  `Reading_Grade` varchar(45) DEFAULT NULL,
  `Math_Grade` varchar(45) DEFAULT NULL,
  `Num_Suspensions` int(11) DEFAULT NULL,
  `Num_Office_Referrals` int(11) DEFAULT NULL,
  `Days_Absent` int(11) DEFAULT NULL,
  `School_Year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PM_Children_Info_ID`),
  KEY `childs_participant_id` (`Child_ID`),
  CONSTRAINT `childs_participant_id` FOREIGN KEY (`Child_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Children_Info`
--

LOCK TABLES `PM_Children_Info` WRITE;
/*!40000 ALTER TABLE `PM_Children_Info` DISABLE KEYS */;
INSERT INTO `PM_Children_Info` VALUES (1,2,'1','B','A',0,2,5,'2012-2013'),(2,93,'2','B','B+',0,1,4,'2012-2013'),(4,2,'2','B+','A',0,3,4,'2012-2013'),(5,2,'3','A','E',0,0,1,'2012-2013'),(6,2,'4','B','A',0,0,0,'2012-2013'),(7,148,'1','B','B',0,1,8,'2012-2013'),(8,157,'1','A','C',0,3,8,'2012-2013'),(9,157,'2','A','B',0,1,4,'2012-2013'),(10,157,'3','B','B',0,1,4,'2012-2013'),(11,157,'4','A','B',0,1,5,'2012-2013');
/*!40000 ALTER TABLE `PM_Children_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Monthly_Attendance`
--

DROP TABLE IF EXISTS `PM_Monthly_Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Monthly_Attendance` (
  `PM_Monthly_Attendance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Institution_ID` int(11) DEFAULT NULL,
  `Month` int(11) DEFAULT NULL,
  `Days_Attended` int(11) DEFAULT NULL,
  `Days_Scheduled` int(11) DEFAULT NULL,
  `School_Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`PM_Monthly_Attendance_ID`),
  KEY `participant_attending_pm` (`Participant_ID`),
  KEY `institution_pm_attends` (`Institution_ID`),
  CONSTRAINT `institution_pm_attends` FOREIGN KEY (`Institution_ID`) REFERENCES `Institutions` (`Institution_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_attending_pm` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Monthly_Attendance`
--

LOCK TABLES `PM_Monthly_Attendance` WRITE;
/*!40000 ALTER TABLE `PM_Monthly_Attendance` DISABLE KEYS */;
INSERT INTO `PM_Monthly_Attendance` VALUES (1,1,NULL,3,8,15,1213),(2,1,NULL,4,12,13,1213),(3,1,NULL,5,11,15,1213),(4,3,NULL,3,12,15,1213),(5,3,NULL,4,9,13,1213),(6,3,NULL,5,10,15,1213),(8,3,NULL,10,15,15,1314);
/*!40000 ALTER TABLE `PM_Monthly_Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Possible_Attendance`
--

DROP TABLE IF EXISTS `PM_Possible_Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Possible_Attendance` (
  `PM_Possible_Attendance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Month` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Max_Days_Possible` int(11) DEFAULT NULL,
  PRIMARY KEY (`PM_Possible_Attendance_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Possible_Attendance`
--

LOCK TABLES `PM_Possible_Attendance` WRITE;
/*!40000 ALTER TABLE `PM_Possible_Attendance` DISABLE KEYS */;
INSERT INTO `PM_Possible_Attendance` VALUES (1,1,2013,22),(2,2,2013,20),(3,3,2013,22),(4,4,2013,21),(5,5,2013,22),(6,6,2013,21),(7,7,2013,22),(8,8,2013,22),(9,9,2013,21),(10,10,2013,22),(11,11,2013,21),(12,12,2013,22),(13,1,2014,22),(14,2,2014,20),(15,3,2014,22),(16,4,2014,21),(17,5,2014,22),(18,6,2014,21),(19,7,2014,22),(20,8,2014,22),(21,9,2014,21),(22,10,2014,22),(23,11,2014,21),(24,12,2014,22);
/*!40000 ALTER TABLE `PM_Possible_Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Program_Completion`
--

DROP TABLE IF EXISTS `PM_Program_Completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Program_Completion` (
  `PM_Program_Completion_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Program_ID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`PM_Program_Completion_ID`),
  KEY `english_program_id` (`Program_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Program_Completion`
--

LOCK TABLES `PM_Program_Completion` WRITE;
/*!40000 ALTER TABLE `PM_Program_Completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `PM_Program_Completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Teacher_Survey`
--

DROP TABLE IF EXISTS `PM_Teacher_Survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Teacher_Survey` (
  `PM_Teacher_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `School_Name` varchar(150) DEFAULT NULL,
  `Teacher_Name` int(11) DEFAULT NULL,
  `Grade` varchar(45) DEFAULT NULL,
  `Classroom_Language` int(11) DEFAULT NULL,
  `Years_In_Program` int(11) DEFAULT NULL,
  `Languages` varchar(45) DEFAULT NULL,
  `Years_As_Teacher` int(11) DEFAULT NULL,
  `Years_At_School` int(11) DEFAULT NULL,
  `Num_Students` int(11) DEFAULT NULL,
  `Num_ELL_Students` int(11) DEFAULT NULL,
  `Num_IEP_Students` int(11) DEFAULT NULL,
  `Num_Students_Below_Grade_Level` int(11) DEFAULT NULL,
  `PM_Activities_Training` varchar(250) DEFAULT NULL,
  `Teacher_Activities_Training` varchar(500) DEFAULT NULL,
  `Task_1` int(11) DEFAULT NULL,
  `Task_2` int(11) DEFAULT NULL,
  `Task_3` int(11) DEFAULT NULL,
  `Task_4` int(11) DEFAULT NULL,
  `Task_5` int(11) DEFAULT NULL,
  `Task_6` int(11) DEFAULT NULL,
  `Task_7` int(11) DEFAULT NULL,
  `Task_8` int(11) DEFAULT NULL,
  `Task_9` int(11) DEFAULT NULL,
  `Task_10` int(11) DEFAULT NULL,
  `Task_Other_Text` varchar(150) DEFAULT NULL,
  `Teacher_Involvement_A` int(11) DEFAULT NULL,
  `Teacher_Involvement_B` int(11) DEFAULT NULL,
  `Teacher_Involvement_C` int(11) DEFAULT NULL,
  `Teacher_Involvement_D` int(11) DEFAULT NULL,
  `Teacher_Involvement_E` int(11) DEFAULT NULL,
  `Teacher_Involvement_F` int(11) DEFAULT NULL,
  `Teacher_Involvement_G` int(11) DEFAULT NULL,
  `Teacher_Involvement_H` int(11) DEFAULT NULL,
  `Teacher_Involvement_I` int(11) DEFAULT NULL,
  `Teacher_Involvement_J` int(11) DEFAULT NULL,
  `Teacher_Parent_Network_K` int(11) DEFAULT NULL,
  `Teacher_Parent_Network_L` int(11) DEFAULT NULL,
  `Parent_Mentor_ID` int(11) DEFAULT NULL,
  `Date_Entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PM_Teacher_Survey_ID`),
  KEY `parent_mentor_referenced` (`Parent_Mentor_ID`),
  CONSTRAINT `parent_mentor_referenced` FOREIGN KEY (`Parent_Mentor_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Teacher_Survey`
--

LOCK TABLES `PM_Teacher_Survey` WRITE;
/*!40000 ALTER TABLE `PM_Teacher_Survey` DISABLE KEYS */;
INSERT INTO `PM_Teacher_Survey` VALUES (1,'Saucedo',0,'6',1,1,'1',1,1,27,0,4,0,'Basic orientation.','Same.',0,1,0,1,0,0,0,0,1,0,'',0,1,0,0,5,0,2,0,0,0,0,0,NULL,NULL),(2,'45',0,'4',2,1,'1',3,1,26,15,5,0,'','',0,1,0,1,1,0,1,0,0,0,'',2,3,4,1,2,3,3,3,1,2,6,11,7,'2013-03-25 17:23:50'),(3,'2',0,'3',1,2,'4',3,1,37,0,2,0,'Conflict and emergency management','',0,0,0,0,0,0,0,0,0,0,'',5,2,3,2,2,3,2,2,1,0,3,6,7,'2013-04-05 16:09:50'),(4,'2',0,'4',1,1,'4',1,1,35,2,1,0,'','',1,1,0,0,1,0,0,0,1,0,'',1,3,4,4,1,2,2,3,2,2,6,6,3,'2013-04-22 16:55:38'),(5,'2',0,'4',2,1,'4',1,1,28,0,1,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,20,79,'2013-05-03 16:40:57'),(6,'13',0,'3',2,2,'1',5,3,25,5,8,13,'Overview of curriculum plans for the year.','',1,1,1,0,0,1,1,0,0,0,'',3,0,0,0,0,0,0,0,0,0,0,0,92,'2013-05-20 18:58:11'),(7,'2',0,'500',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,3,'2013-05-31 20:50:08'),(8,'45',0,'8',1,1,'4',3,1,31,3,5,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,5,5,3,1,11,20,0,0,6,20,75,'2013-06-11 19:02:04'),(9,'13',134,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',4,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 16:44:52'),(10,'',141,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 17:49:06'),(11,'50',0,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 18:02:00'),(12,'6',0,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 18:02:29'),(13,'1',0,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 18:05:00'),(14,'1',139,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 18:05:43'),(15,'1',147,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 18:06:12'),(17,'13',134,'4',1,0,'',0,0,33,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,150,'2013-07-12 16:02:40'),(18,'6',134,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,5,'2013-07-15 14:16:12'),(19,'',134,'',1,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,5,'2013-07-15 14:23:18'),(20,'6',134,'9',2,2,'4',10,5,85,38,29,40,'','',1,1,1,1,0,0,0,0,0,1,'something else, I don\'t know..',0,0,0,0,0,0,0,0,0,0,0,0,73,'2013-07-15 14:53:03'),(21,'6',0,'',0,0,'',0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,0,0,'',5,5,5,5,5,5,1,1,0,0,1,1,79,'2013-07-19 21:12:04');
/*!40000 ALTER TABLE `PM_Teacher_Survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Teacher_Survey_Post`
--

DROP TABLE IF EXISTS `PM_Teacher_Survey_Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Teacher_Survey_Post` (
  `Post_Teacher_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `School_Name` varchar(150) DEFAULT NULL,
  `Teacher_Name` int(11) DEFAULT NULL,
  `Grade` varchar(45) DEFAULT NULL,
  `Classroom_Language` int(11) DEFAULT NULL,
  `Attendance` int(11) DEFAULT NULL,
  `Task_1` int(11) DEFAULT NULL,
  `Task_2` int(11) DEFAULT NULL,
  `Task_3` int(11) DEFAULT NULL,
  `Task_4` int(11) DEFAULT NULL,
  `Task_5` int(11) DEFAULT NULL,
  `Task_6` int(11) DEFAULT NULL,
  `Task_7` int(11) DEFAULT NULL,
  `Task_8` int(11) DEFAULT NULL,
  `Task_9` int(11) DEFAULT NULL,
  `Task_10` int(11) DEFAULT NULL,
  `Task_Other_Text` varchar(150) DEFAULT NULL,
  `Majority_Task` varchar(100) DEFAULT NULL,
  `Classroom_Benefits_8` int(11) DEFAULT NULL,
  `Classroom_Benefits_9` int(11) DEFAULT NULL,
  `Classroom_Benefits_10` int(11) DEFAULT NULL,
  `Classroom_Benefits_11` int(11) DEFAULT NULL,
  `Classroom_Benefits_12` int(11) DEFAULT NULL,
  `School_Benefits_13` int(11) DEFAULT NULL,
  `School_Benefits_14` int(11) DEFAULT NULL,
  `School_Benefits_15` int(11) DEFAULT NULL,
  `Recommendations_16` varchar(400) DEFAULT NULL,
  `Recommendations_17` varchar(400) DEFAULT NULL,
  `Recommendations_18` varchar(400) DEFAULT NULL,
  `Teacher_Involvement_A` int(11) DEFAULT NULL,
  `Teacher_Involvement_B` int(11) DEFAULT NULL,
  `Teacher_Involvement_C` int(11) DEFAULT NULL,
  `Teacher_Involvement_D` int(11) DEFAULT NULL,
  `Teacher_Involvement_E` int(11) DEFAULT NULL,
  `Teacher_Involvement_F` int(11) DEFAULT NULL,
  `Teacher_Involvement_G` int(11) DEFAULT NULL,
  `Teacher_Involvement_H` int(11) DEFAULT NULL,
  `Teacher_Involvement_I` int(11) DEFAULT NULL,
  `Teacher_Involvement_J` int(11) DEFAULT NULL,
  `Teacher_Parent_Network_K` int(11) DEFAULT NULL,
  `Teacher_Parent_Network_L` int(11) DEFAULT NULL,
  `Parent_Mentor_ID` int(11) DEFAULT NULL,
  `Date_Entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Explain_8` varchar(250) DEFAULT NULL,
  `Explain_9` varchar(250) DEFAULT NULL,
  `Explain_10` varchar(250) DEFAULT NULL,
  `Explain_11` varchar(250) DEFAULT NULL,
  `Explain_12` varchar(250) DEFAULT NULL,
  `Explain_13` varchar(250) DEFAULT NULL,
  `Explain_14` varchar(250) DEFAULT NULL,
  `Explain_15` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Post_Teacher_Survey_ID`),
  KEY `fk_parent_mentor_referenced` (`Parent_Mentor_ID`),
  CONSTRAINT `fk_parent_mentor_referenced` FOREIGN KEY (`Parent_Mentor_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Teacher_Survey_Post`
--

LOCK TABLES `PM_Teacher_Survey_Post` WRITE;
/*!40000 ALTER TABLE `PM_Teacher_Survey_Post` DISABLE KEYS */;
INSERT INTO `PM_Teacher_Survey_Post` VALUES (6,'2',0,'8',3,2,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,3,2,5,3,4,3,4,NULL,'text goes here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,3,NULL,6,NULL,7,'2013-05-08 20:15:53','I think X because Y.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'6',0,'',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,3,3,0,1,0,5,'','','',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-05 19:18:53','','','','','','','',''),(22,'13',0,'',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','','',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 17:52:46','','','','','','','',''),(23,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','','',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 17:55:29','','','','','','','',''),(24,'',64,'',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','','',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 17:57:47','','','','','','','',''),(25,'',145,'',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','','',0,0,0,0,0,0,0,0,0,0,0,0,87,'2013-06-25 17:59:59','','','','','','','',''),(26,'2',134,'',2,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','','',0,0,0,0,0,0,0,0,0,0,0,0,5,'2013-07-15 14:22:17','','','','','','','',''),(27,'6',134,'9',1,2,1,1,0,0,0,0,0,0,1,1,'quoi?','on her iPhone',3,3,3,0,0,4,0,0,'MMA','','',0,0,0,0,0,0,0,0,0,0,0,0,73,'2013-07-16 16:07:41','pssst!','','','','','','',''),(28,'6',0,'',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','','',5,5,5,5,5,5,0,0,0,0,0,0,79,'2013-07-19 21:06:50','','','','','','','',''),(29,'13',0,'',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','','',4,4,4,4,4,4,20,20,0,0,20,20,79,'2013-07-19 21:10:53','','','','','','','','');
/*!40000 ALTER TABLE `PM_Teacher_Survey_Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_Years`
--

DROP TABLE IF EXISTS `PM_Years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_Years` (
  `PM_Year_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant` int(11) DEFAULT NULL,
  `School` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`PM_Year_ID`),
  KEY `participant_this_year` (`Participant`),
  KEY `school_of_mentor` (`School`),
  CONSTRAINT `participant_this_year` FOREIGN KEY (`Participant`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `school_of_mentor` FOREIGN KEY (`School`) REFERENCES `Institutions` (`Institution_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_Years`
--

LOCK TABLES `PM_Years` WRITE;
/*!40000 ALTER TABLE `PM_Years` DISABLE KEYS */;
INSERT INTO `PM_Years` VALUES (1,150,36,1415),(2,150,1,1314),(3,5,1,1314),(4,5,36,1213),(5,121,30,1314),(6,121,30,1213),(7,87,45,1314),(8,159,45,1314),(9,5,45,1314),(10,5,13,1011),(11,82,36,1314),(12,87,13,1112),(14,82,45,1011),(15,82,1,1112),(16,82,46,1314),(17,82,1,1314),(18,160,30,1314),(19,87,49,1011),(20,87,6,1415),(22,100,1,1314),(23,100,30,1112),(24,100,1,1213),(25,79,1,1314),(26,89,30,1314),(27,99,36,1112),(28,7,46,1112),(29,154,1,1314),(30,154,1,1213),(31,154,1,1415),(32,154,30,1516),(33,154,30,1617),(34,137,1,1314);
/*!40000 ALTER TABLE `PM_Years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parent_Mentor_Children`
--

DROP TABLE IF EXISTS `Parent_Mentor_Children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parent_Mentor_Children` (
  `Parent_Mentor_Children_Link_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Parent_ID` int(11) DEFAULT NULL,
  `Child_ID` int(11) DEFAULT NULL,
  `Spouse_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Parent_Mentor_Children_Link_ID`),
  KEY `parent_participant_id` (`Parent_ID`),
  KEY `child_participant_id` (`Child_ID`),
  KEY `spouse_participant_id_idx` (`Spouse_ID`),
  CONSTRAINT `spouse_participant_id` FOREIGN KEY (`Spouse_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `child_participant_id` FOREIGN KEY (`Child_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parent_participant_id` FOREIGN KEY (`Parent_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parent_Mentor_Children`
--

LOCK TABLES `Parent_Mentor_Children` WRITE;
/*!40000 ALTER TABLE `Parent_Mentor_Children` DISABLE KEYS */;
INSERT INTO `Parent_Mentor_Children` VALUES (5,3,2,NULL),(9,92,17,NULL),(10,92,59,NULL),(11,92,93,NULL),(12,94,93,NULL),(13,94,95,NULL),(14,92,95,NULL),(15,66,100,NULL),(19,87,103,NULL),(20,87,104,NULL),(21,105,87,NULL),(22,8,106,NULL),(23,107,106,NULL),(24,72,106,NULL),(25,109,104,NULL),(26,75,89,NULL),(29,79,151,NULL),(30,152,151,NULL),(31,87,153,NULL),(32,82,149,NULL),(34,75,155,NULL),(35,158,157,NULL),(37,150,NULL,172),(38,150,NULL,82);
/*!40000 ALTER TABLE `Parent_Mentor_Children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parent_Mentor_Survey`
--

DROP TABLE IF EXISTS `Parent_Mentor_Survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Parent_Mentor_Survey` (
  `Parent_Mentor_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `School` varchar(150) DEFAULT NULL,
  `Grade` varchar(45) DEFAULT NULL,
  `Room_Number` varchar(45) DEFAULT NULL,
  `First_Year_PM` int(1) DEFAULT NULL,
  `Number_Children` int(11) DEFAULT NULL,
  `Marital_Status` varchar(45) DEFAULT NULL,
  `Place_Birth` varchar(45) DEFAULT NULL,
  `Years_In_IL` varchar(45) DEFAULT NULL,
  `Classes_Taking` varchar(45) DEFAULT NULL,
  `Currently_Working` int(1) DEFAULT NULL,
  `Current_Job` varchar(150) DEFAULT NULL,
  `Monthly_Income` varchar(45) DEFAULT NULL,
  `On_Food_Stamps` int(1) DEFAULT NULL,
  `Rent_Own` varchar(45) DEFAULT NULL,
  `Rent_Payment` varchar(45) DEFAULT NULL,
  `Student_Involvement_A` int(11) DEFAULT NULL,
  `Student_Involvement_B` int(11) DEFAULT NULL,
  `Student_Involvement_C` int(11) DEFAULT NULL,
  `Student_Involvement_D` int(11) DEFAULT NULL,
  `Student_Involvement_E` int(11) DEFAULT NULL,
  `Student_Involvement_F` int(11) DEFAULT NULL,
  `Student_Involvement_G` int(11) DEFAULT NULL,
  `Student_Involvement_H` int(11) DEFAULT NULL,
  `School_Network_I` int(11) DEFAULT NULL,
  `School_Network_J` int(11) DEFAULT NULL,
  `School_Network_K` int(11) DEFAULT NULL,
  `School_Network_L` int(11) DEFAULT NULL,
  `School_Involvement_M` int(11) DEFAULT NULL,
  `School_Involvement_N` int(11) DEFAULT NULL,
  `School_Involvement_O` int(11) DEFAULT NULL,
  `School_Involvement_P` int(11) DEFAULT NULL,
  `School_Involvement_Q` int(11) DEFAULT NULL,
  `School_Involvement_R` int(11) DEFAULT NULL,
  `Pre_Post` varchar(10) DEFAULT NULL,
  `Self_Efficacy_Q` int(11) DEFAULT NULL,
  `Self_Efficacy_R` int(11) DEFAULT NULL,
  `Self_Efficacy_S` int(11) DEFAULT NULL,
  `Self_Efficacy_T` int(11) DEFAULT NULL,
  `Self_Efficacy_U` int(11) DEFAULT NULL,
  `Self_Efficacy_V` int(11) DEFAULT NULL,
  `Self_Efficacy_W` int(11) DEFAULT NULL,
  `Self_Efficacy_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`Parent_Mentor_Survey_ID`),
  KEY `survey_filler_out` (`Participant_ID`),
  CONSTRAINT `survey_filler_out` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parent_Mentor_Survey`
--

LOCK TABLES `Parent_Mentor_Survey` WRITE;
/*!40000 ALTER TABLE `Parent_Mentor_Survey` DISABLE KEYS */;
INSERT INTO `Parent_Mentor_Survey` VALUES (1,7,'0000-00-00','','','',1,0,'single','Mexico','1','Something',0,'','',0,'Rent','',5,1,0,3,1,0,2,5,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,10,'2013-02-28','Saucedo','','',0,0,'divorced','USA','6','Something Else',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,5,'2013-02-28','Saucedo','6','',1,0,'single','USA','11','Something Again',0,'','',0,'Own','',0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,9,'0000-00-00','','','',0,0,'partnered','USA','15','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,17,'0000-00-00','','','',0,0,'partnered','Mexico','6','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,9,'0000-00-00','','','',0,0,'partnered','Puerto Rico','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,3,'2013-05-02','2','3','324',1,1,'divorced','USA','11','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,9,'0000-00-00','','','',0,0,'single','USA','','Something',0,'','',0,'Rent','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,9,'0000-00-00','','','',0,0,'divorced','Mexico','','A Fourth Thing',0,'','',0,'Rent','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,57,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,1,5,5,6,5,5,0,0,6,6,1,1,1,1,1,1,'1',5,3,4,5,5,5,5,5),(175,58,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,4,5,5,4,6,5,5,3,2,4,1,2,2,2,2,2,3,'1',4,4,4,4,4,4,3,4),(176,59,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,1,1,5,4,6,4,5,6,6,3,6,1,1,1,1,1,1,'1',4,4,4,5,5,4,4,4),(177,60,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,1,5,2,6,5,3,6,6,2,6,1,1,1,1,1,1,'1',5,5,5,5,5,5,4,5),(178,61,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,0,4,0,0,3,2,2,1,1,6,0,0,0,0,2,4,'1',1,1,4,4,4,2,4,4),(179,62,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,1,6,5,5,6,5,3,3,2,4,6,2,0,1,1,4,1,'1',5,5,5,4,5,5,4,5),(180,63,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,1,1,1,1,6,1,6,6,1,1,6,1,1,1,1,2,1,'1',4,4,3,3,4,4,4,3),(181,64,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,5,5,6,5,5,5,2,4,6,2,2,2,1,4,1,'1',5,5,5,5,5,5,4,5),(182,65,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,5,3,6,5,2,4,1,1,6,1,1,2,1,3,1,'1',4,4,4,3,3,4,3,3),(183,66,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,3,1,6,5,5,1,6,1,6,1,1,1,1,1,1,'1',4,3,4,4,3,4,3,3),(184,67,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,6,6,5,5,6,5,4,3,6,3,6,1,1,1,2,3,1,'1',5,4,4,4,4,4,4,4),(185,68,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',5,0,0,2,1,0,5,2,0,6,0,1,1,1,1,1,1,1,'3',4,4,4,4,5,4,4,5),(186,69,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,2,2,6,1,6,4,3,0,3,2,2,2,2,4,1,'1',4,3,4,3,4,4,4,3),(187,70,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,1,5,1,6,4,1,2,2,6,6,1,1,1,1,2,1,'1',5,5,5,5,5,5,5,5),(188,71,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,6,6,2,1,6,5,6,1,6,6,6,1,1,1,1,2,3,'1',5,3,5,4,5,4,4,5),(189,72,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,5,5,6,5,3,3,2,4,2,2,2,2,3,3,1,'1',5,4,5,5,5,5,5,5),(190,73,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,1,1,5,1,6,5,5,6,6,1,6,1,1,1,1,1,5,'1',5,5,4,5,5,5,4,5),(191,74,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,1,5,2,6,5,5,4,2,3,6,1,1,1,1,1,2,'1',5,5,5,5,4,5,5,5),(192,75,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,1,6,1,6,3,3,1,6,1,1,1,1,1,1,2,1,'1',4,3,4,4,5,4,4,4),(193,76,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,5,6,1,4,6,5,5,3,2,4,1,1,1,1,1,2,2,'1',4,4,4,5,0,4,4,4),(194,77,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,1,2,2,6,5,1,1,2,1,6,1,1,1,1,3,1,'1',4,3,4,3,3,5,3,3),(195,78,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,1,5,1,6,2,6,2,6,1,6,1,1,1,1,2,5,'1',5,4,5,2,5,3,5,5),(196,79,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,6,1,6,0,1,5,1,1,6,1,6,0,0,1,2,1,1,'1',5,5,5,5,5,5,5,5),(204,57,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,1,4,5,4,5,3,5,5,5,1,3,3,3,3,2,2,'2',4,4,4,4,4,4,4,4),(205,58,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,5,4,5,5,4,4,5,2,1,5,1,3,2,2,2,2,2,'2',4,4,4,4,4,4,4,4),(206,59,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,5,3,5,5,4,3,4,2,1,5,1,2,1,3,3,3,1,'2',5,4,4,3,4,4,4,4),(207,60,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,6,5,5,5,5,3,3,2,5,1,2,1,1,3,2,2,'2',4,4,4,4,4,4,4,4),(208,61,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,6,6,4,5,5,3,4,5,2,4,1,3,1,1,2,2,2,'2',4,4,4,4,4,4,4,4),(209,62,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,4,1,5,5,4,5,4,4,3,5,6,3,1,2,3,4,2,'2',5,5,5,5,5,5,5,5),(210,63,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,2,6,5,5,5,5,5,3,2,5,6,3,2,1,3,3,3,'2',5,5,5,5,5,5,5,5),(211,64,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,2,5,5,4,5,4,5,3,5,6,3,1,3,3,4,2,'2',5,5,5,5,5,5,5,5),(212,65,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,5,5,4,3,6,5,3,5,1,3,1,3,3,3,2,'2',4,5,5,4,4,4,3,3),(213,66,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,6,3,5,5,5,4,2,2,3,1,2,1,2,2,4,1,'2',4,4,4,4,4,4,4,4),(214,67,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,6,6,5,5,5,3,3,4,2,4,1,1,1,1,3,3,2,'2',4,4,4,5,5,4,4,4),(215,68,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,1,6,5,5,5,4,3,3,1,5,1,0,1,1,2,1,1,'2',2,2,2,2,1,2,2,1),(216,69,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,5,5,5,2,3,5,3,5,3,3,1,3,2,3,2,'2',4,4,5,5,5,4,5,4),(217,70,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,1,4,4,4,4,2,3,3,5,6,2,1,3,1,4,1,'2',5,5,5,5,5,5,5,5),(218,71,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,1,5,5,5,3,4,5,2,1,6,2,1,3,2,1,1,'2',5,4,4,4,4,4,5,4),(219,72,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,5,5,4,5,4,4,2,4,2,3,3,2,3,2,1,'2',5,5,4,4,5,4,4,4),(220,73,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,3,6,5,2,1,5,5,5,2,3,6,0,3,2,3,2,1,'2',3,4,4,4,4,4,4,4),(227,80,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,6,6,2,5,5,5,2,3,2,5,1,2,1,3,1,2,1,'2',3,4,4,4,4,4,3,3),(228,81,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,1,3,4,5,4,5,2,2,2,4,6,2,2,3,2,2,3,'2',4,3,5,4,4,3,2,3),(229,82,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,4,3,5,5,4,5,5,5,3,5,1,3,1,3,2,3,2,'2',4,5,5,4,4,5,5,4),(230,83,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,1,6,5,5,5,5,5,4,2,4,1,3,2,1,2,0,0,'2',3,3,4,5,5,5,5,5),(235,92,'2013-05-20','13','3','401',1,2,'partnered','USA','11','None',1,'Communications industry','>2500',0,'Own','1251',4,2,0,2,3,3,3,3,6,3,6,1,1,0,0,3,3,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,92,'2013-05-25','13','3','401',1,2,'partnered','USA','11','None',1,'','>2500',0,'Own','1251',5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,75,'2013-05-29','','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0),(238,87,'2013-05-24','15','2','002',1,2,'partnered','PR','15','College',1,'TTM','1500',0,'Rent','700',5,3,0,2,1,0,5,4,3,3,3,1,1,1,1,3,5,1,'1',5,4,4,4,4,5,4,4),(239,87,'2013-05-31','15','2','002',0,2,'partnered','PR','15','College',1,'accouting','1500',0,'Rent','700',5,4,0,0,5,4,5,5,6,11,6,3,5,5,5,3,5,10,'3',5,5,5,5,5,1,1,1),(240,8,'2013-05-29','45','2','237',0,4,'divorced','USA','15','None',0,'','',0,'','',0,0,0,3,0,5,4,4,0,0,0,0,0,0,0,0,0,0,'1',0,0,0,5,0,0,0,0),(241,8,'2013-05-31','45','2','',0,0,'','','','',0,'','',0,'','',0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,5,1,0,'2',0,3,0,0,0,0,0,0),(242,3,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2',0,0,0,0,0,0,0,0),(243,3,'2013-06-01','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,10,0,0,'2',0,0,0,0,0,0,0,0),(244,3,'2013-05-31','3','','5000',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'3',0,0,0,0,0,0,0,0),(245,3,'2013-05-31','3','','',0,0,'','','15','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,'3',0,0,0,0,0,0,0,0),(246,99,'0000-00-00','3','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,4,0,0,0,0,0,1,0,0,0,0,0,'1',5,5,5,0,0,0,0,0),(247,99,'2013-05-31','46','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2',0,0,0,0,0,5,5,5),(248,5,'2013-07-16','30','','',0,0,'','','','',0,'','',0,'','',0,3,0,0,0,0,0,2,0,3,0,0,0,0,0,3,5,0,'2',5,0,0,0,0,0,0,0),(249,150,'2013-07-12','13','1','222',1,1,'partnered','PR','6','None',1,'Tax prep','2000',0,'Rent','900',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'1',5,5,0,0,0,0,0,0),(250,87,'2013-07-15','1','8','001',0,2,'partnered','PR','15','College',0,'accountant','',0,'Rent','',5,3,1,5,2,0,5,5,3,3,3,1,1,0,3,3,5,5,'1',4,4,4,4,4,5,4,4),(251,57,'2013-01-20','1','','',0,0,'','','','',0,'','',0,'','',1,3,5,3,2,2,5,1,2,4,1,4,3,1,2,4,3,3,'1',1,2,3,4,5,2,1,1),(252,57,'2013-01-21','1','','',0,0,'','','','',0,'','',0,'','',2,4,1,1,1,3,3,3,3,5,5,5,1,1,3,5,1,2,'1',0,0,4,0,0,0,0,0),(253,57,'2013-01-20','1','','',0,0,'','','','',0,'','',0,'','',1,3,5,2,5,1,1,2,1,1,3,1,2,1,1,1,1,1,'2',1,4,5,4,3,3,3,3),(254,57,'2013-01-20','1','','',0,0,'','','','',0,'','',0,'','',4,4,1,3,4,4,3,5,4,2,5,4,3,5,3,4,5,1,'2',3,3,1,2,2,1,0,3),(255,57,'2013-01-20','1','','',0,0,'','','','',0,'','',0,'','',1,1,2,5,4,1,1,2,4,2,4,5,1,1,2,1,4,4,'3',1,0,1,0,0,2,0,2),(256,57,'2013-01-20','1','','',0,0,'','','','',0,'','',0,'','',4,5,3,4,2,4,5,3,5,3,5,2,4,5,3,4,1,1,'3',2,3,4,5,4,3,2,1),(257,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0),(258,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0),(259,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2',0,0,0,0,0,0,0,0),(260,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2',0,0,0,0,0,0,0,0),(261,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',0,0,0,0,0,0,0,0),(262,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',0,0,0,0,0,0,0,0),(263,57,'0000-00-00','6','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0),(264,57,'0000-00-00','6','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2',0,0,0,0,0,0,0,0),(265,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',0,0,0,0,0,0,0,0),(266,57,'0000-00-00','2','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',0,0,0,0,0,0,0,0),(267,57,'0000-00-00','6','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'3',0,0,0,0,0,0,0,0),(268,57,'0000-00-00','13','','',0,0,'','','','',0,'','',0,'','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'1',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `Parent_Mentor_Survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants`
--

DROP TABLE IF EXISTS `Participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants` (
  `Participant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name_First` varchar(45) DEFAULT NULL,
  `Name_Middle` varchar(45) DEFAULT NULL,
  `Name_Last` varchar(45) DEFAULT NULL,
  `Address_Street_Name` varchar(45) DEFAULT NULL,
  `Address_Street_Num` int(11) DEFAULT NULL,
  `Address_Street_Direction` varchar(45) DEFAULT NULL,
  `Address_Street_Type` varchar(45) DEFAULT NULL,
  `Address_City` varchar(45) DEFAULT NULL,
  `Address_State` varchar(45) DEFAULT NULL,
  `Address_Zip` int(11) DEFAULT NULL,
  `Block_Group` varchar(45) DEFAULT NULL,
  `Ward` varchar(45) DEFAULT NULL,
  `Phone_Day` varchar(45) DEFAULT NULL,
  `Phone_Evening` varchar(45) DEFAULT NULL,
  `Education_Level` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Consent_2013_14` int(11) DEFAULT NULL,
  `Consent_2014_15` int(11) DEFAULT NULL,
  `Consent_2015_16` int(11) DEFAULT NULL,
  `Grade_Level` varchar(45) DEFAULT NULL,
  `Is_PM` int(11) DEFAULT NULL,
  `Is_Child` int(11) DEFAULT NULL,
  `Notes` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`Participant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants`
--

LOCK TABLES `Participants` WRITE;
/*!40000 ALTER TABLE `Participants` DISABLE KEYS */;
INSERT INTO `Participants` VALUES (1,'Sean',NULL,'Carter','Brooklyn',0,'','','New York','NY',21212,NULL,NULL,'212-222-1212','','','jay.z.carter@gmail.com','43','m','1969-12-04',NULL,NULL,NULL,'',0,0,NULL),(2,'Blue Ivy',NULL,'Carter','Sunshine',789,'E','St','Beverly Hills','CA',71717,NULL,NULL,'','','','baby.blue@gmail.com','1','f','2012-01-07',NULL,NULL,NULL,'1',0,1,NULL),(3,'Beyonce',NULL,'Knowles','Alameda',1234,'W','Blvd','Chicago','IL',60611,NULL,NULL,'','','','','31','f','1981-09-04',NULL,NULL,NULL,'',1,0,NULL),(5,'Kanye',NULL,'West','63rd',2200,'W','St','Chicago','IL',60647,NULL,NULL,'312-555-5555','312-777-7777','some_college','kanye.west@gmail.com','35','m','1977-06-08',NULL,NULL,NULL,'',1,0,NULL),(7,'Michelle',NULL,'Williams','Lakeshore',3000,'N','Dr','Chicago','IL',60666,NULL,NULL,'','','','','32','f','1980-07-23',NULL,NULL,NULL,'',1,0,NULL),(8,'Gerard',NULL,'Depardieu','Racine',1,'W','Ave','','',0,NULL,NULL,'001-001-2020','','','','64','m','1948-12-27',NULL,NULL,NULL,'',1,0,NULL),(9,'Jean-Luc',NULL,'Godard','',0,'','','','',0,NULL,NULL,'','','college','','82','m','1930-12-03',NULL,NULL,NULL,'',NULL,NULL,NULL),(10,'Maria',NULL,'Gonzalez','North',2100,'W','Ave','','',0,NULL,NULL,'','','','','22','f','1990-12-13',NULL,NULL,NULL,'',NULL,NULL,NULL),(11,'Jean-Pierre',NULL,'Melville','Seaside',1802,'E','Ln','Chicago','IL',60614,NULL,NULL,'','','college','','54','m','1958-06-23',NULL,NULL,NULL,'',NULL,NULL,NULL),(12,'Anna',NULL,'Karina','',0,'','','','',0,NULL,NULL,'','','','','47','f','1965-05-12',NULL,NULL,NULL,'',NULL,NULL,NULL),(17,'Child-Mentor',NULL,'Test2','Lake Shore',100,'E','Dr','Chicago','IL',60601,NULL,NULL,'777-312-5555','312-773-5555','','tester@test.net','13','m','2000-01-04',NULL,NULL,NULL,'',0,1,'Final note test'),(57,'Fausta',NULL,'Delgado',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(58,'Rocio',NULL,'Reynoso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(59,'Fabiola',NULL,'Flores',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(60,'Jackeline',NULL,'Sandoval',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(61,'Liliana',NULL,'Velazquez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(62,'Maria',NULL,'Miranda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(63,'Mirna',NULL,'Ramos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(64,'Lorena',NULL,'Arcos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(65,'Aleida',NULL,'Arzeta',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(66,'Heidy',NULL,'Carranza',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(67,'Noemi',NULL,'Morocho',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(68,'Blanca',NULL,'Rodriguez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(69,'Isidra',NULL,'Mena',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(70,'Sandra',NULL,'Hernandez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(71,'Marta',NULL,'Mendoza',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(72,'Rogelia',NULL,'Aguilar','',0,'','','','',0,NULL,NULL,'','','','','13','','2000-05-02',NULL,NULL,NULL,'',0,0,NULL),(73,'Blanca',NULL,'Beltran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(74,'Maria',NULL,'Ramirez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(75,'Cecilia',NULL,'Chavez','',0,'','','','',0,NULL,NULL,'','','','','0','','2013-05-02',NULL,NULL,NULL,'',0,0,NULL),(76,'Rocio',NULL,'Ibarra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(77,'Maria',NULL,'Naula',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(78,'Eva',NULL,'Covarrubias',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(79,'Guadalupe',NULL,'Guadalupe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(80,'Patricia',NULL,'Trujllo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(81,'Estela',NULL,'Sanchez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(82,'Maria',NULL,'Acevedo','',0,'','','','',0,'','','(555) 342-1234','(333) 222-1111','','','63','','0000-00-00',0,0,1,'',0,0,'Maria is new to the neighborhood as of June 2013.'),(83,'Benito',NULL,'Romero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(87,'Suheily',NULL,'DeOleo','Avers',2549,'N','1D','Chicago','IL',60647,NULL,NULL,'(773) 875-5526','(773) 875-5526','','sdeoleo@lsna.net','32','f','1981-09-05',NULL,NULL,NULL,'',1,0,NULL),(89,'Cecilia',NULL,'Not PM','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',1,0,NULL),(90,'DeOleo',NULL,'Enid','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',1,0,NULL),(91,'Michele',NULL,'Norris','',0,'','','','',0,NULL,NULL,'','','','','12','','1981-05-01',NULL,NULL,NULL,'',0,0,NULL),(92,'Ari',NULL,'Shapiro','Waverly',1234,'N','Ln','Chicago','IL',60608,NULL,NULL,'','','','','38','m','1974-06-22',NULL,NULL,NULL,'',0,0,NULL),(93,'Adrienne',NULL,'Shapiro','',0,'','','','',0,NULL,NULL,'','','','','9','f','2004-05-03',NULL,NULL,NULL,'',0,1,NULL),(94,'Monika',NULL,'Shapiro','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',1,93,NULL),(95,'Max',NULL,'Shapiro','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(98,'Carl',NULL,'Orff','',0,'','','','',0,NULL,NULL,'(123) 456-7890','(123) 456-7890','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(99,'Kai',NULL,'Ryssdal','',0,'','','','',0,NULL,NULL,'(xxx) xxx-xxxx','(xxx) xxx-xxxx','','','0','','0000-00-00',NULL,NULL,NULL,'',1,0,NULL),(100,'Ellie',NULL,'Carranza','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',1,0,NULL),(101,'Testing',NULL,'Date Format','',0,'','','','',0,NULL,NULL,'(234) 123-2345','(123) 456-7890','','','1','','2011-04-07',NULL,NULL,NULL,'',0,0,NULL),(103,'Abner',NULL,'DeOleo','Avers',2549,'N','','Chicago','IL ',60647,NULL,NULL,'','','','','2013','f','0000-00-00',NULL,NULL,NULL,'',0,1,NULL),(104,'Bryan',NULL,'DeOleo','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(105,'Edward',NULL,'DeOleo','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,87,NULL),(106,'Emile',NULL,'Depardieu','',0,'','','','',0,NULL,NULL,'','','','','8','','0000-00-00',NULL,NULL,NULL,'',0,1,NULL),(107,'Celine',NULL,'Depardieu','',0,'','','','',0,NULL,NULL,'','','','','2013','f','2000-05-31',NULL,NULL,NULL,'',0,0,NULL),(109,'Adenise',NULL,'Soto','Happy',1234,'S','1S','Moline','Il',91145,NULL,NULL,'(309) 123-4567','','college','','27','f','1985-06-11',NULL,NULL,NULL,'',1,0,NULL),(110,'Shawn',NULL,'Carter','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(111,'Shawn',NULL,'Carter','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(112,'Carla',NULL,'Bruni','Versailles',1075,'E','Ave','Chicago','IL',65102,NULL,NULL,'(482) 135-9999','(482) 135-9999','some_college','','40','f','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(113,'Mario',NULL,'Batalli','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(114,'Miuccia',NULL,'Prada','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(115,'Jessica',NULL,'Timberlake','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(116,'Julio',NULL,'Marquez','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(117,'Juliana',NULL,'Marquez','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',1,0,NULL),(118,'Juliana',NULL,'Marquez','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(121,'Aomame',NULL,'Masami','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',1,0,NULL),(122,'Tengo',NULL,'Kawana','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(123,'Fukada',NULL,'Eriko','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(124,'Azami',NULL,'Ebisuno','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(125,'Test',NULL,'Whatever','',0,'','','','',0,NULL,NULL,'','','','','0','','2013-06-12',NULL,NULL,NULL,'',0,0,NULL),(126,'',NULL,'','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(127,'Clare',NULL,'Quilty','',0,'','','','',0,NULL,NULL,'','','','','31','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(128,'Eleanor',NULL,'Rigby','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',1,0,NULL),(129,'Zach',NULL,'Conlon','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(130,'Sharon',NULL,'von Etten','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(131,'Josh',NULL,'Rhye','',0,'','','','',0,NULL,NULL,'','','','','0','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(132,'Mayra',NULL,'Cifuentes','Parker ',4041,'W','Ave','Chicago','IL',0,NULL,NULL,'(773) 824-3994','','','','0','f','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(133,'Bridget',NULL,'Murphy','Monticello ',2537,'N','Ave','Chicago','IL',60647,NULL,NULL,'','(520) 420-1544','','','13','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(134,'Sylvia',NULL,'Plath','',0,'','','','',0,NULL,NULL,'','','college','','42','f','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(135,'Test',NULL,'DOB','',0,'','','','',0,NULL,NULL,'','','','','0','','2013-06-01',NULL,NULL,NULL,'',NULL,0,NULL),(136,'Mark',NULL,'Twain','Milwaukee',2840,'N','','Chicago','Il',60618,NULL,NULL,'(773) 283-4370','','college','','63','m','1950-06-17',NULL,NULL,NULL,'',NULL,0,NULL),(137,'Juliet',NULL,'Alejandre','Milwaukee',2840,'N','','Chicago','IL',60618,NULL,NULL,'','','college','','34','f','1979-04-01',NULL,NULL,NULL,'',1,0,NULL),(138,'Luke',NULL,'Bryan','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(139,'Blake',NULL,'Shelton','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(140,'Keith',NULL,'Urban','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(141,'Tim',NULL,'McGraw','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(142,'Hunter',NULL,'Hayes','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(144,'Jake',NULL,'Owen','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(146,'Randy',NULL,'Houser','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(147,'Brad',NULL,'Paisley','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(148,'Elyssa',NULL,'Von Trapp','',0,'','','','',0,NULL,NULL,'','','','','5','f','2008-01-01',NULL,NULL,NULL,'1',NULL,1,NULL),(149,'Maximus',NULL,'Acevedo','',0,'','','','',0,'170318391001104','','','','','','14','','0000-00-00',1,0,1,'',0,0,NULL),(150,'Charles',NULL,'Acevedo','23rd',1111,'N','st','chicago','il',60618,NULL,'','(773) 202-2022','(773) 202-2022','','charles.acevedo@acevedoassociates.com','41','m','1972-01-01',NULL,NULL,NULL,'',1,0,NULL),(151,'Candida',NULL,'Guadalupe-Hidalgo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'Frank',NULL,'Hidalgo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'Maya',NULL,'DeOleo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,'test',NULL,'2','',0,'','','','',0,NULL,NULL,'asdf','gfd','','','0','','2013-07-01',NULL,NULL,NULL,'',1,1,NULL),(155,'Nate',NULL,'Richardson',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'Sherri',NULL,'Farris','',0,'','','','',0,NULL,NULL,'','','','','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(157,'George',NULL,'Windsor','Cambridge',1234,'W','Ave','Chicago','IL',60618,NULL,NULL,'','','','','7','m','2006-08-01',NULL,NULL,NULL,'2',0,1,NULL),(158,'Kate',NULL,'Middleton',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,'Susan',NULL,'Yanun','',0,'','','','',0,NULL,NULL,'','','','','3','f','2009-09-21',NULL,NULL,NULL,'',1,0,NULL),(160,'Lydia',NULL,'Saetama','no where',1234,'S','','','',0,NULL,NULL,'','','','','32','f','1981-09-02',NULL,NULL,NULL,'',1,0,NULL),(161,'Jose',NULL,'Carlos','Milwaukee',5942,'N','','Chicago','IL',0,NULL,'','773-777-7777','','','yahoo.com','13','m','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(162,'Joey',NULL,'Jordan','Milwaukee ',2840,'N','','Chicago','IL',0,NULL,'','773-888-8888','','','g mail.com','2013','m','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(163,'Michael ',NULL,'Estrada','Milwaukee',2840,'N','','Chicago','IL',0,NULL,NULL,'773-999-9999','','','yahoo.com','2013','m','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(164,'Michael ',NULL,'Estrada','Milwaukee',2840,'N','','Chicago','IL',0,NULL,NULL,'773-999-9999','','','yahoo.com','2013','m','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(165,'hulises',NULL,'luis','Milwaukee',3940,'N','','Chicago','IL',0,NULL,NULL,'773-366-7777','','','NEIU.org.com','2013','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(166,'Felix ',NULL,'Ramirez','Milwaukee',1840,'N','','Chicago','IL',0,NULL,NULL,'773-998-9898','','','downtown@yahoo.com','2013','m','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(167,'Mike ',NULL,'Julius','Kimball',1535,'N','',' Chicago`','IL',0,NULL,NULL,'773-987-8888','','','hello@yahoo.com','2013','m','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(168,'Miguel',NULL,'Castrejon','Milwaukee',1645,'N','','Chicago','IL',0,NULL,NULL,'773-965-5555','','','1234@yahoo.com','','','0000-00-00',NULL,NULL,NULL,'',NULL,0,NULL),(169,'Testablock',NULL,'Group','Garfield',1780,'W','Blvd','Chicago','IL',0,'170316118002011','','','','','','13','','0000-00-00',NULL,NULL,NULL,'',0,0,NULL),(170,'Test Ward',NULL,'Here','',0,'','','','',0,'170318391001104','3','','','','','14','','0000-00-00',0,0,0,'',0,2,NULL),(171,'Test-new-spouse',NULL,'Acevedo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,'test-another-spouse',NULL,'Acevedo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Growth`
--

DROP TABLE IF EXISTS `Participants_Growth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Growth` (
  `Participant_Growth_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Start_Level` varchar(45) DEFAULT NULL,
  `End_Level` varchar(45) DEFAULT NULL,
  `GED_Completed` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_Growth_ID`),
  KEY `person_growing` (`Participant_ID`),
  CONSTRAINT `person_growing` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Growth`
--

LOCK TABLES `Participants_Growth` WRITE;
/*!40000 ALTER TABLE `Participants_Growth` DISABLE KEYS */;
INSERT INTO `Participants_Growth` VALUES (1,3,2011,'-----','-----',2),(2,3,2012,'2','2',2),(3,10,2012,'1','2',0),(4,3,2013,'2','3',1),(5,17,2010,'1','2',2),(6,5,2011,'1','2',0),(7,7,2013,'1','2',2),(8,7,2012,'2','2',1),(9,7,2013,'2','3',0);
/*!40000 ALTER TABLE `Participants_Growth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Languages`
--

DROP TABLE IF EXISTS `Participants_Languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Languages` (
  `Participant_Language_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Language_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_Language_ID`),
  KEY `language_of_participant` (`Language_ID`),
  KEY `participant_speaking_language` (`Participant_ID`),
  CONSTRAINT `language_of_participant` FOREIGN KEY (`Language_ID`) REFERENCES `Languages` (`Language_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `participant_speaking_language` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Languages`
--

LOCK TABLES `Participants_Languages` WRITE;
/*!40000 ALTER TABLE `Participants_Languages` DISABLE KEYS */;
INSERT INTO `Participants_Languages` VALUES (1,9,3),(2,10,1),(3,10,2),(4,11,1),(5,11,2),(6,17,2),(7,17,1),(9,7,1),(10,7,2),(11,87,1),(12,87,2),(15,92,1),(18,87,1),(19,87,2),(21,109,2),(22,112,3),(23,136,3),(24,137,1),(25,137,2),(26,150,1),(27,150,2),(28,157,1);
/*!40000 ALTER TABLE `Participants_Languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Roles`
--

DROP TABLE IF EXISTS `Participants_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Roles` (
  `Participant_Role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Role_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_Role_ID`),
  KEY `participant_in_role` (`Participant_ID`),
  KEY `role_of_participant` (`Role_ID`),
  CONSTRAINT `participant_in_role` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_of_participant` FOREIGN KEY (`Role_ID`) REFERENCES `Roles` (`Role_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Roles`
--

LOCK TABLES `Participants_Roles` WRITE;
/*!40000 ALTER TABLE `Participants_Roles` DISABLE KEYS */;
INSERT INTO `Participants_Roles` VALUES (1,1,3),(2,1,1),(10,5,2),(12,3,1),(23,3,3),(24,17,3),(25,17,5),(27,5,3),(28,7,1),(29,12,3),(30,87,1),(32,90,1),(33,93,5),(36,98,3),(37,99,1),(38,99,2),(39,99,3),(41,103,5),(45,109,1),(47,109,3),(50,112,3),(54,115,4),(55,82,2),(56,132,1),(57,134,1),(59,134,3),(62,134,6),(68,136,6),(71,137,3),(72,82,4),(77,148,5),(78,150,1),(79,150,3),(80,75,6),(85,157,5),(86,159,1),(88,159,3),(89,160,1),(92,161,3),(95,162,3),(98,163,3),(101,164,3),(104,165,3),(107,166,3),(110,167,3),(113,168,3),(118,170,5);
/*!40000 ALTER TABLE `Participants_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participants_Subcategories`
--

DROP TABLE IF EXISTS `Participants_Subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participants_Subcategories` (
  `Participant_Subcategory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Subcategory_ID` int(11) DEFAULT NULL,
  `ILP_yes_no` int(1) DEFAULT NULL,
  `Date_Linked` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Participant_Subcategory_ID`),
  KEY `participant_in_activity` (`Participant_ID`),
  KEY `activity_of_participant` (`Subcategory_ID`),
  CONSTRAINT `activity_of_participant` FOREIGN KEY (`Subcategory_ID`) REFERENCES `Subcategories` (`Subcategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_in_activity` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participants_Subcategories`
--

LOCK TABLES `Participants_Subcategories` WRITE;
/*!40000 ALTER TABLE `Participants_Subcategories` DISABLE KEYS */;
INSERT INTO `Participants_Subcategories` VALUES (1,3,3,NULL,'2011-03-05 06:00:00'),(2,1,1,NULL,'2011-03-07 06:00:00'),(3,3,1,NULL,'2012-12-12 06:00:00'),(4,3,4,NULL,'2012-12-10 06:00:00'),(5,7,4,NULL,'2012-12-10 06:00:00'),(6,2,3,NULL,'2012-05-31 05:00:00'),(7,3,5,NULL,'2012-05-31 05:00:00'),(8,5,9,NULL,'2012-05-31 05:00:00'),(9,8,2,NULL,'2012-05-31 05:00:00'),(10,1,2,NULL,'2012-05-31 05:00:00'),(11,9,14,NULL,'2012-05-31 05:00:00'),(12,1,8,NULL,'2012-05-31 05:00:00'),(13,2,14,NULL,'2012-05-31 05:00:00'),(14,10,9,NULL,'2012-05-31 05:00:00'),(15,5,1,NULL,'2012-05-31 05:00:00'),(16,3,10,NULL,'2012-05-31 05:00:00'),(17,1,10,NULL,'2012-05-31 05:00:00'),(18,1,19,NULL,'2012-05-31 05:00:00'),(19,3,19,NULL,'2012-05-31 05:00:00'),(20,8,1,NULL,'2012-05-31 05:00:00'),(24,12,20,NULL,'2012-05-31 05:00:00'),(26,11,1,NULL,'2012-05-31 05:00:00'),(27,2,50,NULL,'2012-05-31 05:00:00'),(29,1,65,NULL,'2012-05-31 05:00:00'),(30,3,65,NULL,'2012-05-31 05:00:00'),(31,17,65,NULL,'2012-05-31 05:00:00'),(32,5,65,NULL,'2012-05-31 05:00:00'),(33,12,65,NULL,'2012-05-31 05:00:00'),(34,2,65,NULL,'2012-05-31 05:00:00'),(35,7,65,NULL,'2012-05-31 05:00:00'),(36,8,65,NULL,'2012-05-31 05:00:00'),(37,9,65,NULL,'2012-05-31 05:00:00'),(38,11,65,NULL,'2012-05-31 05:00:00'),(39,1,53,NULL,'2012-05-31 05:00:00'),(40,3,53,NULL,'2012-05-31 05:00:00'),(42,59,14,NULL,'2013-04-30 05:00:00'),(43,75,44,NULL,'2013-04-30 05:00:00'),(44,79,19,NULL,'2013-04-30 05:00:00'),(45,79,53,NULL,'2013-04-30 05:00:00'),(46,7,19,NULL,'2013-04-30 05:00:00'),(47,7,53,NULL,'2013-04-30 05:00:00'),(48,76,19,NULL,'2013-04-30 05:00:00'),(49,76,53,NULL,'2013-04-30 05:00:00'),(50,8,19,NULL,'2013-04-30 05:00:00'),(51,8,53,NULL,'2013-04-30 05:00:00'),(57,79,19,NULL,'2013-04-30 05:00:00'),(58,79,53,NULL,'2013-04-30 05:00:00'),(59,75,19,NULL,'2013-04-30 05:00:00'),(60,75,53,NULL,'2013-04-30 05:00:00'),(65,89,19,NULL,'2013-04-30 05:00:00'),(66,89,53,NULL,'2013-04-30 05:00:00'),(68,82,36,NULL,'2013-04-30 05:00:00'),(69,92,45,NULL,'2013-04-30 05:00:00'),(70,92,19,NULL,'2013-04-30 05:00:00'),(71,92,53,NULL,'2013-04-30 05:00:00'),(72,94,19,NULL,'2013-04-30 05:00:00'),(73,94,53,NULL,'2013-04-30 05:00:00'),(74,5,53,NULL,'2013-04-30 05:00:00'),(75,68,19,NULL,'2013-04-30 05:00:00'),(76,68,53,NULL,'2013-04-30 05:00:00'),(77,87,44,NULL,'2013-05-21 19:41:11'),(81,99,36,NULL,'2013-05-22 15:10:51'),(82,66,22,NULL,'2013-05-22 15:14:57'),(83,64,19,NULL,'2013-05-22 18:49:04'),(84,64,53,NULL,'2013-05-22 18:49:04'),(87,103,36,NULL,'2013-05-24 15:16:15'),(90,103,65,NULL,'2013-05-24 15:24:35'),(91,87,4,NULL,'2013-05-24 15:28:39'),(92,103,61,NULL,'2013-05-24 15:54:21'),(93,8,61,NULL,'2013-05-24 15:54:29'),(94,8,61,NULL,'2013-05-24 15:54:33'),(95,90,61,NULL,'2013-05-24 15:54:41'),(96,82,62,NULL,'2013-05-24 16:02:01'),(97,64,62,NULL,'2013-05-24 16:06:35'),(98,2,62,NULL,'2013-05-24 16:06:41'),(99,1,66,NULL,'2013-05-24 16:08:09'),(100,78,66,NULL,'2013-05-24 16:08:15'),(101,87,66,NULL,'2013-05-24 16:08:23'),(102,8,66,NULL,'2013-05-24 16:08:31'),(107,109,10,NULL,'2013-05-30 18:51:09'),(108,109,9,NULL,'2013-05-30 18:51:18'),(109,109,3,NULL,'2013-05-30 18:52:54'),(112,109,25,NULL,'2013-05-30 18:53:17'),(114,109,18,NULL,'2013-05-30 18:53:38'),(115,109,36,NULL,'2013-05-30 18:54:41'),(124,64,9,NULL,'2013-05-31 17:19:02'),(127,64,8,NULL,'2013-05-31 17:19:17'),(128,12,36,NULL,'2013-05-31 18:13:48'),(131,82,32,NULL,'2013-06-03 15:00:50'),(132,70,19,NULL,'2013-06-03 15:20:06'),(133,70,53,NULL,'2013-06-03 15:20:06'),(135,99,19,NULL,'2013-06-04 15:40:59'),(136,99,53,NULL,'2013-06-04 15:40:59'),(137,73,19,NULL,'2013-06-04 16:37:32'),(138,73,53,NULL,'2013-06-04 16:37:32'),(140,117,19,NULL,'2013-06-04 16:38:07'),(141,117,53,NULL,'2013-06-04 16:38:07'),(142,125,36,NULL,'2013-06-05 18:47:06'),(143,81,14,NULL,'2013-06-05 19:56:09'),(144,124,355,NULL,'2013-06-05 20:18:12'),(145,131,25,NULL,'2013-06-05 20:34:08'),(146,72,357,NULL,'2013-06-10 17:47:21'),(147,100,357,NULL,'2013-06-10 17:47:29'),(150,64,19,NULL,'2013-06-17 17:19:52'),(151,64,53,NULL,'2013-06-17 17:19:52'),(152,136,358,NULL,'2013-06-17 17:31:21'),(153,65,30,NULL,'2013-07-09 14:28:52'),(154,150,25,NULL,'2013-07-12 15:03:29'),(155,150,19,NULL,'2013-07-12 15:35:51'),(156,150,53,NULL,'2013-07-12 15:35:51'),(157,150,20,NULL,'2013-07-12 16:16:04'),(158,90,19,NULL,'2013-07-12 18:21:33'),(159,90,53,NULL,'2013-07-12 18:21:33'),(162,99,19,NULL,'2013-07-23 18:59:17'),(163,99,53,NULL,'2013-07-23 18:59:17'),(164,100,19,NULL,'2013-07-24 19:51:44'),(165,100,53,NULL,'2013-07-24 19:51:44'),(166,81,584,NULL,'2013-07-24 20:47:39'),(167,81,19,NULL,'2013-07-24 20:47:50'),(168,81,53,NULL,'2013-07-24 20:47:50'),(169,87,1,NULL,'2013-07-25 15:19:27'),(175,157,366,NULL,'2013-08-09 16:39:45'),(179,121,53,NULL,'2013-09-18 20:49:00'),(180,87,19,NULL,'2013-09-19 16:58:27'),(181,87,53,NULL,'2013-09-19 16:58:27'),(182,159,19,NULL,'2013-09-19 17:08:10'),(183,159,53,NULL,'2013-09-19 17:08:10'),(185,5,53,NULL,'2013-09-19 17:09:36'),(186,5,19,NULL,'2013-09-19 17:10:07'),(187,5,53,NULL,'2013-09-19 17:10:07'),(189,82,53,NULL,'2013-09-19 17:16:42'),(192,82,19,NULL,'2013-09-23 15:13:45'),(193,82,53,NULL,'2013-09-23 15:13:45'),(194,160,19,NULL,'2013-09-23 15:15:50'),(195,160,53,NULL,'2013-09-23 15:15:50'),(196,121,19,NULL,'2013-09-23 16:39:28'),(197,121,53,NULL,'2013-09-23 16:39:28'),(199,154,19,NULL,'2013-09-23 19:31:45'),(200,154,53,NULL,'2013-09-23 19:31:45'),(201,137,51,NULL,'2013-10-16 18:02:27'),(202,137,19,NULL,'2013-10-16 18:02:44'),(203,137,53,NULL,'2013-10-16 18:02:44'),(204,137,46,NULL,'2014-02-11 18:08:08');
/*!40000 ALTER TABLE `Participants_Subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Roles` (
  `Role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Role_Title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (1,'Parent/guardian'),(2,'Corporate/professional'),(3,'Community/organization member'),(4,'College/graduate student'),(5,'Student'),(6,'Teacher'),(7,'Staff');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Satisfaction_Surveys`
--

DROP TABLE IF EXISTS `Satisfaction_Surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Satisfaction_Surveys` (
  `Satisfaction_Survey_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Participant_ID` int(11) DEFAULT NULL,
  `Program_ID` int(11) DEFAULT NULL,
  `Question_1` int(11) DEFAULT NULL,
  `Question_2` int(11) DEFAULT NULL,
  `Question_3` int(11) DEFAULT NULL,
  `Question_4` int(11) DEFAULT NULL,
  `Question_5` int(11) DEFAULT NULL,
  `Question_6` int(11) DEFAULT NULL,
  `Question_7` int(11) DEFAULT NULL,
  `Question_8` int(11) DEFAULT NULL,
  `Question_9` int(11) DEFAULT NULL,
  `Question_10` int(11) DEFAULT NULL,
  `Question_11` int(11) DEFAULT NULL,
  `Question_12` varchar(400) DEFAULT NULL,
  `Date` varchar(150) DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  PRIMARY KEY (`Satisfaction_Survey_ID`),
  KEY `participant_satisfied` (`Participant_ID`),
  KEY `satisfying_program_fk` (`Program_ID`),
  CONSTRAINT `participant_satisfied` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `satisfying_program_fk` FOREIGN KEY (`Program_ID`) REFERENCES `Subcategories` (`Subcategory_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Satisfaction_Surveys`
--

LOCK TABLES `Satisfaction_Surveys` WRITE;
/*!40000 ALTER TABLE `Satisfaction_Surveys` DISABLE KEYS */;
INSERT INTO `Satisfaction_Surveys` VALUES (1,2,14,1,2,2,3,3,1,2,1,2,3,3,'','',3),(3,8,65,2,2,3,3,3,3,2,3,3,3,2,'','2013-06-02',3),(41,1,65,1,1,1,1,2,2,2,1,1,1,2,'0','2013-02-21',3),(42,2,65,2,3,2,2,2,3,3,1,1,3,2,'0','2013-02-21',3),(43,3,65,2,3,2,1,2,3,3,1,1,1,3,'0','2013-02-21',3),(44,5,65,1,3,1,1,2,2,2,1,2,1,3,'0','2013-02-21',3),(45,7,65,1,2,1,1,3,1,2,0,0,3,0,'0','2013-02-21',3),(46,9,65,3,2,3,3,2,1,3,1,1,1,3,'0','2013-02-21',3),(47,11,65,1,1,1,1,3,2,2,1,1,1,3,'0','2013-02-21',3),(48,12,65,1,3,1,1,3,3,2,1,1,1,3,'0','2013-02-21',3),(49,17,65,1,3,2,1,3,1,2,1,1,1,3,'0','2013-02-21',3),(55,8,1,2,1,2,2,2,1,1,3,1,3,1,'now.','2013-04-01',4),(57,8,1,2,1,2,3,2,1,1,3,1,3,1,'0','2013-04-01',3),(58,3,1,2,1,2,3,1,1,1,3,1,2,2,'0','2013-5-13',3),(59,1,1,2,2,2,2,2,1,2,2,1,3,1,'0','2013-05-14',4),(60,5,1,2,1,3,2,1,1,2,3,1,3,1,'more cowbell','2013-5-13',4),(61,8,1,2,1,2,3,2,1,1,3,1,3,1,'So many suggestions.','2013-04-01',4),(62,8,1,2,1,2,3,2,1,1,3,1,3,1,'tellements d\'idees!','2013-04-01',4),(63,1,10,0,0,0,0,0,0,0,0,0,0,0,'','2013-05-07',3),(64,109,NULL,1,1,1,1,1,1,1,3,2,3,1,'','2013-05-31',4),(65,109,NULL,1,1,1,1,1,1,1,3,2,3,1,'Hold extra sessions on weekends.','2013-07-01',4),(68,124,355,2,0,0,0,3,0,0,0,0,0,0,'','2013-06-01',4),(69,124,355,0,0,1,0,0,0,0,0,0,0,0,'','2013-06-02',4),(70,124,355,0,0,0,0,0,0,1,0,0,1,0,'','--',3),(71,136,358,1,1,1,1,1,1,1,3,2,3,1,'It\'s Awesome','2013-06-17',4),(72,3,1,1,1,1,1,1,3,0,0,0,0,0,'','2013-07-08',3),(73,3,5,0,0,0,0,0,0,0,0,0,0,0,'','2013-07-08',3),(74,150,25,2,2,2,2,2,2,2,2,2,2,2,'','2013-07-01',3),(75,5,17,2,0,0,0,0,0,0,0,0,0,0,'','2013-07-01',3),(76,5,65,0,0,0,0,0,1,0,0,0,0,0,'','2013-07-15',4),(77,87,4,0,0,0,1,0,0,0,0,0,0,0,'','2013-07-22',3),(78,87,4,0,0,0,0,0,0,0,1,0,0,0,'','2013-07-22',4),(79,66,22,0,1,0,0,0,0,0,0,0,0,0,'','2013-07-01',3),(80,66,22,3,0,0,0,0,0,0,0,0,0,0,'','2013-07-01',4),(81,157,366,1,1,2,3,3,2,1,3,2,3,1,'','2013-08-01',3);
/*!40000 ALTER TABLE `Satisfaction_Surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subcategories`
--

DROP TABLE IF EXISTS `Subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subcategories` (
  `Subcategory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subcategory_Name` varchar(150) DEFAULT NULL,
  `Campaign_or_Program` varchar(45) DEFAULT NULL,
  `Notes` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`Subcategory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1049 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subcategories`
--

LOCK TABLES `Subcategories` WRITE;
/*!40000 ALTER TABLE `Subcategories` DISABLE KEYS */;
INSERT INTO `Subcategories` VALUES (1,'Lathrop Homes','Campaign',''),(2,'Grow Your Own (GYO)','Program','0'),(3,'Forclosure Outreach','Program','0'),(4,'Keep Chicago Renting','Campaign',''),(5,'Health & Benefits Outreach','Program','0'),(8,'Dental Van','Program','0'),(9,'Cancer Support Group','Program','0'),(10,'Bloomingdale Trail','Campaign','1'),(14,'Fair Care Coalition','Campaign','1'),(17,'Collegian Scholars','Program','0'),(18,'Elev8','Program','1'),(19,'Parent Mentor Program','Program','0'),(20,'Ames Primecare Clinic','Program','0'),(21,'Early Childhood Mentors','Program','0'),(22,'DALE','Program','0'),(24,'Leadership Training','Program',NULL),(25,'Board','Campaign',NULL),(26,'MAC','Campaign',NULL),(27,'CORE','Campaign',NULL),(28,'Fundraising','Campaign',NULL),(29,'Steering Committee','Campaign',NULL),(30,'Steering Committee - Health & Open Space','Campaign',NULL),(31,'School Closings','Campaign',NULL),(32,'Elected School Board','Campaign',NULL),(34,'Improving KPHS','Campaign',NULL),(35,'Service Learning','Program',NULL),(36,'AfterSchool Matters','Program',NULL),(37,'Internship','Program',NULL),(38,'VOYCE Program','Program',NULL),(39,'VOYCE Leadership','Campaign',NULL),(40,'Restorative Justice','Campaign',NULL),(42,'Crime Prevention','Campaign',NULL),(43,'Making a Difference (MAD) Campaign','Campaign',NULL),(44,'Block Club/Garden','Campaign',NULL),(45,'Test New Program','Program',NULL),(46,'Citizenship','Program',NULL),(47,'Deferred Action','Program',NULL),(48,'JFON Clinic','Program',NULL),(49,'Know Your Rights','Program',NULL),(50,'Drivers\' Licenses','Campaign',NULL),(51,'CIR','Campaign',NULL),(52,'Steering Committee','Campaign',NULL),(53,'Parent Mentor Workshops','Program',NULL),(54,'Excel class - intermediate','Program',NULL),(55,'Re-training program','Program',NULL),(57,'Manufacturing Jobs Campaign','Campaign',NULL),(58,'Testing','Program',NULL),(59,'Parent Engagement Ins.','Program','0'),(61,'TTM','Program',NULL),(62,'TTM','Program',NULL),(65,'Community Learning Centers','Program','0'),(66,'Worklocal.org','Program',NULL),(353,'1st & 2nd Reading & Math','Program',NULL),(354,'1st Reading & Math','Program',NULL),(355,'2nd Reading & Math','Program',NULL),(356,'Ballet','Program',NULL),(357,'Cheerleader','Program',NULL),(358,'Compass Learning','Program',NULL),(359,'Concert Band','Program',NULL),(360,'ESL 1','Program',NULL),(361,'ESL Basic','Program',NULL),(362,'Hip Hop','Program',NULL),(363,'Homework Help/Tutoring','Program',NULL),(364,'Journalism','Program',NULL),(365,'Kindergarten Reading & Math','Program',NULL),(366,'Martial Arts 2nd-5th','Program',NULL),(368,'Science/Genius','Program',NULL),(369,'Spanish GED','Program',NULL),(370,'String Orchestra (Cuatro)','Program',NULL),(371,'String Orchestra (Guitar)','Program',NULL),(372,'Life Smart for Women','Program',NULL),(374,'Program Improvement Meetings','Campaign',NULL),(375,'Large Community Meeting/Assembly','Program',NULL),(376,'Test 3','Campaign',NULL),(377,'School Budgets','Campaign',NULL),(557,'\"Ballet 1','Program',NULL),(558,'Ballet Kindergarten','Program',NULL),(559,'\"Basketball 3','Program',NULL),(560,'\"Basketball 6','Program',NULL),(561,'Cuatro Program','Program',NULL),(562,'Early Childhood Education','Program',NULL),(563,'ELL Homework Help','Program',NULL),(564,'ESL 1 Spring 2013','Program',NULL),(565,'Extended Education','Program',NULL),(566,'Extended Education 2','Program',NULL),(567,'Math and Reading Club','Program',NULL),(568,'Parent Mentor 2013','Program',NULL),(569,'Spanish Guitar','Program',NULL),(570,'Tutoring 1st grade','Program',NULL),(571,'Tutoring 2nd grade','Program',NULL),(572,'Ballet Kindergarten Monroe','Program',NULL),(573,'Cuatro Program Monroe','Program',NULL),(574,'Early Childhood Education Monroe','Program',NULL),(575,'ELL Homework Help Monroe','Program',NULL),(576,'ESL 1 Spring 2013 Monroe','Program',NULL),(577,'Extended Education Monroe','Program',NULL),(578,'Extended Education 2 Monroe','Program',NULL),(579,'Math and Reading Club Monroe','Program',NULL),(580,'Parent Mentor 2013 Monroe','Program',NULL),(581,'Spanish Guitar Monroe','Program',NULL),(582,'Tutoring 1st grade Monroe','Program',NULL),(583,'Tutoring 2nd grade Monroe ','Program',NULL),(584,'Parent Mentor','Program',NULL),(585,'Program:','Program',NULL),(586,'Person Type:','Program',NULL),(587,'Service Name','Program',NULL),(588,'\"','Program',NULL),(589,'.Tue. Recreation Per. 1','Program',NULL),(590,'.Tue. Recreation Per. 2','Program',NULL),(591,'.Tue. Soccer Camp','Program',NULL),(592,':Wed. AVA Per. 1','Program',NULL),(593,':Wed. AVA Per. 2','Program',NULL),(594,':Wed. FYE Per. 1','Program',NULL),(595,':Wed. FYE Per. 2','Program',NULL),(596,':Wed. Recreation Per. 1','Program',NULL),(597,':Wed. Recreation Per. 2','Program',NULL),(598,':Wed. Soccer Camp','Program',NULL),(599,';Thur. FYE Per. 2','Program',NULL),(600,';Thur. Recreation Per. 1','Program',NULL),(601,';Thur. Recreation Per. 2','Program',NULL),(602,';Thur. Soccer Camp','Program',NULL),(603,'7th Grade Alg. Mon./ Tue.','Program',NULL),(604,'7th Grade Alg. Wed./ Thur.','Program',NULL),(605,'7th Reading & Writing Mon./ Tue.','Program',NULL),(606,'7th Reading & Writing Wed./ Thur.','Program',NULL),(607,'8th Grade Alg. Mon./ Tue.','Program',NULL),(608,'8th Grade Alg. Wed./ Thur.','Program',NULL),(609,'8th Reading & Writing Mon./ Tue.','Program',NULL),(610,'8th Reading & Writing Wed./ Thur.','Program',NULL),(611,'Act-N Adapt','Program',NULL),(612,'Ames Press Club','Program',NULL),(613,'Big Brother / Big Sister','Program',NULL),(614,'BUILD','Program',NULL),(615,'Chess Team','Program',NULL),(616,'ESL Level 1','Program',NULL),(617,'ESL Level 3','Program',NULL),(618,'Friday Sports Club','Program',NULL),(619,'Girls in the Game','Program',NULL),(620,'Girlz Rock','Program',NULL),(621,'Math Team','Program',NULL),(622,'Peace and Leadership','Program',NULL),(623,'Scientist for Tomorrow','Program',NULL),(624,'West Town Bikes Per. 1','Program',NULL),(625,'West Town Bikes Per. 2','Program',NULL),(626,'YOURS project','Program',NULL),(627,'Event Name','Program',NULL),(628,'1st Annual College & Career Fair','Program',NULL),(629,'Advisory Board','Program',NULL),(630,'Ames School Assembly','Program',NULL),(631,'Breakfast Club','Program',NULL),(632,'Cafe y Conversacion','Program',NULL),(633,'Cafe y Conversacion & Neighborhood Wide','Program',NULL),(634,'Elev8 Survey','Program',NULL),(635,'Intervention Program','Program',NULL),(636,'Lullaby Parade at the Lagoon','Program',NULL),(637,'M.A.D. Committee Meeting','Program',NULL),(638,'Mikva Peace & Leadership Springfield Trip','Program',NULL),(639,'National Leadership Conference','Program',NULL),(640,'NEIU Parent/Student Leadership Conference','Program',NULL),(641,'YOURS Orchestra Concert','Program',NULL),(642,'1','Program',NULL),(643,'2','Program',NULL),(644,'3','Program',NULL),(645,'4','Program',NULL),(646,'5','Program',NULL),(647,'6','Program',NULL),(648,'.Tue. Recreation Per. 1 Ames','Program',NULL),(649,'.Tue. Recreation Per. 2 Ames','Program',NULL),(650,'.Tue. Soccer Camp Ames','Program',NULL),(651,':Wed. AVA Per. 1 Ames','Program',NULL),(652,':Wed. AVA Per. 2 Ames','Program',NULL),(653,':Wed. FYE Per. 1 Ames','Program',NULL),(654,':Wed. FYE Per. 2 Ames','Program',NULL),(655,':Wed. Recreation Per. 1 Ames','Program',NULL),(656,':Wed. Recreation Per. 2 Ames','Program',NULL),(657,':Wed. Soccer Camp Ames','Program',NULL),(658,';Thur. FYE Per. 2 Ames','Program',NULL),(659,';Thur. Recreation Per. 1 Ames','Program',NULL),(660,';Thur. Recreation Per. 2 Ames','Program',NULL),(661,';Thur. Soccer Camp Ames','Program',NULL),(662,'7th Grade Alg. Mon./ Tue. Ames','Program',NULL),(663,'7th Grade Alg. Wed./ Thur. Ames','Program',NULL),(664,'7th Reading & Writing Mon./ Tue. Ames','Program',NULL),(665,'7th Reading & Writing Wed./ Thur. Ames','Program',NULL),(666,'8th Grade Alg. Mon./ Tue. Ames','Program',NULL),(667,'8th Grade Alg. Wed./ Thur. Ames','Program',NULL),(668,'8th Reading & Writing Mon./ Tue. Ames','Program',NULL),(669,'8th Reading & Writing Wed./ Thur. Ames','Program',NULL),(670,'Act-N Adapt Ames','Program',NULL),(671,'Ames Press Club Ames','Program',NULL),(672,'Big Brother / Big Sister Ames','Program',NULL),(673,'BUILD Ames','Program',NULL),(674,'Chess Team Ames','Program',NULL),(675,'ESL Level 1 Ames','Program',NULL),(676,'ESL Level 3 Ames','Program',NULL),(677,'Friday Sports Club Ames','Program',NULL),(678,'Girls in the Game Ames','Program',NULL),(679,'Girlz Rock Ames','Program',NULL),(680,'Life Smart For Women Ames','Program',NULL),(681,'Math Team Ames','Program',NULL),(682,'Parent Mentor Program Ames','Program',NULL),(683,'Peace and Leadership Ames','Program',NULL),(684,'Scientist for Tomorrow Ames','Program',NULL),(685,'West Town Bikes Per. 1 Ames','Program',NULL),(686,'West Town Bikes Per. 2 Ames','Program',NULL),(687,'YOURS project Ames','Program',NULL),(688,'\"Basketball 3rd','Program',NULL),(689,'Chicago Ballet 2nd & 3rd McAuliffe','Program',NULL),(690,'Chicago Ballet KDG and 1st grade McAuliffe','Program',NULL),(691,'Cultural Dance Studies Group 1 McAuliffe','Program',NULL),(692,'Cultural Dance Studies Group 2 McAuliffe','Program',NULL),(693,'ELL Homework McAuliffe','Program',NULL),(694,'ESL 1 McAuliffe','Program',NULL),(695,'Homework Support 1st grade McAuliffe','Program',NULL),(696,'Homework Support 2nd grade McAuliffe','Program',NULL),(697,'Homework Support 3rd/4th grade McAuliffe','Program',NULL),(698,'Homework Support 5th/6th grade McAuliffe','Program',NULL),(699,'Musical Choir McAuliffe','Program',NULL),(700,'Parent Mentor Program McAuliffe','Program',NULL),(701,'Recreational Activities 3rd & 4th McAuliffe','Program',NULL),(702,'Recreational Activities 5th & 6th McAuliffe','Program',NULL),(703,'\"Soccer 3rd','Program',NULL),(704,'Sports Activities 3rd & 4th McAuliffe','Program',NULL),(705,'Sports Activities 5th & 6th McAuliffe','Program',NULL),(706,'Volleyball McAuliffe','Program',NULL),(707,'Zumba McAuliffe','Program',NULL),(708,'LSNA 51st Congress','Program',NULL),(709,'Volleyball Game vs CPS Volleyball Team','Program',NULL),(710,'id','Program',NULL),(711,'1705765','Program',NULL),(712,'1705766','Program',NULL),(713,'1705767','Program',NULL),(714,'1705768','Program',NULL),(715,'1705769','Program',NULL),(716,'1761303','Program',NULL),(717,'1761304','Program',NULL),(718,'1761305','Program',NULL),(719,'1761306','Program',NULL),(720,'1761307','Program',NULL),(721,'1761342','Program',NULL),(722,'1761343','Program',NULL),(723,'1761344','Program',NULL),(724,'1761361','Program',NULL),(725,'1761362','Program',NULL),(726,'1761363','Program',NULL),(727,'1761365','Program',NULL),(728,'1761367','Program',NULL),(729,'1761368','Program',NULL),(730,'1761370','Program',NULL),(731,'1761372','Program',NULL),(732,'1761376','Program',NULL),(733,'1761380','Program',NULL),(734,'1761383','Program',NULL),(735,'1761387','Program',NULL),(736,'1761389','Program',NULL),(737,'1761392','Program',NULL),(738,'1761394','Program',NULL),(739,'1850385','Program',NULL),(740,'1850395','Program',NULL),(741,'1850396','Program',NULL),(742,'1850397','Program',NULL),(743,'1850398','Program',NULL),(744,'1851018','Program',NULL),(745,'1851037','Program',NULL),(746,'1851040','Program',NULL),(747,'1851043','Program',NULL),(748,'1851047','Program',NULL),(749,'1851049','Program',NULL),(750,'1851050','Program',NULL),(751,'1946529','Program',NULL),(752,'1946530','Program',NULL),(753,'1946531','Program',NULL),(754,'1946532','Program',NULL),(755,'1946533','Program',NULL),(756,'1946534','Program',NULL),(757,'1946535','Program',NULL),(758,'1946536','Program',NULL),(759,'1946537','Program',NULL),(760,'1946538','Program',NULL),(761,'1946539','Program',NULL),(762,'1946540','Program',NULL),(763,'1946541','Program',NULL),(764,'1946542','Program',NULL),(765,'1946543','Program',NULL),(766,'1946544','Program',NULL),(767,'1706259','Program',NULL),(768,'1706260','Program',NULL),(769,'1706261','Program',NULL),(770,'1706262','Program',NULL),(771,'1706263','Program',NULL),(772,'1706264','Program',NULL),(773,'1706265','Program',NULL),(774,'1706266','Program',NULL),(775,'1706267','Program',NULL),(776,'1706268','Program',NULL),(777,'1706269','Program',NULL),(778,'1706270','Program',NULL),(779,'1706271','Program',NULL),(780,'1706272','Program',NULL),(781,'1706273','Program',NULL),(782,'1706274','Program',NULL),(783,'1706275','Program',NULL),(784,'1706276','Program',NULL),(785,'1706277','Program',NULL),(786,'1706278','Program',NULL),(787,'1706279','Program',NULL),(788,'1706280','Program',NULL),(789,'1706281','Program',NULL),(790,'1706282','Program',NULL),(791,'1706283','Program',NULL),(792,'1706284','Program',NULL),(793,'1706285','Program',NULL),(794,'1706286','Program',NULL),(795,'1706287','Program',NULL),(796,'1706288','Program',NULL),(797,'1759205','Program',NULL),(798,'1759576','Program',NULL),(799,'1759577','Program',NULL),(800,'1759578','Program',NULL),(801,'1759579','Program',NULL),(802,'1759580','Program',NULL),(803,'1759581','Program',NULL),(804,'1759582','Program',NULL),(805,'1759583','Program',NULL),(806,'1759584','Program',NULL),(807,'1759585','Program',NULL),(808,'1759586','Program',NULL),(809,'1759587','Program',NULL),(810,'1759588','Program',NULL),(811,'1759589','Program',NULL),(812,'1759590','Program',NULL),(813,'1759591','Program',NULL),(814,'1759592','Program',NULL),(815,'1759593','Program',NULL),(816,'1759594','Program',NULL),(817,'1759595','Program',NULL),(818,'1759596','Program',NULL),(819,'1759597','Program',NULL),(820,'1759599','Program',NULL),(821,'1759600','Program',NULL),(822,'1759601','Program',NULL),(823,'1759603','Program',NULL),(824,'1759604','Program',NULL),(825,'1760396','Program',NULL),(826,'1850279','Program',NULL),(827,'1850467','Program',NULL),(828,'1850468','Program',NULL),(829,'1850469','Program',NULL),(830,'1850470','Program',NULL),(831,'1850471','Program',NULL),(832,'1850472','Program',NULL),(833,'1850473','Program',NULL),(834,'1850475','Program',NULL),(835,'1850478','Program',NULL),(836,'1850483','Program',NULL),(837,'1850485','Program',NULL),(838,'1850486','Program',NULL),(839,'1850488','Program',NULL),(840,'1850493','Program',NULL),(841,'1850494','Program',NULL),(842,'1850495','Program',NULL),(843,'1850497','Program',NULL),(844,'1850499','Program',NULL),(845,'1850501','Program',NULL),(846,'1850503','Program',NULL),(847,'1850504','Program',NULL),(848,'1850506','Program',NULL),(849,'1850508','Program',NULL),(850,'1850510','Program',NULL),(851,'1850513','Program',NULL),(852,'1850515','Program',NULL),(853,'1850516','Program',NULL),(854,'1850517','Program',NULL),(855,'1850519','Program',NULL),(856,'1850521','Program',NULL),(857,'1850524','Program',NULL),(858,'1850525','Program',NULL),(859,'1850526','Program',NULL),(860,'1850527','Program',NULL),(861,'1850528','Program',NULL),(862,'1850529','Program',NULL),(863,'1850530','Program',NULL),(864,'1850531','Program',NULL),(865,'1850532','Program',NULL),(866,'1850533','Program',NULL),(867,'1850534','Program',NULL),(868,'1850535','Program',NULL),(869,'1941907','Program',NULL),(870,'1941908','Program',NULL),(871,'1941909','Program',NULL),(872,'1941910','Program',NULL),(873,'1941911','Program',NULL),(874,'1941912','Program',NULL),(875,'1941913','Program',NULL),(876,'1941914','Program',NULL),(877,'1941915','Program',NULL),(878,'1941916','Program',NULL),(879,'1941917','Program',NULL),(880,'1941918','Program',NULL),(881,'1941919','Program',NULL),(882,'1941920','Program',NULL),(883,'1941921','Program',NULL),(884,'1941922','Program',NULL),(885,'1942740','Program',NULL),(886,'1942741','Program',NULL),(887,'1942742','Program',NULL),(888,'1942743','Program',NULL),(889,'1942744','Program',NULL),(890,'1942745','Program',NULL),(891,'1942746','Program',NULL),(892,'1942747','Program',NULL),(893,'1942748','Program',NULL),(894,'1942749','Program',NULL),(895,'1707516','Program',NULL),(896,'1710014','Program',NULL),(897,'1710029','Program',NULL),(898,'1710033','Program',NULL),(899,'1710035','Program',NULL),(900,'1710038','Program',NULL),(901,'1710039','Program',NULL),(902,'1710049','Program',NULL),(903,'1710051','Program',NULL),(904,'1710053','Program',NULL),(905,'1710059','Program',NULL),(906,'1710061','Program',NULL),(907,'1710063','Program',NULL),(908,'1710065','Program',NULL),(909,'1710070','Program',NULL),(910,'1710171','Program',NULL),(911,'1710173','Program',NULL),(912,'1710174','Program',NULL),(913,'1710175','Program',NULL),(914,'1710177','Program',NULL),(915,'1710181','Program',NULL),(916,'1710182','Program',NULL),(917,'1710183','Program',NULL),(918,'1710184','Program',NULL),(919,'1710186','Program',NULL),(920,'1710187','Program',NULL),(921,'1710188','Program',NULL),(922,'1710189','Program',NULL),(923,'1710193','Program',NULL),(924,'1710195','Program',NULL),(925,'1710197','Program',NULL),(926,'1710204','Program',NULL),(927,'1710205','Program',NULL),(928,'1710207','Program',NULL),(929,'1710244','Program',NULL),(930,'1710245','Program',NULL),(931,'1710246','Program',NULL),(932,'1710247','Program',NULL),(933,'1710248','Program',NULL),(934,'1710249','Program',NULL),(935,'1710250','Program',NULL),(936,'1710251','Program',NULL),(937,'1710252','Program',NULL),(938,'1710253','Program',NULL),(939,'1728264','Program',NULL),(940,'1761279','Program',NULL),(941,'1761280','Program',NULL),(942,'1761281','Program',NULL),(943,'1761282','Program',NULL),(944,'1761283','Program',NULL),(945,'1761284','Program',NULL),(946,'1761285','Program',NULL),(947,'1761286','Program',NULL),(948,'1761287','Program',NULL),(949,'1761288','Program',NULL),(950,'1761289','Program',NULL),(951,'1761290','Program',NULL),(952,'1761291','Program',NULL),(953,'1761292','Program',NULL),(954,'1761293','Program',NULL),(955,'1761294','Program',NULL),(956,'1761295','Program',NULL),(957,'1761296','Program',NULL),(958,'1761297','Program',NULL),(959,'1761298','Program',NULL),(960,'1761299','Program',NULL),(961,'1761300','Program',NULL),(962,'1761301','Program',NULL),(963,'1761302','Program',NULL),(964,'1847197','Program',NULL),(965,'1847318','Program',NULL),(966,'1847628','Program',NULL),(967,'1847629','Program',NULL),(968,'1847630','Program',NULL),(969,'1847632','Program',NULL),(970,'1847634','Program',NULL),(971,'1847635','Program',NULL),(972,'1847636','Program',NULL),(973,'1847637','Program',NULL),(974,'1847638','Program',NULL),(975,'1847639','Program',NULL),(976,'1847640','Program',NULL),(977,'1847641','Program',NULL),(978,'1847642','Program',NULL),(979,'1847643','Program',NULL),(980,'1847645','Program',NULL),(981,'1847646','Program',NULL),(982,'1847647','Program',NULL),(983,'1847648','Program',NULL),(984,'1847649','Program',NULL),(985,'1847650','Program',NULL),(986,'1847651','Program',NULL),(987,'1847652','Program',NULL),(988,'1847653','Program',NULL),(989,'1847654','Program',NULL),(990,'1847655','Program',NULL),(991,'1847656','Program',NULL),(992,'1847657','Program',NULL),(993,'1847658','Program',NULL),(994,'1847659','Program',NULL),(995,'1847660','Program',NULL),(996,'1849984','Program',NULL),(997,'1849998','Program',NULL),(998,'1850000','Program',NULL),(999,'1850001','Program',NULL),(1000,'1947293','Program',NULL),(1001,'1948021','Program',NULL),(1002,'1948070','Program',NULL),(1003,'1948074','Program',NULL),(1004,'1948076','Program',NULL),(1005,'1948078','Program',NULL),(1006,'1948081','Program',NULL),(1007,'1948084','Program',NULL),(1008,'1948092','Program',NULL),(1009,'1948095','Program',NULL),(1010,'1948100','Program',NULL),(1011,'1948105','Program',NULL),(1012,'1948108','Program',NULL),(1013,'1948113','Program',NULL),(1014,'1948118','Program',NULL),(1015,'1948120','Program',NULL),(1016,'1948123','Program',NULL),(1017,'1710254','Program',NULL),(1018,'1710257','Program',NULL),(1019,'1710258','Program',NULL),(1020,'1710259','Program',NULL),(1021,'1710261','Program',NULL),(1022,'1710293','Program',NULL),(1023,'1710294','Program',NULL),(1024,'1760930','Program',NULL),(1025,'1760931','Program',NULL),(1026,'1760932','Program',NULL),(1027,'1761059','Program',NULL),(1028,'1850787','Program',NULL),(1029,'1850788','Program',NULL),(1030,'1850790','Program',NULL),(1031,'1850791','Program',NULL),(1032,'1850792','Program',NULL),(1033,'1850793','Program',NULL),(1034,'1850794','Program',NULL),(1035,'1850795','Program',NULL),(1036,'1850796','Program',NULL),(1037,'1850797','Program',NULL),(1038,'1945697','Program',NULL),(1039,'1945699','Program',NULL),(1040,'1945701','Program',NULL),(1041,'1945716','Program',NULL),(1042,'1945974','Program',NULL),(1043,'1945975','Program',NULL),(1044,'1945976','Program',NULL),(1045,'1945977','Program',NULL),(1046,'1945978','Program',NULL),(1047,'1945979','Program',NULL),(1048,'1945980','Program',NULL);
/*!40000 ALTER TABLE `Subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subcategory_Attendance`
--

DROP TABLE IF EXISTS `Subcategory_Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subcategory_Attendance` (
  `Subcategory_Attendance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subcategory_Date` int(11) DEFAULT NULL,
  `Participant_ID` int(11) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Type_of_Participation` int(11) DEFAULT NULL,
  PRIMARY KEY (`Subcategory_Attendance_ID`),
  KEY `date` (`Subcategory_Date`),
  KEY `attendee` (`Participant_ID`),
  CONSTRAINT `attendee` FOREIGN KEY (`Participant_ID`) REFERENCES `Participants` (`Participant_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `date` FOREIGN KEY (`Subcategory_Date`) REFERENCES `Subcategory_Dates` (`Wright_College_Program_Date_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subcategory_Attendance`
--

LOCK TABLES `Subcategory_Attendance` WRITE;
/*!40000 ALTER TABLE `Subcategory_Attendance` DISABLE KEYS */;
INSERT INTO `Subcategory_Attendance` VALUES (2,4,1,NULL,1),(3,5,1,NULL,1),(4,6,1,NULL,1),(6,1,1,NULL,4),(9,2,1,NULL,4),(10,10,3,NULL,NULL),(11,7,3,NULL,NULL),(13,19,10,NULL,NULL),(15,22,3,NULL,4),(19,12,9,NULL,2),(20,12,2,NULL,1),(21,28,1,NULL,2),(22,23,1,NULL,2),(24,25,3,NULL,NULL),(27,24,1,NULL,2),(28,23,3,NULL,4),(29,1,11,NULL,1),(30,1,3,NULL,3),(31,2,3,NULL,4),(32,2,8,NULL,1),(33,2,11,NULL,1),(34,3,3,NULL,3),(35,3,5,NULL,1),(36,3,8,NULL,1),(37,3,11,NULL,1),(38,3,1,NULL,4),(39,28,3,NULL,2),(40,8,3,NULL,3),(41,8,1,NULL,1),(42,8,11,NULL,1),(43,9,7,NULL,1),(46,33,7,NULL,NULL),(47,33,1,NULL,NULL),(48,33,12,NULL,NULL),(49,33,8,NULL,NULL),(50,32,7,NULL,NULL),(51,34,7,NULL,NULL),(53,12,59,NULL,4),(54,9,3,NULL,4),(55,36,75,NULL,4),(56,32,3,NULL,NULL),(57,8,8,NULL,1),(58,40,87,NULL,NULL),(59,41,1,NULL,NULL),(60,40,92,NULL,NULL),(61,18,59,NULL,NULL),(64,47,3,NULL,3),(65,47,87,NULL,2),(66,48,87,NULL,3),(68,50,82,NULL,NULL),(69,50,64,NULL,NULL),(70,51,2,NULL,NULL),(71,52,1,NULL,NULL),(72,52,87,NULL,NULL),(73,38,87,NULL,NULL),(74,38,8,NULL,NULL),(75,53,3,NULL,NULL),(78,61,82,NULL,NULL),(81,70,131,NULL,4),(82,70,109,NULL,1),(83,71,100,NULL,NULL),(84,72,72,NULL,NULL),(85,77,124,NULL,NULL),(86,84,66,NULL,NULL),(88,70,150,NULL,1),(89,36,87,NULL,NULL),(90,1,87,NULL,NULL);
/*!40000 ALTER TABLE `Subcategory_Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subcategory_Dates`
--

DROP TABLE IF EXISTS `Subcategory_Dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subcategory_Dates` (
  `Wright_College_Program_Date_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subcategory_ID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Activity_Name` varchar(150) DEFAULT NULL,
  `Activity_Type` int(11) DEFAULT NULL,
  `Meeting_Note` text,
  PRIMARY KEY (`Wright_College_Program_Date_ID`),
  KEY `program_on_date` (`Subcategory_ID`),
  KEY `sub_for_date` (`Subcategory_ID`),
  CONSTRAINT `sub_for_date` FOREIGN KEY (`Subcategory_ID`) REFERENCES `Subcategories` (`Subcategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subcategory_Dates`
--

LOCK TABLES `Subcategory_Dates` WRITE;
/*!40000 ALTER TABLE `Subcategory_Dates` DISABLE KEYS */;
INSERT INTO `Subcategory_Dates` VALUES (1,1,'2013-02-19','Introductory Meeting for Lathrop Residents',8,NULL),(2,1,'2013-02-26','Recruitment of Lathrop Residents',5,NULL),(3,1,'2013-03-05','Rally outside Lathrop to keep the homes open.',3,NULL),(4,2,'2013-02-20',NULL,NULL,NULL),(5,2,'2013-02-27',NULL,NULL,NULL),(6,2,'2013-03-06',NULL,NULL,NULL),(7,3,'2013-02-13',NULL,NULL,NULL),(8,1,'2013-03-12','How did we do? discussion.',1,NULL),(9,4,'2013-02-01',NULL,NULL,NULL),(10,5,'2013-02-19',NULL,NULL,NULL),(11,5,'2013-02-26',NULL,NULL,NULL),(12,14,'2013-03-01',NULL,NULL,NULL),(13,14,'2013-03-15',NULL,NULL,NULL),(14,14,'2013-03-29',NULL,NULL,NULL),(15,14,'2013-04-12',NULL,NULL,NULL),(16,14,'2013-04-26',NULL,NULL,NULL),(17,14,'2013-05-10',NULL,NULL,NULL),(18,14,'2013-05-24',NULL,NULL,NULL),(19,9,'2013-01-01',NULL,NULL,NULL),(20,9,'2013-01-08',NULL,NULL,NULL),(21,8,'2013-02-28',NULL,NULL,NULL),(22,10,'2013-03-01',NULL,NULL,'Whoa.  Beyonce was here!  In a philanthropic capacity.'),(23,19,'2013-01-04',NULL,1,NULL),(24,19,'2013-01-11',NULL,2,NULL),(25,19,'2013-01-18',NULL,3,NULL),(26,19,'2013-01-25',NULL,4,NULL),(27,19,'2013-02-01',NULL,5,NULL),(28,1,'2013-03-07','Press conference to follow up on last week\'s rally',4,NULL),(32,65,'2013-04-01','',0,NULL),(33,65,'2013-04-15','',0,NULL),(34,65,'2013-04-30','',0,NULL),(36,44,'2013-04-22','Garden Cleanup',10,NULL),(37,2,'0000-00-00','',0,NULL),(38,66,'2013-05-07','',0,NULL),(39,66,'2013-05-07','',0,NULL),(40,53,'2013-03-01','',0,NULL),(41,10,'2013-05-14','Taryn Meeting',1,NULL),(43,10,'2013-05-20','Test, test',0,NULL),(44,10,'2013-01-05','Event name',0,'This was, in fact, a non-event.\n(like)\n'),(47,4,'2013-05-28','TTM TEST',1,NULL),(48,4,'2013-05-28','TTM TEST',1,NULL),(49,61,'0000-00-00','',0,NULL),(50,62,'2013-05-10','',0,NULL),(51,62,'2012-05-10','',0,NULL),(52,66,'2011-05-10','',0,NULL),(53,4,'2011-05-20','Event name',0,NULL),(54,2,'0000-00-00','',0,NULL),(59,10,'2013-05-20','Test, Test The Second',0,NULL),(60,10,'2013-05-01','May Breakfast',0,NULL),(61,32,'2013-06-05','testing 2',10,' meeting testing notes 1 view only\n'),(63,10,'2013-06-01','Meteorological Summer Begins',3,'It was unseasonably cool.'),(65,42,'2013-06-01','Beach Party',10,'Next time, remember sunscreen.'),(66,42,'2013-06-08','Garden Party',10,''),(67,42,'2013-06-15','Tea Party',10,''),(70,25,'2013-06-10','Testing Role',2,'two attendees on our board\n'),(71,357,'0000-00-00','',0,''),(72,357,'0000-00-00','',0,''),(73,353,'0000-00-00','',0,''),(74,50,'2012-11-27','Springfield Advocacy Day',8,''),(77,355,'0000-00-00','',0,''),(78,27,'2013-06-17','viewonly',9,''),(79,10,'2013-06-21','Test 2',3,''),(80,10,'2013-06-21','Test 2',3,''),(81,22,'0000-00-00','',0,''),(82,22,'0000-00-00','',0,''),(83,22,'0000-00-00','',0,''),(84,22,'2013-06-19','',0,''),(85,374,'2013-06-21','Meet with Suheily',1,'We discuss adding Goals and developement sessions under participants profile'),(86,51,'2013-06-30','Check Campaign Requirement',2,''),(88,28,'2013-07-13','Neighborhood council meeting',1,''),(89,374,'2013-07-09','TTM Testing',10,''),(90,25,'2013-07-13','Board Meeting',2,''),(91,20,'2013-07-01','',0,''),(92,1,'2013-07-25','Lathrop Rally',3,''),(93,1,'2013-07-25','Lathrop Rally',3,''),(96,46,'2014-02-12','22222222222',3,'654654'),(97,27,'0000-00-00','',0,'');
/*!40000 ALTER TABLE `Subcategory_Dates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-19 10:22:21