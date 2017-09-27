-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2017 at 04:27 AM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kastner`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE IF NOT EXISTS `carousel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cover_image_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `cover_image_id`, `position`, `created_at`, `updated_at`) VALUES
(13, 141, 7, '2016-11-14 17:47:21', '2017-02-22 01:09:19'),
(14, 134, 8, '2016-11-14 17:49:45', '2016-11-14 17:52:18'),
(18, 139, 9, '2016-11-14 17:54:53', '2016-11-14 17:55:14'),
(19, 140, 10, '2017-02-22 01:01:53', '2017-02-22 01:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `featured_image_id` int(11) NOT NULL,
  `cover_image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `featured_image_id`, `cover_image_id`, `created_at`, `updated_at`) VALUES
(4, 18, 17, '2015-11-05 01:00:24', '2015-11-05 01:01:15'),
(5, 19, 20, '2015-11-05 01:01:25', '2015-11-05 01:01:49'),
(7, 23, 24, '2015-11-05 01:02:36', '2015-11-05 01:02:57'),
(8, 26, 25, '2015-11-05 01:03:53', '2015-11-05 01:04:28'),
(9, 27, 28, '2015-11-05 01:04:31', '2015-11-05 01:04:53'),
(11, 32, 31, '2015-11-05 01:05:45', '2015-11-05 01:06:06'),
(12, 33, 34, '2015-11-05 01:06:09', '2015-11-05 01:06:27'),
(13, 36, 35, '2015-11-05 01:06:40', '2015-11-05 01:06:59'),
(15, 40, 39, '2015-11-05 01:07:19', '2015-11-05 01:07:35'),
(16, 41, 42, '2015-11-05 01:07:37', '2015-11-05 01:07:55'),
(18, 46, 45, '2015-11-05 01:08:35', '2015-11-05 01:08:55'),
(22, 53, 54, '2015-11-05 01:10:21', '2015-11-05 01:11:33'),
(24, 58, 57, '2015-11-05 01:12:06', '2015-11-05 01:12:25'),
(26, 62, 61, '2015-11-05 01:13:04', '2015-11-05 01:13:26'),
(27, 64, 63, '2015-11-05 01:13:29', '2015-11-05 01:13:50'),
(28, 65, 66, '2015-11-05 01:13:53', '2015-11-05 01:14:23'),
(29, 67, 68, '2015-11-05 01:14:30', '2015-11-05 01:14:47'),
(30, 69, 70, '2015-11-05 01:14:50', '2015-11-05 01:15:10'),
(34, 97, 110, '2016-04-13 16:40:18', '2016-04-20 17:00:13'),
(35, 98, 108, '2016-04-13 16:44:13', '2016-04-20 16:58:06'),
(36, 99, 111, '2016-04-20 13:18:11', '2016-04-20 17:02:22'),
(37, 103, 113, '2016-04-20 15:29:39', '2016-04-20 17:06:05'),
(38, 96, 109, '2016-04-20 15:30:12', '2016-04-20 16:58:29'),
(39, 105, 114, '2016-04-20 16:31:57', '2016-04-20 17:07:52'),
(40, 101, 112, '2016-04-20 16:37:39', '2016-04-20 17:04:28'),
(41, 102, 115, '2016-04-20 16:38:52', '2016-04-20 17:09:40'),
(42, 104, 116, '2016-04-20 16:41:29', '2016-04-20 17:12:11'),
(43, 0, 0, '2016-04-20 16:44:38', '2016-04-20 16:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=144 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(10, 7, 'KP\\Models\\Press', 'images', 'impakter-press', 'impakter-press.jpg', 'uploads', 38074, '[]', '[]', 6, '2015-11-05 00:34:46', '2015-11-05 00:34:46'),
(13, 10, 'KP\\Models\\Press', 'images', 'invitedrome-press', 'invitedrome-press.jpg', 'uploads', 9649, '[]', '[]', 9, '2015-11-05 00:35:59', '2015-11-05 00:35:59'),
(14, 11, 'KP\\Models\\Press', 'images', 'officiel-press', 'officiel-press.jpg', 'uploads', 14501, '[]', '[]', 10, '2015-11-05 00:36:36', '2015-11-05 00:36:36'),
(15, 12, 'KP\\Models\\Press', 'images', 'grazia-press', 'grazia-press.jpg', 'uploads', 13820, '[]', '[]', 11, '2015-11-05 00:37:10', '2015-11-05 00:37:10'),
(17, 4, 'KP\\Models\\Gallery', 'images', 'gallery01', 'gallery01.jpg', 'uploads', 21077, '[]', '[]', 12, '2015-11-05 01:01:03', '2015-11-05 01:01:03'),
(18, 4, 'KP\\Models\\Gallery', 'images', 'gallery01-big', 'gallery01-big.jpg', 'uploads', 122391, '[]', '[]', 12, '2015-11-05 01:01:03', '2015-11-05 01:01:03'),
(19, 5, 'KP\\Models\\Gallery', 'images', 'gallery02-big', 'gallery02-big.jpg', 'uploads', 225902, '[]', '[]', 13, '2015-11-05 01:01:39', '2015-11-05 01:01:39'),
(20, 5, 'KP\\Models\\Gallery', 'images', 'gallery02', 'gallery02.jpg', 'uploads', 25127, '[]', '[]', 13, '2015-11-05 01:01:39', '2015-11-05 01:01:39'),
(23, 7, 'KP\\Models\\Gallery', 'images', 'gallery04-big', 'gallery04-big.jpg', 'uploads', 164403, '[]', '[]', 15, '2015-11-05 01:02:49', '2015-11-05 01:02:49'),
(24, 7, 'KP\\Models\\Gallery', 'images', 'gallery04', 'gallery04.jpg', 'uploads', 19111, '[]', '[]', 15, '2015-11-05 01:02:49', '2015-11-05 01:02:49'),
(25, 8, 'KP\\Models\\Gallery', 'images', 'gallery05', 'gallery05.jpg', 'uploads', 20426, '[]', '[]', 16, '2015-11-05 01:04:20', '2015-11-05 01:04:20'),
(26, 8, 'KP\\Models\\Gallery', 'images', 'gallery05-big', 'gallery05-big.jpg', 'uploads', 202687, '[]', '[]', 16, '2015-11-05 01:04:20', '2015-11-05 01:04:20'),
(27, 9, 'KP\\Models\\Gallery', 'images', 'gallery06-big', 'gallery06-big.jpg', 'uploads', 170284, '[]', '[]', 17, '2015-11-05 01:04:44', '2015-11-05 01:04:44'),
(28, 9, 'KP\\Models\\Gallery', 'images', 'gallery06', 'gallery06.jpg', 'uploads', 20369, '[]', '[]', 17, '2015-11-05 01:04:44', '2015-11-05 01:04:44'),
(31, 11, 'KP\\Models\\Gallery', 'images', 'gallery08', 'gallery08.jpg', 'uploads', 24689, '[]', '[]', 19, '2015-11-05 01:05:58', '2015-11-05 01:05:58'),
(32, 11, 'KP\\Models\\Gallery', 'images', 'gallery08-big', 'gallery08-big.jpg', 'uploads', 269096, '[]', '[]', 19, '2015-11-05 01:05:58', '2015-11-05 01:05:58'),
(33, 12, 'KP\\Models\\Gallery', 'images', 'gallery09-big', 'gallery09-big.jpg', 'uploads', 184431, '[]', '[]', 20, '2015-11-05 01:06:19', '2015-11-05 01:06:19'),
(34, 12, 'KP\\Models\\Gallery', 'images', 'gallery09', 'gallery09.jpg', 'uploads', 24000, '[]', '[]', 20, '2015-11-05 01:06:19', '2015-11-05 01:06:19'),
(35, 13, 'KP\\Models\\Gallery', 'images', 'gallery10', 'gallery10.jpg', 'uploads', 21201, '[]', '[]', 21, '2015-11-05 01:06:50', '2015-11-05 01:06:50'),
(36, 13, 'KP\\Models\\Gallery', 'images', 'gallery10-big', 'gallery10-big.jpg', 'uploads', 186603, '[]', '[]', 21, '2015-11-05 01:06:50', '2015-11-05 01:06:50'),
(39, 15, 'KP\\Models\\Gallery', 'images', 'gallery12', 'gallery12.jpg', 'uploads', 24416, '[]', '[]', 24, '2015-11-05 01:07:27', '2015-11-05 01:07:27'),
(40, 15, 'KP\\Models\\Gallery', 'images', 'gallery12-big', 'gallery12-big.jpg', 'uploads', 239147, '[]', '[]', 24, '2015-11-05 01:07:27', '2015-11-05 01:07:27'),
(41, 16, 'KP\\Models\\Gallery', 'images', 'gallery13-big', 'gallery13-big.jpg', 'uploads', 306287, '[]', '[]', 25, '2015-11-05 01:07:46', '2015-11-05 01:07:46'),
(42, 16, 'KP\\Models\\Gallery', 'images', 'gallery13', 'gallery13.jpg', 'uploads', 47076, '[]', '[]', 26, '2015-11-05 01:07:46', '2015-11-05 01:07:46'),
(45, 18, 'KP\\Models\\Gallery', 'images', 'gallery15', 'gallery15.jpg', 'uploads', 30213, '[]', '[]', 28, '2015-11-05 01:08:47', '2015-11-05 01:08:47'),
(46, 18, 'KP\\Models\\Gallery', 'images', 'gallery15-big', 'gallery15-big.jpg', 'uploads', 200800, '[]', '[]', 28, '2015-11-05 01:08:47', '2015-11-05 01:08:47'),
(53, 22, 'KP\\Models\\Gallery', 'images', 'gallery19_big', 'gallery19_big.jpg', 'uploads', 150588, '[]', '[]', 32, '2015-11-05 01:11:24', '2015-11-05 01:11:24'),
(54, 22, 'KP\\Models\\Gallery', 'images', 'gallery19', 'gallery19.jpg', 'uploads', 24037, '[]', '[]', 32, '2015-11-05 01:11:24', '2015-11-05 01:11:24'),
(57, 24, 'KP\\Models\\Gallery', 'images', 'gallery21', 'gallery21.jpg', 'uploads', 22335, '[]', '[]', 35, '2015-11-05 01:12:14', '2015-11-05 01:12:14'),
(58, 24, 'KP\\Models\\Gallery', 'images', 'gallery21_big', 'gallery21_big.jpg', 'uploads', 142572, '[]', '[]', 35, '2015-11-05 01:12:14', '2015-11-05 01:12:14'),
(61, 26, 'KP\\Models\\Gallery', 'images', 'gallery23', 'gallery23.jpg', 'uploads', 15873, '[]', '[]', 37, '2015-11-05 01:13:18', '2015-11-05 01:13:18'),
(62, 26, 'KP\\Models\\Gallery', 'images', 'gallery23_big', 'gallery23_big.jpg', 'uploads', 155871, '[]', '[]', 37, '2015-11-05 01:13:18', '2015-11-05 01:13:18'),
(63, 27, 'KP\\Models\\Gallery', 'images', 'gallery24', 'gallery24.jpg', 'uploads', 19573, '[]', '[]', 38, '2015-11-05 01:13:43', '2015-11-05 01:13:43'),
(64, 27, 'KP\\Models\\Gallery', 'images', 'gallery24_big', 'gallery24_big.jpg', 'uploads', 116889, '[]', '[]', 38, '2015-11-05 01:13:43', '2015-11-05 01:13:43'),
(65, 28, 'KP\\Models\\Gallery', 'images', 'gallery25_big', 'gallery25_big.jpg', 'uploads', 189928, '[]', '[]', 39, '2015-11-05 01:14:07', '2015-11-05 01:14:07'),
(66, 28, 'KP\\Models\\Gallery', 'images', 'gallery25', 'gallery25.jpg', 'uploads', 28154, '[]', '[]', 40, '2015-11-05 01:14:07', '2015-11-05 01:14:07'),
(67, 29, 'KP\\Models\\Gallery', 'images', 'gallery26_big', 'gallery26_big.jpg', 'uploads', 222419, '[]', '[]', 41, '2015-11-05 01:14:38', '2015-11-05 01:14:38'),
(68, 29, 'KP\\Models\\Gallery', 'images', 'gallery26', 'gallery26.jpg', 'uploads', 24139, '[]', '[]', 41, '2015-11-05 01:14:38', '2015-11-05 01:14:38'),
(69, 30, 'KP\\Models\\Gallery', 'images', 'gallery27_big', 'gallery27_big.jpg', 'uploads', 174387, '[]', '[]', 42, '2015-11-05 01:14:59', '2015-11-05 01:14:59'),
(70, 30, 'KP\\Models\\Gallery', 'images', 'gallery27', 'gallery27.jpg', 'uploads', 33155, '[]', '[]', 42, '2015-11-05 01:14:59', '2015-11-05 01:14:59'),
(81, 16, 'KP\\Models\\Press', 'images', 'lofficiel-kastner-pallavicino-body', 'lofficiel-kastner-pallavicino-body.jpg', 'uploads', 25497, '[]', '[]', 47, '2015-11-13 21:30:16', '2015-11-13 21:30:16'),
(82, 17, 'KP\\Models\\Press', 'images', 'elle-kate-moss-body-bodysuit', 'elle-kate-moss-body-bodysuit.jpg', 'uploads', 17291, '[]', '[]', 48, '2015-11-13 21:43:47', '2015-11-13 21:43:47'),
(83, 18, 'KP\\Models\\Press', 'images', 'telva', 'telva.jpg', 'uploads', 24876, '[]', '[]', 49, '2015-11-23 17:56:53', '2015-11-23 17:56:53'),
(85, 19, 'KP\\Models\\Press', 'images', 'Die_Presse_Kasnter_Pallavicino', 'Die_Presse_Kasnter_Pallavicino.jpg', 'uploads', 443710, '[]', '[]', 51, '2016-02-03 18:41:12', '2016-02-03 18:41:12'),
(87, 19, 'KP\\Models\\Press', 'images', 'Die presse', 'Die presse.jpg', 'uploads', 44958, '[]', '[]', 53, '2016-02-03 18:49:57', '2016-02-03 18:49:57'),
(88, 19, 'KP\\Models\\Press', 'images', 'Die presse', 'Die presse.jpg', 'uploads', 37949, '[]', '[]', 54, '2016-02-03 18:57:49', '2016-02-03 18:57:49'),
(89, 19, 'KP\\Models\\Press', 'images', 'die presse', 'die presse.jpg', 'uploads', 37420, '[]', '[]', 55, '2016-02-03 18:58:47', '2016-02-03 18:58:47'),
(90, 19, 'KP\\Models\\Press', 'images', 'die presse', 'die presse.jpg', 'uploads', 37420, '[]', '[]', 56, '2016-02-03 18:59:07', '2016-02-03 18:59:07'),
(95, 20, 'KP\\Models\\Press', 'images', 'io', 'io.jpg', 'uploads', 28762, '[]', '[]', 60, '2016-04-20 13:23:13', '2016-04-20 13:23:13'),
(96, 38, 'KP\\Models\\Gallery', 'images', 'K&P2low', 'K&P2low.jpg', 'uploads', 1574386, '[]', '[]', 61, '2016-04-20 15:30:22', '2016-04-20 15:30:22'),
(97, 34, 'KP\\Models\\Gallery', 'images', 'K&P11low', 'K&P11low.jpg', 'uploads', 1203885, '[]', '[]', 62, '2016-04-20 16:28:52', '2016-04-20 16:28:52'),
(98, 35, 'KP\\Models\\Gallery', 'images', 'K&P8low', 'K&P8low.jpg', 'uploads', 1723345, '[]', '[]', 63, '2016-04-20 16:29:39', '2016-04-20 16:29:39'),
(99, 36, 'KP\\Models\\Gallery', 'images', 'K&P13low', 'K&P13low.jpg', 'uploads', 1590163, '[]', '[]', 64, '2016-04-20 16:30:50', '2016-04-20 16:30:50'),
(100, 21, 'KP\\Models\\Press', 'images', 'brand', 'brand.gif', 'uploads', 3104, '[]', '[]', 65, '2016-04-20 16:34:08', '2016-04-20 16:34:08'),
(101, 40, 'KP\\Models\\Gallery', 'images', 'DAVIDVERDE3', 'DAVIDVERDE3.jpg', 'uploads', 730330, '[]', '[]', 66, '2016-04-20 16:38:35', '2016-04-20 16:38:35'),
(102, 41, 'KP\\Models\\Gallery', 'images', 'ednmeeeesaafd', 'ednmeeeesaafd.jpg', 'uploads', 1107688, '[]', '[]', 67, '2016-04-20 16:39:31', '2016-04-20 16:39:31'),
(103, 37, 'KP\\Models\\Gallery', 'images', 'HUMEVERDE2', 'HUMEVERDE2.jpg', 'uploads', 1257875, '[]', '[]', 68, '2016-04-20 16:40:48', '2016-04-20 16:40:48'),
(104, 42, 'KP\\Models\\Gallery', 'images', 'KATE3', 'KATE3.jpg', 'uploads', 1092084, '[]', '[]', 69, '2016-04-20 16:41:42', '2016-04-20 16:41:42'),
(105, 39, 'KP\\Models\\Gallery', 'images', 'THOMASBIANCO', 'THOMASBIANCO.jpg', 'uploads', 1248877, '[]', '[]', 70, '2016-04-20 16:42:42', '2016-04-20 16:42:42'),
(108, 35, 'KP\\Models\\Gallery', 'images', 'caro2', 'caro2.jpg', 'uploads', 119400, '[]', '[]', 73, '2016-04-20 16:57:58', '2016-04-20 16:57:58'),
(109, 38, 'KP\\Models\\Gallery', 'images', 'caro', 'caro.jpg', 'uploads', 115970, '[]', '[]', 74, '2016-04-20 16:58:22', '2016-04-20 16:58:22'),
(110, 34, 'KP\\Models\\Gallery', 'images', 'caro3', 'caro3.jpg', 'uploads', 89643, '[]', '[]', 75, '2016-04-20 17:00:08', '2016-04-20 17:00:08'),
(111, 36, 'KP\\Models\\Gallery', 'images', 'caro4', 'caro4.jpg', 'uploads', 80631, '[]', '[]', 76, '2016-04-20 17:02:17', '2016-04-20 17:02:17'),
(112, 40, 'KP\\Models\\Gallery', 'images', 'EDMEE222', 'EDMEE222.jpg', 'uploads', 31069, '[]', '[]', 77, '2016-04-20 17:04:23', '2016-04-20 17:04:23'),
(113, 37, 'KP\\Models\\Gallery', 'images', 'EDME2222', 'EDME2222.jpg', 'uploads', 61996, '[]', '[]', 78, '2016-04-20 17:06:00', '2016-04-20 17:06:00'),
(114, 39, 'KP\\Models\\Gallery', 'images', 'EDMEEEEEEEE', 'EDMEEEEEEEE.jpg', 'uploads', 46857, '[]', '[]', 79, '2016-04-20 17:07:47', '2016-04-20 17:07:47'),
(115, 41, 'KP\\Models\\Gallery', 'images', 'ED', 'ED.jpg', 'uploads', 44191, '[]', '[]', 80, '2016-04-20 17:09:32', '2016-04-20 17:09:32'),
(116, 42, 'KP\\Models\\Gallery', 'images', 'EDDD', 'EDDD.jpg', 'uploads', 49010, '[]', '[]', 81, '2016-04-20 17:12:05', '2016-04-20 17:12:05'),
(117, 22, 'KP\\Models\\Press', 'images', 'vanity', 'vanity.jpg', 'uploads', 44070, '[]', '[]', 82, '2016-05-13 15:37:41', '2016-05-13 15:37:41'),
(118, 20, 'KP\\Models\\Press', 'images', 'iodonna', 'iodonna.jpg', 'uploads', 72093, '[]', '[]', 83, '2016-05-13 15:41:52', '2016-05-13 15:41:52'),
(119, 23, 'KP\\Models\\Press', 'images', 'STYLE', 'STYLE.jpg', 'uploads', 54068, '[]', '[]', 84, '2016-05-23 18:08:11', '2016-05-23 18:08:11'),
(120, 24, 'KP\\Models\\Press', 'images', 'D-ART', 'D-ART.jpg', 'uploads', 40738, '[]', '[]', 85, '2016-05-23 18:11:19', '2016-05-23 18:11:19'),
(121, 25, 'KP\\Models\\Press', 'images', 'LAMPO', 'LAMPO.jpg', 'uploads', 26052, '[]', '[]', 86, '2016-06-11 15:08:20', '2016-06-11 15:08:20'),
(122, 26, 'KP\\Models\\Press', 'images', 'tt', 'tt.jpg', 'uploads', 54018, '[]', '[]', 87, '2016-06-11 15:11:08', '2016-06-11 15:11:08'),
(125, 28, 'KP\\Models\\Press', 'images', 'WATCHHHHH', 'WATCHHHHH.jpg', 'uploads', 64763, '[]', '[]', 88, '2016-08-01 16:51:06', '2016-08-01 16:51:06'),
(126, 29, 'KP\\Models\\Press', 'images', 'de', 'de.jpg', 'uploads', 44767, '[]', '[]', 89, '2016-08-12 22:52:53', '2016-08-12 22:52:53'),
(133, 13, 'KP\\Models\\Carousel', 'images', 'Kastner_pallavicino_2', 'Kastner_pallavicino_2.jpg', 'uploads', 545038, '[]', '[]', 96, '2016-11-14 17:47:34', '2016-11-14 17:47:34'),
(134, 14, 'KP\\Models\\Carousel', 'images', 'Kastner_pallavicino_1', 'Kastner_pallavicino_1.jpg', 'uploads', 561678, '[]', '[]', 97, '2016-11-14 17:49:55', '2016-11-14 17:49:55'),
(139, 18, 'KP\\Models\\Carousel', 'images', 'kastner_pallavicino_4', 'kastner_pallavicino_4.jpg', 'uploads', 429753, '[]', '[]', 99, '2016-11-14 17:55:03', '2016-11-14 17:55:03'),
(140, 19, 'KP\\Models\\Carousel', 'images', 'cover_', 'cover_.jpg', 'uploads', 285252, '[]', '[]', 100, '2017-02-22 01:02:04', '2017-02-22 01:02:04'),
(141, 13, 'KP\\Models\\Carousel', 'images', 'cover_2', 'cover_2.jpg', 'uploads', 203249, '[]', '[]', 101, '2017-02-22 01:09:11', '2017-02-22 01:09:11'),
(142, 30, 'KP\\Models\\Press', 'images', 'mr-square', 'mr-square.png', 'uploads', 10272, '[]', '[]', 102, '2017-05-17 17:48:29', '2017-05-17 17:48:29'),
(143, 30, 'KP\\Models\\Press', 'images', 'manrepeller', 'manrepeller.jpg', 'uploads', 33037, '[]', '[]', 103, '2017-05-17 17:51:56', '2017-05-17 17:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_04_123411_create_gallery_table', 1),
('2015_11_04_123432_create_press_table', 1),
('2015_11_04_130839_create_media_table', 1),
('2015_11_06_123531_create_carousel_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `press`
--

CREATE TABLE IF NOT EXISTS `press` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cover_image_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `press`
--

INSERT INTO `press` (`id`, `cover_image_id`, `path`, `position`, `created_at`, `updated_at`) VALUES
(7, 10, 'http://impakter.com/mind-the-body-kastnerpallavicino-and-the-new-made-in-italy/', 8, '2015-11-05 00:34:19', '2015-11-23 18:02:34'),
(10, 13, 'http://www.invitedrome.com/it/journal/title-5/', 7, '2015-11-05 00:35:50', '2015-11-23 18:03:02'),
(11, 14, 'http://www.lofficielitalia.com/kastnerpallavicino/', 1, '2015-11-05 00:36:16', '2015-11-23 18:02:31'),
(12, 15, 'http://www.grazia.it/moda/news-moda/kastner-pallavicino-luxury', 2, '2015-11-05 00:36:48', '2015-11-23 18:02:41'),
(16, 81, '/attachments/1447425101-lofficiel-france.jpg', 3, '2015-11-13 21:30:08', '2015-11-23 18:02:46'),
(17, 82, '/attachments/1447425850-Kate-Moss-and-Kastner-Palalvicino.jpg', 4, '2015-11-13 21:43:40', '2015-11-23 18:02:52'),
(18, 83, '/attachments/1448276424-Telva-kate-moss-fashion-moda-pants-kastner-pallavicino.jpg', 5, '2015-11-23 17:56:37', '2015-11-23 18:02:55'),
(19, 90, '/attachments/1454499920-Die_Presse_Kasnter_Pallavicino.jpg', 6, '2016-02-03 18:08:02', '2016-02-03 18:59:16'),
(20, 118, 'http://www.iodonna.it/indirizzi/', 9, '2016-04-20 13:08:07', '2016-05-13 15:43:19'),
(21, 100, '/attachments/1461144954-VOGUE GERMANY.jpg', 10, '2016-04-20 16:32:26', '2016-05-13 15:39:48'),
(22, 117, '/attachments/1463128690-vanity.jpg', 12, '2016-05-13 15:33:08', '2016-05-13 15:39:14'),
(23, 119, 'http://movingforward.style.it/tag/kastner-pallavicino/', 14, '2016-05-23 18:06:52', '2016-05-23 18:08:20'),
(24, 120, 'http://d-art.it/moda/kastner-pallavicino-eleganza-da-indossare/23476', 15, '2016-05-23 18:11:11', '2016-05-23 18:11:24'),
(25, 121, 'http://lampoon.it/news/a-very-telling-body/', 16, '2016-06-11 15:05:18', '2016-06-11 15:08:43'),
(26, 122, 'http://www.trendstoday.it/trendstoday/kastnerpallavicino-cosi-il-body-diventa-lalternativa-alla-t-shirt/', 17, '2016-06-11 15:10:59', '2016-06-11 15:11:23'),
(28, 125, 'http://www.watch-that-label.com/label-to-watch-kastner-pallavicino/', 18, '2016-08-01 16:50:50', '2016-08-01 16:51:16'),
(29, 126, 'http://www.denoisedesign.com/it/interviewing-kastner-pallavicino-2/', 19, '2016-08-12 22:50:25', '2016-08-12 22:53:07'),
(30, 143, 'http://www.manrepeller.com/2017/05/grace-fuller-style.html', 11, '2017-05-17 17:47:40', '2017-05-17 23:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'KP Admin', 'info@kastner-pallavicino.com', '$2y$10$8CpNZnNAkErd7dR1NWzyB.EngxfHp9NqMEab5HXBpWhkKii3vXmxe', 'pZnGCJ9Rn1X32O16ciiZHhHqdHc1sFWMIQGxSFd3gZxjk0C533LpVsSdklc3', '2015-11-04 20:19:54', '2016-04-12 23:00:46');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
