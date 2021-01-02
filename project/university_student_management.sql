-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2015 at 04:34 PM
-- Server version: 5.5.34
-- PHP Version: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `university_student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` varchar(15) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `credit` double NOT NULL,
  `cost` double NOT NULL,
  `pre_requisite_course_id` varchar(40) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_enrollments`
--

CREATE TABLE IF NOT EXISTS `course_enrollments` (
  `student_id` int(11) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `section_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` varchar(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `student_id` int(11) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `gpa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `section_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `year` year(4) NOT NULL,
  `days` varchar(20) NOT NULL,
  `start_time` time NOT NULL,
  `length` double NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  `email` varchar(120) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `admission_year` date NOT NULL,
  `postal_code` varchar(30) NOT NULL,
  `guardian_name` varchar(50) NOT NULL,
  `guardian_relationship` varchar(30) NOT NULL,
  `guardian_contact` varchar(30) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_advisor`
--

CREATE TABLE IF NOT EXISTS `student_advisor` (
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `semester` varchar(30) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department_id` varchar(20) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `joinning_date` date NOT NULL,
  `degrees` varchar(1000) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `gender` char(1) NOT NULL,
  `date_birth` date NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(250) NOT NULL,
  `country` varchar(30) NOT NULL,
  `postal_code` varchar(15) NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
