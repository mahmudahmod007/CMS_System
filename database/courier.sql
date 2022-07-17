-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 05:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier`
--

CREATE TABLE `tbl_courier` (
  `cid` int(10) NOT NULL,
  `cons_no` varchar(20) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `s_add` varchar(200) NOT NULL,
  `rev_name` varchar(100) NOT NULL,
  `r_phone` varchar(12) NOT NULL,
  `r_add` varchar(200) NOT NULL,
  `type` varchar(40) NOT NULL,
  `weight` double NOT NULL,
  `invice_no` varchar(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `book_mode` varchar(20) NOT NULL,
  `freight` double NOT NULL,
  `mode` varchar(20) NOT NULL,
  `pick_date` varchar(20) NOT NULL,
  `pick_time` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `book_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courier`
--

INSERT INTO `tbl_courier` (`cid`, `cons_no`, `ship_name`, `phone`, `s_add`, `rev_name`, `r_phone`, `r_add`, `type`, `weight`, `invice_no`, `qty`, `book_mode`, `freight`, `mode`, `pick_date`, `pick_time`, `status`, `comments`, `book_date`) VALUES
(10, 'RJ7UJQYD', 'Ruhel', '7895748236', 'Karimganj', 'John', '8853697310', 'Vichingcha pt-2', 'Parcel', 8, '0004IN', 1, 'ToPay', 1, 'Road', '23/05/2022', '3:55PM', 'Delivered', 'Fruits & Nuts', '2022-05-23'),
(11, 'NGDHPUGL', 'Habib', '8874127980', 'Tool Road', 'Rahul', '9985636201', 'NilamBazzar', 'Parcel', 5, '0005IN', 1, 'Paid', 1, 'Road', '23/05/2022', '4:00PM', 'Delivered', 'Books', '2022-05-23'),
(7, 'DE9D2KIZ', 'Sakir Ahmed Laskar', '9987458962', 'ghudhamghat road, Hailakandi', 'Wahid', '9987425680', 'Settlement Road, Karimganj', 'Parcel', 10, '0001IN', 1, 'ToPay', 1, 'Road', '11/05/2022', '12:00PM', 'Delivered', 'Courier ready to ship', '2022-05-18'),
(8, 'QDZR53LQ', 'John Laskar', '7002845731', 'Vichingcha Pt-2, Hailakandi,Assam\r\nGhudamghat Road', 'Moon Choudhury', '8485789641', 'Nilambazzar ', 'Parcel', 12, '0002IN', 1, 'ToPay', 1, 'Road', '22/05/2022', '2:34PM', 'Delivered', 'Successfully Ordered', '2022-05-22'),
(9, 'LVJHIM1C', 'Aslam', '8796581234', 'College Road', 'Minhaj', '8841569324', 'Railway Colony KXG', 'Parcel', 15, '0003IN', 1, 'ToPay', 1, 'Road', '23/05/2022', '3:38PM', 'Delivered', 'Study Material', '2022-05-23'),
(12, 'WL75XZ55', 'Rahul', '8794586327', 'College Road Hkd', 'Wahid', '8874968575', 'Karimganj Hospital ', 'Parcel', 11, '0006IN', 1, 'ToPay', 1, 'Road', '20/06/2022', '9:37AM', 'Delivered', 'Medicines', '2022-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_officers`
--

