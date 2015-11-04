# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: kastner
# Generation Time: 2015-11-04 17:55:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
	(1,2,1,'2015-11-04 13:46:18','2015-11-04 16:16:54');

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
	(1,1,'KP\\Models\\Gallery','images','01_HP_RESTAURO 2','01_HP_RESTAURO 2.jpg','uploads',118077,'[]','[]',1,'2015-11-04 15:33:07','2015-11-04 15:33:07'),
	(2,1,'KP\\Models\\Gallery','images','casa5','casa5.JPG','uploads',609886,'[]','[]',2,'2015-11-04 15:34:10','2015-11-04 15:34:10'),
	(7,1,'KP\\Models\\Gallery','images','NYC-by-Bicycle-1 2','NYC-by-Bicycle-1 2.jpg','uploads',776942,'[]','[]',5,'2015-11-04 16:57:01','2015-11-04 16:57:01'),
	(10,7,'KP\\Models\\Press','images','impakter-press','impakter-press.jpg','uploads',38074,'[]','[]',6,'2015-11-04 17:34:46','2015-11-04 17:34:46'),
	(11,8,'KP\\Models\\Press','images','upload-your-talent-press','upload-your-talent-press.jpg','uploads',27125,'[]','[]',7,'2015-11-04 17:35:16','2015-11-04 17:35:16'),
	(12,9,'KP\\Models\\Press','images','storytalia-press','storytalia-press.jpg','uploads',19273,'[]','[]',8,'2015-11-04 17:35:36','2015-11-04 17:35:36'),
	(13,10,'KP\\Models\\Press','images','invitedrome-press','invitedrome-press.jpg','uploads',9649,'[]','[]',9,'2015-11-04 17:35:59','2015-11-04 17:35:59'),
	(14,11,'KP\\Models\\Press','images','officiel-press','officiel-press.jpg','uploads',14501,'[]','[]',10,'2015-11-04 17:36:36','2015-11-04 17:36:36'),
	(15,12,'KP\\Models\\Press','images','grazia-press','grazia-press.jpg','uploads',13820,'[]','[]',11,'2015-11-04 17:37:10','2015-11-04 17:37:10');

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
	('2015_11_04_130839_create_media_table',1);

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
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `press` WRITE;
/*!40000 ALTER TABLE `press` DISABLE KEYS */;

INSERT INTO `press` (`id`, `cover_image_id`, `path`, `created_at`, `updated_at`)
VALUES
	(7,10,'http://impakter.com/mind-the-body-kastnerpallavicino-and-the-new-made-in-italy/','2015-11-04 17:34:19','2015-11-04 17:34:54'),
	(8,11,'http://www.uploadyourtalent.com/?action=viewArticle&articleId=1012&title=Kastner_&_Pallavicino_.html#.VgALGHtkLeQ','2015-11-04 17:34:59','2015-11-04 17:35:19'),
	(9,12,'https://www.storytalia.com/en/brands/kastner-pallavicino.html','2015-11-04 17:35:28','2015-11-04 17:35:42'),
	(10,13,'http://www.invitedrome.com/it/journal/title-5/','2015-11-04 17:35:50','2015-11-04 17:36:03'),
	(11,14,'http://www.lofficielitalia.com/kastnerpallavicino/','2015-11-04 17:36:16','2015-11-04 17:36:41'),
	(12,15,'http://www.grazia.it/moda/news-moda/kastner-pallavicino-luxury','2015-11-04 17:36:48','2015-11-04 17:37:18');

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
	(1,'KP Admin','info@kastner-pallavicino.com','$2y$10$iE11Pc.uf4tN2uMHf9xZaeVS1vzmHI5aaUbN0Zr1T3iV3Lk4o3RWC','jOVx7Qd1oclbZXNMZM8NC2WlH3FwtSQvQGhjarqnNsqVzTiRbuv04wkUr4sj','2015-11-04 13:19:54','2015-11-04 13:28:42');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
