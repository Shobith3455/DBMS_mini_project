-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 03:39 PM
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
('computer@gmail.com', '12IbR.gJ8wcpc', 'Computer', 14),
('artificial_Intel@gmail.com', '12IbR.gJ8wcpc', 'AI', 15),
('mechanical@gmail.com', '12IbR.gJ8wcpc', 'Mechanical', 16),
('electronic@gmail.com', '12IbR.gJ8wcpc', 'Electronic', 17),
('information@gmail.com', '12IbR.gJ8wcpc', 'Information', 18),
('computer2@gmail.com', '12IbR.gJ8wcpc', 'Computer', 19),
('computer3@gmail.com', '12B3tO6XeZFDg', 'Computer', 20);

-- --------------------------------------------------------

--
-- Table structure for table `applied_comp`
--

CREATE TABLE `applied_comp` (
  `c_id` int(255) NOT NULL,
  `sapid` bigint(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applied_comp`
--

INSERT INTO `applied_comp` (`c_id`, `sapid`, `id`) VALUES
(33, 152, 71),
(31, 152, 72),
(29, 152, 73),
(30, 152, 74),
(32, 152, 75),
(29, 154, 76),
(33, 154, 77),
(30, 154, 78),
(31, 140, 79),
(32, 140, 80),
(33, 140, 81),
(29, 141, 82),
(30, 141, 83),
(31, 141, 84),
(33, 141, 85),
(32, 141, 86),
(29, 184, 87),
(31, 184, 88),
(32, 184, 89),
(30, 157, 90),
(31, 157, 91),
(32, 157, 92),
(30, 156, 93),
(32, 156, 94),
(29, 145, 95),
(32, 145, 96),
(29, 187, 97),
(30, 187, 98),
(31, 187, 99),
(32, 187, 100),
(33, 187, 101),
(30, 178, 102),
(30, 158, 103),
(32, 158, 104),
(29, 158, 105),
(31, 158, 106);

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
(9113664880, 'google', 50, 29, 'google123@gmail.com', '12IbR.gJ8wcpc', 'product manager'),
(911366451789, 'tcs', 10, 30, 'tcs456@gmail.com', '12IbR.gJ8wcpc', 'web develpoer'),
(9145624774, 'Cerone software limited', 14, 31, 'cerone456@gmail.com', '12IbR.gJ8wcpc', 'software engineer'),
(7584664884, 'mantra softech', 20, 32, 'mantra@gmail.com', '12IbR.gJ8wcpc', 'research engineer'),
(9678664884, 'mnr solution', 16, 33, 'mnr@gmail.com', '12IbR.gJ8wcpc', 'test engineer');

-- --------------------------------------------------------

--
-- Table structure for table `selected_stud`
--

CREATE TABLE `selected_stud` (
  `sapid` int(255) NOT NULL,
  `c_id` int(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `selected_stud`
--

INSERT INTO `selected_stud` (`sapid`, `c_id`, `id`) VALUES
(152, 30, 45),
(141, 30, 46),
(157, 30, 47),
(178, 30, 48),
(158, 30, 49);

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
('shivaraj123@gmail.com', 95, 8.5, 'Computer', '12IbR.gJ8wcpc', 9113664884, 'shivaraj', '152'),
('shobith123@gmail.com', 96, 8.5, 'Computer', '12IbR.gJ8wcpc', 7613664884, 'shobith', '154'),
('pratheek123@gmail.com', 97, 8.5, 'Computer', '12IbR.gJ8wcpc', 7113664884, 'pratheek', '140'),
('nachiketh123@gmail.com', 98, 8.5, 'Information', '12IbR.gJ8wcpc', 7618761628, 'nachiketh', '141'),
('thrisha123@gmail.com', 99, 8.5, 'AI', '12IbR.gJ8wcpc', 9113664334, 'thrisha', '145'),
('dhanush123@gmail.com', 100, 9, 'Electronic', '12IbR.gJ8wcpc', 9805664884, 'dhanush', '146'),
('darshan123@gmail.com', 101, 8.7, 'Mechanical', '12IbR.gJ8wcpc', 9457871884, 'darshan', '147'),
('skanda456@gmail.com', 102, 8.6, 'Information', '12IbR.gJ8wcpc', 9145781284, 'skanda', '184'),
('prashith@gmail.com', 103, 8.6, 'Information', '12IbR.gJ8wcpc', 7584664884, 'prashith', '157'),
('subin@gmail.com', 104, 8, 'Information', '12IbR.gJ8wcpc', 7894567892, 'subin', '156'),
('swasthik@gmail.com', 105, 8.9, 'AI', '12IbR.gJ8wcpc', 7891234567, 'swasthik', '178'),
('ruman@gmail.com', 106, 8.54, 'AI', '12IbR.gJ8wcpc', 7894568745, 'ruman', '187'),
('eldho@gmail.com', 107, 8.9, 'Electronic', '12IbR.gJ8wcpc', 7899876542, 'eldho', '158'),
('ashwith@gmail.com', 108, 8.5, 'Computer', '12IbR.gJ8wcpc', 8879445623, 'ashwith', '149'),
('ashik@gmail.com', 109, 8.3, 'Electronic', '12IbR.gJ8wcpc', 7899456781, 'ashik', '167'),
('pranam@gmail.com', 110, 8.2, 'Mechanical', '12IbR.gJ8wcpc', 7894564513, 'pranam', '789'),
('suman@gmail.com', 111, 8.5, 'Mechanical', '12IbR.gJ8wcpc', 88794561331, 'suman', '478');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `applied_comp`
--
ALTER TABLE `applied_comp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `selected_stud`
--
ALTER TABLE `selected_stud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
