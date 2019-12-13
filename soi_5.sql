-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2019 at 06:52 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soi 5`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(150) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `active`) VALUES
(2, 'aokf', '633de4b0c14ca52ea2432a3c8a5c4c31', 'panuwit', 'sdfsff', 'aom@gmail', 0),
(3, 'aokf', '633de4b0c14ca52ea2432a3c8a5c4c31', 'panuwit', 'sdfsff', 'aom@gmail', 0),
(4, 'rfwarf', '07e9f6b70210cbae4c1c710ec34f4de6', '1354863', 'seaf', 'aomza@gmail', 0),
(5, 'panuwit', '06223671e4e1e9fe09800657332d2cee', 'panuwit', 'panuwit', 'panuwit@gmail', 0),
(6, 'panuwit', '3cc125da5c259073a590b629feff20f1', 'panuwit', 'panuwit', 'panuwit@gmail', 0),
(7, '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `unitInstock` int(11) NOT NULL,
  `picture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryID` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `unitInstock`, `picture`, `categoryID`) VALUES
(15, 'honda1', 'honda1', 200000, 5, 'honda1.jpg', 1),
(16, 'honda2', 'honda2', 250000, 3, 'honda2.jpg', 1),
(17, 'honda3', 'honda3', 300000, 5, 'honda3.jpg', 1),
(18, 'suzuki4', 'suzuki4', 270000, 3, 'suzuki.jpg', 1),
(19, 'toyota1', 'toyota1', 400000, 2, 'd2.jpg', 2),
(20, 'isuzu', 'isuzu', 500000, 3, 'b1.jpg', 2),
(21, 'mitsubishi', 'mitsubishi', 450000, 5, 'b3.jpg', 2),
(22, 'nissan', 'nissan', 500000, 3, 'b4.jpg', 2),
(23, 'toyota', 'toyota', 2000000, 2, 't1.jpg', 3),
(24, 'mg', 'mg', 1000000, 1, 't2.jpg', 3),
(25, 'hyundai', 'hyundai', 2000000, 5, 't3.jpg', 3),
(26, 'lexus', 'lexus', 3000000, 3, 't4.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
