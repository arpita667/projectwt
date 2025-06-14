-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 02:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `courseinfo`
--

CREATE TABLE `courseinfo` (
  `courseId` int(11) NOT NULL,
  `courseName` varchar(100) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `credits` int(11) NOT NULL,
  `departmentId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseinfo`
--

INSERT INTO `courseinfo` (`courseId`, `courseName`, `courseCode`, `description`, `credits`, `departmentId`) VALUES
(1, 'Algorithm', 'CSE104', 'This is a good course', 3, '4');

-- --------------------------------------------------------

--
-- Table structure for table `departmentinfo`
--

CREATE TABLE `departmentinfo` (
  `deptId` int(11) NOT NULL,
  `deptCode` varchar(100) NOT NULL,
  `deptName` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departmentinfo`
--

INSERT INTO `departmentinfo` (`deptId`, `deptCode`, `deptName`, `description`) VALUES
(1, 'EEE103', 'EEE', 'THis is three E');

-- --------------------------------------------------------

--
-- Table structure for table `dropinfo`
--

CREATE TABLE `dropinfo` (
  `dropId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dropinfo`
--

INSERT INTO `dropinfo` (`dropId`, `courseId`, `studentId`, `status`) VALUES
(7, 1, 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `registrationinfo`
--

CREATE TABLE `registrationinfo` (
  `regId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrationinfo`
--

INSERT INTO `registrationinfo` (`regId`, `courseId`, `studentId`) VALUES
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sectioninfo`
--

CREATE TABLE `sectioninfo` (
  `sectionId` int(11) NOT NULL,
  `sectionName` varchar(50) NOT NULL,
  `courseId` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `schedule` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectioninfo`
--

INSERT INTO `sectioninfo` (`sectionId`, `sectionName`, `courseId`, `facultyId`, `capacity`, `schedule`) VALUES
(1, 'A', 1, 2, 40, 'S/M 8:00-10:30 AM'),
(2, 'B', 1, 2, 30, 'S/W 8:00-12:00 Am');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userId` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `joinDate` varchar(200) NOT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userId`, `userName`, `fullName`, `email`, `phone`, `password`, `dob`, `gender`, `joinDate`, `department`, `status`, `role`, `picture`) VALUES
(1, 'tanvirh104', 'Tanvir Tanvir Tamal', '1', '01534103985', '1', '2025-05-14', 'male', '20/05/2025', 'cse', 'active', 'admin', 'uploads/image/aiub.jpg'),
(2, 'tanvirh103', 'Tanvir Hasan Tamal', '2', '01534103985', '1', '2025-05-06', 'male', '2025-05-14', 'CSE', 'active', 'teacher', 'uploads/image/default.jpg'),
(3, 'tanvirh103', 'Tanvir Hasan Tamal', '3', '01534103985', '1', '2025-05-13', 'female', '2025-05-17', 'CSE', 'active', 'student', 'uploads/image/default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD PRIMARY KEY (`courseId`);

--
-- Indexes for table `departmentinfo`
--
ALTER TABLE `departmentinfo`
  ADD PRIMARY KEY (`deptId`);

--
-- Indexes for table `dropinfo`
--
ALTER TABLE `dropinfo`
  ADD PRIMARY KEY (`dropId`);

--
-- Indexes for table `registrationinfo`
--
ALTER TABLE `registrationinfo`
  ADD PRIMARY KEY (`regId`);

--
-- Indexes for table `sectioninfo`
--
ALTER TABLE `sectioninfo`
  ADD PRIMARY KEY (`sectionId`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courseinfo`
--
ALTER TABLE `courseinfo`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departmentinfo`
--
ALTER TABLE `departmentinfo`
  MODIFY `deptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dropinfo`
--
ALTER TABLE `dropinfo`
  MODIFY `dropId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registrationinfo`
--
ALTER TABLE `registrationinfo`
  MODIFY `regId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sectioninfo`
--
ALTER TABLE `sectioninfo`
  MODIFY `sectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
