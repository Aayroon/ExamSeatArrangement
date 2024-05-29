-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 03:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seatingarrangement`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `INVIGILATOR_NAME` char(25) DEFAULT NULL,
  `ROOM_NO` char(5) DEFAULT NULL,
  `TIMING` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`INVIGILATOR_NAME`, `ROOM_NO`, `TIMING`) VALUES
('Debbie', '22', '09:00 AM'),
('Caro', '22', '09:00 AM'),
('Tyrone', '21', '2:00 PM'),
('Lydia', '21', '2:00 PM'),
('Aaron', '21', '09:00 AM'),
('Philo', '21', '09:00 AM'),
('Aaron', '21', '09:00 AM'),
('Ochieng', '21', '09:00 AM'),
('Jack', '1', '02:00 PM'),
('Simeon', '1', '02:00 PM'),
('Kylie', '2', '09:00 AM'),
('Dan', '2', '09:00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `room1`
--

CREATE TABLE `room1` (
  `Rows` int(11) DEFAULT NULL,
  `col1` bigint(20) DEFAULT NULL,
  `col2` bigint(20) DEFAULT NULL,
  `col3` bigint(20) DEFAULT NULL,
  `col4` bigint(20) DEFAULT NULL,
  `col5` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room1`
--

INSERT INTO `room1` (`Rows`, `col1`, `col2`, `col3`, `col4`, `col5`) VALUES
(1, 2001, 1001, 2002, 1002, 2003),
(2, 2004, 1003, 2005, 1004, 4001),
(3, 3001, 4002, 3002, 4003, 3003),
(4, 4004, 3004, 4005, 3005, 4006),
(5, 3006, 4007, NULL, 4008, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room2`
--

CREATE TABLE `room2` (
  `Rows` int(11) DEFAULT NULL,
  `col1` bigint(20) DEFAULT NULL,
  `col2` bigint(20) DEFAULT NULL,
  `col3` bigint(20) DEFAULT NULL,
  `col4` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room2`
--

INSERT INTO `room2` (`Rows`, `col1`, `col2`, `col3`, `col4`) VALUES
(1, 98001, 97001, 98002, 97002),
(2, 97003, 98003, 97004, 98004),
(3, 98005, 97005, 98006, 97006),
(4, 95001, 96001, 95002, 96002),
(5, 96003, 95003, 96004, 95004),
(6, 95005, 96005, 95006, 96006);

-- --------------------------------------------------------

--
-- Table structure for table `room21`
--

CREATE TABLE `room21` (
  `Rows` int(11) DEFAULT NULL,
  `col1` bigint(20) DEFAULT NULL,
  `col2` bigint(20) DEFAULT NULL,
  `col3` bigint(20) DEFAULT NULL,
  `col4` bigint(20) DEFAULT NULL,
  `col5` bigint(20) DEFAULT NULL,
  `col6` bigint(20) DEFAULT NULL,
  `col7` bigint(20) DEFAULT NULL,
  `col8` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room21`
--

INSERT INTO `room21` (`Rows`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`) VALUES
(1, 2011001, 2010001, 2011002, 2010002, 2011003, 2010003, 2011004, 2010004),
(2, 2010005, 2011005, 2010006, 2009001, 2010007, 2009002, 2010008, 2009003),
(3, 2009004, 2010009, 2009005, 2010010, NULL, 2008001, NULL, 2008002);

-- --------------------------------------------------------

--
-- Table structure for table `room22`
--

CREATE TABLE `room22` (
  `Rows` int(11) DEFAULT NULL,
  `col1` bigint(20) DEFAULT NULL,
  `col2` bigint(20) DEFAULT NULL,
  `col3` bigint(20) DEFAULT NULL,
  `col4` bigint(20) DEFAULT NULL,
  `col5` bigint(20) DEFAULT NULL,
  `col6` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room22`
--

INSERT INTO `room22` (`Rows`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`) VALUES
(1, 2015001, 2014001, 2015002, 2014002, 2015003, 2014003),
(2, 2014004, 2015004, 2014005, 2015005, 2014006, 2013001),
(3, 2013002, 2014007, 2013003, 2014008, 2013004, 2014009),
(4, 2014010, 2013005, 2012001, NULL, 2012002, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ROLL_NO` int(11) DEFAULT NULL,
  `ROOM_NO` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ROLL_NO`, `ROOM_NO`) VALUES
(1001, '1'),
(1002, '1'),
(1003, '1'),
(1004, '1'),
(2001, '1'),
(2002, '1'),
(2003, '1'),
(2004, '1'),
(2005, '1'),
(3001, '1'),
(3002, '1'),
(3003, '1'),
(3004, '1'),
(3005, '1'),
(3006, '1'),
(4001, '1'),
(4002, '1'),
(4003, '1'),
(4004, '1'),
(4005, '1'),
(4006, '1'),
(4007, '1'),
(4008, '1'),
(4009, '1'),
(4010, '1'),
(98001, '2'),
(98002, '2'),
(98003, '2'),
(98004, '2'),
(98005, '2'),
(98006, '2'),
(97001, '2'),
(97002, '2'),
(97003, '2'),
(97004, '2'),
(97005, '2'),
(97006, '2'),
(96001, '2'),
(96002, '2'),
(96003, '2'),
(96004, '2'),
(96005, '2'),
(96006, '2'),
(95001, '2'),
(95002, '2'),
(95003, '2'),
(95004, '2'),
(95005, '2'),
(95006, '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `username` char(25) DEFAULT NULL,
  `password` char(25) DEFAULT NULL,
  `email` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `username`, `password`, `email`) VALUES
(1, 'aaron', '1234', 'aaronochieng21@gmail.com'),
(2, 'Luke', 'Luke@1234', 'luke@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `ip_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`ip_address`) VALUES
('::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`ip_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
