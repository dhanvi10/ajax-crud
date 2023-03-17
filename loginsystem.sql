-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 04:44 AM
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
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `birth`
--

CREATE TABLE `birth` (
  `id` int(11) NOT NULL,
  `stuname` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `birth`
--

INSERT INTO `birth` (`id`, `stuname`, `city`, `dob`) VALUES
(1, 'dhanvi ', 'surat', '06/15/2003'),
(2, 'esha ', 'surat', '08/18/2002'),
(3, 'drashti ', 'surat', '08/18/2001'),
(4, 'khushi ', 'surat', '03/22/1999'),
(5, 'golu ', 'surat', '04/02/2005'),
(6, 'kriya', 'surat', '07/25/2003'),
(7, 'priya', 'surat', '11/29/2003'),
(8, 'pri', 'surat', '01/09/2003');

-- --------------------------------------------------------

--
-- Table structure for table `dd`
--

CREATE TABLE `dd` (
  `s_no` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dd`
--

INSERT INTO `dd` (`s_no`, `filename`) VALUES
(1, '{file_names}'),
(2, '{file_names}'),
(3, '{file_names}'),
(4, '{file_names}'),
(5, '{file_names}'),
(6, '{file_names}'),
(7, '{file_names}'),
(8, '{file_names}'),
(9, '1358224208 . jpg,'),
(10, '1800264184 . jpg'),
(11, '111038922 . jpg'),
(12, '301442209.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `bloodgroup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`, `adress`, `bloodgroup`) VALUES
(33, 'dbcb', 'ebj', 'surat', 'a'),
(34, 'drashti', 'bhayani', 'surat', 'o'),
(35, 'fbj', 'jbjn', 'jbj', 'o'),
(38, 'dhanvi', 'bhadiyadra', 'surat', 'o'),
(39, 'dhanvi', 'bhadiyadra', 'surat', 'ab'),
(40, 'drashti', 'bhayani', 'surat', 'o'),
(42, 'bani', 'sharma', 'mumbai', 'o'),
(43, 'tejo', 'sandhu', 'moga', 'o'),
(44, 'fateh', 'virk', 'moga', 'b'),
(45, 'veer', 'sharma', 'pune', 'ab'),
(46, 'shivani', 'roy', 'surat', 'ab'),
(47, 'shivani', 'roy', 'surat', 'ab'),
(48, 'shivani', 'roy', 'goa', 'ab'),
(49, 'mohan', 'pyare', 'goa', 'ab'),
(50, 'qw', 'qwed', 'wd', 'a'),
(51, 'qqwdsc', 'wsdcx', 'wsd', 'a'),
(52, 'wsd', 'hn ', 'sjnx', 'a'),
(53, 'prisha', 'kanan', 'surat', 'ab'),
(54, 'prisha', 'kanan', 'qws', 'a'),
(61, ' cdn', 'cn d', 'wsed', 'a'),
(62, 'tdghb', 'ycjhnb', 'ws', 'a'),
(68, 'des', 'wedsa', 'eds', 'a'),
(71, 'priya', 'mori', 'surat', 'ab'),
(72, 'krina ', 'patel', 'surat', 'ab'),
(75, '', '', '', ''),
(76, '', '', '', ''),
(77, '', '', '', ''),
(78, 'yedhn', 'ehjdsn', 'ewhjdn', 'a'),
(79, 'eds', 'ds', 'ds', 'a'),
(80, 'sda', 'sa', 'edsax', 'a'),
(81, 'kesha', 'varma', 'jaipur', 'a'),
(82, 'shanu ', 'patel', 'surat', 'ab'),
(83, 'shiv', 'shah', 'surat', 'ab');

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE `stu_info` (
  `id` int(11) NOT NULL,
  `stuname` varchar(50) NOT NULL,
  `lang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`id`, `stuname`, `lang`) VALUES
(1, 'dhanvi', 'PHP,Python,C++');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birth`
--
ALTER TABLE `birth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dd`
--
ALTER TABLE `dd`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_info`
--
ALTER TABLE `stu_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birth`
--
ALTER TABLE `birth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dd`
--
ALTER TABLE `dd`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `stu_info`
--
ALTER TABLE `stu_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
