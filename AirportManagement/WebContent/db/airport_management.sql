/*
SQLyog Ultimate v8.55 
MySQL - 5.1.36-community : Database - airport_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`airport_management` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `airport_management`;

/*Table structure for table `admin_tbl` */

DROP TABLE IF EXISTS `admin_tbl`;

CREATE TABLE `admin_tbl` (
  `adminId` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_tbl` */

insert  into `admin_tbl`(`adminId`,`password`) values ('admin','admin');

/*Table structure for table `airports_tbl` */

DROP TABLE IF EXISTS `airports_tbl`;

CREATE TABLE `airports_tbl` (
  `airportId` int(11) NOT NULL AUTO_INCREMENT,
  `airportName` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`airportId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `airports_tbl` */

insert  into `airports_tbl`(`airportId`,`airportName`,`city`) values (1,'Kempegowda International Airport','Bangalore'),(2,'Indira Gandhi International Airport','Delhi'),(3,'Mandkalli Airport','Mysuru');

/*Table structure for table `coupons_tbl` */

DROP TABLE IF EXISTS `coupons_tbl`;

CREATE TABLE `coupons_tbl` (
  `couponId` int(11) NOT NULL AUTO_INCREMENT,
  `coupon` varchar(100) DEFAULT NULL,
  `flightId` int(11) DEFAULT NULL,
  `offer` double DEFAULT NULL,
  `validFrom` date DEFAULT NULL,
  `validTo` date DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  KEY `FK_coupons_tbl2` (`flightId`),
  CONSTRAINT `FK_coupons_tbl2` FOREIGN KEY (`flightId`) REFERENCES `flights_tbl` (`flightId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `coupons_tbl` */

insert  into `coupons_tbl`(`couponId`,`coupon`,`flightId`,`offer`,`validFrom`,`validTo`,`source`,`destination`) values (1,'new year',2,6000,'2019-11-10','2019-12-12','Bangalore','Delhi'),(2,'DEC2050',4,1,'2023-06-06','2023-07-05','Bangalore','Delhi');

/*Table structure for table `flights_tbl` */

DROP TABLE IF EXISTS `flights_tbl`;

CREATE TABLE `flights_tbl` (
  `flightId` int(11) NOT NULL AUTO_INCREMENT,
  `flightName` varchar(100) DEFAULT NULL,
  `timings` timestamp NULL DEFAULT NULL,
  `price` varchar(10000) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`flightId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `flights_tbl` */

insert  into `flights_tbl`(`flightId`,`flightName`,`timings`,`price`,`source`,`destination`) values (1,'Kingfisher Airlines','2019-11-19 20:14:13','10000','Bangalore','Delhi'),(2,'Jet Airlines','2019-08-04 10:00:00','8000','Delhi','Bangalore'),(4,'Deccan Airlines','2023-06-06 10:00:00','1','Bangalore','Delhi');

/*Table structure for table `report_tbl` */

DROP TABLE IF EXISTS `report_tbl`;

CREATE TABLE `report_tbl` (
  `uname` varchar(100) DEFAULT NULL,
  `tsrc` varchar(100) DEFAULT NULL,
  `tdest` varchar(100) DEFAULT NULL,
  `sdate` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `report_tbl` */

insert  into `report_tbl`(`uname`,`tsrc`,`tdest`,`sdate`,`fname`,`price`,`userId`) values ('Manasa','2','1','2019-12-05','Kingfisher Airlines','10000',1),('pavan','3','1','2023-06-06','Kingfisher Airlines','2',2);

/*Table structure for table `staffs_tbl` */

DROP TABLE IF EXISTS `staffs_tbl`;

CREATE TABLE `staffs_tbl` (
  `staffId` int(11) DEFAULT NULL,
  `airportId` int(11) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `staffName` varchar(100) DEFAULT NULL,
  KEY `FK_staffs_tbl1` (`airportId`),
  CONSTRAINT `FK_staffs_tbl1` FOREIGN KEY (`airportId`) REFERENCES `airports_tbl` (`airportId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `staffs_tbl` */

insert  into `staffs_tbl`(`staffId`,`airportId`,`designation`,`staffName`) values (NULL,2,'Pilot','Jamal');

/*Table structure for table `ticket_tbl` */

DROP TABLE IF EXISTS `ticket_tbl`;

CREATE TABLE `ticket_tbl` (
  `ticketId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `destination` int(11) DEFAULT NULL,
  `timings` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `boardOn` date DEFAULT NULL,
  `flightId` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `FK_ticket_tbl` (`source`),
  KEY `FK_ticketd_tbl` (`destination`),
  KEY `FK_ticket_tbl3` (`userId`),
  CONSTRAINT `FK_ticketd_tbl` FOREIGN KEY (`destination`) REFERENCES `airports_tbl` (`airportId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ticket_tbl` FOREIGN KEY (`source`) REFERENCES `airports_tbl` (`airportId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ticket_tbl3` FOREIGN KEY (`userId`) REFERENCES `users_tbl` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ticket_tbl` */

insert  into `ticket_tbl`(`ticketId`,`userId`,`source`,`destination`,`timings`,`boardOn`,`flightId`,`price`) values (1,1,2,1,'2019-12-05 16:45:08',NULL,1,10000),(2,2,3,1,'2023-06-06 16:49:37',NULL,1,2);

/*Table structure for table `users_tbl` */

DROP TABLE IF EXISTS `users_tbl`;

CREATE TABLE `users_tbl` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) DEFAULT NULL,
  `mailid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `amount` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users_tbl` */

insert  into `users_tbl`(`userId`,`userName`,`mailid`,`password`,`mobile`,`amount`) values (1,'Manasa','manasa@gmail.com','123456','9638527410','16500'),(2,'pavan','pavan@gmail.com','pavan123','8795461245','499');

/* Trigger structure for table `users_tbl` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `basicamount` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `basicamount` BEFORE INSERT ON `users_tbl` FOR EACH ROW BEGIN
	SET new.amount=500;
    END */$$


DELIMITER ;

/* Procedure structure for procedure `report_ticket` */

/*!50003 DROP PROCEDURE IF EXISTS  `report_ticket` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `report_ticket`()
BEGIN

	DECLARE done INT DEFAULT FALSE;
	DECLARE uName, src, dest,fname,price VARCHAR(100);
	DECLARE fdate DATE;
	DECLARE uid INT;
	DECLARE cur1 CURSOR FOR SELECT userName,t.price,t.timings,flightName,ticketId FROM users_tbl u INNER JOIN ticket_tbl t ON u.userId = t.userId inner join flights_tbl f on f.flightId=t.flightId;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	
	DELETE FROM report_tbl;
	OPEN cur1;
		read_loop: LOOP
			FETCH cur1 INTO uName, price, fdate,fname,uid;
			IF done THEN
			LEAVE read_loop;
			END IF;
			SELECT source INTO src FROM ticket_tbl inner join airports_tbl on source=airportId  WHERE ticketId = uid;
			SELECT destination INTO dest FROM ticket_tbl INNER JOIN airports_tbl on destination=airportId WHERE ticketId = uid;
			
			INSERT INTO report_tbl(uname,tsrc,tdest,sdate,fname,price,userId) VALUES(uName,src,dest,fdate,fname,price,uid);
		END LOOP;
	CLOSE cur1;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
