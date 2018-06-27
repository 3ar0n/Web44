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
-- Cấu trúc bảng cho bảng `product_detail`
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
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`proID`, `slide`, `display`, `OS`, `frontCam`, `backCam`, `CPU`, `RAM`, `storage`, `SIM`, `battery`) VALUES
(0, 'slide-iphoneX', 'OLED, 5.8\", Super Retina', 'iOS 11', 7, 12, 'Apple A11 Bionic 6 nhân', 3, 256, '1 Nano SIM, Hỗ trợ 4G', 2716),
(1, 'slide-bphone-2', 'IPS LCD, 5.5\", Full HD', 'BOS (Android 7.1)', 8, 16, 'Snapdragon 625 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 3000),
(2, 'htc-u-play', 'Super LCD, 5.2\", Full HD', 'Android 6.0 (Marshmallow)', 16, 16, 'MTK Helio P10 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 2500),
(3, 'nokia-6', 'IPS LCD, 5.5\", Full HD', 'Android 7.0 (Nougat)', 8, 16, 'Qualcomm Snapdragon 430 8 nhân 64 bit', 3, 32, '\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', 3000),
(4, 'slide-iphoneX', 'LED-backlit IPS LCD, 4.7\", Retina HD', 'iOS 11', 1.3, 8, 'Apple A8 2 nhân 64-bit', 1, 32, '1 Nano SIM, Hỗ trợ 4G', 1810),
(5, 'ASUS Zenfone Max Plus M1', 'IPS LCD, 5.7\", Full HD+', 'Android 7.0 (Nougat)', 8, 16, 'MT6750T 8 nhân 64-bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 4130),
(6, 'Asus-Zenfone-4-Max-Pro-ZC554KL', 'IPS LCD, 5.5\", HD', 'Android 7.1 (Nougat)', 16, 16, 'Qualcomm Snapdragon 430 8 nhân 64 bit', 3, 32, '2 Nano SIM, Hỗ trợ 4G', 5000),
(7, 'BlackBerry-Dtek50', 'IPS LCD 5.2 inches', 'BlackBerry Android Os', 8, 13, 'Qualcomm MSM8952 Snapdragon 617', 3, 16, 'Nano-SIM', 2610),
(8, 'Google-Pixel-2', 'AMOLED capacitive touchscreen, 5.0 inches', 'Android 8.0 (Oreo)', 8, 12.2, 'Qualcomm MSM8998 Snapdragon 835', 4, 128, '1 Nano SIM, Hỗ trợ 4G', NULL),
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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`proID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`proID`) REFERENCES `products` (`proID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
