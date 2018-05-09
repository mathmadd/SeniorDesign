-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2018 at 06:46 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hardware_results`
--

-- --------------------------------------------------------

--
-- Table structure for table `AAPL`
--

CREATE TABLE `AAPL` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AAPL`
--

INSERT INTO `AAPL` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '177.857', '174.443', 'pending', 'pending', '851165\n');

-- --------------------------------------------------------

--
-- Table structure for table `ABEV`
--

CREATE TABLE `ABEV` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ABEV`
--

INSERT INTO `ABEV` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '8.68049', '8.47551', 'pending', 'pending', '752837\n');

-- --------------------------------------------------------

--
-- Table structure for table `AMAT`
--

CREATE TABLE `AMAT` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AMAT`
--

INSERT INTO `AMAT` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '59.5281', '58.2182', 'pending', 'pending', '801339\n');

-- --------------------------------------------------------

--
-- Table structure for table `AMD`
--

CREATE TABLE `AMD` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AMD`
--

INSERT INTO `AMD` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '13.0752', '12.6438', 'pending', 'pending', '864407\n');

-- --------------------------------------------------------

--
-- Table structure for table `AMZN`
--

CREATE TABLE `AMZN` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AMZN`
--

INSERT INTO `AMZN` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '1523.21', '1486.77', 'pending', 'pending', '784540\n');

-- --------------------------------------------------------

--
-- Table structure for table `BAC`
--

CREATE TABLE `BAC` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BAC`
--

INSERT INTO `BAC` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '33.4035', '32.8058', 'pending', 'pending', '789756\n');

-- --------------------------------------------------------

--
-- Table structure for table `C`
--

CREATE TABLE `C` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `C`
--

INSERT INTO `C` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '76.6481', '74.9082', 'pending', 'pending', '878468\n');

-- --------------------------------------------------------

--
-- Table structure for table `CHK`
--

CREATE TABLE `CHK` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHK`
--

INSERT INTO `CHK` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '4.55299', '4.32254', 'pending', 'pending', '809432\n');

-- --------------------------------------------------------

--
-- Table structure for table `CLF`
--

CREATE TABLE `CLF` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CLF`
--

INSERT INTO `CLF` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '9.04419', '8.7278', 'pending', 'pending', '857380\n');

-- --------------------------------------------------------

--
-- Table structure for table `CMCSA`
--

CREATE TABLE `CMCSA` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CMCSA`
--

INSERT INTO `CMCSA` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '40.9753', '39.9361', 'pending', 'pending', '873308\n');

-- --------------------------------------------------------

--
-- Table structure for table `CSCO`
--

CREATE TABLE `CSCO` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CSCO`
--

INSERT INTO `CSCO` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '45.7277', '44.6441', 'pending', 'pending', '860256\n');

-- --------------------------------------------------------

--
-- Table structure for table `EBAY`
--

CREATE TABLE `EBAY` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EBAY`
--

INSERT INTO `EBAY` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '44.3534', '43.5476', 'pending', 'pending', '941516\n');

-- --------------------------------------------------------

--
-- Table structure for table `ERIC`
--

CREATE TABLE `ERIC` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ERIC`
--

INSERT INTO `ERIC` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '7.71633', '7.54104', 'pending', 'pending', '837207\n');

-- --------------------------------------------------------

--
-- Table structure for table `ETFC`
--

CREATE TABLE `ETFC` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ETFC`
--

INSERT INTO `ETFC` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '54.9545', '53.7347', 'pending', 'pending', '942456\n');

-- --------------------------------------------------------

--
-- Table structure for table `FB`
--

CREATE TABLE `FB` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FB`
--

INSERT INTO `FB` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '186.842', '181.71', 'pending', 'pending', '952340\n');

-- --------------------------------------------------------

--
-- Table structure for table `GE`
--

CREATE TABLE `GE` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GE`
--

INSERT INTO `GE` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '16.7673', '16.4995', 'pending', 'pending', '862555\n');

-- --------------------------------------------------------

--
-- Table structure for table `GOOGL`
--

