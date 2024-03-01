-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 04:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl-admin`
--

CREATE TABLE `tbl-admin` (
  `id` int(255) UNSIGNED NOT NULL,
  `full-name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl-admin`
--

INSERT INTO `tbl-admin` (`id`, `full-name`, `username`, `password`) VALUES
(25, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(30, 'ramesh', 'ramesh12', '50f42f5f407bdde8fbc33ba12aacfda7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl-catagory`
--

CREATE TABLE `tbl-catagory` (
  `id` int(255) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image-name` varchar(255) NOT NULL,
  `featured` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl-catagory`
--

INSERT INTO `tbl-catagory` (`id`, `title`, `image-name`, `featured`, `active`) VALUES
(34, 'MOMO', 'food_catagory_575.jpeg', 'Yes', 'Yes'),
(35, 'Chicken', 'food_catagory_328.jpeg', 'Yes', 'Yes'),
(36, 'Pizza', 'food_catagory_444.jpeg', 'Yes', 'Yes'),
(37, 'Chaumin', 'food_catagory_365.jpeg', 'Yes', 'Yes'),
(38, 'Chauchau', 'food_catagory_335.jpeg', 'Yes', 'Yes'),
(39, 'Roti', 'food_catagory_752.jpeg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl-food`
--

CREATE TABLE `tbl-food` (
  `id` int(255) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `image-name` varchar(255) NOT NULL,
  `catagory_id` int(255) NOT NULL,
  `featured` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl-food`
--

INSERT INTO `tbl-food` (`id`, `title`, `description`, `price`, `image-name`, `catagory_id`, `featured`, `active`) VALUES
(9, 'Testy Pizza', 'Testy and healthy Pizza in low price', '3.00', 'food_name_882.jpeg', 36, 'Yes', 'Yes'),
(10, 'Testy MOMO', 'Testy and healthy momo', '1.00', 'food_name_813.jpeg', 34, 'Yes', 'Yes'),
(11, 'Testy Chicken', 'Fresh and testy chicken', '3.00', 'food_name_15.jpeg', 35, 'Yes', 'Yes'),
(12, 'Testy Chaumin', 'Testy and fresh chaumin', '1.00', 'food_name_405.jpeg', 37, 'Yes', 'Yes'),
(13, 'Chauchau', 'testy and fresh chauchau', '1.00', 'food_name_971.jpeg', 38, 'Yes', 'Yes'),
(14, 'Wai Wai Chauchau', 'Healthy and testy', '1.00', 'food_name_610.jpeg', 38, 'Yes', 'Yes'),
(15, 'Swadilo roti', 'Testy and healthy roti', '2.00', 'food_name_10.jpeg', 39, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl-order`
--

CREATE TABLE `tbl-order` (
  `id` int(255) UNSIGNED NOT NULL,
  `food` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `order-date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `customer-name` varchar(255) NOT NULL,
  `customer-contact` varchar(255) NOT NULL,
  `customer-email` varchar(255) NOT NULL,
  `customer-address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl-order`
--

INSERT INTO `tbl-order` (`id`, `food`, `price`, `qty`, `total`, `order-date`, `status`, `customer-name`, `customer-contact`, `customer-email`, `customer-address`) VALUES
(13, 'Burger', '5.00', 3, '15.00', '2023-01-03 01:07:50', 'Delivered', 'Jivan Kalauni', '9863456476', 'jivan@gmail.com', 'dodhara'),
(14, 'Pizza', '4.00', 1, '4.00', '2023-01-03 01:13:32', 'Ordered', 'Madan Bohara', '9845679078', 'madan@gmail.com', 'btd'),
(15, 'Majjako Pizza', '2.00', 6, '12.00', '2023-01-03 01:15:02', 'Ordered', 'Ashok Ghatal', '9865678954', 'ashok@gmail.com', 'bara'),
(16, 'Majjako Pizza', '2.00', 8, '16.00', '2023-01-03 01:18:53', 'Delivered', 'Karan Bohara', '9834556733', 'karan@gmail.com', 'Ktm, tu'),
(17, 'MoMo', '2.00', 5, '10.00', '2023-01-04 02:33:17', 'Ordered', 'Cm Bhatt', '8767875664', 'cm@gmail.com', 'kathamandu'),
(18, 'Burger', '5.00', 3, '15.00', '2023-01-04 03:52:31', 'Delivered', 'Anil Pant', '9865678954', 'anil@gmail.com', 'Daiji'),
(19, 'Pizza', '4.00', 6, '24.00', '2023-01-04 06:34:43', 'Ordered', 'Shyam Saud', '9865678954', 'shyam@gmail.com', 'btd'),
(20, 'Pizza', '4.00', 3, '12.00', '2023-01-31 08:11:00', 'Ordered', 'ram', '4566777', 'ram@gmail.com', 'kym'),
(21, 'Pizza', '4.00', 2, '8.00', '2023-04-06 04:54:51', 'Ordered', 'Madan Bohara', '9845679078', 'ram@gmail.com', 'mnr'),
(22, 'Pizza', '4.00', 7, '28.00', '2023-04-06 05:34:03', 'Ordered', 'pankaj', '8767875664', 'pankaj@gmail.com', 'kulau'),
(23, 'MoMo', '2.00', 10, '20.00', '2023-04-07 07:04:37', 'Ordered', '', '', '', ''),
(24, 'Pizza', '4.00', 11, '44.00', '2023-04-07 07:05:02', 'Ordered', '', '', '', ''),
(25, 'Pizza', '4.00', 1, '4.00', '2023-04-07 07:07:48', 'Ordered', 'Jivan Kalauni', '9845679078', 'ashok@gmail.com', 'kathamandu'),
(26, 'Pizza', '4.00', 3, '12.00', '2023-04-07 08:33:31', 'Ordered', '', '9865678954', 'karan@gmail.com', 'Ktm, Nepal'),
(27, 'Wai Wai', '20.00', 1, '20.00', '2023-04-20 04:07:23', 'Ordered', 'xyz', '345567', 'xyz@gmail.com', 'xy'),
(28, 'Wai Wai', '20.00', 1, '20.00', '2023-04-21 12:00:21', 'Ordered', 'kamala', '8574853485', 'kamala@gmail.com', 'pokhara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl-admin`
--
ALTER TABLE `tbl-admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl-catagory`
--
ALTER TABLE `tbl-catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl-food`
--
ALTER TABLE `tbl-food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl-order`
--
ALTER TABLE `tbl-order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl-admin`
--
ALTER TABLE `tbl-admin`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl-catagory`
--
ALTER TABLE `tbl-catagory`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl-food`
--
ALTER TABLE `tbl-food`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl-order`
--
ALTER TABLE `tbl-order`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
