-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 13, 2020 at 04:03 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tqsport`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'admin1', 'admin1@gmail.com', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(9, 'Khac'),
(10, 'Trung Quoc'),
(14, 'VietNam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(47, 33, 'njn4f263o4fgljfrd8397b9vuk', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(50, 24, 'njn4f263o4fgljfrd8397b9vuk', 'Giày thể thao nam', '1250000', 1, '26bbd16519.jpg'),
(51, 24, 'njn4f263o4fgljfrd8397b9vuk', 'Giày thể thao nam', '1250000', 1, '26bbd16519.jpg'),
(52, 24, 'njn4f263o4fgljfrd8397b9vuk', 'Giày thể thao nam', '1250000', 1, '26bbd16519.jpg'),
(53, 33, 'g1pr67st459eg99jrmc0t92bpr', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(54, 33, 'nitrbnl35da8fhkhsurbt546qk', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(55, 32, 'nitrbnl35da8fhkhsurbt546qk', 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', '1200000', 1, '8bd5d2a138.jpg'),
(56, 32, 'nitrbnl35da8fhkhsurbt546qk', 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', '1200000', 1, '8bd5d2a138.jpg'),
(57, 32, 'nitrbnl35da8fhkhsurbt546qk', 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', '1200000', 1, '8bd5d2a138.jpg'),
(58, 32, 'nitrbnl35da8fhkhsurbt546qk', 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', '1200000', 1, '8bd5d2a138.jpg'),
(59, 33, 'g1agk0j107gpcm69vocrqu19n4', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(60, 33, 'g1agk0j107gpcm69vocrqu19n4', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(61, 33, 'g1agk0j107gpcm69vocrqu19n4', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(62, 33, 'g1agk0j107gpcm69vocrqu19n4', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(63, 33, '2130fijes9jbs6rjibrb4q7ap0', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(64, 33, '2130fijes9jbs6rjibrb4q7ap0', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(71, 33, 'bh5jd5nd8lf2stkdjjf6aa09j6', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(73, 33, 'lvarjf17nge4p2ad52shmi6s67', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg'),
(74, 32, 'lvarjf17nge4p2ad52shmi6s67', 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', '1200000', 1, '8bd5d2a138.jpg'),
(75, 32, 'lvarjf17nge4p2ad52shmi6s67', 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', '1200000', 1, '8bd5d2a138.jpg'),
(76, 33, '120vshg8qdj7bangh2aqji7gla', 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', 1, '3ac8efcfe9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(18, 'Thể Thao Nam'),
(19, 'Thể Thao Nữ'),
(20, 'Bóng Rổ'),
(21, 'Bóng Đá');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

DROP TABLE IF EXISTS `tbl_compare`;
CREATE TABLE IF NOT EXISTS `tbl_compare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(1, 7, 33, 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', '3ac8efcfe9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(6, 'tung nguyen', '50 nguyen thi thap', 'abc', 'hcm', '70000', '0368321505', 'tungatt12345@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'tunghansome', '50 nguyen thi thap', 'abc', 'hcm', '70000', '0368321505', 'tungvip0123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(60, 33, 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', 6, 1, '30000000', '3ac8efcfe9.jpg', 0, '2020-12-10 11:47:49'),
(61, 32, 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', 6, 1, '1200000', '8bd5d2a138.jpg', 0, '2020-12-10 11:52:05'),
(62, 24, 'Giày thể thao nam', 6, 1, '1250000', '26bbd16519.jpg', 0, '2020-12-10 11:56:28'),
(63, 32, 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', 6, 1, '1200000', '8bd5d2a138.jpg', 0, '2020-12-10 11:58:26'),
(64, 24, 'Giày thể thao nam', 6, 1, '1250000', '26bbd16519.jpg', 0, '2020-12-10 12:01:32'),
(65, 33, 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', 6, 1, '30000000', '3ac8efcfe9.jpg', 0, '2020-12-10 12:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(23, 'Dụng cụ tập thể dục thể thao đa năng khung thép - DDT', '', '50', '0', '50', 18, 14, '<p><span>Khung Th&eacute;p được l&agrave;m từ chất liệu tốt với độ bền cao, hỗ trợ người d&ugrave;ng thực hiện đa dạng c&aacute;c b&agrave;i tập lưng, ngực, bụng, ch&acirc;n, đ&ugrave; cực k&igrave; hiệu quả v&agrave; tiện lợi.</span><br /><span>Sản phẩm c&oacute; thiết kế chắc chắn, nhỏ gọn, dễ d&agrave;ng di chuyển, ph&ugrave; hợp với mọi kh&ocirc;ng gian trong gia đ&igrave;nh.</span><br /><span>Ghế gập bụng c&oacute; thể điều chỉnh độ cao - thấp để tạo t&aacute;c dụng tập trung l&ecirc;n v&ugrave;ng cơ tr&ecirc;n v&agrave; cơ dưới của bụng.</span><br /><span>Sản phẩm gọn nhẹ, dễ sử dụng, dễ d&agrave;ng gấp lại v&agrave; cất gọn mỗi khi kh&ocirc;ng d&ugrave;ng đến.</span><br /><span>M&agrave;u sắc nổi bật với t&ocirc;ng cam bắt mắt, tạo cảm gi&aacute;c hứng khởi, gi&agrave;u năng lượng.</span><br /><span>Khung th&eacute;p vững chắc với khả năng chịu tải trọng l&ecirc;n tới 150kg gi&uacute;p n&acirc;ng đỡ cơ thể bạn tối đa, đảm bảo sự an to&agrave;n tuyệt đối cho người tập</span></p>\r\n<p><span>C&oacute; nhiều chế độ tập cho bạn lựa chọn.</span></p>\r\n<p><span>C&oacute; d&acirc;y l&ograve; xo v&agrave; d&acirc;y đ&agrave;n hồi.</span></p>\r\n<p><span>Nệm da Pu tho&aacute;ng kh&iacute;.</span></p>\r\n<p><span>Ghế tập bụng cong về uy t&iacute;n v&agrave; chất lượng.</span></p>', 0, '1999000', 'e0ab586719.jpg'),
(24, 'Giày thể thao nam', '', '50', '0', '50', 18, 14, '<p><span>Mẫu gi&agrave;y đang được nhiều người lựa chọn</span><br /><span>Kiểu gi&agrave;y lười giả d&acirc;y</span><br /><span>Form gi&agrave;y rộng ,th&iacute;ch hợp với ch&acirc;n to d&agrave;y</span></p>\r\n<p>Chất liệu vải co gi&atilde;n&nbsp;</p>\r\n<p>Đế cao su si&ecirc;u &ecirc;m v&agrave; mềm</p>\r\n<p>L&oacute;t cao su &ecirc;m&nbsp;</p>\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>', 0, '1250000', '26bbd16519.jpg'),
(25, 'GIÀY THỂ THAO NỮ ANTA', '', '50', '0', '50', 19, 14, '<p><span>GI&Agrave;Y THỂ THAO NỮ ANTA 822035547-1 sở hữu thiết kế thời trang, năng động, c&ugrave;ng chất liệu bền bỉ hỗ trợ vận động tốt v&agrave; bảo vệ đ&ocirc;i ch&acirc;n cho người mang. Đế cao su mềm, &ecirc;m &aacute;i gi&uacute;p bạn cảm thấy dễ chịu khi di chuyển trong thời gian d&agrave;i. Đồng h&agrave;nh c&ugrave;ng thiết kế thời trang, gi&agrave;y thể thao Anta mang t&iacute;nh năng tho&aacute;ng kh&iacute;, gi&uacute;p c&acirc;n bằng nhiệt v&agrave; độ ẩm trong những điều kiện m&ocirc;i trường kh&aacute;c nhau, đế c&oacute; c&aacute;c đường r&atilde;nh chống trơn trượt. Sản phẩm sở hữu phong c&aacute;ch hiện đại, khỏe khoắn, m&agrave;u sắc trẻ trung hợp với nhiều lứa tuổi v&agrave; d&aacute;ng người. Đường may tỉ mỉ, tinh tế tạo cho bạn cảm gi&aacute;c y&ecirc;n t&acirc;m về chất lượng. Sản phẩm c&oacute; t&iacute;nh ứng dụng cao, mang khi tập luyện thể thao, đi l&agrave;m hay đi chơi...</span></p>', 1, '1600000', 'a6e849fb52.jpg'),
(26, 'Xe đạp thể thao Fornix F8', '', '57', '0', '57', 18, 10, '<p><span>Mở đầu BST xe đạp thể thao từ FORNIX năm 2020, bạn kh&ocirc;ng thể bỏ qua xe đạp mạnh mẽ FORNIX F8. Với thiết kế mạnh mẽ đầy c&aacute; t&iacute;nh, FORNIX F8 c&ograve;n mang đến cho bạn những trải nghiệm tốc độ của bộ truyền động đầy mạnh mẽ</span></p>\r\n<h1><span><span><span>Th&ocirc;ng số kỷ thuật xe đạp thể thao Fornix F8:&nbsp;</span></span></span></h1>\r\n<p><span>Với khung sườn được sử dụng từ hợp kim th&eacute;p cao cấp, FORNIX F8 c&oacute; độ bền v&agrave; chắc chắn cao với tuổi thọ l&acirc;u d&agrave;i.</span></p>\r\n<p><span>Với trang bị tay đề từ Shimano SL-A050, gi&uacute;p bạn c&oacute; được trải nghiệm kh&ocirc;ng giới hạn về tốc độ với 2 tốc độ trước v&agrave; index 7 tốc độ ph&iacute;a sau. Gi&uacute;p bạn l&agrave;m chủ được tốc độ trong mọi chặng đường.</span></p>\r\n<p><span>Shimano được đ&ocirc;ng đảo cơ rua biết đến bởi l&agrave; thương hiệu đến từ Nhật Bản với chất lượng tuyệt hảo. V&agrave; FORNIX F8 c&ograve;n được trang bị th&ecirc;m Shimano, Tourney TZ RD - TX500 đầy mạnh mẽ. Gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng điều chỉnh linh động theo h&agrave;nh tr&igrave;nh của m&igrave;nh từ l&ecirc;n dốc, đổ đ&egrave;o hay đạp đường trường&hellip;</span></p>\r\n<p><span>Với bộ truyền động 14 tốc độ với 7 l&iacute;p sau v&agrave; 2 đĩa trước, FORNIX F8 ho&agrave;n to&agrave;n c&oacute; thể đồng h&agrave;nh c&ugrave;ng với bạn tr&ecirc;n những h&agrave;nh tr&igrave;nh với c&aacute;c loại địa h&igrave;nh đồi dốc hoặc đạp đường trường. Trong dịp Tết n&agrave;y, nếu bạn cần một chiếc xe đạp mạnh mẽ để phục vụ cho h&agrave;nh tr&igrave;nh th&igrave; đừng bỏ qua sự lựa chọn ho&agrave;n hảo n&agrave;y nh&eacute;!</span></p>\r\n<p><span>V&agrave;nh b&aacute;nh xe với 700c, với hợp kim nh&ocirc;m 2 lớp mang đến sự nhanh nhẹn, chắc chắn v&agrave; đặc biệt hơn ch&iacute;nh l&agrave; sự tiện dụng khi chinh phục c&aacute;c loại địa h&igrave;nh đầy sỏi đ&aacute;.</span></p>\r\n<div><span><br /></span></div>', 1, '4000000', '6b02ba739c.jpg'),
(27, 'Xe đạp thể dục thể thao - xe đạp tập thể dục thể thao tại nhà X-SPEED', '', '57', '0', '57', 18, 14, '<p><span>Xe đạp thể dục thể thao - xe đạp tập thể dục thể thao tại nh&agrave; X-SPEED tặng b&oacute;ng b&agrave;n luyện phản xạ cao cấp + đồng hồ đo chỉ số + b&igrave;nh nước thể thao</span><br /><span>Xe đạp tập gym, thể dục thể thao tại nh&agrave; X-SPEED từ, b&aacute;nh đ&agrave;, hệ thống chuyển động hoạt động bằng d&acirc;y curoa kh&ocirc;ng g&acirc;y tiếng ồn</span><br /><span>Khung của xe đạp tập thể dục được l&agrave;m bằng th&eacute;p chịu lực cao, sơn tĩnh điện</span><br /><span>C&oacute; thể điểu chỉnh chiều cao ghế ngồi theo &yacute; người tập.</span><br /><span>Đồng hồ hiển thị : Qu&atilde;ng đường, tốc độ, thời gian, v&agrave; lượng calo ti&ecirc;u hao</span><br /><span>Trọng lượng NW / GW: 28 kg</span><br /><span>Trọng lượng b&aacute;nh đ&agrave; : 11 KG</span><br /><span>Trọng lượng người sử dụng tối đa : 250 kg</span><br /><span>M&agrave;u sắc : Đen pha đỏ</span><br /><span>B&oacute;ng b&agrave;n phản xạ h&agrave;ng cao cấp nh&acirc;t luyện phản xạ cho b&eacute; tại nh&agrave; + 04 b&oacute;ng + 02 vợt gỗ + 02 d&acirc;y c&aacute;p + 01 đế ABS nặng 1KG</span><br /><span>Bộ sản phẩm b&oacute;ng b&agrave;n phản xạ bao gồm:</span><br /><span>2 Vợt 3 lớp gỗ 3 lớp phủ cao su</span><br /><span>1 D&acirc;y đ&agrave;n hồi Carbon 1m1, 1 d&acirc;y đ&agrave;n hồi 0,9 m tăng giảm được độ cao</span><br /><span>4 b&oacute;ng b&agrave;n ABS đặc biệt</span><br /><span>1 Ch&acirc;n đế ABS NẶNG 1KG</span></p>', 1, '2500000', '941007dded.jpg'),
(30, 'Giày bóng rổ PEAK Tony Parker Outdoor EW94091A', '', '60', '0', '60', 20, 10, '<p><span>H&agrave;ng ch&iacute;nh h&atilde;ng</span><br /><span>Xuất xứ: Trung Quốc</span><br /><span>Đường may tỉ mỉ, chắc chắn</span></p>\r\n<p>Th&ocirc;ng tin sản phẩm:</p>\r\n<p>️ Th&acirc;n gi&agrave;y: chất liệu vải dệt mềm nhẹ, tho&aacute;ng kh&iacute;, mũi gi&agrave;y được bọc một lớp da tổng hợp bảo vệ b&agrave;n ch&acirc;n khỏi c&aacute;c va chạm tr&ecirc;n s&acirc;n.</p>\r\n<p>️ G&oacute;t gi&agrave;y được bao bọc bởi vật liệu TPU cứng bảo vệ cổ ch&acirc;n v&agrave; g&oacute;t ch&acirc;n trong c&aacute;c chuyển động mạnh hay khi tiếp đất.</p>\r\n<p>️ Đế giữa: đệm EVA hấp thụ chấn động, giảm lực va chạm l&ecirc;n g&oacute;t ch&acirc;n.</p>\r\n<p>️ Đế ngo&agrave;i: đế cao su RB nhẹ, chống m&agrave;i m&ograve;n v&agrave; c&oacute; độ bền cao. Mặt đế c&oacute; c&aacute;c r&atilde;nh s&acirc;u tăng ma s&aacute;t, chống trơn trượt.</p>\r\n<p>️ C&ocirc;ng nghệ PEAK Revolve: n&uacute;t xoay tr&ograve;n ở ph&iacute;a trong của đế ngo&agrave;i ph&iacute;a trước gi&uacute;p hỗ trợ c&aacute;c chuyển động đổi hướng, quay người,... khiến chuyển động &ecirc;m &aacute;i hơn, giảm va chạm với mặt đất.</p>', 1, '1300000', '7c5d479885.jpeg'),
(32, 'BÓNG RỔ MOLTEN B7G4500 – SỐ 7 DA', '', '21', '0', '21', 20, 14, '<p><span>Được chứng nhận ti&ecirc;u chuẩn FIBA APPROVED</span><br /><span>Chơi tốt: Indoor</span><br /><span>M&atilde; sản phẩm: B7G4500</span><br /><span>M&agrave;u : Cam, Đen &amp; Kem</span><br /><span>B&oacute;ng rổ</span><br /><span>Số miếng gh&eacute;p : 12</span><br /><span>Chất liệu da: PU Leather</span><br /><span>Ruột b&oacute;ng: Butyl</span><br /><span>Nơi sản xuất: Thailand</span><br /><span>Size : 7</span><br /><span>Chất liệu: Da</span><br /><span>C&ocirc;ng nghệ sản xuất: Laminated</span><br /><span>Nh&atilde;n hiệu: MoltenĐược chứng nhận ti&ecirc;u chuẩn FIBA APPROVED</span><br /><span>Chơi tốt: Indoor</span><br /><span>M&atilde; sản phẩm: B7G4500</span><br /><span>M&agrave;u : Cam, Đen &amp; Kem</span><br /><span>B&oacute;ng rổ</span><br /><span>Số miếng gh&eacute;p : 12</span><br /><span>Chất liệu da: PU Leather</span><br /><span>Ruột b&oacute;ng: Butyl</span><br /><span>Nơi sản xuất: Thailand</span><br /><span>Size : 7</span><br /><span>Chất liệu: Da</span><br /><span>C&ocirc;ng nghệ sản xuất: Laminated</span><br /><span>Nh&atilde;n hiệu: Molten</span></p>\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>', 0, '1200000', '8bd5d2a138.jpg'),
(33, 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '', '2', '0', '2', 18, 10, '<p><span>Kiểu d&aacute;ng tinh tế, k&iacute;ch thước lớn khả năng chịu lực cao</span><br /><span>Sản xuất theo c&ocirc;ng nghệ d&acirc;y chuyền hiện đại</span><br /><span>Thiết kế theo ti&ecirc;u chuẩn cơ thể n&ecirc;n hỗ trợ tập luyện hiệu quả tối ưu v&agrave; ch&iacute;nh x&aacute;c</span><br /><span>Hỗ trợ tập gym, r&egrave;n luyện sức khỏe</span><br /><span>Chất liệu th&eacute;p chắc chắn, bền bỉ</span></p>\r\n<ul>\r\n<li><span>M&aacute;y tạ rời tập đ&aacute; đ&ugrave;i hiệu Gym TigerSport TGS-1034</span>&nbsp;c&oacute; kiểu d&aacute;ng đẹp mắt, m&agrave;u sắc c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi kh&ocirc;ng gian ph&ograve;ng Gym.</li>\r\n<li>Sản phẩm được thiết kế tinh xảo từ c&ocirc;ng nghệ hiện đại, chau chuốt trong từng chi tiết mang đến một sản phẩm ho&agrave;n hảo v&agrave; an to&agrave;n. Việc &aacute;p dụng cơ sinh học ti&ecirc;n tiến theo sự vận động sinh l&yacute; của cơ thể để gi&uacute;p người sử dụng kh&ocirc;ng bị thương t&iacute;ch khi sử dụng.</li>\r\n<li>Gym TigerSport TGS-1022 được l&agrave;m từ nguy&ecirc;n liệu th&eacute;p cao cấp, độ bền cao, khả năng chịu lực t&aacute;c động vượt trội. B&ecirc;n ngo&agrave;i m&aacute;y tập tay sau được phun lớp sơn tĩnh điện c&oacute; khả năng chống gỉ cực tốt, k&eacute;o d&agrave;i tuổi thọ cho sản phẩm.</li>\r\n<li>M&aacute;y thiết kế tạ rời gi&uacute;p người tập c&oacute; thể thay đổi trọng lượng cũng như việc th&aacute;o lắp được dễ d&agrave;ng.</li>\r\n<li>Tập luyện thường xuy&ecirc;n với m&aacute;y tậpgi&uacute;p bạn c&oacute; thể t&aacute;c động nhanh ch&oacute;ng đến phần đ&ugrave;i được rắn chắc v&agrave; mạnh mẽ hơn. Đồng thời, m&aacute;y được thiết kế theo ti&ecirc;u chuẩn cơ thể n&ecirc;n hỗ trợ tập luyện hiệu quả tối ưu v&agrave; ch&iacute;nh x&aacute;c.</li>\r\n</ul>\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>', 0, '30000000', '3ac8efcfe9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `sliderId` int(11) NOT NULL AUTO_INCREMENT,
  `sliderName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`sliderId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(9, 'slider5', 'f50b2e4171.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouse`
--

DROP TABLE IF EXISTS `tbl_warehouse`;
CREATE TABLE IF NOT EXISTS `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`) VALUES
(1, 22, '5'),
(2, 21, '10'),
(3, 21, '3'),
(4, 20, '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

DROP TABLE IF EXISTS `tbl_wishlist`;
CREATE TABLE IF NOT EXISTS `tbl_wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(5, 6, 33, 'Máy tạ rời tập đá đùi hiệu Gym TigerSport TGS-1034', '30000000', '3ac8efcfe9.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
