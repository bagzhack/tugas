/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.32-MariaDB : Database - ta_piutang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ta_piutang` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ta_piutang`;

/*Table structure for table `data_admin` */

DROP TABLE IF EXISTS `data_admin`;

CREATE TABLE `data_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `data_admin` */

insert  into `data_admin`(`id`,`username`,`password`,`nama`,`role`) values 
(1,'admin1','12345','Arif','1'),
(2,'admin2','12345','Budi','2'),
(3,'gg007','12345','Udin Petot','1');

/*Table structure for table `data_customer` */

DROP TABLE IF EXISTS `data_customer`;

CREATE TABLE `data_customer` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text,
  `no_telp` varchar(20) NOT NULL,
  `utang` int(11) DEFAULT NULL,
  `piutang` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_telp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data_customer` */

/*Table structure for table `history` */

DROP TABLE IF EXISTS `history`;

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` varchar(100) DEFAULT NULL,
  `nama_customer` varchar(50) DEFAULT NULL,
  `peminjaman` int(11) DEFAULT NULL,
  `pembayaran` int(11) DEFAULT NULL,
  `input_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `history` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
