/*
SQLyog Ultimate v10.42 
MySQL - 5.5.40 : Database - crsdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crsdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;

USE `crsdb`;

/*Table structure for table `cour_class` */

DROP TABLE IF EXISTS `cour_class`;

CREATE TABLE `cour_class` (
  `cId` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `className` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '班级名称',
  `cWeek` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '周几上该课',
  `cSession` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '节次',
  `tId` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '教师ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `cour_class` */

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cId` varchar(50) NOT NULL,
  `courseName` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `classRoomName` varchar(30) DEFAULT NULL COMMENT '上课教室',
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `course` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sId` varchar(20) NOT NULL,
  `sName` varchar(30) DEFAULT NULL,
  `className` varchar(50) DEFAULT NULL COMMENT '班级名称',
  `sWechatId` varchar(50) DEFAULT NULL COMMENT '微信Id',
  `particiCnt` int(11) DEFAULT '0' COMMENT '缺课次数',
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `student` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tId` varchar(20) NOT NULL,
  `tName` varchar(50) DEFAULT NULL,
  `tWechatId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `teacher` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
