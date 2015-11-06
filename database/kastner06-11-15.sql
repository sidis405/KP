# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: kastner
# Generation Time: 2015-11-06 14:34:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table carousel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cover_image_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `carousel` WRITE;
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;

INSERT INTO `carousel` (`id`, `cover_image_id`, `position`, `created_at`, `updated_at`)
VALUES
	(1,71,1,'2015-11-06 12:50:24','2015-11-06 13:01:09'),
	(2,72,2,'2015-11-06 13:21:08','2015-11-06 13:21:36'),
	(3,73,3,'2015-11-06 13:21:43','2015-11-06 13:21:58'),
	(4,74,4,'2015-11-06 13:22:04','2015-11-06 14:33:30');

/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `featured_image_id` int(11) NOT NULL,
  `cover_image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;

INSERT INTO `gallery` (`id`, `featured_image_id`, `cover_image_id`, `created_at`, `updated_at`)
VALUES
	(4,18,17,'2015-11-04 18:00:24','2015-11-04 18:01:15'),
	(5,19,20,'2015-11-04 18:01:25','2015-11-04 18:01:49'),
	(6,21,22,'2015-11-04 18:02:04','2015-11-04 18:02:28'),
	(7,23,24,'2015-11-04 18:02:36','2015-11-04 18:02:57'),
	(8,26,25,'2015-11-04 18:03:53','2015-11-04 18:04:28'),
	(9,27,28,'2015-11-04 18:04:31','2015-11-04 18:04:53'),
	(10,30,29,'2015-11-04 18:04:58','2015-11-04 18:05:19'),
	(11,32,31,'2015-11-04 18:05:45','2015-11-04 18:06:06'),
	(12,33,34,'2015-11-04 18:06:09','2015-11-04 18:06:27'),
	(13,36,35,'2015-11-04 18:06:40','2015-11-04 18:06:59'),
	(14,37,38,'2015-11-04 18:07:01','2015-11-04 18:07:17'),
	(15,40,39,'2015-11-04 18:07:19','2015-11-04 18:07:35'),
	(16,41,42,'2015-11-04 18:07:37','2015-11-04 18:07:55'),
	(17,43,44,'2015-11-04 18:08:09','2015-11-04 18:08:31'),
	(18,46,45,'2015-11-04 18:08:35','2015-11-04 18:08:55'),
	(19,47,48,'2015-11-04 18:08:58','2015-11-04 18:09:14'),
	(20,50,49,'2015-11-04 18:09:31','2015-11-04 18:09:51'),
	(21,51,52,'2015-11-04 18:09:54','2015-11-04 18:11:05'),
	(22,53,54,'2015-11-04 18:10:21','2015-11-04 18:11:33'),
	(23,55,56,'2015-11-04 18:11:08','2015-11-04 18:12:00'),
	(24,58,57,'2015-11-04 18:12:06','2015-11-04 18:12:25'),
	(25,60,59,'2015-11-04 18:12:35','2015-11-04 18:12:58'),
	(26,62,61,'2015-11-04 18:13:04','2015-11-04 18:13:26'),
	(27,64,63,'2015-11-04 18:13:29','2015-11-04 18:13:50'),
	(28,65,66,'2015-11-04 18:13:53','2015-11-04 18:14:23'),
	(29,67,68,'2015-11-04 18:14:30','2015-11-04 18:14:47'),
	(30,69,70,'2015-11-04 18:14:50','2015-11-04 18:15:10');

/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) unsigned NOT NULL,
  `manipulations` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8_unicode_ci NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `media_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`)
VALUES
	(10,7,'KP\\Models\\Press','images','impakter-press','impakter-press.jpg','uploads',38074,'[]','[]',6,'2015-11-04 17:34:46','2015-11-04 17:34:46'),
	(11,8,'KP\\Models\\Press','images','upload-your-talent-press','upload-your-talent-press.jpg','uploads',27125,'[]','[]',7,'2015-11-04 17:35:16','2015-11-04 17:35:16'),
	(12,9,'KP\\Models\\Press','images','storytalia-press','storytalia-press.jpg','uploads',19273,'[]','[]',8,'2015-11-04 17:35:36','2015-11-04 17:35:36'),
	(13,10,'KP\\Models\\Press','images','invitedrome-press','invitedrome-press.jpg','uploads',9649,'[]','[]',9,'2015-11-04 17:35:59','2015-11-04 17:35:59'),
	(14,11,'KP\\Models\\Press','images','officiel-press','officiel-press.jpg','uploads',14501,'[]','[]',10,'2015-11-04 17:36:36','2015-11-04 17:36:36'),
	(15,12,'KP\\Models\\Press','images','grazia-press','grazia-press.jpg','uploads',13820,'[]','[]',11,'2015-11-04 17:37:10','2015-11-04 17:37:10'),
	(17,4,'KP\\Models\\Gallery','images','gallery01','gallery01.jpg','uploads',21077,'[]','[]',12,'2015-11-04 18:01:03','2015-11-04 18:01:03'),
	(18,4,'KP\\Models\\Gallery','images','gallery01-big','gallery01-big.jpg','uploads',122391,'[]','[]',12,'2015-11-04 18:01:03','2015-11-04 18:01:03'),
	(19,5,'KP\\Models\\Gallery','images','gallery02-big','gallery02-big.jpg','uploads',225902,'[]','[]',13,'2015-11-04 18:01:39','2015-11-04 18:01:39'),
	(20,5,'KP\\Models\\Gallery','images','gallery02','gallery02.jpg','uploads',25127,'[]','[]',13,'2015-11-04 18:01:39','2015-11-04 18:01:39'),
	(21,6,'KP\\Models\\Gallery','images','gallery03-big','gallery03-big.jpg','uploads',203701,'[]','[]',14,'2015-11-04 18:02:19','2015-11-04 18:02:19'),
	(22,6,'KP\\Models\\Gallery','images','gallery03','gallery03.jpg','uploads',21422,'[]','[]',14,'2015-11-04 18:02:19','2015-11-04 18:02:19'),
	(23,7,'KP\\Models\\Gallery','images','gallery04-big','gallery04-big.jpg','uploads',164403,'[]','[]',15,'2015-11-04 18:02:49','2015-11-04 18:02:49'),
	(24,7,'KP\\Models\\Gallery','images','gallery04','gallery04.jpg','uploads',19111,'[]','[]',15,'2015-11-04 18:02:49','2015-11-04 18:02:49'),
	(25,8,'KP\\Models\\Gallery','images','gallery05','gallery05.jpg','uploads',20426,'[]','[]',16,'2015-11-04 18:04:20','2015-11-04 18:04:20'),
	(26,8,'KP\\Models\\Gallery','images','gallery05-big','gallery05-big.jpg','uploads',202687,'[]','[]',16,'2015-11-04 18:04:20','2015-11-04 18:04:20'),
	(27,9,'KP\\Models\\Gallery','images','gallery06-big','gallery06-big.jpg','uploads',170284,'[]','[]',17,'2015-11-04 18:04:44','2015-11-04 18:04:44'),
	(28,9,'KP\\Models\\Gallery','images','gallery06','gallery06.jpg','uploads',20369,'[]','[]',17,'2015-11-04 18:04:44','2015-11-04 18:04:44'),
	(29,10,'KP\\Models\\Gallery','images','gallery07','gallery07.jpg','uploads',19893,'[]','[]',18,'2015-11-04 18:05:10','2015-11-04 18:05:10'),
	(30,10,'KP\\Models\\Gallery','images','gallery07-big','gallery07-big.jpg','uploads',122807,'[]','[]',18,'2015-11-04 18:05:10','2015-11-04 18:05:10'),
	(31,11,'KP\\Models\\Gallery','images','gallery08','gallery08.jpg','uploads',24689,'[]','[]',19,'2015-11-04 18:05:58','2015-11-04 18:05:58'),
	(32,11,'KP\\Models\\Gallery','images','gallery08-big','gallery08-big.jpg','uploads',269096,'[]','[]',19,'2015-11-04 18:05:58','2015-11-04 18:05:58'),
	(33,12,'KP\\Models\\Gallery','images','gallery09-big','gallery09-big.jpg','uploads',184431,'[]','[]',20,'2015-11-04 18:06:19','2015-11-04 18:06:19'),
	(34,12,'KP\\Models\\Gallery','images','gallery09','gallery09.jpg','uploads',24000,'[]','[]',20,'2015-11-04 18:06:19','2015-11-04 18:06:19'),
	(35,13,'KP\\Models\\Gallery','images','gallery10','gallery10.jpg','uploads',21201,'[]','[]',21,'2015-11-04 18:06:50','2015-11-04 18:06:50'),
	(36,13,'KP\\Models\\Gallery','images','gallery10-big','gallery10-big.jpg','uploads',186603,'[]','[]',21,'2015-11-04 18:06:50','2015-11-04 18:06:50'),
	(37,14,'KP\\Models\\Gallery','images','gallery11-big','gallery11-big.jpg','uploads',197924,'[]','[]',22,'2015-11-04 18:07:10','2015-11-04 18:07:10'),
	(38,14,'KP\\Models\\Gallery','images','gallery11','gallery11.jpg','uploads',21760,'[]','[]',23,'2015-11-04 18:07:10','2015-11-04 18:07:10'),
	(39,15,'KP\\Models\\Gallery','images','gallery12','gallery12.jpg','uploads',24416,'[]','[]',24,'2015-11-04 18:07:27','2015-11-04 18:07:27'),
	(40,15,'KP\\Models\\Gallery','images','gallery12-big','gallery12-big.jpg','uploads',239147,'[]','[]',24,'2015-11-04 18:07:27','2015-11-04 18:07:27'),
	(41,16,'KP\\Models\\Gallery','images','gallery13-big','gallery13-big.jpg','uploads',306287,'[]','[]',25,'2015-11-04 18:07:46','2015-11-04 18:07:46'),
	(42,16,'KP\\Models\\Gallery','images','gallery13','gallery13.jpg','uploads',47076,'[]','[]',26,'2015-11-04 18:07:46','2015-11-04 18:07:46'),
	(43,17,'KP\\Models\\Gallery','images','gallery14-big','gallery14-big.jpg','uploads',150042,'[]','[]',27,'2015-11-04 18:08:23','2015-11-04 18:08:23'),
	(44,17,'KP\\Models\\Gallery','images','gallery14','gallery14.jpg','uploads',19856,'[]','[]',27,'2015-11-04 18:08:23','2015-11-04 18:08:23'),
	(45,18,'KP\\Models\\Gallery','images','gallery15','gallery15.jpg','uploads',30213,'[]','[]',28,'2015-11-04 18:08:47','2015-11-04 18:08:47'),
	(46,18,'KP\\Models\\Gallery','images','gallery15-big','gallery15-big.jpg','uploads',200800,'[]','[]',28,'2015-11-04 18:08:47','2015-11-04 18:08:47'),
	(47,19,'KP\\Models\\Gallery','images','gallery16_big','gallery16_big.jpg','uploads',227055,'[]','[]',29,'2015-11-04 18:09:06','2015-11-04 18:09:06'),
	(48,19,'KP\\Models\\Gallery','images','gallery16','gallery16.jpg','uploads',28450,'[]','[]',29,'2015-11-04 18:09:06','2015-11-04 18:09:06'),
	(49,20,'KP\\Models\\Gallery','images','gallery17','gallery17.jpg','uploads',27825,'[]','[]',30,'2015-11-04 18:09:40','2015-11-04 18:09:40'),
	(50,20,'KP\\Models\\Gallery','images','gallery17_big','gallery17_big.jpg','uploads',239780,'[]','[]',30,'2015-11-04 18:09:40','2015-11-04 18:09:40'),
	(51,21,'KP\\Models\\Gallery','images','gallery18_big','gallery18_big.jpg','uploads',243464,'[]','[]',31,'2015-11-04 18:10:56','2015-11-04 18:10:56'),
	(52,21,'KP\\Models\\Gallery','images','gallery18','gallery18.jpg','uploads',26637,'[]','[]',31,'2015-11-04 18:10:56','2015-11-04 18:10:56'),
	(53,22,'KP\\Models\\Gallery','images','gallery19_big','gallery19_big.jpg','uploads',150588,'[]','[]',32,'2015-11-04 18:11:24','2015-11-04 18:11:24'),
	(54,22,'KP\\Models\\Gallery','images','gallery19','gallery19.jpg','uploads',24037,'[]','[]',32,'2015-11-04 18:11:24','2015-11-04 18:11:24'),
	(55,23,'KP\\Models\\Gallery','images','gallery20_big','gallery20_big.jpg','uploads',145967,'[]','[]',33,'2015-11-04 18:11:47','2015-11-04 18:11:47'),
	(56,23,'KP\\Models\\Gallery','images','gallery20','gallery20.jpg','uploads',30389,'[]','[]',34,'2015-11-04 18:11:47','2015-11-04 18:11:47'),
	(57,24,'KP\\Models\\Gallery','images','gallery21','gallery21.jpg','uploads',22335,'[]','[]',35,'2015-11-04 18:12:14','2015-11-04 18:12:14'),
	(58,24,'KP\\Models\\Gallery','images','gallery21_big','gallery21_big.jpg','uploads',142572,'[]','[]',35,'2015-11-04 18:12:14','2015-11-04 18:12:14'),
	(59,25,'KP\\Models\\Gallery','images','gallery22','gallery22.jpg','uploads',25074,'[]','[]',36,'2015-11-04 18:12:49','2015-11-04 18:12:49'),
	(60,25,'KP\\Models\\Gallery','images','gallery22_big','gallery22_big.jpg','uploads',143910,'[]','[]',36,'2015-11-04 18:12:49','2015-11-04 18:12:49'),
	(61,26,'KP\\Models\\Gallery','images','gallery23','gallery23.jpg','uploads',15873,'[]','[]',37,'2015-11-04 18:13:18','2015-11-04 18:13:18'),
	(62,26,'KP\\Models\\Gallery','images','gallery23_big','gallery23_big.jpg','uploads',155871,'[]','[]',37,'2015-11-04 18:13:18','2015-11-04 18:13:18'),
	(63,27,'KP\\Models\\Gallery','images','gallery24','gallery24.jpg','uploads',19573,'[]','[]',38,'2015-11-04 18:13:43','2015-11-04 18:13:43'),
	(64,27,'KP\\Models\\Gallery','images','gallery24_big','gallery24_big.jpg','uploads',116889,'[]','[]',38,'2015-11-04 18:13:43','2015-11-04 18:13:43'),
	(65,28,'KP\\Models\\Gallery','images','gallery25_big','gallery25_big.jpg','uploads',189928,'[]','[]',39,'2015-11-04 18:14:07','2015-11-04 18:14:07'),
	(66,28,'KP\\Models\\Gallery','images','gallery25','gallery25.jpg','uploads',28154,'[]','[]',40,'2015-11-04 18:14:07','2015-11-04 18:14:07'),
	(67,29,'KP\\Models\\Gallery','images','gallery26_big','gallery26_big.jpg','uploads',222419,'[]','[]',41,'2015-11-04 18:14:38','2015-11-04 18:14:38'),
	(68,29,'KP\\Models\\Gallery','images','gallery26','gallery26.jpg','uploads',24139,'[]','[]',41,'2015-11-04 18:14:38','2015-11-04 18:14:38'),
	(69,30,'KP\\Models\\Gallery','images','gallery27_big','gallery27_big.jpg','uploads',174387,'[]','[]',42,'2015-11-04 18:14:59','2015-11-04 18:14:59'),
	(70,30,'KP\\Models\\Gallery','images','gallery27','gallery27.jpg','uploads',33155,'[]','[]',42,'2015-11-04 18:14:59','2015-11-04 18:14:59'),
	(71,1,'KP\\Models\\Carousel','images','slide01','slide01.jpg','uploads',203143,'[]','[]',43,'2015-11-06 13:00:21','2015-11-06 13:00:21'),
	(72,2,'KP\\Models\\Carousel','images','slide02','slide02.jpg','uploads',67796,'[]','[]',44,'2015-11-06 13:21:25','2015-11-06 13:21:25'),
	(73,3,'KP\\Models\\Carousel','images','slide03','slide03.jpg','uploads',139246,'[]','[]',45,'2015-11-06 13:21:52','2015-11-06 13:21:52'),
	(74,4,'KP\\Models\\Carousel','images','slide04','slide04.jpg','uploads',135865,'[]','[]',46,'2015-11-06 13:22:13','2015-11-06 13:22:13');

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_table',1),
	('2014_10_12_100000_create_password_resets_table',1),
	('2015_11_04_123411_create_gallery_table',1),
	('2015_11_04_123432_create_press_table',1),
	('2015_11_04_130839_create_media_table',1),
	('2015_11_06_123531_create_carousel_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table press
# ------------------------------------------------------------

DROP TABLE IF EXISTS `press`;

CREATE TABLE `press` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cover_image_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `press` WRITE;
/*!40000 ALTER TABLE `press` DISABLE KEYS */;

INSERT INTO `press` (`id`, `cover_image_id`, `path`, `position`, `created_at`, `updated_at`)
VALUES
	(7,10,'http://impakter.com/mind-the-body-kastnerpallavicino-and-the-new-made-in-italy/',1,'2015-11-04 17:34:19','2015-11-06 14:33:04'),
	(8,11,'http://www.uploadyourtalent.com/?action=viewArticle&articleId=1012&title=Kastner_&_Pallavicino_.html#.VgALGHtkLeQ',2,'2015-11-04 17:34:59','2015-11-04 17:35:19'),
	(9,12,'https://www.storytalia.com/en/brands/kastner-pallavicino.html',3,'2015-11-04 17:35:28','2015-11-04 17:35:42'),
	(10,13,'http://www.invitedrome.com/it/journal/title-5/',4,'2015-11-04 17:35:50','2015-11-04 17:36:03'),
	(11,14,'http://www.lofficielitalia.com/kastnerpallavicino/',5,'2015-11-04 17:36:16','2015-11-04 17:36:41'),
	(12,15,'http://www.grazia.it/moda/news-moda/kastner-pallavicino-luxury',6,'2015-11-04 17:36:48','2015-11-04 17:37:18');

/*!40000 ALTER TABLE `press` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'KP Admin','info@kastner-pallavicino.com','$2y$10$iE11Pc.uf4tN2uMHf9xZaeVS1vzmHI5aaUbN0Zr1T3iV3Lk4o3RWC','lTxcp5l2EeECKXl6NonqMLjgRBSH86bpxzDGfHYZ1CLoolOu3j9MkfesAxSf','2015-11-04 13:19:54','2015-11-04 18:30:39');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
