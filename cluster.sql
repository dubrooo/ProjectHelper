-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 10, 2019 at 11:47 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cluster`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_admin`, `username`, `password`) VALUES
(3, 'adminNenad', '$2y$10$MZ.cikN8wesj4OMLCBPWYOviV3Ddwfl0/klg7P7eZGslA91ygv5qq');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE IF NOT EXISTS `assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_organization` int(11) NOT NULL,
  `id_short_competition` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_organization` (`id_organization`),
  KEY `id_competition` (`id_short_competition`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `id_organization`, `id_short_competition`, `status`) VALUES
(15, 11, 5, 'accepted'),
(16, 9, 5, ''),
(17, 10, 5, ''),
(19, 11, 6, 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `id_competition` int(11) NOT NULL AUTO_INCREMENT,
  `id_institution` int(11) NOT NULL,
  `name_competition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_of_activity` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_competition`),
  KEY `id_institution` (`id_institution`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`id_competition`, `id_institution`, `name_competition`, `type`, `field_of_activity`, `description`) VALUES
(2, 1, 'Konkurs za nacionalne manjine', 'fdgfdgfdg', 'dfgfdgfdgfdg', 'dfgfdgfdgfdg'),
(3, 1, 'Konkurs za izdavanje Äasopisa', 'gdgfdg', 'fdgfdgfdgfdg', ''),
(4, 1, 'Konkurs za mlade', 'fff', 'gfgffgfg', ''),
(5, 2, 'Konkurs iz oblasti vizuelnih umetnosti', 'bnnvbnvb', 'nm,m,mnj', ''),
(6, 3, 'Konkurs iz oblasti vizuelnih umetnosti', 'fdgfdgfgd', 'fdgfdgfdg', ''),
(7, 1, 'Konkurs iz oblasti vizuelnih umetnosti	', 'umetnost', 'ttt', 'ÐÐ° Ð¾ÑÐ½Ð¾Ð²Ñƒ Ñ‡Ð»Ð°Ð½Ð° 76. Ð—Ð°ÐºÐ¾Ð½Ð° Ð¾ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð¸ (â€žÐ¡Ð». Ð³Ð»Ð°ÑÐ½Ð¸Ðº Ð Ð¡â€, Ð±Ñ€. 72/09, 13/16 Ð¸ 30/16 â€“ Ð¸ÑÐ¿Ñ€.), Ñ‡Ð»Ð°Ð½Ð° 41. ÑÑ‚Ð°Ð² 1. Ñ‚Ð°Ñ‡ÐºÐ° 1, 2. Ð¸ 10. Ð—Ð°ÐºÐ¾Ð½Ð° Ð¾ ÑƒÑ‚Ð²Ñ€Ñ’Ð¸Ð²Ð°ÑšÑƒ Ð½Ð°Ð´Ð»ÐµÐ¶Ð½Ð¾ÑÑ‚Ð¸ ÐÑƒÑ‚Ð¾Ð½Ð¾Ð¼Ð½Ðµ ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½Ðµ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµ (â€žÐ¡Ð». Ð³Ð»Ð°ÑÐ½Ð¸Ðº Ð Ð¡â€, Ð±Ñ€. 99/09 Ð¸ 67/12 - OÐ´Ð»ÑƒÐºÐ° Ð£Ð¡),  Ñ‡Ð»Ð°Ð½Ð° 11. Ð¸ 12. ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐµ ÑÐºÑƒÐ¿ÑˆÑ‚Ð¸Ð½ÑÐºÐµ Ð¾Ð´Ð»ÑƒÐºÐµ Ð¾ Ð±ÑƒÑŸÐµÑ‚Ñƒ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµ Ð·Ð° 2018. Ð³Ð¾Ð´Ð¸Ð½Ñƒ (â€žÐ¡Ð». Ð»Ð¸ÑÑ‚ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµâ€Ÿ, Ð±Ñ€. 57/17, 17/18-Ñ€ÐµÐ±Ð°Ð»Ð°Ð½Ñ Ð¸ 29/18-Ñ€ÐµÐ±Ð°Ð»Ð°Ð½Ñ), Ñ‡Ð»Ð°Ð½Ð° 24. ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐµ ÑÐºÑƒÐ¿ÑˆÑ‚Ð¸Ð½ÑÐºÐµ oÐ´Ð»ÑƒÐºÐµ Ð¾ Ð¿Ð¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐ¾Ñ˜ ÑƒÐ¿Ñ€Ð°Ð²Ð¸ (â€žÐ¡Ð». Ð»Ð¸ÑÑ‚ ÐÐŸÐ’â€, Ð±Ñ€. 37/14, 54/14 â€“ Ð´Ñ€. Ð¾Ð´Ð»ÑƒÐºÐ°, 37/16 Ð¸ 29/17) Ð¸ Ñƒ ÑÐºÐ»Ð°Ð´Ñƒ ÑÐ° Ð£Ñ€ÐµÐ´Ð±Ð¾Ð¼ Ð¾ ÐºÑ€Ð¸Ñ‚ÐµÑ€Ð¸Ñ˜ÑƒÐ¼Ð¸Ð¼Ð°, Ð¼ÐµÑ€Ð¸Ð»Ð¸Ð¼Ð° Ð¸ Ð½Ð°Ñ‡Ð¸Ð½Ñƒ Ð¸Ð·Ð±Ð¾Ñ€Ð° Ð¿Ñ€Ð¾Ñ˜ÐµÐºÐ°Ñ‚Ð° Ñƒ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð¸ ÐºÐ¾Ñ˜Ð¸ ÑÐµ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ˜Ñƒ Ð¸ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ˜Ñƒ Ð¸Ð· Ð±ÑƒÑŸÐµÑ‚Ð° Ð ÐµÐ¿ÑƒÐ±Ð»Ð¸ÐºÐµ Ð¡Ñ€Ð±Ð¸Ñ˜Ðµ, Ð°ÑƒÑ‚Ð¾Ð½Ð¾Ð¼Ð½Ðµ Ð¿Ð¾ÐºÑ€Ð°Ñ˜Ð¸Ð½Ðµ, Ð¾Ð´Ð½Ð¾ÑÐ½Ð¾ Ñ˜ÐµÐ´Ð¸Ð½Ð¸Ñ†Ð° Ð»Ð¾ÐºÐ°Ð»Ð½Ðµ ÑÐ°Ð¼Ð¾ÑƒÐ¿Ñ€Ð°Ð²Ðµ  (â€žÐ¡Ð». Ð³Ð»Ð°ÑÐ½Ð¸Ðº Ð Ð¡â€Ÿ, Ð±Ñ€. 105/16 Ð¸ 112/17)  ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐ¸ ÑÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ, Ñ˜Ð°Ð²Ð½Ð¾ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸ÑÐ°ÑšÐµ Ð¸ Ð¾Ð´Ð½Ð¾ÑÐµ Ñ Ð²ÐµÑ€ÑÐºÐ¸Ð¼ Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð°Ð¼Ð°\r\n\r\n    Ñ€Ð°ÑÐ¿Ð¸ÑÑƒÑ˜Ðµ\r\n\r\n    ÐšÐžÐÐšÐ£Ð Ð¡\r\n    Ð·Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ - ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÐ°Ñ‚Ð° Ð¾Ð´ Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð° Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ Ð¸ ÑƒÐ¼ÐµÑ‚Ð½Ð¾ÑÑ‚ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ñƒ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ð¸ Ñƒ 2018. Ð³Ð¾Ð´Ð¸Ð½Ð¸\r\n\r\n    ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐ¸ ÑÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ, Ñ˜Ð°Ð²Ð½Ð¾ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸ÑÐ°ÑšÐµ Ð¸ Ð¾Ð´Ð½Ð¾ÑÐµ Ñ Ð²ÐµÑ€ÑÐºÐ¸Ð¼ Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð°Ð¼Ð° (Ñƒ Ð´Ð°Ñ™ÐµÐ¼ Ñ‚ÐµÐºÑÑ‚Ñƒ: Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚), Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ›Ðµ - ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ›Ðµ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ðµ Ð¾Ð´ Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð° Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ Ð¸ ÑƒÐ¼ÐµÑ‚Ð½Ð¾ÑÑ‚ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° -  Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ñƒ 2018. Ð³Ð¾Ð´Ð¸Ð½Ð¸ Ñƒ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸Ð¼Ð° Ð·Ð°ÑˆÑ‚Ð¸Ñ‚Ðµ Ð½ÐµÐ¼Ð°Ñ‚ÐµÑ€Ð¸Ñ˜Ð°Ð»Ð½Ð¾Ð³ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¾Ð³ Ð½Ð°ÑÐ»ÐµÑ’Ð° Ð¸ ÑÐ°Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¾Ð³ ÑƒÐ¼ÐµÑ‚Ð½Ð¸Ñ‡ÐºÐ¾Ð³ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð° Ð¸ Ð¸Ð·Ð´Ð°Ð²Ð°Ñ‡ÐºÐµ Ð´ÐµÐ»Ð°Ñ‚Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° - Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ñƒ ÑƒÐºÑƒÐ¿Ð½Ð¾Ð¼ Ð¸Ð·Ð½Ð¾ÑÑƒ Ð¾Ð´ 8.500.000,00 Ð´Ð¸Ð½Ð°Ñ€Ð° (ÑÐ»Ð¾Ð²Ð¸Ð¼Ð°: Ð¾ÑÐ°Ð¼Ð¼Ð¸Ð»Ð¸Ð¾Ð½Ð°Ð¿ÐµÑ‚ÑÑ‚Ð¾Ñ…Ð¸Ñ™Ð°Ð´Ð°Ð´Ð¸Ð½Ð°Ñ€Ð° Ð¸ 00/100).\r\n\r\n    I Ð ÐÐ¡ÐŸÐžÐ”Ð•Ð›Ð Ð¡Ð Ð•Ð”Ð¡Ð¢ÐÐ’Ð\r\n\r\n    1.	Ð£ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ Ð·Ð°ÑˆÑ‚Ð¸Ñ‚Ðµ Ð½ÐµÐ¼Ð°Ñ‚ÐµÑ€Ð¸Ñ˜Ð°Ð»Ð½Ð¾Ð³ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¾Ð³ Ð½Ð°ÑÐ»ÐµÑ’Ð° Ð¸ ÑÐ°Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¾Ð³ ÑƒÐ¼ÐµÑ‚Ð½Ð¸Ñ‡ÐºÐ¾Ð³ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð° Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ñ›Ðµ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ‚Ð¸ - ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ‚Ð¸:\r\n\r\n    â€¢	Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ðµ Ñƒ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ ÑÐ°Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¾Ð³ ÑƒÐ¼ÐµÑ‚Ð½Ð¸Ñ‡ÐºÐ¾Ð³ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° - Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ñƒ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ð¸:\r\n    - ÐºÑšÐ¸Ð¶ÐµÐ²Ð½Ð¾ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð¾ (Ð¼Ð°Ð½Ð¸Ñ„ÐµÑÑ‚Ð°Ñ†Ð¸Ñ˜Ðµ, Ñ„ÐµÑÑ‚Ð¸Ð²Ð°Ð»Ð¸, Ð½Ð°Ð³Ñ€Ð°Ð´Ðµ, ÐºÐ¾Ð»Ð¾Ð½Ð¸Ñ˜Ðµ);\r\n    - Ð°Ð¼Ð°Ñ‚ÐµÑ€ÑÐºÐ¾ Ð¿Ð¾Ð·Ð¾Ñ€Ð¸ÑˆÐ½Ð¾ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð¾ Ð¸ Ð¸Ð½Ñ‚ÐµÑ€Ð¿Ñ€ÐµÑ‚Ð°Ñ†Ð¸Ñ˜Ñƒ Ð¸ Ñ€ÐµÐ¿ÐµÑ€Ñ‚Ð¾Ð°Ñ€Ð½Ð¸ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼ Ð°Ð¼Ð°Ñ‚ÐµÑ€ÑÐºÐ¸Ñ… Ð¿Ð¾Ð·Ð¾Ñ€Ð¸ÑˆÑ‚Ð° Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° (Ð¿Ð¾Ð·Ð¾Ñ€Ð¸ÑˆÐ½Ðµ Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ðµ, Ñ€Ð°Ð´Ð¸Ð¾Ð½Ð¸Ñ†Ðµ, Ñ„ÐµÑÑ‚Ð¸Ð²Ð°Ð»Ð¸, Ð½Ð°Ð³Ñ€Ð°Ð´Ðµ);\r\n    - Ð¼ÑƒÐ·Ð¸Ñ‡ÐºÐ¾ Ð¸ Ð¼ÑƒÐ·Ð¸Ñ‡ÐºÐ¾-ÑÑ†ÐµÐ½ÑÐºÐ¾ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð¾ Ð¸ Ð¿Ð»ÐµÑ (ÑÐ½Ð¸Ð¼Ð°ÑšÐµ Ð°ÑƒÑ‚Ð¾Ñ€ÑÐºÐ¾Ð³ Ð¼Ð°Ñ‚ÐµÑ€Ð¸Ñ˜Ð°Ð»Ð°, ÐºÐ¾Ð½Ñ†ÐµÑ€Ñ‚Ð¸, Ñ€Ð°Ð´Ð¸Ð¾Ð½Ð¸Ñ†Ðµ, Ñ„ÐµÑÑ‚Ð¸Ð²Ð°Ð»Ð¸, Ð¿Ð»ÐµÑ);\r\n    - Ð»Ð¸ÐºÐ¾Ð²Ð½Ð¾, Ð¿Ñ€Ð¸Ð¼ÐµÑšÐµÐ½Ð¾ Ð¸ Ð¼ÑƒÐ»Ñ‚Ð¸Ð¼ÐµÐ´Ð¸Ñ˜Ð°Ð»Ð½Ð¾ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð¾ (Ð¸Ð·Ð»Ð¾Ð¶Ð±Ðµ, ÐºÐ¾Ð»Ð¾Ð½Ð¸Ñ˜Ðµ, Ñ€Ð°Ð´Ð¸Ð¾Ð½Ð¸Ñ†Ðµ);\r\n    - Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ðµ Ð³Ð¾ÑÑ‚Ð¾Ð²Ð°ÑšÐ° Ñƒ Ð·ÐµÐ¼Ñ™Ð¸ Ð¸ Ð¸Ð½Ð¾ÑÑ‚Ñ€Ð°Ð½ÑÑ‚Ð²Ñƒ Ð¸\r\n    - Ð½Ð°Ð³Ñ€Ð°Ð´Ðµ Ð·Ð° Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð½Ð° Ð¾ÑÑ‚Ð²Ð°Ñ€ÐµÑšÐ° Ñƒ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ ÑƒÐ¼ÐµÑ‚Ð½Ð¾ÑÑ‚Ð¸.\r\n\r\n\r\n\r\n    â€¢	 Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ðµ ÑÐ° Ñ†Ð¸Ñ™ÐµÐ¼ Ð·Ð°ÑˆÑ‚Ð¸Ñ‚Ðµ, Ð½ÐµÐ³Ð¾Ð²Ð°ÑšÐ° Ð¸ Ð¿Ñ€ÐµÐ·ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ˜Ðµ Ð½ÐµÐ¼Ð°Ñ‚ÐµÑ€Ð¸Ñ˜Ð°Ð»Ð½Ð¾Ð³ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¾Ð³ Ð½Ð°ÑÐ»ÐµÑ’Ð°, Ð¸Ð· Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ Ð¸Ð·Ð²Ð¾Ñ€Ð½Ð¸ Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸ Ð¿Ð»ÐµÑ, Ð¸Ð·Ð²Ð¾Ñ€Ð½Ðµ Ð½Ð°Ñ€Ð¾Ð´Ð½Ðµ Ð¿ÐµÑÐ¼Ðµ Ð¸ Ð¼ÑƒÐ·Ð¸ÐºÐ°, Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸ Ð¾Ð±Ð¸Ñ‡Ð°Ñ˜Ðµ Ð¸ Ð²ÐµÑ€Ð¾Ð²Ð°ÑšÐ° Ð¸ ÑÑ‚Ð°Ñ€Ð¸ Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸ Ð·Ð°Ð½Ð°Ñ‚Ð¸:\r\n    - Ð¾Ñ‡ÑƒÐ²Ð°ÑšÐµ, Ñ€Ð°Ð·Ð²Ð¾Ñ˜ Ð¸ Ð¿Ð¾Ð´ÑÑ‚Ð¸Ñ†Ð°ÑšÐµ Ð½ÐµÐ³Ð¾Ð²Ð°ÑšÐ° Ñ‚Ñ€Ð°Ð´Ð¸Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ðµ Ð½Ð°Ñ€Ð¾Ð´Ð½Ðµ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ðµ;\r\n    - Ñ„ÐµÑÑ‚Ð¸Ð²Ð°Ð»Ðµ Ð¸ Ñ‚Ð°ÐºÐ¼Ð¸Ñ‡ÐµÑšÐ° Ð¾Ð´ Ð¸Ð·ÑƒÐ·ÐµÑ‚Ð½Ð¾Ð³ Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð° Ð·Ð° Ð¾Ñ‡ÑƒÐ²Ð°ÑšÐµ Ð¿Ð¾ÑÐµÐ±Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ð½Ð° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸Ñ˜Ð¸ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµ;\r\n    - Ð¿Ñ€Ð¸ÐºÑƒÐ¿Ñ™Ð°ÑšÐµ Ð¿Ð¾Ð´Ð°Ñ‚Ð°ÐºÐ° Ð½Ð° Ñ‚ÐµÑ€ÐµÐ½Ñƒ, Ð¸ÑÑ‚Ñ€Ð°Ð¶Ð¸Ð²Ð°ÑšÐµ, Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð¾Ð²Ð°ÑšÐµ, Ð¸Ð·Ð´Ð°Ð²Ð°ÑšÐµ Ð±Ñ€Ð¾ÑˆÑƒÑ€Ð°, ÐºÐ°Ñ‚Ð°Ð»Ð¾Ð³Ð°;\r\n    - ÑÑ‚Ð²Ð°Ñ€Ð°ÑšÐµ ÑƒÑÐ»Ð¾Ð²Ð° Ð·Ð° Ñ€Ð°Ð´ Ñ„Ð¾Ð»ÐºÐ»Ð¾Ñ€Ð½Ð¸Ñ… Ð°Ð½ÑÐ°Ð¼Ð±Ð°Ð»Ð°, Ð¸Ð·Ð²Ð¾Ñ€Ð½Ð¸Ñ… Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸Ñ… Ð¾Ñ€ÐºÐµÑÑ‚Ð°Ñ€Ð° Ð¸ Ð¿ÐµÐ²Ð°Ñ‡ÐºÐ¸Ñ… Ð³Ñ€ÑƒÐ¿Ð°, Ñ€Ð°Ð´Ð¸Ð¾Ð½Ð¸Ñ†Ð° ÑÑ‚Ð°Ñ€Ð¸Ñ… Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸Ñ… Ð·Ð°Ð½Ð°Ñ‚Ð° (Ð¸Ð·Ñ€Ð°Ð´Ð° Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸Ñ… Ð½Ð¾ÑˆÑšÐ¸, Ð½Ð°Ð±Ð°Ð²ÐºÐ° Ð¸ Ð¿Ð¾Ð¿Ñ€Ð°Ð²ÐºÐ° Ñ‚Ñ€Ð°Ð´Ð¸Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¸Ð½ÑÑ‚Ñ€ÑƒÐ¼ÐµÐ½Ð°Ñ‚Ð°, Ð½Ð°Ð±Ð°Ð²ÐºÑƒ Ð¾ÑÐ½Ð¾Ð²Ð½Ð¸Ñ… ÑÐ¸Ñ€Ð¾Ð²Ð¸Ð½Ð° Ð¸ Ð¾Ð¿Ñ€ÐµÐ¼Ðµ Ð·Ð° Ñ€Ð°Ð´ Ñ€Ð°Ð´Ð¸Ð¾Ð½Ð¸Ñ†Ð° ÑÑ‚Ð°Ñ€Ð¸Ñ… Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸Ñ… Ð·Ð°Ð½Ð°Ñ‚Ð°);\r\n    - ÑÑ‚Ð²Ð°Ñ€Ð°ÑšÐµ, Ð¿Ñ€ÐµÐ·ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ˜Ñƒ Ð¸ Ð¿Ñ€Ð¾Ð¼Ð¾Ð²Ð¸ÑÐ°ÑšÐµ Ð½Ð¾Ð²Ð¸Ñ… ÑÐ°Ð´Ñ€Ð¶Ð°Ñ˜Ð° Ð·Ð°ÑÐ½Ð¾Ð²Ð°Ð½Ð¸Ñ… Ð½Ð° Ð·Ð°ÑˆÑ‚Ð¸Ñ‚Ð¸ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¾Ð³ Ð½Ð°ÑÐ»ÐµÑ’Ð° (Ð¸Ð·Ñ€Ð°Ð´Ð° Ð½Ð¾Ð²Ð¸Ñ… ÐºÐ¾Ñ€ÐµÐ¾Ð³Ñ€Ð°Ñ„Ð¸Ñ˜Ð° Ð·Ð° Ñ„Ð¾Ð»ÐºÐ»Ð¾Ñ€Ð½Ðµ Ð°Ð½ÑÐ°Ð¼Ð±Ð»Ðµ, Ð¸Ð·Ð´Ð°Ð²Ð°ÑšÐµ Ð¦Ð”-Ð° ÑÐ° Ð¸Ð·Ð²Ð¾Ñ€Ð½Ð¾Ð¼ Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¾Ð¼ Ð¼ÑƒÐ·Ð¸ÐºÐ¾Ð¼, Ð³Ð¾ÑÑ‚Ð¾Ð²Ð°ÑšÐ° Ð¸ ÑÐ».);\r\n    - Ð¸Ð·Ð»Ð¾Ð¶Ð±Ðµ, ÐºÐ¾Ð½ÐºÑƒÑ€ÑÐ½Ðµ Ð¸Ð·Ð»Ð¾Ð¶Ð±Ðµ Ð¸ Ñ‚Ð°ÐºÐ¼Ð¸Ñ‡ÐµÑšÐ° Ñ€ÑƒÐºÐ¾Ñ‚Ð²Ð¾Ñ€Ð¸Ð½Ð° ÑÑ‚Ð°Ñ€Ð¸Ñ… Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¸Ñ… Ð·Ð°Ð½Ð°Ñ‚Ð° (Ð¿Ñ€Ð¸Ð¿Ñ€ÐµÐ¼Ð° Ð¸ Ð¿Ñ€Ð¾Ð¿Ñ€Ð°Ñ‚Ð½Ð¸ Ñ€Ð°Ð´) Ð¸\r\n    - ÑƒÐ½Ð°Ð¿Ñ€ÐµÑ’ÐµÑšÐµ ÐºÐ²Ð°Ð»Ð¸Ñ‚ÐµÑ‚Ð° Ð¿Ñ€ÐµÐ·ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ˜Ðµ Ñ‚Ñ€Ð°Ð´Ð¸Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¾Ð³ Ð½Ð°Ñ€Ð¾Ð´Ð½Ð¾Ð³ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð° ÐºÑ€Ð¾Ð· ÐµÐ´ÑƒÐºÐ°Ñ†Ð¸Ñ˜Ñƒ (ÑÑ‚Ñ€ÑƒÑ‡Ð½Ð¸ ÑÐµÐ¼Ð¸Ð½Ð°Ñ€Ð¸, ÐºÑƒÑ€ÑÐµÐ²Ð¸, Ð»ÐµÑ‚ÑšÐ¸ ÐºÐ°Ð¼Ð¿Ð¾Ð²Ð¸, Ñ€Ð°Ð´Ð¸Ð¾Ð½Ð¸Ñ†Ðµ),\r\n\r\n    Ñƒ ÑƒÐºÑƒÐ¿Ð½Ð¾Ð¼ Ð¸Ð·Ð½Ð¾ÑÑƒ Ð¾Ð´ 6.500.000,00 Ð´Ð¸Ð½Ð°Ñ€Ð° (ÑÐ»Ð¾Ð²Ð¸Ð¼Ð°: ÑˆÐµÑÑ‚Ð¼Ð¸Ð»Ð¸Ð¾Ð½Ð°Ð¿ÐµÑ‚ÑÑ‚Ð¾Ñ…Ð¸Ñ™Ð°Ð´Ð°Ð´Ð¸Ð½Ð°Ñ€Ð° Ð¸ 00/100).\r\n\r\n\r\n    2.	Ð£ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ Ð¸Ð·Ð´Ð°Ð²Ð°Ñ‡ÐºÐµ Ð´ÐµÐ»Ð°Ñ‚Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° - Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ñ›Ðµ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ‚Ð¸ â€“ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ‚Ð¸ Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐµ Ð´Ð¾ ÑÐ°Ð´Ð° Ð½ÐµÐ¾Ð±Ñ˜Ð°Ð²Ñ™ÐµÐ½Ð¸Ñ… Ð¸Ð·Ð´Ð°ÑšÐ° ÐºÑšÐ¸Ð³Ð° Ð¸ Ñ‡Ð°ÑÐ¾Ð¿Ð¸ÑÐ° Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ð¾Ð´ Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð° Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ Ð¸ ÑƒÐ¼ÐµÑ‚Ð½Ð¾ÑÑ‚ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ðµ Ð¼Ð°ÑšÐ¸Ð½Ðµ â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ðµ Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ðµ ÑÐ° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸Ñ˜Ðµ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµ, Ð¸Ð· ÐºÑšÐ¸Ð¶ÐµÐ²Ð½Ð¾ÑÑ‚Ð¸, ÑƒÐ¼ÐµÑ‚Ð½Ð¾ÑÑ‚Ð¸ Ð¸ Ð´Ñ€ÑƒÑˆÑ‚Ð²ÐµÐ½Ð¸Ñ… Ð¸ Ñ…ÑƒÐ¼Ð°Ð½Ð¸ÑÑ‚Ð¸Ñ‡ÐºÐ¸Ñ… Ð½Ð°ÑƒÐºÐ° Ñƒ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ðµ Ñƒ ÑƒÐºÑƒÐ¿Ð½Ð¾Ð¼ Ð¸Ð·Ð½Ð¾ÑÑƒ Ð¾Ð´ 2.000.000,00 Ð´Ð¸Ð½Ð°Ñ€Ð° (ÑÐ»Ð¾Ð²Ð¸Ð¼Ð°: Ð´Ð²Ð°Ð¼Ð¸Ð»Ð¸Ð¾Ð½Ð°Ð´Ð¸Ð½Ð°Ñ€Ð° Ð¸ 00/100)\r\n\r\n    II ÐŸÐžÐ¡Ð•Ð‘ÐÐ˜ Ð£Ð¡Ð›ÐžÐ’Ð˜ KÐžÐÐšÐ£Ð Ð¡Ð\r\n\r\n    â€¢	ÐžÐ‘Ð›ÐÐ¡Ð¢: Ð—ÐÐ¨Ð¢Ð˜Ð¢Ð ÐÐ•ÐœÐÐ¢Ð•Ð Ð˜ÐˆÐÐ›ÐÐžÐ“ ÐšÐ£Ð›Ð¢Ð£Ð ÐÐžÐ“ ÐÐÐ¡Ð›Ð•Ð‚Ð Ð˜ Ð¡ÐÐ’Ð Ð•ÐœÐ•ÐÐžÐ“ Ð£ÐœÐ•Ð¢ÐÐ˜Ð§ÐšÐžÐ“ Ð¡Ð¢Ð’ÐÐ ÐÐ›ÐÐ¨Ð¢Ð’Ð ÐÐÐ¦Ð˜ÐžÐÐÐ›ÐÐ˜Ð¥ ÐœÐÐŠÐ˜ÐÐ - ÐÐÐ¦Ð˜ÐžÐÐÐ›ÐÐ˜Ð¥ Ð—ÐÐˆÐ•Ð”ÐÐ˜Ð¦Ð\r\n    1.	ÐÐ° ÐšÐ¾Ð½ÐºÑƒÑ€ÑÑƒ Ð¼Ð¾Ð³Ñƒ Ð´Ð° ÑƒÑ‡ÐµÑÑ‚Ð²ÑƒÑ˜Ñƒ Ð½ÐµÐ²Ð»Ð°Ð´Ð¸Ð½Ðµ Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ˜Ðµ (ÑƒÐ´Ñ€ÑƒÐ¶ÐµÑšÐ° Ð³Ñ€Ð°Ñ’Ð°Ð½Ð°) Ð¸ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ðµ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ðµ â€“ Ð´Ñ€ÑƒÐ³Ð¸ Ð½Ð¸Ð²Ð¾ Ð²Ð»Ð°ÑÑ‚Ð¸ (Ð¾ÑÐ¸Ð¼ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð° Ñ‡Ð¸Ñ˜Ð¸ Ñ˜Ðµ Ð¾ÑÐ½Ð¸Ð²Ð°Ñ‡ ÐÐŸÐ’), Ñ‡Ð¸Ñ˜Ðµ Ñ˜Ðµ ÑÐµÐ´Ð¸ÑˆÑ‚Ðµ Ð½Ð° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸Ñ˜Ð¸ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµ, Ñ‡Ð¸Ñ˜Ð° Ñ˜Ðµ Ð¿Ñ€ÐµÑ‚ÐµÐ¶Ð½Ð° Ð´ÐµÐ»Ð°Ñ‚Ð½Ð¾ÑÑ‚ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð° Ð¸ ÐºÐ¾Ñ˜Ðµ ÑÐ²Ð¾Ñ˜Ð¸Ð¼ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð¾Ð¼ Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð½Ð¾ Ð´Ð¾Ð¿Ñ€Ð¸Ð½Ð¾ÑÐµ Ð¾Ñ‡ÑƒÐ²Ð°ÑšÑƒ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¾Ð³ Ð¸Ð´ÐµÐ½Ñ‚Ð¸Ñ‚ÐµÑ‚Ð°.\r\n    2.	Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ð½ÐµÑ›Ðµ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ‚Ð¸ ÑÑ‚Ð°Ð»Ð½Ðµ Ñ‚Ñ€Ð¾ÑˆÐºÐ¾Ð²Ðµ (Ð³Ñ€ÐµÑ˜Ð°ÑšÐµ, ÑÑ‚Ñ€ÑƒÑ˜Ð°, Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½, Ð·Ð°ÐºÑƒÐ¿ Ð¿Ñ€Ð¾ÑÑ‚Ð¾Ñ€Ð° Ð¸ ÑÐ».), Ð¿Ð»Ð°Ñ‚Ðµ Ð·Ð°Ð¿Ð¾ÑÐ»ÐµÐ½Ð¸Ñ… ÐºÐ¾Ð´ ÐŸÐ¾Ð´Ð½Ð¾ÑÐ¸Ð¾Ñ†Ð° Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ, Ð½Ð°Ð±Ð°Ð²ÐºÑƒ ÐºÐ°Ð½Ñ†ÐµÐ»Ð°Ñ€Ð¸Ñ˜ÑÐºÐµ Ð¸ ÐºÑ€ÑƒÐ¿Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ¼Ðµ Ð¸ Ñ‚Ñ€Ð¾ÑˆÐºÐ¾Ð²Ðµ Ñ€ÐµÐ¿Ñ€ÐµÐ·ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ˜Ðµ. Ð¢Ñ€Ð¾ÑˆÐºÐ¾Ð²Ð¸ Ð³Ð¾Ñ€Ð¸Ð²Ð° ÑÐµ Ð¿Ñ€Ð¸Ð·Ð½Ð°Ñ˜Ñƒ Ð½Ð°Ñ˜Ð²Ð¸ÑˆÐµ Ñƒ Ð¸Ð·Ð½Ð¾ÑÑƒ Ð´Ð¾ 5% Ð¾Ð´ ÑƒÐºÑƒÐ¿Ð½Ð¾Ð³ Ð¸Ð·Ð½Ð¾ÑÐ° Ð´Ð¾Ð´ÐµÑ™ÐµÐ½Ð¸Ñ… ÑÑ€ÐµÐ´ÑÑ‚Ð°Ð²Ð°. Ð£Ð³Ð¾ÑÑ‚Ð¸Ñ‚ÐµÑ™ÑÐºÐµ ÑƒÑÐ»ÑƒÐ³Ðµ Ð¸ Ñ‚Ñ€Ð¾ÑˆÐºÐ¾Ð²Ð¸ Ð³Ð¾Ñ€Ð¸Ð²Ð° Ð¿Ñ€Ð¸Ð·Ð½Ð°Ñ›Ðµ ÑÐµ Ñƒ Ð¸Ð·Ð½Ð¾ÑÑƒ Ð²ÐµÑ›ÐµÐ¼ Ð¾Ð´ 5% Ñƒ Ð¸Ð·ÑƒÐ·ÐµÑ‚Ð½Ð¸Ð¼ ÑÐ»ÑƒÑ‡Ð°Ñ˜ÐµÐ²Ð¸Ð¼Ð° ÐºÐ°Ð´Ð° Ñ˜Ðµ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼ Ñ‚Ð°ÐºÐ²Ð¾Ð³ ÐºÐ°Ñ€Ð°ÐºÑ‚ÐµÑ€Ð° Ð´Ð° ÑƒÐºÑ™ÑƒÑ‡ÑƒÑ˜Ðµ Ð¾Ð²Ðµ ÐµÐ»ÐµÐ¼ÐµÐ½Ñ‚Ðµ (Ð½Ð¿Ñ€. Ð¸ÑÑ…Ñ€Ð°Ð½Ð° ÑƒÑ‡ÐµÑÐ½Ð¸ÐºÐ° Ð½Ð° Ñ„ÐµÑÑ‚Ð¸Ð²Ð°Ð»Ð¸Ð¼Ð°, Ð¿Ñ€ÐµÐ²Ð¾Ð· Ð°ÑƒÑ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»Ð¸Ð¼Ð° Ð¸ ÑÐ».), Ð° ÐºÐ¾Ñ˜Ðµ Ñ›Ðµ ÐšÐ¾Ð¼Ð¸ÑÐ¸Ñ˜Ð° Ð¿Ð¾ÑÐµÐ±Ð½Ð¾ Ñ€Ð°Ð·Ð¼Ð°Ñ‚Ñ€Ð°Ñ‚Ð¸ Ð¸ Ð¾Ð´Ð¾Ð±Ñ€Ð°Ð²Ð°Ñ‚Ð¸.\r\n    3.	ÐÐ° ÐºÐ¾Ð½ÐºÑƒÑ€ÑÑƒ ÑÐµ Ð½ÐµÑ›Ðµ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ‚Ð¸ Ð³Ð°ÑÑ‚Ñ€Ð¾Ð½Ð¾Ð¼ÑÐºÐ¸ Ð¸ Ñ‚ÑƒÑ€Ð¸ÑÑ‚Ð¸Ñ‡ÐºÐ¸ Ñ„ÐµÑÑ‚Ð¸Ð²Ð°Ð»Ð¸.\r\n    4.	ÐŸÐ¾Ð´Ð½Ð¾ÑÐ¸Ð»Ð°Ñ† Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ Ð¼Ð¾Ð¶Ðµ Ð´Ð° ÑƒÑ‡ÐµÑÑ‚Ð²ÑƒÑ˜Ðµ Ñƒ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ Ð·Ð°ÑˆÑ‚Ð¸Ñ‚Ðµ Ð½ÐµÐ¼Ð°Ñ‚ÐµÑ€Ð¸Ñ˜Ð°Ð»Ð½Ð¾Ð³ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¾Ð³ Ð½Ð°ÑÐ»ÐµÑ’Ð° Ð¸ ÑÐ°Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¾Ð³ ÑƒÐ¼ÐµÑ‚Ð½Ð¸Ñ‡ÐºÐ¾Ð³ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð° ÑÐ° Ð½Ð°Ñ˜Ð²Ð¸ÑˆÐµ 1 Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ð¾Ð¼.\r\n\r\n\r\n\r\n    â€¢	ÐžÐ‘Ð›ÐÐ¡Ð¢: Ð˜Ð—Ð”ÐÐ’ÐÐ§ÐšÐ Ð”Ð•Ð›ÐÐ¢ÐÐžÐ¡Ð¢ ÐÐ ÐˆÐ•Ð—Ð˜Ð¦Ð˜ÐœÐ ÐÐÐ¦Ð˜ÐžÐÐÐ›ÐÐ˜Ð¥ ÐœÐÐŠÐ˜ÐÐ - ÐÐÐ¦Ð˜ÐžÐÐÐ›ÐÐ˜Ð¥ Ð—ÐÐˆÐ•Ð”ÐÐ˜Ð¦Ð\r\n    1.	ÐŸÑ€Ð°Ð²Ð¾ ÑƒÑ‡ÐµÑˆÑ›Ð° Ð½Ð° ÐºÐ¾Ð½ÐºÑƒÑ€ÑÑƒ Ð¸Ð¼Ð°jÑƒ Ñ˜Ð°Ð²Ð½Ðµ Ð½ÐµÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ˜ÑÐºÐµ Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ˜Ðµ, Ð¿Ñ€Ð¸Ð²Ð°Ñ‚Ð½Ð° Ð¿Ñ€ÐµÐ´ÑƒÐ·ÐµÑ›Ð°  (Ð¿Ñ€Ð¸Ð²Ñ€ÐµÐ´Ð½Ð° Ð´Ñ€ÑƒÑˆÑ‚Ð²Ð° Ð¸ Ð¿Ñ€ÐµÐ´ÑƒÐ·ÐµÑ‚Ð½Ð¸Ñ†Ð¸) Ð¸ Ð½ÐµÐ²Ð»Ð°Ð´Ð¸Ð½Ðµ Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ˜Ðµ (ÑƒÐ´Ñ€ÑƒÐ¶ÐµÑšÐ° Ð³Ñ€Ð°Ñ’Ð°Ð½Ð°), Ñ‡Ð¸Ñ˜Ðµ Ñ˜Ðµ ÑÐµÐ´Ð¸ÑˆÑ‚Ðµ Ð½Ð° Ñ‚ÐµÑ€Ð¸Ñ‚Ð¾Ñ€Ð¸Ñ˜Ð¸ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµ, Ð° ÐºÐ¾jÐ¸ ÑÑƒ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¾Ð²Ð°Ð½Ð¸ Ð·Ð° Ð±Ð°Ð²Ñ™ÐµÑšÐµ Ð¸Ð·Ð´Ð°Ð²Ð°Ñ‡ÐºÐ¾Ð¼ Ð´ÐµÐ»Ð°Ñ‚Ð½Ð¾ÑˆÑ›Ñƒ Ð¸ ÐºÐ¾Ñ˜Ð¸ Ð¿Ð¾ÑÐ»ÑƒÑ˜Ñƒ Ð½Ð°Ñ˜Ð¼Ð°ÑšÐµ Ð³Ð¾Ð´Ð¸Ð½Ñƒ Ð´Ð°Ð½Ð° Ð¿Ñ€Ðµ Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐ° ÐºÐ¾Ð½ÐºÑƒÑ€ÑÐ° (Ñƒ Ð´Ð°Ñ™ÐµÐ¼ Ñ‚ÐµÑÑ‚Ñƒ: ÐŸÐ¾Ð´Ð½Ð¾ÑÐ¸Ð»Ð°Ñ† Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ).\r\n    2.	Ð—Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ â€“ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐ° ÐºÑšÐ¸Ð³Ð°, Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ñ›Ðµ Ð¿Ñ€Ð¸Ð·Ð½Ð°Ñ‚Ð¸ Ñ‚Ñ€Ð¾ÑˆÐºÐ¾Ð²Ðµ ÑˆÑ‚Ð°Ð¼Ð¿Ð°ÑšÐ° Ð´Ð¾ 300 Ð¿Ñ€Ð¸Ð¼ÐµÑ€Ð°ÐºÐ° Ñƒ ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ð´Ð½Ð¸Ð¼ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ð¸Ð¼Ð° (Ð4, Ð5 Ð¸ Ð‘5) Ð¸ Ð½Ð° ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ð´Ð½Ð¾Ð¼ Ð¿Ð°Ð¿Ð¸Ñ€Ñƒ.\r\n    3.	ÐŸÐ¾Ð´Ð½Ð¾ÑÐ¸Ð»Ð°Ñ† Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ Ð¼Ð¾Ð¶Ðµ Ð´Ð° ÑƒÑ‡ÐµÑÑ‚Ð²ÑƒÑ˜Ðµ Ñƒ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ Ð¸Ð·Ð´Ð°Ð²Ð°Ñ‡ÐºÐµ Ð´ÐµÐ»Ð°Ñ‚Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° ÑÐ° ÑƒÐºÑƒÐ¿Ð½Ð¾ 2 Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ.\r\n\r\n    III ÐžÐŸÐ¨Ð¢Ð˜ Ð£Ð¡Ð›ÐžÐ’Ð˜ KÐžÐÐšÐ£Ð Ð¡Ð\r\n\r\n    1. ÐŸÑ€Ð¸Ñ˜Ð°Ð²a Ð½Ð° KÐ¾Ð½ÐºÑƒÑ€Ñ Ð·Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ Ð¸ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð¸ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÐ°Ñ‚Ð° Ð¾Ð´ Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð° Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ Ð¸ ÑƒÐ¼ÐµÑ‚Ð½Ð¾ÑÑ‚ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ðµ Ñƒ 2018. Ð³Ð¾Ð´Ð¸Ð½Ð¸, Ð¿Ð¾Ð´Ð½Ð¾ÑÐ¸ ÑÐµ Ð½Ð° ÐžÐ±Ñ€Ð°ÑÑ†Ñƒ:\r\n\r\n    -   ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ð° Ð·Ð° Ð¾Ð±Ð»Ð°ÑÑ‚ Ð·Ð°ÑˆÑ‚Ð¸Ñ‚Ðµ Ð½ÐµÐ¼Ð°Ñ‚ÐµÑ€Ð¸Ñ˜Ð°Ð»Ð½Ð¾Ð³ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¾Ð³ Ð½Ð°ÑÐ»ÐµÑ’Ð° Ð¸ ÑÐ°Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¾Ð³ ÑƒÐ¼ÐµÑ‚Ð½Ð¸Ñ‡ÐºÐ¾Ð³ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð°  - Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð°,\r\n    -	ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ð° - Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐµ ÐºÑšÐ¸Ð³Ð° Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ð¸\r\n    -	ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ð° - Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐµ Ñ‡Ð°ÑÐ¾Ð¿Ð¸ÑÐ° Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð°.\r\n    Ð¡Ð²Ðµ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ ÑÐµ Ð¼Ð¾Ð³Ñƒ Ð¿Ñ€ÐµÑƒÐ·ÐµÑ‚Ð¸ Ð½Ð° Ð·Ð²Ð°Ð½Ð¸Ñ‡Ð½Ð¾Ñ˜ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð¸ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ð°: www.kultura.vojvodina.gov.rs\r\n\r\n    2.	ÐŸÐ¾Ð´ Ð¿Ð¾Ñ‚ÑƒÐ¿Ð½Ð¾Ð¼ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ð¾Ð¼ ÑÐµ Ð¿Ð¾Ð´Ñ€Ð°Ð·ÑƒÐ¼ÐµÐ²Ð°:\r\n    â€¢	ÑƒÑ€ÐµÐ´Ð½Ð¾ Ð¿Ð¾Ð¿ÑƒÑšÐµÐ½ Ð¸ Ð¾Ð²ÐµÑ€ÐµÐ½ Ð¾Ð±Ñ€Ð°Ð·Ð°Ñ† ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ðµ Ð¾Ð´ ÑÑ‚Ñ€Ð°Ð½Ðµ Ð¾Ð´Ð³Ð¾Ð²Ð¾Ñ€Ð½Ð¾Ð³ Ð»Ð¸Ñ†Ð°;\r\n    â€¢	Ð´Ð¾ÑÑ‚Ð°Ð²Ñ™ÐµÐ½ Ð´ÐµÑ‚Ð°Ñ™Ð°Ð½ Ð¾Ð¿Ð¸Ñ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ð° Ð¾Ð´Ð½Ð¾ÑÐ½Ð¾ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð° (Ñƒ Ð¿Ñ€Ð¸Ð»Ð¾Ð³Ñƒ)\r\n    â€¢	Ð´ÐµÑ‚Ð°Ñ™Ð°Ð½ Ð½Ð°Ñ†Ñ€Ñ‚ Ð±ÑƒÑŸÐµÑ‚Ð° Ð¿Ð¾ Ð²Ñ€ÑÑ‚Ð°Ð¼Ð° Ñ‚Ñ€Ð¾ÑˆÐºÐ¾Ð²Ð° (Ñƒ ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ð¸)\r\n    â€¢	Ð´Ð¾ÑÑ‚Ð°Ð²Ñ™ÐµÐ½Ð° Ð¾Ð±Ð°Ð²ÐµÐ·Ð½Ð° Ð¿Ñ€Ð°Ñ‚ÐµÑ›Ð° Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ˜Ð° Ð½Ð°Ð²ÐµÐ´ÐµÐ½Ð° Ñƒ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ð¸ (Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚ Ð¾ Ð¿Ñ€Ð°Ð²Ð½Ð¾Ð¼ ÑÑ‚Ð°Ñ‚ÑƒÑÑƒ Ð¸Ð·Ð´Ð°Ð²Ð°Ñ‡Ð° - Ñ„Ð¾Ñ‚Ð¾ÐºÐ¾Ð¿Ð¸Ñ˜Ð° Ð¾ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ˜Ð¸ ÐºÐ¾Ð´ ÐÐŸÐ ),\r\n    â€¢	Ð´Ð¾ÐºÐ°Ð· Ð¾ Ñ€ÐµÐ³ÑƒÐ»Ð¸ÑÐ°Ð½Ð¸Ð¼ Ð°ÑƒÑ‚Ð¾Ñ€ÑÐºÐ¸Ð¼ Ð¿Ñ€Ð°Ð²Ð¸Ð¼Ð° (Ð¿Ð¾Ñ‚Ð¿Ð¸ÑÐ°Ð½ ÑƒÐ³Ð¾Ð²Ð¾Ñ€ ÑÐ° Ð°ÑƒÑ‚Ð¾Ñ€Ð¾Ð¼/Ð¿Ñ€ÐµÐ²Ð¾Ð´Ð¸Ð¾Ñ†ÐµÐ¼/Ð¿Ñ€Ð¸Ñ€ÐµÑ’Ð¸Ð²Ð°Ñ‡ÐµÐ¼) Ð¸ Ð¿Ð¾Ñ‚Ð¿Ð¸ÑÐ°Ð½Ð° Ñ€ÐµÑ†ÐµÐ½Ð·Ð¸Ñ˜Ð°- Ð·Ð° Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐ° ÐºÑšÐ¸Ð³Ð°;\r\n    â€¢	 Ð¿Ð¾ÑÐ»ÐµÐ´ÑšÐ¸ Ð¾Ð±Ñ˜Ð°Ð²Ñ™ÐµÐ½Ð¸ Ð±Ñ€Ð¾Ñ˜ Ñ‡Ð°ÑÐ¾Ð¿Ð¸ÑÐ° Ð¸Ð»Ð¸ Ð°Ð´Ñ€ÐµÑÑƒ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ, Ð°ÐºÐ¾ Ñ˜Ðµ Ñ‡Ð°ÑÐ¾Ð¿Ð¸Ñ Ñƒ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½ÑÐºÐ¾Ñ˜ Ñ„Ð¾Ñ€Ð¼Ð¸, Ð¸Ð»Ð¸ Ñ€ÑƒÐºÐ¾Ð¿Ð¸Ñ, ÑƒÐºÐ¾Ð»Ð¸ÐºÐ¾ Ñ˜Ðµ Ñ€ÐµÑ‡ Ð¾ Ð¿Ñ€Ð²Ð¾Ð¼ Ð±Ñ€Ð¾Ñ˜Ñƒ Ñ‡Ð°ÑÐ¾Ð¿Ð¸ÑÐ° â€“ Ð·Ð° Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐµ Ñ‡Ð°ÑÐ¾Ð¿Ð¸ÑÐ°.\r\n\r\n    3.	 ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ð° ÑÐµ Ð¿Ð¾Ð´Ð½Ð¾ÑÐ¸ Ñƒ 2 (Ð´Ð²Ð°) Ð¿Ð¾Ñ‚Ð¿Ð¸ÑÐ°Ð½Ð° Ð¸ Ð¾Ð²ÐµÑ€ÐµÐ½Ð° Ð¿Ñ€Ð¸Ð¼ÐµÑ€ÐºÐ°.\r\n\r\n    4. Ð Ð¾Ðº Ð·Ð° Ð¿Ð¾Ð´Ð½Ð¾ÑˆÐµÑšÐµ ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ðµ Ð½Ð° ÐšÐ¾Ð½ÐºÑƒÑ€Ñ Ñ˜Ðµ 30 Ð´Ð°Ð½Ð° Ð¾Ð´ Ð´Ð°Ð½Ð° Ð¾Ð±Ñ˜Ð°Ð²Ñ™Ð¸Ð²Ð°ÑšÐ° Ñƒ Ð´Ð½ÐµÐ²Ð½Ð¾Ð¼ Ð»Ð¸ÑÑ‚Ñƒ â€žÐ”Ð½ÐµÐ²Ð½Ð¸Ðºâ€, a Ñ€ÐµÐ·ÑƒÐ»Ñ‚Ð°Ñ‚Ð¸ ÐšÐ¾Ð½ÐºÑƒÑ€ÑÐ° ÑÐµ Ð¾Ð±Ñ˜Ð°Ð²Ñ™ÑƒÑ˜Ñƒ Ð½Ð° Ð·Ð²Ð°Ð½Ð¸Ñ‡Ð½Ð¾Ñ˜ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð¸ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ð°.\r\n    5.ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ðµ ÑÐ° Ð¾Ð±Ð°Ð²ÐµÐ·Ð½Ð¸Ð¼ Ð¿Ñ€Ð¸Ð»Ð¾Ð·Ð¸Ð¼Ð° ÑÐµ Ð¿Ð¾Ð´Ð½Ð¾ÑÐµ Ð»Ð¸Ñ‡Ð½Ð¾ - Ð¿Ñ€ÐµÐ´Ð°Ñ˜Ð¾Ð¼ ÐŸÐ¸ÑÐ°Ñ€Ð½Ð¸Ñ†Ð¸ Ð¿Ð¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐ¸Ñ… Ð¾Ñ€Ð³Ð°Ð½Ð° ÑƒÐ¿Ñ€Ð°Ð²Ðµ Ñƒ ÐÐ¾Ð²Ð¾Ð¼ Ð¡Ð°Ð´Ñƒ (Ð·Ð³Ñ€Ð°Ð´Ð° ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐµ Ð²Ð»Ð°Ð´Ðµ Ñƒ ÐÐ¾Ð²Ð¾Ð¼ Ð¡Ð°Ð´Ñƒ) Ð¸Ð»Ð¸ ÑÐµ ÑƒÐ¿ÑƒÑ›ÑƒÑ˜Ñƒ Ð¿Ð¾ÑˆÑ‚Ð¾Ð¼ Ð½Ð° Ð°Ð´Ñ€ÐµÑÑƒ:\r\n    ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐ¸ ÑÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ, Ñ˜Ð°Ð²Ð½Ð¾ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸ÑÐ°ÑšÐµ\r\n    Ð¸ Ð¾Ð´Ð½Ð¾ÑÐµ Ñ Ð²ÐµÑ€ÑÐºÐ¸Ð¼ Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð°Ð¼Ð°\r\n    21000 ÐÐ¾Ð²Ð¸ Ð¡Ð°Ð´\r\n    Ð‘ÑƒÐ»ÐµÐ²Ð°Ñ€ ÐœÐ¸Ñ…Ð°Ñ˜Ð»Ð° ÐŸÑƒÐ¿Ð¸Ð½Ð° 16\r\n\r\n    ÐšÐ¾Ð½ÐºÑƒÑ€Ñ Ð·Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ - ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÐ°Ñ‚Ð° Ð¾Ð´ Ð·Ð½Ð°Ñ‡Ð°Ñ˜Ð° Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ Ð¸ ÑƒÐ¼ÐµÑ‚Ð½Ð¾ÑÑ‚ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ñƒ ÐÐŸ Ð’Ð¾Ñ˜Ð²Ð¾Ð´Ð¸Ð½Ð¸ Ñƒ 2018. Ð³Ð¾Ð´Ð¸Ð½Ð¸\r\n\r\n    6.	Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ð·Ð°Ð´Ñ€Ð¶Ð°Ð²Ð° Ð¿Ñ€Ð°Ð²Ð¾ Ð´Ð° Ð¾Ð´ Ð¿Ð¾Ð´Ð½Ð¾ÑÐ¸Ð»Ð°Ñ†Ð° ÐºÐ¾Ñ˜Ð¸ ÑÑƒ Ð±Ð»Ð°Ð³Ð¾Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¾ Ð¿Ð¾Ð´Ð½ÐµÐ»Ð¸ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ, Ð¿Ð¾ Ð¿Ð¾Ñ‚Ñ€ÐµÐ±Ð¸, Ð·Ð°Ñ‚Ñ€Ð°Ð¶Ð¸ Ð´Ð¾Ð´Ð°Ñ‚Ð½Ðµ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ˜Ðµ.\r\n    7.	ÐŸÑ€Ð¸Ñ˜Ð°Ð²e ÐºÐ¾Ñ˜Ðµ ÑÐµ Ð´Ð¾ÑÑ‚Ð°Ð²Ðµ Ð½Ð°ÐºÐ¾Ð½ Ð½Ð°Ð²ÐµÐ´ÐµÐ½Ð¾Ð³ Ñ€Ð¾ÐºÐ°, Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ ÑÐ° Ð½ÐµÐ¿Ð¾Ñ‚Ð¿ÑƒÐ½Ð¾Ð¼ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ˜Ð¾Ð¼, Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ Ð¿Ð¾ÑÐ»Ð°Ñ‚Ðµ Ð¿ÑƒÑ‚ÐµÐ¼ Ñ„Ð°ÐºÑÐ° Ð¸Ð»Ð¸ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½ÑÐºÐµ Ð¿Ð¾ÑˆÑ‚Ðµ, Ð½ÐµÐ¿Ð¾Ñ‚Ð¿Ð¸ÑÐ°Ð½Ðµ Ð¸ Ð½ÐµÐ¾Ð²ÐµÑ€ÐµÐ½Ðµ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ, ÐºÐ°Ð¾ Ð¸ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ Ð¿Ð¾Ð´Ð½Ð¾ÑÐ¸Ð»Ð°Ñ†Ð° ÐºÐ¾Ñ˜Ð¸Ð¼Ð° Ñ˜Ðµ ÐŸÐ¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐ¸ ÑÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ, Ñ˜Ð°Ð²Ð½Ð¾ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸ÑÐ°ÑšÐµ Ð¸ Ð¾Ð´Ð½Ð¾ÑÐµ Ñ Ð²ÐµÑ€ÑÐºÐ¸Ð¼ Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð°Ð¼Ð° Ñ‚Ð¾ÐºÐ¾Ð¼ 2017. Ð³Ð¾Ð´Ð¸Ð½Ðµ Ð´Ð¾Ð´ÐµÐ»Ð¸Ð¾ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð° Ð·Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ â€“ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°ÑšÐµ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð° Ð¸ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÐ°Ñ‚Ð° Ñƒ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ðµ, Ð° ÐºÐ¾Ñ˜Ð¸ Ð½Ð¸ÑÑƒ Ð¿Ð¾Ð´Ð½ÐµÐ»Ð¸ Ð¸Ð·Ð²ÐµÑˆÑ‚Ð°Ñ˜ Ð¾ ÑšÐ¸Ñ…Ð¾Ð²Ð¾Ñ˜ Ñ€ÐµÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ˜Ð¸, Ð½ÐµÑ›Ðµ ÑÐµ ÑƒÐ·Ð¸Ð¼Ð°Ñ‚Ð¸ Ñƒ Ñ€Ð°Ð·Ð¼Ð°Ñ‚Ñ€Ð°ÑšÐµ\r\n    8.	ÐÐµÑ›Ðµ ÑÐµ ÑƒÐ·Ð¸Ð¼Ð°Ñ‚Ð¸ Ñƒ Ñ€Ð°Ð·Ð¼Ð°Ñ‚Ñ€Ð°ÑšÐµ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ðµ ÐºÐ¾Ñ€Ð¸ÑÐ½Ð¸ÐºÐ° ÑÐ° Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ð¸Ð¼Ð° ÐºÐ¾Ñ˜Ð¸ ÑÑƒ, ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð¸Ð¼Ð° Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ð° â€“ Ð¿Ð¾ Ñ€Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¸Ð¼ ÐºÐ¾Ð½ÐºÑƒÑ€ÑÐ¸Ð¼Ð°, Ð²ÐµÑ› Ð¿Ð¾Ð´Ñ€Ð¶Ð°Ð½Ð¸ Ñƒ 2018. Ð³Ð¾Ð´Ð¸Ð½Ð¸.\r\n    9.	Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚ Ñ›Ðµ Ð¿Ñ€Ð¸Ñ˜Ð°Ð²Ñ™ÐµÐ½Ðµ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ðµ Ð¿Ñ€Ð¾ÑÐ»ÐµÐ´Ð¸Ñ‚Ð¸ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ð¼ ÑÐ°Ð²ÐµÑ‚Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ñ€Ð°Ð´Ð¸ Ð¿Ñ€Ð¸Ð±Ð°Ð²Ñ™Ð°ÑšÐ° Ð¼Ð¸ÑˆÑ™ÐµÑšÐ°, Ñ Ð¾Ð±Ð·Ð¸Ñ€Ð¾Ð¼ Ð´Ð° ÑÐµ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸ ÑÐ°Ð²ÐµÑ‚Ð¸ ÑÑ‚Ð°Ñ€Ð°Ñ˜Ñƒ Ð¾ ÑÐ¿Ñ€Ð¾Ð²Ð¾Ñ’ÐµÑšÑƒ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ðµ Ð¿Ð¾Ð»Ð¸Ñ‚Ð¸ÐºÐµ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ð¸ Ñƒ ÑÐºÐ»Ð°Ð´Ñƒ ÑÐ° Ð·Ð°ÐºÐ¾Ð½Ð¾Ð¼, ÑƒÑ‡ÐµÑÑ‚Ð²ÑƒÑ˜Ñƒ Ñƒ Ð¿Ñ€Ð¾Ñ†ÐµÑÑƒ Ð¾Ð´Ð»ÑƒÑ‡Ð¸Ð²Ð°ÑšÐ° Ð¾ Ð¿Ð¾Ñ˜ÐµÐ´Ð¸Ð½Ð¸Ð¼ Ð¿Ð¸Ñ‚Ð°ÑšÐ¸Ð¼Ð° Ñƒ Ð²ÐµÐ·Ð¸ ÑÐ° ÑÐ²Ð¾Ñ˜Ð¾Ð¼ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð¾Ð¼. ÐŸÑ€Ð¾Ñ˜ÐµÐºÑ‚Ðµ Ð¿Ð¾Ð´Ð½Ð¾ÑÐ¸Ð»Ð°Ñ†Ð° Ð¿Ñ€Ð¸Ð¿Ð°Ð´Ð½Ð¸ÐºÐ° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð° â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° ÐºÐ¾Ñ˜Ðµ Ð½ÐµÐ¼Ð°Ñ˜Ñƒ Ñ„Ð¾Ñ€Ð¼Ð¸Ñ€Ð°Ð½ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸ ÑÐ°Ð²ÐµÑ‚ Ñ€Ð°Ð·Ð¼Ð°Ñ‚Ñ€Ð°Ñ›Ðµ ÐºÐ¾Ð¼Ð¸ÑÐ¸Ñ˜Ð° Ñ„Ð¾Ñ€Ð¼Ð¸Ñ€Ð°Ð½Ð° Ð¾Ð´ ÑÑ‚Ñ€Ð°Ð½Ðµ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ð°.\r\n    10.	ÐÐ°ÐºÐ¾Ð½ Ð¿Ñ€Ð¸Ð±Ð°Ð²Ñ™Ð°ÑšÐ° Ð¼Ð¸ÑˆÑ™ÐµÑšÐ° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… ÑÐ°Ð²ÐµÑ‚Ð°, Ð¾ Ð¸Ð·Ð±Ð¾Ñ€Ñƒ Ð¿Ñ€Ð¾Ñ˜ÐµÐºÐ°Ñ‚Ð° Ð¿Ð¾ Ñ€Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¾Ð¼ Ñ˜Ð°Ð²Ð½Ð¾Ð¼ ÐºÐ¾Ð½ÐºÑƒÑ€ÑÑƒ Ð¾Ð´Ð»ÑƒÑ‡ÑƒÑ˜Ðµ ÐºÐ¾Ð¼Ð¸ÑÐ¸Ñ˜Ð° ÐºÐ¾Ñ˜Ñƒ Ð¾Ð±Ñ€Ð°Ð·ÑƒÑ˜Ðµ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚, Ð½Ð° Ð¾ÑÐ½Ð¾Ð²Ñƒ Ñ‡ÐµÐ³Ð° Ð¿Ð¾ÐºÑ€Ð°Ñ˜Ð¸Ð½ÑÐºÐ¸ ÑÐµÐºÑ€ÐµÑ‚Ð°Ñ€ Ð·Ð° ÐºÑƒÐ»Ñ‚ÑƒÑ€Ñƒ, Ñ˜Ð°Ð²Ð½Ð¾ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸ÑÐ°ÑšÐµ Ð¸ Ð¾Ð´Ð½Ð¾ÑÐµ Ñ Ð²ÐµÑ€ÑÐºÐ¸Ð¼ Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð°Ð¼Ð° Ð´Ð¾Ð½Ð¾ÑÐ¸ Ñ€ÐµÑˆÐµÑšÐµ Ð¾ Ñ€Ð°ÑÐ¿Ð¾Ñ€ÐµÑ’Ð¸Ð²Ð°ÑšÑƒ ÑÑ€ÐµÐ´ÑÑ‚Ð°Ð²Ð°, ÐºÐ¾Ñ˜Ðµ Ñ˜Ðµ ÐºÐ¾Ð½Ð°Ñ‡Ð½Ð¾ Ð¸ ÐºÐ¾Ñ˜Ðµ ÑÐµ Ð¾Ð±Ñ˜Ð°Ð²Ñ™ÑƒÑ˜Ðµ Ð½Ð° Ð·Ð²Ð°Ð½Ð¸Ñ‡Ð½Ð¾Ñ˜ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð¸ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ð° www.kultura.vojvodina.gov.rs.\r\n    11.	ÐŸÑ€Ð¸Ñ˜Ð°Ð²Ðµ Ð¸ Ð¿Ñ€Ð¸Ð»Ð¾Ð¶ÐµÐ½Ð° Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ˜Ð° ÑÐµ Ð½Ðµ Ð²Ñ€Ð°Ñ›Ð°Ñ˜Ñƒ Ð¿Ð¾Ð´Ð½Ð¾ÑÐ¸Ð¾Ñ†Ð¸Ð¼Ð°.\r\n    12.	Ð”Ð¾Ð´Ð°Ñ‚Ð½Ðµ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ˜Ðµ Ð·Ð° Ð¾Ð±Ð»Ð°ÑÑ‚ Ð·Ð°ÑˆÑ‚Ð¸Ñ‚Ðµ Ð½ÐµÐ¼Ð°Ñ‚ÐµÑ€Ð¸Ñ˜Ð°Ð»Ð½Ð¾Ð³ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð½Ð¾Ð³ Ð½Ð°ÑÐ»ÐµÑ’Ð° Ð¸ ÑÐ°Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¾Ð³ ÑƒÐ¼ÐµÑ‚Ð½Ð¸Ñ‡ÐºÐ¾Ð³ ÑÑ‚Ð²Ð°Ñ€Ð°Ð»Ð°ÑˆÑ‚Ð²Ð° Ð¼Ð¾Ð³Ñƒ ÑÐµ Ð´Ð¾Ð±Ð¸Ñ‚Ð¸ Ñƒ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ñƒ, Ð½Ð° Ðµ-mail: zuzana.takac@vojvodina.gov.rs\r\n    13.	Ð”Ð¾Ð´Ð°Ñ‚Ð½Ðµ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ˜Ðµ Ð·Ð° Ð¾Ð±Ð»Ð°ÑÑ‚ Ð¸Ð·Ð´Ð°Ð²Ð°Ñ‡ÐºÐµ Ð´ÐµÐ»Ð°Ñ‚Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð° Ñ˜ÐµÐ·Ð¸Ñ†Ð¸Ð¼Ð° Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð¼Ð°ÑšÐ¸Ð½Ð°â€“ Ð½Ð°Ñ†Ð¸Ð¾Ð½Ð°Ð»Ð½Ð¸Ñ… Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¸Ñ†Ð° Ð¼Ð¾Ð³Ñƒ ÑÐµ Ð´Ð¾Ð±Ð¸Ñ‚Ð¸ Ñƒ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ñƒ, Ð½Ð° Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½ 021/487-4811 Ð¸Ð»Ð¸ Ðµ-mail: ivana.rozic@vojvodina.gov.rs\r\n\r\n    IV  ÐšÐ Ð˜Ð¢Ð•Ð Ð˜ÐˆÐ£ÐœÐ˜ Ð—Ð Ð˜Ð—Ð‘ÐžÐ  ÐŸÐ ÐžÐˆÐ•ÐšÐÐ¢Ð ÐšÐžÐˆÐ˜ Ð¡Ð•\r\n    Ð¤Ð˜ÐÐÐÐ¡Ð˜Ð ÐÐˆÐ£ â€“ Ð¡Ð£Ð¤Ð˜ÐÐÐÐ¡Ð˜Ð ÐÐˆÐ£ Ð˜Ð— Ð‘Ð£ÐÐ•Ð¢Ð\r\n\r\n    ÐŸÑ€Ð°Ð²Ð¾ ÑƒÑ‡ÐµÑˆÑ›Ð° Ð½Ð° ÐšÐ¾Ð½ÐºÑƒÑ€ÑÑƒ Ð¸Ð¼Ð°Ñ˜Ñƒ Ð¿Ð¾Ð´Ð½Ð¾ÑÐ¸Ð¾Ñ†Ð¸:\r\n\r\n    â€¢	ÐºÐ¾Ñ˜Ð¸ ÑÐµ Ñ˜Ð°Ð²Ðµ ÑÐ° Ð¿Ñ€Ð¾Ñ˜ÐµÐºÑ‚Ð¸Ð¼Ð° ÐºÐ¾Ñ˜Ð¸ ÑÐ°Ð´Ñ€Ð¶Ð¸Ð½ÑÐºÐ¸ Ð¾Ð´Ð³Ð¾Ð²Ð°Ñ€Ð°Ñ˜Ñƒ Ð½Ð°Ð²ÐµÐ´ÐµÐ½Ð¸Ð¼ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸Ð¼Ð°,\r\n    â€¢	ÐºÐ¾Ñ˜Ð¸ Ð¸ÑÐ¿ÑƒÑšÐ°Ð²Ð°Ñ˜Ñƒ Ð¾Ð¿ÑˆÑ‚Ðµ Ð¸ Ð¿Ð¾ÑÐµÐ±Ð½Ðµ ÑƒÑÐ»Ð¾Ð²Ðµ ÐšÐ¾Ð½ÐºÑƒÑ€ÑÐ° Ð¸\r\n    â€¢	Ð¾Ð´Ð³Ð¾Ð²Ð°Ñ€Ð°Ñ˜Ñƒ ÐºÑ€Ð¸Ñ‚ÐµÑ€Ð¸Ñ˜ÑƒÐ¼Ð¸Ð¼Ð° Ð¸ Ð¼ÐµÑ€Ð¸Ð»Ð¸Ð¼Ð° ÑƒÑ‚Ð²Ñ€Ñ’ÐµÐ½Ð¸Ð¼ Ð£Ñ€ÐµÐ´Ð±Ð¾Ð¼ Ð¾ ÐºÑ€Ð¸Ñ‚ÐµÑ€Ð¸Ñ˜ÑƒÐ¼Ð¸Ð¼Ð°, Ð¼ÐµÑ€Ð¸Ð»Ð¸Ð¼Ð° Ð¸ Ð½Ð°Ñ‡Ð¸Ð½Ñƒ Ð¸Ð·Ð±Ð¾Ñ€Ð° Ð¿Ñ€Ð¾Ñ˜ÐµÐºÐ°Ñ‚Ð° Ñƒ ÐºÑƒÐ»Ñ‚ÑƒÑ€Ð¸ ÐºÐ¾Ñ˜Ð¸ ÑÐµ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ˜Ñƒ Ð¸ ÑÑƒÑ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð°Ñ˜Ñƒ Ð¸Ð· Ð±ÑƒÑŸÐµÑ‚Ð° Ð ÐµÐ¿ÑƒÐ±Ð»Ð¸ÐºÐµ Ð¡Ñ€Ð±Ð¸Ñ˜Ðµ, Ð°ÑƒÑ‚Ð¾Ð½Ð¾Ð¼Ð½Ðµ Ð¿Ð¾ÐºÑ€Ð°Ñ˜Ð¸Ð½Ðµ, Ð¾Ð´Ð½Ð¾ÑÐ½Ð¾ Ñ˜ÐµÐ´Ð¸Ð½Ð¸Ñ†Ð° Ð»Ð¾ÐºÐ°Ð»Ð½Ðµ ÑÐ°Ð¼Ð¾ÑƒÐ¿Ñ€Ð°Ð²Ðµ (â€žÐ¡Ð». Ð³Ð»Ð°ÑÐ½Ð¸Ðº Ð Ð¡â€Ÿ Ð±Ñ€. 105/2016 Ð¸ 112/17), ÐºÐ¾Ñ˜Ð° Ñ˜Ðµ Ð¸ÑÑ‚Ð°ÐºÐ½ÑƒÑ‚Ð° Ð½Ð° Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð¸ Ð¡ÐµÐºÑ€ÐµÑ‚Ð°Ñ€Ð¸Ñ˜Ð°Ñ‚Ð° www.kultura.vojvodina.gov.rs\r\n\r\n    ÐŸÐžÐšÐ ÐÐˆÐ˜ÐÐ¡ÐšÐ˜ Ð¡Ð•ÐšÐ Ð•Ð¢ÐÐ \r\n    ________________________\r\n    Ð”Ñ€Ð°Ð³Ð°Ð½Ð° ÐœÐ¸Ð»Ð¾ÑˆÐµÐ²Ð¸Ñ›\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `id_institution` int(11) NOT NULL AUTO_INCREMENT,
  `name_institution` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_institution`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`id_institution`, `name_institution`, `email`, `address`) VALUES
(1, 'Ministarstvo kulture i informisanja', 'kabinet@kultura.gov.rs', ' VlajkoviÄ‡eva 3, Beograd 11000'),
(2, 'Ministarstvo za omladinu i sport', 'press@mos.gov.rs', 'Bulevar Mihajla Pupina 2, Beograd'),
(3, 'Grad Subotica', 'gradsu@mail.com', 'Trg Slobode 1, Subotica'),
(4, 'Pokrajinski sekretarijat za kulturu', 'ministarvo@kultura.gov', 'Bulevar Mihajla Pupina 12, Novi Sad 400144'),
(5, 'Pokrajinski sekretarijat za obrazovanje', 'ounz@vojvodina.gov.rs', 'Bulevar Mihajla Pupina 12, Novi Sad 400346'),
(6, 'Pokrajinski sekretarijat za poljoprivredu', 'psp@vojvodina.gov.rs', 'Bulevar Mihajla Pupina 16, 21101 Novi Sad, Srbija'),
(7, 'Pokrajinski sekretarijat za privredu', 'ministarvo@mail.gov', 'Bulevar Mihajla Pupina 2, Beograd');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `id_organization` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name_organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_id` int(11) NOT NULL,
  `tax_number` int(11) NOT NULL,
  PRIMARY KEY (`id_organization`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id_organization`, `email`, `password`, `name_organization`, `number_id`, `tax_number`) VALUES
(7, 'neso@gmail.com', '$2y$10$G0NuK3INLTcTIn1qTgR0lOVR3U/UjlENb5uh4BfKy4dcPbBBBrr2q', 'NesoOrg', 123254, 345465),
(9, 'joja@mail.com', '$2y$10$9V3leWoW1P.d7sZgxP894uGze2uv/PISaN08WlwJ/ZR78qcmrekoG', 'jojaInc', 65643, 76766),
(10, 'dragica@mail.com', '$2y$10$9cXILRT/o5eBWrAHz1hTAOgr9VlDXO4YR0qFlWDt2YAtea3WOdzoO', 'DragicaCo', 5465465, 8767678),
(11, 'tanja@mail.com', '$2y$10$cxMCwdzm.1TTpNwoErf8c.KJAGtZmuuWkXmMECFHx6/yqQ0tECOMi', 'MissIT', 34534534, 565756756),
(12, 'dubro@mail.com', '$2y$10$og9kLIFTDaj/JfRUuKQEYOehER2viuTyket7/xvS6HITvhuBGSsXG', 'fdfdsf', 54654654, 86787867);

-- --------------------------------------------------------

--
-- Table structure for table `short_competition`
--

DROP TABLE IF EXISTS `short_competition`;
CREATE TABLE IF NOT EXISTS `short_competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_competition` int(11) NOT NULL,
  `deadline` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `documentation` text COLLATE utf8_unicode_ci NOT NULL,
  `type_of_sending` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_competition` (`id_competition`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `short_competition`
--

INSERT INTO `short_competition` (`id`, `id_competition`, `deadline`, `documentation`, `type_of_sending`) VALUES
(5, 2, '11.7.2020.', 'konkurs1.docx', 'email'),
(6, 7, '2.8.2019.', 'konkurs1.docx', 'emailIPosta');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `fk_id_organization` FOREIGN KEY (`id_organization`) REFERENCES `organization` (`id_organization`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_short_competition` FOREIGN KEY (`id_short_competition`) REFERENCES `short_competition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `competition_ibfk_1` FOREIGN KEY (`id_institution`) REFERENCES `institution` (`id_institution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `short_competition`
--
ALTER TABLE `short_competition`
  ADD CONSTRAINT `fk_id_comp` FOREIGN KEY (`id_competition`) REFERENCES `competition` (`id_competition`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
