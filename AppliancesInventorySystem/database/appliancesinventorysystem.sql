-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 01:21 PM
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
-- Database: `appliancesinventorysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `ProductBrand` varchar(250) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `Quantity` double NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `ProductBrand`, `ProductName`, `Quantity`, `Price`) VALUES
(1, 'Samsung', 'Television', 10, 20000),
(2, 'LG', 'Television', 12, 15000),
(3, 'Tough Mama', 'Electric Fan', 5, 800),
(5, 'Camel', 'Refrigerator', 5, 25000),
(6, 'Acer', 'Personal Computer', 15, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `productxstaff`
--

CREATE TABLE `productxstaff` (
  `id` int(11) NOT NULL,
  `ProductBrand` varchar(250) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `Quantity` int(250) NOT NULL,
  `Price` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productxstaff`
--

INSERT INTO `productxstaff` (`id`, `ProductBrand`, `ProductName`, `Quantity`, `Price`) VALUES
(1, 'Acer', 'Laptop', 3, 58000),
(2, 'Samsung', 'Speaker', 8, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `registrationform`
--

CREATE TABLE `registrationform` (
  `Id` int(11) NOT NULL,
  `Firstname` varchar(250) NOT NULL,
  `Lastname` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Role` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrationform`
--

INSERT INTO `registrationform` (`Id`, `Firstname`, `Lastname`, `Email`, `Password`, `Role`, `Status`) VALUES
(1, 'Junnalyn', 'Doning', 'awa@gmail.com', 'doning123', '', ''),
(2, 'Rowena', 'Pial', 'wenay@gmail.com', 'pial12345', '', ''),
(3, 'Arra Mae', 'Secuya', 'arra@gmail.com', 'secuya1234', '', ''),
(4, 'Lorenfe', 'Cuadero', 'loren@gmail.com', 'cuadero12345', '', ''),
(5, 'Shakera', 'Tinapay', 'shakey@gmail.com', 'tinapay123', '', ''),
(6, 'Kent James', 'Sumayang', '', '', '', ''),
(7, 'junna', 'awa', 'junnawa@gmail.com', 'awa123', '', ''),
(8, ' jnjjnk', '', '', '', '', ''),
(9, '', '', '', '', '', ''),
(10, 'Bebie', 'balbuena', '21103907@usc.edu.ph', 'bgkesha', '', ''),
(11, 'hjsdghjd', 'errgr', 'rryh', 'fgfff', '', ''),
(12, 'wenay', 'wenn', '@gmail.com', '', '', ''),
(13, 'try', 'try', 'try', 'try', '', ''),
(14, 'juna', 'junnaaa', 'hsghjhg', 'hh', 'Staff', ''),
(15, 'junnalyn', 'doning', 'juna@gmail.com', 'doning12345', 'Admin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productxstaff`
--
ALTER TABLE `productxstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrationform`
--
ALTER TABLE `registrationform`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productxstaff`
--
ALTER TABLE `productxstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registrationform`
--
ALTER TABLE `registrationform`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
