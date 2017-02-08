-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2017 at 11:26 AM
-- Server version: 5.6.34
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pa`
--

-- --------------------------------------------------------

--
-- Table structure for table `pressione`
--

CREATE TABLE `pressione` (
  `id` int(11) NOT NULL,
  `sistolica` int(11) NOT NULL,
  `diastolica` int(11) NOT NULL,
  `datamisurazione` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pressione`
--

INSERT INTO `pressione` (`id`, `sistolica`, `diastolica`, `datamisurazione`) VALUES
(17, 345, 345, '2017-02-08 22:00:00'),
(18, 345, 345, '2017-02-08 22:00:00'),
(19, 345, 345, '2017-02-08 22:00:00'),
(20, 345, 345, '2017-02-08 22:00:00'),
(21, 345, 345, '2017-02-08 22:00:00'),
(22, 345, 345, '2017-02-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `temperatura`
--

CREATE TABLE `temperatura` (
  `id` int(11) NOT NULL,
  `valore` int(10) UNSIGNED NOT NULL,
  `datamisurazione` timestamp NOT NULL,
  `temperatura` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temperatura`
--

INSERT INTO `temperatura` (`id`, `valore`, `datamisurazione`, `temperatura`) VALUES
(2, 56, '2017-02-08 11:01:27', NULL),
(3, 34, '2017-02-08 11:01:34', NULL),
(4, 22, '2017-02-08 11:01:34', NULL),
(5, 23, '2017-02-08 11:01:42', NULL),
(6, 33, '2017-02-08 11:01:42', NULL),
(7, 66, '2017-02-08 11:01:51', NULL),
(8, 3, '2017-02-08 11:01:51', NULL),
(9, 89, '2017-02-08 11:01:59', NULL),
(10, 0, '2017-02-08 11:01:59', NULL),
(11, 34, '2017-02-10 22:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pressione`
--
ALTER TABLE `pressione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temperatura`
--
ALTER TABLE `temperatura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pressione`
--
ALTER TABLE `pressione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `temperatura`
--
ALTER TABLE `temperatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
