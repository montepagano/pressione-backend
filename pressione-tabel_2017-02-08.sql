-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2017 at 10:56 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pressione`
--
ALTER TABLE `pressione`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pressione`
--
ALTER TABLE `pressione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
