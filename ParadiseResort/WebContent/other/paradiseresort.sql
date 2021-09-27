-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 09:00 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paradiseresort`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `secondname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `guests` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `firstname`, `secondname`, `email`, `tel`, `checkin`, `checkout`, `guests`, `type`, `price`) VALUES
(1, 'John', 'Doe', 'mk', '123', '2021-09-13', '2021-09-15', 5, 'Hall 2', 300000),
(2, 'John', 'Doe', 'mk', '123', '2021-09-24', '2021-09-25', 100, 'Hall 1', 100000),
(3, 'John', 'Doe', 'mk', '123', '2021-09-24', '2021-09-25', 100, 'Hall 1', 100000),
(4, 'John', 'Doe', 'mk', '123', '2021-09-24', '2021-09-25', 100, 'Hall 1', 100000),
(5, 'John', 'Doe', 'mk', '123', '2021-09-19', '2021-09-26', 5, 'Hall 3', 700000),
(6, 'John', 'Doe', 'mk', '123', '2021-09-19', '2021-09-26', 5, 'Hall 3', 700000),
(7, 'John', 'Doe', 'mk@bb.com', '123', '2021-09-28', '2021-09-30', 50, 'deluxe', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `hid` int(11) NOT NULL,
  `hallType` varchar(100) NOT NULL,
  `capacity` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `availability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rid` int(11) NOT NULL,
  `roomType` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `beds` int(100) NOT NULL,
  `availability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `roomType`, `price`, `beds`, `availability`) VALUES
(1, 'classic', 20000, 2, 'Yes'),
(2, 'luxury', 100000, 1, 'Yes'),
(3, 'family', 30000, 2, 'Yes'),
(4, 'family', 30000, 2, 'Yes'),
(5, 'family', 30000, 2, 'No'),
(6, 'classic', 20000, 2, 'Yes'),
(7, 'classic', 20000, 2, 'Yes'),
(8, 'classic', 20000, 2, 'Yes'),
(9, 'superior', 70000, 2, 'Yes'),
(10, 'superior', 70000, 2, 'No'),
(11, 'suite', 25000, 2, 'Yes'),
(12, 'deluxe', 50000, 3, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` int(10) NOT NULL,
  `image` blob DEFAULT NULL,
  `uType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fname`, `lname`, `username`, `password`, `nic`, `email`, `contact`, `image`, `uType`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 0, NULL, 'admin'),
(2, 'Nimz', 'Jay', 'nimz', '123', '1234567890', 'abc@gmail.com', 0, NULL, 'client'),
(4, 'sas', 'anu', 'sas', 'anu', '11', 'sas@gmail.com', 2222, NULL, 'admin'),
(5, 'John', 'Doe', 'dw', '123', '123', 'mk@bb.com', 123, NULL, 'client'),
(6, 'John', 'Doe', 'jd', '123', '123', '123@gmail.com', 123, NULL, 'client'),
(7, 'John', 'Doe', 'admin', '123', '123', 'mm@gmail.com', 123, NULL, 'client'),
(8, 'John', 'Doe', 'jre', '123', '123', 'jre@gmail.com', 123, NULL, 'client'),
(9, 'John', 'Doe', 'admin', 'admin', '123', '123@gmail.com', 123, NULL, 'admin'),
(10, 'mm', 'mm', 'mm', 'mm', 'mm', 'mk@bb.com', 123, NULL, 'client'),
(11, 'nn', 'nn', 'nn', 'nn', 'nn', 'nn@nn.nn', 123, NULL, 'admin'),
(12, 'bb', 'bb', 'bb', 'bb', 'bb', 'bb@bb.com', 123, NULL, 'admin'),
(13, 'vv', 'vv', 'vv', 'vv', 'vv', 'vv@vv.com', 123, NULL, 'admin'),
(14, 'cc', 'cc', 'cc', 'cc', 'cc', 'cc@cc.cc', 456, NULL, 'client'),
(15, 'll', 'll', 'll', 'll', 'll', 'll@ll.ll', 123, NULL, 'client'),
(16, 'dd', 'dd', 'dd', 'dd', 'dd', 'dd@dd.dd', 123, NULL, 'admin'),
(17, 'jj', 'jj', 'jj', 'jj', 'jj', 'jj@jj.jj', 23, NULL, 'client'),
(18, 'John', 'Doe', 'admin', 'admin', '12', '123@gmail.com', 12, NULL, 'client'),
(19, 'John', 'Doe', 'admin', 'admin', '123', 'mk@bb.com', 456, NULL, 'client'),
(20, 'Charshini', 'Maam', 'charshini', '123', '789456123V', 'charchinimaam@com', 1555789, NULL, 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
