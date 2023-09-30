-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 07:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fees_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `course_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `course_cost`) VALUES
(1, 'Java', 5000),
(2, 'Python', 4500),
(3, 'JavaScript', 4500),
(4, 'C Language', 4000),
(5, 'Swing', 6000),
(6, 'Hibernate', 4300);

-- --------------------------------------------------------

--
-- Table structure for table `fees_details`
--

CREATE TABLE `fees_details` (
  `receipt_no` int(11) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `roll_no` varchar(20) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `cheque_no` varchar(20) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `dd_no` varchar(20) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `gstin` varchar(20) NOT NULL,
  `total_amount` float NOT NULL,
  `date` date NOT NULL,
  `amount` float NOT NULL,
  `payable` float NOT NULL,
  `balance` float NOT NULL,
  `fees_status` varchar(20) NOT NULL,
  `cgst` float NOT NULL,
  `sgst` float NOT NULL,
  `total_in_words` varchar(50) NOT NULL,
  `remark` varchar(20) NOT NULL,
  `year1` int(11) NOT NULL,
  `year2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees_details`
--

INSERT INTO `fees_details` (`receipt_no`, `student_name`, `roll_no`, `payment_mode`, `cheque_no`, `bank_name`, `dd_no`, `course_name`, `gstin`, `total_amount`, `date`, `amount`, `payable`, `balance`, `fees_status`, `cgst`, `sgst`, `total_in_words`, `remark`, `year1`, `year2`) VALUES
(1, 'Arun', '101', 'Cash', '', '', '', 'C Language', '255ESFAQ56OP113', 4130, '2022-12-11', 3500, 4000, 500, 'Partial Paid', 315, 315, 'Four Thousand One Hundred Thirty Only', 'No', 2021, 2022),
(2, 'Mohit', '102', 'Cash', '', '', '', 'Python', '255ESFAQ56OP113', 5310, '2022-12-18', 4500, 4500, 0, 'Paid', 405, 405, 'Five Thousand Three Hundred Ten Only', 'No', 2020, 2022),
(3, 'Kavya', '103', 'Card', '', 'Apna Bank', '', 'Swing', '255ESFAQ56OP113', 4720, '2022-12-12', 4000, 6000, 2000, 'Partial Paid', 360, 360, 'Four Thousand Seven Hundred Twenty Only', 'Mood ni hai', 2021, 2022),
(4, 'Soni', '104', 'Cheque', '787833', 'YES Bank', '', 'Python', '255ESFAQ56OP113', 5310, '2023-01-03', 4500, 4500, 0, 'Paid', 405, 405, 'Five Thousand Three Hundred Ten Only', 'No', 2021, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `id` int(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `contact_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `full_name`, `first_name`, `last_name`, `user_name`, `password`, `dob`, `contact_no`) VALUES
(1, 'Shiv Bhatt', 'Shiv', 'Bhatt', 'shiv', '87654321', '2022-11-01', '4545154877'),
(2, 'Ram Negi', 'Ram', 'Negi', 'ram', '12345678', '2022-11-02', '4484151021'),
(3, 'Arun Negi', 'Arun', 'Negi', 'arun', '23456789', '2003-04-01', '7676323602');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_details`
--
ALTER TABLE `fees_details`
  ADD PRIMARY KEY (`receipt_no`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
