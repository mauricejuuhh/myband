-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2017 at 09:23 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj_myband`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `naam` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `foto`, `naam`) VALUES
(1, '../images/album.jpg', 'roses'),
(2, '../images/album1.jpg', 'Memories: Do Not Open'),
(3, '../images/album2.jpg', 'Collage'),
(4, '../images/album3.jpg', 'Bouquet'),
(5, '../images/album4.jpg', 'Something Just Like This (Remi');

-- --------------------------------------------------------

--
-- Table structure for table `nieuws`
--

CREATE TABLE IF NOT EXISTS `nieuws` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `titel` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nieuws`
--

INSERT INTO `nieuws` (`id`, `foto`, `titel`) VALUES
(1, '../images/album1.jpg', 'eeuhh. dit is een mooie a');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `naam` varchar(60) NOT NULL,
  `prijs` int(11) NOT NULL,
  `tickets` tinyint(1) NOT NULL,
  `opmerking` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `foto`, `naam`, `prijs`, `tickets`, `opmerking`) VALUES
(1, 'https://s3.amazonaws.com/poly-screenshots.angel.co/enhanced_screenshots/404290-original.jpg', 'leuk pettjeeee.. wil je niet', 1, 0, '1'),
(2, 'https://s3.amazonaws.com/poly-screenshots.angel.co/enhanced_screenshots/404290-original.jpg', 'leuk pettjeeee.. wil je niet', 1, 0, '1'),
(3, 'https://s3.amazonaws.com/poly-screenshots.angel.co/enhanced_screenshots/404290-original.jpg', 'leuk pettjeeee.. wil je niet', 1, 0, '1'),
(4, 'https://s3.amazonaws.com/poly-screenshots.angel.co/enhanced_screenshots/404290-original.jpg', 'leuk pettjeeee.. wil je niet', 1, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE IF NOT EXISTS `site_settings` (
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`footer`) VALUES
('© 2017 Maurice de Jong - MyBand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nieuws`
--
ALTER TABLE `nieuws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nieuws`
--
ALTER TABLE `nieuws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