CREATE TABLE `tbl_courier_officers` (
  `cid` int(10) NOT NULL,
  `officer_name` varchar(40) NOT NULL,
  `off_pwd` varchar(40) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph_no` varchar(12) NOT NULL,
  `office` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courier_officers`
--

INSERT INTO `tbl_courier_officers` (`cid`, `officer_name`, `off_pwd`, `address`, `email`, `ph_no`, `office`, `reg_date`) VALUES
(7, 'Mahmud', 'mahmud123', 'hailakandi', 'mahmud07@gmail.com', '8486821276', 'Fast Courier - Hailakandi', '2022-05-10 13:46:15'),
(8, 'Wahid', 'wahid123', 'Settlement Road, KXG', 'wahid@gmail.com', '9987475893', 'Fast Courier - Karimganj', '2022-05-10 13:50:02'),
(9, 'Sakir', 'sakir123', 'Railway Colony', 'sakir@gmail.com', '7637855637', 'Fast Courier - Badarpur', '2022-05-10 13:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_track`
--

CREATE TABLE `tbl_courier_track` (
  `id` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `cons_no` varchar(20) NOT NULL,
  `current_city` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `bk_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courier_track`
--

INSERT INTO `tbl_courier_track` (`id`, `cid`, `cons_no`, `current_city`, `status`, `comments`, `bk_time`) VALUES
(12, 7, 'DE9D2KIZ', 'Fast Courier - Karimganj', 'Completed', 'Successfully Recieved', '2022-05-18 22:39:53'),
(13, 8, 'QDZR53LQ', 'Fast Courier - Badarpur', 'In Transit', 'In Badarpur', '2022-05-22 14:37:40'),
(14, 8, 'QDZR53LQ', 'Fast Courier - Karimganj', 'Completed', 'Order Recieved', '2022-05-22 14:39:56'),
(15, 9, 'LVJHIM1C', 'Fast Courier - Badarpur', 'Delayed', '', '2022-05-23 15:39:48'),
(16, 9, 'LVJHIM1C', 'Fast Courier - Karimganj', 'Completed', '', '2022-05-23 15:40:28'),
(17, 10, 'RJ7UJQYD', 'Fast Courier - Badarpur', 'Landed', '', '2022-05-23 15:52:22'),
(18, 10, 'RJ7UJQYD', 'Fast Courier - Hailakandi', 'Completed', '', '2022-05-23 15:53:35'),
(19, 11, 'NGDHPUGL', 'Fast Courier - Badarpur', 'Landed', '', '2022-05-23 16:06:13'),
(20, 11, 'NGDHPUGL', 'Fast Courier - Karimganj', 'Completed', '', '2022-05-23 16:07:06'),
(21, 12, 'WL75XZ55', 'Fast Courier - Badarpur', 'Landed', '', '2022-06-20 15:39:20'),
(22, 12, 'WL75XZ55', 'Fast Courier - Hailakandi', 'In Transit', '', '2022-06-20 15:42:08'),
(23, 12, 'WL75XZ55', 'Fast Courier - Badarpur', 'Landed', '', '2022-06-20 15:42:57'),
(24, 12, 'WL75XZ55', 'Fast Courier - Karimganj', 'Completed', '', '2022-06-20 15:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offices`
--

CREATE TABLE `tbl_offices` (
  `id` int(10) NOT NULL,
  `off_name` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `city` varchar(100) NOT NULL,
  `ph_no` varchar(20) NOT NULL,
  `office_time` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_offices`
--

INSERT INTO `tbl_offices` (`id`, `off_name`, `address`, `city`, `ph_no`, `office_time`, `contact_person`) VALUES
(1, 'Fast Courier - Hailakandi', '07, Ghudhamghat road, Hailakandi', 'Hailakandi', '8486821276', '10.00 am - 9.00 pm', 'Mahmud Ahmod'),
(2, 'Fast Courier - Badarpur', '20/12, Railway Colony,Badarpur', 'Badarpur', '7637855637', '10.00 am - 9.00 pm', 'Sakir Ahmed'),
(3, 'Fast Courier - Karimganj', '08/14, Settlement road, Karimganj', 'Karimganj', '9987475893', '10.00 am - 9.00 pm', 'Wahid Choudhury');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quote`
--

CREATE TABLE `tbl_quote` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `freighttype` varchar(20) NOT NULL,
  `distance` int(10) NOT NULL,
  `weight` int(10) NOT NULL,
  `parceltype` varchar(50) NOT NULL,
  `msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_quote`
--

INSERT INTO `tbl_quote` (`id`, `name`, `mobile`, `email`, `source`, `destination`, `freighttype`, `distance`, `weight`, `parceltype`, `msg`) VALUES
(4, 'Ruhel', '7895748236', 'ruhel@gmail.com', 'Karimganj', 'Hailakandi', 'Land', 63, 8, 'parcel', 'Fruits & Nuts'),
(5, 'Habib', '8874127980', 'habib@gmail.com', 'Hailakandi', 'Karimganj', 'Land', 60, 5, 'parcel', 'Books'),
(6, 'Rahul', '8794586327', 'rahul@gmail.com', 'College Road Hkd', 'Karimganj Hospital ', 'Land', 75, 11, 'parcel', 'Medicines');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_courier`
--
ALTER TABLE `tbl_courier`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_courier_officers`
--
ALTER TABLE `tbl_courier_officers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_courier_track`
--
ALTER TABLE `tbl_courier_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offices`
--
ALTER TABLE `tbl_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quote`
--
ALTER TABLE `tbl_quote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_courier`
--
ALTER TABLE `tbl_courier`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_courier_officers`
--
ALTER TABLE `tbl_courier_officers`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_courier_track`
--
ALTER TABLE `tbl_courier_track`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_offices`
--
ALTER TABLE `tbl_offices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_quote`
--
ALTER TABLE `tbl_quote`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
