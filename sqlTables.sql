-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2017 at 05:49 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `crn` int(11) NOT NULL,
  `cName` char(25) DEFAULT NULL,
  `definition` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`crn`, `cName`, `definition`) VALUES
(22325, 'Introduction to Computing', 'Lorem ipsum'),
(22326, 'Advanced Programming', 'Lorem ipsum'),
(22327, '	Data Structures', 'Lorem ipsum'),
(19852, 'Algorithms', 'Lorem ipsum'),
(19853, 'Database Systems', 'Lorem ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `fname` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`fname`) VALUES
('FASS'),
('FENS'),
('FMAN');

-- --------------------------------------------------------

--
-- Table structure for table `gives`
--

CREATE TABLE `gives` (
  `suId` char(20) DEFAULT NULL,
  `crn` int(11) DEFAULT NULL,
  `term` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gives`
--

INSERT INTO `gives` (`suId`, `crn`, `term`) VALUES
('acar', 19853, 'fall'),
('cakar', 19852, 'fall'),
('iclalb', 22325, 'fall'),
('kcelik', 22326, 'fall'),
('cinar', 22327, 'fall'),
('acar', 19853, 'spring'),
('cakar', 19852, 'spring'),
('iclalb', 22325, 'spring'),
('kcelik', 22326, 'spring'),
('cinar', 22327, 'spring');

-- --------------------------------------------------------

--
-- Table structure for table `graduate`
--

CREATE TABLE `graduate` (
  `idNumber` int(11) NOT NULL,
  `researchArea` char(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graduate`
--

INSERT INTO `graduate` (`idNumber`, `researchArea`) VALUES
(13478, 'Artificial Intelligence, Machine Learning'),
(18732, 'Computer Graphics & Visualization'),
(17423, 'Computer Networks'),
(19346, 'Data Analytics'),
(21426, 'Computer Vision & Signal Processing');

-- --------------------------------------------------------

--
-- Table structure for table `includes`
--

CREATE TABLE `includes` (
  `pname` char(45) NOT NULL,
  `fname` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `includes`
--

INSERT INTO `includes` (`pname`, `fname`) VALUES
('Computer Science and Engineering', 'FENS'),
('Electronics Engineering', 'FENS'),
('Manufacturing Engineering', 'FENS'),
('Mechatronics Engineering', 'FENS'),
('Chemistry', 'FENS'),
('Physics', 'FENS'),
('Materials Science and Nanoengineering', 'FENS'),
('Art Theory and Criticism', 'FASS'),
('Energy', 'FENS');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `suId` char(20) NOT NULL,
  `iname` char(20) DEFAULT NULL,
  `ilastname` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`suId`, `iname`, `ilastname`) VALUES
('acar', 'Atahan', 'Acar'),
('cakar', 'Cihan', 'Akar'),
('iclalb', 'Iclal', 'Basar'),
('kcelik', 'Kubra', 'Celik'),
('cinar', 'Erhan', 'Cinar');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `pname` char(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`pname`) VALUES
('Computer Science and Engineering'),
('Electronics Engineering'),
('Manufacturing Engineering'),
('Materials Science and Nanoengineering'),
('Mechatronics Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `minors`
--

CREATE TABLE `minors` (
  `pname` char(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minors`
--

INSERT INTO `minors` (`pname`) VALUES
('Art Theory and Criticism'),
('Chemistry'),
('Energy'),
('Physics');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `pname` char(45) NOT NULL,
  `crn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`pname`, `crn`) VALUES
('Computer Science and Engineering', 22325),
('Computer Science and Engineering', 22326),
('Computer Science and Engineering', 22327),
('Computer Science and Engineering', 19852),
('Computer Science and Engineering', 19853);

-- --------------------------------------------------------

--
-- Table structure for table `picks`
--

CREATE TABLE `picks` (
  `idNumber` int(11) NOT NULL,
  `pname` char(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picks`
--

INSERT INTO `picks` (`idNumber`, `pname`) VALUES
(11111, 'Manufacturing Engineering'),
(13478, 'Manufacturing Engineering'),
(15190, 'Electronics Engineering'),
(17423, 'Materials Science and Nanoengineering'),
(18732, 'Materials Science and Nanoengineering'),
(19260, 'Computer Science and Engineering'),
(19346, 'Mechatronics Engineering'),
(19416, 'Electronics Engineering'),
(19566, 'Computer Science and Engineering'),
(21426, 'Mechatronics Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `pname` char(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`pname`) VALUES
('Art Theory and Criticism'),
('Chemistry'),
('Computer Science and Engineering'),
('Electronics Engineering'),
('Energy'),
('Manufacturing Engineering'),
('Materials Science and Nanoengineering'),
('Mechatronics Engineering'),
('Physics');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `idNumber` int(11) NOT NULL,
  `sname` char(20) DEFAULT NULL,
  `suId` char(20) DEFAULT NULL,
  `firstAdmitYear` int(11) DEFAULT NULL,
  `slastname` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`idNumber`, `sname`, `suId`, `firstAdmitYear`, `slastname`) VALUES
(19566, 'Sinan', 'topaloglusinan', 2014, 'Topaloglu'),
(19260, 'Yusa', 'merguven', 2014, 'Erguven'),
(15190, 'Kaan', 'kagnici', 2013, 'Kagnici'),
(19416, 'Halil', 'herdogan', 2014, 'Erdogan'),
(11111, 'Hebele', 'hhubele', 2016, 'Hubele'),
(13478, 'Merve', 'yilbasi', 2015, 'Yilbasi'),
(18732, 'Cihan', 'ctopal', 2013, 'Topal'),
(17423, 'Kenan', 'kenani', 2014, 'Isik'),
(19346, 'Ceren', 'curukcan', 2016, 'Curuk'),
(21426, 'Miranda', 'mdogan', 2016, 'Dogan');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE `undergraduate` (
  `idNumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`idNumber`) VALUES
(11111),
(15190),
(19260),
(19416),
(19566);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`crn`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`fname`);

--
-- Indexes for table `gives`
--
ALTER TABLE `gives`
  ADD KEY `suId` (`suId`),
  ADD KEY `crn` (`crn`);

--
-- Indexes for table `graduate`
--
ALTER TABLE `graduate`
  ADD PRIMARY KEY (`idNumber`);

--
-- Indexes for table `includes`
--
ALTER TABLE `includes`
  ADD PRIMARY KEY (`pname`),
  ADD KEY `fname` (`fname`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`suId`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`pname`);

--
-- Indexes for table `minors`
--
ALTER TABLE `minors`
  ADD PRIMARY KEY (`pname`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`crn`),
  ADD KEY `pname` (`pname`);

--
-- Indexes for table `picks`
--
ALTER TABLE `picks`
  ADD PRIMARY KEY (`idNumber`,`pname`),
  ADD KEY `pname` (`pname`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`pname`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`idNumber`);

--
-- Indexes for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD PRIMARY KEY (`idNumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
