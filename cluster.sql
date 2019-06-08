-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 04, 2019 at 04:29 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id_admin`, `username`, `password`) VALUES
(2, 'nenad', '$2y$10$pY5/FOgJJTqu3HlX/naGweZP0BYfl00gc7PBwezHCDUOJIJZO4gbG');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE IF NOT EXISTS `assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_organization` int(11) NOT NULL,
  `id_competition` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_organization` (`id_organization`),
  KEY `id_competition` (`id_competition`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `id_organization`, `id_competition`) VALUES
(1, 7, 1),
(3, 9, 3),
(4, 8, 4),
(5, 10, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`id_competition`, `id_institution`, `name_competition`, `type`, `field_of_activity`) VALUES
(1, 1, 'Konkurs iz oblasti vizuelnih umetnosti', 'Umetnost', 'vxcvcxvcxvxcvc'),
(2, 1, 'Konkurs za nacionalne manjine', 'fdgfdgfdg', 'dfgfdgfdgfdg'),
(3, 1, 'Konkurs za izdavanje časopisa', 'gdgfdg', 'fdgfdgfdgfdg'),
(4, 1, 'Konkurs za mlade', 'fff', 'gfgffgfg'),
(5, 2, 'Konkurs iz oblasti vizuelnih umetnosti', 'bnnvbnvb', 'nm,m,mnj'),
(6, 3, 'Konkurs iz oblasti vizuelnih umetnosti', 'fdgfdgfgd', 'fdgfdgfdg');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `id_institution` int(11) NOT NULL AUTO_INCREMENT,
  `name_institution` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_institution`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`id_institution`, `name_institution`) VALUES
(1, 'Ministarstvo kulture i informisanja'),
(2, 'Ministarstvo za omladinu i sport'),
(3, 'Grad Subotica'),
(4, 'Pokrajinski sekretarijat za kulturu'),
(5, 'Pokrajinski sekretarijat za obrazovanje'),
(6, 'Pokrajinski sekretarijat za poljoprivredu'),
(7, 'Pokrajinski sekretarijat za privredu'),
(8, 'Friedrich Ebert Stiftung'),
(9, 'Fond za otvoreno društvo');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id_organization`, `email`, `password`, `name_organization`, `number_id`, `tax_number`) VALUES
(7, 'neso@gmail.com', '$2y$10$G0NuK3INLTcTIn1qTgR0lOVR3U/UjlENb5uh4BfKy4dcPbBBBrr2q', 'NesoOrg', 123254, 345465),
(8, 'dubro@mail.com', '$2y$10$JqU5UDTpW4uL.5C2jE9mrOp.fu/lZeboEGTDXFwQgPiSB0gXX4Vdu', 'DubroInc', 55656, 678678),
(9, 'joja@mail.com', '$2y$10$9V3leWoW1P.d7sZgxP894uGze2uv/PISaN08WlwJ/ZR78qcmrekoG', 'jojaInc', 65643, 76766),
(10, 'dragica@mail.com', '$2y$10$9cXILRT/o5eBWrAHz1hTAOgr9VlDXO4YR0qFlWDt2YAtea3WOdzoO', 'DragicaCo', 5465465, 8767678),
(11, 'tanja@mail.com', '$2y$10$cxMCwdzm.1TTpNwoErf8c.KJAGtZmuuWkXmMECFHx6/yqQ0tECOMi', 'MissIT', 34534534, 565756756);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `fk_id_competition` FOREIGN KEY (`id_competition`) REFERENCES `competition` (`id_competition`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_organization` FOREIGN KEY (`id_organization`) REFERENCES `organization` (`id_organization`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `competition_ibfk_1` FOREIGN KEY (`id_institution`) REFERENCES `institution` (`id_institution`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
