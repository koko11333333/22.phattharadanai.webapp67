-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 03:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `acid` varchar(3) NOT NULL,
  `acname` varchar(20) NOT NULL,
  `aclastname` varchar(20) NOT NULL,
  `acage` varchar(20) NOT NULL,
  `actelephone` varchar(11) NOT NULL,
  `acaddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`acid`, `acname`, `aclastname`, `acage`, `actelephone`, `acaddress`) VALUES
('221', 'ko', 'ko', '20', '01234679', 'patum'),
('222', 'rin', 'rin', '21', '0121457898', 'non'),
('223', 'jin', 'jin', '32', '0987564321', 'patum'),
('224', 'kobori', 'kobori', '21', '08080123', 'patum'),
('225', 'num', 'num', '30', '09665565', 'non');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` varchar(3) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mlastname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `mname`, `mlastname`, `address`, `telephone`) VALUES
('111', 'ko', 'koko', 'patum', 1234567891),
('112', 'mi', ' mi mi', 'non', 78945612),
('113', 'rin', 'rinnn', 'patum', 200456789),
('114', 'go', 'gogo', 'nongkay', 808099780),
('115', 'jin', 'jiiii', 'patum', 1233456788);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `mvid` varchar(3) NOT NULL,
  `mvname` varchar(20) NOT NULL,
  `mvactor` varchar(20) NOT NULL,
  `mvgenre` varchar(20) NOT NULL,
  `mvyear` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mvid`, `mvname`, `mvactor`, `mvgenre`, `mvyear`) VALUES
('331', 'ko', 'ko', 'fight', '2025'),
('332', '4king', 'num', 'fight', '2023'),
('333', '4king2', 'num', 'fight', '2005'),
('334', 'koko', 'ko', 'love', '2001'),
('335', 'dodum', 'rin', 'fight', '2005');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `oid` varchar(3) NOT NULL,
  `mid` varchar(3) NOT NULL,
  `mvid` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`oid`, `mid`, `mvid`) VALUES
('441', '111', '331'),
('442', '112', '332'),
('443', '113', '333'),
('444', '114', '334'),
('445', '115', '335');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`acid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`mvid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD KEY `mid` (`mid`),
  ADD KEY `mvid` (`mvid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