CREATE TABLE `GOOGL` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GOOGL`
--

INSERT INTO `GOOGL` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '1116.52', '1091.02', 'pending', 'pending', '946569\n');

-- --------------------------------------------------------

--
-- Table structure for table `INTC`
--

CREATE TABLE `INTC` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `INTC`
--

INSERT INTO `INTC` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '50.6993', '49.117', 'pending', 'pending', '814210\n');

-- --------------------------------------------------------

--
-- Table structure for table `JCP`
--

CREATE TABLE `JCP` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `JCP`
--

INSERT INTO `JCP` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '4.68414', '4.52915', 'pending', 'pending', '892015\n');

-- --------------------------------------------------------

--
-- Table structure for table `JD`
--

CREATE TABLE `JD` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `JD`
--

INSERT INTO `JD` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '46.517', '45.4171', 'pending', 'pending', '785272\n');

-- --------------------------------------------------------

--
-- Table structure for table `LLNW`
--

CREATE TABLE `LLNW` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LLNW`
--

INSERT INTO `LLNW` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '6.65926', '6.44929', 'pending', 'pending', '765482\n');

-- --------------------------------------------------------

--
-- Table structure for table `MAT`
--

CREATE TABLE `MAT` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MAT`
--

INSERT INTO `MAT` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '18.2302', '17.3003', 'pending', 'pending', '795334\n');

-- --------------------------------------------------------

--
-- Table structure for table `MSFT`
--

CREATE TABLE `MSFT` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MSFT`
--

INSERT INTO `MSFT` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '95.6684', '93.5295', 'pending', 'pending', '758955\n');

-- --------------------------------------------------------

--
-- Table structure for table `MU`
--

CREATE TABLE `MU` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MU`
--

INSERT INTO `MU` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '49.8726', '47.8216', 'pending', 'pending', '752963\n');

-- --------------------------------------------------------

--
-- Table structure for table `NFLX`
--

CREATE TABLE `NFLX` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NFLX`
--

INSERT INTO `NFLX` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '296.779', '288.019', 'pending', 'pending', '743404\n');

-- --------------------------------------------------------

--
-- Table structure for table `NOK`
--

CREATE TABLE `NOK` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NOK`
--

INSERT INTO `NOK` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '6.86391', '6.67176', 'pending', 'pending', '752884\n');

-- --------------------------------------------------------

--
-- Table structure for table `NXPI`
--

CREATE TABLE `NXPI` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NXPI`
--

INSERT INTO `NXPI` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '124.698', '123.192', 'pending', 'pending', '790280\n');

-- --------------------------------------------------------

--
-- Table structure for table `ON`
--

CREATE TABLE `ON` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ON`
--

INSERT INTO `ON` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '25.58', '24.8132', 'pending', 'pending', '810356\n');

-- --------------------------------------------------------

--
-- Table structure for table `PEP`
--

CREATE TABLE `PEP` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PEP`
--

INSERT INTO `PEP` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '116.7', '113.703', 'pending', 'pending', '872832\n');

-- --------------------------------------------------------

--
-- Table structure for table `PFE`
--

CREATE TABLE `PFE` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PFE`
--

INSERT INTO `PFE` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '37.7828', '37.2415', 'pending', 'pending', '867859\n');

-- --------------------------------------------------------

--
-- Table structure for table `PM`
--

CREATE TABLE `PM` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PM`
--

INSERT INTO `PM` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '105.064', '102.657', 'pending', 'pending', '848899\n');

-- --------------------------------------------------------

--
-- Table structure for table `QCOM`
--

CREATE TABLE `QCOM` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `QCOM`
--

INSERT INTO `QCOM` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '66.3589', '64.2769', 'pending', 'pending', '937158\n');

-- --------------------------------------------------------

--
-- Table structure for table `RF`
--

CREATE TABLE `RF` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RF`
--

INSERT INTO `RF` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '20.7372', '20.2581', 'pending', 'pending', '842904\n');

-- --------------------------------------------------------

--
-- Table structure for table `RIGL`
--

CREATE TABLE `RIGL` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RIGL`
--

INSERT INTO `RIGL` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '5.78902', '5.61903', 'pending', 'pending', '886424\n');

-- --------------------------------------------------------

--
-- Table structure for table `SBUX`
--

