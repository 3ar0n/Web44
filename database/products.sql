-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 27, 2018 lúc 05:27 PM
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
(0, 'iPhone X - 256GB', 0, 1, 'Apple/iphone-x-256gb.png', 34790000, '...', NULL, '2018-06-10', 10, 5, 2),
(1, 'BPhone 2017', 16, 1, 'Other/bkav-bphone-2-hero.png', 9790000, '...', NULL, '2018-06-06', 50, 0, 3),
(2, 'HTC U Play', 5, 1, 'HTC/htc-u-play.png', 3790000, '...', NULL, '2018-06-01', 4, 1, 0),
(3, 'Nokia 6', 10, 1, 'Nokia/nokia-6.png', 4990000, '...', NULL, '2018-06-20', 16, 9, 1),
(4, 'iPhone 6 32GB', 0, 1, 'Apple/iphone-6-32gb.png', 7490000, '...', NULL, '2018-06-15', 2, 0, 10),
(5, 'ASUS Zenfone Max Plus M1', 1, 1, 'Asus/ASUS-Zenfone-Max-Plus-M1.png', 4490000, '...', NULL, '2018-06-27', 30, 15, 5),
(6, 'Asus Zenfone 4 Max Pro ZC554KL', 1, 1, 'Asus/Asus-Zenfone-4-Max-Pro-ZC554KL.png', 3990000, '...', NULL, '2018-06-28', 15, 10, 0),
(7, 'BlackBerry Dtek50', 2, 1, 'BlackBerry/BlackBerry-Dtek50.jpg', 6990000, '...', NULL, '2018-06-28', 21, 6, 10),
(8, 'Google Pixel 2', 3, 1, 'Google/Google-Pixel-2.png', 11890000, '...', NULL, '2018-06-28', 12, 4, 6),
(9, 'Hp Slate 6', 4, 2, 'HP/Hp-Slate-6.jpg', 3990000, '...', NULL, '2018-06-29', 40, 13, 5),
(10, 'HTC U Ultra', 5, 1, 'HTC/HTC-U-Ultra.png', 8990000, '...', NULL, '2018-06-29', 45, 13, 10),
(11, 'Huawei Nova 3e', 6, 1, 'Huawei/Huawei-Nova-3e.png', 6990000, '...', NULL, '2018-06-29', 60, 32, 1),
(12, 'lenovo phab 2', 7, 2, 'Lenovo/lenovo-phab-2.png', 3990000, '...', NULL, '2018-06-30', 34, 12, 5),
(13, 'Motorola Moto Z2 Play', 9, 1, 'Motorola/Motorola-Moto-Z2-Play.png', 7990000, '...', NULL, '2018-06-30', 42, 19, 6),
(14, 'Motorola Moto X4', 9, 1, 'Motorola/Motorola-Moto-X4.png', 7490000, '...', NULL, '2018-06-30', 35, 12, 6),
(15, 'Nokia 7 plus', 10, 1, 'Nokia/Nokia-7-plus.png', 8990000, '...', NULL, '2018-06-25', 46, 22, 0),
(16, 'Huawei MediaPad T3 10', 6, 2, 'Huawei/Huawei-MediaPad-T3-10.png', 4490000, '...', NULL, '2018-06-29', 33, 12, 5),
(17, 'Vivo V5s', 14, 1, 'Vivo/Vivo-V5s.png', 5990000, '...', NULL, '2018-06-27', 36, 5, 5),
(18, 'iPhone 7 Plus 128GB', 0, 1, 'Apple/iPhone-7-Plus-128GB.png', 22990000, '...', NULL, '2018-06-27', 33, 12, 3),
(19, 'Motorola Moto G5S Plus', 9, 1, 'Motorola/Motorola-Moto-G5S-Plus.png', 6990000, '...', NULL, '2018-06-25', 25, 7, 3),
(20, 'Motorola Moto E4 Plus', 9, 1, 'Motorola/Motorola-Moto-E4-Plus.png', 3990000, '...', NULL, '2018-06-23', 26, 3, 7),
(21, 'Nokia 8', 10, 1, 'Nokia/Nokia-8.png', 12990000, '...', NULL, '2018-06-29', 42, 23, 2),
(22, 'Mobell Nova P3', 11, 1, 'Other/Mobell-Nova-P3.png', 2390000, '...', NULL, '2018-06-27', 29, 3, 7),
(23, 'Nokia 5', 10, 1, 'Nokia/Nokia-5.png', 3860000, '...', NULL, '2018-06-25', 36, 10, 5),
(24, 'OPPO F7', 11, 1, 'Oppo/OPPO-F7.png', 7990000, '...', NULL, '2018-06-24', 34, 18, 2),
(25, 'OPPO F5 6GB', 11, 1, 'Oppo/OPPO-F5-6GB.png', 7490000, '...', NULL, '2018-06-25', 36, 14, 1),
(26, 'OPPO F7 Youth', 11, 1, 'Oppo/OPPO-F7-Youth.png', 6490000, '...', NULL, '2018-06-26', 40, 22, 3),
(27, 'Samsung Galaxy S9', 12, 1, 'Samsung/Samsung-Galaxy-S9.png', 19990000, '...', NULL, '2018-06-27', 44, 25, 0),
(28, 'Samsung Galaxy C9 Pro', 12, 1, 'Samsung/Samsung-Galaxy-C9-Pro.png', 8990000, '...', NULL, '2018-06-27', 50, 10, 5),
(29, 'Samsung Galaxy J7 Pro', 12, 1, 'Samsung/Samsung-Galaxy-J7-Pro.png', 6909000, '...', NULL, '2018-06-27', 42, 22, 3),
(30, 'Samsung Galaxy J7 Prime', 12, 1, 'Samsung/Samsung-Galaxy-J7-Prime.png', 4990000, '...', NULL, '2018-06-27', 43, 20, 5),
(31, 'iPad Pro 10.5 inch Wifi Cellular 64GB', 0, 2, 'Apple/iPad-Pro-10.5-inch-Wifi-Cellular-64GB.png', 19990000, '...', NULL, '2018-06-28', 33, 12, 3),
(32, 'Mobiistar E Selfie', 16, 1, 'Other/Mobiistar-E-Selfie.png', 2990000, '...', NULL, '2018-06-27', 20, 2, 3),
(33, 'Itel P51', 16, 1, 'Other/Itel-P51.png', 2090000, '...', NULL, '2018-06-27', 12, 2, 3),
(34, 'Samsung Galaxy Tab A 8', 16, 2, 'Samsung/Samsung-Galaxy-Tab-A-8.png', 5490000, '...', NULL, '2018-06-27', 29, 8, 2),
(35, 'iPad Air 2 Cellular 128GB', 0, 2, 'Apple/iPad-Air-2-Cellular-128GB.png', 15490000, '...', NULL, '2018-06-26', 32, 4, 11),
(36, 'Sony Xperia XZ2', 13, 1, 'Sony/Sony-Xperia-XZ2.png', 19990000, '...', NULL, '2018-06-27', 36, 6, 4),
(37, 'Vivo V9', 14, 1, 'Vivo/Vivo-V9.png', 7990000, '...', NULL, '2018-06-27', 33, 10, 5),
(38, 'Xiaomi Redmi Note 5', 15, 1, 'Xiaomi/Xiaomi-Redmi-Note-5.png', 5690000, '...', NULL, '2018-06-27', 38, 9, 6),
(39, 'Mobiistar Zumbo S2 Dual', 16, 1, 'Other/Mobiistar-Zumbo-S2-Dual.png', 3290000, '...', NULL, '2018-06-27', 29, 18, 7),
(40, 'iPhone 8 64GB', 0, 1, 'Apple/iPhone-8-64GB.png', 20990000, '...', NULL, '2018-06-27', 32, 12, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`proID`),
  ADD KEY `catID` (`catID`),
  ADD KEY `brandID` (`brandID`);

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
