-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 09:10 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` text NOT NULL,
  `email` varchar(320) NOT NULL,
  `Subject` varchar(60) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `Subject`, `msg`) VALUES
('Atish Pawar', 'pawaratish@gmail.com', '', 'owiejwr'),
('Sampada Bakhal', 'sampadabakhal4@gmail.com', '', 'Hello XYZ'),
('Saurabh Patil', 'Saurabhpatil@gmail.com', '', 'jwiejjlwjjrkjljltr'),
('Rajesh Dandge', 'GGHSFHSG@GMAIL.COM', '', 'QYUYEQ'),
('Atish Pawar', 'pawaratish260@gmail.com', 'ewjhhe', 'snjska'),
('Atish Pawar', 'pawaratish260@gmail.com', 'jdhjds', 'snjska'),
('Raj', 'raj@gmail.com', 'iiiiiii', 'ggggg'),
('Mamta Ashok Kulkarni', 'Mamta@gmail.com', 'hi there', 'snjska'),
('Prashant Sanap', 'prashant@gmail.com', 'Hi there', 'Demo'),
('', '', '', ''),
('Sampada Bakhale', 'sampada123@gmail.com', 'Demo', 'demo'),
('Aditya Mundhe', 'Aditya@gmail.com', 'Hello HB', 'Test03'),
('Krishna', 'Krishna@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `helperprofile`
--

CREATE TABLE `helperprofile` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `houseno` varchar(10) NOT NULL,
  `streetdetails` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `Education` varchar(100) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `hobbies` varchar(500) NOT NULL,
  `langauges` varchar(300) NOT NULL,
  `skill` varchar(200) NOT NULL,
  `idcard` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `workfor` varchar(255) NOT NULL,
  `workhrs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helperprofile`
--

INSERT INTO `helperprofile` (`id`, `name`, `contact`, `email`, `DOB`, `gender`, `houseno`, `streetdetails`, `city`, `state`, `zip`, `Education`, `Qualification`, `category`, `hobbies`, `langauges`, `skill`, `idcard`, `photo`, `workfor`, `workhrs`) VALUES
(1, 'Mamta Ashok Kulkarni', '09156236576', 'Mamta@gmail.com', '1996-06', 'Female', '87', 'Vimannagar', 'Pune', 'Maharastra', '411014', '12th', 'NO', 'Maid', 'Singing', 'Marathi,Hindi', 'NO', 'aadhar card 2.jpg', 'maid.jpg', '12 hrs', 'Full-Time'),
(2, 'Gajanan Shinde', '08788768474', 'Gaju@gmail.com', '1998-12', 'Male', '11', 'Akurdi', 'Pune', 'Maharastra', '411035', 'BHM', 'NO', 'Cook', 'Drawing', 'Marathi,Hindi', 'NO', 'aadhar-card.jpg', 'cook.jpg', '4 Hrs', 'Part-Time'),
(3, 'Prashant Sanap', '09552075639', 'prashu@gmail.com', '1992-06', 'Male', '675', 'Hadapsar', 'Pune', 'Maharastra', '411028', '12th', 'NO', 'Driver', 'No', 'Marathi,Hindi', 'NO', 'aadhar-card.jpg', 'driver.jpg', '9 hrs', 'Full-Time'),
(4, 'Kusum Sonawane', '8767654536', 'Kusum@gmail.com', '1988-06', 'Female', '33', 'Deccan Gymkhana', 'Pune', 'Maharastra', '4110004', 'None', 'NO', 'Nanni', 'Singing', 'Marathi,Hindi', 'NO', 'aadhar card 2.jpg', 'nannie.jpg', '4 Hrs', 'Part-Time'),
(5, 'Shubham Kundalwal ', '8777665544', 'shubhz@gmail.com', '1996-07', 'Male', '67', 'Ex Serviceman Colony', 'Pune', 'Maharastra', '411038', '12th Passed', 'NO', 'Watchman', 'No', 'Marathi,Hindi', 'NO', 'aadhar-card.jpg', 'watch.jpg', '8 Hrs', 'Full-Time'),
(6, 'Tejal Shukla', '7777777777', 'tejal@gmail.com', '1996-08', 'Female', '33', 'Karvenagar', 'Pune', 'Maharastra', '411052', 'None', 'NO', 'Labour', 'No', 'Marathi,Hindi', 'NO', 'aadhar card 2.jpg', 'labourr.jpg', '4 Hrs', 'Part-Time'),
(7, 'Sakharam Godbole', '8788765645', 'Sakharam@gmail.com', '1989-07', 'Male', '44', 'Kothrud', 'Pune', 'Maharastra', '411038', 'None', 'NO', 'Labour', 'No', 'Marathi,Hindi', 'NO', 'aadhar-card.jpg', 'labourrr.jpg', '9 hrs', 'Full-Time'),
(8, 'Amol Mundhe', '7878787684', 'amol@gmail.com', '1997-06', 'Male', '12', 'Karvenagar', 'pune', 'Maharastra', '411052', '12th', 'NO', 'Driver', 'NO', 'marathi', 'NO', 'driver.jpg', 'aadhar-card.jpg', '8 hrs', 'Full-Time');

-- --------------------------------------------------------

--
-- Table structure for table `helperreg`
--

CREATE TABLE `helperreg` (
  `fname` varchar(100) NOT NULL,
  `Phoneno` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helperreg`