CREATE TABLE `SBUX` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SBUX`
--

INSERT INTO `SBUX` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '59.1596', '57.988', 'pending', 'pending', '838402\n');

-- --------------------------------------------------------

--
-- Table structure for table `SIRI`
--

CREATE TABLE `SIRI` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SIRI`
--

INSERT INTO `SIRI` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '7.9651', '7.83512', 'pending', 'pending', '841742\n');

-- --------------------------------------------------------

--
-- Table structure for table `SKX`
--

CREATE TABLE `SKX` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SKX`
--

INSERT INTO `SKX` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '42.8852', '41.7853', 'pending', 'pending', '839816\n');

-- --------------------------------------------------------

--
-- Table structure for table `SNAP`
--

CREATE TABLE `SNAP` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SNAP`
--

INSERT INTO `SNAP` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '22.6602', '18.6074', 'pending', 'pending', '826320\n');

-- --------------------------------------------------------

--
-- Table structure for table `SQQQ`
--

CREATE TABLE `SQQQ` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SQQQ`
--

INSERT INTO `SQQQ` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '20.604', '19.4674', 'pending', 'pending', '837990\n');

-- --------------------------------------------------------

--
-- Table structure for table `SWN`
--

CREATE TABLE `SWN` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SWN`
--

INSERT INTO `SWN` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '6.15325', '5.7433', 'pending', 'pending', '860072\n');

-- --------------------------------------------------------

--
-- Table structure for table `T`
--

CREATE TABLE `T` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `T`
--

INSERT INTO `T` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '38.393', '37.693', 'pending', 'pending', '856960\n');

-- --------------------------------------------------------

--
-- Table structure for table `TSLA`
--

CREATE TABLE `TSLA` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TSLA`
--

INSERT INTO `TSLA` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '346.777', '336.438', 'pending', 'pending', '875240\n');

-- --------------------------------------------------------

--
-- Table structure for table `TVIX`
--

CREATE TABLE `TVIX` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TVIX`
--

INSERT INTO `TVIX` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '10.7459', '9.31578', 'pending', 'pending', '984325\n');

-- --------------------------------------------------------

--
-- Table structure for table `TWTR`
--

CREATE TABLE `TWTR` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TWTR`
--

INSERT INTO `TWTR` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '34.9532', '33.5133', 'pending', 'pending', '896364\n');

-- --------------------------------------------------------

--
-- Table structure for table `TXN`
--

CREATE TABLE `TXN` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TXN`
--

INSERT INTO `TXN` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '109.806', '106.908', 'pending', 'pending', '765105\n');

-- --------------------------------------------------------

--
-- Table structure for table `VZ`
--

