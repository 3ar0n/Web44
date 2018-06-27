-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 04:40 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web44`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brandID` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandID`, `brandName`) VALUES
(0, 'Apple'),
(1, 'Asus'),
(2, 'BlackBerry'),
(3, 'Google'),
(4, 'HP'),
(5, 'HTC'),
(6, 'Huawei'),
(7, 'Lenovo'),
(8, 'Microsoft'),
(9, 'Motorola'),
(10, 'Nokia'),
(11, 'Oppo'),
(12, 'Samsung'),
(13, 'Sony'),
(14, 'Vivo'),
(15, 'Xiaomi'),
(16, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catID` int(11) NOT NULL,
  `catName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'Điện thoại'),
(2, 'Máy tính bảng');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `proID` int(11) NOT NULL,
  `proName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brandID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL,
  `imgLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'link ảnh trong \\public\\img\\product',
  `price` int(11) DEFAULT NULL,
  `shortInfo` text COLLATE utf8_unicode_ci,
  `fullInfo` text COLLATE utf8_unicode_ci,
  `addedDay` date DEFAULT NULL,
  `totalView` int(11) DEFAULT NULL,
  `totalBought` int(11) DEFAULT NULL,
  `inStorage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`proID`, `proName`, `brandID`, `catID`, `imgLink`, `price`, `shortInfo`, `fullInfo`, `addedDay`, `totalView`, `totalBought`, `inStorage`) VALUES
(0, 'iPhone X - 256GB', 0, 1, 'Apple/iphone-x-256gb.png', 34790000, '...', NULL, '2018-06-10', 10, 5, 2),
(1, 'BPhone 2017', 16, 1, 'Other/bkav-bphone-2-hero.png', 9790000, '...', NULL, '2018-06-06', 50, 0, 3),
(2, 'HTC U Play', 5, 1, 'HTC/htc-u-play.png', 3790000, '...', NULL, '2018-06-01', 4, 1, 0),
(3, 'Nokia 6', 10, 1, 'Nokia/nokia-6.png', 4990000, '...', NULL, '2018-06-20', 16, 9, 1),
(4, 'iPhone 6 32GB', 0, 1, 'Apple/iphone-6-32gb.png', 7490000, '...', NULL, '2018-06-15', 2, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `proID` int(11) NOT NULL,
  `slide` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frontCam` float DEFAULT NULL,
  `backCam` float DEFAULT NULL,
  `CPU` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RAM` int(11) DEFAULT NULL,
  `storage` int(11) DEFAULT NULL,
  `SIM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battery` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`proID`, `slide`, `display`, `OS`, `frontCam`, `backCam`, `CPU`, `RAM`, `storage`, `SIM`, `battery`) VALUES
(0, 'slide-iphoneX', 'OLED, 5.8\", Super Retina', 'iOS 11', 7, 12, 'Apple A11 Bionic 6 nhân', 3, 256, '1 Nano SIM, Hỗ trợ 4G', 2716),
(1, 'slide-bphone-2', 'IPS LCD, 5.5\", Full HD', 'BOS (Android 7.1)', 8, 16, 'Snapdragon 625 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 3000),
(2, 'htc-u-play', 'Super LCD, 5.2\", Full HD', 'Android 6.0 (Marshmallow)', 16, 16, 'MTK Helio P10 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 2500),
(3, 'nokia-6', 'IPS LCD, 5.5\", Full HD', 'Android 7.0 (Nougat)', 8, 16, 'Qualcomm Snapdragon 430 8 nhân 64 bit', 3, 32, '\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 3000),
(4, 'slide-iphoneX', 'LED-backlit IPS LCD, 4.7\", Retina HD', 'iOS 11', 1.3, 8, 'Apple A8 2 nhân 64-bit', 1, 32, '1 Nano SIM, Hỗ trợ 4G', 1810);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `fullName`, `phone`, `address`, `isAdmin`) VALUES
('admin@email.com', 'admin', NULL, NULL, NULL, 1),
('test@a.a', 'test', NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`proID`),
  ADD KEY `catID` (`catID`),
  ADD KEY `brandID` (`brandID`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`proID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catID`) REFERENCES `categories` (`catID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brandID`) REFERENCES `brands` (`brandID`);

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`proID`) REFERENCES `products` (`proID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
