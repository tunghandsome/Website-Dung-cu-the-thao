-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 17, 2019 lúc 04:13 AM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mvcphu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsum'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Viettel'),
(13, 'OEM'),
(14, 'TP-Link');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'MÃ¡y tÃ­nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Laptop'),
(4, 'Desktop'),
(5, 'Mobile Phones'),
(6, 'Accessories'),
(7, 'Software'),
(15, 'Test'),
(16, 'Äá»“ng Há»“ ThÃ´ng Minh'),
(17, 'Thiáº¿t bá»‹ máº¡ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Ng.Anh tu', '113 Láº¡c Long QuÃ¢n HCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Sin', '149 LÃ½ ThÃ¡i Tá»•', 'TPHCM', 'hcm', '700000', '0522525294', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
(57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
(58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
(59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(6, 'MÃ¡y tÃ­nh Dell A503', 'MH1122', '50', '0', '50', 3, 10, '<p>M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503M&aacute;y t&iacute;nh Dell A503</p>', 1, '10000000', 'dbb417a309.jpg'),
(7, 'Äiá»‡n thoáº¡i samsung S10+', 'MH1123', '60', '0', '60', 5, 6, '<p>Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+Äiá»‡n thoáº¡i samsung S10+</p>', 0, '12000000', 'f71a0935f3.jpg'),
(8, 'Äiá»‡n Thoáº¡i Huawei Pro', 'MH1124', '70', '0', '70', 5, 8, '<p>Äiá»‡n Thoáº¡i Huawei ProÄiá»‡n Thoáº¡i Huawei ProÄiá»‡n Thoáº¡i Huawei ProÄiá»‡n Thoáº¡i Huawei Pro</p>', 0, '5000000', '03ae5f8327.jpg'),
(9, 'IPad Xsmax', 'MH1125', '100', '0', '100', 3, 7, '<p>IPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad XsmaxIPad Xsmax</p>', 0, '8000000', '7418d9b02e.jpg'),
(13, 'Äá»“ng Há»“ ThÃ´ng Minh Theo DÃµi Váº­n Äá»™ng Theo DÃµi Sá»©c Khá»e Garmin Forerunner', 'MH1126', '30', '0', '30', 16, 13, '<p>Chá»‘ng nÆ°á»›c 5ATM</p>\r\n<p>Pin sáº¡c Lithium-ion</p>\r\n<p>Cá»•ng káº¿t ná»‘i: Bluetooth Smart vaÌ€ ANT+</p>\r\n<p>Bá»™ nhá»›: 200 giá» dá»¯ liá»‡u hoáº¡t Ä‘á»™ng</p>\r\n<p>M&agrave;n h&igrave;nh: 215 x 180 pixel</p>', 1, '4690000', '25ebd2d0ff.jpg'),
(15, 'Pháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 ThÃ¡ng', 'MH1127', '20', '0', '20', 7, 9, '<p>Pháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ngPháº§n Má»m Diá»‡t Virus BKAV Profressional 1 PC 12 Th&aacute;ng</p>', 0, '195000', '4167b1a4c5.jpg'),
(16, 'TP - Link TL- WN725N - USB Wifi Nano Chuáº©n N Tá»‘c Äá»™ 150Mbps', 'MH1128', '90', '0', '90', 17, 14, '<p>Thiáº¿t káº¿ thu nhá» cá»±c gá»n, cá»±c xinh</p>\r\n<p>Tá»‘c Ä‘á»™ kh&ocirc;ng d&acirc;y 150Mbps</p>\r\n<p>M&atilde; h&oacute;a WPA/WPA2 - Báº£o máº­t n&acirc;ng cao</p>\r\n<p>ÄÄ©a CD Ä‘i k&egrave;m cho Hoáº¡t Ä‘á»™ng dá»… d&agrave;ng</p>\r\n<p>Bao b&igrave; sáº£n pháº©m c&oacute; thá»ƒ thay Ä‘á»•i theo tá»«ng Ä‘á»£t h&agrave;ng nháº­p</p>', 0, '125000', '6c53b185b0.jpg'),
(17, 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', 'MH1129', '100', '0', '100', 7, 6, '<p>2.5 inch - H&agrave;ng Nháº­p Kháº©u</p>', 0, '1099000', '785e8d373d.jpg'),
(18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 'MH1130', '120', '0', '120', 3, 10, '<p>Chip: Intel Core i7-8750H (2.2GHz up to 4.1GHz, 9MB)</p>\r\n<p>RAM: 8GB DDR4 2400MHz</p>\r\n<p>á»” cá»©ng: HDD 1TB 5400rpm + 128GB SSD M.2</p>\r\n<p>Chipset Ä‘á»“ há»a: NVIDIA GeForce GTX 1050Ti 4GB GDDR5</p>\r\n<p>M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080) IPS, Anti-Glare, LED Backlit Display</p>\r\n<p>Há»‡ Ä‘iá»u h&agrave;nh: Windows 10 Home</p>\r\n<p>Pin: 4 Cell 56 Whrs</p>', 0, '2589900', '32942e9470.jpg'),
(19, 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', 'MH1140', '65', '0', '65', 16, 7, '<p>K&iacute;ch thÆ°á»›c m&agrave;n h&igrave;nh c&oacute; 2 loáº¡i: 40mm v&agrave; 44mm</p>\r\n<p>Chuáº©n kh&aacute;ng nÆ°á»›c ISO 22810:2010</p>\r\n<p>Káº¿t ná»‘i: Wi-Fi (802.11b / g / n 2,4 GHz), bluetooth 5.0</p>\r\n<p>TÆ°Æ¡ng th&iacute;ch: iPhone</p>\r\n<p>Chá»©c nÄƒng: CaÌ‰m bi&ecirc;Ìn nhiÌ£p tim, chÆ°Ìc nÄƒng Ä‘o Ä‘i&ecirc;Ì£n t&acirc;m Ä‘&ocirc;Ì€ (EKG)</p>\r\n<p>T&iacute;ch há»£p GPS, GLONASS, Galileo v&agrave; QZSS</p>\r\n<p>Gia tá»‘c Ä‘Æ°á»£c cáº£i thiá»‡n l&ecirc;n tá»›i 32 gâ€‘forces</p>\r\n<p>Th&ocirc;ng b&aacute;o cuá»™c gá»i, tin nháº¯n</p>\r\n<p>C&oacute; thá»ƒ nghe nháº¡c, xem báº£n Ä‘á»“</p>\r\n<p>Thá»i gian sá»­ dá»¥ng l&ecirc;n Ä‘áº¿n 18 giá»</p>\r\n<p>Pin lithium-ion sáº¡c láº¡i Ä‘Æ°á»£c t&iacute;ch há»£p sáºµn</p>', 0, '9700000', '6d72eb58ae.jpg'),
(20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 'MH1150', '70', '10', '65', 17, 8, '<p>T&ocirc;Ìc Ä‘&ocirc;Ì£ maÌ£ng 4G/LTE FDD link Speed: Downstream: 100Mbps Upstream: 50Mbps</p>\r\n<p>Nhi&ecirc;Ì€u maÌy truy c&acirc;Ì£p vaÌ€ sÆ°Ì‰ duÌ£ng cuÌ€ng m&ocirc;Ì£t thÆ¡Ì€i gian, Ä‘iÌ£a Ä‘i&ecirc;Ì‰m</p>\r\n<p>ThiÌch hÆ¡Ì£p vÆ¡Ìi caÌc loaÌ£i sim 3G, 4G tr&ecirc;n thiÌ£ trÆ°Æ¡Ì€ng hi&ecirc;Ì£n nay</p>\r\n<p>Thi&ecirc;Ìt k&ecirc;Ì sang troÌ£ng, goÌ£n nheÌ£, ti&ecirc;Ì£n lÆ¡Ì£i cho ngÆ°Æ¡Ì€i duÌ€ng</p>', 0, '1240000', '49b106217c.jpg'),
(21, 'Apple New For Mysql Server', 'MH1115', '48', '0', '61', 17, 14, '<p>Apple New For Mysql Server</p>', 0, '50000', 'ad351ef94f.png'),
(22, 'Apple New For Mysql Server', 'MH1111', '95', '19', '76', 17, 14, '<p>Apple New For Mysql Server</p>', 0, '60000', '643929ce40.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 0),
(6, 'slider2', 'ff79579ac7.png', 0),
(7, 'slider3', 'a94222690e.png', 0),
(8, 'slider4', '5b2e64d6ab.jpg', 1),
(9, 'slider5', 'f50b2e4171.png', 1),
(11, 'slider6', '72a159f760.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
