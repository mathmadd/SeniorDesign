-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2018 at 06:49 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `at`
--

CREATE TABLE `at` (
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `High` double(6,2) NOT NULL,
  `Low` double(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hvalue`
--

CREATE TABLE `hvalue` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Moment` datetime DEFAULT NULL,
  `PHigh` double(6,2) DEFAULT NULL,
  `Plow` double(6,2) DEFAULT NULL,
  `Executiontime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hvalue`
--

INSERT INTO `hvalue` (`ID`, `Name`, `Moment`, `PHigh`, `Plow`, `Executiontime`) VALUES
(1, 'Alphabet', '2017-12-06 03:11:00', 1016.10, 995.57, '00:00:12'),
(2, 'Facebook', '2017-12-05 03:10:00', 176.57, 170.79, '00:00:10'),
(3, 'Tesla', '2017-12-05 03:14:00', 308.26, 300.61, '00:00:11'),
(4, 'Twitter', '2017-12-05 03:14:00', 20.94, 20.22, '00:00:12'),
(5, 'NetFlix', '2017-12-05 03:12:00', 189.72, 178.38, '00:00:12'),
(6, 'Amazon', '2017-12-05 03:15:00', 1175.20, 1128.00, '00:00:09'),
(7, 'Walmart', '2017-12-05 03:12:00', 97.96, 96.68, '00:00:15'),
(8, 'Apple', '2017-12-05 03:13:05', 172.62, 169.63, '00:00:11'),
(9, 'AT&T INC.', '2017-12-05 03:11:00', 37.54, 36.75, '00:00:12'),
(10, 'VIX', '2017-12-05 03:12:02', 11.86, 10.26, '00:00:12'),
(12, 'Alphabet', '2017-12-02 02:11:00', 1012.20, 988.67, '00:00:12'),
(13, 'Facebook', '2017-12-02 03:10:00', 199.23, 188.88, '00:00:10'),
(14, 'Tesla', '2017-12-02 03:14:00', 308.26, 300.61, '00:00:11'),
(15, 'Twitter', '2017-12-02 03:14:00', 20.94, 20.22, '00:00:12'),
(16, 'NetFlix', '2017-12-02 03:12:00', 190.02, 174.88, '00:00:12'),
(17, 'Amazon', '2017-12-02 03:15:00', 1195.20, 1177.76, '00:00:09'),
(18, 'Walmart', '2017-12-02 03:12:00', 99.69, 96.68, '00:00:15'),
(19, 'Apple', '2017-12-02 03:13:05', 172.77, 167.66, '00:00:11'),
(20, 'AT&T INC.', '2017-12-02 03:11:00', 39.54, 37.75, '00:00:12'),
(21, 'VIX', '2017-12-02 03:12:02', 10.86, 9.26, '00:00:12'),
(22, 'Alphabet', '2017-12-14 02:11:00', 1010.20, 998.67, '00:00:12'),
(23, 'Facebook', '2017-12-14 03:10:00', 189.23, 188.88, '00:00:10'),
(24, 'Tesla', '2017-12-14 03:14:00', 307.26, 310.61, '00:00:11'),
(25, 'Twitter', '2017-12-14 03:14:00', 21.94, 20.22, '00:00:12'),
(26, 'NetFlix', '2017-12-14 03:12:00', 190.02, 174.88, '00:00:12'),
(27, 'Amazon', '2017-12-14 03:15:00', 1199.20, 1177.76, '00:00:09'),
(28, 'Walmart', '2017-12-14 03:12:00', 99.69, 99.68, '00:00:15'),
(29, 'Apple', '2017-12-14 03:13:05', 142.77, 147.66, '00:00:11'),
(30, 'AT&T INC.', '2017-12-14 03:11:00', 39.54, 38.75, '00:00:12'),
(31, 'VIX', '2017-12-14 03:12:02', 10.86, 11.26, '00:00:12'),
(32, 'Alphabet', '2017-12-07 02:11:00', 1014.20, 996.67, '00:00:12'),
(33, 'Facebook', '2017-12-07 03:10:00', 199.23, 198.88, '00:00:10'),
(34, 'Tesla', '2017-12-07 03:14:00', 307.96, 311.61, '00:00:11'),
(35, 'Twitter', '2017-12-07 03:14:00', 21.99, 21.22, '00:00:12'),
(36, 'NetFlix', '2017-12-07 03:12:00', 191.02, 194.88, '00:00:12'),
(37, 'Amazon', '2017-12-07 03:15:00', 1199.20, 1197.76, '00:00:09'),
(38, 'Walmart', '2017-12-07 03:12:00', 100.69, 99.68, '00:00:15'),
(39, 'Apple', '2017-12-07 03:13:05', 142.57, 147.66, '00:00:11'),
(40, 'AT&T INC.', '2017-12-07 03:11:00', 39.54, 40.75, '00:00:12'),
(41, 'VIX', '2017-12-07 03:12:02', 11.86, 12.26, '00:00:12'),
(43, 'Facebook', '2017-12-06 03:10:00', 195.23, 198.88, '00:00:10'),
(44, 'Tesla', '2017-12-06 03:14:00', 307.67, 311.61, '00:00:11'),
(45, 'Twitter', '2017-12-06 03:14:00', 24.99, 21.22, '00:00:12'),
(46, 'NetFlix', '2017-12-06 03:12:00', 181.02, 184.88, '00:00:12'),
(47, 'Amazon', '2017-12-06 03:15:00', 1199.20, 1199.76, '00:00:09'),
(48, 'Walmart', '2017-12-06 03:12:00', 100.69, 100.68, '00:00:15'),
(49, 'Apple', '2017-12-06 03:13:05', 153.57, 157.66, '00:00:11'),
(50, 'AT&T INC.', '2017-12-06 03:11:00', 40.54, 40.75, '00:00:12'),
(51, 'VIX', '2017-12-06 03:12:02', 11.86, 11.26, '00:00:12'),
(52, 'Alphabet', '2017-12-04 02:11:00', 1016.25, 996.67, '00:00:12'),
(53, 'Facebook', '2017-12-04 03:10:00', 195.53, 198.88, '00:00:10'),
(54, 'Tesla', '2017-12-04 03:14:00', 307.65, 311.61, '00:00:11'),
(55, 'Twitter', '2017-12-04 03:14:00', 22.99, 21.22, '00:00:12'),
(56, 'NetFlix', '2017-12-04 03:12:00', 183.02, 184.88, '00:00:12'),
(57, 'Amazon', '2017-12-04 03:15:00', 1194.20, 1199.76, '00:00:09'),
(58, 'Walmart', '2017-12-04 03:12:00', 99.69, 100.68, '00:00:15'),
(59, 'Apple', '2017-12-04 03:13:05', 154.57, 157.66, '00:00:11'),
(60, 'AT&T INC.', '2017-12-04 03:11:00', 41.54, 40.75, '00:00:12'),
(61, 'VIX', '2017-12-04 03:12:02', 11.86, 12.26, '00:00:12'),
(62, 'Alphabet', '2017-12-03 02:11:00', 1016.25, 1012.67, '00:00:12'),
(63, 'Facebook', '2017-12-03 03:10:00', 195.53, 194.88, '00:00:10'),
(64, 'Tesla', '2017-12-03 03:14:00', 307.65, 308.61, '00:00:11'),
(65, 'Twitter', '2017-12-03 03:14:00', 22.99, 22.22, '00:00:12'),
(66, 'NetFlix', '2017-12-03 03:12:00', 183.02, 183.88, '00:00:12'),
(67, 'Amazon', '2017-12-03 03:15:00', 1194.20, 1189.76, '00:00:09'),
(68, 'Walmart', '2017-12-03 03:12:00', 99.69, 99.68, '00:00:15'),
(69, 'Apple', '2017-12-03 03:13:05', 154.57, 155.66, '00:00:11'),
(70, 'AT&T INC.', '2017-12-03 03:11:00', 41.54, 41.75, '00:00:12'),
(71, 'VIX', '2017-12-03 03:12:02', 11.86, 11.26, '00:00:12'),
(72, 'Alphabet', '2017-12-01 02:11:00', 1013.25, 1012.67, '00:00:12'),
(73, 'Facebook', '2017-12-01 03:10:00', 193.53, 194.88, '00:00:10'),
(74, 'Tesla', '2017-12-01 03:14:00', 307.63, 308.61, '00:00:11'),
(75, 'Twitter', '2017-12-01 03:14:00', 22.39, 22.22, '00:00:12'),
(76, 'NetFlix', '2017-12-01 03:12:00', 183.32, 183.88, '00:00:12'),
(77, 'Amazon', '2017-12-03 03:15:00', 1194.25, 1189.76, '00:00:09'),
(78, 'Walmart', '2017-12-01 03:12:00', 99.62, 99.68, '00:00:15'),
(79, 'Apple', '2017-12-01 03:13:05', 154.55, 155.66, '00:00:11'),
(80, 'AT&T INC.', '2017-12-01 03:11:00', 42.54, 41.75, '00:00:12'),
(81, 'VIX', '2017-12-01 03:12:02', 11.86, 12.34, '00:00:12'),
(82, 'Alphabet', '2017-12-12 03:11:00', 1016.10, 1000.57, '00:00:12'),
(83, 'Facebook', '2017-12-12 03:10:00', 176.57, 171.79, '00:00:10'),
(84, 'Tesla', '2017-12-12 03:14:00', 309.26, 300.61, '00:00:11'),
(85, 'Twitter', '2017-12-12 03:14:00', 21.94, 20.22, '00:00:12'),
(86, 'NetFlix', '2017-12-12 03:12:00', 188.72, 178.38, '00:00:12'),
(87, 'Amazon', '2017-12-12 03:15:00', 1174.20, 1128.00, '00:00:09'),
(88, 'Walmart', '2017-12-12 03:12:00', 97.96, 97.68, '00:00:15'),
(89, 'Apple', '2017-12-12 03:13:05', 172.62, 168.63, '00:00:11'),
(90, 'AT&T INC.', '2017-12-12 03:11:00', 37.54, 37.75, '00:00:12'),
(91, 'VIX', '2017-12-12 03:12:02', 11.86, 11.26, '00:00:12'),
(92, 'Alphabet', '2017-12-13 03:11:00', 1012.10, 1000.57, '00:00:12'),
(93, 'Facebook', '2017-12-13 03:10:00', 177.57, 171.79, '00:00:10'),
(94, 'Tesla', '2017-12-13 03:14:00', 312.26, 300.61, '00:00:11'),
(95, 'Twitter', '2017-12-13 03:14:00', 22.94, 20.22, '00:00:12'),
(96, 'NetFlix', '2017-12-13 03:12:00', 187.72, 178.38, '00:00:12'),
(97, 'Amazon', '2017-12-13 03:15:00', 1176.20, 1128.00, '00:00:09'),
(98, 'Walmart', '2017-12-13 03:12:00', 97.66, 97.68, '00:00:15'),
(99, 'Apple', '2017-12-13 03:13:05', 172.64, 168.63, '00:00:11'),
(100, 'AT&T INC.', '2017-12-13 03:11:00', 38.54, 37.75, '00:00:12'),
(101, 'VIX', '2017-12-13 03:12:02', 11.86, 13.26, '00:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `svalue`
--

CREATE TABLE `svalue` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PHigh` double(6,2) DEFAULT NULL,
  `Plow` double(6,2) DEFAULT NULL,
  `Executiontime` time NOT NULL,
  `Moment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svalue`
--

INSERT INTO `svalue` (`ID`, `Name`, `PHigh`, `Plow`, `Executiontime`, `Moment`) VALUES
(1, 'Alphabet', 1016.10, 995.57, '00:00:17', '2017-12-05 09:38:29'),
(2, 'Facebook', 176.57, 170.79, '00:00:12', '2017-12-05 09:38:42'),
(3, 'Tesla', 308.26, 300.61, '00:00:14', '2017-12-05 09:41:04'),
(4, 'Twitter', 20.94, 20.22, '00:00:15', '2017-12-05 09:41:12'),
(5, 'NetFlix', 189.72, 178.38, '00:00:16', '2017-12-05 09:41:21'),
(6, 'Amazon', 1175.20, 1128.00, '00:00:12', '2017-12-05 09:41:28'),
(7, 'Walmart', 97.96, 96.68, '00:00:17', '2017-12-05 09:41:43'),
(8, 'Apple', 172.62, 169.63, '00:00:15', '2017-12-05 09:41:50'),
(9, 'AT&T INC.', 37.54, 36.75, '00:00:14', '2017-12-05 09:41:56'),
(10, 'VIX', 11.86, 10.26, '00:00:15', '2017-12-05 09:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_first` varchar(256) NOT NULL,
  `user_last` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_uid` varchar(256) NOT NULL,
  `user_pwd` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first`, `user_last`, `user_email`, `user_uid`, `user_pwd`) VALUES
(1, 'Daniell', 'Lorenxo', 'karkiroshan02@yahoo.com', 'Admin', '$2y$10$7VLV4/eOEMa4/YQonUh.Z.3J9.Cu2qF2pg.VxNNzKzlgMRYmZT2pG'),
(2, 'prism', 'spring', 'Roceankarki@gmail.com', 'prism', '$2y$10$B.Nx7Z6hkxjhM01WBSVSCeHLEUPddYRZGDwdpR0IR3E7MbKB9olFG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hvalue`
--
ALTER TABLE `hvalue`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `svalue`
--
ALTER TABLE `svalue`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hvalue`
--
ALTER TABLE `hvalue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `svalue`
--
ALTER TABLE `svalue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
