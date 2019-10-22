-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2019 at 09:59 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staff_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `Address_ID` int(10) NOT NULL,
  `Building_Name` varchar(128) DEFAULT NULL,
  `Building_Number` int(10) DEFAULT NULL,
  `Street_Name` varchar(128) DEFAULT NULL,
  `City` varchar(128) DEFAULT NULL,
  `State` varchar(128) DEFAULT NULL,
  `ZIPCode` int(10) DEFAULT NULL,
  `Country` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`Address_ID`, `Building_Name`, `Building_Number`, `Street_Name`, `City`, `State`, `ZIPCode`, `Country`) VALUES
(1, 'SS NILAYAM', 162, 'ANAND Street', 'AMARAVATHI', 'ANDHRAPRADESH', 522020, 'INDIA'),
(2, 'INCOR HEIGHTS', 121, 'EAT Street', 'GUNTUR', 'ANDHRAPRADESH', 522012, 'INDIA'),
(3, 'LODHA HEIGHTS', 262, 'State Street', 'VIJAYAWADA', 'ANDHRAPRADESH', 522123, 'INDIA'),
(4, 'CITY CENTER', 111, '2 Boonah Qld', 'CLARENDON', 'Queensland', 4311, 'AUS'),
(5, 'FORUM CENTER', 222, '26  Bathurst Road', 'PERTHVILLE', 'New South Wales', 2795, 'AUSTRALIA'),
(6, 'SD Buildings', 333, 'TT Road', 'Hyderabad', 'TELANGANA', 56789, 'INDIA'),
(7, 'LODHA Heights', 444, 'RTO ROAD', 'Hyderabad', 'TELANGANA', 56889, 'INDIA'),
(8, 'INCOR Heights', 555, 'HITEX ROAD', 'Hyderabad', 'TELANGANA', 56999, 'INDIA'),
(9, 'VBIT PARK', 666, 'INORBIT MALL ROAD', 'Hyderabad', 'TELANGANA', 54321, 'INDIA'),
(10, 'MIND SPACE', 777, 'Hitech City Road', 'Hyderabad', 'TELANGANA', 54893, 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `pass`, `username`, `phone`, `email`) VALUES
(17, '12345', 'Divyasundar sahu', '9437730730', 'divya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Qualification`
--

CREATE TABLE `Qualification` (
  `NameOfQualification` varchar(255) NOT NULL,
  `StaffID` int(10) NOT NULL,
  `AQFLevel_ID` int(10) NOT NULL,
  `Subject_Area` varchar(255) NOT NULL,
  `Institution_Name` varchar(255) NOT NULL,
  `Institution_Country` varchar(255) NOT NULL,
  `Full_Name_Of_Award` varchar(255) DEFAULT NULL,
  `Awarded_Year` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Qualification`
--

INSERT INTO `Qualification` (`NameOfQualification`, `StaffID`, `AQFLevel_ID`, `Subject_Area`, `Institution_Name`, `Institution_Country`, `Full_Name_Of_Award`, `Awarded_Year`) VALUES
('Bachelor degree', 2, 1, 'Electronic Communications', 'IIIT', 'INDIA', 'Best Bachelor thesis', '2013-01-01'),
('Bachelor of commerce Degree', 4, 1, 'Accounts', 'JNTU', 'INDIA', NULL, NULL),
('Bachelor of Management', 5, 3, 'HR', 'ANU', 'INDIA', NULL, NULL),
('Masters of Computer Apps', 1, 5, 'Computer Applications', 'NATIONAL INSTITUTE', 'INDIA', 'Best Masters Thesis', '2008-01-01'),
('Phd In Pharmacy', 3, 6, 'CEUTHICS', 'ANDHRA UNIVERSITY', 'INDIA', 'Excellence award', '2012-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `StaffID` int(10) NOT NULL,
  `Title` varchar(5) NOT NULL,
  `First_Name` varchar(128) NOT NULL,
  `Last_Name` varchar(128) NOT NULL,
  `EmailId` varchar(128) NOT NULL,
  `Address_ID` int(10) NOT NULL,
  `PhoneNo` decimal(12,0) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`StaffID`, `Title`, `First_Name`, `Last_Name`, `EmailId`, `Address_ID`, `PhoneNo`, `status`) VALUES
(1, 'Mr', 'Thiru', 'Paleru', 'rao.paleti@gmail.com', 1, '9701785385', 0),
(2, 'Mr', 'Venki', 'ch', 'venki.ch@gmail.com', 2, '469710653', 1),
(3, 'Miss', 'lalitha', 'vadlamudi', 'lalli.vadlamudi@gmail.com', 3, '9052385385', 0),
(4, 'Mr', 'Alex', 'John', 'alex.john@gmail.com', 4, '458600542', 0),
(5, 'Ms', 'Jennie', 'peter', 'jennie.peter@gmail.com', 5, '987456123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`Address_ID`);

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `Qualification`
--
ALTER TABLE `Qualification`
  ADD PRIMARY KEY (`NameOfQualification`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD UNIQUE KEY `EmailId` (`EmailId`),
  ADD UNIQUE KEY `PhoneNo` (`PhoneNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `Address_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Staff`
--
ALTER TABLE `Staff`
  MODIFY `StaffID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
