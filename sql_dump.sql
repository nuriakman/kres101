-- Adminer 4.8.1 MySQL 5.5.5-10.4.22-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `kres`;
CREATE DATABASE `kres` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci */;
USE `kres`;

DROP TABLE IF EXISTS `gunluk`;
CREATE TABLE `gunluk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarih` date DEFAULT NULL,
  `kresid` int(11) DEFAULT 0,
  `sinifid` int(11) DEFAULT 0,
  `ogrenciid` int(11) DEFAULT 0,
  `mevcut` int(11) DEFAULT 0,
  `vidtalepeden` int(11) DEFAULT 0,
  `zvtalepeden` datetime DEFAULT NULL,
  `vidteslimedilen` int(11) DEFAULT 0,
  `pidyoklama` int(11) DEFAULT 0,
  `pidhazir` int(11) DEFAULT 0,
  `pidteslim` int(11) DEFAULT 0,
  `zpyoklama` datetime DEFAULT NULL,
  `zphazir` datetime DEFAULT NULL,
  `zpteslim` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `gunluk` (`id`, `tarih`, `kresid`, `sinifid`, `ogrenciid`, `mevcut`, `vidtalepeden`, `zvtalepeden`, `vidteslimedilen`, `pidyoklama`, `pidhazir`, `pidteslim`, `zpyoklama`, `zphazir`, `zpteslim`) VALUES
(1,	'2022-01-14',	1,	1,	1,	1,	7,	'2022-01-14 15:01:00',	NULL,	3,	3,	4,	'2022-01-14 10:17:00',	'2022-01-14 15:07:00',	'2022-01-14 15:08:00');

DROP TABLE IF EXISTS `kisiler`;
CREATE TABLE `kisiler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tckn` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isadmin` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `kisiler` (`id`, `adsoyad`, `tckn`, `telefon`, `sifre`, `isadmin`) VALUES
(1,	'Nuri Akman',	NULL,	'5413183606',	'123',	1),
(2,	'Kres Sahibi 1',	NULL,	NULL,	NULL,	0),
(3,	'Selin Öğretmen',	NULL,	NULL,	NULL,	0),
(4,	'Özge Öğretmen',	NULL,	NULL,	NULL,	0),
(5,	'Gökhan Tiryaki',	NULL,	NULL,	NULL,	0),
(6,	'Derya Tiryaki',	NULL,	NULL,	NULL,	0),
(7,	'Kemal Tiryaki',	NULL,	NULL,	NULL,	0);

DROP TABLE IF EXISTS `kresler`;
CREATE TABLE `kresler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kisiid` int(11) DEFAULT 0,
  `kresadi` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `kresler` (`id`, `kisiid`, `kresadi`) VALUES
(1,	2,	'MaviKöy Anaokulu');

DROP TABLE IF EXISTS `krespersoneli`;
CREATE TABLE `krespersoneli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kisiid` int(11) DEFAULT 0,
  `kresid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `krespersoneli` (`id`, `kisiid`, `kresid`) VALUES
(1,	3,	1),
(2,	4,	1);

DROP TABLE IF EXISTS `kressiniflari`;
CREATE TABLE `kressiniflari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kresid` int(11) DEFAULT 0,
  `sinifadi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `kressiniflari` (`id`, `kresid`, `sinifadi`) VALUES
(1,	1,	'Kelebekler'),
(2,	1,	'Papatyalar');

DROP TABLE IF EXISTS `ogrenciler`;
CREATE TABLE `ogrenciler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tckn` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kresid` int(11) DEFAULT 0,
  `sinifid` int(11) DEFAULT 0,
  `kisiid` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `ogrenciler` (`id`, `adsoyad`, `tckn`, `kresid`, `sinifid`, `kisiid`) VALUES
(1,	'Kemal Eymen Tiryaki',	NULL,	1,	1,	5);

DROP TABLE IF EXISTS `veliogrenci`;
CREATE TABLE `veliogrenci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kisiid` int(11) DEFAULT 0,
  `ogrenciid` int(11) DEFAULT 0,
  `isasil` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `veliogrenci` (`id`, `kisiid`, `ogrenciid`, `isasil`) VALUES
(1,	6,	1,	1),
(2,	7,	1,	0);

-- 2022-01-14 12:35:48

