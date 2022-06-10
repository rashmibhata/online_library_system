-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 02:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aname` varchar(30) NOT NULL,
  `aid` int(10) NOT NULL,
  `apassword` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aname`, `aid`, `apassword`) VALUES
('admin1', 3201, 'adminakshara1');

-- --------------------------------------------------------

--
-- Table structure for table `bookborrow`
--

CREATE TABLE `bookborrow` (
  `bid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `borrowdate` datetime DEFAULT NULL,
  `returndate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookborrow`
--

INSERT INTO `bookborrow` (`bid`, `uid`, `borrowdate`, `returndate`) VALUES
(201001, 10000, '2021-12-19 00:00:00', '2022-01-03 00:00:00'),
(601005, 10000, '2021-12-20 00:00:00', '2022-01-04 00:00:00'),
(603004, 10006, '2021-12-19 00:00:00', '2022-01-03 00:00:00'),
(604003, 10000, '2021-12-04 00:00:00', '2021-12-19 00:00:00'),
(609004, 10006, '2021-12-20 00:00:00', '2022-01-04 00:00:00'),
(611001, 10006, '2021-11-30 00:00:00', '2021-12-15 00:00:00'),
(619001, 10006, '2021-12-01 00:00:00', '2021-12-16 00:00:00'),
(620001, 10000, '2021-11-25 00:00:00', '2021-12-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

CREATE TABLE `bookdetails` (
  `bid` int(10) NOT NULL,
  `bauthor` varchar(20) NOT NULL,
  `btitle` varchar(90) DEFAULT NULL,
  `bkcid` int(10) NOT NULL,
  `bpublish` year(4) DEFAULT NULL,
  `bavailable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`bid`, `bauthor`, `btitle`, `bkcid`, `bpublish`, `bavailable`) VALUES
