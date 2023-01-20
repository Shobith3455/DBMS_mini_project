-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 05:44 PM
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
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `dept`, `id`) VALUES
('Mite@gmail.com', '12IbR.gJ8wcpc', 'Computer', 23);

-- --------------------------------------------------------

--
-- Table structure for table `applied_comp`
--

CREATE TABLE `applied_comp` (
  `c_id` int(255) NOT NULL,
  `sapid` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applied_comp`
--

INSERT INTO `applied_comp` (`c_id`, `sapid`, `id`) VALUES
(39, '4MT20CS154', 120),
(37, '4MT20CS154', 121);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `contact` bigint(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `intake` int(25) NOT NULL,
  `c_id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`contact`, `name`, `intake`, `c_id`, `email`, `password`, `type`) VALUES
(911366451789, 'tcs', 15, 30, 'tcs456@gmail.com', '12IbR.gJ8wcpc', 'app developer'),
(9876543211, 'Oracle', 2, 37, 'oracle@gmail.com', '12IbR.gJ8wcpc', 'Webdevelopper'),
(9876543211, 'Google', 4, 38, 'google@gmail.com', '12IbR.gJ8wcpc', 'Webdevelopper'),
(9874563211, 'Twitter', 3, 39, 't@gmail.com', '12IbR.gJ8wcpc', 'web designer');

-- --------------------------------------------------------

--
-- Table structure for table `selected_stud`
--

CREATE TABLE `selected_stud` (
  `sapid` varchar(255) NOT NULL,
  `c_id` int(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `selected_stud`
--

INSERT INTO `selected_stud` (`sapid`, `c_id`, `id`) VALUES
('158', 30, 49);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `email` varchar(25) NOT NULL,
  `s_id` int(25) NOT NULL,
  `cgpa` float DEFAULT NULL,
  `dept` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` bigint(15) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `sapid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`email`, `s_id`, `cgpa`, `dept`, `password`, `contact`, `name`, `sapid`) VALUES
('danu@gmail.com', 120, 8.5, 'Mechanical', '12IbR.gJ8wcpc', 9113664789, 'danu', '4MT20CS002'),
('Shobithracharya1816@gmail', 121, 9, 'Computer', '12IbR.gJ8wcpc', 9876543211, 'Shobith R Acharya', '4MT20CS154'),
('tester@gmail.com', 122, 9, 'Computer', '12IbR.gJ8wcpc', 9876543211, 'gururaj', '4MT20CS067');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_comp`
--
ALTER TABLE `applied_comp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `selected_stud`
--
ALTER TABLE `selected_stud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `applied_comp`
--
ALTER TABLE `applied_comp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `selected_stud`
--
ALTER TABLE `selected_stud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
