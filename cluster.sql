-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 15, 2019 at 03:10 PM
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
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
CREATE TABLE IF NOT EXISTS `competition` (
  `id_competition` int(11) NOT NULL AUTO_INCREMENT,
  `id_institution` int(11) NOT NULL,
  `name_competition` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `field_of_activity` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_competition`),
  KEY `id_institution` (`id_institution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `id_institution` int(11) NOT NULL AUTO_INCREMENT,
  `name_institution` varchar(255) COLLATE utf8_bin NOT NULL,
  `name_competition` varchar(255) COLLATE utf8_bin NOT NULL,
  `field_of_activity` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_institution`),
  KEY `field_of_activity` (`field_of_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `id_organization` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(250) COLLATE utf8_bin NOT NULL,
  `name_organization` varchar(255) COLLATE utf8_bin NOT NULL,
  `number_id` int(11) NOT NULL,
  `tax_number` int(11) NOT NULL,
  PRIMARY KEY (`id_organization`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id_organization`, `email`, `password`, `name_organization`, `number_id`, `tax_number`) VALUES
(7, 'neso@gmail.com', '$2y$10$G0NuK3INLTcTIn1qTgR0lOVR3U/UjlENb5uh4BfKy4dcPbBBBrr2q', 'NesoOrg', 123254, 345465),
(8, 'dubro@mail.com', '$2y$10$JqU5UDTpW4uL.5C2jE9mrOp.fu/lZeboEGTDXFwQgPiSB0gXX4Vdu', 'DubroInc', 55656, 678678);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `competition_ibfk_1` FOREIGN KEY (`id_institution`) REFERENCES `institution` (`id_institution`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