--

INSERT INTO `helperreg` (`fname`, `Phoneno`, `email`, `pwd`) VALUES
('Atish Pawar', '09552075639', 'pawaratish260@gmail.com', '1505'),
('Atish Pawar', '09552075639', 'pawaratish260@gmail.com', '1505'),
('Saurabh Patil', '09552075639', 'Saurabh@gmail.com', 'imcc'),
('Rajesh Dange', '7676767676', 'rajesh@gmail.com', '8787'),
('Amol Mundhe', '8787878776', 'amol@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `registeradmin`
--

CREATE TABLE `registeradmin` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registeradmin`
--

INSERT INTO `registeradmin` (`id`, `name`, `email`, `password`, `confirmpass`) VALUES
(1, 'Atish Pawar', 'pawaratish260@gmail.com', '123', '123'),
(2, 'Rajesh Dandge', 'rajesh@gmail.com', '1234', '1234'),
(3, 'Mamta Ashok Kulkarni', 'Mamta@gmail.com', '432', '432'),
(4, 'gaurav', 'gaurav@gmail.com', '7260', '7260'),
(5, 'gaurav123', 'gaurav111@gmail.com', '123', '123'),
(6, 'abc', 'abc@gmail.com', 'abc', 'abc'),
(7, 'vitthal', 'vitthal@gmail.com', '900', '900'),
(8, 'xyz', 'xyz@gmail.com', '420', '420');

-- --------------------------------------------------------

--
-- Table structure for table `signupcustomer`
--

CREATE TABLE `signupcustomer` (
  `fname` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phoneno` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `LookingFor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signupcustomer`
--

INSERT INTO `signupcustomer` (`fname`, `email`, `phoneno`, `password`, `LookingFor`) VALUES
('Atish', 'pawaratish260@gmail.com', '9552075639', '1505', ''),
('Rajesh Dandge', 'rajesh@gmail.com', '8788768474', '3344', 'Cook'),
('Sampada Bakhal', 'sampada@gmail.com', '8788768474', '123', 'Driver'),
('Avinash Shelke', 'Avinash@gmail.com', '7878787878', '1234', 'Maid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `helperprofile`
--
ALTER TABLE `helperprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeradmin`
--
ALTER TABLE `registeradmin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `helperprofile`
--
ALTER TABLE `helperprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registeradmin`
--
ALTER TABLE `registeradmin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
