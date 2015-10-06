-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2015 at 06:42 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slau_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE IF NOT EXISTS `guardian` (
  `id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `nationality` text NOT NULL,
  `gender` text NOT NULL,
  `phonen` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  `passport` varchar(30) NOT NULL,
  `Comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `id` int(11) NOT NULL,
  `fname` varchar(29) NOT NULL,
  `sname` varchar(26) NOT NULL,
  `gender` text NOT NULL,
  `nationality` text NOT NULL,
  `tel` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `fname`, `sname`, `gender`, `nationality`, `tel`) VALUES
(1, 'kevin', 'janvier', '', 'Uganda', '0785077864'),
(2, 'Jimidah', 'Mukashaka', 'Female', 'Uganda', '+256767123928');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL,
  `acadec_yr` int(5) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `othrn` varchar(30) NOT NULL,
  `gender` text NOT NULL,
  `dob` varchar(40) NOT NULL,
  `course` text NOT NULL,
  `home_d` varchar(35) NOT NULL,
  `citizn` text NOT NULL,
  `marital_status` text NOT NULL,
  `P_address` varchar(30) NOT NULL,
  `tel` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `acadec_yr`, `surname`, `othrn`, `gender`, `dob`, `course`, `home_d`, `citizn`, `marital_status`, `P_address`, `tel`) VALUES
(1, 2002, 'kevin', 'janvier', 'Male', '1993', 'Computer Science', 'bateso', 'Kampala', 'Married', 'kabusu', '2147483647'),
(2, 2002, 'kevin', 'janvier', 'Male', '1993', 'Computer Science', 'bateso', 'Kampala', 'Married', 'kabusu', '+256785077853'),
(3, 2001, 'qqq', '', '', '1992', 'Computer Science', '', 'Uganda', 'Single', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'kevin', 'janvier@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'Saidi', 'sad@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passport` (`passport`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
