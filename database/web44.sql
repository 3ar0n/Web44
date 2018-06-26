-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2018 lúc 01:19 PM
-- Phiên bản máy phục vụ: 10.1.33-MariaDB
-- Phiên bản PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web44`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brandID` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
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
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `catID` int(11) NOT NULL,
  `catName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'Điện thoại'),
(2, 'Máy tính bảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productinformation`
--

CREATE TABLE `productinformation` (
  `proID` int(11) NOT NULL,
  `anhSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slide` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ManHinh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `HDH` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cameraTruoc` int(11) DEFAULT NULL,
  `CameraSau` int(11) DEFAULT NULL,
  `CPU` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `RAM` int(11) DEFAULT NULL,
  `BoNhoTrong` int(11) DEFAULT NULL,
  `SIM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Pin` int(11) DEFAULT NULL,
  `TenSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brandID` int(11) NOT NULL,
  `Gia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `productinformation`
--

INSERT INTO `productinformation` (`proID`, `anhSP`, `slide`, `ManHinh`, `HDH`, `cameraTruoc`, `CameraSau`, `CPU`, `RAM`, `BoNhoTrong`, `SIM`, `Pin`, `TenSP`, `brandID`, `Gia`) VALUES
(0, 'iphone-x-256gb.png', 'slide-iphoneX', 'OLED, 5.8\", Super Retina', 'iOS 11', 7, 12, 'Apple A11 Bionic 6 nhân', 3, 256, '1 Nano SIM, Hỗ trợ 4G', 2716, 'iPhone X - 256GB', 0, 34790000),
(1, 'bkav-bphone-2-hero.png', 'slide-bphone-2', 'IPS LCD, 5.5\", Full HD', 'BOS (Android 7.1)', 8, 16, 'Snapdragon 625 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 3000, 'BPhone 2017', 16, 9790000),
(2, 'htc-u-play.png', 'htc-u-play', 'Super LCD, 5.2\", Full HD', 'Android 6.0 (Marshmallow)', 16, 16, 'MTK Helio P10 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 2500, 'HTC U Play', 5, 3790000),
(3, 'nokia-6.png', 'nokia-6', 'IPS LCD, 5.5\", Full HD', 'Android 7.0 (Nougat)', 8, 16, 'Qualcomm Snapdragon 430 8 nhân 64 bit', 3, 32, '\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 3000, 'Nokia 6', 10, 4990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`proID`, `proName`, `brandID`, `catID`, `imgLink`, `price`, `shortInfo`, `fullInfo`, `addedDay`, `totalView`, `totalBought`, `inStorage`) VALUES
(0, 'iPhone X - 256GB', 0, 1, 'iphone-x-256gb.png', 34790000, '...', NULL, '2018-06-10', 10, 5, 2),
(1, 'BPhone 2017', 16, 1, 'bkav-bphone-2-hero.png', 9790000, '...', NULL, '2018-06-06', 50, 0, 3),
(2, 'HTC U Play', 5, 1, 'htc-u-play.png', 3790000, '...', NULL, '2018-06-01', 4, 1, 0),
(3, 'Nokia 6', 10, 1, 'nokia-6.png', 4990000, '...', NULL, '2018-06-20', 16, 9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandID`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Chỉ mục cho bảng `productinformation`
--
ALTER TABLE `productinformation`
  ADD PRIMARY KEY (`proID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`proID`),
  ADD KEY `catID` (`catID`),
  ADD KEY `brandID` (`brandID`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catID`) REFERENCES `categories` (`catID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brandID`) REFERENCES `brands` (`brandID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
