/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.28 : Database - bank
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bank`;

/*Table structure for table `acc_details` */

DROP TABLE IF EXISTS `acc_details`;

CREATE TABLE `acc_details` (
  `acc_no` int(10) unsigned NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `acc_type` varchar(10) DEFAULT NULL,
  `details` varchar(25) DEFAULT NULL,
  `balance` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`acc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `acc_details` */

insert  into `acc_details`(`acc_no`,`uname`,`acc_type`,`details`,`balance`) values (1115656081,'Robert','CURRENT','handy current account',300000),(1222053663,'Robert',NULL,NULL,NULL),(1234686899,'null',NULL,NULL,NULL),(1353602400,'Robert',NULL,NULL,NULL),(1562475508,'Robert',NULL,NULL,NULL),(1574794164,'Robert','CURRENT','second current account',400000),(1607675844,'Robert','SAVING','Long Term account',300000),(1836191538,'Robert','STUDENT','new acc',0),(1842404999,'Robert',NULL,NULL,NULL);

/*Table structure for table `transfer` */

DROP TABLE IF EXISTS `transfer`;

CREATE TABLE `transfer` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `acc_no` int(11) DEFAULT NULL,
  `dest_acc` int(11) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  `time1` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `transfer` */

insert  into `transfer`(`ID`,`uname`,`acc_no`,`dest_acc`,`amt`,`details`,`time1`) values (3,'Robert',1115656081,1607675844,500000,'Transfer to my saving account please','Thu Jun 20 14:46:42 BST 2013'),(4,'Robert',1607675844,1115656081,100000,'to current a/c','Fri Jun 21 11:32:06 BST 2013');

/*Table structure for table `tx_details` */

DROP TABLE IF EXISTS `tx_details`;

CREATE TABLE `tx_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `acc_no` int(11) DEFAULT NULL,
  `operation` varchar(25) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `time1` varchar(40) DEFAULT NULL,
  `isnew` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `tx_details` */

insert  into `tx_details`(`id`,`uname`,`acc_no`,`operation`,`amt`,`balance`,`time1`,`isnew`) values (32,'Robert',1115656081,'DEPOSIT',100000,100000,'Thu Jun 20 14:44:15 BST 2013','YES'),(33,'Robert',1115656081,'DEPOSIT',200000,300000,'Thu Jun 20 14:44:22 BST 2013','YES'),(34,'Robert',1115656081,'DEPOSIT',100000,400000,'Thu Jun 20 14:44:29 BST 2013','YES'),(35,'Robert',1115656081,'DEPOSIT',200000,600000,'Thu Jun 20 14:44:38 BST 2013','YES'),(38,'Robert',1115656081,'TRANSFER FROM',500000,100000,'Thu Jun 20 14:46:42 BST 2013','YES'),(39,'Robert',1607675844,'TRANSFER TO',500000,500000,'Thu Jun 20 14:46:42 BST 2013','YES'),(40,'Robert',1115656081,'DEPOSIT',300000,400000,'Thu Jun 20 14:47:09 BST 2013','YES'),(41,'Robert',1115656081,'WITHDRAW',100000,300000,'Thu Jun 20 14:47:16 BST 2013','YES'),(42,'Robert',1574794164,'DEPOSIT',200000,200000,'Thu Jun 20 20:13:19 BST 2013','YES'),(43,'Robert',1574794164,'DEPOSIT',400000,600000,'Thu Jun 20 20:13:31 BST 2013','YES'),(44,'Robert',1115656081,'WITHDRAW',100000,200000,'Thu Jun 20 20:13:52 BST 2013','YES'),(45,'Robert',1607675844,'WITHDRAW',100000,400000,'Thu Jun 20 20:14:47 BST 2013','YES'),(46,'Robert',1574794164,'WITHDRAW',100000,500000,'Thu Jun 20 20:15:03 BST 2013','YES'),(47,'Robert',1115656081,'DEPOSIT',100000,300000,'Fri Jun 21 11:27:30 BST 2013','YES'),(48,'Robert',1574794164,'WITHDRAW',100000,400000,'Fri Jun 21 11:28:13 BST 2013','YES'),(49,'Robert',1115656081,'WITHDRAW',100000,200000,'Fri Jun 21 11:28:40 BST 2013','YES'),(50,'Robert',1607675844,'TRANSFER FROM',100000,300000,'Fri Jun 21 11:32:06 BST 2013','YES'),(51,'Robert',1115656081,'TRANSFER TO',100000,300000,'Fri Jun 21 11:32:06 BST 2013','YES');

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `upass` varchar(20) DEFAULT NULL,
  `sec_question` varchar(30) DEFAULT NULL,
  `answer` varchar(30) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;

/*Data for the table `user_details` */

insert  into `user_details`(`ID`,`uname`,`upass`,`sec_question`,`answer`,`address`,`email`,`mobile`) values (1001,'Robert','robert','Your Mothers Name?','Sadie','3 Ayrfield Road, Ayrfield, Dublin 13','robert@gmail.com','0888888889'),(1005,'JoeBloggs','joebloggs','Your First School Name','the small school','1 O\'Connell Street\r\nDublin 1.','joe@gmail.com','0853457896'),(1006,'JohnForde','johnforde','Favorite Color','blue','208 Belmont Avenue\r\nSwords,\r\nDublin 9.','jforde@gmail.com','085234784'),(1007,'DanielGill','danielgill','Your First School Name','Out Lady Immaculate','16 Greenwood Road\r\nGreenwood\r\nDublin 7.','dgill@gmail.com','0865647348'),(1008,'EddieDolan','eddiedolan','Favorite Color','green','13 Johnstone Road,\r\nPalmerstown,\r\nDublin 8.','edolan@gmail.com','087543673'),(1009,'BrianForde','brianforde','Your First School Name','Our Lady Immaculate','19 Abbey Street,\r\nDublin 1.','bforde@gmail.com','0852323245'),(1010,'LisaEvans','lisaevans','Your First School Name','Top Priary','19 Baggot Street,\r\nDublin 2.','lisaevans@gmail.com','089463763'),(1011,'JohnThompson','johnthompson','Favorite Color','blue','6 Edenmore Green,\r\nRaheny,\r\nDublin 5.','jthompson@gmail.com','088546325473'),(1012,'MaryHynes','maryhynes','Favorite Color','pink','3 long mile road,\r\nNavan,\r\nCo. Meath','mhynes@gmail.com','0864524536');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
