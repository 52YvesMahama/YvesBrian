-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 27, 2021 at 08:02 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prison`
--

-- --------------------------------------------------------

--
-- Table structure for table `activityprisoner`
--

DROP TABLE IF EXISTS `activityprisoner`;
CREATE TABLE IF NOT EXISTS `activityprisoner` (
  `Pactivity_ID` int(11) NOT NULL AUTO_INCREMENT,
  `actName` varchar(50) NOT NULL,
  `Pdurarion` varchar(50) NOT NULL,
  `permutationID` int(11) NOT NULL,
  PRIMARY KEY (`Pactivity_ID`),
  KEY `permutationID` (`permutationID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activityprisoner`
--

INSERT INTO `activityprisoner` (`Pactivity_ID`, `actName`, `Pdurarion`, `permutationID`) VALUES
(4, 'Sleeping ', '10 hours', 1);

-- --------------------------------------------------------

--
-- Table structure for table `activitystafff`
--

DROP TABLE IF EXISTS `activitystafff`;
CREATE TABLE IF NOT EXISTS `activitystafff` (
  `Sactivity_ID` int(11) NOT NULL AUTO_INCREMENT,
  `actName` varchar(50) NOT NULL,
  `Sdurarion` varchar(50) NOT NULL,
  `permutationID` int(11) NOT NULL,
  PRIMARY KEY (`Sactivity_ID`),
  KEY `permutationID` (`permutationID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activitystafff`
--

INSERT INTO `activitystafff` (`Sactivity_ID`, `actName`, `Sdurarion`, `permutationID`) VALUES
(1, 'Night shift', '10 hours', 1);

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE IF NOT EXISTS `block` (
  `BlockID` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`BlockID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`BlockID`, `name`) VALUES
(2, 'Block A'),
(3, 'Block B'),
(4, 'Block C'),
(5, 'Block D'),
(8, 'Block E');

-- --------------------------------------------------------

--
-- Table structure for table `cell`
--

