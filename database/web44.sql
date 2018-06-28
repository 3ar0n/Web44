-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 07:08 PM
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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cartID` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cartID`, `email`, `createDate`) VALUES
(0, 'test@a.a', '2018-06-16'),
(1, 'test@a.a', '2018-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `cartID` int(11) NOT NULL,
  `proID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`cartID`, `proID`) VALUES
(0, 1),
(0, 6),
(1, 0);

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
(0, 'Điện thoại'),
(1, 'Máy tính bảng');

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
  `addedDay` date DEFAULT NULL,
  `totalView` int(11) DEFAULT NULL,
  `totalBought` int(11) DEFAULT NULL,
  `inStorage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`proID`, `proName`, `brandID`, `catID`, `imgLink`, `price`, `shortInfo`, `addedDay`, `totalView`, `totalBought`, `inStorage`) VALUES
(0, 'iPhone X 256GB', 0, 0, 'Apple/iphone-x-256gb.png', 34790000, '...', '2018-06-10', 10, 5, 2),
(1, 'BPhone 2017', 16, 0, 'Other/bkav-bphone-2-hero.png', 9790000, '...', '2018-06-06', 50, 0, 3),
(2, 'HTC U Play', 5, 0, 'HTC/htc-u-play.png', 3790000, '...', '2018-06-01', 4, 1, 0),
(3, 'Nokia 6', 10, 0, 'Nokia/nokia-6.png', 4990000, '...', '2018-06-20', 16, 9, 1),
(4, 'iPhone 6 32GB', 0, 0, 'Apple/iphone-6-32gb.png', 7490000, '...', '2018-06-15', 2, 0, 10),
(5, 'ASUS Zenfone Max Plus M1', 1, 0, 'Asus/ASUS-Zenfone-Max-Plus-M1.png', 4490000, '...', '2018-06-27', 30, 15, 5),
(6, 'Asus Zenfone 4 Max Pro ZC554KL', 1, 0, 'Asus/Asus-Zenfone-4-Max-Pro-ZC554KL.png', 3990000, '...', '2018-06-28', 15, 10, 0),
(7, 'BlackBerry Dtek50', 2, 0, 'BlackBerry/BlackBerry-Dtek50.jpg', 6990000, '...', '2018-06-28', 21, 6, 10),
(8, 'Google Pixel 2', 3, 0, 'Google/Google-Pixel-2.png', 11890000, '...', '2018-06-28', 12, 4, 6),
(9, 'Hp Slate 6', 4, 1, 'HP/Hp-Slate-6.jpg', 3990000, '...', '2018-06-29', 40, 13, 5),
(10, 'HTC U Ultra', 5, 0, 'HTC/HTC-U-Ultra.png', 8990000, '...', '2018-06-29', 45, 13, 10),
(11, 'Huawei Nova 3e', 6, 0, 'Huawei/Huawei-Nova-3e.png', 6990000, '...', '2018-06-29', 60, 32, 1),
(12, 'Lenovo phab 2', 7, 1, 'Lenovo/lenovo-phab-2.png', 3990000, '...', '2018-06-30', 34, 12, 5),
(13, 'Motorola Moto Z2 Play', 9, 0, 'Motorola/Motorola-Moto-Z2-Play.png', 7990000, '...', '2018-06-30', 42, 19, 6),
(14, 'Motorola Moto X4', 9, 0, 'Motorola/Motorola-Moto-X4.png', 7490000, '...', '2018-06-30', 35, 12, 6),
(15, 'Nokia 7 plus', 10, 0, 'Nokia/Nokia-7-plus.png', 8990000, '...', '2018-06-25', 46, 22, 0),
(16, 'Huawei MediaPad T3 10', 6, 1, 'Huawei/Huawei-MediaPad-T3-10.png', 4490000, '...', '2018-06-29', 33, 12, 5),
(17, 'Vivo V5s', 14, 0, 'Vivo/Vivo-V5s.png', 5990000, '...', '2018-06-27', 36, 5, 5),
(18, 'iPhone 7 Plus 128GB', 0, 0, 'Apple/iPhone-7-Plus-128GB.png', 22990000, '...', '2018-06-27', 33, 12, 3),
(19, 'Motorola Moto G5S Plus', 9, 0, 'Motorola/Motorola-Moto-G5S-Plus.png', 6990000, '...', '2018-06-25', 25, 7, 3),
(20, 'Motorola Moto E4 Plus', 9, 0, 'Motorola/Motorola-Moto-E4-Plus.png', 3990000, '...', '2018-06-23', 26, 3, 7),
(21, 'Nokia 8', 10, 0, 'Nokia/Nokia-8.png', 12990000, '...', '2018-06-29', 42, 23, 2),
(22, 'Mobell Nova P3', 11, 0, 'Other/Mobell-Nova-P3.png', 2390000, '...', '2018-06-27', 29, 3, 7),
(23, 'Nokia 5', 10, 0, 'Nokia/Nokia-5.png', 3860000, '...', '2018-06-25', 36, 10, 5),
(24, 'OPPO F7', 11, 0, 'Oppo/OPPO-F7.png', 7990000, '...', '2018-06-24', 34, 18, 2),
(25, 'OPPO F5 6GB', 11, 0, 'Oppo/OPPO-F5-6GB.png', 7490000, '...', '2018-06-25', 36, 14, 1),
(26, 'OPPO F7 Youth', 11, 0, 'Oppo/OPPO-F7-Youth.png', 6490000, '...', '2018-06-26', 40, 22, 3),
(27, 'Samsung Galaxy S9', 12, 0, 'Samsung/Samsung-Galaxy-S9.png', 19990000, '...', '2018-06-27', 44, 25, 0),
(28, 'Samsung Galaxy C9 Pro', 12, 0, 'Samsung/Samsung-Galaxy-C9-Pro.png', 8990000, '...', '2018-06-27', 50, 10, 5),
(29, 'Samsung Galaxy J7 Pro', 12, 0, 'Samsung/Samsung-Galaxy-J7-Pro.png', 6909000, '...', '2018-06-27', 42, 22, 3),
(30, 'Samsung Galaxy J7 Prime', 12, 0, 'Samsung/Samsung-Galaxy-J7-Prime.png', 4990000, '...', '2018-06-27', 43, 20, 5),
(31, 'iPad Pro 10.5 inch Wifi Cellular 64GB', 0, 1, 'Apple/iPad-Pro-10.5-inch-Wifi-Cellular-64GB.png', 19990000, '...', '2018-06-28', 33, 12, 3),
(32, 'Mobiistar E Selfie', 16, 0, 'Other/Mobiistar-E-Selfie.png', 2990000, '...', '2018-06-27', 20, 2, 3),
(33, 'Itel P51', 16, 0, 'Other/Itel-P51.png', 2090000, '...', '2018-06-27', 12, 2, 3),
(34, 'Samsung Galaxy Tab A 8', 16, 1, 'Samsung/Samsung-Galaxy-Tab-A-8.png', 5490000, '...', '2018-06-27', 29, 8, 2),
(35, 'iPad Air 2 Cellular 128GB', 0, 1, 'Apple/iPad-Air-2-Cellular-128GB.png', 15490000, '...', '2018-06-26', 32, 4, 11),
(36, 'Sony Xperia XZ2', 13, 0, 'Sony/Sony-Xperia-XZ2.png', 19990000, '...', '2018-06-27', 36, 6, 4),
(37, 'Vivo V9', 14, 0, 'Vivo/Vivo-V9.png', 7990000, '...', '2018-06-27', 33, 10, 5),
(38, 'Xiaomi Redmi Note 5', 15, 0, 'Xiaomi/Xiaomi-Redmi-Note-5.png', 5690000, '...', '2018-06-27', 38, 9, 6),
(39, 'Mobiistar Zumbo S2 Dual', 16, 0, 'Other/Mobiistar-Zumbo-S2-Dual.png', 3290000, '...', '2018-06-27', 29, 18, 7),
(40, 'iPhone 8 64GB', 0, 0, 'Apple/iPhone-8-64GB.png', 20990000, '...', '2018-06-27', 32, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `proID` int(11) NOT NULL,
  `slide` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frontCam` float DEFAULT NULL,
  `rearCam` float DEFAULT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `storage` int(11) DEFAULT NULL,
  `sim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battery` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`proID`, `slide`, `display`, `os`, `frontCam`, `rearCam`, `cpu`, `ram`, `storage`, `sim`, `battery`) VALUES
(0, 'slide-iphoneX', 'OLED, 5.8\", Super Retina', 'iOS 11', 7, 12, 'Apple A11 Bionic 6 nhân', 3, 256, '1 Nano SIM, Hỗ trợ 4G', 2716),
(1, 'slide-bphone-2', 'IPS LCD, 5.5\", Full HD', 'BOS (Android 7.1)', 8, 16, 'Snapdragon 625 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 3000),
(2, 'htc-u-play', 'Super LCD, 5.2\", Full HD', 'Android 6.0 (Marshmallow)', 16, 16, 'MTK Helio P10 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 2500),
(3, 'nokia-6', 'IPS LCD, 5.5\", Full HD', 'Android 7.0 (Nougat)', 8, 16, 'Qualcomm Snapdragon 430 8 nhân 64 bit', 3, 32, '\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 3000),
(4, 'slide-iphoneX', 'LED-backlit IPS LCD, 4.7\", Retina HD', 'iOS 11', 1.3, 8, 'Apple A8 2 nhân 64-bit', 1, 32, '1 Nano SIM, Hỗ trợ 4G', 1810),
(5, 'ASUS Zenfone Max Plus M1', 'IPS LCD, 5.7\", Full HD+', 'Android 7.0 (Nougat)', 8, 16, 'MT6750T 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 4130),
(6, 'Asus-Zenfone-4-Max-Pro-ZC554KL', 'IPS LCD, 5.5\", HD', 'Android 7.1 (Nougat)', 16, 16, 'Qualcomm Snapdragon 430 8 nhân 64 bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 5000),
(7, 'BlackBerry-Dtek50', 'IPS LCD 5.2 inches', 'BlackBerry Android Os', 8, 13, 'Qualcomm MSM8952 Snapdragon 617', 3, 16, 'Nano-SIM', 2610),
(8, 'Google-Pixel-2', 'AMOLED capacitive touchscreen, 5.0 inches', 'Android 8.0 (Oreo)', 8, 12.2, 'Qualcomm MSM8998 Snapdragon 835', 4, 128, '1 Nano SIM, Hỗ trợ 4G', 2700),
(9, 'Hp-Slate-6', 'HD, 6 Inches, 1280 x 720 Pixels', 'Android', 2, 5, 'Marvell PXA1088 , 4 nhân, 1.2 GHz', 1, 16, 'không', 1560),
(10, 'HTC-U-Ultra', 'Super LCD, Chính: 5.7\", phụ: 2.05\", Quad HD (2K)', 'Android 7.0 (Nougat)', 12, 16, 'Qualcomm Snapdragon 821 4 nhân 64-bit', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3000),
(11, 'Huawei-Nova-3e', 'IPS LCD, 5.84\", Full HD+', 'Android 8.0 (Oreo)', 16, 16, 'HiSilicon Kirin 659 8 nhân', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3000),
(12, 'lenovo-phab-2', 'IPS LCD, 6.4\"', 'Android 6.0 (Marshmallow)', 5, 13, 'MediaTek MT 8735 4 nhân, 1.3 GHz', 3, 32, 'Micro sim', 4050),
(13, 'Motorola-Moto-Z2-Play', 'Super AMOLED, 5.5\", Full HD', 'Android 7.1 (Nougat)', 5, 12, 'Snapdragon 626 8 nhân 64-bit', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3000),
(14, 'Motorola-Moto-X4', 'IPS LCD, 5.2\", Full HD', 'Android 7.1 (Nougat)', 16, 12, 'Qualcomm Snapdragon 630 8 nhân', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3000),
(15, 'Nokia-7-plus', 'IPS LCD, 6\", Full HD+', 'Android 8.0 (Oreo)', 16, 13, 'Qualcomm Snapdragon 660 8 nhân', 4, 64, '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 3800),
(16, 'Huawei-MediaPad-T3-10', 'PLS LCD, 10\"', 'Android 7.0', 2, 5, 'Qualcomm MSM8917, 1.4 GHz', 2, 16, 'Nano Sim', 4800),
(17, 'Vivo-V5s', 'IPS LCD, 5.5\", HD', 'Funtouch OS 3.0 (nền tảng Android 6.0)', 20, 13, 'Mediatek MT6750 8 nhân', 4, 64, 'Nano SIM & Micro SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 3000),
(18, 'iPhone-7-Plus-128GB', 'LED-backlit IPS LCD, 5.5\", Retina HD', 'iOS 11', 7, 12, 'Apple A10 Fusion 4 nhân 64-bit', 3, 128, '1 Nano SIM, Hỗ trợ 4G', 2900),
(19, 'Motorola-Moto-G5S-Plus', 'IPS LCD, 5.5\", Full HD', 'Android 7.1 (Nougat)', 8, 13, 'Snapdragon 625 8 nhân 64-bit', 4, 32, '2 Nano SIM, Hỗ trợ 4G', 3000),
(20, 'Motorola-Moto-E4-Plus', 'IPS LCD, 5.5\", HD', 'Android 7.1 (Nougat)', 5, 13, 'MT6737 4 nhân', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 5000),
(21, 'Nokia-8', 'IPS LCD, 5.3\", Quad HD (2K)', 'Android 7.1 (Nougat)', 13, 13, 'Qualcomm Snapdragon 835 8 nhân 64-bit', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3090),
(22, 'Mobell-Nova-P3', 'IPS LCD, 5.5\", HD', 'Android 7.0 (Nougat)', 8, 8, 'MT6580 4 nhân 32-bit', 2, 16, '2 Micro SIM', 3250),
(23, 'Nokia-5', 'IPS LCD, 5.2\", HD', 'Android 7.1 (Nougat)', 8, 13, 'Qualcomm Snapdragon 430 8 nhân 64 bit', 2, 16, '2 Nano SIM, Hỗ trợ 4G', 3000),
(24, 'OPPO-F7', 'LTPS LCD, 6.23\", Full HD+', 'ColorOS 5.0 (Android 8.1)', 16, 25, 'MediaTek Helio P60 8 nhân 64-bit', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3400),
(25, 'OPPO-F5-6GB', 'IPS LCD, 6.0\", Full HD+', 'ColorOS 3.2 (Android 7.1)', 20, 16, 'Mediatek Helio P23 8 nhân 64-bit', 6, 64, '2 Nano SIM, Hỗ trợ 4G', 3200),
(26, 'OPPO-F7-Youth', 'LTPS LCD, 6.0\", Full HD+', 'ColorOS 5.0 (Android 8.1)', 8, 13, 'MediaTek Helio P60 8 nhân 64-bit', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3410),
(27, 'Samsung-Galaxy-S9', 'Super AMOLED, 5.8\", Quad HD+ (2K+)', 'Android 8.0 (Oreo)', 8, 12, 'Exynos 9810 8 nhân 64 bit', 4, 64, '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 3000),
(28, 'Samsung-Galaxy-C9-Pro', 'Super AMOLED, 6.0\", Full HD', 'Android 6.0 (Marshmallow)', 16, 16, 'Snapdragon 653 8 nhân 64-bit', 6, 64, '2 Nano SIM, Hỗ trợ 4G', 4000),
(29, 'Samsung-Galaxy-J7-Pro', 'Super AMOLED, 5.5\", Full HD', 'Android 7.0 (Nougat)', 13, 13, 'Exynos 7870 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 3600),
(30, 'Samsung-Galaxy-J7-Prime', 'PLS TFT LCD, 5.5\", Full HD', 'Android 6.0 (Marshmallow)', 8, 13, 'Exynos 7870 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 3300),
(31, 'iPad-Pro-10.5-inch-Wifi-Cellular-64GB', 'IPS LCD, 10.5\"', 'iOS 11', 7, 12, 'Apple A10X 6 nhân 64-bit', 4, 64, 'Nano Sim', NULL),
(32, 'Mobiistar-E-Selfie', 'IPS LCD, 6.0\", HD+', 'Android 7.0 (Nougat)', 13, 13, 'MediaTek MT6739 4 nhân 64-bit', 2, 16, 'Nano SIM & Micro SIM (SIM 2 chung khe thẻ nhớ)', 3900),
(33, 'Itel-P51', 'IPS LCD, 5.5\", HD', 'Android 7.0 (Nougat)', 2, 8, 'MT6580 4 nhân 32-bit', 1, 16, '2 Micro SIM', 5000),
(34, 'Samsung-Galaxy-Tab-A-8', 'PLS TFT, 8\"', 'Android 7.0', 5, 8, 'Qualcomm MSM8917, 1.4 GHz', 2, 16, 'Nano Sim', 5000),
(35, 'iPad-Air-2-Cellular-128GB', 'Retina công nghệ IPS, 9.7\"', 'iOS 11', 1.2, 8, 'Apple A8X 3 nhân 64-bit, 1.5 GHz', 2, 128, 'Nano Sim', 7300),
(36, 'Sony-Xperia-XZ2', 'IPS HDR LCD, 5.7\", Full HD+', 'Android 8.0 (Oreo)', 5, 19, 'Snapdragon 845 8 nhân', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3180),
(37, 'Vivo-V9', 'IPS LCD, 6.3\", Full HD+', 'Android 8.1 (Oreo)', 24, 16, 'Snapdragon 626 8 nhân 64-bit', 4, 64, '2 Nano SIM, Hỗ trợ 4G', 3260),
(38, 'Xiaomi-Redmi-Note-5', 'IPS LCD, 5.99\", Full HD+', 'Android 8.1 (Oreo)', 13, 12, 'Qualcomm Snapdragon 636 8 nhân', 4, 64, '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 4000),
(39, 'Mobiistar-Zumbo-S2-Dual', 'IPS LCD, 5.5\", Full HD', 'Android 7.0 (Nougat)', 13, 13, 'MT6737T, 4 nhân', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 3000),
(40, 'iPhone-8-64GB', 'LED-backlit IPS LCD, 4.7\", Retina HD', 'iOS 11', 7, 12, 'Apple A11 Bionic 6 nhân', 2, 64, '1 Nano SIM, Hỗ trợ 4G', 1821);

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
('admin@fit.vn', 'admin@123', NULL, NULL, NULL, 1),
('test@a.a', 'test', 'tester', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD UNIQUE KEY `cartID` (`cartID`,`proID`),
  ADD KEY `proID` (`proID`);

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
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Constraints for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `cart_detail_ibfk_1` FOREIGN KEY (`cartID`) REFERENCES `carts` (`cartID`),
  ADD CONSTRAINT `cart_detail_ibfk_2` FOREIGN KEY (`proID`) REFERENCES `products` (`proID`);

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