CREATE TABLE `VZ` (
  `ID` int(11) NOT NULL,
  `Date` longtext,
  `predicted_high` longtext,
  `predicted_low` longtext,
  `low_actual` longtext,
  `high_actual` longtext,
  `execution_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VZ`
--

INSERT INTO `VZ` (`ID`, `Date`, `predicted_high`, `predicted_low`, `low_actual`, `high_actual`, `execution_time`) VALUES
(1, '2018-05-08', '52.7213', '51.3093', 'pending', 'pending', '775787\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AAPL`
--
ALTER TABLE `AAPL`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ABEV`
--
ALTER TABLE `ABEV`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `AMAT`
--
ALTER TABLE `AMAT`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `AMD`
--
ALTER TABLE `AMD`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `AMZN`
--
ALTER TABLE `AMZN`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BAC`
--
ALTER TABLE `BAC`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `C`
--
ALTER TABLE `C`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CHK`
--
ALTER TABLE `CHK`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CLF`
--
ALTER TABLE `CLF`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CMCSA`
--
ALTER TABLE `CMCSA`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CSCO`
--
ALTER TABLE `CSCO`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EBAY`
--
ALTER TABLE `EBAY`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ERIC`
--
ALTER TABLE `ERIC`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ETFC`
--
ALTER TABLE `ETFC`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `FB`
--
ALTER TABLE `FB`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GE`
--
ALTER TABLE `GE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `GOOGL`
--
ALTER TABLE `GOOGL`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `INTC`
--
ALTER TABLE `INTC`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `JCP`
--
ALTER TABLE `JCP`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `JD`
--
ALTER TABLE `JD`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `LLNW`
--
ALTER TABLE `LLNW`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `MAT`
--
ALTER TABLE `MAT`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `MSFT`
--
ALTER TABLE `MSFT`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `MU`
--
ALTER TABLE `MU`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `NFLX`
--
ALTER TABLE `NFLX`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `NOK`
--
ALTER TABLE `NOK`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `NXPI`
--
ALTER TABLE `NXPI`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ON`
--
ALTER TABLE `ON`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PEP`
--
ALTER TABLE `PEP`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PFE`
--
ALTER TABLE `PFE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PM`
--
ALTER TABLE `PM`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `QCOM`
--
ALTER TABLE `QCOM`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `RF`
--
ALTER TABLE `RF`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `RIGL`
--
ALTER TABLE `RIGL`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SBUX`
--
ALTER TABLE `SBUX`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SIRI`
--
ALTER TABLE `SIRI`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SKX`
--
ALTER TABLE `SKX`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SNAP`
--
ALTER TABLE `SNAP`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SQQQ`
--
ALTER TABLE `SQQQ`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SWN`
--
ALTER TABLE `SWN`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `T`
--
ALTER TABLE `T`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TSLA`
--
ALTER TABLE `TSLA`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TVIX`
--
ALTER TABLE `TVIX`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TWTR`
--
ALTER TABLE `TWTR`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TXN`
--
ALTER TABLE `TXN`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `VZ`
--
ALTER TABLE `VZ`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AAPL`
--
ALTER TABLE `AAPL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ABEV`
--
ALTER TABLE `ABEV`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AMAT`
--
ALTER TABLE `AMAT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AMD`
--
ALTER TABLE `AMD`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AMZN`
--
ALTER TABLE `AMZN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `BAC`
--
ALTER TABLE `BAC`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `C`
--
ALTER TABLE `C`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `CHK`
--
ALTER TABLE `CHK`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `CLF`
--
ALTER TABLE `CLF`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `CMCSA`
--
ALTER TABLE `CMCSA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `CSCO`
--
ALTER TABLE `CSCO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `EBAY`
--
ALTER TABLE `EBAY`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ERIC`
--
ALTER TABLE `ERIC`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ETFC`
--
ALTER TABLE `ETFC`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `FB`
--
ALTER TABLE `FB`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `GE`
--
ALTER TABLE `GE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `GOOGL`
--
ALTER TABLE `GOOGL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `INTC`
--
ALTER TABLE `INTC`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `JCP`
--
ALTER TABLE `JCP`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `JD`
--
ALTER TABLE `JD`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `LLNW`
--
ALTER TABLE `LLNW`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MAT`
--
ALTER TABLE `MAT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MSFT`
--
ALTER TABLE `MSFT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MU`
--
ALTER TABLE `MU`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `NFLX`
--
ALTER TABLE `NFLX`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `NOK`
--
ALTER TABLE `NOK`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `NXPI`
--
ALTER TABLE `NXPI`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ON`
--
ALTER TABLE `ON`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `PEP`
--
ALTER TABLE `PEP`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `PFE`
--
ALTER TABLE `PFE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `PM`
--
ALTER TABLE `PM`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `QCOM`
--
ALTER TABLE `QCOM`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `RF`
--
ALTER TABLE `RF`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `RIGL`
--
ALTER TABLE `RIGL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SBUX`
--
ALTER TABLE `SBUX`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SIRI`
--
ALTER TABLE `SIRI`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SKX`
--
ALTER TABLE `SKX`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SNAP`
--
ALTER TABLE `SNAP`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SQQQ`
--
ALTER TABLE `SQQQ`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SWN`
--
ALTER TABLE `SWN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `T`
--
ALTER TABLE `T`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `TSLA`
--
ALTER TABLE `TSLA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `TVIX`
--
ALTER TABLE `TVIX`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `TWTR`
--
ALTER TABLE `TWTR`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `TXN`
--
ALTER TABLE `TXN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `VZ`
--
ALTER TABLE `VZ`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
