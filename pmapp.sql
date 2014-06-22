CREATE DATABASE  IF NOT EXISTS `pmapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pmapp`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: pmapp
-- ------------------------------------------------------
-- Server version	5.5.35

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
-- Table structure for table `AuthenticationToken`
--

DROP TABLE IF EXISTS `AuthenticationToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthenticationToken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tokenValue` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthenticationToken`
--

LOCK TABLES `AuthenticationToken` WRITE;
/*!40000 ALTER TABLE `AuthenticationToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `AuthenticationToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `comments_by` varchar(45) DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fktaskid_idx` (`task_id`),
  CONSTRAINT `fktaskid` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'header should be good one','ali',2);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'ahmed','ali','ahmed@yahoo.com','2222','Male','0',NULL,NULL),(2,'laiuqe','daud','laiuqe@yahoo.com','2234444','Male','0',NULL,NULL),(3,'laiuqe','daud','laiuqe@yahoo.com','2234444','Male','0',NULL,NULL),(10,'inayat','ali','inaya@yahoo.com','444444','inaya@yahoo.com','0',NULL,NULL),(11,'HARIS','ALI','HARI@YAHOO.COM','DDDDDD','HARI@YAHOO.COM','0',NULL,NULL),(12,'tttt','tttt','ade@yahoo.com','tttttttt','ade@yahoo.com','0',NULL,NULL),(13,'gsgsg','ali','ade@yahoo.com','ddddddd','ade@yahoo.com','0',NULL,NULL),(15,'aa','waa','admin@abc.com','$2a$10$qwR6WZRZo7cIkUSRXLhDY.w0TzTK1ipTDCt94SRrbxJ7feIZqWLdm','M',NULL,1,NULL),(16,'aa','waa','mysss@abc.com','$2a$10$/uQT5gVyHQVcS9Iz3M2gs.Lk5uewAumaQ8H5.rx0uSjqaxRZOY2TK','M',NULL,1,NULL),(17,'aa','waa','mys@abc.com','$2a$10$s5qy0fX2K327cGT/IunrUuK.sQFjyao0Gg.QFHUdLu82lgCKgJAMG','M',NULL,1,NULL),(18,NULL,NULL,NULL,'$2a$10$S7Bo/zEKkKwmlxFD2TxMo.DGA7h0QOYpOtWnVQ2losf990/fH.vWS',NULL,NULL,1,'testnews'),(19,NULL,NULL,NULL,'$2a$10$TG/lThS9JywSPIP1tyOHrec1yrvt171/LEXobN6txgRkky9NR7Fo2',NULL,NULL,1,'testnews'),(20,NULL,NULL,NULL,'$2a$10$e34FkG14u34QENi4vthr9uzcLCLw2iY.liH7bpAEHaWFclmUOpCwO',NULL,NULL,1,'system'),(21,NULL,NULL,NULL,'$2a$10$JALhm3v/Net05Ia0AisWFeM6ewOlTjiv0QorOjAHSRDLpueDKhkRC',NULL,NULL,1,'system'),(26,'sds','ali','inaya@yahoo.com','$2a$10$gnpboSlFVk0TfXdGYERhruEDiSOB079pZVINodWviZEFdTDSGOkam','M',NULL,1,NULL),(27,'sgdgdgdgdgdgdgdgdgdgdgdgd','dddeee','AS@YAHOO.COM','$2a$10$JXVOzvN53xOWQx00jhcs8OPMCiNLtgC0zo.AeOYR2UIFCumwDxAMS','M',NULL,1,NULL),(28,'gsgsg','sgdsgsgs','gsgdsgd@yahoo.com','$2a$10$Y5IJVYNj7NBbXMgdzvw.k.RALn3gAZbYpUmQAer0qkW59xt8G6iHO','M',NULL,1,NULL),(29,'hrhrhrhrh','rrr','ade@yahoo.com','$2a$10$Wn9gb49VCnffgzZXiBlw5OKBK82w4Itj49NXdYD37fdBZk5E/K85e','M',NULL,1,NULL),(30,'44gsgsg','ali','ade@yahoo.com','$2a$10$hU4K.F6KApOJh.ZX4dprJ.k8E2iqHXhlTHXiKCgUIgXPiK.wADY/y','M',NULL,1,NULL),(31,'rettt','ali','inaya@yahoo.com','$2a$10$rRhSzXQ6eeSZAI6B4AIJE.LvYDJZx9B59wBfULGJDwdCC6vVToIim','M',NULL,1,NULL),(32,NULL,NULL,NULL,'$2a$10$uUZC8XNDA8PhDyGB616Xs.cdSS6bQWhTJgjfKoW.pZe5t3CsLhgRW',NULL,'0',1,'admin'),(33,'gsgsg','sgdsgsgs','gsgdsgd@yahoo.com','$2a$10$iQUHWf2XyTnxar1qTyg/Ne30LLf8sFxh3STGLVb2s2FlpNOEbGn1O','M','0',1,NULL),(34,'kamran','ali','kamran@yahoo.com','$2a$10$9kMcyLWjTBt71TZ5r9vh1Ou4S/NQTyvMqjgAhI1RxsdbaRocoExJ2','M','0',1,NULL),(35,'new','new one','sgse@yaooc.com','$2a$10$3NJ4tFHhEJI40dYJmtFNfOvH2IsILLorwSmu8MW2N5gkLMA65Fc02','M','0',1,NULL),(36,'gseeeeg','gsggsgs','ade@yahoo.com','$2a$10$j6glxF0Cn0YbyraK41MIw.281X/f7YUvi.g92Z2yzZDfTJyGoQ7Z.','M','0',1,NULL),(37,'gsgsg','sgdsgsgs','ade@yahoo.com','$2a$10$dTqct/Crt6BX8E.oNX7QXeIKtsEAY1KQqB/MwmhsWxc3hOu71EajC','M','0',1,NULL),(38,'gsgsg','sgdsgsgs','gsgdsgd@yahoo.com','$2a$10$zajMJzPxjJkijP14149CYeaz3G6Oz9QKwAR9qFRxFPxCuXp3S7tsG','M','0',1,NULL),(39,'gsgsg','sgdsgsgs','ade@yahoo.com','$2a$10$70eBgdLHAM9jfW1qD8soDeXY4QNC7yta5LSkkkMRLzVpLKxBTxaoK','M','0',1,NULL),(40,NULL,NULL,NULL,'$2a$10$U.aK4v6g/MIPzOzM/pTh3OkxMAUWICDJw600/n0vRLYXISVLX.ATm',NULL,'0',1,'ahmed'),(41,'laique','daud','lq@yahoo.cm','$2a$10$zfrbn7xGQ3dUO6DovCmBw.lx9YTHq/bS7Eb8tbTI4oLdOwYXCje1i','M','0',1,'lq@yahoo.cm'),(42,'ali','ali','ali@yahoo.com','$2a$10$SsoKdlW8zg0GgRO3rT7mVutOK.sXYCUo/j5xf7tRXkghs8nQwWdAW','M','0',1,'ali@yahoo.com'),(43,'test','user','test@yahoo.com','$2a$10$gkNxx7YBl.fGpqFflZdV3.od1pohh2O4gZ9ymgmHFVBI2lD1uLwKm','M','0',1,'test@yahoo.com'),(44,'test1','test1','test1@yahoo.com','$2a$10$Vrsp0vIvU5uoyFaSg1vEcuB1fBuqwl6VRiNg/cFk/jiEY/txe0iQm','M','0',1,'test1@yahoo.com'),(45,'haris','ali','haris@gmaill.com','$2a$10$6qJhRMR0XqmTXd6iU6mWp.IuMDvnwzv4OlgRDdNnRBjy74/rREBX.','M','0',1,'haris@gmaill.com'),(46,'cool','cool','cool@yahoo.com','$2a$10$lKtIrcTgku4qkQ6blfFn5OcLFm3hW.tn5O8dxGBvlpd1HXDBipiL2','M','0',1,'cool@yahoo.com'),(47,'sgeeeuser','tst','tst@yahoo.com','$2a$10$TjdiiYvbTWXIdWk/5bLc..ri8EnpT1ehgeMjMVJ/J0tOO8lV5xM2e','M','0',1,'tst@yahoo.com'),(48,'helod','helod','helod@yahoo.com','$2a$10$AY1hk45/zDIS9KgloTOQL.oHmuJfsOUfAzJEEgSItEe.jBqnY2S1W','M','0',1,'helod@yahoo.com'),(49,'SGSGSG','GSDG','SGD@yahooo.com','$2a$10$2DG7dpbP.08RH5qVrKGmYeyEBCVaMX/YFesHLR3qIPKGVC/stGxHG','M','0',1,'SGD@yahooo.com'),(50,'fistname','ali','fist@yahoo.com','$2a$10$5T0Lbx7D2Qik1qx7U2pf0eZIt.zH0Hcp1hh/KJdUbO1LUCIVGfDre','M','0',1,'fist@yahoo.com'),(51,'gsgsg','sgdsgsgs','dd@yahoo.com','$2a$10$5au5u4N5BSG68FIvjpqgTuXOGlt5ycCkVWIZ/IXVbYRaRhqqZYDp6','M','0',1,'dd@yahoo.com'),(52,'egdsgsg','sgsgdsgsg','sgd@yahoo.com','$2a$10$xEmbVUxQB4Og5H.fRnpZPOWFW9IBItHAl2b63U/80jVqHtqADTcp2','M','0',1,'sgd@yahoo.com'),(53,'gsgsg','sgdsgsgs','ade33@yahoo.com','$2a$10$BCJRjamZ2XCV71w/s5M1DeAHRSsWtCEPA8WlxSE.t7nKIaxGeA4lS','M','0',1,'ade33@yahoo.com'),(54,'gsgsgs','ali','gsdgdsgd@yahoo.com','$2a$10$0.5hKlojb.O63kLse8t0vuXSnXWuuSnxsOkE.ges/eghEwrSbEmcu','M','0',1,'gsdgdsgd@yahoo.com'),(55,'fdffd','dfdfdf','gggg@yahoo.com','$2a$10$aob56EJSWqT.mqe/xnPAFOmdo8Rz/T8bHpvK6qpyPOf1yRCjnN72q','M','0',1,'gggg@yahoo.com'),(56,'ewlq','newlq','new@yahoo.com','$2a$10$2oSMYNui9/Kicq5HEQeN0.MT.J4JWSqVTmDoPjHz5Ep92Xe7H68i.','M','0',1,'new@yahoo.com'),(57,'gsgsg','sgdsgsgs','addde@yahoo.com','$2a$10$Nz2OtvdM64zoxLZjENFufeedSkWEcPWdTloaDR1zXMZH.xemDuYOe','M','0',1,'addde@yahoo.com'),(58,'gsgsg','sgdsgsgs','dddd@yahoo.com','$2a$10$e3SENqra7Q9yHlmDMPWyTOhdioJDtyTVasQ8uv0M7euPGeiZFWJgK','M','0',1,'dddd@yahoo.com'),(59,'gsgsg','ali','ade@yahoo.com','$2a$10$tQ51JCk8tOOsfsDKuuULlebVa4xQ5yvZtLuyb6e1GbWXSaB2P4z0G','M','0',1,'ade@yahoo.com'),(60,'gsgsg','sgdsgsgs','assde@yahoo.com','$2a$10$VH7UChFXuIx5MxOn6YfnsuWvf8BhViaqWJRHTSMrdEfcacKVmT5Ya','M','0',1,'assde@yahoo.com'),(61,'33eee','d','wade@yahoo.com','$2a$10$0XSMdFb.1JJ87/iMS95SMuVcJbw9eVZLpm9NdKge8DVMB5ThuH6Ou','M','0',1,'wade@yahoo.com'),(62,'gsgsg','sgsgsgs','dsgsgs@yahoo.com','$2a$10$EZzI/EAaU9/1jOvlwaIiY.l9nbnPJg9BIaV2RF814tS4xSUUh5nK6','M','0',1,'dsgsgs@yahoo.com'),(63,'ali','ali','ali@yahoo.com','$2a$10$38bfo13kUhWB4BZwEh7G8ORvJTQUG27FimDoK9/v5K2wA50R811Iq','M','0',1,'ali@yahoo.com'),(64,'afaf','affaaf','ahmedshaiafkh006@gmail.com','$2a$10$WYYiyVp9NWx9TFLDKaVBs.tavb7dg6aoAOpBT1sW0vct2QrJJ0chi','W','0',1,'ahmedshaiafkh006@gmail.com'),(65,'ggsgsgs','sgdsgds','ahmedshaikgsgdh006@gmail.com','$2a$10$rG1z0G0eJbqTroYJqL4trOcdth/S7dYncMiZzqDCpUDx/sZQUGMq2','M','0',1,'ahmedshaikgsgdh006@gmail.com'),(66,'dhdhfd','dhdhdfhdfh','ahmedshddaikh006@gmail.com','$2a$10$707qNObUlMTPVryCC0NsCu.FtMwerMsnxQ4/vmDNiaFPg9Vem6uEi','M','0',1,'ahmedshddaikh006@gmail.com'),(67,'sdsgsdgs','sgsdg','assde@yahoo.com','$2a$10$HebPLqYWcr2AZPVioEUc8ONUwpPtBntkjsTCyl2C1QJgNDXPkvV.2','M','0',1,'assde@yahoo.com'),(68,'33eee','dddd','ssade@yahoo.com','$2a$10$N2KS9ZVzZDR9OuvKkzi4OuCEg0CEGkSPr49iwUuumbgwscZh5PLey','M','0',1,'ssade@yahoo.com'),(69,'wwwwaliddd','sgdsgsgs','wwwade@yahoo.com','$2a$10$B3YAqMqWV.uAx..ScbyoAueFudMY0kycKLtOBcSsnaRnBIxQ2Izj.','M','0',1,'wwwade@yahoo.com'),(70,'tttttsgsgs','ttttttali','ttttade@yahoo.com','$2a$10$JeKsZdspS4uVk8Bq1egt3.r/4EA.kufoK6mK5BuE1AzSoBOHrvyhm','M','0',1,'ttttade@yahoo.com'),(71,'eee33eee','ali','dsade@yahoo.com','$2a$10$EEupnHWMsJRmrb83UnJG5ewBp1cn3KoTRTdxxbR.GW8YNXImcVLXi','M','0',1,'dsade@yahoo.com'),(72,'zzd33eee','ali','ewwwade@yahoo.com','$2a$10$bZ3NUnH.6QFZ6Jt4myrMDOldvlnwACo2wsKd4kcaOc9a26XC3/zOu','M','0',1,'ewwwade@yahoo.com'),(73,'mmm33eee','mmmali','mmmade@yahoo.com','$2a$10$AuYJUddZ7qm0NwmxueaLZO.gss3nAzeBHqXWtNJNpLUYR9TzPYcOC','M','0',1,'mmmade@yahoo.com'),(74,'yyy33eee','yyyali','yyyade@yahoo.com','$2a$10$hBk48uc99q1CGGcXO.g4euAoa9yDcbLzSwJComQ.7QnY0gaMgYXHK','M','0',1,'yyyade@yahoo.com'),(75,'ooosdsdsdgsgsg','oalio','ooade@yahoo.com','$2a$10$R3dxFCf/C1Tn6sh1e18.t.d0NPRK2dDKUyQPNFKNmRK3Ep0Sp0HU6','M','0',1,'ooade@yahoo.com'),(76,'eew33eee','wwwali','eeeade@yahoo.com','$2a$10$GOT.LD6QXIuQJ4.Tsy9uMeOKe4oqd6OeLhUaIvh9vJBh5PaExqVE6','M','0',1,'eeeade@yahoo.com'),(77,'qwqgsgsg','qwqwali','qwqwade@yahoo.com','$2a$10$JOXGgwWXc8P.883aT0FzZOZ9FarlBVUcHWBGSqr7Nuo3CpK9bHUd6','M','0',1,'qwqwade@yahoo.com'),(78,'uyuy33eee','uyuyali','uyade@yahoo.com','$2a$10$l2pHmRBBW2W4Nxxk0FvLI.q/2eIYY62M5jN3tu5.KM18pul5rdtXW','M','0',1,'uyade@yahoo.com'),(79,'ii33eee','iiiali','iiiiade@yahoo.com','$2a$10$jG7grzM4rPfsWQe2Kp0z3.L0qY6Cp8LqIdmQpAPcaFU4BXX7PlgVi','M','0',1,'iiiiade@yahoo.com'),(80,'bvbvbvgsgsg','bvbvali','bvbvade@yahoo.com','$2a$10$FbGAS9Ekx95JnI.4zedbtutaY5OHCWsx1/ZGcnO1trztZ0MQfwhZ.','M','0',1,'bvbvade@yahoo.com'),(81,'gsgsg','sgdsgsgs','ade@yahoo.com','$2a$10$xZwvg8DASKArKX/vIDse.eI4P5awTE2DLJYE8evQYC7xDF2nskjPy','M','0',1,'ade@yahoo.com'),(82,'33eee','ali','ade@yahoo.com','$2a$10$tWkC2yvMFEsTbc4zjuS8NOUFpTwGN1E9vo2N6fS.SHcTzSzfFLNKC','M','0',1,'ade@yahoo.com'),(83,'trtrtgsgsg','tttali','ttest1@yahoo.com','$2a$10$kTz5gTc6aIzp4LgyLI84aeM8JiYcqUD.NzoIVJWRFvfENkr0s5OHC','M','0',1,'ttest1@yahoo.com'),(84,'33eee','ali','gsgdsgd@yahoo.com','$2a$10$0wjSk2fiQUg/N2Z3FN.qpOl9vjl03T5lZSvzcLe.uaYwYCxJ4iy62','M','0',1,'gsgdsgd@yahoo.com'),(85,'gg33eee','ggsgdsgsgs','ggade@yahoo.com','$2a$10$DifJi3VkUmfeWpfFY0aY/uF4FAjMArzLk6hnH3oMDDEI5lSn4kFtO','M','0',1,'ggade@yahoo.com'),(86,'sggsgs','sggs','ahmeddsdsgshaikh006@gmail.com','$2a$10$VS3ZLjkwfIAM2jhaebqd4elnNoLxcJ2ssFf9rAKK.AAoo4spqEjyq','M','0',1,'ahmeddsdsgshaikh006@gmail.com'),(87,'sshs','shsh','ahmedshadddikh006@gmail.com','$2a$10$YyQM5zNtcexji4CL3ZP2Ru6ecBajIDa5TKsA7vrYn3EX09y5ZRU12','M','0',1,'ahmedshadddikh006@gmail.com'),(88,'sbsbsb','sbsdbd','ahmedshaikdbdbdh006@gmail.com','$2a$10$2Nx.uZ9m.KIlUBNGG4oRlOo6oAKaxXmoHgh4c1/ocgCcJL19bCv9S','M','0',1,'ahmedshaikdbdbdh006@gmail.com'),(89,'afaf','sdsg','ahmedddshaikh006@gmail.com','$2a$10$aq/lxAu/Q7Az5vMAkas/q.tj4UlFrowePlMcg.l/6D3DzMz5EVl2a','M','0',1,'ahmedddshaikh006@gmail.com'),(90,'ahmed','ali','ahmedshaikh006@gmail.com','$2a$10$Pt7AbFu5ijgcxLLcuAoTKemaJwhjVb5BVTmfv3gOoU42rHacy0imu','M','0',1,'ahmedshaikh006@gmail.com'),(91,'dhdhfdadad','affaaf','asadd@gmail.com','$2a$10$UwMSvn/JChSeUTFYxsyOxuGtVzQ3dTpDwOJrShbQRb4BnHZdkOhnC','M','0',1,'asadd@gmail.com'),(92,'idkhan','id','id@yahoo.com','$2a$10$FbJhnB8NV6pQzf35JPZIieofGxEXbY2EaHqVRu.1qi1YoPleNTTPO','M','0',1,'id@yahoo.com'),(93,'imran','ali','imra@yahoo.com','$2a$10$RXUKWXj5U3S1bKH2QQ/0V.ILU6gHGypiTWkk3KDNx9ghQrIOMzYt.','M','0',1,'imra@yahoo.com'),(94,'sgsg','sgsgsd','sgsd@yahoo.com','$2a$10$WSvqxiqzz3vlQtOuXrks6.rZkOD04t0U9QVhvlE3q3yVMrDmY.fuq','M','0',1,'sgsd@yahoo.com');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_role`
--

DROP TABLE IF EXISTS `person_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_role` (
  `role_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `version` varchar(45) DEFAULT NULL,
  KEY `FKPERSONROLE_idx` (`person_id`),
  CONSTRAINT `FKPERSONROLE` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_role`
--

LOCK TABLES `person_role` WRITE;
/*!40000 ALTER TABLE `person_role` DISABLE KEYS */;
INSERT INTO `person_role` VALUES (1,1,'ew'),(5,15,NULL),(7,16,NULL),(7,20,NULL),(7,21,NULL),(7,32,NULL),(7,40,NULL),(7,90,NULL);
/*!40000 ALTER TABLE `person_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Cobone','cobone project','0'),(2,'Triperna','cobone.com','1'),(3,'Pm project','fdsfsfdsfd','0');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority` varchar(45) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (7,'ROLE_ADMIN','0'),(8,'ROLE_USER','0');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `reported_by` int(11) DEFAULT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_idx` (`project_id`),
  KEY `FKPERSONID1_idx` (`assign_to`),
  CONSTRAINT `FKPROJECTID` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'add header','add headder to home ','OPEN','LOW',0,0,1,NULL),(2,'add footer','add footer to home ','OPEN','LOW',0,0,1,NULL);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-22 11:41:16