DROP TABLE IF EXISTS `cell`;
CREATE TABLE IF NOT EXISTS `cell` (
  `cellID` int(11) NOT NULL AUTO_INCREMENT,
  `cellName` varchar(11) NOT NULL,
  `BlockID` int(50) NOT NULL,
  PRIMARY KEY (`cellID`),
  KEY `BlockID` (`BlockID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cell`
--

INSERT INTO `cell` (`cellID`, `cellName`, `BlockID`) VALUES
(1, 'Cell A', 2),
(2, 'Cell B', 2),
(3, 'Cell C', 2),
(4, 'Cell D', 2),
(8, 'Cell E', 2);

-- --------------------------------------------------------

--
-- Table structure for table `crimee`
--

DROP TABLE IF EXISTS `crimee`;
CREATE TABLE IF NOT EXISTS `crimee` (
  `crimeID` int(11) NOT NULL AUTO_INCREMENT,
  `crimeName` varchar(50) NOT NULL,
  `crimetypeID` int(11) NOT NULL,
  PRIMARY KEY (`crimeID`),
  KEY `crimeType` (`crimetypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimee`
--

INSERT INTO `crimee` (`crimeID`, `crimeName`, `crimetypeID`) VALUES
(1, 'Robbery with violence', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crimetype`
--

DROP TABLE IF EXISTS `crimetype`;
CREATE TABLE IF NOT EXISTS `crimetype` (
  `crimetypeID` int(11) NOT NULL AUTO_INCREMENT,
  `levelID` int(11) NOT NULL,
  PRIMARY KEY (`crimetypeID`),
  KEY `levelID` (`levelID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimetype`
--

INSERT INTO `crimetype` (`crimetypeID`, `levelID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `extend`
--

DROP TABLE IF EXISTS `extend`;
CREATE TABLE IF NOT EXISTS `extend` (
  `extendID` int(11) NOT NULL AUTO_INCREMENT,
  `prisonerIDD` int(11) NOT NULL,
  `permutationID` int(11) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`extendID`),
  KEY `prisonerIDD` (`prisonerIDD`),
  KEY `permutationID` (`permutationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inmates`
--

DROP TABLE IF EXISTS `inmates`;
CREATE TABLE IF NOT EXISTS `inmates` (
  `prisonerID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNumber` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`prisonerID`),
  UNIQUE KEY `IDNumber` (`IDNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inmates`
--

INSERT INTO `inmates` (`prisonerID`, `IDNumber`, `firstname`, `lastname`, `phonenumber`, `address`, `dob`, `status`, `gender`, `created_at`) VALUES
(2, '1', 'Magona', 'Muzunganda', '+243991898893', 'Drc Kinshasa', '2018-07-20', 'Married', 'Male', '2021-04-14 10:43:02'),
(4, '3', 'Zakari', 'Bababasi', '+243 991 898 893', 'Drc Kinshasa', '1998-10-20', 'Married', 'Male', '2021-04-14 11:34:39'),
(6, '4', 'Chancel', 'Bemba', '+243 991 898 893', 'Drc Kinshasa', '2010-10-10', 'Married', 'Male', '2021-04-15 12:17:20'),
(12, '5', 'Sandra', 'Kazadi', '+1 001 002 003', 'Nairobi', '2010-10-10', 'Married', 'Female', '2021-04-15 12:25:58'),
(13, '6', 'Roda', 'Nkuba', '+243 991 898 893', 'Nairobi', '1998-10-20', 'Married', 'Female', '2021-04-15 13:57:43'),
(14, '7', 'Busa', 'Gael', '+243 991 898 893', 'Drc Kinshasa', '2020-12-25', 'Single', 'Male', '2021-04-15 15:14:17'),
(15, '8', 'Theodore', 'Obiang', '+243 991 898 893', 'Goma', '1998-10-20', 'Married', 'Male', '2021-04-15 15:18:01'),
(16, '9', 'Toutu', 'Roba', '+1 001 002 003', 'France', '1998-10-20', 'Single', 'Male', '2021-04-15 18:14:47'),
(17, '10', 'Wivine', 'Moleka', '+243 991 898 893', 'Drc Kinshasa', '2010-10-10', 'Married', 'Female', '2021-04-15 20:15:41'),
(19, '11', 'Pamela', 'Lukundula', '+1 001 002 003', 'Goma', '2010-10-10', 'Single', 'Female', '2021-04-17 02:16:13'),
(20, '12', 'Patrick', 'Bolonia', '+243 991 898 893', 'Drc Kinshasa', '2020-12-25', 'Married', 'Male', '2021-04-17 10:55:11'),
(21, '2', 'Runinga', 'Seninga', '+1 001 002 003', 'Nairobi', '2008-11-20', 'Married', 'Male', '2021-04-25 16:19:04'),
(22, '13', 'David', 'Okitoo', '+243 991 898 893', 'Goma', '2010-10-10', 'Married', 'Male', '2021-04-30 16:30:03'),
(23, '14', 'Huguess', 'Golondele', '+1 001 002 003', 'Nairobi', '1970-12-25', 'Married', 'Male', '2021-05-13 15:59:53'),
(24, '15', 'Ikia', 'Claudia', '+243 991 898 893', 'Drc Kinshasa', '2019-09-30', 'Single', 'Female', '2021-05-13 19:12:46'),
(25, '16', 'Mbosho', 'Mbogogo', '+1 001 002 003', 'France', '2021-05-21', 'Married', 'Male', '2021-05-15 12:42:32'),
(26, '18', 'Kodia', 'Mbosso', '+1 001 002 003', 'Nairobi', '2021-06-16', 'Married', 'Male', '2021-05-15 13:57:50'),
(27, '17', 'Rutobokoa', 'Kampangala', '+1 001 002 003', 'Nairobi', '2019-08-01', 'Married', 'Male', '2021-05-17 18:56:53'),
(29, '21', 'Magona', 'Chandarura', '+1 001 002 003', 'Nairobi', '2021-05-06', 'Married', 'Male', '2021-05-19 12:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `levelID` int(11) NOT NULL AUTO_INCREMENT,
  `LevelName` varchar(50) NOT NULL,
  `LevelDuration` varchar(50) NOT NULL,
  PRIMARY KEY (`levelID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`levelID`, `LevelName`, `LevelDuration`) VALUES
(1, 'Capital Offence', 'Life Sentence');

-- --------------------------------------------------------

--
-- Table structure for table `permutation`
--

DROP TABLE IF EXISTS `permutation`;
CREATE TABLE IF NOT EXISTS `permutation` (
  `permutationID` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`permutationID`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permutation`
--

INSERT INTO `permutation` (`permutationID`, `staff_id`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

DROP TABLE IF EXISTS `prisoner`;
CREATE TABLE IF NOT EXISTS `prisoner` (
  `prisonerIDD` int(11) NOT NULL AUTO_INCREMENT,
  `prisonerID` int(11) NOT NULL,
  `BlockID` int(50) NOT NULL,
  `cellID` int(11) NOT NULL,
  `crimeID` int(11) NOT NULL,
  PRIMARY KEY (`prisonerIDD`),
  KEY `prisonerID` (`prisonerID`,`BlockID`,`cellID`),
  KEY `BlockID` (`BlockID`),
  KEY `cellID` (`cellID`),
  KEY `crimeID` (`crimeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`prisonerIDD`, `prisonerID`, `BlockID`, `cellID`, `crimeID`) VALUES
(1, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `released`
--

DROP TABLE IF EXISTS `released`;
CREATE TABLE IF NOT EXISTS `released` (
  `releasedID` int(11) NOT NULL AUTO_INCREMENT,
  `prisonerIDD` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `permutationID` int(11) NOT NULL,
  `Comment` text NOT NULL,
  PRIMARY KEY (`releasedID`),
  KEY `prisonerIDD` (`prisonerIDD`,`permutationID`),
  KEY `permutationID` (`permutationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skin`
--

DROP TABLE IF EXISTS `skin`;
CREATE TABLE IF NOT EXISTS `skin` (
  `skinID` int(11) NOT NULL AUTO_INCREMENT,
  `skinIDNumber` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `relation` varchar(50) NOT NULL,
  `prisonerID` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`skinID`),
  KEY `IDNumber` (`prisonerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skin`
--

INSERT INTO `skin` (`skinID`, `skinIDNumber`, `firstname`, `lastname`, `phonenumber`, `address`, `gender`, `relation`, `prisonerID`, `created_at`) VALUES
(1, '1', 'Magonaa', 'Chandarura', '+1 001 002 003', 'Nairobi', 'Male', 'Friend', 2, '2021-05-17 20:01:29'),
(3, '3', 'Brian', 'Nyaundi', '+1 001 002 003', 'Nairobi', 'Male', 'Friend', 2, '2021-05-18 13:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `educlevel` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`staff_id`),
  KEY `ID` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `firstname`, `lastname`, `dob`, `status`, `phonenumber`, `address`, `educlevel`, `gender`, `title`, `nationality`, `created_at`) VALUES
(4, 'Yves', 'Mahama', '2020-12-25', 'Single', '+243 991 898 893', 'Drc Kinshasa', 'PHD', 'Male', 'Jailor', 'Congolese', '2021-03-23 00:00:00'),
(5, 'Yvonne', 'Mahama', '2017-01-01', 'Married', '+243 991 898 893', 'Drc Kinshasa', 'PHD', 'Female', 'Jailor', 'Congolese', '2021-04-07 00:00:00'),
(10, 'Yvette', 'Mahama', '2010-10-10', 'Single', '+1 001 002 003', 'Drc Kinshasa', 'PHD', 'Female', 'Jailor', 'Congolese', '2021-04-09 00:00:00'),
(13, 'Eve', 'Mahama', '2010-10-10', 'Single', '+1 001 002 003', 'Drc Kinshasa', 'PHD', 'Female', 'Jailor', 'Congolese', '2021-04-10 00:22:00'),
(14, 'Lionel', 'MESSI', '2007-11-19', 'Married', '+1 001 002 003', 'Argentina', 'PHD', 'Male', 'Jailor', 'Argentina', '2021-04-10 00:52:20'),
(15, 'Paulo', 'Dybala', '2010-10-10', 'Married', '+1 001 002 003', 'Argentina', 'Primary', 'Male', 'Jailor', 'Argentina', '2021-04-13 15:56:38'),
(16, 'Ansu', 'Fatiiii', '2010-10-10', 'Single', '+1 001 002 003', 'Spain', 'Secondary', 'Male', 'Jailor', 'Congolese', '2021-04-13 16:03:43'),
(18, 'Isco', 'Alacra', '1998-10-20', 'Single', '+1 001 002 003', 'Spain', 'PHD', 'Male', 'Jailor', 'Spain', '2021-04-13 16:10:15'),
(19, 'Paul', 'Pogba', '2020-12-25', 'Single', '+1 001 002 003', 'Drc Kinshasa', 'PHD', 'Male', 'Jailor', 'French', '2021-04-13 17:20:48'),
(20, 'Florian', 'Thauvin', '2010-10-10', 'Single', '+1 001 002 003', 'France', 'PHD', 'Male', 'Jailor', 'French', '2021-04-13 19:15:10'),
(25, 'Bruno', 'Fernandes', '2010-10-10', 'Single', '+1 001 002 003', 'France', 'PHD', 'Male', 'Jailor', 'French', '2021-05-13 18:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `ttprisoner2`
--

DROP TABLE IF EXISTS `ttprisoner2`;
CREATE TABLE IF NOT EXISTS `ttprisoner2` (
  `ttprisoner2ID` int(11) NOT NULL AUTO_INCREMENT,
  `prisonerIDD` int(11) NOT NULL,
  `Pactivity_ID` int(11) NOT NULL,
  `permutationID` int(11) NOT NULL,
  PRIMARY KEY (`ttprisoner2ID`),
  KEY `prisonerIDD` (`prisonerIDD`),
  KEY `Pactivity_ID` (`Pactivity_ID`),
  KEY `permutationID` (`permutationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ttstaff1`
--

DROP TABLE IF EXISTS `ttstaff1`;
CREATE TABLE IF NOT EXISTS `ttstaff1` (
  `TTstaff1ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sactivity_ID` int(11) NOT NULL,
  `Pactivity_ID` int(11) NOT NULL,
  `BlockID` int(50) NOT NULL,
  PRIMARY KEY (`TTstaff1ID`),
  KEY `Sactivity_ID` (`Sactivity_ID`),
  KEY `Pactivity_ID` (`Pactivity_ID`),
  KEY `BlockID` (`BlockID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ttstaff1`
--

INSERT INTO `ttstaff1` (`TTstaff1ID`, `Sactivity_ID`, `Pactivity_ID`, `BlockID`) VALUES
(1, 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `staff_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `staff_id` (`staff_id`),
  UNIQUE KEY `staff_id_3` (`staff_id`),
  KEY `staff_id_2` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `created_at`, `staff_id`, `type`) VALUES
(4, 'yves', '123456', '2021-03-23 16:21:18', 4, 'jailor'),
(5, 'yvonne', '123456', '2021-04-07 11:54:24', 5, 'jailor'),
(6, 'Yvette', '12345', '2021-04-15 16:25:41', 10, 'jailor'),
(7, 'Eve', '12344', '2021-04-15 16:27:25', 13, 'Administrator'),
(8, 'Messi', '12345', '2021-05-17 21:00:28', 14, 'jailor'),
(13, 'dybala', '123456', '2021-05-25 13:20:29', 15, 'jailor');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activityprisoner`
--
ALTER TABLE `activityprisoner`
  ADD CONSTRAINT `activityprisoner_ibfk_1` FOREIGN KEY (`permutationID`) REFERENCES `permutation` (`permutationID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `activitystafff`
--
ALTER TABLE `activitystafff`
  ADD CONSTRAINT `activitystafff_ibfk_1` FOREIGN KEY (`permutationID`) REFERENCES `permutation` (`permutationID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cell`
--
ALTER TABLE `cell`
  ADD CONSTRAINT `cell_ibfk_1` FOREIGN KEY (`BlockID`) REFERENCES `block` (`BlockID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `crimee`
--
ALTER TABLE `crimee`
  ADD CONSTRAINT `crimee_ibfk_1` FOREIGN KEY (`crimetypeID`) REFERENCES `crimetype` (`crimetypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `crimetype`
--
ALTER TABLE `crimetype`
  ADD CONSTRAINT `crimetype_ibfk_1` FOREIGN KEY (`levelID`) REFERENCES `level` (`levelID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `extend`
--
ALTER TABLE `extend`
  ADD CONSTRAINT `extend_ibfk_1` FOREIGN KEY (`prisonerIDD`) REFERENCES `prisoner` (`prisonerIDD`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `extend_ibfk_2` FOREIGN KEY (`permutationID`) REFERENCES `permutation` (`permutationID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `permutation`
--
ALTER TABLE `permutation`
  ADD CONSTRAINT `permutation_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD CONSTRAINT `prisoner_ibfk_1` FOREIGN KEY (`prisonerID`) REFERENCES `inmates` (`prisonerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `prisoner_ibfk_3` FOREIGN KEY (`BlockID`) REFERENCES `block` (`BlockID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `prisoner_ibfk_4` FOREIGN KEY (`cellID`) REFERENCES `cell` (`cellID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `prisoner_ibfk_5` FOREIGN KEY (`crimeID`) REFERENCES `crimee` (`crimeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `released`
--
ALTER TABLE `released`
  ADD CONSTRAINT `released_ibfk_1` FOREIGN KEY (`prisonerIDD`) REFERENCES `prisoner` (`prisonerIDD`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `released_ibfk_2` FOREIGN KEY (`permutationID`) REFERENCES `permutation` (`permutationID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `skin`
--
ALTER TABLE `skin`
  ADD CONSTRAINT `skin_ibfk_1` FOREIGN KEY (`prisonerID`) REFERENCES `inmates` (`prisonerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ttstaff1`
--
ALTER TABLE `ttstaff1`
  ADD CONSTRAINT `ttstaff1_ibfk_1` FOREIGN KEY (`Sactivity_ID`) REFERENCES `activitystafff` (`Sactivity_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ttstaff1_ibfk_2` FOREIGN KEY (`Pactivity_ID`) REFERENCES `activityprisoner` (`Pactivity_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ttstaff1_ibfk_3` FOREIGN KEY (`BlockID`) REFERENCES `block` (`BlockID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
