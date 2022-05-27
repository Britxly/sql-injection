-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2016 at 10:43 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Database1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `id` int(20) unsigned NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Credit_Card` double DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`id`, `First_Name`, `Last_Name`, `Username`, `Password`, `Credit_Card`, `Address`) VALUES
(1, 'Johnny', 'Depp', 'jdepp', 'mypassword', 2147483648, '27 Harlot Avenue'),
(2, 'Mariah', 'Carey', 'mcarey', 'supersexy', 2409397597, '301 Maple Circle'),
(3, 'Kanye', 'West', 'kwest', 'yeezy21', 9384805833, '152 North West Parade'),
(4, 'Ariana', 'Grande', 'agrande', 'baebae43', 4982130334, '17 havendale way'),
(5, 'Daniel', 'Gillies', 'dgillies', 'myword56', 2313048050, 'New Orleans'),
(6, 'Pheobe', 'Bale', 'pbale', 'sweetiesis', 9284829824, '343 Forks Road'),
(7, 'Jack', 'Daniels', 'jdaniels', 'password1', 2904239848, '1 Sun Valley Road'),
(8, 'Shelly-Ann', 'Davis', 'sdavis', 'hotterer', 2393802492, 'Clement Avenue'),
(9, 'Chris', 'Brown', 'cbrown', 'password1', 4949202021, '989 Galeville'),
(10, 'Yanique', 'CurvyDiva', 'ycurvydiva', 'curvycurvy', 3485809494, '21 Jamaica Road'),
(11, 'j', 'h', 'h', 'h', 5052039402, 'h');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `id` int(11) unsigned NOT NULL,
  `Product_Name` varchar(11) DEFAULT NULL,
  `Brand` varchar(11) DEFAULT NULL,
  `Cost` decimal(11,0) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`id`, `Product_Name`, `Brand`, `Cost`, `Weight`) VALUES
(1, 'Crackers', 'National', '70', 112),
(2, 'Sausage', 'Grace', '120', 345),
(3, 'Bun', 'National', '90', 220),
(4, 'Syrup', 'Anchor', '320', 878),
(5, 'Sardine', 'Fish', '45', 390),
(6, 'Butter', 'Chiffon', '290', 212),
(7, 'Ketchup', 'Grace', '550', 450),
(8, 'Wine', 'Cali', '890', 2200),
(9, 'Bread', 'National', '300', 600),
(10, 'Burger', 'Geddies', '512', 779);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `id` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
