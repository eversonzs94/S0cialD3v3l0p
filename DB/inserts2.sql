INSERT INTO `socialdevelop`.`tblroles` (`roleName`) VALUES ('Coordinator');
INSERT INTO `socialdevelop`.`tblroles` (`roleName`) VALUES ('Developer');

UPDATE `socialdevelop`.`tblusers` SET `gender`='male' WHERE `idUser`='1';
UPDATE `socialdevelop`.`tblusers` SET `gender`='female' WHERE `idUser`='2';
UPDATE `socialdevelop`.`tblusers` SET `gender`='female' WHERE `idUser`='3';

ALTER TABLE `socialdevelop`.`tblskills` 
CHANGE COLUMN `skillName` `skillName` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL ;

INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('HTML');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('CSS');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Java');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('JavaScript');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('PHP');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('MySQL');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Oracle');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('MongoDB');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Photoshop');
INSERT INTO `socialdevelop`.`tblskills` (`skillName`) VALUES ('Mobile');

LOCK TABLES `tblcollaborationsdocs` WRITE;
/*!40000 ALTER TABLE `tblcollaborationsdocs` DISABLE KEYS */;
INSERT INTO `tblcollaborationsdocs` VALUES (23,1,2,1,'canceled','2017-07-19','2017-07-19 16:38:08'),(23,1,3,1,'waiting','2017-07-19','2017-07-19 17:21:42'),(27,5,1,2,'waiting','2017-07-19','2017-07-19 20:20:18'),(26,1,1,3,'waiting','2017-07-19','2017-07-19 20:27:48');
/*!40000 ALTER TABLE `tblcollaborationsdocs` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tblskillsusers` WRITE;
/*!40000 ALTER TABLE `tblskillsusers` DISABLE KEYS */;
INSERT INTO `tblskillsusers` VALUES (1,1,10),(1,2,9),(1,3,8),(1,4,7),(1,5,6),(2,1,5),(2,2,9),(2,6,8),(3,7,7),(3,8,6),(4,9,5);
/*!40000 ALTER TABLE `tblskillsusers` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbltasksdevelopers` WRITE;
/*!40000 ALTER TABLE `tbltasksdevelopers` DISABLE KEYS */;
INSERT INTO `tbltasksdevelopers` VALUES (3,26,NULL,NULL),(3,26,NULL,NULL),(2,27,NULL,NULL),(3,26,NULL,NULL),(3,26,NULL,NULL),(1,27,NULL,NULL);
/*!40000 ALTER TABLE `tbltasksdevelopers` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbltasksskillslevel` WRITE;
/*!40000 ALTER TABLE `tbltasksskillslevel` DISABLE KEYS */;
INSERT INTO `tbltasksskillslevel` VALUES (10,23,9),(9,23,8),(7,23,5),(6,24,8),(7,24,5),(2,25,10),(1,26,10),(3,26,5),(2,27,5),(5,27,10),(4,27,6),(1,27,1),(1,28,3),(6,28,4);
/*!40000 ALTER TABLE `tbltasksskillslevel` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbltype` WRITE;
/*!40000 ALTER TABLE `tbltype` DISABLE KEYS */;
INSERT INTO `tbltype` VALUES (1,'Development'),(2,'Graphics'),(3,'Documentation'),(4,'Type1');
/*!40000 ALTER TABLE `tbltype` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tbltypesskill` WRITE;
/*!40000 ALTER TABLE `tbltypesskill` DISABLE KEYS */;
INSERT INTO `tbltypesskill` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(6,2),(7,2),(8,2),(9,3),(10,3);
/*!40000 ALTER TABLE `tbltypesskill` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `tblusersprojects` WRITE;
/*!40000 ALTER TABLE `tblusersprojects` DISABLE KEYS */;
INSERT INTO `tblusersprojects` VALUES (2,11,1),(1,1,1),(2,2,1),(3,3,1),(4,4,1),(1,5,1),(2,6,1),(3,7,1),(4,8,1),(2,9,1),(1,13,1),(1,14,1),(3,15,1);
/*!40000 ALTER TABLE `tblusersprojects` ENABLE KEYS */;
UNLOCK TABLES;