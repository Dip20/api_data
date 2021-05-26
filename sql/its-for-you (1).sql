-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2021 at 07:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `its-for-you`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `blogtitle` varchar(500) NOT NULL,
  `blogintro` varchar(10000) NOT NULL,
  `date` varchar(30) NOT NULL,
  `postedby` varchar(20) NOT NULL,
  `bloglink` varchar(255) NOT NULL,
  `tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blogtitle`, `blogintro`, `date`, `postedby`, `bloglink`, `tag`) VALUES
(1, 'University while the lovely valley team work', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam...', 'September 14, 2020', ' admin', '/blog-test', 'University'),
(2, 'Modern School the lovely valley team work', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam...', 'September 14, 2020', 'admin', '/blog-te', 'University');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `coursetitle` varchar(255) NOT NULL,
  `coursetag` varchar(100) NOT NULL,
  `courseprice` varchar(100) NOT NULL,
  `courselink` varchar(5000) NOT NULL,
  `courserating` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `coursetitle`, `coursetag`, `courseprice`, `courselink`, `courserating`) VALUES
(1, 'Java', 'web development', 'free', 'https://google.com/', 5),
(2, 'python', 'web', '250', 'trst.com', 4),
(6, 'React master course', 'MERN stack', 'free', '/react', 5),
(7, 'Mongo DB', 'web', 'free', 'www.buviteacher.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `jobtitle` varchar(500) NOT NULL,
  `jobintro` varchar(5000) NOT NULL,
  `jobtag` varchar(100) NOT NULL,
  `joblink` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jobtitle`, `jobintro`, `jobtag`, `joblink`) VALUES
(1, 'front end developer', 'needs html,css,js,bs developer', 'development', 'Apply Now'),
(2, 'node js developer', 'node with express js required', 'mern stack', 'Apply Now');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_auth`
--

CREATE TABLE `tbl_api_auth` (
  `id` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `api_secret` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_api_auth`
--

INSERT INTO `tbl_api_auth` (`id`, `api_key`, `api_secret`, `name`) VALUES
(1, '059456a632a460c944efdb2946b78afd', '233bf88f8e3c85fd1f99db462293b2e4', 'test api for access');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master`
--

CREATE TABLE `tbl_master` (
  `id` int(11) NOT NULL,
  `table_name` varchar(20) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_master`
--

INSERT INTO `tbl_master` (`id`, `table_name`, `remarks`) VALUES
(1, 'courses', 'nothing'),
(2, 'jobs', 'nothing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_auth`
--
ALTER TABLE `tbl_api_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_master`
--
ALTER TABLE `tbl_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_api_auth`
--
ALTER TABLE `tbl_api_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_master`
--
ALTER TABLE `tbl_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
