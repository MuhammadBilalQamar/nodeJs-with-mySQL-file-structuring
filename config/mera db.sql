/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.37-MariaDB : Database - nodejsmysql
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nodejsmysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nodejsmysql`;

/*Table structure for table `css` */

DROP TABLE IF EXISTS `css`;

CREATE TABLE `css` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `QUestionNo` int(11) NOT NULL,
  `Question` text NOT NULL,
  `OptionA` text NOT NULL,
  `OptionB` text NOT NULL,
  `OptionC` text NOT NULL,
  `CorrectAnswer` char(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `css` */

insert  into `css`(`ID`,`QUestionNo`,`Question`,`OptionA`,`OptionB`,`OptionC`,`CorrectAnswer`) values 
(1,1,'Q1: what is the full form of CSS ?','Central Styling Sheet\r\n','Cascading Style Sheet','Header Text Markup Language','B'),
(2,2,'Q2: Who Is the inventor of CSS ?','Roney','Dakota Rudolph\r\n','Håkon Wium Lie','C'),
(3,3,' Q3: what is a cubic bezier in CSS?','The cubic-bezier() function can be used with the transition-timing-function property','The cubic-bezier() function can be used with the webkit-animation-timing-function property','The cubic-bezier() function can be used with the moz-transition-timing-function property','A');

/*Table structure for table `html` */

DROP TABLE IF EXISTS `html`;

CREATE TABLE `html` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `QUestionNo` int(11) NOT NULL,
  `Question` text NOT NULL,
  `OptionA` text NOT NULL,
  `OptionB` text NOT NULL,
  `OptionC` text NOT NULL,
  `CorrectAnswer` char(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `html` */

insert  into `html`(`ID`,`QUestionNo`,`Question`,`OptionA`,`OptionB`,`OptionC`,`CorrectAnswer`) values 
(1,1,'  Q1: what is the full form of Html ?','Hyper Texual Markup Language','Hyper Text Markup Language','Hyer Text Marking Language','B'),
(2,2,' Q2: Who Is the inventor of Html ?','Bradley','Shawn','Tim Berners-Lee','C'),
(3,3,'  Q3: which Tag is used in creating links?','<P>\r\n','<LINK>','<a></a>','C');

/*Table structure for table `javascript` */

DROP TABLE IF EXISTS `javascript`;

CREATE TABLE `javascript` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `QUestionNo` int(11) NOT NULL,
  `Question` text NOT NULL,
  `OptionA` text NOT NULL,
  `OptionB` text NOT NULL,
  `OptionC` text NOT NULL,
  `CorrectAnswer` char(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `javascript` */

insert  into `javascript`(`ID`,`QUestionNo`,`Question`,`OptionA`,`OptionB`,`OptionC`,`CorrectAnswer`) values 
(1,1,'Q1: what does settimeout() function do ?\r\n','Sets timeout of a prticular function','Set Timeout of a session ','Display a call back function after a specified period of time ','C'),
(2,2,'Q2: Who Is the inventor of Javascript ?','Brandon James','Rick Hawley','James Gosling','C'),
(3,3,'  Q3: which promise type is mostly used to get data from API\'s?','HTTPXMLRequest','Axios','fetch()','C');

/*Table structure for table `proctoringkeys` */

DROP TABLE IF EXISTS `proctoringkeys`;

CREATE TABLE `proctoringkeys` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `QuizType` varchar(255) DEFAULT NULL,
  `myKeys` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `proctoringkeys` */

insert  into `proctoringkeys`(`ID`,`QuizType`,`myKeys`) values 
(0,'HTML','cojRSYtarV'),
(1,'JAVASCRIPT','HRoCqAAp4K'),
(2,'CSS','5oNUnJtGF1');

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `Image` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

/*Data for the table `students` */

insert  into `students`(`ID`,`Name`,`Email`,`Password`,`Image`) values 
(67,'bilal','b@l.com','12345','adult-doctors-gloves-263337.jpg'),
(68,'umar','u@m.com','123456','profile_logo_28576863.jpg'),
(71,'zakir','z@k.com','$2a$10$MYirWbB.JWDADVV9tYjZdeIwKhash1h/wyoc3fo4pmkL68X97OlbG','profile_logo_31433955.jpg'),
(72,'rakib','r@b.com','$2a$10$wcGjqB.59EL/9etGeRewy.drjz5pAfjWq.8bE7qlgVMRrKiZf6Tbu','umarnic.jpg'),
(73,'allahdita','a@l.com','$2a$10$I3TXTlZM01Km/XcMYU17s.Z1BeW/CkekTPpBJjje8YVBZmVrfm3oS','adult-doctors-gloves-263337.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
