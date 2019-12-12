-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2019 at 02:08 AM
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
(1, 'Dell Inspiron Gaming G3', 'Newest !!! 9th Generation version CPU from Intel\r\nHigh Graphic Card Performance with  NVIDIA Geforce GTX 1050\r\nDDR4 Memory\r\nOS Windows 10 Home', 30000, 10, 'Dell.jpg', 1),
(2, 'HP Pavilion Gaming 15', 'หน้าจอแสดงผลขนาด 15.6\" ระดับ FHD\r\nระบบประมวลผล AMD Ryzen 5 3550H Processor\r\nระบบประมวลผลกราฟิก NVIDIA GeForce GTX1650\r\nมาพร้อม SSD PCIe NVMe ความจุ 512GB และ RAM DDR4 8GB\r\nมาพร้อมระบบปฏิบัติการ Windows 10 Home', 20000, 15, 'HP.jpg', 1),
(3, 'Acer Nitro AN515', 'Notebook Acer Nitro AN515-42 มาพร้อมกับสเปคที่มาจากค่ายแดง AMD\r\nCPU AMD Ryzen ทำงานร่วมกับ  Radeon RX 560X ', 20000, 20, 'Acer.jpg', 1),
(4, 'Lenovo Legion Y520', 'CPU : Intel Core i7-7700HQ\r\nRAM : 4GB DDR4 2400MHz\r\nHDD : 1TB\r\nGraphics : NVIDIA GeForce GTX 1050 4GB\r\nDisplay : 15.6 inch FHD IPS\r\nOS : Windows 10 Home', 13000, 17, 'Lenovo.jpg', 1),
(5, 'Monitor 18.5\" ACER K192HQLb', 'ACER K192HQLb จะทำให้คุณเพลิดเพลินกับงานและความบันเทิงบนจอแสดงผลขนาด 18.5 นิ้ว ความละเอียด 1366 x 768', 2000, 15, 'ACER Monitor.jpg', 2),
(6, 'Monitor 23.6\" MSI Optix G241VC', 'Optix G241VC จอแสดงผลขนาด 23.6 นิ้ว มาพร้อมกับความละเอียด Full HD 1920 x 1080 VA เพื่อประสบการณ์การรับชมที่ดีที่สุด ในการรับชมมุมกว้างและให้ภาพที่สดใสเหมือนจริง', 4000, 15, 'Monitor msi.jpg', 2),
(7, 'Monitor 23.8\" LG 24MK430H-B', 'LG 24MK430H-B จอแสดงผลขนาด 23.8 นิ้ว มาพร้อมกับความละเอียด 1920 x 1080 Full HD พร้อมด้วย IPS มอบภาพที่สดใส รายละเอียดคมชัด ไม่ว่าจะรับชมที่มุมใดก็ตาม\r\nด้วยเทคโนโลยี AMD FreeSync™ และอัตรารีเฟรชแบบไดนามิกที่ 75Hz จะช่วยขจัดอาการ', 4000, 15, 'Monitor  LG.jpg', 2),
(8, 'Monitor 23.8\" BENQ GW2480 ', 'จอมอนิเตอร์ BenQ GW2480 ขนาด 23.8 นิ้ว มาพร้อมการออกแบบที่เรียบง่าย ลงตัวกับทุกพื้นที่ด้วยขอบจอบางเฉียบ ช่องเก็บสายเคเบิลเพิ่มความเป็นระเบียบให้มุมทำงาน\r\nมาพร้อมเทคโนโลนี IPS (In-Plane Switching) ให้มุมมองที่กว้าง ช่วยให้สัมผัสได้ถึงความ', 4000, 17, 'Monitor BENQ.jpg', 2),
(9, '500 GB SSD WD Black SN750', 'ยกระดับประสิทธิภาพการทำงานด้วย NVME SSD\r\nWD BLACK ™ SN750 NVMe ™ SSD มอบประสิทธิภาพชั้นยอดสำหรับผู้ที่ชื่นชอบการเล่นเกมหรืออัพเกรดพีซี', 4000, 20, '500 GB SSD WD Black.jpg', 3),
(10, '500 GB SSD SAMSUNG 970EVO Plus', 'Up to 3,500 MB/s read and 3,200 MB/s write speeds', 5000, 17, '500 GB SSD SAMSUNG 970EVO.jpg', 3),
(11, '512 GB SSD GIGABYTE AORUS RGB ', 'Sequential Read Speed : up to 3,480 MB/s\r\nSequential Write speed : up to 2,000 MB/s', 3200, 20, 'SSD GIGABYTE AORUS RGB.jpg', 3),
(12, '480 GB SSD CORSAIR MP510', 'The CORSAIR Force MP510 NVMe PCIe Gen3 x4 M.2 SSD provides extreme storage performance with blazing fast read speeds of up to 3,480MB/sec.', 3300, 17, 'CORSAIR MP510.jpg', 3),
(13, 'aom', 'ds', 5000, 20, '500 GB SSD SAMSUNG 970EVO.jpg', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
