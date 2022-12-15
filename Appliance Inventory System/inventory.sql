-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 02:57 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_firstname` varchar(255) NOT NULL,
  `employee_lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_firstname`, `employee_lastname`) VALUES
(2, 'Kent', 'James'),
(3, 'kent', 'james'),
(4, 'Kent James', 'Sumayang'),
(5, 'Jihyo', 'Madyoga'),
(6, 'Junnalyn', 'Doning'),
(7, 'Rowena', 'Pial'),
(8, 'Junnalyn', 'Doning'),
(9, 'junnalyn', 'doning');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `action_done` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `action_done`, `timestamp`) VALUES
(1, 'ADD ITEM', '2022-12-09 19:48:18'),
(2, 'ADD ITEM', '2022-12-09 20:04:50'),
(3, 'ADD ITEM', '2022-12-10 19:22:20'),
(4, 'RETRIEVE ITEM', '2022-12-10 19:24:42'),
(5, 'ADD ITEM', '2022-12-12 19:46:03'),
(6, 'EDITED ITEM', '2022-12-12 19:48:13'),
(7, 'ADD ITEM', '2022-12-14 12:08:33'),
(8, 'EDITED ITEM', '2022-12-14 12:10:54'),
(9, 'RETRIEVE ITEM APPROVED', '2022-12-14 12:12:04'),
(10, 'REQUEST ITEM', '2022-12-14 20:06:26'),
(11, 'REMOVED ITEM', '2022-12-14 20:10:20'),
(12, 'RETRIEVE ITEM APPROVED', '2022-12-14 20:10:55'),
(13, 'ADD ITEM', '2022-12-14 20:11:38'),
(14, 'ADD ITEM', '2022-12-14 20:20:19'),
(15, 'EDITED ITEM', '2022-12-14 20:21:11'),
(16, 'ADD ITEM', '2022-12-15 20:03:40'),
(17, 'EDITED ITEM', '2022-12-15 21:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_stock`, `time`) VALUES
(10, 'Musiga nga Lights', 410, '2022/12/12 19:46:03'),
(12, 'Washing Machine', 10, '2022/12/14 20:11:38'),
(13, 'Electric fan', 12, '2022/12/14 20:20:19'),
(14, 'Laptop Acer', 12, '2022/12/15 20:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `product_name`, `product_quantity`, `employee_id`) VALUES
(1, 'LGTV', 788, 1),
(2, 'LG', 20, 6);

-- --------------------------------------------------------

--
-- Table structure for table `retrieve_request`
--

CREATE TABLE `retrieve_request` (
  `retrieve_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `retrieve_request`
--

INSERT INTO `retrieve_request` (`retrieve_id`, `product_id`) VALUES
(1, 6),
(2, 8),
(3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `employee_id`, `username`, `password`) VALUES
(1, 2, 'kent123', 'james123'),
(3, 3, 'user', 'pass'),
(4, 3, 'user', 'pass'),
(5, 3, 'user12', 'pass12'),
(6, 3, 'kent123', 'james123'),
(7, 3, 'junnalynawa', 'doning123'),
(8, 3, 'wenay', 'wen345'),
(9, 3, 'jun_doning', 'awa12345'),
(10, 3, '1234', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `retrieve_request`
--
ALTER TABLE `retrieve_request`
  ADD PRIMARY KEY (`retrieve_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `retrieve_request`
--
ALTER TABLE `retrieve_request`
  MODIFY `retrieve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