(101001, 'Neil H. E. Weste and', 'CMOS VLSI Design- A Circuits and Systems Perspecti', 101, 2011, b'1'),
(101002, 'Neil H. E. Weste and', 'CMOS VLSI Design- A Circuits and Systems Perspecti', 101, 2011, b'1'),
(101003, 'Neil H. E. Weste and', 'CMOS VLSI Design- A Circuits and Systems Perspecti', 101, 2011, b'1'),
(101004, 'Jan M. Rabaey', 'Digital Integrated Circuits: A Design Perspective', 101, 2003, b'1'),
(101005, 'Jan M. Rabaey', 'Digital Integrated Circuits: A Design Perspective', 101, 2003, b'1'),
(101006, 'Jan M. Rabaey', 'Digital Integrated Circuits: A Design Perspective', 101, 2003, b'1'),
(102001, 'Ramamurthy P', 'Operations Research', 102, 2007, b'1'),
(102002, 'Ramamurthy P', 'Operations Research', 102, 2007, b'1'),
(102003, 'Ramamurthy P', 'Operations Research', 102, 2007, b'1'),
(102004, 'Ramamurthy P', 'Operations Research', 102, 2007, b'1'),
(102005, 'S D Sharma', 'Operations Research', 102, 2015, b'1'),
(102006, 'S D Sharma', 'Operations Research', 102, 2015, b'1'),
(102007, 'S D Sharma', 'Operations Research', 102, 2015, b'1'),
(102008, 'S D Sharma', 'Operations Research', 102, 2015, b'1'),
(104001, 'John H Davies', 'MSP430 Microcontroller Basics', 104, 2008, b'1'),
(104002, 'John H Davies', 'MSP430 Microcontroller Basics', 104, 2008, b'1'),
(104003, 'John H Davies', 'MSP430 Microcontroller Basics', 104, 2008, b'1'),
(104004, 'John H Davies', 'MSP430 Microcontroller Basics', 104, 2008, b'1'),
(104005, 'Kenneth J. Ayala', 'The 8051 Microcontroller', 104, 2009, b'1'),
(104006, 'Kenneth J. Ayala', 'The 8051 Microcontroller', 104, 2009, b'1'),
(104007, 'Kenneth J. Ayala', 'The 8051 Microcontroller', 104, 2009, b'1'),
(104008, 'Kenneth J. Ayala', 'The 8051 Microcontroller', 104, 2009, b'1'),
(105001, 'J Nagarth and M Gopa', 'Control System Engineering', 105, 2005, b'1'),
(105002, 'J Nagarth and M Gopa', 'Control System Engineering', 105, 2005, b'1'),
(105003, 'J Nagarth and M Gopa', 'Control System Engineering', 105, 2005, b'1'),
(105004, 'J Nagarth and M Gopa', 'Control System Engineering', 105, 2005, b'1'),
(105005, 'Kuo B C', 'Automated Control System', 105, 2008, b'1'),
(105006, 'Kuo B C', 'Automated Control System', 105, 2008, b'1'),
(105007, 'Kuo B C', 'Automated Control System', 105, 2009, b'1'),
(105008, 'Ogata', 'Modern Control Engineering', 105, 2009, b'1'),
(105009, 'Ogata', 'Modern Control Engineering', 105, 2009, b'1'),
(105010, 'Ogata', 'Modern Control Engineering', 105, 2009, b'1'),
(105011, 'Ogata', 'Modern Control Engineering', 105, 2009, b'1'),
(105012, 'J Nagarth and M Gopa', 'Control System Engineering', 105, 2009, b'1'),
(105013, 'J Nagarth and M Gopa', 'Control System Engineering', 105, 2009, b'1'),
(105014, 'Ogata', 'Modern Control Engineering', 105, 2009, b'1'),
(105115, 'Ogata', 'Modern Control Engineering', 105, 2009, b'1'),
(106001, 'Behrouz A Forouzan', 'Data Communications and Networking', 106, 2004, b'1'),
(106002, 'Behrouz A Forouzan', 'Data Communications and Networking', 106, 2004, b'1'),
(106003, 'Behrouz A Forouzan', 'Data Communications and Networking', 106, 2004, b'1'),
(106004, 'William Stallings', 'Data Communications and Networking', 106, 2004, b'1'),
(106005, 'William Stallings', 'Data Communications and Networking', 106, 2004, b'1'),
(106006, 'William Stallings', 'Data Communications and Networking', 106, 2004, b'1'),
(106007, 'William Stallings', 'Data Communications and Networking', 106, 2004, b'1'),
(106008, 'William Stallings', 'Data Communications and Networking', 106, 2004, b'1'),
(106009, 'William Stallings', 'Data Communications and Networking', 106, 2004, b'1'),
(107001, 'M. E. VanValkenburg', 'Network Analysis', 107, 2011, b'1'),
(107002, 'M. E. VanValkenburg', 'Network Analysis', 107, 2011, b'1'),
(107003, 'M. E. VanValkenburg', 'Network Analysis', 107, 2011, b'1'),
(107004, 'M. E. VanValkenburg', 'Network Analysis', 107, 2011, b'1'),
(107005, 'Franklin F Kuo', 'Network Analysis and Synthesis', 107, 2011, b'1'),
(107006, 'Franklin F Kuo', 'Network Analysis and Synthesis', 107, 2011, b'1'),
(107007, 'Franklin F Kuo', 'Network Analysis and Synthesis', 107, 2011, b'1'),
(107008, 'Franklin F Kuo', 'Network Analysis and Synthesis', 107, 2011, b'1'),
(108001, 'Simon Haykin', 'Communication Systems', 108, 2009, b'1'),
(108002, 'Simon Haykin', 'Communication Systems', 108, 2009, b'1'),
(108003, 'Simon Haykin', 'Communication Systems', 108, 2009, b'1'),
(108004, 'John G Proakis', 'Communication System Engineering', 108, 2009, b'1'),
(108005, 'John G Proakis', 'Communication System Engineering', 108, 2009, b'1'),
(108006, 'John G Proakis', 'Communication System Engineering', 108, 2009, b'1'),
(108007, 'John G Proakis', 'Communication System Engineering', 108, 2009, b'1'),
(108008, 'John G Proakis', 'Communication System Engineering', 108, 2009, b'1'),
(109001, 'Simon Haykin', 'Digital Communication', 109, 2010, b'1'),
(109002, 'Simon Haykin', 'Digital Communication', 109, 2010, b'1'),
(109003, 'Simon Haykin', 'Digital Communication', 109, 2010, b'1'),
(109004, 'Simon Haykin', 'Digital Communication', 109, 2010, b'1'),
(109005, 'Praokis And Salehi', 'Fundamentals Of Digital Communication', 109, 2013, b'1'),
(109006, 'Praokis And Salehi', 'Fundamentals Of Digital Communication', 109, 2013, b'1'),
(109007, 'Praokis And Salehi', 'Fundamentals Of Digital Communication', 109, 2013, b'1'),
(109008, 'Praokis And Salehi', 'Fundamentals Of Digital Communication', 109, 2013, b'1'),
(109009, 'Praokis And Salehi', 'Fundamentals Of Digital Communication', 109, 2013, b'1'),
(111001, 'Proakis Manolakis', 'Digital Signal Processing Principles Algorithms and Applications', 111, 2007, b'1'),
(111002, 'Proakis Manolakis', 'Digital Signal Processing Principles Algorithms and Applications', 111, 2007, b'1'),
(111003, 'Proakis Manolakis', 'Digital Signal Processing Principles Algorithms and Applications', 111, 2007, b'1'),
(111004, 'Proakis Manolakis', 'Digital Signal Processing Principles Algorithms and Applications', 111, 2007, b'1'),
(111005, 'Li Tan', 'Digital Signal Processing Fundamentals and applications', 111, 2008, b'1'),
(111006, 'Li Tan', 'Digital Signal Processing Fundamentals and applications', 111, 2008, b'1'),
(111007, 'Li Tan', 'Digital Signal Processing Fundamentals and applications', 111, 2008, b'1'),
(111008, 'Avtar Singh', 'Digital Signal Processing', 111, 2018, b'1'),
(111009, 'Avtar Singh', 'Digital Signal Processing', 111, 2018, b'1'),
(111010, 'Avtar Singh', 'Digital Signal Processing', 111, 2018, b'1'),
(111011, 'Avtar Singh', 'Digital Signal Processing', 111, 2018, b'1'),
(112001, 'William H', 'Engineering Electromagnetic', 112, 2006, b'1'),
(112002, 'William H', 'Engineering Electromagnetic', 112, 2006, b'1'),
(112003, 'William H', 'Engineering Electromagnetic', 112, 2006, b'1'),
(112004, 'William H', 'Engineering Electromagnetic', 112, 2006, b'1'),
(112005, 'R K Shavogaonkar', 'Electromagnetic Waves', 112, 2005, b'1'),
(112006, 'R K Shavogaonkar', 'Electromagnetic Waves', 112, 2005, b'1'),
(112007, 'R K Shavogaonkar', 'Electromagnetic Waves', 112, 2005, b'1'),
(112008, 'David K Cheng', 'Electromagnetics', 112, 2015, b'1'),
(112009, 'David K Cheng', 'Electromagnetics', 112, 2015, b'1'),
(112010, 'David K Cheng', 'Electromagnetics', 112, 2015, b'1'),
(112011, 'David K Cheng', 'Electromagnetics', 112, 2015, b'1'),
(201001, 'Bhimbra', 'Electric Machinery', 201, 2011, b'0'),
(201002, 'Bhimbra', 'Electric Machinery', 201, 2011, b'1'),
(201003, 'Bhimbra', 'Electric Machinery', 201, 2011, b'1'),
(201004, 'Bhimbra', 'Electric Machinery', 201, 2011, b'1'),
(201005, 'Bhimbra', 'Electric Machinery', 201, 2011, b'1'),
(201006, 'J B Gupta', 'AC and DC Machines', 201, 2014, b'1'),
(201007, 'J B Gupta', 'AC and DC Machines', 201, 2014, b'1'),
(201008, 'J B Gupta', 'AC and DC Machines', 201, 2014, b'1'),
(201009, 'J B Gupta', 'AC and DC Machines', 201, 2014, b'1'),
(201010, 'J B Gupta', 'AC and DC Machines', 201, 2014, b'1'),
(202001, 'Albert Paulo and Gau', 'Digital Principles And Applications', 202, 2010, b'1'),
(202002, 'Albert Paulo and Gau', 'Digital Principles And Applications', 202, 2010, b'1'),
(202003, 'Albert Paulo and Gau', 'Digital Principles And Applications', 202, 2010, b'1'),
(202004, 'Albert Paulo and Gau', 'Digital Principles And Applications', 202, 2010, b'1'),
(202005, 'Albert Paulo and Gau', 'Digital Principles And Applications', 202, 2010, b'1'),
(202006, 'Donald D Givone', 'Digital Principles And Design', 202, 2012, b'1'),
(202007, 'Donald D Givone', 'Digital Principles And Design', 202, 2012, b'1'),
(202008, 'Donald D Givone', 'Digital Principles And Design', 202, 2012, b'1'),
(202009, 'Donald D Givone', 'Digital Principles And Design', 202, 2012, b'1'),
(202010, 'Donald D Givone', 'Digital Principles And Design', 202, 2012, b'1'),
(203001, 'A. K. Sawhney', 'Electrical and Electronic Measurements and Instrumentation', 203, 2014, b'1'),
(203002, 'A. K. Sawhney', 'Electrical and Electronic Measurements and Instrumentation', 203, 2014, b'1'),
(203003, 'A. K. Sawhney', 'Electrical and Electronic Measurements and Instrumentation', 203, 2014, b'1'),
(203004, 'A. K. Sawhney', 'Electrical and Electronic Measurements and Instrumentation', 203, 2014, b'1'),
(203005, 'A. K. Sawhney', 'Electrical and Electronic Measurements and Instrumentation', 203, 2014, b'1'),
(203006, 'David A Bell', 'Electronic Instrumentation and Measurement', 203, 2014, b'1'),
(203007, 'David A Bell', 'Electronic Instrumentation and Measurement', 203, 2014, b'1'),
(203008, 'David A Bell', 'Electronic Instrumentation and Measurement', 203, 2014, b'1'),
(203009, 'David A Bell', 'Electronic Instrumentation and Measurement', 203, 2014, b'1'),
(203010, 'David A Bell', 'Electronic Instrumentation and Measurement', 203, 2014, b'1'),
(204001, 'Sedra/Smith', 'MicroElectronic Circuits', 204, 2010, b'1'),
(204002, 'Sedra/Smith', 'MicroElectronic Circuits', 204, 2010, b'1'),
(204003, 'Sedra/Smith', 'MicroElectronic Circuits', 204, 2010, b'1'),
(204004, 'Sedra/Smith', 'MicroElectronic Circuits', 204, 2010, b'1'),
(204005, 'Sedra/Smith', 'MicroElectronic Circuits', 204, 2010, b'1'),
(204006, 'Jacob Millman & Chri', '“Integrated Electronics”,', 204, 2011, b'1'),
(204007, 'Jacob Millman & Chri', '“Integrated Electronics”,', 204, 2011, b'1'),
(204008, 'Jacob Millman & Chri', '“Integrated Electronics”,', 204, 2011, b'1'),
(204009, 'Jacob Millman & Chri', '“Integrated Electronics”,', 204, 2011, b'1'),
(204010, 'Jacob Millman & Chri', '“Integrated Electronics”,', 204, 2011, b'1'),
(205001, 'William H Hayt', 'Engineering Circuit Analysis', 205, 2014, b'1'),
(205002, 'William H Hayt', 'Engineering Circuit Analysis', 205, 2014, b'1'),
(205003, 'William H Hayt', 'Engineering Circuit Analysis', 205, 2014, b'1'),
(205004, 'William H Hayt', 'Engineering Circuit Analysis', 205, 2014, b'1'),
(205005, 'William H Hayt', 'Engineering Circuit Analysis', 205, 2014, b'1'),
(205006, 'Ravish R Singh', 'Network Analysis and Synthesis', 205, 2017, b'1'),
(205007, 'Ravish R Singh', 'Network Analysis and Synthesis', 205, 2017, b'1'),
(205008, 'Ravish R Singh', 'Network Analysis and Synthesis', 205, 2017, b'1'),
(205009, 'Ravish R Singh', 'Network Analysis and Synthesis', 205, 2017, b'1'),
(205010, 'Ravish R Singh', 'Network Analysis and Synthesis', 205, 2017, b'1'),
(206001, 'David A Bell', 'Operational Amplifier And Linear ICs', 206, 2011, b'1'),
(206002, 'David A Bell', 'Operational Amplifier And Linear ICs', 206, 2011, b'1'),
(206003, 'David A Bell', 'Operational Amplifier And Linear ICs', 206, 2011, b'1'),
(206004, 'David A Bell', 'Operational Amplifier And Linear ICs', 206, 2011, b'1'),
(206005, 'David A Bell', 'Operational Amplifier And Linear ICs', 206, 2011, b'1'),
(206006, 'RamaKanth Gaikwad', 'Operational Amplifier and ICs', 206, 2012, b'1'),
(206007, 'RamaKanth Gaikwad', 'Operational Amplifier and ICs', 206, 2012, b'1'),
(206008, 'RamaKanth Gaikwad', 'Operational Amplifier and ICs', 206, 2012, b'1'),
(206009, 'RamaKanth Gaikwad', 'Operational Amplifier and ICs', 206, 2012, b'1'),
(206010, 'RamaKanth Gaikwad', 'Operational Amplifier and ICs', 206, 2012, b'1'),
(207001, 'Alan V Opeheim', 'Signals And Systems', 207, 2009, b'1'),
(207002, 'Alan V Opeheim', 'Signals And Systems', 207, 2009, b'1'),
(207003, 'Alan V Opeheim', 'Signals And Systems', 207, 2009, b'1'),
(207004, 'Alan V Opeheim', 'Signals And Systems', 207, 2009, b'1'),
(207005, 'Alan V Opeheim', 'Signals And Systems', 207, 2009, b'1'),
(207006, 'Simon Haykin', 'Signals and systems', 207, 2014, b'1'),
(207007, 'Simon Haykin', 'Signals and systems', 207, 2014, b'1'),
(207008, 'Simon Haykin', 'Signals and systems', 207, 2014, b'1'),
(207009, 'Simon Haykin', 'Signals and systems', 207, 2014, b'1'),
(207010, 'Simon Haykin', 'Signals and systems', 207, 2014, b'1'),
(208001, 'M H Rashid', 'Power Electronics', 208, 2015, b'1'),
(208002, 'M H Rashid', 'Power Electronics', 208, 2015, b'1'),
(208003, 'M H Rashid', 'Power Electronics', 208, 2015, b'1'),
(208004, 'M H Rashid', 'Power Electronics', 208, 2015, b'1'),
(208005, 'M H Rashid', 'Power Electronics', 208, 2015, b'1'),
(208006, 'G K Dubey', 'Thyristorised Power Controllers', 208, 2011, b'1'),
(208007, 'G K Dubey', 'Thyristorised Power Controllers', 208, 2011, b'1'),
(208008, 'G K Dubey', 'Thyristorised Power Controllers', 208, 2011, b'1'),
(208009, 'G K Dubey', 'Thyristorised Power Controllers', 208, 2011, b'1'),
(208010, 'G K Dubey', 'Thyristorised Power Controllers', 208, 2011, b'1'),
(209001, 'K Ogata', 'Modern Control Engineering', 209, 2012, b'1'),
(209002, 'K Ogata', 'Modern Control Engineering', 209, 2012, b'1'),
(209003, 'K Ogata', 'Modern Control Engineering', 209, 2012, b'1'),
(209004, 'K Ogata', 'Modern Control Engineering', 209, 2012, b'1'),
(209005, 'K Ogata', 'Modern Control Engineering', 209, 2012, b'1'),
(209006, 'J Nagarth And M Gopa', 'Modern Control Engineering', 209, 2013, b'1'),
(209007, 'J Nagarth And M Gopa', 'Modern Control Engineering', 209, 2013, b'1'),
(209008, 'J Nagarth And M Gopa', 'Modern Control Engineering', 209, 2013, b'1'),
(209009, 'J Nagarth And M Gopa', 'Modern Control Engineering', 209, 2013, b'1'),
(209010, 'J Nagarth And M Gopa', 'Modern Control Engineering', 209, 2013, b'1'),
(210001, 'P.S Bhimbra', 'Electronic Machinery', 210, 2011, b'1'),
(210002, 'P.S Bhimbra', 'Electronic Machinery', 210, 2011, b'1'),
(210003, 'P.S Bhimbra', 'Electronic Machinery', 210, 2011, b'1'),
(210004, 'P.S Bhimbra', 'Electronic Machinery', 210, 2011, b'1'),
(210005, 'P.S Bhimbra', 'Electronic Machinery', 210, 2011, b'1'),
(210006, 'Ashfaq Hussain', 'Electronic Machiners', 210, 2011, b'1'),
(210007, 'Ashfaq Hussain', 'Electronic Machiners', 210, 2011, b'1'),
(210008, 'Ashfaq Hussain', 'Electronic Machiners', 210, 2011, b'1'),
(210009, 'Ashfaq Hussain', 'Electronic Machiners', 210, 2011, b'1'),
(210010, 'Ashfaq Hussain', 'Electronic Machiners', 210, 2011, b'1'),
(211001, 'V.Udayashankar and M', 'The 8051 Microocontroller', 211, 2019, b'1'),
(211002, 'V.Udayashankar and M', 'The 8051 Microocontroller', 211, 2019, b'1'),
(211003, 'V.Udayashankar and M', 'The 8051 Microocontroller', 211, 2019, b'1'),
(211004, 'V.Udayashankar and M', 'The 8051 Microocontroller', 211, 2019, b'1'),
(211005, 'V.Udayashankar and M', 'The 8051 Microocontroller', 211, 2019, b'1'),
(211006, 'Raj Kamal', 'Microcontroller:Architecture and Application', 211, 2017, b'1'),
(211007, 'Raj Kamal', 'Microcontroller:Architecture,Application', 211, 2017, b'1'),
(211008, 'Raj Kamal', 'Microcontroller:Architecture,Application', 211, 2017, b'1'),
(211009, 'Raj Kamal', 'Microcontroller:Architecture,Application', 211, 2017, b'1'),
(211010, 'Raj Kamal', 'Microcontroller:Architecture,Application', 211, 2017, b'1'),
(212001, 'William H Hayt', 'Engineering Electromagnetics', 212, 2016, b'1'),
(212002, 'William H Hayt', 'Engineering Electromagnetics', 212, 2016, b'1'),
(212003, 'William H Hayt', 'Engineering Electromagnetics', 212, 2016, b'1'),
(212004, 'William H Hayt', 'Engineering Electromagnetics', 212, 2016, b'1'),
(212005, 'William H Hayt', 'Engineering Electromagnetics', 212, 2016, b'1'),
(212006, 'John Krauss', 'Electromagnetics And Applications', 212, 2010, b'1'),
(212007, 'John Krauss', 'Electromagnetics And Applications', 212, 2010, b'1'),
(212008, 'John Krauss', 'Electromagnetics And Applications', 212, 2010, b'1'),
(212009, 'John Krauss', 'Electromagnetics And Applications', 212, 2010, b'1'),
(212010, 'John Krauss', 'Electromagnetics And Applications', 212, 2010, b'1'),
(213001, 'A Chankrabarti', 'Power System Engineering', 213, 2015, b'1'),
(213002, 'A Chankrabarti', 'Power System Engineering', 213, 2015, b'1'),
(213003, 'A Chankrabarti', 'Power System Engineering', 213, 2015, b'1'),
(213004, 'A Chankrabarti', 'Power System Engineering', 213, 2015, b'1'),
(213005, 'A Chankrabarti', 'Power System Engineering', 213, 2015, b'1'),
(213006, 'Kamaraju', 'Electrical Power Generating System', 213, 2018, b'1'),
(213007, 'Kamaraju', 'Electrical Power Generating System', 213, 2018, b'1'),
(213008, 'Kamaraju', 'Electrical Power Generating System', 213, 2018, b'1'),
(213009, 'Kamaraju', 'Electrical Power Generating System', 213, 2018, b'1'),
(213010, 'Kamaraju', 'Electrical Power Generating System', 213, 2018, b'1'),
(214001, 'Sivanagaraju', 'Electric Power Transmission and Distribution', 214, 2016, b'1'),
(214002, 'Sivanagaraju', 'Electric Power Transmission and Distribution', 214, 2016, b'1'),
(214003, 'Sivanagaraju', 'Electric Power Transmission and Distribution', 214, 2016, b'1'),
(214004, 'Sivanagaraju', 'Electric Power Transmission and Distribution', 214, 2016, b'1'),
(214005, 'Sivanagaraju', 'Electric Power Transmission and Distribution', 214, 2016, b'1'),
(214006, 'A S Pabla', 'Electric Power Distribution', 214, 2018, b'1'),
(214007, 'A S Pabla', 'Electric Power Distribution', 214, 2018, b'1'),
(214008, 'A S Pabla', 'Electric Power Distribution', 214, 2018, b'1'),
(214009, 'A S Pabla', 'Electric Power Distribution', 214, 2018, b'1'),
(214010, 'A S Pabla', 'Electric Power Distribution', 214, 2018, b'1'),
(215001, 'John J Grainger', 'Power System Analysis', 215, 2013, b'1'),
(215002, 'John J Grainger', 'Power System Analysis', 215, 2013, b'1'),
(215003, 'John J Grainger', 'Power System Analysis', 215, 2013, b'1'),
(215004, 'John J Grainger', 'Power System Analysis', 215, 2013, b'1'),
(215005, 'John J Grainger', 'Power System Analysis', 215, 2013, b'1'),
(215006, 'Nagrath Kothari', 'Modern Power System Analysis', 215, 2016, b'1'),
(215007, 'Nagrath Kothari', 'Modern Power System Analysis', 215, 2016, b'1'),
(215008, 'Nagrath Kothari', 'Modern Power System Analysis', 215, 2016, b'1'),
(215009, 'Nagrath Kothari', 'Modern Power System Analysis', 215, 2016, b'1'),
(215010, 'Nagrath Kothari', 'Modern Power System Analysis', 215, 2016, b'1'),
(217001, 'Sunil S Rao', 'Switchgear protection', 217, 2008, b'1'),
(217002, 'Sunil S Rao', 'Switchgear protection', 217, 2008, b'1'),
(217003, 'Sunil S Rao', 'Switchgear protection', 217, 2008, b'1'),
(217004, 'Sunil S Rao', 'Switchgear protection', 217, 2008, b'1'),
(217005, 'Sunil S Rao', 'Switchgear protection', 217, 2008, b'1'),
(217006, 'Badriram', 'Power System Protection And Switchgear', 217, 2014, b'1'),
(217007, 'Badriram', 'Power System Protection And Switchgear', 217, 2014, b'1'),
(217008, 'Badriram', 'Power System Protection And Switchgear', 217, 2014, b'1'),
(217009, 'Badriram', 'Power System Protection And Switchgear', 217, 2014, b'1'),
(217010, 'Badriram', 'Power System Protection And Switchgear', 217, 2014, b'1'),
(601001, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601002, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601003, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601004, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601005, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'0'),
(601006, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601007, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601008, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601009, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601010, 'Aaron M. Tenenbaum', 'Data Structures Using C', 601, 2017, b'1'),
(601011, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601012, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601013, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601014, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601015, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601016, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601017, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601018, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601019, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601020, 'Seymour Lipschutz', 'Data Structures,Schaums Outlines', 601, 2009, b'1'),
(601021, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601022, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601023, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601024, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601025, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601026, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601027, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601028, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601029, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601030, 'Ellis Horowitz and S', 'Fundamentals Of Data Structures In C', 601, 2011, b'1'),
(601031, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601032, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601033, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601034, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601035, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601036, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601037, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601038, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(601039, 'Narasimha', 'Data Structures Made Easy', 601, 2012, b'1'),
(602001, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602002, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602003, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602004, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602005, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602006, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602007, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602008, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602009, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602010, 'Anany Levitin', 'Introduction to the Design & Analysis of Algorithms', 602, 2017, b'1'),
(602011, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602012, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602013, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602014, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602015, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602016, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602017, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602018, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602019, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602020, 'Thomas H Cormen', 'Introduction To Algorithms', 602, 2015, b'1'),
(602021, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602022, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602023, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602024, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602025, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602026, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602027, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602028, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602029, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602030, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602031, 'Horowitz E', 'Computer Algorithms', 602, 2014, b'1'),
(602032, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602033, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602034, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602035, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602036, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602037, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602038, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602039, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602040, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(602041, 'R C T Lee', 'Introduction to DAA A Strategic Approach', 602, 2011, b'1'),
(603001, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603002, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603003, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603004, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'0'),
(603005, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603006, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603007, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603008, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603009, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603010, 'E Balaguru Swamy', 'Object Oriebted Programming with C++', 603, 2010, b'1'),
(603011, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603012, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603013, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603014, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603015, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603016, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603017, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603018, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603019, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603020, 'Robert Lapore', 'OOP with Turbo C++', 603, 2012, b'1'),
(603021, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603022, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603023, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603024, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603025, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603026, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603027, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603028, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603029, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603030, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(603031, 'K R Venugopal', 'Mastering C++', 603, 2015, b'1'),
(604001, 'Herbert Schildt', 'The Complete Reference Java', 604, 2007, b'1'),
(604002, 'Jan Graba', 'Networking programming using java', 604, 2007, b'1'),
(604003, 'Balaguru Swamy', 'C++ for beginners', 605, 2009, b'0'),
(605001, 'Balguru Swamy', 'Introduction to Programming in C++', 605, 2011, b'1'),
(605002, 'Balguru Swamy', 'Introduction to Programming in C++', 605, 2011, b'1'),
(605003, 'Balguru Swamy', 'Introduction to Programming in C++', 605, 2011, b'1'),
(605004, 'Balguru Swamy', 'Introduction to Programming in C++', 605, 2011, b'1'),
(605005, 'Balguru Swamy', 'Introduction to Programming in C++', 605, 2011, b'1'),
(605006, 'Balguru Swamy', 'Introduction to Programming in C++', 605, 2011, b'1'),
(605007, 'Stanley', 'C++ BASICS', 605, 2007, b'1'),
(606001, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606002, 'Herbert Schildt', 'The Complete Reference Java', 604, 2007, b'1'),
(606003, 'Herbert Schildt', 'The Complete Reference Java', 604, 2007, b'1'),
(606004, 'Herbert Schildt', 'The Complete Reference Java', 604, 2007, b'1'),
(606006, 'Herbert Schildt', 'The Complete Reference Java', 604, 2007, b'1'),
(606008, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606009, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606010, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606011, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606012, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606013, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606014, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606015, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606016, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606017, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606018, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606019, 'Y. Daniel Liang', 'Introduction to Programming Using Python', 606, 2010, b'1'),
(606020, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606021, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606022, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606023, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606024, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606025, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606026, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606027, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606028, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606029, 'Chun, J Wesley', 'Core Python Programming', 606, 2013, b'1'),
(606030, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606031, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606034, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606035, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606036, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(606037, 'Kenneth A Lambert', 'The Fundamentals of Python: First Programs', 606, 2016, b'1'),
(607001, 'Carl Haamcher', 'Computer Organization', 607, 2016, b'1'),
(607002, 'Carl Haamcher', 'Computer Organization', 607, 2016, b'1'),
(607003, 'Carl Haamcher', 'Computer Organization', 607, 2016, b'1'),
(607004, 'Carl Haamcher', 'Computer Organization', 607, 2016, b'1'),
(607005, 'Carl Haamcher', 'Computer Organization', 607, 2016, b'1'),
(607006, 'Carl Haamcher', 'Computer Organization', 607, 2016, b'1'),
(607007, 'William Stalings', 'Computer Organization And Architecture', 607, 2014, b'1'),
(607008, 'William Stalings', 'Computer Organization And Architecture', 607, 2014, b'1'),
(607009, 'William Stalings', 'Computer Organization And Architecture', 607, 2014, b'1'),
(607010, 'William Stalings', 'Computer Organization And Architecture', 607, 2014, b'1'),
(607011, 'William Stalings', 'Computer Organization And Architecture', 607, 2014, b'1'),
(607012, 'William Stalings', 'Computer Organization And Architecture', 607, 2014, b'1'),
(607013, 'William Stalings', 'Computer Organization And Architecture', 607, 2014, b'1'),
(608001, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608002, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608003, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608004, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608005, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608006, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608007, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608008, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608009, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608010, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608011, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608012, 'William Stalings', 'Data And Computer Communication', 608, 2014, b'1'),
(608013, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608014, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608015, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608016, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608017, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608018, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608019, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608020, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608021, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608022, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608023, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608024, 'Behrouz A.Forouzan', 'Data Communication And Networking', 608, 2010, b'1'),
(608025, 'William A Shay', 'Understanding Data Communications and Networks', 608, 2011, b'1'),
(608026, 'William A Shay', 'Understanding Data Communications and Networks', 608, 2011, b'1'),
(608027, 'William A Shay', 'Understanding Data Communications and Networks', 608, 2011, b'1'),
(608028, 'William A Shay', 'Understanding Data Communications and Networks', 608, 2011, b'1'),
(608029, 'William A Shay', 'Understanding Data Communications and Networks', 608, 2011, b'1'),
(608030, 'William A Shay', 'Understanding Data Communications and Networks', 608, 2011, b'1'),
(608031, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608032, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608033, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608034, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608035, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608036, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608037, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608038, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608039, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(608040, 'GodBole', 'Data Communications And Networks', 608, 2015, b'1'),
(609001, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609002, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609003, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609004, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'0'),
(609005, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609006, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609007, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609008, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609009, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609010, 'Stephen Brown', 'Fundamentals of Digital Logic Design with VHDL', 609, 2005, b'1'),
(609011, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609012, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609013, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609014, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609015, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609016, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609017, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609018, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609019, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609020, 'R. D. Sudhaker Samue', 'Illustrative Approach to Logic Design', 609, 2005, b'1'),
(609021, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609022, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609023, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609024, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609025, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609026, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609027, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609028, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609029, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609030, 'M. Morris Mano', 'Digital Logic And Computer Design', 609, 2005, b'1'),
(609031, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609032, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609033, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609034, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609035, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609036, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609037, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609038, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609039, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609040, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(609041, 'Donald P Leach', 'Digital Principles And Applications', 609, 2010, b'1'),
(610001, 'Barry B Berry', 'The Intel MicroProcessors', 610, 2017, b'1'),
(610002, 'Barry B Berry', 'The Intel MicroProcessors', 610, 2017, b'1'),
(610003, 'Barry B Berry', 'The Intel MicroProcessors', 610, 2017, b'1'),
(610004, 'Barry B Berry', 'The Intel MicroProcessors', 610, 2017, b'1'),
(611001, 'Ian Sommerville', 'Software Engineering', 611, 2013, b'0'),
(612001, 'Elmasri and Navathe', 'Fundamentals Of DataBase Systems', 612, 2005, b'1'),
(612002, 'Elmasri and Navathe', 'Fundamentals Of DataBase Systems', 612, 2005, b'1'),
(612003, 'Elmasri and Navathe', 'Fundamentals Of DataBase Systems', 612, 2005, b'1'),
(612004, 'Elmasri and Navathe', 'Fundamentals Of DataBase Systems', 612, 2005, b'1'),
(612005, 'Elmasri and Navathe', 'Fundamentals Of DataBase Systems', 612, 2005, b'1'),
(612006, 'Elmasri and Navathe', 'Fundamentals Of DataBase Systems', 612, 2005, b'1'),
(612007, 'Elmasri and Navathe', 'Fundamentals Of DataBase Systems', 612, 2005, b'1'),
(612008, 'Raghu Ramakrishnan', 'DataBase Management Systems', 612, 2007, b'1'),
(612009, 'Raghu Ramakrishnan', 'DataBase Management Systems', 612, 2007, b'1'),
(612010, 'Raghu Ramakrishnan', 'DataBase Management Systems', 612, 2007, b'1'),
(612011, 'Raghu Ramakrishnan', 'DataBase Management Systems', 612, 2007, b'1'),
(612012, 'Raghu Ramakrishnan', 'DataBase Management Systems', 612, 2007, b'1'),
(612013, 'Raghu Ramakrishnan', 'DataBase Management Systems', 612, 2007, b'1'),
(612014, 'Raghu Ramakrishnan', 'DataBase Management Systems', 612, 2007, b'1'),
(613001, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613002, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613003, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613004, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613005, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613006, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613007, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613008, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613009, 'John L. Hennessey', 'Computer Architecture, A Quantitative Approach', 613, 2014, b'1'),
(613010, 'Dezso Sima', 'Advanced Computer Architecture', 613, 2012, b'1'),
(613011, 'Dezso Sima', 'Advanced Computer Architecture', 613, 2012, b'1'),
(613012, 'Dezso Sima', 'Advanced Computer Architecture', 613, 2012, b'1'),
(613013, 'Dezso Sima', 'Advanced Computer Architecture', 613, 2012, b'1'),
(613014, 'Dezso Sima', 'Advanced Computer Architecture', 613, 2012, b'1'),
(613015, 'Dezso Sima', 'Advanced Computer Architecture', 613, 2012, b'1'),
(614001, 'Patrick M Carey', 'HTML5 CSS3 Introductory', 614, 2016, b'1'),
(614002, 'Patrick M Carey', 'HTML5 CSS3 Introductory', 614, 2016, b'1'),
(614003, 'Patrick M Carey', 'HTML5 CSS3 Introductory', 614, 2016, b'1'),
(614004, 'Patrick M Carey', 'HTML5 CSS3 Introductory', 614, 2016, b'1'),
(614005, 'Patrick M Carey', 'HTML5 CSS3 Introductory', 614, 2016, b'1'),
(614006, 'Patrick M Carey', 'HTML5 CSS3 Introductory', 614, 2016, b'1'),
(614007, 'Patrick M Carey', 'HTML5 CSS3 Introductory', 614, 2016, b'1'),
(614008, 'Jessica Minic', 'Web Design with HTML5 and CSS3', 614, 2015, b'1'),
(614009, 'Jessica Minic', 'Web Design with HTML5 and CSS3', 614, 2015, b'1'),
(614010, 'Jessica Minic', 'Web Design with HTML5 and CSS3', 614, 2015, b'1'),
(614011, 'Jessica Minic', 'Web Design with HTML5 and CSS3', 614, 2015, b'1'),
(614012, 'Jessica Minic', 'Web Design with HTML5 and CSS3', 614, 2015, b'1'),
(614013, 'Jessica Minic', 'Web Design with HTML5 and CSS3', 614, 2015, b'1'),
(616001, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616002, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616003, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616004, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616005, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616006, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616007, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616008, 'Ethan Brown', 'Learning Javascript', 616, 2015, b'1'),
(616009, 'Don Gosselin', 'Javascript', 616, 2017, b'1'),
(616010, 'Don Gosselin', 'Javascript', 616, 2017, b'1'),
(616011, 'Don Gosselin', 'Javascript', 616, 2017, b'1'),
(616012, 'Don Gosselin', 'Javascript', 616, 2017, b'1'),
(616013, 'Don Gosselin', 'Javascript', 616, 2017, b'1'),
(616014, 'Don Gosselin', 'Javascript', 616, 2017, b'1'),
(616015, 'Don Gosselin', 'Javascript', 616, 2017, b'1'),
(619001, 'Nayan B Ruperalia', 'Cloud Computing', 619, 2014, b'0'),
(619002, 'Nayan B Ruperalia', 'Cloud Computing', 619, 2014, b'1'),
(619003, 'Nayan B Ruperalia', 'Cloud Computing', 619, 2014, b'1'),
(619004, 'Nayan B Ruperalia', 'Cloud Computing', 619, 2014, b'1'),
(619005, 'Nayan B Ruperalia', 'Cloud Computing', 619, 2014, b'1'),
(619006, 'Nayan B Ruperalia', 'Cloud Computing', 619, 2014, b'1'),
(619007, 'Christopher Barnatt', 'Brief guide to cloud computing', 619, 2009, b'1'),
(619008, 'Christopher Barnatt', 'Brief guide to cloud computing', 619, 2009, b'1'),
(619009, 'Christopher Barnatt', 'Brief guide to cloud computing', 619, 2009, b'1'),
(619010, 'Christopher Barnatt', 'Brief guide to cloud computing', 619, 2009, b'1'),
(619011, 'Christopher Barnatt', 'Brief guide to cloud computing', 619, 2009, b'1'),
(619012, 'Christopher Barnatt', 'Brief guide to cloud computing', 619, 2009, b'1'),
(620001, 'Thomas Pittman', 'Art Of Compliler Design:Theory and practice', 620, 2010, b'0'),
(620002, 'Thomas Pittman', 'Art Of Compliler Design:Theory and practice', 620, 2010, b'1'),
(620003, 'Thomas Pittman', 'Art Of Compliler Design:Theory and practice', 620, 2010, b'1'),
(620004, 'Thomas Pittman', 'Art Of Compliler Design:Theory and practice', 620, 2010, b'1'),
(620005, 'Thomas Pittman', 'Art Of Compliler Design:Theory and practice', 620, 2010, b'1'),
(620006, 'Thomas Pittman', 'Art Of Compliler Design:Theory and practice', 620, 2010, b'1'),
(620007, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620008, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620009, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620010, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620011, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620012, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620013, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620014, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(620015, 'SriKant', 'Compiler Design Handbook', 620, 2012, b'1'),
(621001, 'Paul Laseau', 'Graphic design handbook', 621, 2016, b'1'),
(621002, 'Paul Laseau', 'Graphic design handbook', 621, 2016, b'1'),
(621003, 'Paul Laseau', 'Graphic design handbook', 621, 2016, b'1'),
(621004, 'Paul Laseau', 'Graphic design handbook', 621, 2016, b'1'),
(621005, 'Paul Laseau', 'Graphic design handbook', 621, 2016, b'1'),
(621006, 'Paul Laseau', 'Graphic design handbook', 621, 2016, b'1'),
(622001, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622002, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622003, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622004, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622005, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622006, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622007, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622008, 'Sumitaba Das', 'Unix Concepts And Applications', 622, 2009, b'1'),
(622009, 'Behrouz A. Forouzan', 'Unix And Shell Programming', 622, 2011, b'1'),
(622010, 'Behrouz A. Forouzan', 'Unix And Shell Programming', 622, 2011, b'1'),
(622011, 'Behrouz A. Forouzan', 'Unix And Shell Programming', 622, 2011, b'1'),
(622012, 'Behrouz A. Forouzan', 'Unix And Shell Programming', 622, 2011, b'1'),
(622013, 'Behrouz A. Forouzan', 'Unix And Shell Programming', 622, 2011, b'1'),
(622014, 'Behrouz A. Forouzan', 'Unix And Shell Programming', 622, 2011, b'1'),
(622015, 'Behrouz A. Forouzan', 'Unix And Shell Programming', 622, 2011, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `cname` varchar(75) DEFAULT NULL,
  `cid` int(10) NOT NULL,
  `depid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`cname`, `cid`, `depid`) VALUES
('VLSI', 101, 1),
('Operations Research', 102, 1),
('Microprocessor Microcontr', 104, 1),
('Control Systems', 105, 1),
('Computer Communication Ne', 106, 1),
('Network Theory', 107, 1),
('Analog Communication', 108, 1),
('Digital Communication', 109, 1),
('Basic Communication', 110, 1),
('Signal Processing', 111, 1),
('Electromagnetic Wave Theory', 112, 1),
('DC And Synchronous Machines', 201, 2),
('Logic Design', 202, 2),
('Instrumentation and Measurements', 203, 2),
('Analog Electronic Circuits', 204, 2),
('Network Analysis', 205, 2),
('Linear Integrated Circuits', 206, 2),
('Signal Analysis and Processing', 207, 2),
('Power Electronics', 208, 2),
('Linear Control System', 209, 2),
('Transformers And Induction Machines', 210, 2),
('Microcontrollers', 211, 2),
('Eleectromagnetic Fields', 212, 2),
('ELECTRICAL POWER GENERATION AND ECONOMIC', 213, 2),
('Transmission And Distribution', 214, 2),
('Power System Analysis And Stability', 215, 2),
('Hign Voltage Engineering', 216, 2),
('Switchgear And Protection', 217, 2),
('BioChemistry', 401, 4),
('MicroBiology', 402, 4),
('Bioprocess Principles and calculations', 403, 4),
('Unit Operations', 404, 4),
('Reaction Engineering', 405, 4),
('Enzyme Technology', 406, 4),
('BioInformatics', 407, 4),
('Genetic Information', 408, 4),
('Bioethics', 409, 4),
('Genetic Engineering', 410, 4),
('Biostatics', 411, 4),
('Heat and mass transfer', 412, 4),
('Analytical Techniques', 413, 4),
('Molecular Biology and genetics', 414, 4),
('Upstream processing', 415, 4),
('Building material and construction', 501, 5),
('Strength Of Materials', 502, 5),
('Engineering Geology', 503, 5),
('Fluid Mechanics', 504, 5),
('CAD', 505, 5),
('Geotechnical Engineering', 506, 5),
('Transportation Engineering', 507, 5),
('Environmental Engineering', 508, 5),
('Concrete technology', 509, 5),
('Design of steel structural elements', 510, 5),
('Hydrology and irrigation engineering', 511, 5),
('Quantity Surveying and estimation', 512, 5),
('Data Structure', 601, 6),
('Algorithms', 602, 6),
('C Programming', 603, 6),
('Java Programming', 604, 6),
('C++ Programming', 605, 6),
('Python Programming', 606, 6),
('Computer Organization And Architecture', 607, 6),
('Data Communication', 608, 6),
('Digital System Design', 609, 6),
('Microprocessor', 610, 6),
('Principles Of Software Engineering', 611, 6),
('Database Management', 612, 6),
('Operating Systems', 613, 6),
('HTML and CSS', 614, 6),
('JavaScript', 616, 6),
('PHP', 617, 6),
('Ajax', 618, 6),
('Cloud Computing', 619, 6),
('Compiler Design', 620, 6),
('Graphic Design', 621, 6),
('Unix Programming', 622, 6),
('Ruby', 623, 6),
('Materials science engineering', 701, 7),
('Basic Thermodynamics', 702, 7),
('Manufacturing processes', 703, 7),
('Design of machine elements', 704, 7),
('Metrology and measurements', 705, 7),
('Kinematics of machines', 706, 7),
('Applied Thermodynamics', 707, 7),
('Manufacturing Technology', 708, 7),
('Engineering economics', 709, 7),
('Machine Shop', 710, 7),
('Industrial Robotics', 711, 7),
('Automative Engineering', 712, 7),
('Heat Transfer', 713, 7),
('Mechatronics', 714, 7),
('Engineeing Mathematics', 801, 3),
('Vector calculus', 802, 3),
('Linear Probablity', 803, 3),
('Discrete Mathematics', 804, 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depname` varchar(30) DEFAULT NULL,
  `depid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depname`, `depid`) VALUES
('Electronics and Commmunication', 1),
('Electrical and Electronics', 2),
('Mathematics', 3),
('BioTechnology', 4),
('Civil Engineering', 5),
('Computer Science', 6),
('Mechanical Engineering', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(8) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `ucategory` varchar(10) NOT NULL,
  `ucollege` varchar(20) NOT NULL,
  `upassword` varchar(30) DEFAULT NULL,
  `uemail` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `ucategory`, `ucollege`, `upassword`, `uemail`) VALUES
(10000, 'Rashmi', 'Student', 'NMAMIT', 'Rash456%', 'arashmibhat@gmail.com'),
(10004, 'Shreya', 'Staff', 'SCEM', 'Shreya567#', 'sshreya@gmail.com'),
(10005, 'Dhanya', 'Student', 'NMAMIT', 'Dhanya123!', 'dhanyak@gmail.com'),
(10006, 'Shravya V Shet', 'Student', 'NMAMIT', 'Shravya@345', 'shravyavshet@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookborrow`
--
ALTER TABLE `bookborrow`
  ADD PRIMARY KEY (`bid`,`uid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cname` (`cname`),
  ADD KEY `depid` (`depid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookborrow`
--
ALTER TABLE `bookborrow`
  ADD CONSTRAINT `bookborrow_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `bookdetails` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookborrow_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`depid`) REFERENCES `department` (`depid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
