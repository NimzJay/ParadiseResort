-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2021 at 03:14 PM
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
(9, 'client', 'client', 'abc@gmail.com', '0789456123', '2021-09-30', '2021-10-03', 2, 'Suite Room', 25000),
(10, 'client', 'client', 'abc@gmail.com', '0789456123', '2021-10-08', '2021-10-09', 150, 'Lotus Ballroom', 250000);

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

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`hid`, `hallType`, `capacity`, `price`, `availability`) VALUES
(1, 'Signature Ballroom', 500, 700000, 'Yes'),
(2, 'Classic Ballroom', 300, 300000, 'Yes'),
(3, 'Lotus Ballroom', 150, 250000, 'Yes'),
(4, 'Outdoor', 200, 350000, 'Yes');

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
(1, 'Classic Room', 20000, 2, 'Yes'),
(2, 'Luxury Room', 100000, 1, 'Yes'),
(3, 'Family Room', 30000, 2, 'Yes'),
(4, 'Family Room', 30000, 2, 'Yes'),
(5, 'Family Room', 30000, 2, 'No'),
(6, 'Classic Room', 20000, 2, 'Yes'),
(7, 'Classic Room', 20000, 2, 'Yes'),
(8, 'Classic Room', 20000, 2, 'Yes'),
(9, 'Superior Room', 70000, 2, 'Yes'),
(10, 'Superior Room', 70000, 2, 'No'),
(11, 'Suite Room', 25000, 2, 'Yes'),
(12, 'Deluxe Room', 50000, 3, 'Yes');

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
(1, 'admin', 'admin', 'admin', 'admin123', '00000', 'admin@paradieseresort.com', 777845693, NULL, 'admin'),
(2, 'client', 'client', 'client', 'client123', '123456789V', 'abc@gmail.com', 789456123, NULL, 'client'),
(30, 'Denuka', 'Weerasighe', 'denuka', 'denuka123', '987562547V', 'denuka@paradiseresort.com', 788456123, NULL, 'admin'),
(31, 'Hiran', 'Senevirathne', 'hiran', 'hiran123', '955562512V', 'hiran@paradiseresort.com', 555698745, NULL, 'admin'),
(32, 'Nimna', 'Jayaweera', 'nimz', 'nimz123', '366659874V', 'nimz@paradiseresort.com', 888456239, NULL, 'admin'),
(33, 'Sasmini', 'Alawathugoda', 'sasmini', 'sasmini123', '955565458V', 'sas@paradiseresort.com', 999854789, NULL, 'admin');

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
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
