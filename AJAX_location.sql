-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2016 at 01:45 am
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AJAX_location`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cities`
--

CREATE TABLE IF NOT EXISTS `Cities` (
`CityID` int(10) unsigned NOT NULL,
  `CityName` varchar(100) NOT NULL,
  `CountryID` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Cities`
--

INSERT INTO `Cities` (`CityID`, `CityName`, `CountryID`) VALUES
(1, 'Wellington', 1),
(2, 'Auckland', 1),
(3, 'Sydney', 2),
(4, 'Melbourne', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE IF NOT EXISTS `Country` (
`CountryID` int(10) unsigned NOT NULL,
  `CountryName` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`CountryID`, `CountryName`) VALUES
(1, 'New Zealand'),
(2, 'Australia'),
(3, 'England');

-- --------------------------------------------------------

--
-- Table structure for table `Suburbs`
--

CREATE TABLE IF NOT EXISTS `Suburbs` (
`SuburbID` int(10) unsigned NOT NULL,
  `SuburbName` varchar(100) NOT NULL,
  `CityID` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Suburbs`
--

INSERT INTO `Suburbs` (`SuburbID`, `SuburbName`, `CityID`) VALUES
(1, 'Te Aro', 1),
(2, 'Karori', 1),
(3, 'Avondale', 2),
(4, 'Ponsonby', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cities`
--
ALTER TABLE `Cities`
 ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
 ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `Suburbs`
--
ALTER TABLE `Suburbs`
 ADD PRIMARY KEY (`SuburbID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cities`
--
ALTER TABLE `Cities`
MODIFY `CityID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
MODIFY `CountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Suburbs`
--
ALTER TABLE `Suburbs`
MODIFY `SuburbID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
