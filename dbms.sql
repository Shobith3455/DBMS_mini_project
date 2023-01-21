-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 09:40 PM
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
('Mite@gmail.com', '12IbR.gJ8wcpc', 'Computer', 23),
('mite1@gmail.com', '12IbR.gJ8wcpc', 'IS', 31);

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
(37, '4MT20CS154', 121),
(37, '4MT20AE154', 122),
(37, '4MT20ME154', 123),
(37, '4MT20IS154', 124),
(37, '4MT20CIV154', 125),
(37, '4MT20MEC067', 126),
(37, '4MT20EC154', 127),
(37, '4MT20CH154', 128),
(37, '4MT20CS070', 129),
(37, '4MT20CS068', 130),
(30, '4MT20CS002', 131),
(38, '4MT20CS002', 132),
(37, '4MT20CS002', 133),
(38, '4MT20CS154', 134),
(30, '4MT20CS154', 135),
(30, '', 136);

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
('158', 30, 49),
('4MT20CS154', 39, 50),
('4MT20CS002', 38, 51);

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
('tester@gmail.com', 122, 9, 'Computer', '12IbR.gJ8wcpc', 9876543211, 'gururaj', '4MT20CS067'),
('Darshan@gmail.com', 123, 9, 'aeronautic', '12IbR.gJ8wcpc', 9876543211, 'Darshan naik', '4MT20AE154'),
('Pravesh@gmail.com', 124, 9, 'mechatronic', '12IbR.gJ8wcpc', 9876543211, 'Pravesh', '4MT20ME154'),
('shreyas@gmail.com', 125, 9, 'IS', '12IbR.gJ8wcpc', 9876543211, 'shreyas', '4MT20IS154'),
('karthik@gmail.com', 126, 9, 'civil', '12IbR.gJ8wcpc', 9876543211, 'karthik Naik', '4MT20CIV154'),
('tester@gmail.com', 127, 9, 'Mechanical', '12IbR.gJ8wcpc', 9876543211, 'gururaj', '4MT20MEC067'),
('avi@gmail.com', 128, 9, 'Electronic', '12IbR.gJ8wcpc', 9876543211, 'Avinash Nayak', '4MT20EC154'),
('jeeva@gmail.com', 129, 9, 'Chemical', '12IbR.gJ8wcpc', 9876543211, 'Jeevan', '4MT20CH154'),
('guru@gmail.com', 130, 9, 'Computer', '12IbR.gJ8wcpc', 9876543211, 'guruprasad', '4MT20CS070'),
('kulli@gmail.com', 131, 9, 'Computer', '12IbR.gJ8wcpc', 9876543211, 'Mahalaxmi', '4MT20CS068');

-- --------------------------------------------------------

--
-- Table structure for table `update_elli`
--

CREATE TABLE `update_elli` (
  `sno` int(4) NOT NULL,
  `text` text NOT NULL,
  `text1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `update_elli`
--

INSERT INTO `update_elli` (`sno`, `text`, `text1`) VALUES
(1, '1.Registered student of MITE expected to complete his/her degree by July 2024 is eligible to register.\r\n\r\n 2.Sponsored students, i.e. students under QIP or those who have signed any bond for pursuing studies at the MITE must produce No Objection Certificate from the concerned authorities/ agencies prior to registering with SPO.\r\n\r\n 3.Students can participate in/register for placements only once during their stay.\r\n\r\n\r\n4.If a UG student applies to at least one company in Third year and then converts to a dual degree, he/she would not be eligible to sit for placements in next year.\r\n\r\n5.If a UG students registers for placements in fourth year and de-registers before September 25th, 2023, perfectly following the above mentioned guideline, he/she is eligible for placements in fourth year.\r\n', '1.Registered companies MITE  are expected to submit the form duly by 19th February.\r\n\r\n 2.Sponsored companies, i.e. companies under QIP or those who have signed any bond  at the\r\n      MITE must produce No Objection Certificate from the concerned authorities/ agencies prior to \r\n     registering with SPO.\r\n\r\n3.Students can participate in/register for placements only once during their stay.\r\n\r\n4.Every company should be ISO Registered.\r\n\r\n5.Company should offer minimum annual package of INR.400000.\r\n\r\n6.The last date to de-register from placements is March 25th, 2023.\r\n     You need to drop a mail to placement@mite.ac.in stating your wtihdrawl.\r\n      Also, you have to preserve the fee receipt so that you do not have to pay \r\n      the registration fees when you appear for placements next year.\r\n\r\n  7.Companies who does not select interns in academic year 2023-24,\r\n       can either sit for Internships or placements for the session 2023-24.');

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
-- Indexes for table `update_elli`
--
ALTER TABLE `update_elli`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `applied_comp`
--
ALTER TABLE `applied_comp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `selected_stud`
--
ALTER TABLE `selected_stud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `update_elli`
--
ALTER TABLE `update_elli`
  MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
