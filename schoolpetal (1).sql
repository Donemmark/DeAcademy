-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2025 at 03:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolpetal`
--

-- --------------------------------------------------------

--
-- Table structure for table `arm`
--

CREATE TABLE `arm` (
  `sn` int(11) NOT NULL,
  `arm` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arm`
--

INSERT INTO `arm` (`sn`, `arm`, `created_at`) VALUES
(1, 'B', '2023-09-06 14:21:09'),
(2, 'A', '2023-09-06 15:33:12'),
(3, 'C', '2023-09-20 07:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `sn` int(11) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`sn`, `category`, `created_at`) VALUES
(1, 'ss1', '2023-09-06 14:09:24'),
(4, 'Ss2', '2023-09-11 09:37:09'),
(5, 'Ss3', '2023-09-11 09:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `createfee`
--

CREATE TABLE `createfee` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `feecategory` varchar(20) DEFAULT NULL,
  `feedescription` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `createfee`
--

INSERT INTO `createfee` (`sn`, `feecategory`, `feedescription`, `created_at`) VALUES
(1, 'Department', 'Payment for all departmental fees', '2023-09-25 09:38:07'),
(2, 'Class Due', 'Payment for all  class due', '2023-09-25 09:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `sn` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `lga` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`sn`, `name`, `phonenumber`, `address`, `email`, `state`, `lga`, `status`, `created_at`) VALUES
(1, 'peter pan', '2147483647', 'oka,nigeria', 'peter@mail.com', 'Ondo', 'oka', 1, '2023-09-06 10:19:23'),
(2, 'Okpanachi Joyce', '2147483647', 'ikare,Ondo', 'joyce@mail.com', 'ondo', 'oka', 1, '2023-09-06 10:20:39'),
(3, 'Oladejo Tamilore', '09024129861', 'akure,Nigeria', 'leye@mail.com', 'ondo', 'akure', 1, '2023-09-06 10:23:51'),
(4, 'Adeniyi Oladele', '07031228930', 'ikare,', 'oladele92@gmail.com', 'osun', 'ifenorth', 1, '2023-09-06 12:46:33'),
(5, 'Jegede Samuel', '08134770921', 'ikare,Ondo', 'yellow@mail.com', 'Ekiti', 'Ekiti,west', 1, '2023-09-26 17:49:42'),
(6, 'Amuda Mosunmola', '09024129861', 'akure,Nigeria', 'mosun@mail.com', 'ondo', 'Afin', 1, '2023-10-03 09:30:51'),
(7, 'peter Okiti', '12345', 'oakland', 'matthew@mail.com', 'osun', 'ifenorth', 1, '2023-11-28 09:20:10'),
(8, 'Mr Don', '07043919312', 'Lekki, Lagos', 'Donemmark@gmail.com', 'Ondo', 'Ese odo', 1, '2025-08-22 14:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `sn` bigint(20) NOT NULL,
  `staffid` int(1) NOT NULL DEFAULT 0,
  `p1` int(1) NOT NULL DEFAULT 0,
  `p2` int(1) NOT NULL DEFAULT 0,
  `p3` int(1) NOT NULL DEFAULT 0,
  `p4` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`sn`, `staffid`, `p1`, `p2`, `p3`, `p4`, `created_at`) VALUES
(17, 1, 1, 1, 1, 1, '2023-09-18 08:59:51'),
(18, 2, 1, 0, 0, 0, '2023-09-18 08:59:51'),
(19, 3, 0, 0, 1, 0, '2023-09-18 08:59:51'),
(20, 4, 1, 0, 0, 1, '2023-09-18 08:59:51'),
(21, 5, 0, 0, 0, 0, '2023-09-18 08:59:51'),
(22, 6, 0, 0, 0, 0, '2023-09-18 08:59:51'),
(23, 7, 0, 0, 0, 0, '2023-09-18 08:59:51'),
(24, 8, 0, 0, 0, 0, '2023-09-18 08:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `resultid` varchar(20) DEFAULT NULL,
  `studentid` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `term` varchar(20) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `ca1` varchar(20) DEFAULT NULL,
  `ca2` varchar(20) DEFAULT NULL,
  `exam` varchar(20) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`sn`, `resultid`, `studentid`, `class`, `term`, `subject`, `ca1`, `ca2`, `exam`, `total`, `created_at`) VALUES
(1, '1', '1', '4', '2', '5', '11', '10', '52', '73', '2023-10-04 12:19:10'),
(2, '2', '2', '4', '2', '5', '13', '20', '60', '93', '2023-10-04 12:19:10'),
(3, '4', '4', '4', '2', '5', '9', '11', '40', '60', '2023-10-04 12:19:10'),
(4, '7', '5', '4', '2', '5', '11', '12', '60', '83', '2023-10-04 12:19:10'),
(5, '8', '6', '4', '2', '5', '1', '8', '19', '28', '2023-10-04 12:19:10'),
(6, '3', '3', '5', '2', '1', '9', '15', '60', '84', '2025-08-22 12:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `resultsetup`
--

CREATE TABLE `resultsetup` (
  `sn` int(11) NOT NULL,
  `ca1` int(11) DEFAULT NULL,
  `ca2` int(11) DEFAULT NULL,
  `ca3` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `a` varchar(10) DEFAULT NULL,
  `b` varchar(10) DEFAULT NULL,
  `c` varchar(10) DEFAULT NULL,
  `d` varchar(10) DEFAULT NULL,
  `e` varchar(10) DEFAULT NULL,
  `f` varchar(10) DEFAULT NULL,
  `ar` varchar(20) DEFAULT NULL,
  `br` varchar(20) DEFAULT NULL,
  `cr` varchar(20) DEFAULT NULL,
  `dr` varchar(20) DEFAULT NULL,
  `er` varchar(20) DEFAULT NULL,
  `fr` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultsetup`
--

INSERT INTO `resultsetup` (`sn`, `ca1`, `ca2`, `ca3`, `exam`, `a`, `b`, `c`, `d`, `e`, `f`, `ar`, `br`, `cr`, `dr`, `er`, `fr`, `created_at`) VALUES
(1, 20, 0, 0, 0, '70', '60', '50', '45', '40', '30', 'Excellent', 'Very Good', 'Credit', 'Pass', 'Poor', 'Fail', '2023-09-11 14:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `resultsum`
--

CREATE TABLE `resultsum` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `sid` varchar(20) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `term` varchar(20) DEFAULT NULL,
  `session` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultsum`
--

INSERT INTO `resultsum` (`sn`, `sid`, `class`, `term`, `session`, `created_at`) VALUES
(1, '1', '4', '2', '2021/2022', '2023-10-05 08:13:50'),
(2, '2', '4', '2', '2021/2022', '2023-10-05 08:13:50'),
(3, '3', '5', '2', '2021/2022', '2023-10-05 08:13:50'),
(4, '4', '4', '2', '2021/2022', '2023-10-05 08:13:50'),
(5, '5', '4', '2', '2021/2022', '2023-10-05 08:13:50'),
(6, '6', '4', '2', '2021/2022', '2023-10-05 08:13:50'),
(7, '7', '5', '2', '2021/2022', '2025-08-27 07:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `schoolname` varchar(50) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `website` varchar(25) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `motto` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `picture` varchar(90) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`sn`, `schoolname`, `email`, `website`, `phone`, `motto`, `address`, `picture`, `created_at`) VALUES
(1, 'SchoolPetal International School', 'info@livepetals.com', 'https://github.com/Matthe', '09000000000', 'Building World Class Software Enginners', 'Along Futa Junction,Akure,Ondo State', NULL, '2023-09-22 09:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `setfee`
--

CREATE TABLE `setfee` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(50) DEFAULT NULL,
  `fee` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setfee`
--

INSERT INTO `setfee` (`sn`, `class`, `fee`, `amount`, `discount`, `total`, `created_at`) VALUES
(1, '1', '1', '10000', NULL, NULL, '2023-09-25 11:08:56'),
(2, '4', '2', '15000', NULL, NULL, '2023-09-25 11:08:41'),
(3, '4', '2', '2500', NULL, NULL, '2023-09-25 12:19:40'),
(4, '5', '1', '120000', NULL, NULL, '2025-08-22 13:57:34'),
(5, '1', '2', '3000', NULL, NULL, '2025-08-22 13:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sn` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sn`, `name`, `email`, `phone`, `role`, `created_at`) VALUES
(1, 'Thomas Gideon', 'thomas@gmail.com', '2147483647', 'Administrator	', '2023-09-07 11:56:02'),
(2, 'peter Okiti', 'peter@mail.com', '2147483647', 'Teacher', '2023-09-07 12:54:27'),
(3, 'yaya victor', 'victor@mail.com', '2147483647', 'Accountant', '2023-09-07 12:56:30'),
(4, 'Thomas Gideon', 'thomas@gmail.com', '09045678911', 'Teacher', '2023-09-07 12:59:11'),
(5, 'leye James', 'leye@mail.com', '098765456789', 'Administrator', '2023-09-07 13:01:12'),
(6, 'Amuda Mosunmola', 'cherry@gmail.com', '09124568255', 'Teacher', '2023-09-13 11:32:12'),
(7, 'Oladele Abdulateef', 'teef@gmail.com', '07024892210', 'Administrator', '2023-09-13 12:10:15'),
(8, 'Joy James', 'joy@gmail.com', '09021345696', 'Administrator', '2023-09-13 12:14:22'),
(10, 'emmark', 'emmanuelolorunwa22@gmail.com', '07043919312', 'Accountant', '2025-08-21 10:31:23'),
(11, 'motun', 'motun@gmail.com', '07043919355', 'Administrator', '2025-09-02 15:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sn` int(11) NOT NULL,
  `guardian` varchar(30) DEFAULT NULL,
  `class` varchar(5) DEFAULT NULL,
  `arm` varchar(5) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `othername` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `regnumber` int(40) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sn`, `guardian`, `class`, `arm`, `firstname`, `lastname`, `othername`, `gender`, `regnumber`, `created_at`) VALUES
(1, '1', '4', '1', 'Amuda', 'Mosunmola', 'Adenike', 'female', 190, '2023-10-04 10:01:46'),
(2, '2', '4', '2', 'Adewunmi', 'Precious', 'Wicked', 'female', 190302198, '2023-10-04 10:02:26'),
(3, '1', '5', '3', 'Adewunmi ', 'Happiness', 'izabel', 'female', 1904040007, '2023-10-04 10:02:59'),
(4, '4', '4', '1', 'Oladejo', 'Oluwatamilore', 'iremide', 'Male', 190404102, '2023-10-04 10:03:44'),
(5, '3', '4', '3', 'Owaduge', 'Folashade', 'joy', 'female', 190231100, '2023-10-04 10:27:04'),
(6, '2', '4', '3', 'Thomas', 'Gideon', 'Longman', 'female', 2147483647, '2023-10-04 10:28:35'),
(7, '8', '5', '2', 'Don ', 'Emmark', 'Ope', 'Male', 12345, '2025-08-22 14:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sn` int(11) NOT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sn`, `subject`, `created_at`) VALUES
(1, 'Mathematics', '2023-09-08 16:43:12'),
(2, 'Biology', '2023-09-08 16:45:40'),
(3, 'Chemistry', '2023-09-08 16:46:16'),
(4, 'Physics', '2023-09-11 09:46:04'),
(5, 'English', '2023-09-13 11:33:06'),
(6, 'C++', '2023-10-03 09:17:40'),
(7, 'Javascript', '2023-10-03 09:18:17'),
(8, 'PHP', '2023-11-28 09:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `sn` int(11) NOT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `class` varchar(15) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`sn`, `subject`, `name`, `class`, `created`) VALUES
(1, '1', '3', '5', '2023-09-11 09:39:30'),
(2, '4', '4', '5', '2023-09-11 09:46:27'),
(3, '3', '2', '5', '2023-09-11 12:13:40'),
(4, '2', '1', '4', '2023-09-11 12:52:07'),
(5, '3', '5', '4', '2023-09-11 12:52:58'),
(6, '4', '6', '5', '2023-09-13 12:17:49'),
(7, '2', '5', '4', '2023-09-13 12:20:16'),
(8, '4', '1', '1', '2023-09-13 12:46:33'),
(9, '2', '1', '1', '2023-09-13 12:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `term` varchar(20) DEFAULT '0',
  `session` varchar(20) NOT NULL DEFAULT '0',
  `status` varchar(20) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`sn`, `term`, `session`, `status`, `created_at`) VALUES
(1, '1', '2022/2023', '0', '2023-09-26 13:06:34'),
(2, '2', '2022/2023', '0', '2023-09-26 13:06:34'),
(3, '3', '2022/2023', '0', '2023-09-26 13:06:34'),
(4, '1', '2021/2022', '0', '2023-09-26 13:25:11'),
(5, '2', '2021/2022', '1', '2023-09-26 13:25:11'),
(6, '3', '2021/2022', '0', '2023-09-26 13:25:11'),
(7, '1', '2023/2024', '0', '2023-12-10 12:56:45'),
(8, '2', '2023/2024', '0', '2023-12-10 12:56:45'),
(9, '3', '2023/2024', '0', '2023-12-10 12:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sn` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sn`, `firstname`, `lastname`, `email`, `password`, `user_id`, `created_at`) VALUES
(3, 'saint', 'peter', 'matthew@mail.com', 'temitayo', NULL, '2023-09-05 13:11:13'),
(4, 'peter', 'pan', 'peter@mail.com', 'temitayo', NULL, '2023-09-05 13:12:31'),
(5, 'matthew', 'adeniyi', 'peter@mail', '123456', NULL, '2023-09-05 20:06:19'),
(6, 'john', 'david', 'john@mail', '123456', NULL, '2023-09-05 20:11:30'),
(7, 'john', 'adeniyi', 'johnadeniyi@gmail.com', '246810', NULL, '2023-09-06 09:07:20'),
(8, 'tamilore', 'oladejo', 'tamilore@gmail.com', 'tamilore', NULL, '2023-09-06 09:37:18'),
(9, 'emmanuel', 'sulphur', 'sulphur@gmail.com', '0811', 10087547, '2023-09-18 10:09:32'),
(10, 'jose', 'blessed', 'jose@gmail.com', '1234', 1270642365, '2023-09-18 10:12:25'),
(11, 'Jerry', 'Mayor', 'Mayor@gmail.com', 'qwerty', 2121778676, '2023-09-20 08:09:33'),
(12, 'Olusa', 'Christopher', 'Chris@gmail.com', 'wisdom', 1964968357, '2023-09-26 17:38:18'),
(13, 'Don ', 'Emmark', 'Donemmark@gmail.com', '123456', 114838783, '2025-08-21 16:06:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arm`
--
ALTER TABLE `arm`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `createfee`
--
ALTER TABLE `createfee`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `resultsetup`
--
ALTER TABLE `resultsetup`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `resultsum`
--
ALTER TABLE `resultsum`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `setfee`
--
ALTER TABLE `setfee`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arm`
--
ALTER TABLE `arm`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `createfee`
--
ALTER TABLE `createfee`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `sn` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `resultsetup`
--
ALTER TABLE `resultsetup`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resultsum`
--
ALTER TABLE `resultsum`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setfee`
--
ALTER TABLE `setfee`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
