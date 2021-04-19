-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 02:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `address`, `mobile`) VALUES
(1, 'Larry Paul', 16, 'Chicago', 7659489706),
(2, 'Mary Ann', 26, 'LA', 9890924407),
(3, 'Opal Evans', 20, 'Ohio', 7769073786),
(7, 'Jina Rai', 40, 'Pune', 9823080466),
(8, 'Nina Joseph', 30, 'Kingston', 1300998732),
(10, 'Ramasundar', 14, 'Bangalore', 7725814763),
(11, 'Alex ', 28, 'London', 7512458969),
(12, 'Alford', 12, 'New York', 4425874365),
(13, 'Ravi Kumar', 78, 'Bangalore', 7745625874),
(14, 'Santakumar', 21, 'Chennai', 722388644),
(15, 'Lucida', 25, 'San Jose', 4452981425),
(16, 'Anderson', 35, 'Brisban', 4521447739),
(17, 'Subbarao', 27, 'Bangalore', 7712346674),
(18, 'Mukesh', 52, 'Mumbai', 2912358964),
(19, 'McDen', 76, 'London', 7822255588),
(20, 'Ivan', 16, 'Torento', 822544166),
(21, 'Benjamin', 23, 'Hampshair', 822536178),
(22, 'Mark Long', 32, 'Seattle', 130092345),
(23, 'Olong Thiehs', 18, 'Texas', 140934033),
(24, 'Frank Putt', 26, 'Long Island', 1400987213),
(25, 'Lily Treslawney', 18, 'Utah', 1300987032),
(26, 'Mila', 13, 'Hampton', 230023123),
(27, 'Guy Dunderson', 19, 'Ohio', 1200849012);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
