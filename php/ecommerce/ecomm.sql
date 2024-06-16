-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Haz 2024, 10:41:44
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecomm`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 1),
(2, 'berru', 'berru', 0, 'berruhanedar@icloud.com', '905302513415', 1),
(6, 'berk_admin', '131313', 0, 'berk@gmail.com', '905307894563', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_txt`, `btn_link`, `image`, `order_no`, `status`) VALUES
(2, 'Limited Edition', 'Victoria\'s Secret Bombshell Isle', 'BUY', 'product.php', '896393147_mainpage2.png', 1, 1),
(3, 'Collection 2024', 'Seniora LOVES Glow Recipe', 'BUY', 'product.php', '202119234_mainpage.png', 2, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(2, 'Eye', 1),
(4, 'Face', 1),
(5, 'Perfume', 1),
(8, 'Cheek', 1),
(9, 'Lip', 1),
(11, 'berk_category_1', 1),
(12, 'berk_category_2', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `color_master`
--

CREATE TABLE `color_master` (
  `id` int(11) NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `color_master`
--

INSERT INTO `color_master` (`id`, `color`, `status`) VALUES
(1, '120 Ivory - Very Light Skin with Neutral Undertone', 1),
(3, '160 Cr?me - Very Light Skin with Warm Undertone', 1),
(4, '420 Terra - Deep Skin with Neutral Undertone', 1),
(5, '220 Neutral - Light Skin with Neutral Undertone', 1),
(6, 'Oslo - L1 - very light with cool undertones', 1),
(7, 'Salzburg - L3.5 - light with warm undertones', 1),
(8, 'Barcelona - M4 - medium to medium-deep with warm undertones, and a golden tone', 1),
(9, 'Anguilla - D7 - very deep with neutral undertones', 1),
(10, '9N1 Ebony - the most deep with rich neutral undertones', 1),
(11, '6N1 Mocha - very deep with neutral undertones', 1),
(12, '2C3 Fresco - light medium with cool rosy beige undertones', 1),
(13, '0N1 Alabaster - lightest with neutral undertones', 1),
(14, '0CR Cool Rosy - fair skin with cool rosy undertones', 1),
(15, '3C Cool - light to medium skin with cool undertones', 1),
(16, '4W Warm - medium skin with warm undertones', 1),
(17, '9N Neutral - deep skin with neutral undertones', 1),
(18, 'LC1 - light shade with cool undertones 1', 1),
(19, 'MC1 - medium shade with cool undertones 1', 1),
(20, 'DC1 - deep shade with cool undertones 1', 1),
(21, 'DW7 - deep shade with warm undertones 7', 1),
(22, '000 Non-Tinted', 1),
(23, '010 Ivory', 1),
(24, '020 Light Beige', 1),
(25, '030 Medium Beige', 1),
(26, '110C - fair with cool undertones', 1),
(27, '270N - fair medium with neutral undertones', 1),
(28, '420N - medium deep with neutral undertones', 1),
(29, '580C - deep with cool undertones', 1),
(30, 'DN90 - deep skin with neutral undertones', 1),
(31, 'DW85 - deep skin with warm undertones', 1),
(32, 'Color: MN60 - medium skin with neutral undertones', 1),
(33, 'Color: LN25 - light skin with neutral undertones', 1),
(34, 'MN60 - medium skin with neutral undertones', 1),
(35, 'LN25 - light skin with neutral undertones', 1),
(36, 'Rich', 1),
(37, 'Medium - medium skin with a balance of warm & cool undertones', 1),
(38, 'Tan', 1),
(39, 'Fair', 1),
(40, 'Deep Cool', 1),
(41, 'Rich Cool', 1),
(42, 'Light Medium', 1),
(43, 'Fair Ivory', 1),
(44, 'Deep - rich ebony shade with neutral undertones', 1),
(45, 'Rich - golden brown shade with warm undertones', 1),
(46, 'Medium Tan - golden beige shade with warm undertones', 1),
(47, 'Light - taupe shade with warm undertones', 1),
(48, 'Porcelain Bisque - palest pink bisque; corrects purple/blue/red discoloration under the eyes', 1),
(49, 'Porcelain Peach - pale yellow peach; corrects light brown/grey/greenish discoloration under the eyes', 1),
(50, 'Bisque - pink bisque; corrects purple/blue/red discoloration under the eyes', 1),
(51, 'Dark Bisque - dark pink bisque; corrects purple/red discoloration under the eyes', 1),
(52, '13 - very deep with a pink undertone', 1),
(53, '11 - Deep Olive', 1),
(54, '5.5 - Medium Neutral', 1),
(55, '1.5 - Very Fair Neutral', 1),
(56, '11C - fair with cool undertones', 1),
(57, '27N - fair medium with neutral undertones', 1),
(58, '45W - medium deep with warm undertones', 1),
(59, '58C - deep with cool undertones', 1),
(60, '0N0 Blanc - fair skin with neutral undertones', 1),
(61, '2N0 Cr?me - light-medium skin with neutral undertones', 1),
(62, '5C0 Caramel - tan skin with pink undertones', 1),
(63, '8C0 Rich Mocha - very deep skin with rich red undertones', 1),
(64, 'Redness Corrector - fair to light skin with redness', 1),
(65, 'Fresh brightner - fair to light skin with dullness & uneven tone', 1),
(66, 'Dullness eraser - light to medium skin with dullness & uneven tone', 1),
(67, 'Grayness reducer - tan to deep skin with dullness & uneven tone', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(5, 'berru', 'berruhanedar@icloud.com', '905302513415', '', '2024-06-06 20:54:41'),
(6, 'burcu', 'burcuhanedar@icloud.com', '905301234567', '', '2024-06-06 20:55:10'),
(7, 'burcu', 'burcuhanedar@icloud.com', '905301234567', 'test', '2024-06-06 09:55:06'),
(8, 'Duygu', 'duygu@gmail.com', '905301244867', 'How can I contact you ?', '2024-06-07 12:20:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 1000, 'Turkish Lira', 1500, 1),
(2, 'First60', 20, 'Percentage', 1000, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mihpayid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `coupon_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(20, 8, 'mor menek?e sokak', 'ata?ehir / barbaros mahallesi', 9856, 'VISA', 4950, 'pending', 1, 0, 0, 0, 0, 'd380f853c07351ed6503', '', 0, 0, '', 0, '', '', '2024-06-14 12:11:18'),
(21, 8, 'mor menek?e sokak', 'ata?ehir / barbaros mahallesi', 9856, 'MASTERCARD', 6025, 'pending', 1, 0, 0, 0, 0, '7c9ce173b14efa9981be', '', 0, 0, '', 0, '', '', '2024-06-14 12:16:11'),
(22, 8, 'mor menek?e sokak', 'ata?ehir / barbaros mahallesi', 9856, 'VISA', 6025, 'pending', 1, 0, 0, 0, 0, 'db70ddb352b47d3ac39c', '', 0, 0, '', 0, '', '', '2024-06-14 12:16:26'),
(23, 8, 'mor menekse sokak', 'ataşehir / barbaros mahallesi', 9856, 'VISA', 6025, 'pending', 1, 0, 0, 0, 0, '79e440878dc8fc80932b', '', 0, 0, '', 0, '', '', '2024-06-14 12:19:53'),
(24, 9, 'maltepe', 'maltepe', 123, 'MASTERCARD', 221, 'pending', 1, 0, 0, 0, 0, 'f66245101ea0071a23e0', '', 0, 0, '', 0, '', '', '2024-06-14 01:25:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `product_attr_id`, `qty`, `price`) VALUES
(1, 1, 7, 5, 10, 333),
(7, 7, 173, 179, 1, 1395),
(8, 7, 122, 128, 1, 660),
(9, 8, 173, 179, 6, 1395),
(10, 8, 180, 196, 1, 2250),
(11, 9, 178, 191, 1, 3750),
(12, 10, 178, 191, 1, 3750),
(13, 10, 61, 62, 1, 1445),
(14, 10, 150, 156, 1, 885),
(15, 11, 178, 191, 1, 3750),
(16, 11, 61, 62, 1, 1445),
(17, 11, 150, 156, 1, 885),
(18, 12, 179, 194, 1, 3000),
(19, 13, 142, 148, 1, 1325),
(20, 14, 121, 127, 1, 280),
(21, 15, 121, 127, 1, 280),
(22, 16, 179, 192, 1, 4950),
(23, 17, 179, 192, 1, 4950),
(24, 18, 179, 192, 1, 4950),
(25, 19, 179, 192, 1, 4950),
(26, 20, 179, 192, 1, 4950),
(27, 21, 179, 192, 1, 4950),
(28, 21, 151, 157, 1, 1075),
(29, 22, 179, 192, 1, 4950),
(30, 22, 151, 157, 1, 1075),
(31, 23, 179, 192, 1, 4950),
(32, 23, 151, 157, 1, 1075),
(33, 24, 182, 198, 1, 100),
(34, 24, 181, 197, 1, 1),
(35, 24, 183, 199, 1, 120);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `short_desc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `meta_desc` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `meta_keyword` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(19, 4, 3, 'La Mer - The Soft Fluid Long Wear Foundation SPF 20 - Terra', 4850, 4580, 14, '586812110_633144028_lamer4.1.jpg', 'Color: 420 Terra - Deep Skin with Neutral Undertone', 'What it is: A weightless, natural looking foundation with buildable coverage for luxurious, long wear.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSPF: SPF 20\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, and triclosan.\r\n\r\nWhat Else You Need to Know: This silky, lightweight formula helps maintain balance and provides buildable coverage. It leaves skin is visibly plumped with hydration. Fine lines and wrinkles look softened, the look of pores and imperfections are diminished, and UV protection defends skin against future damage. This foundation also stays true, even in humidity.', 0, 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Terra', '', 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Terra', 1, 1),
(20, 4, 3, 'La Mer - The Soft Fluid Long Wear Foundation SPF 20 - Neutral', 4850, 4580, 12, '266398718_lamer3.1.jpg', 'Color: 220 Neutral - Light Skin with Neutral Undertone', 'What it is: A weightless, natural looking foundation with buildable coverage for luxurious, long wear.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSPF: SPF 20\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, and triclosan.\r\n\r\nWhat Else You Need to Know: This silky, lightweight formula helps maintain balance and provides buildable coverage. It leaves skin is visibly plumped with hydration. Fine lines and wrinkles look softened, the look of pores and imperfections are diminished, and UV protection defends skin against future damage. This foundation also stays true, even in humidity.', 0, 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Neutral', '', 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Neutral', 1, 1),
(21, 4, 3, 'La Mer - The Soft Fluid Long Wear Foundation SPF 20  - Cr?me', 4850, 4580, 6, '327805037_lamer2.1.jpg', 'Color: 160 Cr?me - Very Light Skin with Warm Undertone', 'What it is: A weightless, natural looking foundation with buildable coverage for luxurious, long wear.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSPF: SPF 20\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, and triclosan.\r\n\r\nWhat Else You Need to Know: This silky, lightweight formula helps maintain balance and provides buildable coverage. It leaves skin is visibly plumped with hydration. Fine lines and wrinkles look softened, the look of pores and imperfections are diminished, and UV protection defends skin against future damage. This foundation also stays true, even in humidity.', 0, 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Cr?me', '', 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Cr?me', 1, 1),
(22, 4, 3, 'La Mer - The Soft Fluid Long Wear Foundation SPF 20 - Ivory', 4850, 4580, 8, '998225030_lamer1.1.jpg', 'Color: 120 Ivory - Very Light Skin with Neutral Undertone', 'What it is: A weightless, natural looking foundation with buildable coverage for luxurious, long wear.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSPF: SPF 20\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, and triclosan.\r\n\r\nWhat Else You Need to Know: This silky, lightweight formula helps maintain balance and provides buildable coverage. It leaves skin is visibly plumped with hydration. Fine lines and wrinkles look softened, the look of pores and imperfections are diminished, and UV protection defends skin against future damage. This foundation also stays true, even in humidity.', 0, 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Ivory', '', 'La Mer The Soft Fluid Long Wear Foundation SPF 20 - Ivory', 1, 1),
(23, 4, 3, 'NARS - Light Reflecting Advanced Skincare Foundation - Anguilla', 1680, 1595, 6, '799066953_nars4.1.jpg', 'Color: Anguilla - D7 - very deep with neutral undertones', 'What it is: An advanced makeup-skincare-hybrid foundation with a natural finish that quickly blurs and smooths while visibly improving skin?s clarity over time.\r\n\r\n\r\n\r\nCoverage: Medium\r\n\r\n\r\n\r\nFinish: Natural\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Biomimetic Oat: Visibly improves clarity by reducing the appearance of redness.\r\n\r\n- Japanese Lilyturf: Supports a strong skin barrier by helping maintain moisture.\r\n\r\n- Cacao Peptides and Milk Thistle: Minimize the negative effect of blue light and environmental stressors.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This breathable, medium-coverage, buildable foundation quickly conceals visible redness, blemishes, and dark spots while blurring the look of wrinkles, pores, and texture. Powered by 70 percent-skincare ingredients for visibly improved clarity plus Light Reflecting Complex for enhanced luminosity, the up to all-day-wear formula is suitable for most skin types, including sensitive.\r\n\r\nThis product is an Allure Best of Beauty award winner.\r\n\r\n\r\n\r\nClinical Results: In a clinical study of 31 women immediately after application:\r\n\r\n- It revealed a more even-looking skin tone by +93%\r\n\r\n\r\n\r\nIn a 6-week clinical study of 31 women:\r\n\r\n- It improved the appearance of skin clarity over time, even after makeup was removed\r\n\r\n\r\n\r\nThis product is an Allure Best of Beauty award winner.', 0, 'NARS Light Reflecting Advanced Skincare Foundation - Anguilla', '', 'NARS Light Reflecting Advanced Skincare Foundation - Anguilla', 1, 1),
(24, 4, 3, 'NARS - Light Reflecting Advanced Skincare Foundation - Barcelona', 1680, 1595, 7, '492414637_nars1.1.jpg', 'Color: Barcelona - M4 - medium to medium-deep with warm undertones, and a golden tone', 'What it is: An advanced makeup-skincare-hybrid foundation with a natural finish that quickly blurs and smooths while visibly improving skin?s clarity over time.\r\n\r\n\r\n\r\nCoverage: Medium\r\n\r\n\r\n\r\nFinish: Natural\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Biomimetic Oat: Visibly improves clarity by reducing the appearance of redness.\r\n\r\n- Japanese Lilyturf: Supports a strong skin barrier by helping maintain moisture.\r\n\r\n- Cacao Peptides and Milk Thistle: Minimize the negative effect of blue light and environmental stressors.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This breathable, medium-coverage, buildable foundation quickly conceals visible redness, blemishes, and dark spots while blurring the look of wrinkles, pores, and texture. Powered by 70 percent-skincare ingredients for visibly improved clarity plus Light Reflecting Complex for enhanced luminosity, the up to all-day-wear formula is suitable for most skin types, including sensitive.\r\n\r\nThis product is an Allure Best of Beauty award winner.\r\n\r\n\r\n\r\nClinical Results: In a clinical study of 31 women immediately after application:\r\n\r\n- It revealed a more even-looking skin tone by +93%\r\n\r\n\r\n\r\nIn a 6-week clinical study of 31 women:\r\n\r\n- It improved the appearance of skin clarity over time, even after makeup was removed\r\n\r\n\r\n\r\nThis product is an Allure Best of Beauty award winner.', 0, 'NARS Light Reflecting Advanced Skincare Foundation - Barcelona', '', 'NARS Light Reflecting Advanced Skincare Foundation - Barcelona', 1, 1),
(25, 4, 3, 'NARS - Light Reflecting Advanced Skincare Foundation - Salzburg', 1680, 1595, 5, '457311263_nars2.1.jpg', 'Color: Salzburg - L3.5 - light with warm undertones', 'What it is: An advanced makeup-skincare-hybrid foundation with a natural finish that quickly blurs and smooths while visibly improving skin?s clarity over time.\r\n\r\n\r\n\r\nCoverage: Medium\r\n\r\n\r\n\r\nFinish: Natural\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Biomimetic Oat: Visibly improves clarity by reducing the appearance of redness.\r\n\r\n- Japanese Lilyturf: Supports a strong skin barrier by helping maintain moisture.\r\n\r\n- Cacao Peptides and Milk Thistle: Minimize the negative effect of blue light and environmental stressors.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This breathable, medium-coverage, buildable foundation quickly conceals visible redness, blemishes, and dark spots while blurring the look of wrinkles, pores, and texture. Powered by 70 percent-skincare ingredients for visibly improved clarity plus Light Reflecting Complex for enhanced luminosity, the up to all-day-wear formula is suitable for most skin types, including sensitive.\r\n\r\nThis product is an Allure Best of Beauty award winner.\r\n\r\n\r\n\r\nClinical Results: In a clinical study of 31 women immediately after application:\r\n\r\n- It revealed a more even-looking skin tone by +93%\r\n\r\n\r\n\r\nIn a 6-week clinical study of 31 women:\r\n\r\n- It improved the appearance of skin clarity over time, even after makeup was removed\r\n\r\n\r\n\r\nThis product is an Allure Best of Beauty award winner.', 0, 'NARS Light Reflecting Advanced Skincare Foundation - Salzburg', '', 'NARS Light Reflecting Advanced Skincare Foundation - Salzburg', 1, 1),
(26, 4, 3, 'NARS - Light Reflecting Advanced Skincare Foundation - Oslo', 1680, 1595, 12, '807008602_nars3.1.jpg', 'Color: Oslo - L1 - very light with cool undertones', 'What it is: An advanced makeup-skincare-hybrid foundation with a natural finish that quickly blurs and smooths while visibly improving skin?s clarity over time.\r\n\r\n\r\n\r\nCoverage: Medium\r\n\r\n\r\n\r\nFinish: Natural\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Biomimetic Oat: Visibly improves clarity by reducing the appearance of redness.\r\n\r\n- Japanese Lilyturf: Supports a strong skin barrier by helping maintain moisture.\r\n\r\n- Cacao Peptides and Milk Thistle: Minimize the negative effect of blue light and environmental stressors.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This breathable, medium-coverage, buildable foundation quickly conceals visible redness, blemishes, and dark spots while blurring the look of wrinkles, pores, and texture. Powered by 70 percent-skincare ingredients for visibly improved clarity plus Light Reflecting Complex for enhanced luminosity, the up to all-day-wear formula is suitable for most skin types, including sensitive.\r\n\r\nThis product is an Allure Best of Beauty award winner.\r\n\r\n\r\n\r\nClinical Results: In a clinical study of 31 women immediately after application:\r\n\r\n- It revealed a more even-looking skin tone by +93%\r\n\r\n\r\n\r\nIn a 6-week clinical study of 31 women:\r\n\r\n- It improved the appearance of skin clarity over time, even after makeup was removed\r\n\r\n\r\n\r\nThis product is an Allure Best of Beauty award winner.', 0, 'NARS - Light Reflecting Advanced Skincare Foundation - Oslo', '', 'NARS - Light Reflecting Advanced Skincare Foundation - Oslo', 1, 1),
(27, 4, 3, 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Ebony', 1780, 1685, 9, '346093535_este4.1.jpg', 'Color: 9N1 Ebony - the most deep with rich neutral undertones', 'What it is: A silky serum foundation with 85% skincaring ingredients that visibly evens, smooths, moisturizes so you glow with soft radiance.\r\n\r\n\r\n\r\nCoverage: Light\r\n\r\n\r\n\r\nFinish: Radiant\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nSPF: 20\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Moisture Saccharides and Glycerin: Help deliver a surge of immediate and long-lasting, all-day moisture.\r\n\r\n- Glucosamine and Trametes Versicolor Extract: Help smooth skin texture and improve skin tone over time.\r\n\r\n- Botanical Oil: Infusion to help nourish and strengthen.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and contains less than one percent synthetic fragrance.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This sweat- and humidity-resistant foundation has up to eight hours of staying power for all-day, color-true wear that won?t streak or crease. The fragrance-free formula hydrates and conditions skin fast while protecting against UVA and UVB damage with broad-spectrum SPF 20.\r\n\r\n\r\n\r\nClinical Results: In a clinical study, after 1 week:\r\n\r\n- Skin tone looked improved\r\n\r\n- Skin looked smoother\r\n\r\n- Skin?s own moisture had increased', 0, 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Ebony', '', 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Ebony', 1, 1),
(28, 4, 3, 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Mocha', 1780, 1685, 6, '323245303_este3.1.jpg', '6N1 Mocha - very deep with neutral undertones', 'What it is: A silky serum foundation with 85% skincaring ingredients that visibly evens, smooths, moisturizes so you glow with soft radiance.\r\n\r\n\r\n\r\nCoverage: Light\r\n\r\n\r\n\r\nFinish: Radiant\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nSPF: 20\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Moisture Saccharides and Glycerin: Help deliver a surge of immediate and long-lasting, all-day moisture.\r\n\r\n- Glucosamine and Trametes Versicolor Extract: Help smooth skin texture and improve skin tone over time.\r\n\r\n- Botanical Oil: Infusion to help nourish and strengthen.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and contains less than one percent synthetic fragrance.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This sweat- and humidity-resistant foundation has up to eight hours of staying power for all-day, color-true wear that won?t streak or crease. The fragrance-free formula hydrates and conditions skin fast while protecting against UVA and UVB damage with broad-spectrum SPF 20.\r\n\r\n\r\n\r\nClinical Results: In a clinical study, after 1 week:\r\n\r\n- Skin tone looked improved\r\n\r\n- Skin looked smoother\r\n\r\n- Skin?s own moisture had increased', 0, 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Mocha', '', 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Mocha', 1, 1),
(29, 4, 3, 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Fresco', 1780, 1685, 4, '628781024_este2.1.jpg', 'Color: 2C3 Fresco - light medium with cool rosy beige undertones', 'What it is: A silky serum foundation with 85% skincaring ingredients that visibly evens, smooths, moisturizes so you glow with soft radiance.\r\n\r\n\r\n\r\nCoverage: Light\r\n\r\n\r\n\r\nFinish: Radiant\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nSPF: 20\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Moisture Saccharides and Glycerin: Help deliver a surge of immediate and long-lasting, all-day moisture.\r\n\r\n- Glucosamine and Trametes Versicolor Extract: Help smooth skin texture and improve skin tone over time.\r\n\r\n- Botanical Oil: Infusion to help nourish and strengthen.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and contains less than one percent synthetic fragrance.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This sweat- and humidity-resistant foundation has up to eight hours of staying power for all-day, color-true wear that won?t streak or crease. The fragrance-free formula hydrates and conditions skin fast while protecting against UVA and UVB damage with broad-spectrum SPF 20.\r\n\r\n\r\n\r\nClinical Results: In a clinical study, after 1 week:\r\n\r\n- Skin tone looked improved\r\n\r\n- Skin looked smoother\r\n\r\n- Skin?s own moisture had increased', 0, 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Fresco', '', 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Fresco', 1, 1),
(30, 4, 3, 'Est?e Lauder - Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Alabaster', 1780, 1685, 8, '310453016_este1.1.jpg', 'Color: 0N1 Alabaster - lightest with neutral undertones', 'What it is: A silky serum foundation with 85% skincaring ingredients that visibly evens, smooths, moisturizes so you glow with soft radiance.\r\n\r\n\r\n\r\nCoverage: Light\r\n\r\n\r\n\r\nFinish: Radiant\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nSPF: 20\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Moisture Saccharides and Glycerin: Help deliver a surge of immediate and long-lasting, all-day moisture.\r\n\r\n- Glucosamine and Trametes Versicolor Extract: Help smooth skin texture and improve skin tone over time.\r\n\r\n- Botanical Oil: Infusion to help nourish and strengthen.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and contains less than one percent synthetic fragrance.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This sweat- and humidity-resistant foundation has up to eight hours of staying power for all-day, color-true wear that won?t streak or crease. The fragrance-free formula hydrates and conditions skin fast while protecting against UVA and UVB damage with broad-spectrum SPF 20.\r\n\r\n\r\n\r\nClinical Results: In a clinical study, after 1 week:\r\n\r\n- Skin tone looked improved\r\n\r\n- Skin looked smoother\r\n\r\n- Skin?s own moisture had increased', 0, 'Est?e Lauder Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Alabaster', '', 'Est?e Lauder Futurist Skin Tint Serum Foundation SPF 20 with Glycerin - Alabaster', 1, 1),
(31, 4, 3, 'Dior- Forever Matte Foundation SPF 15 - Neutal', 2010, 1850, 4, '266947983_dior4.1.jpg', 'Color: 9N Neutral - deep skin with neutral undertones', 'What it is: A new generation, Dior foundation with 24H transfer-proof wear. With skincare ingredients, this matte formula visibly improves skin over time.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nSPF: SPF 30 and under\r\n\r\nHighlighted Ingredients:\r\n- Iris Extract: Guards against oxidation.\r\n- Rose Extract: Refines skin texture.\r\n- Wild Pansy Extract: Maintains hydration for healthy-looking skin.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It also comes in recyclable packaging.\r\n\r\nWhat Else You Need to Know: Available in 42 shades. This new medium-full coverage foundation visibly smooths skin and reduces the look of pores. It is transfer-, heat-, and humidity-resistant and delivers up to 24 hours of color-true wear and comfort. The packaging is recyclable and uses recycled materials.', 0, 'Dior- Forever Matte Foundation SPF 15 - Neutal', '', 'Dior- Forever Matte Foundation SPF 15 - Neutal', 1, 1),
(32, 4, 3, 'Dior - Forever Matte Foundation SPF 15 - Warm', 2010, 1850, 6, '450085298_dior3.1.jpg', 'Color: 4W Warm - medium skin with warm undertones', 'What it is: A new generation, Dior foundation with 24H transfer-proof wear. With skincare ingredients, this matte formula visibly improves skin over time.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nSPF: SPF 30 and under\r\n\r\nHighlighted Ingredients:\r\n- Iris Extract: Guards against oxidation.\r\n- Rose Extract: Refines skin texture.\r\n- Wild Pansy Extract: Maintains hydration for healthy-looking skin.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It also comes in recyclable packaging.\r\n\r\nWhat Else You Need to Know: Available in 42 shades. This new medium-full coverage foundation visibly smooths skin and reduces the look of pores. It is transfer-, heat-, and humidity-resistant and delivers up to 24 hours of color-true wear and comfort. The packaging is recyclable and uses recycled materials.', 0, 'Dior - Forever Matte Foundation SPF 15 - Warm', '', 'Dior - Forever Matte Foundation SPF 15 - Warm', 1, 1),
(33, 4, 3, 'Dior - Forever Matte Foundation SPF 15 - Cool', 2010, 1850, 6, '441553134_dior2.1.jpg', 'Color: 3C Cool - light to medium skin with cool undertones', 'What it is: A new generation, Dior foundation with 24H transfer-proof wear. With skincare ingredients, this matte formula visibly improves skin over time.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nSPF: SPF 30 and under\r\n\r\nHighlighted Ingredients:\r\n- Iris Extract: Guards against oxidation.\r\n- Rose Extract: Refines skin texture.\r\n- Wild Pansy Extract: Maintains hydration for healthy-looking skin.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It also comes in recyclable packaging.\r\n\r\nWhat Else You Need to Know: Available in 42 shades. This new medium-full coverage foundation visibly smooths skin and reduces the look of pores. It is transfer-, heat-, and humidity-resistant and delivers up to 24 hours of color-true wear and comfort. The packaging is recyclable and uses recycled materials.', 0, 'Dior - Forever Matte Foundation SPF 15 - Cool', '', 'Dior - Forever Matte Foundation SPF 15 - Cool', 1, 1),
(34, 4, 3, 'Dior - Forever Matte Foundation SPF 15 - Cool Rosy', 2010, 1850, 15, '316863975_dior1.1.jpg', 'Color : 0CR Cool Rosy - fair skin with cool rosy undertones', 'What it is: A new generation, Dior foundation with 24H transfer-proof wear. With skincare ingredients, this matte formula visibly improves skin over time.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nSPF: SPF 30 and under\r\n\r\nHighlighted Ingredients:\r\n- Iris Extract: Guards against oxidation.\r\n- Rose Extract: Refines skin texture.\r\n- Wild Pansy Extract: Maintains hydration for healthy-looking skin.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It also comes in recyclable packaging.\r\n\r\nWhat Else You Need to Know: Available in 42 shades. This new medium-full coverage foundation visibly smooths skin and reduces the look of pores. It is transfer-, heat-, and humidity-resistant and delivers up to 24 hours of color-true wear and comfort. The packaging is recyclable and uses recycled materials.', 0, 'Dior - Forever Matte Foundation SPF 15 - Cool Rost', '', 'Dior - Forever Matte Foundation SPF 15 - Cool Rost', 1, 1),
(35, 4, 3, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - DW7', 2010, 1910, 6, '860024727_yves4.1.jpg', 'Color: DW7 - deep shade with warm undertones 7', 'What it is: A breathable liquid foundation delivering up to 24h full coverage with a weightless feel and luminous matte finish for a flawless looking complexion\r\n\r\n\r\n\r\nCoverage: Full\r\n\r\n\r\n\r\nFinish: Matte\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\n\r\n\r\nSPF: SPF 30\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n-Hyaluronic Acid: Known for hydrating properties.\r\n\r\n-Jasmine Petal: Known for brightening properties.\r\n\r\n-Vegetal Taurine: Known for nourishing properties.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This innovative formula glides on seamlessly for full coverage that feels bare. It is transfer proof, waterproof and heat resistant. Infused with hyaluronic acid and Jasmine petal, this foundation provides day after day skincare benefits. After only 2 weeks, skin feels softer, smoother, and hydrated\r\n\r\n\r\n\r\nClinical Results: Based on a consumer test*:\r\n\r\n- 91% agree the coverage lasts for 24 hours - 83% agree product feels breathable on skin for 24 hours\r\n\r\n- 82% agree the color remains true for 24 hours - 85% agree skin feels comfortable for 24 hours - 85% agree skin looks healthy for 24 hours After only 2 weeks of daily use, skin feels softer, smoother, hydrated. * * Consumer test, 111 women', 0, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - DW7', '', 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - DW7', 1, 1),
(36, 4, 3, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - DC1', 2010, 1910, 9, '719431262_yves3.1.jpg', 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - DC1', 'Color: DC1 - deep shade with cool undertones 1', 0, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - DC1', '', 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - DC1', 1, 1),
(37, 4, 3, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - MC1', 2010, 1910, 14, '974743706_yves2.1.jpg', 'Color: MC1 - medium shade with cool undertones 1', 'What it is: A breathable liquid foundation delivering up to 24h full coverage with a weightless feel and luminous matte finish for a flawless looking complexion\r\n\r\n\r\n\r\nCoverage: Full\r\n\r\n\r\n\r\nFinish: Matte\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\n\r\n\r\nSPF: SPF 30\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n-Hyaluronic Acid: Known for hydrating properties.\r\n\r\n-Jasmine Petal: Known for brightening properties.\r\n\r\n-Vegetal Taurine: Known for nourishing properties.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This innovative formula glides on seamlessly for full coverage that feels bare. It is transfer proof, waterproof and heat resistant. Infused with hyaluronic acid and Jasmine petal, this foundation provides day after day skincare benefits. After only 2 weeks, skin feels softer, smoother, and hydrated\r\n\r\n\r\n\r\nClinical Results: Based on a consumer test*:\r\n\r\n- 91% agree the coverage lasts for 24 hours - 83% agree product feels breathable on skin for 24 hours\r\n\r\n- 82% agree the color remains true for 24 hours - 85% agree skin feels comfortable for 24 hours - 85% agree skin looks healthy for 24 hours After only 2 weeks of daily use, skin feels softer, smoother, hydrated. * * Consumer test, 111 women', 0, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - MC1', '', 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - MC1', 1, 1),
(38, 4, 3, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - LC1', 2010, 1910, 12, '184168403_yves1.1.jpg', 'Color: LC1 - light shade with cool undertones 1', 'What it is: A breathable liquid foundation delivering up to 24h full coverage with a weightless feel and luminous matte finish for a flawless looking complexion\r\n\r\n\r\n\r\nCoverage: Full\r\n\r\n\r\n\r\nFinish: Matte\r\n\r\n\r\n\r\nFormulation: Liquid\r\n\r\n\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\n\r\n\r\nSPF: SPF 30\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n-Hyaluronic Acid: Known for hydrating properties.\r\n\r\n-Jasmine Petal: Known for brightening properties.\r\n\r\n-Vegetal Taurine: Known for nourishing properties.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This innovative formula glides on seamlessly for full coverage that feels bare. It is transfer proof, waterproof and heat resistant. Infused with hyaluronic acid and Jasmine petal, this foundation provides day after day skincare benefits. After only 2 weeks, skin feels softer, smoother, and hydrated\r\n\r\n\r\n\r\nClinical Results: Based on a consumer test*:\r\n\r\n- 91% agree the coverage lasts for 24 hours - 83% agree product feels breathable on skin for 24 hours\r\n\r\n- 82% agree the color remains true for 24 hours - 85% agree skin feels comfortable for 24 hours - 85% agree skin looks healthy for 24 hours After only 2 weeks of daily use, skin feels softer, smoother, hydrated. * * Consumer test, 111 women', 0, 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - LC1', '', 'Yves Saint Laurent - All Hours Luminous Natural Matte Foundation 24H Longwear SPF 30 with Hyaluronic Acid - LC1', 1, 1),
(39, 4, 3, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Medium Beige', 2950, 2780, 26, '962626869_diorc4.1.jpg', 'Color: 030 Medium Beige', 'What it is: A skincare compact that blurs the look of imperfections and helps minimize visible signs of aging, leaving skin looking flawless.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Dark Spots, Pores, and Dullness\r\n\r\nFormulation: Lightweight Serum\r\n\r\nHighlighted Ingredients:\r\n- Longoza Flower: Renowned for its exceptional, visibly age-defying effectiveness.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, triclosan, and triclocarban.\r\n\r\nWhat Else You Need to Know: The formula visibly corrects an uneven complexion, dark spots, pores, redness, dryness, dullness, and wrinkles. Beneath foundation, skin appears more luminous, smoothed, and more beautiful every day. Dreamskin comes in refillable packaging for sustainable use, and individual refills are available separately.', 0, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Medium Beige', '', 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Medium Beige', 1, 1),
(40, 4, 3, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Light Beige', 2950, 2780, 16, '193494235_diorc3.1.jpg', 'Color: 020 Light Beige', 'What it is: A skincare compact that blurs the look of imperfections and helps minimize visible signs of aging, leaving skin looking flawless.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Dark Spots, Pores, and Dullness\r\n\r\nFormulation: Lightweight Serum\r\n\r\nHighlighted Ingredients:\r\n- Longoza Flower: Renowned for its exceptional, visibly age-defying effectiveness.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, triclosan, and triclocarban.\r\n\r\nWhat Else You Need to Know: The formula visibly corrects an uneven complexion, dark spots, pores, redness, dryness, dullness, and wrinkles. Beneath foundation, skin appears more luminous, smoothed, and more beautiful every day. Dreamskin comes in refillable packaging for sustainable use, and individual refills are available separately.', 0, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Light Beige', '', 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Light Beige', 1, 1),
(41, 4, 3, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Ivory', 2950, 2780, 17, '484058725_diorc2.1.jpg', 'Color: 010 Ivory', 'What it is: A skincare compact that blurs the look of imperfections and helps minimize visible signs of aging, leaving skin looking flawless.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Dark Spots, Pores, and Dullness\r\n\r\nFormulation: Lightweight Serum\r\n\r\nHighlighted Ingredients:\r\n- Longoza Flower: Renowned for its exceptional, visibly age-defying effectiveness.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, triclosan, and triclocarban.\r\n\r\nWhat Else You Need to Know: The formula visibly corrects an uneven complexion, dark spots, pores, redness, dryness, dullness, and wrinkles. Beneath foundation, skin appears more luminous, smoothed, and more beautiful every day. Dreamskin comes in refillable packaging for sustainable use, and individual refills are available separately.', 0, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Ivory', '', 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Ivory', 1, 1),
(42, 4, 3, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Non-Tinted', 2950, 2780, 11, '597014906_diorc1.1.jpg', 'Color: 000 Non-Tinted', 'Item 2154631\r\n\r\nWhat it is: A skincare compact that blurs the look of imperfections and helps minimize visible signs of aging, leaving skin looking flawless.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Dark Spots, Pores, and Dullness\r\n\r\nFormulation: Lightweight Serum\r\n\r\nHighlighted Ingredients:\r\n- Longoza Flower: Renowned for its exceptional, visibly age-defying effectiveness.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, coal tar, hydroquinone, triclosan, and triclocarban.\r\n\r\nWhat Else You Need to Know: The formula visibly corrects an uneven complexion, dark spots, pores, redness, dryness, dullness, and wrinkles. Beneath foundation, skin appears more luminous, smoothed, and more beautiful every day. Dreamskin comes in refillable packaging for sustainable use, and individual refills are available separately.', 0, 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Non-Tinted', '', 'Dior - Dreamskin Fresh & Perfect Face Cushion SPF 50 - Non-Tinted', 1, 1),
(43, 4, 3, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 580C', 2230, 2110, 12, '989827058_gucci4.1.jpg', 'Color: 580C - deep with cool undertones', 'What it is: An up to 24-hour foundation with a luminous matte finish and full coverage in one drop.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Hyaluronic Acid and Black Rose Oil: Boost and maintain skin hydration.\r\n- Bamboo Powder: Absorbs shine all day long.\r\n\r\nWhat Else You Need to Know: Combining high-affinity skin powders and coated pigments with a high-performance polymer technology that lets the skin breathe and delivers up to 24-hour wear, this foundation stays on all day without budging or fading. It?s also mask-proof and sweatproof.\r\n\r\nClinical Results: In a consumer test on 110 volunteers, after 7 days of use:\r\n- 97% reported a comfortable formula on skin all day\r\n- 91% reported a shine-control effect all day', 0, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 580C', '', 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 580C', 1, 1),
(44, 4, 3, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 420N', 2230, 2110, 12, '223986013_gucci3.1.jpg', 'Color: 420N - medium deep with neutral undertones', 'What it is: An up to 24-hour foundation with a luminous matte finish and full coverage in one drop.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Hyaluronic Acid and Black Rose Oil: Boost and maintain skin hydration.\r\n- Bamboo Powder: Absorbs shine all day long.\r\n\r\nWhat Else You Need to Know: Combining high-affinity skin powders and coated pigments with a high-performance polymer technology that lets the skin breathe and delivers up to 24-hour wear, this foundation stays on all day without budging or fading. It?s also mask-proof and sweatproof.\r\n\r\nClinical Results: In a consumer test on 110 volunteers, after 7 days of use:\r\n- 97% reported a comfortable formula on skin all day\r\n- 91% reported a shine-control effect all day', 0, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 420N', '', 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 420N', 1, 1),
(45, 4, 3, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 270N', 2230, 2110, 15, '763404066_gucci2.1.jpg', 'Color: 270N - fair medium with neutral undertones', 'What it is: An up to 24-hour foundation with a luminous matte finish and full coverage in one drop.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Hyaluronic Acid and Black Rose Oil: Boost and maintain skin hydration.\r\n- Bamboo Powder: Absorbs shine all day long.\r\n\r\nWhat Else You Need to Know: Combining high-affinity skin powders and coated pigments with a high-performance polymer technology that lets the skin breathe and delivers up to 24-hour wear, this foundation stays on all day without budging or fading. It?s also mask-proof and sweatproof.\r\n\r\nClinical Results: In a consumer test on 110 volunteers, after 7 days of use:\r\n- 97% reported a comfortable formula on skin all day\r\n- 91% reported a shine-control effect all day', 0, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 270N', '', 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 270N', 1, 1),
(46, 4, 3, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 110C', 2230, 2110, 17, '148800311_gucci1.1.jpg', 'Color: 110C - fair with cool undertones', 'What it is: An up to 24-hour foundation with a luminous matte finish and full coverage in one drop.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Hyaluronic Acid and Black Rose Oil: Boost and maintain skin hydration.\r\n- Bamboo Powder: Absorbs shine all day long.\r\n\r\nWhat Else You Need to Know: Combining high-affinity skin powders and coated pigments with a high-performance polymer technology that lets the skin breathe and delivers up to 24-hour wear, this foundation stays on all day without budging or fading. It?s also mask-proof and sweatproof.\r\n\r\nClinical Results: In a consumer test on 110 volunteers, after 7 days of use:\r\n- 97% reported a comfortable formula on skin all day\r\n- 91% reported a shine-control effect all day', 0, 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 110C', '', 'Gucci - 24 Hour Full Coverage Luminous Matte Finish Foundation - 110C', 1, 1),
(47, 4, 3, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - DN90', 2260, 2150, 12, '398622600_prada4.1.jpg', 'Color: DN90 - deep skin with neutral undertones', 'What it is: A skincare foundation that refines the skin in three dimensions including tone, luminosity, and texture to reveal soft-filtered skin in real life.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Vitamin E\r\n- Niacinamide\r\n- Lactobacillus Extract Complex\r\n\r\nWhat Else You Need to Know: This soft-matte foundation delivers medium coverage and transfer-resistant wear for up to 24 hours. The breathable and buildable formula with broad spectrum SPF 17 sunscreen improves the look of skin tone, enhances skin?s natural radiance and hydration, and visibly refines skin texture.', 0, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - DN90', '', 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - DN90', 1, 1),
(48, 4, 3, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - DW85', 2260, 2150, 15, '478438915_prada3.1.jpg', 'Color: DW85 - deep skin with warm undertones', 'What it is: A skincare foundation that refines the skin in three dimensions including tone, luminosity, and texture to reveal soft-filtered skin in real life.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Vitamin E\r\n- Niacinamide\r\n- Lactobacillus Extract Complex\r\n\r\nWhat Else You Need to Know: This soft-matte foundation delivers medium coverage and transfer-resistant wear for up to 24 hours. The breathable and buildable formula with broad spectrum SPF 17 sunscreen improves the look of skin tone, enhances skin?s natural radiance and hydration, and visibly refines skin texture.', 0, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - DW85', '', 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - DW85', 1, 1),
(49, 4, 3, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - MN60', 2260, 2150, 12, '370796509_prada2.1.jpg', 'Color: MN60 - medium skin with neutral undertones', 'What it is: A skincare foundation that refines the skin in three dimensions including tone, luminosity, and texture to reveal soft-filtered skin in real life.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Vitamin E\r\n- Niacinamide\r\n- Lactobacillus Extract Complex\r\n\r\nWhat Else You Need to Know: This soft-matte foundation delivers medium coverage and transfer-resistant wear for up to 24 hours. The breathable and buildable formula with broad spectrum SPF 17 sunscreen improves the look of skin tone, enhances skin?s natural radiance and hydration, and visibly refines skin texture.', 0, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - MN60', '', 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - MN60', 1, 1),
(50, 4, 3, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - LN25', 2260, 2150, 16, '869478383_prada1.1.jpg', 'Color: LN25 - light skin with neutral undertones', 'What it is: A skincare foundation that refines the skin in three dimensions including tone, luminosity, and texture to reveal soft-filtered skin in real life.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Vitamin E\r\n- Niacinamide\r\n- Lactobacillus Extract Complex\r\n\r\nWhat Else You Need to Know: This soft-matte foundation delivers medium coverage and transfer-resistant wear for up to 24 hours. The breathable and buildable formula with broad spectrum SPF 17 sunscreen improves the look of skin tone, enhances skin?s natural radiance and hydration, and visibly refines skin texture.', 0, 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - LN25', '', 'Prada - Beauty Reveal Skin-Optimizing Refillable Soft Matte Foundation - LN25', 1, 1),
(51, 4, 4, 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Rich', 580, 550, 12, '577560477_bb1.1.jpg', 'Color: Rich - rich', 'What it is: A low-maintenance, long-wearing vegan primer that can be used under (or instead of) foundation for smoother-, brighter-looking skin.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Pores and Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Triple-B Complex: Minimizes the look of pores, while visibly brightening and smoothing your skin.\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and triclosan. It is also vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: This formula hydrates, visibly smooths fine lines, and works to visibly correct dullness and enlarged pores while providing medium, buildable coverage and a matte finish. It contains a triple-B complex to minimize the look of pores while visibly brightening and smoothing your skin.\r\n\r\nClinical Results: In a consumer panel, results included:\r\n- 100% of women saw an improvement in surface texture of skin for smoother makeup application immediately after application\r\n- 97% of women saw smoother, softer skin immediately after application\r\n- 94% of women said pores appeared less visible', 0, 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Rich', '', 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Rich', 1, 1),
(52, 4, 4, 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Tan', 580, 550, 16, '906116894_bb2.1.jpg', 'Color: Tan - tan', 'What it is: A low-maintenance, long-wearing vegan primer that can be used under (or instead of) foundation for smoother-, brighter-looking skin.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Pores and Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Triple-B Complex: Minimizes the look of pores, while visibly brightening and smoothing your skin.\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and triclosan. It is also vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: This formula hydrates, visibly smooths fine lines, and works to visibly correct dullness and enlarged pores while providing medium, buildable coverage and a matte finish. It contains a triple-B complex to minimize the look of pores while visibly brightening and smoothing your skin.\r\n\r\nClinical Results: In a consumer panel, results included:\r\n- 100% of women saw an improvement in surface texture of skin for smoother makeup application immediately after application\r\n- 97% of women saw smoother, softer skin immediately after application\r\n- 94% of women said pores appeared less visible', 0, 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Tan', '', 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Tan', 1, 1),
(53, 4, 4, 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Medium', 580, 550, 13, '173164301_bb3.1.jpg', 'Color: Medium - medium skin with a balance of warm & cool undertones', 'What it is: A low-maintenance, long-wearing vegan primer that can be used under (or instead of) foundation for smoother-, brighter-looking skin.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Pores and Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Triple-B Complex: Minimizes the look of pores, while visibly brightening and smoothing your skin.\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and triclosan. It is also vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: This formula hydrates, visibly smooths fine lines, and works to visibly correct dullness and enlarged pores while providing medium, buildable coverage and a matte finish. It contains a triple-B complex to minimize the look of pores while visibly brightening and smoothing your skin.\r\n\r\nClinical Results: In a consumer panel, results included:\r\n- 100% of women saw an improvement in surface texture of skin for smoother makeup application immediately after application\r\n- 97% of women saw smoother, softer skin immediately after application\r\n- 94% of women said pores appeared less visible', 0, 'tarte Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Medium', '', 'tarte Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Medium', 1, 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(54, 4, 4, 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Fair', 580, 550, 13, '209599797_bb4.4.jpg', 'Color: Fair - fair', 'What it is: A low-maintenance, long-wearing vegan primer that can be used under (or instead of) foundation for smoother-, brighter-looking skin.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nSkincare Concerns: Pores and Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Triple-B Complex: Minimizes the look of pores, while visibly brightening and smoothing your skin.\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and triclosan. It is also vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: This formula hydrates, visibly smooths fine lines, and works to visibly correct dullness and enlarged pores while providing medium, buildable coverage and a matte finish. It contains a triple-B complex to minimize the look of pores while visibly brightening and smoothing your skin.\r\n\r\nClinical Results: In a consumer panel, results included:\r\n- 100% of women saw an improvement in surface texture of skin for smoother makeup application immediately after application\r\n- 97% of women saw smoother, softer skin immediately after application\r\n- 94% of women said pores appeared less visible', 0, 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Fair', '', 'tarte - Mini BB Blur Tinted Moisturizer Broad Spectrum SPF 30 - Fair', 1, 1),
(55, 4, 4, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Deep Cool', 1515, 1445, 31, '294410845_cc1.1.jpg', 'Color: Deep Cool', 'What it is: A full-coverage matte foundation for oily skin, skin-balancing serum, and broad-spectrum SPF 40 sunscreen in one.\r\n\r\n\r\n\r\nCoverage: Full\r\n\r\n\r\nFinish: Matte\r\n\r\n\r\nFormulation: Cream\r\n\r\n\r\n\r\nSPF: SPF 40\r\n\r\nHighlighted Ingredients: \r\n- Air Licium?: Instantly creates a skin-blurring effect; absorbs and reduces shine.\r\n\r\n- Lentil Seed Extract: Minimizes the look of pores.\r\n\r\n- Hyaluronic Acid: Hydrates dry skin and prevents the appearance of dry patches.\r\n\r\n\r\n\r\nIngredient Callouts: Non-comedogenic, fragrance free and vegan formula.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This color-correcting matte foundation delivers up to 24-hour skin hydration, 16-hour shine control, and sun protection without a white cast. The lightweight, sweat-proof CC cream immediately blurs the look of large pores while covering fine lines, dark circles, redness and uneven skin tone.\r\n\r\n\r\n\r\nClinical Results: In an 8-week clinical test with daily use, results based on expert grading included:\r\n\r\n- Less visible shine\r\n\r\n- Improved skin texture\r\n\r\n- Improved overall skin quality', 0, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Deep Cool', '', 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Deep Cool', 1, 1),
(56, 4, 4, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Rich Cool', 1515, 1445, 34, '235456654_cc2.1.jpg', 'Color: Rich Cool', 'What it is: A full-coverage matte foundation for oily skin, skin-balancing serum, and broad-spectrum SPF 40 sunscreen in one.\r\n\r\n\r\n\r\nCoverage: Full\r\n\r\n\r\nFinish: Matte\r\n\r\n\r\nFormulation: Cream\r\n\r\n\r\n\r\nSPF: SPF 40\r\n\r\nHighlighted Ingredients: \r\n- Air Licium?: Instantly creates a skin-blurring effect; absorbs and reduces shine.\r\n\r\n- Lentil Seed Extract: Minimizes the look of pores.\r\n\r\n- Hyaluronic Acid: Hydrates dry skin and prevents the appearance of dry patches.\r\n\r\n\r\n\r\nIngredient Callouts: Non-comedogenic, fragrance free and vegan formula.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This color-correcting matte foundation delivers up to 24-hour skin hydration, 16-hour shine control, and sun protection without a white cast. The lightweight, sweat-proof CC cream immediately blurs the look of large pores while covering fine lines, dark circles, redness and uneven skin tone.\r\n\r\n\r\n\r\nClinical Results: In an 8-week clinical test with daily use, results based on expert grading included:\r\n\r\n- Less visible shine\r\n\r\n- Improved skin texture\r\n\r\n- Improved overall skin quality', 0, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Rich Cool', '', 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Rich Cool', 1, 1),
(57, 4, 4, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Light Medium', 1515, 1445, 24, '323801105_cc3.1.jpg', 'Color: Light Medium', 'What it is: A full-coverage matte foundation for oily skin, skin-balancing serum, and broad-spectrum SPF 40 sunscreen in one.\r\n\r\n\r\n\r\nCoverage: Full\r\n\r\n\r\nFinish: Matte\r\n\r\n\r\nFormulation: Cream\r\n\r\n\r\n\r\nSPF: SPF 40\r\n\r\nHighlighted Ingredients: \r\n- Air Licium?: Instantly creates a skin-blurring effect; absorbs and reduces shine.\r\n\r\n- Lentil Seed Extract: Minimizes the look of pores.\r\n\r\n- Hyaluronic Acid: Hydrates dry skin and prevents the appearance of dry patches.\r\n\r\n\r\n\r\nIngredient Callouts: Non-comedogenic, fragrance free and vegan formula.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This color-correcting matte foundation delivers up to 24-hour skin hydration, 16-hour shine control, and sun protection without a white cast. The lightweight, sweat-proof CC cream immediately blurs the look of large pores while covering fine lines, dark circles, redness and uneven skin tone.\r\n\r\n\r\n\r\nClinical Results: In an 8-week clinical test with daily use, results based on expert grading included:\r\n\r\n- Less visible shine\r\n\r\n- Improved skin texture\r\n\r\n- Improved overall skin quality', 0, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Light Medium', '', 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Light Medium', 1, 1),
(58, 4, 4, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Fair Ivory', 1515, 1445, 12, '706496111_cc4.1.jpg', 'Color: Fair Ivory', 'Color: Fair IvoWhat it is: A full-coverage matte foundation for oily skin, skin-balancing serum, and broad-spectrum SPF 40 sunscreen in one.\r\n\r\n\r\n\r\nCoverage: Full\r\n\r\n\r\nFinish: Matte\r\n\r\n\r\nFormulation: Cream\r\n\r\n\r\n\r\nSPF: SPF 40\r\n\r\nHighlighted Ingredients: \r\n- Air Licium?: Instantly creates a skin-blurring effect; absorbs and reduces shine.\r\n\r\n- Lentil Seed Extract: Minimizes the look of pores.\r\n\r\n- Hyaluronic Acid: Hydrates dry skin and prevents the appearance of dry patches.\r\n\r\n\r\n\r\nIngredient Callouts: Non-comedogenic, fragrance free and vegan formula.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This color-correcting matte foundation delivers up to 24-hour skin hydration, 16-hour shine control, and sun protection without a white cast. The lightweight, sweat-proof CC cream immediately blurs the look of large pores while covering fine lines, dark circles, redness and uneven skin tone.\r\n\r\n\r\n\r\nClinical Results: In an 8-week clinical test with daily use, results based on expert grading included:\r\n\r\n- Less visible shine\r\n\r\n- Improved skin texture\r\n\r\n- Improved overall skin qualityry', 0, 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Fair Ivory', '', 'IT Cosmetics - CC+ Cream Natural Matte Foundation with SPF 40 - Fair Ivory', 1, 1),
(59, 4, 4, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Deep', 1515, 1445, 23, '701651958_ccc1.1.jpg', 'Color: Deep - rich ebony shade with neutral undertones', 'What it is: A color-correcting, full-coverage foundation with SPF 50 physical mineral sunscreen that delivers a flawless, radiant finish.\r\n\r\nCoverage: Full\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Cream\r\n\r\nSPF: SPF 50+\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nHighlighted Ingredients:\r\n- Collagen: Enhances visible elasticity for a youthful, smooth appearance.\r\n- Peptides: Help reduce the appearance of wrinkles and support natural collagen for smoother, firmer-looking skin.\r\n- Niacin (B Vitamin): Supports skin barrier function and visible elasticity, promotes a more even-looking tone, and combats the appearance of blemishes and hyperpigmentation.\r\n\r\nIngredient Callouts: Free of sulfates SLS & SLES, parabens, and phthalates.\r\n\r\nWhat Else You Need to Know: Developed with plastic surgeons and dermatologists, this full-coverage CC cream is infused with SPF 50 mineral sunscreen and drops of light technology for radiance. Formulated to improve the appearance of lines and wrinkles, this foundation gives a luminous, supple look to skin.', 0, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Deep', '', 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Deep', 1, 1),
(60, 4, 4, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Rich', 1515, 1445, 15, '786599528_ccc2.1.jpg', 'Color: Rich - golden brown shade with warm undertones', 'What it is: A color-correcting, full-coverage foundation with SPF 50 physical mineral sunscreen that delivers a flawless, radiant finish.\r\n\r\nCoverage: Full\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Cream\r\n\r\nSPF: SPF 50+\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nHighlighted Ingredients:\r\n- Collagen: Enhances visible elasticity for a youthful, smooth appearance.\r\n- Peptides: Help reduce the appearance of wrinkles and support natural collagen for smoother, firmer-looking skin.\r\n- Niacin (B Vitamin): Supports skin barrier function and visible elasticity, promotes a more even-looking tone, and combats the appearance of blemishes and hyperpigmentation.\r\n\r\nIngredient Callouts: Free of sulfates SLS & SLES, parabens, and phthalates.\r\n\r\nWhat Else You Need to Know: Developed with plastic surgeons and dermatologists, this full-coverage CC cream is infused with SPF 50 mineral sunscreen and drops of light technology for radiance. Formulated to improve the appearance of lines and wrinkles, this foundation gives a luminous, supple look to skin.', 0, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Rich', '', 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Rich', 1, 1),
(61, 4, 4, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Medium Tan', 1515, 1445, 21, '\r\n756997785_ccc3.1.jpg', 'Color: Medium Tan - golden beige shade with warm undertones', 'What it is: A color-correcting, full-coverage foundation with SPF 50 physical mineral sunscreen that delivers a flawless, radiant finish.\r\n\r\nCoverage: Full\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Cream\r\n\r\nSPF: SPF 50+\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nHighlighted Ingredients:\r\n- Collagen: Enhances visible elasticity for a youthful, smooth appearance.\r\n- Peptides: Help reduce the appearance of wrinkles and support natural collagen for smoother, firmer-looking skin.\r\n- Niacin (B Vitamin): Supports skin barrier function and visible elasticity, promotes a more even-looking tone, and combats the appearance of blemishes and hyperpigmentation.\r\n\r\nIngredient Callouts: Free of sulfates SLS & SLES, parabens, and phthalates.\r\n\r\nWhat Else You Need to Know: Developed with plastic surgeons and dermatologists, this full-coverage CC cream is infused with SPF 50 mineral sunscreen and drops of light technology for radiance. Formulated to improve the appearance of lines and wrinkles, this foundation gives a luminous, supple look to skin.', 0, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Medium Tan', '', 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Medium Tan', 1, 1),
(62, 4, 4, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Light', 1515, 1445, 12, '785459625_ccc4.1.jpg', 'Color: Light - taupe shade with warm undertones', 'What it is: A color-correcting, full-coverage foundation with SPF 50 physical mineral sunscreen that delivers a flawless, radiant finish.\r\n\r\nCoverage: Full\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Cream\r\n\r\nSPF: SPF 50+\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nHighlighted Ingredients:\r\n- Collagen: Enhances visible elasticity for a youthful, smooth appearance.\r\n- Peptides: Help reduce the appearance of wrinkles and support natural collagen for smoother, firmer-looking skin.\r\n- Niacin (B Vitamin): Supports skin barrier function and visible elasticity, promotes a more even-looking tone, and combats the appearance of blemishes and hyperpigmentation.\r\n\r\nIngredient Callouts: Free of sulfates SLS & SLES, parabens, and phthalates.\r\n\r\nWhat Else You Need to Know: Developed with plastic surgeons and dermatologists, this full-coverage CC cream is infused with SPF 50 mineral sunscreen and drops of light technology for radiance. Formulated to improve the appearance of lines and wrinkles, this foundation gives a luminous, supple look to skin.', 0, 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Light', '', 'IT Cosmetics - CC+ Cream Illumination with SPF 50+ - Light', 1, 1),
(63, 4, 5, 'Bobbi Brown - Under Eye Corrector - Dark Bisque', 1130, 1075, 13, '620436327_con1.1.jpg', 'Color: Dark Bisque - dark pink bisque; corrects purple/red discoloration under the eyes', 'What it is:\r\nA full-coverage undereye corrector designed to brighten under eyes and cover even the most stubborn dark circles.\r\n\r\nWhat it does:\r\nPerfect for very dark under-eye circles, this corrector comes in pink- or peach-based shades that are designed to layer with Bobbi Brown?s yellow-based concealers. Waterproof, sweat-, and humidity-resistant, this long-wearing formula provides a unique, creamy texture. It delivers perfectly smooth coverage that?s easy to blend and won?t crease. It?s infused with skin conditioners to protect the delicate under-eye area.\r\n\r\nWhat else you need to know:\r\nThis creamy, blendable formula instantly neutralizes undereye discoloration and layers perfectly under concealer. Available in 16 color-correcting pink- and peach-based shades formulated for all types of undereye discoloration.', 0, 'Bobbi Brown - Under Eye Corrector - Dark Bisque', '', 'Bobbi Brown - Under Eye Corrector - Dark Bisque', 1, 1),
(64, 4, 5, 'Bobbi Brown - Under Eye Corrector - Bisque', 1130, 1075, 15, '540927287_con2.1.jpg', 'Color: Bisque - pink bisque; corrects purple/blue/red discoloration under the eyes', 'What it is:\r\nA full-coverage undereye corrector designed to brighten under eyes and cover even the most stubborn dark circles.\r\n\r\nWhat it does:\r\nPerfect for very dark under-eye circles, this corrector comes in pink- or peach-based shades that are designed to layer with Bobbi Brown?s yellow-based concealers. Waterproof, sweat-, and humidity-resistant, this long-wearing formula provides a unique, creamy texture. It delivers perfectly smooth coverage that?s easy to blend and won?t crease. It?s infused with skin conditioners to protect the delicate under-eye area.\r\n\r\nWhat else you need to know:\r\nThis creamy, blendable formula instantly neutralizes undereye discoloration and layers perfectly under concealer. Available in 16 color-correcting pink- and peach-based shades formulated for all types of undereye discoloration.', 0, 'Bobbi Brown - Under Eye Corrector - Bisque', '', 'Bobbi Brown - Under Eye Corrector - Bisque', 1, 1),
(65, 4, 5, 'Bobbi Brown - Under Eye Corrector - Porcelain Peach', 1130, 1075, 30, '485682042_con3.1.jpg', 'Color: Porcelain Peach - pale yellow peach; corrects light brown/grey/greenish discoloration under the eyes', 'What it is:\r\nA full-coverage undereye corrector designed to brighten under eyes and cover even the most stubborn dark circles.\r\n\r\nWhat it does:\r\nPerfect for very dark under-eye circles, this corrector comes in pink- or peach-based shades that are designed to layer with Bobbi Brown?s yellow-based concealers. Waterproof, sweat-, and humidity-resistant, this long-wearing formula provides a unique, creamy texture. It delivers perfectly smooth coverage that?s easy to blend and won?t crease. It?s infused with skin conditioners to protect the delicate under-eye area.\r\n\r\nWhat else you need to know:\r\nThis creamy, blendable formula instantly neutralizes undereye discoloration and layers perfectly under concealer. Available in 16 color-correcting pink- and peach-based shades formulated for all types of undereye discoloration.', 0, 'Bobbi Brown - Under Eye Corrector - Porcelain Peach', '', 'Bobbi Brown - Under Eye Corrector - Porcelain Peach', 1, 1),
(66, 4, 5, 'Bobbi Brown - Under Eye Corrector - Porcelain Bisque', 1130, 1075, 12, '678407428_con4.1.jpg', 'Color: Porcelain Bisque - palest pink bisque; corrects purple/blue/red discoloration under the eyes', 'What it is:\r\nA full-coverage undereye corrector designed to brighten under eyes and cover even the most stubborn dark circles.\r\n\r\nWhat it does:\r\nPerfect for very dark under-eye circles, this corrector comes in pink- or peach-based shades that are designed to layer with Bobbi Brown?s yellow-based concealers. Waterproof, sweat-, and humidity-resistant, this long-wearing formula provides a unique, creamy texture. It delivers perfectly smooth coverage that?s easy to blend and won?t crease. It?s infused with skin conditioners to protect the delicate under-eye area.\r\n\r\nWhat else you need to know:\r\nThis creamy, blendable formula instantly neutralizes undereye discoloration and layers perfectly under concealer. Available in 16 color-correcting pink- and peach-based shades formulated for all types of undereye discoloration.', 0, 'Bobbi Brown - Under Eye Corrector - Porcelain Bisque', '', 'Bobbi Brown - Under Eye Corrector - Porcelain Bisque', 1, 1),
(67, 4, 5, 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 13', 1420, 1350, 12, '568174501_armani1.1.jpg', 'Color: 13 - very deep with a pink undertone', 'What it is: A full coverage, soft-matte concealer that seamlessly blends to correct and cover imperfections for up to 24 hours.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nWhat Else You Need to Know: From dark circles to redness and blemishes, this concealer delivers high coverage to conceal imperfections for up to 24 hours. This non-creasing concealer is formulated with glycerin for added hydration and a comfortable, soft-matte finish that looks like skin.', 0, 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 13', '', 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 13', 1, 1),
(68, 4, 5, 'Armani - Beauty Power Fabric + Longwear Matte Concealer - 11 Deep Olive', 1420, 1350, 12, '275250540_armani2.1.jpg', 'Color: 11 - Deep Olive', 'What it is: A full coverage, soft-matte concealer that seamlessly blends to correct and cover imperfections for up to 24 hours.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nWhat Else You Need to Know: From dark circles to redness and blemishes, this concealer delivers high coverage to conceal imperfections for up to 24 hours. This non-creasing concealer is formulated with glycerin for added hydration and a comfortable, soft-matte finish that looks like skin.', 0, 'Armani - Beauty Power Fabric + Longwear Matte Concealer - 11 Deep Olive', '', 'Armani - Beauty Power Fabric + Longwear Matte Concealer - 11 Deep Olive', 1, 1),
(69, 4, 5, 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 5.5 Medium Neutral', 1420, 1350, 6, '238084014_armani3.1.jpg', 'Color: 5.5 - Medium Neutral', 'What it is: A full coverage, soft-matte concealer that seamlessly blends to correct and cover imperfections for up to 24 hours.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nWhat Else You Need to Know: From dark circles to redness and blemishes, this concealer delivers high coverage to conceal imperfections for up to 24 hours. This non-creasing concealer is formulated with glycerin for added hydration and a comfortable, soft-matte finish that looks like skin.', 0, 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 5.5 Medium Neutral', '', 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 5.5 Medium Neutral', 1, 1),
(70, 4, 5, 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 1.5 - Very Fair Neutral', 1420, 1350, 12, '304632912_armani4.1.jpg', 'Color: 1.5 - Very Fair Neutral', 'What it is: A full coverage, soft-matte concealer that seamlessly blends to correct and cover imperfections for up to 24 hours.\r\n\r\nCoverage: Full\r\n\r\nFinish: Matte\r\n\r\nFormulation: Liquid\r\n\r\nWhat Else You Need to Know: From dark circles to redness and blemishes, this concealer delivers high coverage to conceal imperfections for up to 24 hours. This non-creasing concealer is formulated with glycerin for added hydration and a comfortable, soft-matte finish that looks like skin.', 0, 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 1.5 - Very Fair Neutral', '', 'Armani Beauty - Power Fabric + Longwear Matte Concealer - 1.5 - Very Fair Neutral', 1, 1),
(71, 4, 5, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 58C', 1515, 1445, 12, '893427347_guci1.1.jpg', 'Color: 58C - deep with cool undertones', 'What it is: A concealer that conceals imperfections and brightens the complexion with lasting, medium-to-full coverage.\r\n\r\nCoverage: Full\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Black Rose Oil and Hyaluronic Acid: Contain soothing properties that leave skin feeling hydrated and comfortable all day.\r\n- Camella Flower: Smooths out the appearance of skin in the under-eye area.\r\n- Film Formers: Provide a skin-blurring effect, natural-looking glow, and coverage that stays in place.\r\n\r\nWhat Else You Need to Know: This Gucci liquid concealer is suitable for all skin types and blends seamlessly to deliver a breathable, natural finish. The shades are identified by two parts: Numbers reflect depth of skin tone, from fair to deep, and letters represent skin\'s undertone. C for cool - skin rarely tans, with pink hues; N for neutral - skin tans sometimes, with both pink and golden hues; W for warm - skin tans easily, with yellow or golden hues.\r\n\r\nClinical Results: In a 28-day study with 113 consumers:\r\n- 96% say that the formula feels comfortable all day\r\n- 81% say that bare skin looks smoothed over time', 0, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 58C', '', 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 58C', 1, 1),
(72, 4, 5, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 45W', 1515, 1445, 23, '785597601_guci2.1.jpg', 'Color: 45W - medium deep with warm undertones', 'What it is: A concealer that conceals imperfections and brightens the complexion with lasting, medium-to-full coverage.\r\n\r\nCoverage: Full\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Black Rose Oil and Hyaluronic Acid: Contain soothing properties that leave skin feeling hydrated and comfortable all day.\r\n- Camella Flower: Smooths out the appearance of skin in the under-eye area.\r\n- Film Formers: Provide a skin-blurring effect, natural-looking glow, and coverage that stays in place.\r\n\r\nWhat Else You Need to Know: This Gucci liquid concealer is suitable for all skin types and blends seamlessly to deliver a breathable, natural finish. The shades are identified by two parts: Numbers reflect depth of skin tone, from fair to deep, and letters represent skin\'s undertone. C for cool - skin rarely tans, with pink hues; N for neutral - skin tans sometimes, with both pink and golden hues; W for warm - skin tans easily, with yellow or golden hues.\r\n\r\nClinical Results: In a 28-day study with 113 consumers:\r\n- 96% say that the formula feels comfortable all day\r\n- 81% say that bare skin looks smoothed over time', 0, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 45W', '', 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 45W', 1, 1),
(73, 4, 5, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 27N', 1515, 1445, 12, '766000396_guci3.1.jpg', 'Color: 27N - fair medium with neutral undertones', 'What it is: A concealer that conceals imperfections and brightens the complexion with lasting, medium-to-full coverage.\r\n\r\nCoverage: Full\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Black Rose Oil and Hyaluronic Acid: Contain soothing properties that leave skin feeling hydrated and comfortable all day.\r\n- Camella Flower: Smooths out the appearance of skin in the under-eye area.\r\n- Film Formers: Provide a skin-blurring effect, natural-looking glow, and coverage that stays in place.\r\n\r\nWhat Else You Need to Know: This Gucci liquid concealer is suitable for all skin types and blends seamlessly to deliver a breathable, natural finish. The shades are identified by two parts: Numbers reflect depth of skin tone, from fair to deep, and letters represent skin\'s undertone. C for cool - skin rarely tans, with pink hues; N for neutral - skin tans sometimes, with both pink and golden hues; W for warm - skin tans easily, with yellow or golden hues.\r\n\r\nClinical Results: In a 28-day study with 113 consumers:\r\n- 96% say that the formula feels comfortable all day\r\n- 81% say that bare skin looks smoothed over time', 0, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 27N', '', 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 27N', 1, 1),
(74, 4, 5, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 11C', 1515, 1445, 12, '432356893_guci4.1.jpg', 'Color: 11C - fair with cool undertones', 'What it is: A concealer that conceals imperfections and brightens the complexion with lasting, medium-to-full coverage.\r\n\r\nCoverage: Full\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Black Rose Oil and Hyaluronic Acid: Contain soothing properties that leave skin feeling hydrated and comfortable all day.\r\n- Camella Flower: Smooths out the appearance of skin in the under-eye area.\r\n- Film Formers: Provide a skin-blurring effect, natural-looking glow, and coverage that stays in place.\r\n\r\nWhat Else You Need to Know: This Gucci liquid concealer is suitable for all skin types and blends seamlessly to deliver a breathable, natural finish. The shades are identified by two parts: Numbers reflect depth of skin tone, from fair to deep, and letters represent skin\'s undertone. C for cool - skin rarely tans, with pink hues; N for neutral - skin tans sometimes, with both pink and golden hues; W for warm - skin tans easily, with yellow or golden hues.\r\n\r\nClinical Results: In a 28-day study with 113 consumers:\r\n- 96% say that the formula feels comfortable all day\r\n- 81% say that bare skin looks smoothed over time', 0, 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 11C', '', 'Gucci - Concentr? de Beaut? Multi-Use Crease Proof and Hydrating Concealer - 11C', 1, 1),
(75, 4, 5, 'TOM FORD - Traceless Soft Matte Concealer - 8C0 Rich Mocha', 1940, 1840, 16, '345780514_tom1.1.jpg', 'Color: 8C0 Rich Mocha - very deep skin with rich red undertones', 'What it is: A skincare-infused stick formula designed to hydrate skin while also providing buildable coverage.\r\nHighlighted Ingredients:\r\n- Vitamin E: Provides antioxidant protection for skin.\r\n- Hyaluronic Acid\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, sulfates SLS & SLES, triclocarban, and triclosan. It is also gluten-free.\r\n\r\nWhat Else You Need to Know: Traceless Soft Matte Concealer melds a hydrating skincare ingredient with imperfection-blurring makeup technology. This formula features hyaluronic acid for fast-acting, up-to-12-hour hydration and spherical powders to ensure silky-smooth, seamless application for comfortable, non-drying wear.', 0, 'TOM FORD - Traceless Soft Matte Concealer - 8C0 Rich Mocha', '', 'TOM FORD - Traceless Soft Matte Concealer - 8C0 Rich Mocha', 1, 1),
(76, 4, 5, 'TOM FORD - Traceless Soft Matte Concealer - 5C0 Caramel', 1940, 1840, 30, '689936926_tom2.1.jpg', 'Color: 5C0 Caramel - tan skin with pink undertones', 'What it is: A skincare-infused stick formula designed to hydrate skin while also providing buildable coverage.\r\nHighlighted Ingredients:\r\n- Vitamin E: Provides antioxidant protection for skin.\r\n- Hyaluronic Acid\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, sulfates SLS & SLES, triclocarban, and triclosan. It is also gluten-free.\r\n\r\nWhat Else You Need to Know: Traceless Soft Matte Concealer melds a hydrating skincare ingredient with imperfection-blurring makeup technology. This formula features hyaluronic acid for fast-acting, up-to-12-hour hydration and spherical powders to ensure silky-smooth, seamless application for comfortable, non-drying wear.', 0, 'TOM FORD - Traceless Soft Matte Concealer - 5C0 Caramel', '', 'TOM FORD - Traceless Soft Matte Concealer - 5C0 Caramel', 1, 1),
(77, 4, 5, 'TOM FORD - Traceless Soft Matte Concealer - 2N0 Cr?me', 1940, 1840, 12, '940384685_tom3.1.jpg', 'Color: 2N0 Cr?me - light-medium skin with neutral undertones', 'What it is: A skincare-infused stick formula designed to hydrate skin while also providing buildable coverage.\r\nHighlighted Ingredients:\r\n- Vitamin E: Provides antioxidant protection for skin.\r\n- Hyaluronic Acid\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, sulfates SLS & SLES, triclocarban, and triclosan. It is also gluten-free.\r\n\r\nWhat Else You Need to Know: Traceless Soft Matte Concealer melds a hydrating skincare ingredient with imperfection-blurring makeup technology. This formula features hyaluronic acid for fast-acting, up-to-12-hour hydration and spherical powders to ensure silky-smooth, seamless application for comfortable, non-drying wear.', 0, 'TOM FORD - Traceless Soft Matte Concealer - 2N0 Cr?me', '', 'TOM FORD - Traceless Soft Matte Concealer - 2N0 Cr?me', 1, 1),
(78, 4, 5, 'TOM FORD - Traceless Soft Matte Concealer - 0N0 Blanc', 1940, 1840, 23, '459264835_tom4.1.jpg', 'Color: 0N0 Blanc - fair skin with neutral undertones', 'What it is: A skincare-infused stick formula designed to hydrate skin while also providing buildable coverage.\r\nHighlighted Ingredients:\r\n- Vitamin E: Provides antioxidant protection for skin.\r\n- Hyaluronic Acid\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, sulfates SLS & SLES, triclocarban, and triclosan. It is also gluten-free.\r\n\r\nWhat Else You Need to Know: Traceless Soft Matte Concealer melds a hydrating skincare ingredient with imperfection-blurring makeup technology. This formula features hyaluronic acid for fast-acting, up-to-12-hour hydration and spherical powders to ensure silky-smooth, seamless application for comfortable, non-drying wear.', 0, 'TOM FORD - Traceless Soft Matte Concealer - 0N0 Blanc', '', 'TOM FORD - Traceless Soft Matte Concealer - 0N0 Blanc', 1, 1),
(79, 4, 7, 'Laura Mercier - Pure Canvas Primer - Hydrating', 0, 0, 0, '385619899_la1.1.jpg', 'Face Primer', 'What it is: A primer that smooths skin for even makeup application and visibly plumps the skin to improve the look of fine lines and wrinkles.\r\n\r\nFinish: Natural\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Skin Perfecting Complex: Blend of rose extracts that work to moisturize, protect, and smooth skin.\r\n- Minerals: Mineral-enriched water sourced from France known to decrease dullness.\r\n- Glycerin: Attracts moisture to the skin for flawless makeup application.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance.\r\n\r\nWhat Else You Need to Know: This primer is made with over 85 percent skincare ingredients and provides 12 hours of extended wear and up to 24 hours of hydration while improving the look of skin during and after wear. It is also infused with minerals and glycerin, decreases dullness, and attracts moisture for flawless makeup application.\r\n\r\nClinical Results: After 3 weeks of consumer testing on 30 women using Pure Canvas Primer -Hydrating:\r\n- 97% agree that the primer makes the skin feel soft and supple\r\n- 91% agree that the primer helps skin stay moisturized all day\r\n- 91% agree primer improves the quality of makeup wear', 0, 'Laura Mercier - Pure Canvas Primer - Hydrating', '', 'Laura Mercier - Pure Canvas Primer - Hydrating', 1, 1),
(80, 4, 7, 'Laura Mercier - Pure Canvas Primer - Illuminating', 0, 0, 0, '421329783_la2.1.jpg', 'Face Primer', 'What it is: A primer that smooths skin for even makeup application and improves skin\'s radiance.\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Liquid\r\n\r\nHighlighted Ingredients:\r\n- Skin-Perfecting Complex: Blend of rose extracts that work to moisturize, protect, and smooth skin.\r\n- Porcelain Flower: Promotes long-term radiance.\r\n- Encapsulated Luminous Pearls: Provide light reflection on skin for natural radiance.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance.\r\n\r\nWhat Else You Need to Know: This primer provides up to 12 hours of extended wear and decreases the look of hyperpigmentation and dark spots immediately and over time. It is also infused with porcelain flower and luminous pearls and promotes long-term radiance.\r\n\r\nClinical Results: After t3 weeks of consumer testing on 30 women:\r\n- 97% agree that the primer gave skin a luminous healthy glow\r\n- 97% agree that the primer feels weightless\r\n- 94% agree that the primer makes skin feel soft and supple', 0, 'Laura Mercier - Pure Canvas Primer - Illuminating', '', 'Laura Mercier - Pure Canvas Primer - Illuminating', 1, 1),
(81, 4, 7, 'Est?e Lauder - Futurist Aqua Brilliance Watery Glow Primer with Hyaluronic Acid and Glycerin', 1455, 1380, 25, '692629624_es1.1.jpg', 'Face Primer', 'What it is: A lightweight primer that triples skin?s moisture for a plumped and glowing look and can be worn alone or under foundation.\r\n\r\nHighlighted Ingredients:\r\n- Ion-Charged Water\r\n- Triple Moisture Complex: Features two types of hyaluronic acid plus glycerin.\r\n\r\nWhat Else You Need to Know: This primer triples skin?s moisture, strengthens the skin barrier, and protects against environmental stressors for a healthy look. On contact, this refreshing gel-cream primer bursts into micro-size water droplets and visibly smooths skin for a beautiful makeup application. It?s infused with naturally derived ingredients and provides all-day and long-term moisture.\r\n\r\nClinical Results: In a clinical study on 19 panelists:\r\n- 95% of panelists showed a 113% increase in moisture immediately and after 8 hours of wearing product\r\n- 100% of panelists showed a more even skin tone immediately and after 8 hours of wearing product\r\n- 100% of panelists showed an increase in radiance immediately and after 8 hours of wearing product', 0, 'Est?e Lauder - Futurist Aqua Brilliance Watery Glow Primer with Hyaluronic Acid and Glycerin', '', 'Est?e Lauder - Futurist Aqua Brilliance Watery Glow Primer with Hyaluronic Acid and Glycerin', 1, 1),
(82, 4, 7, 'Gucci - Hydrating Silk Priming Serum', 1935, 1840, 26, '756148704_gucp1.1.jpg', 'Face Primer', 'What it is: A primer that creates a luminous finish, visibly evens tone, and visibly plumps skin while creating a soft glow effect.\r\n\r\nHighlighted Ingredients:\r\n\r\n- Squalane: Helps replenish the moisture barrier, leaving skin soft and supple.\r\n\r\n- Powder Technology: Imparts an elegant silky texture for better blendability and a natural finish.\r\n\r\n- Elastomer Technology: Provides a soft-focus effect, which minimizes the look of pores and evens texture.\r\n\r\nWhat Else You Need to Know: Optimizing foundation coverage for all-day wear, this non-sticky, smooth formula is suitable for all skin types. This primer forms an imperceptibly silky second-skin-like film once applied. When used to prepare the skin for foundation, pores, lines, and wrinkles appear less visible and makeup stays put.', 0, 'Gucci - Hydrating Silk Priming Serumn', '', 'Gucci - Hydrating Silk Priming Serum', 1, 1),
(83, 4, 7, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Redness Corrector', 1290, 1225, 36, '381077760_makeupf1.1.jpg', 'Face Primer', 'What it is: A color-correcting primer that delivers an even complexion and radiant-looking skin that lasts all day.\r\n\r\nFinish: Natural\r\n\r\nSkin Type: Normal, Oily, Dry, Combination\r\n\r\nConcerns: Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Ginseng: Known to protect, promote radiant-looking skin, and maintain a smooth complexion.\r\n\r\nWhat Else You Need to Know: Even your complexion with this color-correcting primer, which reduces dullness. Packed with ginseng, this illuminating formula adds radiance and hydration, corrects skin tone for up to 24 hours, and is ideal for fair to light skin tones with sallowness.', 0, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Redness Corrector', '', 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Redness Corrector', 1, 1),
(84, 4, 7, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Fresh brightner', 1290, 1225, 15, '552797246_pembe1.1.jpg', 'Face Primer', 'What it is: A color-correcting primer that delivers an even complexion and radiant-looking skin that lasts all day.\r\n\r\nFinish: Natural\r\n\r\nSkin Type: Normal, Oily, Dry, Combination\r\n\r\nConcerns: Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Ginseng: Known to protect, promote radiant-looking skin, and maintain a smooth complexion.\r\n\r\nWhat Else You Need to Know: Even your complexion with this color-correcting primer, which reduces dullness. Packed with ginseng, this illuminating formula adds radiance and hydration, corrects skin tone for up to 24 hours, and is ideal for fair to light skin tones with sallowness.', 0, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Fresh brightner', '', 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Fresh brightner', 1, 1),
(86, 4, 7, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Dullness eraser', 1290, 1225, 26, '281085984_sari1.1.jpg', 'Face Primer', 'What it is: A color-correcting primer that delivers an even complexion and radiant-looking skin that lasts all day.\r\n\r\nFinish: Natural\r\n\r\nSkin Type: Normal, Oily, Dry, Combination\r\n\r\nConcerns: Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Ginseng: Known to protect, promote radiant-looking skin, and maintain a smooth complexion.\r\n\r\nWhat Else You Need to Know: Even your complexion with this color-correcting primer, which reduces dullness. Packed with ginseng, this illuminating formula adds radiance and hydration, corrects skin tone for up to 24 hours, and is ideal for fair to light skin tones with sallowness.', 0, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Dullness eraser', '', 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Dullness eraser', 1, 1),
(87, 4, 7, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Grayness reducer', 1290, 1225, 15, '807039724_turuncu1.1.jpg', 'Face Primer', 'What it is: A color-correcting primer that delivers an even complexion and radiant-looking skin that lasts all day.\r\n\r\nFinish: Natural\r\n\r\nSkin Type: Normal, Oily, Dry, Combination\r\n\r\nConcerns: Uneven Skin Tone\r\n\r\nHighlighted Ingredients:\r\n- Ginseng: Known to protect, promote radiant-looking skin, and maintain a smooth complexion.\r\n\r\nWhat Else You Need to Know: Even your complexion with this color-correcting primer, which reduces dullness. Packed with ginseng, this illuminating formula adds radiance and hydration, corrects skin tone for up to 24 hours, and is ideal for fair to light skin tones with sallowness.', 0, 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Grayness reducer', '', 'MAKE UP FOR EVER - Color Correcting Step 1 Primers - Grayness reducer', 1, 1),
(88, 4, 7, 'Glow Recipe - Watermelon Glow Niacinamide Dew Drops Serum', 1130, 1075, 36, '491949424_wate1.1.jpg', 'Face Primer', 'What it is: A breakthrough, multi-use highlighting serum that hydrates and visibly reduces the look of hyperpigmentation for a dewy, reflective glow?without mica, glitter, or gray cast.\r\n\r\n\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\n\r\n\r\nSkincare Concerns: Dryness and Dullness\r\n\r\n\r\n\r\nFormulation: Lightweight Gel\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Niacinamide: Vitamin B3 and antioxidants visibly reduce the look of hyperpigmentation, correct the look of dullness, and minimize the appearance of pores.\r\n\r\n- Watermelon: Hydrates, delivers essential vitamins and amino acids, and visibly brightens skin.\r\n\r\n- Hyaluronic Acid: A humectant that anchors moisture within the skin, keeping it hydrated and bouncy by retaining 1000 times its weight in water.\r\n\r\n\r\n\r\nIngredient Callouts: This product is vegan, cruelty-free, and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Unleash a dewy glow with this versatile skincare and makeup hybrid. This lightweight gel delivers a glow quickly and over time for a dewy complexion. Use as a hydrating, visibly brightening serum for all skin types before moisturizer, as a primer or highlighter in your makeup routine. This product is ophthalmologist tested.\r\n\r\n\r\n\r\nClinical Results:\r\n\r\nBased on a consumer use study of 32 participants\r\n\r\nAfter 4 weeks:\r\n\r\n97% agree this product made their skin look more glowy.\r\n\r\n94% agree this product made their skin look brighter\r\n\r\n94% agree this product made their skin look and feel more hydrated.\r\n\r\n\r\n\r\nClean & Planet Aware\r\nOur ambitious curation of beauty made without controversial ingredients from brands dedicated to making meaningful environmental commitments, including sustainable ingredients and sourcing, packaging, corporate commitments, and consumer transparency.', 0, 'Glow Recipe - Watermelon Glow Niacinamide Dew Drops Serum', '', 'Glow Recipe - Watermelon Glow Niacinamide Dew Drops Serum', 1, 1),
(89, 4, 7, 'Fenty Beauty by Rihanna - Pro Filt\'r Hydrating Primer', 645, 615, 23, '303721474_fb1.1.jpg', 'Face Primer', 'What it is: A lightweight, hydrating makeup primer for normal to dry skin that nurtures, keeps skin comfortable all day, and extends foundation wear.\r\n\r\nSkin Type: Normal, Dry, and Combination\r\n\r\nHighlighted Ingredients:\r\n- Grape Seed Oil and Sodium Hyaluronate: Hydrate skin.\r\n\r\nIngredient Callouts:This product is cruelty-free.\r\n\r\nWhat Else You Need to Know: This lightweight yet moisture rich face primer instantly hydrates skin, and keeps it hydrated all day and extends makeup wear. Formulated with grape seed oil and sodium hyaluronate, this fast-absorbing formula melts into skin, for a silky-smooth finish that normal to dry skin types will love.', 0, 'Fenty Beauty by Rihanna - Pro Filt\'r Hydrating Primer', '', 'Fenty Beauty by Rihanna - Pro Filt\'r Hydrating Primer', 1, 1),
(90, 4, 7, 'Fenty Beauty by Rihanna - Pro Filt\'r Mattifying Primer', 0, 0, 0, '802420230_fb2.1.jpg', 'Face Primer', 'What it is: A mattifying primer for combination-to-oily skin that delivers maximum all-day shine control while improving and extending the wear of foundation.\r\n\r\nSkin Type: Normal, Combination, and Oily\r\n\r\nHighlighted Ingredients:\r\n- Blue Agave Extract: Helps to mattify the skin.\r\n\r\nIngredient Callouts: This product is oil-free and cruelty-free.\r\n\r\nWhat Else You Need to Know: Mattify skin, fight shine all day, and smooth the look of pores without feeling tight or dry with the Pro Filt\'r Mattifying Primer. Paired with Pro Filt\'r foundation (sold separately), this oil-free primer?made with Blue Agave Extract and blurring powder?helps makeup blend better, last longer, and stay fresh all day without caking.', 0, 'Fenty Beauty by Rihanna - Pro Filt\'r Mattifying Primer', '', 'Fenty Beauty by Rihanna - Pro Filt\'r Mattifying Primer', 1, 1),
(91, 4, 7, 'HUDA BEAUTY - Water Jelly Hydrating Face Primer', 1065, 1010, 15, '247479213_huda1.1.jpg', 'Face Primer', 'ONLY AT SEPHORA\r\nWhat it is: A face primer that quenches skin with a surge of moisture to create the perfect canvas for longer-lasting, flawless makeup.\r\n\r\nWhat Else You Need to Know: This ultra-hydrating skin complex helps to lock in moisture and keep your foundation in place. The unique jelly texture melts into the skin for quick hydration that provides a makeup-ready canvas in seconds.', 1, 'HUDA BEAUTY - Water Jelly Hydrating Face Primer', '', 'HUDA BEAUTY - Water Jelly Hydrating Face Primer', 1, 1),
(92, 2, 13, 'Lanc?me - Lash Id?le Lengthening & Volumizing Mascara', 965, 920, 25, '638096707_nas1.1.jpg', 'Mascara - Black', 'What it is: A volumizing and lengthening mascara that targets every single lash for instant lift, length, and fanned-out volume without clumps.\r\n\r\nFormulation Type: Volumizing, Lengthening\r\n\r\nHighlighted Ingredients:\r\n- White Tea Extract: An antioxidant-rich ingredient that conditions and cares for lashes.\r\n\r\nIngredient Callouts: Free of mineral oil and sulfates SLS & SLES.\r\n\r\nWhat Else You Need to Know: This mascara has a curved wand that pushes up and fans out lashes for an open-eye effect with up to 24 hours of lasting power. 360 micro-size bristles grab and lengthen every lash from root to tip (no matter how small), while the lightweight gel formula leaves the lashes feathery soft?without flaking, clumping, or smudging.\r\n\r\nClinical Results: In a consumer test on a panel of 103 women:\r\n- 95% saw instant lash lift\r\n- 94% saw instant volume\r\n- 90% saw clump-free lashes', 0, 'Lanc?me - Lash Id?le Lengthening & Volumizing Mascara', '', 'Lanc?me - Lash Id?le Lengthening & Volumizing Mascara', 1, 1),
(93, 2, 13, 'Yves Saint Laurent - Lash Clash Extreme Volume Mascara', 1035, 985, 32, '917835815_mas2.1.jpg', 'Color: Uninhibited Brown - deep rich brown', 'What it is: A couture mascara with an oversized brush and fragrance-free paraben-free formula for intense color and extreme volume with up to all-day wear.\r\n\r\n\r\n\r\nIngredient Callouts: This product is vegan, free of parabens and contains less than one percent synthetic fragrance.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This volumizing mascara adds pigmented color, 200% more volume with up to 24-hour smudge-proof wear. The massive brush and formula coat each lash to deliver varying levels of volume from one to five strokes. Outfitted in sleek packaging, Lash Clash is an ultimate luxury must-have.\r\n\r\n\r\n\r\nClinical Results: In a self-assessment test of 100 women:\r\n\r\n- 96% said product wears for up to 24 hours\r\n\r\n- 90% said brush spreads formula evenly from lash root to tip\r\n\r\n- 93% said brush catches all lashes, even the shortest ones\r\n\r\n\r\n\r\nThis product is an Allure Best of Beauty award winner.', 0, 'Yves Saint Laurent - Lash Clash Extreme Volume Mascara', '', 'Yves Saint Laurent - Lash Clash Extreme Volume Mascara', 1, 1),
(94, 2, 13, 'Lanc?me - D?finicils High Definition Lengthening Mascara', 950, 915, 35, '554990601_mas3.1.jpg', 'Color : Black', 'What it is: An iconic defining mascara that creates the look of longer lashes with a flake-free, non-clumping formula.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, formaldehydes, phthalates, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, and triclocarban, and contains less than one percent of synthetic fragrances.\r\n\r\nWhat Else You Need to Know: This lengthening mascara defines lashes using polymers formulated to lift and lengthen. The comb-like brush compliments the lengthening formula with a \"hedgehog\" bristle pattern that dispenses the perfect amount of product while separating for a natural eyelash look.', 0, 'Lanc?me - D?finicils High Definition Lengthening Mascara', '', 'Lanc?me - D?finicils High Definition Lengthening Mascara', 1, 1),
(95, 2, 13, 'Bobbi Brown - Eye Opening Mascara', 1080, 960, 23, '775354832_mas4.1.jpg', 'Color : Black', 'What it is: A high-impact, high-drama mascara with a jumbo brush that fans out lashes while thickening, curling, and lifting for the ultimate eye-opening effect.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, and phthalates. This product is also vegan and gluten-free.\r\n\r\nWhat Else You Need to Know: Designed exclusively for this mascara, the jumbo brush grabs and visibly pushes each and every lash upward. The unique formula creates a long-lasting curl that holds in place.', 0, 'Bobbi Brown - Eye Opening Mascara', '', 'Bobbi Brown - Eye Opening Mascara', 1, 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(96, 2, 13, 'Bobbi Brown Smokey Eye Mascara', 1080, 960, 35, '334506058_mas5.1.jpg', 'Color: Black', 'What it is:\r\nA kohl-pigmented mascara that delivers instant volume and super-saturated length for dramatically dark, stretched-out lashes.\r\n\r\nWhat it does:\r\nThis creamy, kohl-pigmented mascara builds volume lash by lash, as opposed to traditional volumizing formulas that create the appearance of volume by clumping lashes together. The result is thicker, longer, bolder lashes in an instant?the perfect complement to any eye look.', 0, 'Bobbi Brown Smokey Eye Mascara', '', 'Bobbi Brown Smokey Eye Mascara', 1, 1),
(97, 2, 13, 'Benefit Cosmetics - Whoop Lash-Lash Enhancing Serum', 1560, 1495, 36, '137758727_mas6.1.jpg', 'Lash Enhancing Serum', 'What it is: A gentle, lash-enhancing serum?formulated without prostaglandin or its derivatives?that gives you visibly fuller, thicker, longer lashes over time.\r\n\r\nHighlighted Ingredients:\r\n- Hibiscus Flower and Safflower Extracts: Help lashes look thicker and fuller.\r\n- Rice Protein: Visibly lengthens lashes.\r\n- Biotin: Conditions lashes.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also gluten-free.\r\n\r\nWhat Else You Need to Know: This lash serum promotes visibly healthier, more volumized lashes in six weeks, plus further enhancements at 12 weeks. With a custom blend of plant extracts, rice protein, and vitamins, it leaves lashes lush-looking and conditioned. The formula is clinically tested and suitable for sensitive eyes.\r\n\r\nClinical Results: In a self-evaluation by 129 participants, over 6 weeks:\r\n- 95% said lashes looked fuller\r\n- 93% said lashes looked thicker\r\n\r\nIn a self-evaluation by 127 participants, over 12 weeks:\r\n- 94% said lashes looked longer', 0, 'Benefit Cosmetics - Whoop Lash-Lash Enhancing Serum', '', 'Benefit Cosmetics - Whoop Lash-Lash Enhancing Serum', 1, 1),
(98, 2, 13, 'Olaplex - Lashbond Building Serum', 2025, 1920, 42, '337029397_mas7.1.jpg', 'Lashbond Building Serum', 'What it is: A highly concentrated, clinically tested lash serum that creates the look of longer, thicker, stronger, and healthier lashes in as little as four weeks.\r\n\r\nHighlighted Ingredients:\r\n- Olaplex Peptide Complex Technology?: Proprietary blend to support the natural growth cycle and lash retention.\r\n- Olaplex Bond Building Technology?: Supports the skin barrier for a better environment for natural lash growth.\r\n- Hyaluronic Acid and Biotin: Promotes healthy-looking lashes and reduces the feel and look of dry, brittle lashes.\r\n\r\nIngredient Callouts: This product is vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: This lightweight serum delivers powerful lash enhancers, including Olaplex Peptide Complex Technology? to support the natural growth cycle and lash retention. See more conditioned, healthier-looking lashes in as little as two weeks and longer-, fuller-looking lashes in as little as four weeks.*\r\n\r\nClinical Results: As reported by participants at the conclusion of a 12-week consumer-perception clinical study of 33 subjects with 2X daily use:\r\n- 97% reported improvement in the appearance of denser lashes\r\n- 97% reported improvement in the appearance of longer lashes\r\n- 100% reported improvement in the appearance of thicker lashes*\r\n\r\n*Results may vary.\r\n\r\n\r\n\r\nOLAPLEX products are thoroughly tested in accordance with industry standards in-house and by independent third-party laboratories for safety and efficacy', 0, 'Olaplex - Lashbond Building Serum', '', 'Olaplex - Lashbond Building Serum', 1, 1),
(99, 2, 13, 'Vegamour -  GRO Volumizing Lash Serum', 2250, 2095, 39, '333175113_mas8.1.jpg', 'Volumizing Lash Serum', 'ONLY AT SEPHORA\r\nWhat it is: A plant-based lash enhancing serum with clinically tested phytoactives that promote longer, thicker looking lashes.\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\nHighlighted Ingredients:\r\n- Red Clover/ Mung Bean: Shown to help prevent key hair loss causes (IGF1, BMP4)\r\n- Amino Acid Peptide: Helps build strong cells around the dermal papilla regenerating the follicle\r\n\r\nIngredient Callouts: This product is vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: It is safe for sensitive eyes, will not change eye color or discolor eyelids and is formulated without hormones or carcinogens. Follow the directions and expect visible results in as soon as 4-6 weeks.\r\n\r\n\r\n\r\n\r\nCLEAN at Sephora is our commitment to offering formulas that go beyond regulatory standards to avoid controversial ingredients without sacrificing on effectiveness.', 0, 'Vegamour -  GRO Volumizing Lash Serum', '', 'Vegamour -  GRO Volumizing Lash Serum', 1, 1),
(100, 2, 12, 'PATRICK TA - Major Dimension III Matte Eyeshadow Palette', 2100, 2100, 39, '559840396_eyesh1.1.jpg', 'Eyeshadow Palette', 'What it is: A velvety matte eyeshadow palette that blends warm and cool nudes for ultimate versatility.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: The shades in this palette can be worn alone or layered, blended, and contoured to create the most multi-dimensional looks that go from day to night. The cream bases allow you to really sculpt and intensify your eye looks. The shadows can be worn alone or layered over the bases for maximum depth and richness.\r\n\r\nThis Palette Contains:\r\n- 10 x 0.06 oz/ 1.8 g powder eyeshadows in Mandatory, Refined, Classic, Staple, Needed, Essential, Crucial, Fundamental, Trademark, Irreplaceable\r\n- 2 x 0.06 oz/ 1.85 g cream eyeshadows in Non-Negotiable, Impressive\r\n\r\nPalette Size: Full size', 0, 'PATRICK TA - Major Dimension III Matte Eyeshadow Palette', '', 'PATRICK TA - Major Dimension III Matte Eyeshadow Palette', 1, 1),
(101, 2, 12, 'Anastasia Beverly Hills - Modern Renaissance Eye Shadow Palette', 1315, 1315, 48, '688072351_eyesh2.1.jpg', 'Eye Shadow Palette', 'What it is:\r\nAn essential eyeshadow collection with 14 shades in neutral to berry tones.\r\n\r\nWhat it does:\r\nA present-day take on Renaissance colors, this eye palette features 14 shades that let you create stylish, day to night looks. From the earthy yellow and ultra-matte finish of Golden Ochre to Primavera?s shimmer gold with a metallic finish, this palette?s high-pigment shadows are crease and fade-resistant and are sure to bring modern elegance to your eye looks.\r\n\r\nThis palette contains:\r\n- 14 x 0.02 oz Eyeshadow in Tempera (beige with an ultra-matte finish), Golden Ochre (earthy yellow with an ultra-matte finish), Vermeer (iridescent shell with a metallic finish), Buon Fresco (antique lavender with an ultra-matte finish), Antique Bronze (metallic sable with a satin finish), Love Letter (raspberry with an ultra-matte finish), Cyprus Umber (dark coffee with an ultra-matte finish), Raw Sienna (neutral amber with an ultra-matte finish), Burnt Orange deep orange with an ultra-matte finish), Primavera (shimmery gold with an ultra-matte finish), Red Ochre (sienna with an ultra-matte finish), Venetian Red (crimson with an ultra-matte finish), Warm Taupe (earthy gray with an ultra-matte finish), Realgar (brick with an ultra-matte finish)\r\n- Double-ended shadow brush\r\n\r\nWhat it is formulated WITHOUT:\r\n- Parabens\r\n- Sulfates\r\n- Phthalates', 0, 'Anastasia Beverly Hills - Modern Renaissance Eye Shadow Palette', '', 'Anastasia Beverly Hills - Modern Renaissance Eye Shadow Palette', 1, 1),
(102, 2, 12, 'tarte - Tartelette? Juicy Amazonian Clay Eyeshadow Palette', 1450, 1350, 25, '319267554_eyesh3.1.jpg', 'Eyeshadow Palette', 'What it is: A new tartelette? juicy Amazonian clay palette that includes 12 rosy, bronze, and neutral lid, line, and crease shades.\r\n\r\nHighlighted Ingredients:\r\n- Amazonian Clay: Nature?s most perfect ingredient for better, longer, truer wear.\r\n\r\nIngredient Callouts: Free of parabens, phthalates, mineral oil, sulfates SLS & SLES, and triclosan. It is also gluten-free and cruelty-free.\r\n\r\nWhat Else You Need to Know: This palette includes 12 juicy rosy, bronze, and neutral lid, line, and crease shades. The shades are arranged in coordinated rows to create everyday effortless looks. The nutrient-rich colored clays each uniquely soothe and soften skin, making them perfect for all-day wear.\r\n\r\nThis Set Contains:\r\n- 12 x 0.053 oz/ 1.5 g eyeshadows in Paradise (peach champagne shimmer), Rose (matte rosy pink), Orchid (pink shimmer), Dream Chaser (pink-plum shimmer), Blossom (matte peachy pink), Shine (deep copper shimmer) Petal (matte soft rose), Luscious (matte cinnamon), Reflect (golden champagne shimmer) Happiness (matte rosy tan), Dusk (rosy-brown shimmer), Euphoric (matte cool deep brown)', 0, 'tarte - Tartelette? Juicy Amazonian Clay Eyeshadow Palette', '', 'tarte - Tartelette? Juicy Amazonian Clay Eyeshadow Palette', 1, 1),
(103, 2, 12, 'NARS - Afterglow Irresistible Eyeshadow Palette', 1800, 1800, 48, '111727160_eyesh4.1.jpg', 'Eyeshadow Palette', 'LIMITED EDITION\r\nWhat it is: A limited-edition palette of twelve eyeshadows in romantic rose, peach, and neutral tones.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This limited-edition palette helps you create romantic looks with rose, peach, and neutral shadows. Build and blend impeccably enhanced eyes with high-impact color and tempting textures, including matte, satin, and gleaming glitter, shimmer, and sparkling finishes.\r\n\r\n\r\n\r\nThis Set Contains:\r\n\r\n- 12 x 0.04 oz/ 1.2 g Adoration (satin champagne), Amorous (sparkling gold), Blaze (metallic sanguine), Hot Rod (sparkling burnished orange), Magnetism (matte rust pink), High Stakes (shimmering rose pink), Take A Shot (matte cinnamon), Frisky (glittering amethyst), Mood Swing (matte chestnut), Pure Bliss (satin copper), Midnight (matte espresso), Nitro (sparkling deep brown)', 0, 'NARS - Afterglow Irresistible Eyeshadow Palette', '', 'NARS - Afterglow Irresistible Eyeshadow Palette', 1, 1),
(104, 2, 12, 'Natasha Denona - Hy-per Natural Face Palette', 1950, 1950, 36, '276624145_eyesh5.1.jpg', 'Palette', 'What it is: An essential no-makeup-makeup palette showcasing five hybrid eyeshadows, a creamy powder-blush duo, and a bronzer and contour trio.\r\n\r\nIngredient Callouts: Free of parabens and mineral oil. It is also cruelty-free.\r\n\r\nWhat Else You Need to Know: In this palette, you?ll find five eyeshadows named after different moods and occasions. Now featuring a talc-free Hy-Per Silk formula, these eyeshadows have a silky-soft gel-powder texture and come in four wearable shades along with one sparkling topper finish. Use each individually to create a natural, monochromatic look or pair them up to add rich dimension. The palette also includes a creamy powder-blush duo and a versatile Hy-Tech bronzer and contour trio, providing you with the perfect no-makeup-makeup routine in a travel-friendly format. Plus, all the formulas support your skin\'s ability to maintain natural hydration.\r\n\r\nThis Palette Contains:\r\n- 2 x 0.18 oz/ 5 g Blushes (pink, coral pink)\r\n- 3 x 0.13 oz/ 3.69 g Contours/Bronzers  (light, medium, dark)\r\n- 5 x 0.02 oz/ 0.57 g Eyeshadows in Everyday (medium light brown), Dreamy (sparkling wet-effect nude champagne), Statement (medium dark brown), Soft (rosy vintage peach), Casual (silk-satin taupe)\r\n\r\nPalette Size: 3.35\"w x 5.67\"d x 0.59\"h (full size)', 0, 'Natasha Denona - Hy-per Natural Face Palette', '', 'Natasha Denona - Hy-per Natural Face Palette', 1, 1),
(105, 2, 12, 'Natasha Denona - Retro Glam Eyeshadow Palette', 2150, 1950, 36, '665816103_eyesh6.1.jpg', 'Eyeshadow Palette', 'What it is: An eyeshadow palette that combines greens, pinks, and neutral nudes with a variety of finishes, in a collection of all-new shades.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens and mineral oil. It is also gluten-free and cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This eyeshadow palette brings two of Natasha\'s most celebrated creations into a new mini-sized eyeshadow palette concept. This dynamic color story combines the greens, pinks, and neutral nudes of the Mini Retro Eyeshadow Palette with a variety of seductive Glam Eyeshadow Palette finishes in a collection of all-new shades.\r\n\r\n\r\n\r\nThis Set Contains:\r\n\r\n- 14 x 0.04 oz/ 1.28 g Jazzy 454M (metallic dark-cool brown), Oscar 455M (metallic light-medium vintage champagne), Evergreen 456CP (matte cream powder medium-dark sage green), Marlin 457M (metallic light-medium sage green), Maxi 458M (metallic medium-dark warm taupe), Sage 459CM (matte medium sage green), Holly 460CM (matte light-neutral rose), Fringe 461C (matte pastel sage green), Fay 462CM (matte medium muted clay), Flutter 463K (sparkling light-champagne pink), Lucy 464CM (matte light limestone), Palladian 465M (metallic pastel sage green), Belle 466CM (matte medium dusty rose), Oz 467M (metallic medium-dark muted forest green)', 0, 'Natasha Denona - Retro Glam Eyeshadow Palette', '', 'Natasha Denona - Retro Glam Eyeshadow Palette', 1, 1),
(106, 2, 12, 'Natasha Denona - Retro Eyeshadow Palette', 2150, 1950, 36, '797437809_eyesh7.1.jpg', 'Eyeshadow Palette', 'What it is: A midi-sized, must-have eyeshadow palette featuring 15 romantic burgundy and mauve shades combined with gray-browns, taupes, dusty roses, and vintage pinks. Perfect to create romantic, retro-inspired looks.\r\n\r\nIngredient Callouts: Free of parabens, phthalates, and mineral oil. It is also cruelty-free and comes in recyclable packaging.\r\n\r\nWhat Else You Need to Know: Providing maximum color payoff with minimal effort, these shades blend seamlessly so you can achieve vibrant, ultra-pigmented, long-lasting looks. The richly pressed pigmented shadows in this palette leave the skin with an optimum-looking texture and comfortable all-day wear. Shades and formulas were hand-designed by world-renowned makeup artist Natasha Denona. Made with the highest-quality pure color pigments, dazzling chroma crystals, and luminous mineral pearls. The buttery-smooth, hydrating eyeshadow formula wears beautifully on any skin type and skin tone.\r\n\r\nThis Palette Contains:\r\n- 15 x 0.045 oz/ 1.29 g eyeshadows in 392DC Glitz, 393CP Andy, 394M Jude, 395CM Mod, 396CP Vivienne, 397CM Groove, 398CP Opart, 399K Psychedelic, 400CP Go-Go, 401CP Patty, 402M Swing, 144CM Nude Mauve, 403CP Rebellion, 149M Helio, 137CM Amara\r\n\r\nPalette Size: 15 x 0.65 oz/ 19.25 g', 0, 'Natasha Denona - Retro Eyeshadow Palette', '', 'Natasha Denona - Retro Eyeshadow Palette', 1, 1),
(107, 2, 12, 'HUDA BEAUTY - Rose Quartz Eyeshadow Palette', 2100, 2100, 65, '392500026_eyesh8.1.jpg', 'Eyeshadow Palette', 'What it is: A palette that allows you to play with and create magnetic makeup looks offering 18 rosy tints and earthy shades across five different textures.\r\n\r\nIngredient Callouts: This product is cruelty-free.\r\n\r\nWhat Else You Need to Know: This powerful palette includes eight velvety-soft pigmented mattes; three high-shine buttery metallics; three pearly, soft-shine metallics; three quartz-inspired multi-shimmer marble creams; and one pearly gloss hybrid. The shades blend true to color and were designed to look vibrant and stunning on everyone.\r\n\r\n\"The rose quartz stone represents unconditional love, emotional healing, and encourages you to accept yourself. It?s a crystal that?s super personal to me, and now more than ever, my hope is that this collection empowers everyone to recharge and realign.\" ?Huda Kattan\r\n\r\nThis Set Contains:\r\n- 18 x eyeshadows in Quartz (shimmery copper cream marble), Aura (earth-brown matte), Gratitude (latte-brown matte), Cosmic Love (shimmery plum, pink, and blue cream marble), Empowered (dark gunmetal powder metallic), Joy (rose-glow powder metallic), Precious (deep cool-brown matte), Energized (cream gold metallic), Love Stone (white holographic and pink-hybrid gloss), Cherished (cold-pink matte), Blissful (silver-green creamy metallic), Happiness (bright-pink matte), Mantra (carbon-gray matte), Serenity (soft-pink matte), Abundance (dusty-purple powder metallic), Moon Magic (blue and pink holographic cream), Radiate (taupe-brown matte), Juicy (white and pink shimmery cream marble)\r\n\r\nPalette Size: Full size', 0, 'HUDA BEAUTY - Rose Quartz Eyeshadow Palette', '', 'HUDA BEAUTY - Rose Quartz Eyeshadow Palette', 1, 1),
(108, 2, 2, 'CLINIQUE Quickliner? For Eyes Eyeliner', 750, 690, 12, '995634733_eyeliner1.1.jpg', 'Color: Black/Brown', 'What it is:\r\nA silky pencil liner with no sharpening required.\r\n\r\nWhat it does:\r\nThis automatic eye liner pencil twists up and glides on to line and define with ease. It smudges to a smooth blur of color with the convenient smudge tool on the opposite end. It needs no sharpening and the silky, transfer-resistant formula is always ready and stays on all day.\r\n\r\nWhat it is formulated WITHOUT:\r\n- Parabens\r\n\r\nWhat else you need to know:\r\nOphthalmologist tested.', 0, 'CLINIQUE Quickliner? For Eyes Eyeliner', '', 'CLINIQUE Quickliner? For Eyes Eyeliner', 1, 1),
(109, 2, 2, 'Too Faced - Killer Liner 36 Hour Waterproof Gel Eyeline', 750, 690, 23, '430477180_eyeliner2.1.jpg', 'Color: Killer Black - intense black', 'What it is: A waterproof gel eyeliner that glides on for ultra-smooth, razor-sharp, killer lines that last for up to 36 hours.\r\n\r\nIngredient Callouts: Free of parabens. It is also gluten-free and cruelty-free.\r\n\r\nWhat Else You Need to Know: This easy-to-use gel eyeliner glides on smoothly for easy application and doesn?t dry down rapidly, allowing playtime to smoke out the liner. Along with being long-wearing and waterproof, this eyeliner is transfer resistant and non-flaking.', 0, 'Too Faced - Killer Liner 36 Hour Waterproof Gel Eyeline', '', 'Too Faced - Killer Liner 36 Hour Waterproof Gel Eyeline', 1, 1),
(110, 2, 2, 'Urban Decay - 24/7 Inks Easy Ergonomic Liquid Eyeliner Pen', 840, 780, 25, '240625334_eyeliner3.1.jpg', 'Color: Zero - matte black, brush tip', 'What it is: A vegan liquid eyeliner that has an ergonomic grip, is water- and smudge-resistant, wears all day, and comes in a range of vibrant colors.\r\n\r\n\r\n\r\nIngredient Callouts: It is cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This eyeliner comes in a ?flow-through? pen component with felt and brush tips, making it easy to create a variety of eye makeup looks. Shake the eyeliner and then create, whether a natural-, winged- or advanced graphic liner-look. The patented, ultra-sharp tip glides on smoothly to accentuate any eye shape.', 0, 'Urban Decay - 24/7 Inks Easy Ergonomic Liquid Eyeliner Pen', '', 'Urban Decay - 24/7 Inks Easy Ergonomic Liquid Eyeliner Pen', 1, 1),
(111, 2, 2, 'Hourglass Voyeur Waterproof  Liner', 1080, 960, 34, '787977228_eyeliner4.1.jpg', 'Color: Black', 'What it is:\r\nA long-wearing, waterproof liquid liner enriched with ultra-black pigments for the darkest, most dramatic definition.\r\n\r\nWhat it does:\r\nThis waterproof formula dries quickly to prevent smudging and transfer for all-day wear. The Precision felt tip glides comfortably along the lashline without skipping or tugging to create thin, precise lines for sophisticated definition or bold, dramatic lines for the perfect winged eye. It delivers the perfect amount of ultra-black formula in every stroke, making it easy to use for novices and experts alike.\r\n\r\nWhat it is formulated WITHOUT:\r\n- Parabens\r\n- Sulfates\r\n- Phthalates\r\n\r\nWhat else you need to know:\r\nThe Hourglass soft precision tip was developed to feel weightless as you define the lashline, while releasing the perfect amount of ink with every stroke.\r\n\r\nHourglass products are 100 percent cruelty-free.', 0, 'Hourglass Voyeur Waterproof Liquid Liner', '', 'Hourglass Voyeur Waterproof Liquid Liner', 1, 1),
(112, 2, 2, 'Glamnetic - Hybrid Liquid Eyeliner - Waterproof Liner (Limited)', 1050, 1050, 36, '796165400_eyeliner5.1.jpg', 'Liquid Eyeliner', 'What it is: A clear, fast-drying magnetic-adhesive hybrid liner that provides a long-lasting, powerful grip on Glamnetic Magnetic Lashes.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: Glamnetic\'s breakthrough magnetic-adhesive hybrid liner holds lashes securely in place all day and night. Mess-free and easy-to-apply, this invisible, fast-drying latex-free formula has an ultrafine brush that effortlessly glides with precision along the lash line for a natural, barely-there look.', 0, 'Glamnetic - Hybrid Liquid Eyeliner', '', 'Glamnetic - Hybrid Liquid Eyeliner', 1, 1),
(113, 2, 2, 'Gucci - Stylo D?finition l\'Obscur Eyeliner - 01 (Limited)', 1290, 1200, 46, '459536512_eyeliner6.1.jpg', 'Color: Deep Space - black', 'What it is: A high-performance liquid magnetic liner that combines a long-lasting powerful grip on Glamnetic Magnetic Lashes.\r\n\r\nBenefits: Long-wearing, Waterproof\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan, gluten-free, and cruelty-free.\r\n\r\nWhat Else You Need to Know: Glamnetic?s Magnetic Eyeliner Pen offers the bold, highly pigmented definition of your favorite liquid liner while powerfully gripping your Glamnetic Magnetic Lashes. Waterproof, smudge-proof, and sweat-resistant, this high-performance formula holds lashes in place and remains color true, all day.', 0, 'Gucci - Stylo D?finition l\'Obscur Eyeliner', '', 'Gucci - Stylo D?finition l\'Obscur Eyeliner', 1, 1),
(114, 2, 2, 'Anastasia Beverly Hills - Waterproof Matte Liquid Eyeliner', 540, 480, 36, '779150789_eyeliner7.1.jpg', 'True Black Matte', 'What it is: A water-resistant, highly-pigmented, true-black, matte liquid liner that glides on evenly and delivers precise lines with ease.\r\n\r\nIngredient Callouts: Free of parabens, phthalates, and mineral oil. This product is also vegan, cruelty-free, and gluten-free.\r\n\r\nWhat Else You Need to Know: This liquid liner features a soft, felt-tip precision applicator. It is water-resistant and long-lasting, allowing you to create everything from sharp, thin lines to dramatic, bold lines. The super-fluid, water-based, gel formula glides on effortlessly, dries quickly, and has an intense color payoff.', 0, 'Anastasia Beverly Hills - Waterproof Matte Liquid Eyeliner', '', 'Anastasia Beverly Hills - Waterproof Matte Liquid Eyeliner', 1, 1),
(115, 2, 2, 'Too Faced - Better Than Sex Easy Glide Waterproof Liquid Eyeliner', 750, 695, 25, '310633446_eyeliner8.1.jpg', 'Color: Black', 'What it is: A cutting-edge liquid eyeliner that?s the easiest you?ll ever use, created to produce a sharp, fluid, smudge-proof line every time.\r\n\r\nIngredient Callouts: Free of parabens and phthalates. This product is also vegan, cruelty-free, and gluten-free.\r\n\r\nWhat Else You Need to Know: In one stroke, achieve an intense black line that lasts for up to 24 hours. The combination of Too Faced?s Easy Glide waterproof formula and innovative dual-fiber brush creates an eyeliner so amazing, it?s Better Than Sex.\r\n\r\nShake before each use.\r\n\r\nThis product is an Allure Best of Beauty award winner.', 0, 'Too Faced - Better Than Sex Easy Glide Waterproof Liquid Eyeliner', '', 'Too Faced - Better Than Sex Easy Glide Waterproof Liquid Eyeliner', 1, 1),
(116, 2, 1, 'Benefit Cosmetics - Brow Microfilling Eyebrow Pen', 720, 250, 31, '861121562_eyeb1.1.jpg', 'Color: Light Brown', 'What it is: A pen for the microbladed look made easy that creates the illusion of natural brow hair with three ultrafine lines in a single stroke.\r\n\r\nWhat Else You Need to Know: Like a microblading appointment in your makeup bag, this eyebrow pen is a waterproof, smudge-proof ink pen that creates the illusion of real eyebrow hairs with three ultra-fine lines in a single stroke. Designed to blend in seamlessly with existing hairs, it instantly creates a microbladed effect.\r\n\r\nClinical Results: In a self-evaluation by 104 women after 1 week:\r\n- 92% said it was easy to apply\r\n- 96% said brows looked thicker\r\n- 91% said it draws hair-like strokes', 0, 'Benefit Cosmetics - Brow Microfilling Eyebrow Pen', '', 'Benefit Cosmetics - Brow Microfilling Eyebrow Pen', 1, 1),
(117, 2, 1, 'Benefit Cosmetics - Precisely, My Brow Pencil Waterproof Eyebrow Define', 780, 780, 34, '432544550_eyeb2.1.jpg', 'Color: Shade 3.5 - neutral medium brown', 'What it is: A bestselling brow pencil to transform shapeless, undefined brows with a few strokes?now available in 12 shades to flatter every hair color.\r\n\r\nWhat Else You Need to Know: Precisely, My Brow Pencil?s ultra-fine tip makes adding definition to brows easy. It lets you draw incredibly natural-looking, hair-like strokes that last up to 12-hours. This rich, waterproof eyebrow pencil is ideal for spot-filling sparse or over-tweezed areas, and the smudge-proof formula is firm for precise application.', 0, 'Benefit Cosmetics - Precisely, My Brow Pencil Waterproof Eyebrow Define', '', 'Benefit Cosmetics - Precisely, My Brow Pencil Waterproof Eyebrow Define', 1, 1),
(118, 2, 1, 'Benefit Cosmetics - Gimme Brow+ Tinted Volumizing Eyebrow Gel', 1200, 950, 32, '589936262_eyeb4.1.jpg', 'Color: 1 - Cool Light Blonde', 'What it is:\r\nA brow-volumizing tinted gel with tiny microfibers that create natural-looking fullness and definition.\r\n\r\nWhat it does:\r\nBenefit?s Gimme Brow+ Volumizing Eyebrow Gel contains tiny microfibers that adhere to skin and brow hairs, creating natural-looking brow volume. The custom tiny, tapered brush provides an easy, mess-proof application, and makes it easy to tame, tint, and volumize the look of your brows. The buildable formula is also water resistant and long wearing. This product is an Allure Best of Beauty award winner.\r\n\r\nBeauty Tip:\r\nStart your look with Benefit?s bestselling Precisely, My Brow Pencil (sold separately) for expertly full and defined brow looks.\r\n\r\nResearch results:\r\nIn a self-evaluation by 66 women after 1 week:\r\n- 94% said brows looked visibly thicker', 0, 'Benefit Cosmetics - Gimme Brow+ Tinted Volumizing Eyebrow Gel', '', 'Benefit Cosmetics - Gimme Brow+ Tinted Volumizing Eyebrow Gel', 1, 1),
(119, 2, 1, 'Dior - Diorshow OnSet Brow Gel', 1050, 960, 0, '746652226_eyeb5.1.jpg', 'Color: 05 Black - natural luminous black', 'What it is: A waterproof eyebrow gel that creates immediate volume* and sets brows for up to 24 hours.**\r\n\r\nHighlighted Ingredients:\r\n- Microfibers: Add texture and groom brows.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance.\r\n\r\nWhat Else You Need to Know: Made with microfibers and fortifying vitamins B5 and B8, this lightweight brow gel styles and grooms brows for a naturally full look with no stiffness. Created in shades to match your brow color and a universal clear shade, it can be worn alone as an immediate eyebrow thickener or over eyebrow pencil. This product is made with 90 percent natural-origin ingredients.***\r\n\r\n*Except the clear shade. **Instrumental test on 32 subjects. ***Amount calculated based on the ISO 16128-1 and ISO 16128-2 standard. Water percentage included. The remaining ingredients contribute to the formula?s performance, sensory appeal, and stability.', 0, 'Dior - Diorshow OnSet Brow Gel', '', 'Dior - Diorshow OnSet Brow Gel', 1, 1),
(120, 2, 1, 'Anastasia Beverly Hills - Brow Freeze? Gel - Colorless Standart Size', 780, 720, 31, '564218851_eyeb6.1.jpg', 'Color: Clear - colorless', 'What it is: An innovative clear brow wax-gel hybrid featuring a triple-action comb applicator that shapes brows with ultimate hold on the go.\r\n\r\nHighlighted Ingredients:\r\n- Polyacrylate-2 Crosspolymer: Provides an ultimate-hold and a non-sticky, flake-free texture.\r\n- Glycerin: Provides hydrating effect.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, and mineral oil. It is also cruelty-free.\r\n\r\nWhat Else You Need to Know: Anastasia Beverly Hills Brow Freeze? Gel is an innovative clear brow wax-gel hybrid featuring a triple-action comb applicator that shapes, sculpts, and sets brows with ultimate hold and precision on the go. Achieve lifted, laminated-look brows with hair-loving frozen technology.', 0, 'Anastasia Beverly Hills - Brow Freeze? Gel', '', 'Anastasia Beverly Hills - Brow Freeze? Gel', 1, 1),
(121, 2, 1, 'Anastasia Beverly Hills - Mini Clear Brow Gel Flexible Medium-Hold Eyebrow Setter', 390, 280, 14, '365550519_eyeb7.1.jpg', 'Color: Clear - colorless', 'What it is:\r\n\r\nA lightweight, clear eyebrow gel that works universally to set brow color and hold brow hairs in place for a clean, polished look.\r\n\r\n\r\n\r\nWhat Else You Need to Know: A lightweight, clear eyebrow gel that sets brow color and hold brow hairs in place for a clean, polished look. Features a colorless formula that delivers flexible hold without a stiff feel. The clear gel dries without leaving residue behind, giving brows a fuller appearance and a polished finish.', 0, 'Anastasia Beverly Hills - Mini Clear Brow Gel Flexible Medium-Hold Eyebrow Setter', '', 'Anastasia Beverly Hills - Mini Clear Brow Gel Flexible Medium-Hold Eyebrow Setter', 1, 1),
(122, 2, 1, 'Kosas - Air Brow Clear + Clean Lifting Treatment Eyebrow Gel Lamination Effect', 720, 660, 25, '562704864_eyeb8.1.jpg', 'Natural finish - Standard size', 'What it is: A clean, clear brow gel boosted by hair care actives that fluffs, lifts, and sets brows in place while helping them reach their full growth potential.\r\n\r\nHighlighted Ingredients:\r\n- Panthenol Pro Vitamin B5: Helps revive brows.\r\n- Biotinoyl Tripeptide-1: Supports healthier, fuller hair.\r\n- Hyaluronic Acid + Trehalose: Strengthens and conditions hair.\r\n\r\nIngredient Callouts: This product is gluten-free and cruelty-free.\r\n\r\nWhat Else You Need to Know: Air Brow Clear + Clean Lifting Treatment Eyebrow Gel lifts and sets naturally fluffy, feathered brows for a lamination effect all day. It creates a fuller appearance with biodegradable, plant-based fibers and a triangular spoolie that lifts each hair. It grooms and adds natural sheen for an effortless, unfussy look. The alcohol-free gel gives strong yet flexible hold. Each swipe helps strengthen and condition, supporting lush, healthy brows.\r\n\r\n\r\n\r\n\r\nCLEAN at Sephora is our commitment to offering formulas that go beyond regulatory standards to avoid controversial ingredients without sacrificing on effectiveness.', 1, 'Kosas - Air Brow Clear + Clean Lifting Treatment Eyebrow Gel with Lamination Effect', '', 'Kosas - Air Brow Clear + Clean Lifting Treatment Eyebrow Gel with Lamination Effect', 1, 1),
(123, 2, 1, 'Anastasia Beverly Hills - Mini Brow Freeze? Extreme Hold Laminated - Sculpting Wax', 395, 285, 12, '735697130_eyeb9.1.jpg', 'Color: Clear', 'What it is: An easy-to-use styling wax that lifts, tames, and sculpts every hair with extreme hold. It?s your secret to feathered, locked-in brows.\r\n\r\nIngredient Callouts: Free of parabens. It is also cruelty-free.\r\n\r\nWhat Else You Need to Know: Set every hair in place without a stiff feel, residue, or flaking for the feathered brows you?ve always wanted. This universal, easy-to-apply wax is mess-free and provides extreme hold, leaving you with full-bodied brows that last all day.', 0, 'Anastasia Beverly Hills - Mini Brow Freeze? Extreme Hold Laminated-Look Sculpting Wax', '', 'Anastasia Beverly Hills - Mini Brow Freeze? Extreme Hold Laminated-Look Sculpting Wax', 1, 1),
(124, 9, 24, 'HUDA BEAUTY - Lip Blush Cream Lip & Cheek Stain', 750, 690, 35, '954688513_tint1.1.jpg', 'Color: Rosy Kiss - sheer rose', 'ONLY AT SEPHORA\r\nWhat it is: A hydrating, ultra-comfortable, and transfer-proof stain that tints lips and cheeks with a natural matte finish that lasts all day.\r\n\r\nFormulation Type: Lip Stain\r\n\r\nBenefits: Hydrating, Long-wearing\r\n\r\nHighlighted Ingredients:\r\n- Hyaluronic Acid Powder: Provides hydration to skin.\r\n- Coconut Extract: Conditions and moisturizes.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan. It is also vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: This lightweight, buildable formula gives a pop of color that can go from subtle to vibrant in just a few strokes. The doe-foot applicator glides onto lips and cheeks for easy application. This multiuse stain tints the cheeks and lips with a natural matte, blurred effect with major staying power.\r\n\r\nClinical Results: Based on an independent study on 50 people of all genders, skin types and tones, using on lips and cheeks, after 1 week:\r\n- 100% agreed the stain was easy to apply to their lips\r\n- 96% agreed the stain felt comfortable on their cheeks\r\n- 96% agreed it felt lightweight', 0, 'HUDA BEAUTY - Lip Blush Cream Lip & Cheek Stain', '', 'HUDA BEAUTY - Lip Blush Cream Lip & Cheek Stain', 1, 1),
(125, 9, 24, 'Benefit Cosmetics - Playtint Lip & Cheek Stain', 780, 675, 15, '272955976_tint2.1.jpg', 'Color: Play Tint - pink lemonade-tinted lip & cheek stain', 'What it is: A lip-and-cheek stain that has pink-lemonade tint.\r\n\r\nFormulation Type: Lip Stain\r\n\r\nWhat Else You Need to Know: This precise applicator glides on a fresh, flattering color that lasts all day (no touch-ups needed). The non-drying formula applies and builds easily and feels lightweight and comfortable on lips. It has a natural-looking, sheer hint of tint or can be layered for more vibrant, smooch-proof color.', 0, 'Benefit Cosmetics - Playtint Lip & Cheek Stain', '', 'Benefit Cosmetics - Playtint Lip & Cheek Stain', 1, 1),
(126, 9, 24, 'caliray - Socal Superbloom Lip + Cheek Tint Soft Stain Blush', 840, 780, 39, '765749870_tint3.1.jpg', 'Color: Heat Wave - sheer bright pink', 'What it is: A clean, long-wear lip and cheek stain with hydrating hyaluronic acid that glides on for a comfortable, buildable, and natural glowy flush of color.\r\n\r\n\r\n\r\nFormulation Type: Lip Stain, Blush\r\n\r\n\r\n\r\nBenefits: Hydrating, Long-wearing\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Hyaluronic Acid: Provides skin and lip hydration.\r\n\r\n- Niacinamide and Squalane: Condition to provide a silky finish.\r\n\r\n- Three-Step Stain Mixing Technology: Creates a transfer-proof hint of color.\r\n\r\n\r\n\r\nIngredient Callouts: This product is vegan, gluten-free, cruelty-free, and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This versatile lip and cheek stain delivers the silkiness and blendability of a cream and the long-lasting, sexy sheerness of a stain. The dewy formula provides a pop of color with a cushiony, silky-featherweight feel that\'s never dry or sticky. The oversized applicator makes it oh-so-easy to use anywhere.\r\n\r\n\r\n\r\nClean & Planet Aware\r\nOur ambitious curation of beauty made without controversial ingredients from brands dedicated to making meaningful environmental commitments, including sustainable ingredients and sourcing, packaging, corporate commitments, and consumer transparency.', 0, 'caliray - Socal Superbloom Lip + Cheek Tint Soft Stain Blush', '', 'caliray - Socal Superbloom Lip + Cheek Tint Soft Stain Blush', 1, 1),
(127, 9, 24, 'Fenty Beauty by Rihanna - Poutsicle Hydrating Lip Stain', 840, 760, 12, '285777702_tint4.1.jpg', 'Color: Fuchsia Wife - Fuchsia', 'What it is: A lip stain that goes on glossy and leaves behind a soft tint, delivering rapid hydration for an effortless, low-maintenance look.\r\n\r\nFormulation Type: Lip Stain\r\n\r\nBenefits: Hydrating\r\n\r\nIngredient Callouts: Free of parabens and phthalates. It is also vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: Available in a range of vibrant shades, this feather- and bleed-resistant formula quenches lips immediately and all day. It features an oil-in-water innovation with squalane.', 0, 'Fenty Beauty by Rihanna - Poutsicle Hydrating Lip Stain', '', 'Fenty Beauty by Rihanna - Poutsicle Hydrating Lip Stain', 1, 1),
(128, 9, 24, 'Fenty Beauty by Rihanna - Match Stix Color-Adaptive Cheek + Lip Stick', 960, 845, 27, '398460174_tint5.1.jpg', 'Color: Strawberry Pop', 'What it is: A hydrating multi-use stick that plays by your rules. Using color-shift technology, this formula brings out the most flattering universal rosy color of cheeks + lips for all skin tones.\r\n\r\nFormulation Type: Lip Stain\r\n\r\nWhat Else You Need to Know: A juicy swipe of this gel-stick reacts to your skin?s natural chemistry to deliver a customized, rosy shade that flatters all skin tones. Feeling refreshing to the touch, the nourishing and moisturizing formula applies evenly and smoothly for a soft dewy finish.', 0, 'Fenty Beauty by Rihanna - Match Stix Color-Adaptive Cheek + Lip Stick', '', 'Fenty Beauty by Rihanna - Match Stix Color-Adaptive Cheek + Lip Stick', 1, 1),
(129, 9, 24, 'Benefit Cosmetics - Benetint Liquid Lip + Cheek Blush Stain', 1050, 950, 24, '997022758_tint6.1.jpg', 'Color: Benetint - rose tinted lip & cheek stain', 'What it is: A collection of fan-fave lip and cheek tints that come in a range of shades?all long-wearing, non-drying, and transfer-proof.\r\n\r\nIngredient Callouts: Free of formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance.\r\n\r\nWhat Else You Need to Know: Cherry, mango, pink lemonade?whatever tint color you\'re craving, Benefit Cosmetics has an option for you. These long-wearing tints have non-drying formulas that apply and build easily and feel comfortable on lips and cheeks. Apply one coat with the precise, doe-foot applicator for a sheer hint of tint or layer for more vibrant color that lasts all day. The formula is also smudge-, transfer-, and kiss-proof.', 0, 'Benefit Cosmetics - Benetint Liquid Lip + Cheek Blush Stain', '', 'Benefit Cosmetics - Benetint Liquid Lip + Cheek Blush Stain', 1, 1),
(130, 9, 23, 'Too Faced - Kissing Jelly Hydrating Lip Oil Gloss', 660, 600, 24, '189306747_oil1.1.jpg', 'Color: Raspberry - electric fuschia', 'What it is: An ultra-moisturizing, nonsticky lip oil-gloss hybrid that hydrates with natural oils.\r\n\r\nFormulation Type: Lip Gloss\r\n\r\nHighlighted Ingredients:\r\n- Sunflower and Jojoba Seed Oils: Soften lips.\r\n\r\nIngredient Callouts: This product is vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: Get sheer candy color and shine with one swipe of this hydrating lip oil-gloss. Perfect for on-the-go use, it nourishes lips with natural oils and leaves a hint of tint. Try all the juicy scents for smooth, nourished, never-sticky lips with a fun taste of nostalgia.', 0, 'Too Faced - Kissing Jelly Hydrating Lip Oil Gloss', '', 'Too Faced - Kissing Jelly Hydrating Lip Oil Gloss', 1, 1),
(131, 9, 23, 'Fenty Skin - Fenty Treatz Hydrating + Strengthening Lip Oil', 720, 680, 17, '850963030_oil2.1.jpg', 'Color: Cherry', 'What it is: An ultra-hydrating lip oil that goes on clear and cushions lips with decadent fruit oils and vitamin-rich Cherry extracts. Strengthens the lips? moisture barrier for a softer, more kissable pout.\r\n\r\n\r\n\r\nSkin Type: Normal, Dry, Combination, and Oily\r\n\r\n\r\n\r\nSkincare Concerns: Dryness\r\n\r\n\r\n\r\nFormulation: Oil\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Sweet Cherry Seed Oil: Infuses lips with essential fatty acids; moisturizes and nourishes.\r\n\r\n- Barbados Cherry and Wild Cherry Extracts: Antioxidant rich; condition and renew lips.\r\n\r\n- Jojoba Seed and Rosehip Fruit Oils: Locks in moisture and soothe dry lips.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also gluten-free and cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This antioxidant-rich formula defends lips against environmental stressors. It nourishes dry, chapped lips, and plumps lips with hydration while decadent oils bind moisture to lips. Features a yummy scent and an ultra-plush doe-foot applicator for the ultimate treat.\r\n\r\n\r\n\r\nClinical Results: In a 4-week clinical study of 49 people, after 1 week:\r\n\r\n- 100% agree it conditions lips\r\n\r\n- 100% agree it leaves lips feeling resilient\r\n\r\n- 98% agree it softens lips\r\n\r\n\r\n\r\nCLEAN at Sephora is our commitment to offering formulas that go beyond regulatory standards to avoid controversial ingredients without sacrificing on effectiveness.', 0, 'Fenty Skin - Fenty Treatz Hydrating + Strengthening Lip Oil', '', 'Fenty Skin - Fenty Treatz Hydrating + Strengthening Lip Oil', 1, 1),
(132, 9, 23, 'HAUS LABS BY LADY GAGA - PhD Hybrid Hydrating Tinted Lip Oil', 780, 690, 18, '468009852_oil3.1.jpg', 'Color: Primary - sheer cherry', 'What it is: A clean, award-winning, sheer tinted lip oil that delivers lightweight hydration and non-sticky shine with a cushiony feel.\r\n\r\n\r\n\r\nFormulation Type: Lip Gloss, Lip Balm and Treatment\r\n\r\n\r\n\r\nBenefits: Hydrating\r\n\r\n\r\n\r\nHighlighted Ingredients:\r\n\r\n- Vegan Collagen: Vegan Collagen: Moisturizes and maintains suppleness.\r\n\r\n- Prickly Pear Oil: Provides barrier-boosting hydration.\r\n\r\n- Plant Squalane: Nourishes and softens the lips.\r\n\r\n\r\n\r\nIngredient Callouts: This product is clean, vegan, gluten-free, and cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Get the shine of a gloss without the stickiness while drenching your lips in sheer, hydrating color that moisturizes and nourishes lips. Available in pH-powered shades that transform into a true-to-you tint and makes lips feel more conditioned with daily use.\r\n\r\n\r\n\r\nClinical Results: In a third-party consumer perception study of 51 panelists after application, results showed:\r\n\r\n- 100% said lips felt conditioned and comfortable\r\n\r\n- 100% said lips felt nourished\r\n\r\n- 100% said lips felt moisturized\r\n\r\n\r\n\r\nCLEAN at Sephora is our commitment to offering formulas that go beyond regulatory standards to avoid controversial ingredients without sacrificing on effectiveness.', 0, 'HAUS LABS BY LADY GAGA - PhD Hybrid Hydrating Tinted Lip Oil', '', 'HAUS LABS BY LADY GAGA - PhD Hybrid Hydrating Tinted Lip Oil', 1, 1),
(133, 9, 23, 'tarte - maracuja juicy plumping lip oil', 780, 695, 17, '183384506_oil4.1.jpg', 'Color: mixed berries - mauve berry', 'What it is: A plumping lip oil that gives all the hydrating perks of an oil with the high-shine plump of a gloss.\r\nHighlighted Ingredients:\r\n- 15+ Oil Complex: Nourishes\r\n- Maracuja Oil: Rich in essential fatty acids and vitamin C for firmer-, brighter-, smoother-looking skin.\r\n- Vitamin E: Natural preservative that also acts as an emollient and antioxidant.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: This lip oil layers just the right amount of product and feels like a cloud. The 90 percent lip conditioning ingredients hydrate dry lips, while maracuja passion fruit oil from tarte?s all-female co-op in the Amazon, over 15 oils, and over 10 superfruits leave smoother-, plumper-, juicier-looking lips.\r\n\r\nClinical Results: Based on a clinical study of 32 subjects:\r\n- Instant hydration\r\n\r\nBased on a clinical study of 32 subjects after 10 minutes:\r\n- 100% saw more plump lips', 0, 'tarte - maracuja juicy plumping lip oil', '', 'tarte - maracuja juicy plumping lip oil', 1, 1),
(134, 9, 23, 'Gisou - Honey Infused Hydrating Lip Oil', 840, 820, 16, '637422635_oil5.1.jpg', 'Color: Watermelon Sugar - Clear Pink Shimmer', 'What it is: A lip oil powered by Mirsalehi honey and bee garden oils to intensely hydrate lips and lock in moisture with a high-shine and non-sticky finish.\r\n\r\nFormulation Type: Lip Gloss\r\n\r\n\r\n\r\nBenefits: Hydrating\r\n\r\n\r\nHighlighted Ingredients: \r\n- Mirsalehi Honey: A powerful humectant that attracts and retains moisture.\r\n\r\n- Mirsalehi Bee Garden Oils: Rich, antioxidant powerhouse oils that replenish, lock in moisture, and add shine.\r\n\r\n- Hyaluronic Acid: Delivers added hydration and smooths.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Formulated with a blend of nourishing Mirsalehi honey, bee garden oils, and hyaluronic acid, this bestselling lip oil delivers long-lasting hydration and high shine to quench chapped lips with juicy a scent and touch of color. Gisou?s non-sticky formula smooths and locks in moisture throughout the day.\r\n\r\n\r\n\r\nGisou proudly derives their cruelty-free Mirsalehi honey from their own Gisou Bee Garden in The Netherlands, where the family tradition of beekeeping has continued for six generations.\r\n\r\n\r\n\r\nCLEAN at Sephora is our commitment to offering formulas that go beyond regulatory standards to avoid controversial ingredients without sacrificing on effectiveness.', 0, 'Gisou - Honey Infused Hydrating Lip Oil', '', 'Gisou - Honey Infused Hydrating Lip Oil', 1, 1),
(135, 9, 23, 'GUERLAIN - Kiss Kiss Bee Glow Lip Oil', 1200, 1025, 15, '140099690_oil6.1.jpg', 'Color: 258 Rose - Delicate Pink', 'What it is: A honey-infused tinted lip oil that enhances lips? natural color and shine with a made-to-measure shade.\r\n\r\n\r\nFormulation Type: Lip Oil\r\n\r\n\r\n\r\nBenefits: Hydrating\r\n\r\nHighlighted Ingredients: \r\n- Corsican Honey: For long-lasting comfort.\r\n\r\n- Propolis: To smooth the lips.\r\n\r\n- Hydrating and Plumping Royal Jelly: To visibly increase natural lip plumping.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This lip oil offers a hydrating, glossy sensation, ensuring a fast-acting plumping effect and an addictive, nongreasy, glassy shine, with no stickiness. It also delivers up to 24 hours of care.', 0, 'GUERLAIN - Kiss Kiss Bee Glow Lip Oil', '', 'GUERLAIN - Kiss Kiss Bee Glow Lip Oil', 1, 1),
(136, 9, 22, 'Fenty Beauty by Rihanna - Slip Shine Sheer Shiny Lipstick', 780, 725, 12, '456873816_lipst1.1.jpg', 'Color: 05 Glazed - peachy pink', 'What it is: An ultra-comfortable sheer lipstick with the perfect amount of nourishing color and shine that is available in a range of easy-to-wear shades for all.\r\n\r\nIngredient Callouts: Free of parabens and phthalates. This product is also cruelty-free.\r\n\r\nWhat Else You Need to Know: Slip Shine is a lightweight creamy lipstick that delivers sheer color and shine in a range of nudes to shimmer pops. The clinically-proven moisture-lock formula with pomegranate butter conditions your lips for instant poutier, fuller-looking lips?no mirror required.', 0, 'Fenty Beauty by Rihanna - Slip Shine Sheer Shiny Lipstick', '', 'Fenty Beauty by Rihanna - Slip Shine Sheer Shiny Lipstick', 1, 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(137, 9, 22, 'NARS - Afterglow Sensual Shine Hydrating Lipstick', 960, 890, 14, '554637733_lip2.1.jpg', 'Color: No Inhibitions - raspberry pink', 'What it is: A color-meets-care hybrid lipstick that has dimensional shine and eight-hour hydration.\r\n\r\nFormulation Type: Lipstick\r\n\r\nBenefits: Hydrating and Long-wearing\r\n\r\nHighlighted Ingredients:\r\n- Shea Butter: Forms a nourishing barrier around lips to retain moisture levels for eight-hour hydration.\r\n- Mango Butter: Helps smooth dry lips.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance.\r\n\r\nWhat Else You Need to Know: This lipstick is a color-meets-care lip hybrid that delivers dimensional shine, nourishing benefits, and long-lasting wear. It glides on lightweight comfort in a buildable, sheer-to-medium finish and features a blend of antioxidants to help protect lips, while mango and shea butter smooth dryness and provide eight hours of hydration.', 0, 'NARS - Afterglow Sensual Shine Hydrating Lipstick', '', 'NARS - Afterglow Sensual Shine Hydrating Lipstick', 1, 1),
(138, 9, 22, 'Bobbi Brown - Luxe Lipstick', 1290, 1150, 17, '355738489_lip3.1.jpg', 'Color: Parisian Red - true yellow red', 'What it is: A skincare-infused statement lipstick, in universally flattering shades, for lips that feel as luxe as they look.\r\n\r\n\r\nFormulation Type: Lipstick\r\n\r\n\r\n\r\nBenefits: Hydrating, Long-wearing\r\n\r\n\r\nHighlighted Ingredients: \r\n- Monoi de Tahiti and Chamomile Oil: Nourish and condition.\r\n\r\n- Jasmine Flower Wax: Boosts moisture over time.\r\n\r\n\r\n\r\nWhat Else You Need to Know: This luxurious satin lipstick glides on effortlessly and hydrates for up to 10 hours, visibly improving the condition of lips after just one week. Infused with nourishing floral extracts and jasmine flower wax, the creamy formula resists fading, feathering, and smudging.', 0, 'Bobbi Brown - Luxe Lipstick', '', 'Bobbi Brown - Luxe Lipstick', 1, 1),
(139, 9, 22, 'Givenchy - Le Rouge Deep Velvet Matte Lipstick', 1320, 1250, 14, '673121212_lip4.1.jpg', 'Color: 09 Beige Sable - warm brown nude', 'What it is: A highly pigmented, powdery-matte-finish lipstick that is encased in red velvet.\r\n\r\nFormulation Type: Lipstick\r\n\r\nBenefits: Hydrating, Long-wearing\r\n\r\nHighlighted Ingredients:\r\n- Wild Mango Butter: Rich in vitamin E to protect, nourish, and restore dry, damaged lips.\r\n\r\nIngredient Callouts: Free of phthalates, retinyl palmitate, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, and triclosan.\r\n\r\nWhat Else You Need to Know: The Le Rouge Deep Velvet Matte Lipstick glides on lips, creating bold lip color in just one swipe. The mango butter-infused formula delivers comfort unlike any other matte lipstick with color that lasts up to 12 hours. The ultra-powdery texture provides full coverage without the weight.\r\n\r\nClinical Results: In an instrumental test on 20 women, results included:\r\n- Lipstick provided up to 12 hours of wear', 0, 'Givenchy - Le Rouge Deep Velvet Matte Lipstick', '', 'Givenchy - Le Rouge Deep Velvet Matte Lipstick', 1, 1),
(140, 9, 22, 'Yves Saint Laurent - The Bold High Pigment Lipstick', 1450, 1280, 18, '490182278_lip5.1.jpg', 'Color: 01 Le Rouge - blood red', 'What it is: An ultra-pigmented satin lipstick with buildable-shine finish and full coverage color in one swipe.\r\n\r\n\r\n\r\nFormulation Type: Lipstick\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, oxybenzone, coal tar, hydroquinone, triclocarban, and triclosan.\r\n\r\n\r\n\r\nWhat Else You Need to Know: An innovative formula with red floral and grape oils helps lips feel comfortable and moisturized for up to 10 hours. The bold finish is more reflective than a classic satin lipstick and more subtle than a high-shine lip gloss. Choose the Bold for a pop of color, daring nude, or striking red lip.\r\n\r\n\r\n\r\nClinical Results: In a consumer test:\r\n\r\n- 98% agree the Bold glides effortlessly onto lips\r\n\r\n- 92% agree the Bold feels soft and silky on lips', 0, 'Yves Saint Laurent - The Bold High Pigment Lipstick', '', 'Yves Saint Laurent - The Bold High Pigment Lipstick', 1, 1),
(141, 9, 22, 'Yves Saint Laurent - YSL Loveshine Lip Oil Stick', 1315, 1295, 24, '447408552_lip6.1.jpg', 'Color: 44 Nude Lavalliere - iconic pink nude', 'What it is: Color of a lipstick, slip of an oil. Lipstick to oil hybrid with 6 nourishing oils to hydrate lips. Creamy buildable formula adds up to 24H hydration.\r\n\r\nFormulation Type: Lipstick / Lip Oil\r\n\r\nBenefits: Hydrating, Long-wearing\r\n\r\nHighlighted Ingredients:\r\n- Signature Oil Base 60%: Adds a smooth glide and moisturizing feel.\r\n- Fig Pulp: Is sourced from Yves Saint Laurent?s Ourika Community Garden in Marrakech, Morocco to make the formula suitable for sensitive/chapped lips.\r\n\r\nIngredient Callouts: Free of parabens and mineral oil.\r\n\r\nWhat Else You Need to Know: Experience the color of a lipstick with the slip of an oil. Now with six nurturing oils and a sleek silver look, this iconic formula provides up to 24 hours of hydration and protection. It melts into lips, hydrating on contact and making lips feel softer and more moisturized over time. Choose from an array of shades ranging from everyday nudes to pops of mauve and pink.\r\n\r\nClinical Results: In a consumer test of 120 women, results showed:\r\n- Up to 24-hour hydration and protection from dryness\r\n- Lips felt immediately smoother and hydrated\r\n- Lips felt softer and moisturized after 14 days', 0, 'Yves Saint Laurent - YSL Loveshine Lip Oil Stick', '', 'Yves Saint Laurent - YSL Loveshine Lip Oil Stick', 1, 1),
(142, 9, 22, 'Dior - Dior Addict Refillable Shine Lipstick', 1380, 1325, 15, '894954714_lip7.11.jpg', 'Color: 976 Be Dior - bright pink', 'What it is: A Dior Addict lipstick for up to 24 hours of hydration and up to six hours of color and shine, in a refillable couture case.\r\n\r\nFormulation Type: Lipstick\r\n\r\nBenefits: Hydrating\r\n\r\nHighlighted Ingredients:\r\n- Jasmine Wax: Helps hydrate lips.\r\n- Plum Oil: Rich in essential and omega fatty acids.\r\n- Vegetable-based Oils: Provide extreme shine.\r\n\r\nWhat Else You Need to Know: Composed with jasmine wax and plum oil, Dior Addict Shine Lipstick delivers up to 24-hour hydration and up to six hours of radiant color. Available in a wide range of trendy shades, this refillable lipstick offers vibrant color, hydration, and glossy shine.\r\n\r\nClinical Results: In an instrumental test on 10 subjects, participants reported:\r\n- Up to 24 hours of hydration\r\n\r\nIn a clinical test on 25 subjects, participants reported:\r\n- Up to 6 hours of wear and shine', 0, 'Dior - Dior Addict Refillable Shine Lipstick', '', 'Dior - Dior Addict Refillable Shine Lipstick', 1, 1),
(143, 9, 22, 'Prada Beauty - Monochrome Hyper Matte Refillable Lipstick', 1500, 1400, 18, '806900282_lip8.1.jpg', 'Color: B02 QUARTZ - pink nude', 'What it is: A refillable matte lipstick with a lightweight feel that delivers intense color in one stroke and a long-lasting hyper-matte finish.\r\n\r\nFormulation Type: Lipstick\r\n\r\nBenefits: Long-wearing\r\n\r\nHighlighted Ingredients:\r\n- Jojoba Oil: Sooths and hydrates.\r\n- Bifidus Extract: Helps strengthen the lip barrier.\r\n\r\nWhat Else You Need to Know: This lipstick is formulated with Micro-Fit? Technology, glides on seamlessly, and feels weightless all day long. The shades are made with a black base and only three pure color pigments to replicate Prada Saffiano leather?s high-integrity color depth and quality.', 0, 'Prada Beauty - Monochrome Hyper Matte Refillable Lipstick', '', 'Prada Beauty - Monochrome Hyper Matte Refillable Lipstick', 1, 1),
(144, 9, 21, 'SEPHORA COLLECTION - Outrageous Plump Hydrating Lip Gloss', 520, 485, 14, '901815829_gloss1.1.jpg', 'Color: 11 Starstruck Pink', 'What it is: Lips look fuller and plumper after applying this high-shine, vibrant lip gloss.\r\n\r\n\r\nFormulation Type: Lip Gloss\r\n\r\n\r\n\r\nBenefits: Plumping\r\n\r\n\r\n\r\nWhat Else You Need to Know: High-shine lip gloss enriched with moisturizing sunflower seed oil, ginger root oil, and peppermint oil. Helps hydrate and plump up lips with each application.', 0, 'SEPHORA COLLECTION - Outrageous Plump Hydrating Lip Gloss', '', 'SEPHORA COLLECTION - Outrageous Plump Hydrating Lip Gloss', 1, 1),
(145, 9, 21, 'Anastasia Beverly Hills - Non-Sticky Clear Crystal Lip Gloss', 600, 570, 12, '519468477_gloss2.1.jpg', 'Color: Glass - crystal-clear/translucent', 'What it is: A crystal-clear lip gloss, with a non-sticky feel, that delivers glass-like shine.\r\n\r\nFormulation Type: Lip Gloss\r\n\r\nBenefits: Long-wearing\r\n\r\nIngredient Callouts: Free of parabens. It is also vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: This lip gloss has a crystal-clear formula that provides non-sticky, comfortable wear, making your lips appear fuller and smoother. It can be worn over bare lips to let your natural color come through, or layer with liner and lipstick for extra dimension.', 0, 'Anastasia Beverly Hills - Non-Sticky Clear Crystal Lip Gloss', '', 'Anastasia Beverly Hills - Non-Sticky Clear Crystal Lip Gloss', 1, 1),
(146, 9, 21, 'PATRICK TA - Major Glow Lip Shine', 780, 710, 15, '910783128_gloss33.1.jpg', 'Color: Is She Younger Than Me? - bright peachy pearl', 'What it is: A universally-flattering, high-shine lip gloss with the cushion and slip of a lip balm for zero stickiness, all shine.\r\n\r\nHighlighted Ingredients:\r\n- Advanced Gel System: Creates a glass-like finish that clings to the lips and prevents feathering.\r\n- High Shine Oil Blend: Allows the formula to glide on evenly and gives that balmy feeling.\r\n- Emollient Blend: Ensures even coverage, added shine, and comfort.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, and triclocarban, and contains less than one percent of synthetic fragrances. This product is also vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: An advanced gel system with suspended pearl creates the look of volume and fullness, while moisturizing oils and vitamin E envelop lips in comfort.', 0, 'PATRICK TA - Major Glow Lip Shine', '', 'PATRICK TA - Major Glow Lip Shine', 1, 1),
(147, 9, 21, 'Charlotte Tilbury-  Pillow Talk Big Lip Plumpgasm Plumping Lip Gloss', 1050, 975, 15, '443837919_gloss4.2.jpg', 'Color: Fair/Medium - pink nude', 'What it is: An iconic Pillow Talk gloss with the comfort of a balm that visibly plumps and hydrates your lips immediately and over time.\r\n\r\n\r\nFormulation Type: Lip Plumper\r\n\r\n\r\n\r\nBenefits: Hydrating, Plumping\r\n\r\n\r\nHighlighted Ingredients: \r\n- Heat and Ice Technology: Visibly and powerfully plumps without the sting.\r\n\r\n- Plump Effect CO2llageneer?: Smooths and plumps the look of lips rapidly and over time.\r\n\r\n- Hyaluronic Acid: Delivers long-lasting hydration.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Harnessing innovative heat and ice technology, this gloss creates a visibly plumped-up pout in seconds, without a burning or stinging sensation. Feel Plumpgasm work its magic while hyaluronic acid and lip-loving ingredients hydrate and smooth for your juiciest lips ever. With regular use, you?ll notice your lips looking plumper and smoother over time.\r\n\r\n\r\n\r\nClinical Results: In a clinical trial on 32 people, immediately after use:\r\n\r\n- Lips looked 93% plumper\r\n\r\n\r\n\r\nIn a clinical trial on 32 people, with twice-daily application, after 2 weeks:\r\n\r\n- This formula plumped natural lips by 25%', 0, 'Charlotte Tilbury-  Pillow Talk Big Lip Plumpgasm Plumping Lip Gloss', '', 'Charlotte Tilbury-  Pillow Talk Big Lip Plumpgasm Plumping Lip Gloss', 1, 1),
(148, 9, 21, 'Bobbi Brown - Extra Plump Hydrating Lip Gloss Serum - Bare Rose', 1140, 1050, 15, '763553885_gloss5.1.jpg', 'Color: Bare Rose - milky nude pink', 'What it is: A plumping lip serum that deeply replenishes lips as it delivers a fuller look and lasting shine, the look of a lip gloss with lip-nourishing benefits.\r\n\r\nFormulation Type: Lip Gloss, Lip Balm & Treatment, Lip Plumper\r\n\r\n\r\n\r\nBenefits: Hydrating, Long-wearing, Plumping\r\n\r\n\r\n\r\nWhat Else You Need to Know: This lip serum formulated with Extra Plump Complex, a lip-loving blend of moisture boosting botanical oils and hyaluronic acid. The powerhouse formulation delivers instant plumping and 24 hours of hydration. Leaves lips looking plumper, smoother and with a glossy, amped-up shine that lasts 8 hours', 0, 'Bobbi Brown - Extra Plump Hydrating Lip Gloss Serum', '', 'Bobbi Brown - Extra Plump Hydrating Lip Gloss Serum', 1, 1),
(149, 9, 21, 'Givenchy Rose - Perfecto Hydrating Tinted Lip Balm & Gloss', 1170, 1095, 25, '633432801_gloss6.1.jpg', 'Color: 220 Luminous Pink - sheer coral pink with shimmer', 'What it is: The first marbled liquid lip balm infused with skincare and a hint of color, for a natural lip glow and a touch of couture.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens.\r\n\r\n\r\n\r\nWhat Else You Need to Know: The marbled swirl texture of Rose Perfecto Liquid Lip Balm swathes lips in moisturizer-infused color. With 97% skincare ingredients, its comfortable formula leaves lips soothed, moisturized, glossy and radiantly healthy day after day. Shades 001 and 011 adapt to your lip?s pH creating a unique color.\r\n\r\n\r\n\r\nHighlighted ingredients:\r\n\r\n- Pink Pepper: Provides fullness and nourishes the lips\r\n\r\n- Hyaluronic Acid - Moisturizes and hydrates the lips while increasing suppleness & fullness\r\n\r\n-Vitamin C - Provides anti-oxidant benefits and plumping effect to the lips\r\n\r\nShea Butter- helps to protect lips from environment while increasing moisture and soothes the lips\r\n\r\n\r\n\r\nResearch Results:\r\n\r\nRose Perfecto Liquid Lip Balm is the ultimate natural glow enhancer for your lips:\r\n\r\n24-hour hydration*\r\n\r\nImmediate plumping effect\r\n\r\nLips are visibly soothed and moisturized day after day\r\n\r\n\r\n\r\n*Instrumental test on 11 volunteers\r\n\r\n**minimum percentage of the liquid balm base in order to hydrate before adding coloring ingredient', 1, 'Givenchy Rose - Perfecto Hydrating Tinted Lip Balm & Gloss', '', 'Givenchy Rose - Perfecto Hydrating Tinted Lip Balm & Gloss', 1, 1),
(150, 9, 21, 'Fenty Beauty by Rihanna - Gloss Bomb Universal Lip Luminizer', 975, 885, 24, '430469213_gloss7.1.jpg', 'Color: FU$$Y - shimmering pink', 'What it is: An ultimate, gotta-have-it lip gloss with explosive shine that feels as good as it looks.\r\n\r\nHighlighted Ingredients:\r\n- Shea Butter: Conditions skin.\r\n\r\nIngredient Callouts: Free of parabens and phthalates. This product is also cruelty-free.\r\n\r\nWhat Else You Need to Know: This universal lip luminizer delivers explosive shine in six shades that flatter all skin tones. One swipe of Gloss Bomb?s XXL wand leaves lips looking instantly fuller and smoother. The non-sticky formula is super shiny, and has an addictive peach-vanilla scent you just can\'t get enough of. Rihanna was obsessed with creating the perfect gloss that makes you want to put it on over and over again.\r\n?I made it because I wanted the girls to get kissed more.??Rihanna, Brand Founder', 1, 'Fenty Beauty by Rihanna - Gloss Bomb Universal Lip Luminizer', '', 'Fenty Beauty by Rihanna - Gloss Bomb Universal Lip Luminizer', 1, 1),
(151, 9, 21, 'Dior - Dior Addict Lip Maximizer Plumping Gloss', 1200, 1075, 15, '521106417_gloss8.1.jpg', 'Color: 001 Pink - a delicate pink', 'What it is: The iconic Dior Addict Lip Maximizer plumping lip gloss gets a refresh with a new 90% natural-origin formula, a reimagined case and updated shades.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, and triclocarban, and contains less than one percent of synthetic fragrances. This product is also vegan, cruelty-free, and gluten-free, and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Composed of 90% natural-origin ingredients and infused with cherry oil and hyaluronic acid, this Dior plumping lip gloss smooths and makes lips look bigger, leaving them hydrated for up to 24h. Now available in a new range of shiny shades with clear, intense, shimmering and holographic finishes.\r\n\r\n\r\n\r\nClinical Results: In a clinical test on 28 subjects:\r\n\r\n- 36%+ immediate volume effect - 48%+ smoother lips In an instrumental test on 30 subjects: - 24h hydration 90% natural-origin ingredients: Amount calculated based on the ISO 16128-1 and ISO 16128-2 standard. Water percentage included. The remaining ingredients contribute to the formula?s performance, sensory appeal and stability.', 0, 'Dior - Dior Addict Lip Maximizer Plumping Gloss', '', 'Dior - Dior Addict Lip Maximizer Plumping Gloss', 1, 1),
(152, 8, 28, 'Too Faced - Sun Bunny Natural Bronzer', 1080, 980, 15, '284893021_bronzer1.1.jpg', 'Color: Sun Bunny - radiant duo-tone bronzer', 'What it is:\r\nA dual-shaded bronzer with a subtle pink undertone.\r\n\r\nWhat it does:\r\nGet a classic, natural glow without ever looking orange. The slight pink undertone in this dual-shaded palette mimics the flush of a real tan for an authentic radiance you can claim is all your own.\r\n\r\nWhat it is formulated WITHOUT:\r\n- Parabens\r\n- Sulfates\r\n- Phthalates\r\n\r\nWhat else you need to know:\r\nToo Faced has revamped their classic Sun Bunny Bronzer to create a new, luminous bronzer that gives you a natural-looking tan that?s undetectable and easy to apply. The dual-tone is designed to mimic the color of a real tan, creating a luminous, sun-kissed finish.', 0, 'Too Faced - Sun Bunny Natural Bronzer', '', 'Too Faced - Sun Bunny Natural Bronzer', 1, 1),
(153, 8, 28, 'Dior - Dior Forever Natural Powder Bronzer', 1500, 1450, 12, '269216966_bronzer2.1.jpg', 'Color: 4 - tan bronze', 'What it is: A longwear bronzer for a sunny year-round glow with lightweight, blendable pigments that enhance the skin with natural-looking color and a fresh finish.\r\n\r\nCoverage: Light\r\n\r\nFinish: Matte\r\n\r\nFormulation: Pressed Powder\r\n\r\nHighlighted Ingredients:\r\n-Wild Pansy Extract: Protects skin?s natural hydration.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance.\r\n\r\nWhat Else You Need to Know: Made with 95% mineral-origin pigments and wild pansy extract, this bronzing powder blends seamlessly with skin for a flawless application and a smooth, natural glow. The hydrating formula helps maintain healthy moisture levels for all-day comfort. It is presented in a signature Dior couture case', 0, 'Dior - Dior Forever Natural Powder Bronzer', '', 'Dior - Dior Forever Natural Powder Bronzer', 1, 1),
(154, 8, 28, 'Armani Beauty - Luminous Silk Creamy Bronzing Powder', 1740, 1650, 12, '291793679_bronzer3.1.jpg', 'Color: 100 sunkissed sand - light medium with golden undertones', 'NEW\r\nWhat it is: An ultra-creamy bronzing powder infused with caring oils to deliver a smooth application, luminous finish, and up to 24-hour wear.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Natural\r\n\r\nFormulation: Pressed Powder\r\n\r\nWhat Else You Need to Know: Effortlessly create a glowing, sunkissed look with this super-creamy bronzing powder. Formulated with micronized pigments that blur and smooth the appearance of texture, the formula melts into skin seamlessly, staying in place for up to 24 hours.', 0, 'Armani Beauty - Luminous Silk Creamy Bronzing Powder', '', 'Armani Beauty - Luminous Silk Creamy Bronzing Powder', 1, 1),
(155, 8, 28, 'GUERLAIN - Terracotta Light Healthy Glow Bronzer', 1800, 1650, 12, '607345579_bronzer4.2.jpg', 'Color: 00 - Light Cool', 'What it is: A healthy glow bronzer that blends a unique harmony of blush, bronzer, and highlight tones, offered in six versatile shades to reveal a radiant glow.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Pressed Powder\r\n\r\nHighlight Ingredients:\r\nNatural-Origin Moroccan Flower Honey: moisturizes and maintains skin?s hydration\r\nNaturally Derived Pigments and Luminescent Shimmer: provides a long-lasting soft blushing and natural healthy glow\r\n\r\nWhat Else You Need to Know: This bronzing powder was formulated with 96 percent naturally derived ingredients* while maintaining a silky, light, easy-to-blend texture. It is enriched with hydrating ingredients for a long-lasting, comfortable finish.\r\n\r\n*Based on ISO 16128 standard, the remaining four percent contribute to product integrity and sensoriality.', 0, 'GUERLAIN - Terracotta Light Healthy Glow Bronzer', '', 'GUERLAIN - Terracotta Light Healthy Glow Bronzer', 1, 1),
(156, 8, 27, 'Rare Beauty by Selena Gomez - Positive Light Liquid Luminizer Highlight', 750, 690, 21, '566537608_hh1.1.jpg', 'Color: Mesmerize - rose bronze (Selena\'s go-to shade)', 'ONLY AT SEPHORA\r\nWhat it is: A silky, second-skin liquid highlighter that creates a lasting, soft, and luminous finish.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, and triclocarban, and contains less than one percent of synthetic fragrances. This product is also vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: Packed with light-reflecting pearl particles and a botanical blend of lotus, gardenia, and white waterlily, this multidimensional formula lends skin a dewy glow in seconds. Mix this weightless liquid highlighter with foundation or layer it across the high points of the face for instant radiance.', 0, 'Rare Beauty by Selena Gomez - Positive Light Liquid Luminizer Highlight', '', 'Rare Beauty by Selena Gomez - Positive Light Liquid Luminizer Highlight', 1, 1),
(157, 8, 27, 'Gucci - Luminous Face & Lip Gloss', 1110, 1085, 25, '457538220_hh2.1.jpg', 'High Shine finish - Standard size', 'What it is: A multi-use gel gloss creates a luminous light effect.\r\n\r\nWhat Else You Need to Know: This covetable gloss for eyes, lips, and cheeks adds subtle radiance to any face. This versatile gloss glides on with ease and delivers a transparent veil of high shine. The lightweight gel texture amplifies makeup, and the formula reflects light so skin visibly gleams. It is also breathable and easy to remove.', 0, 'Gucci - Luminous Face & Lip Gloss', '', 'Gucci - Luminous Face & Lip Gloss', 1, 1),
(158, 8, 27, 'Benefit Cosmetics - Cookie and Tickle Powder Highlighters', 1050, 980, 12, '360720797_hh3.1.jpg', 'Color: Cookie - golden pearl', 'What it is: A silky-soft, superfine powder highlighter.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance.\r\n\r\nWhat Else You Need to Know: These powder highlighters feel featherlight, sweep on effortlessly, and build easily. Get Cookie for a warm, delicious golden shimmer. Go with Tickle for a perfectly tickled-pink, luminous look.', 0, 'Benefit Cosmetics - Cookie and Tickle Powder Highlighters', '', 'Benefit Cosmetics - Cookie and Tickle Powder Highlighters', 1, 1),
(159, 8, 27, 'Anastasia Beverly Hills - Glow Seeker Champagne Gold Powder Highlighter', 1140, 1085, 12, '898993273_hh4.1.jpg', 'Color: Sun Idol - champagne gold', 'What it is: An illuminating powder for a lit-from-within radiance.\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Pressed Powder\r\n\r\nIngredient Callouts: Free of parabens and contains less than one percent synthetic fragrance. It is also cruelty-free.\r\n\r\nWhat Else You Need to Know: This multi-dimensional illuminating powder achieves the perfect glow and has an ultra-smooth formula for seamless blending and buildable intensity.?The universal shade delivers single-sweep luminosity, while the ultra-reflective powder formula gives the effect of a liquid for lit from within radiance.', 0, 'Anastasia Beverly Hills - Glow Seeker Champagne Gold Powder Highlighter', '', 'Anastasia Beverly Hills - Glow Seeker Champagne Gold Powder Highlighter', 1, 1),
(160, 8, 27, 'Fenty Beauty by Rihanna - Diamond Bomb All-Over Diamond Veil', 1260, 1050, 12, '785291513_HH5.1.jpg', 'Color: Ros? Rave - pure pink & gold sparkle', 'What it is: A diamond-dusted highlighter that delivers a 3D glittering veil of pure sparkle for face and body.\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, and phthalates. This product is also gluten-free and cruelty-free.\r\n\r\nWhat Else You Need to Know: Diamond Bomb has a 3D formula that?ll leave your face and body crystal-coated. It features a unique jelly-powder formula that?s cool to the touch, melts into skin, and creates an all-glitz-no-grit finish for all skin tones. Plus, it comes in a jewel-like compact you?ll never want to put down.\r\n\r\nDiamond Bomb All-Over Diamond Veil was inspired by the crystal dress Rihanna wore at CFDA 2014.\r\n\r\n\"You can never have enough diamonds! This is the closest thing to bathing in it. The sparkle in this is just insane!\"?Rihanna', 0, 'Fenty Beauty by Rihanna - Diamond Bomb All-Over Diamond Veil', '', 'Fenty Beauty by Rihanna - Diamond Bomb All-Over Diamond Veil', 1, 1),
(161, 8, 27, 'Dior - Dior Forever Couture Luminizer Highlighter Powder', 1500, 1445, 16, '670395207_hh6.1.jpg', 'Color: 02 Pink Glow - a radiant pink', 'What it is: A highlighter powder with a high-impact iridescent glow, giving skin an instant boost of radiance and comfort all day long.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Radiant\r\n\r\nFormulation: Pressed Powder\r\n\r\nHighlighted Ingredients:\r\n- Wild Pansy Extract: Protects skin?s natural hydration.\r\n\r\nWhat Else You Need to Know: Composed of 95% natural-origin pigments, this highlighter is highly concentrated in shimmering pearlescent pigments, blending seamlessly for a radiant-looking complexion*. The formula is infused with wild pansy extract to hydrate the skin and provide lasting comfort, all housed in a Dior couture compact. (*Amount calculated based on the ISO 16128-1 and ISO 16128-2 standard. Water percentage included.)', 1, 'Dior - Dior Forever Couture Luminizer Highlighter Powder', '', 'Dior - Dior Forever Couture Luminizer Highlighter Powder', 1, 1),
(162, 8, 26, 'bareMinerals - Warmth All-Over Face Color Loose Bronzer', 780, 695, 12, '556800453_c1.1.jpg', 'Color: Faux Tan - sunlit bronze', 'What it is:\r\n\r\nAn allover face powder that highlights your complexion with a touch of radiance.\r\n\r\n\r\n\r\nWhat it does:\r\n\r\nGive skin a dewy, gorgeous glow with bareMinerals All-Over Face Color. Its illuminating minerals enhances your complexion with natural-looking luminosity. Just dust it where the light naturally hits your face, including the forehead, cheeks, browbones, and the bridge of your nose.\r\n\r\n\r\n\r\nWhat it is formulated WITHOUT:\r\n\r\n- Parabens\r\n\r\n- Sulfates\r\n\r\n- Phthalates\r\n\r\n\r\n\r\nWhat else you need to know:\r\n\r\nThis product is free of synthetic fragrances, synthetic dyes, and petrochemicals.\r\n\r\n\r\n\r\n\r\n\r\nCLEAN at Sephora is our commitment to offering formulas that go beyond regulatory standards to avoid controversial ingredients without sacrificing on effectiveness.', 0, 'bareMinerals - Warmth All-Over Face Color Loose Bronzer', '', 'bareMinerals - Warmth All-Over Face Color Loose Bronzer', 1, 1),
(163, 8, 26, 'HUDA BEAUTY - Tantour Contour & Bronzer Cream', 900, 795, 10, '628388273_c2.1.jpg', 'Color: Fair - fair to light with cool undertones', 'ONLY AT SEPHORA\r\nWhat it is: An ultra-pigmented, blendable, and buildable cream-to-powder contour and bronzer formula.\r\n\r\nWhat Else You Need to Know: Housed in an easy-to-use jar, this deeply-pigmented, luxurious cream-to-powder bronzer is the versatile product you?ve been looking for. Whether you?re a beginner or a contouring pro, Huda?s Tantour allows you to create a healthy-looking, bronzed complexion or natural-to-dramatic contour as you layer.', 0, 'HUDA BEAUTY - Tantour Contour & Bronzer Cream', '', 'HUDA BEAUTY - Tantour Contour & Bronzer Cream', 1, 1),
(164, 8, 26, 'Charlotte Tilbury - Cheek to Chic Blush - Pillow Talk Collection', 1260, 1180, 31, '858491129_c3.1.jpg', 'Color: Pillow Talk Intense - deep rosy pink', 'What it is: A compact of two universally flattering pink nude blushes?the original Pillow Talk and new Pillow Talk Intense?to make your cheeks glow.\r\n\r\nIngredient Callouts: This product is cruelty-free.\r\n\r\nWhat Else You Need to Know: Richly pigmented for long-lasting wear, Charlotte Tilbury\'s two-step application blush will brighten any complexion. The shades are buildable so you can adjust the color suit your look. The formula is blendable and colors are uniform. Swish the outer shade across cheekbones to sculpt, then dab the inner color on the apples of your cheeks for a pretty, youthful glow.\r\n\r\nLight Flex Technology captures light and re-emits it for a luminous complexion. Color-rich pigments are rolled into finely crushed pearls that smooth and buff the skin for excellent blendability and uniform color. The formula is buildable for the perfect, healthy, even glow.\r\n\r\n\"I\'ve dialed up my iconic nude-pink Pillow Talk shade by adding warmth and deeper, sweeter rose tones for every skin tone?expanding the Pillow Talk universe for every moment, every mood, and everyone!\"?Charlotte Tilbury', 0, 'Charlotte Tilbury - Cheek to Chic Blush - Pillow Talk Collection', '', 'Charlotte Tilbury - Cheek to Chic Blush - Pillow Talk Collection', 1, 1),
(165, 8, 26, 'GUERLAIN - Terracotta Sunkissed Natural Bronzer', 1800, 1755, 12, '871876042_c4.1.jpg', 'Color: 00 - light cool', 'What it is: A legendary bronzing powder with naturally-derived ingredients that creates a seamless, true-to-skin bronzed glow in one step.\r\n\r\nFormulation: Powder\r\n\r\nHighlighted Ingredients:\r\n- Moroccan Argan Oil: Nourishes and hydrates to ensure a comfortable, non-drying finish.\r\n- Naturally-Derived Pigments and Luminescent Shimmer: Provide a long-lasting, sunkissed bronzed glow.\r\n\r\nIngredient Callouts: Free of parabens and sulfates SLS & SLES. It is also cruelty-free.\r\n\r\nWhat Else You Need to Know: The award-winning bronzing powder comes in six versatile, transfer-resistant shades designed to beautifully enhance all skin tones. Offered in three intensities: light, medium, and deep?each available in cool and warm undertones.\r\n\r\nSilky, light, and easy to blend, this second-skin bronzer is enriched with hydrating ingredients for a long-lasting, comfortable finish and sunkissed perfection on skin.\r\n\r\nThis bronzer is formulated with 96 percent naturally-derived ingredients?based on ISO 16128 standard, the remaining four percent contribute to product integrity and sensoriality.', 0, 'GUERLAIN - Terracotta Sunkissed Natural Bronzer', '', 'GUERLAIN - Terracotta Sunkissed Natural Bronzer', 1, 1),
(166, 8, 25, 'Glossier - Cloud Paint Gel Cream Blush', 660, 590, 12, '161541379_blush1.1.jpg', 'Color: Puff - light cool pink', 'What it is: A sheer, easy-to-use, buildable gel-cream blush contains blurring pigments for natural, seamless, streak-free, dewy cheek color and a lit-from-within glow.\r\n\r\nHighlighted Ingredients:\r\n- Soluble Collagen: Helps retain water and leaves cheeks looking fresh and dewy.\r\n- Smooth-Gel System: Has a lightweight gel-cream texture for silky, even application.\r\n- Blurring Powder Pigments: Give a soft, diffused, seamless finish with no streakiness.\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also gluten-free and cruelty-free.\r\n\r\nWhat Else You Need to Know: This lightweight, gel-cream blush uses sheer buildable pigments for your easiest blush application yet. The special blurring pigments create a soft, smooth look that doesn?t accentuate pores or texture, and the bouncy formula blends over cheeks for a natural, dewy glow that\'s not streaky or chalky.', 0, 'Glossier - Cloud Paint Gel Cream Blush', '', 'Glossier - Cloud Paint Gel Cream Blush', 1, 1),
(167, 8, 25, 'Rare Beauty by Selena Gomez - Soft Pinch Liquid Blush', 690, 625, 12, '321706560_blush2.1.jpg', 'Color: Hope - nude mauve', 'ONLY AT SEPHORA\r\nWhat it is: A weightless, long-lasting liquid blush that blends and builds beautifully for a soft, healthy flush. Available in matte and dewy finishes.\r\n\r\n\r\n\r\nIngredient Callouts: Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, and triclocarban, and contains less than one percent of synthetic fragrances. This product is also vegan and cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Create a pinch-perfect flush using this featherweight formula infused with long-lasting pigments that last all day. Available in matte or dewy finishes, this liquid blush blends beautifully to create soft, buildable color with a natural, second-skin finish.\r\n\r\n\r\n\r\nThis product is an Allure Best of Beauty award winner.\r\n\r\n\r\n\r\nReal results: \r\n\r\n100% said it applies easily and wears evenly\r\n\r\n100% said the texture is silky and glides on smoothly\r\n\r\n100% said it stays in place upon application and is comfortable to wear\r\n\r\n97% said the color blends seamlessly\r\n\r\n*In an independent consumer study of 32 subjects', 0, 'Rare Beauty by Selena Gomez - Soft Pinch Liquid Blush', '', 'Rare Beauty by Selena Gomez - Soft Pinch Liquid Blush', 1, 1),
(168, 8, 25, 'HUDA BEAUTY - Cheeky Tint Cream Blush Stick', 750, 715, 15, '835018432_blush3.1.jpg', 'Color: Proud Pink - a cool bubblegum pink', 'What it is: A beautifully buildable cream blush that melts into skin, gliding seamlessly over the complexion with a dewy hint of tint for major second-skin vibes and a juicy glow.\r\n\r\nCoverage: Medium\r\n\r\nFinish: Natural\r\n\r\nFormulation: Stick\r\n\r\nHighlighted Ingredients:\r\n- Lychee Extract and Vitamin E: Provide moisturization and smooth application.\r\n\r\nIngredient Callouts: Free of parabens and mineral oil. It is also vegan and cruelty-free.\r\n\r\nWhat Else You Need to Know: Infused with lychee extract and vitamin E, these super moisturizing, easy-to-use, water-, transfer-, and sweat-proof blush sticks immediately melt into the skin, leaving behind a super juicy pop of color. The Cheeky Tint Cream Blush Stick is available in five stunning shades and suitable for all skin types and tones.\r\n\r\nClinical Results:\r\n- 96% agreed it was easy to apply\r\n- 96% agreed it blended seamlessly into makeup\r\n- 96% agreed it?s comfortable to wear\r\n\r\n\r\nThis product is an Allure Best of Beauty award winner.', 0, 'HUDA BEAUTY - Cheeky Tint Cream Blush Stick', '', 'HUDA BEAUTY - Cheeky Tint Cream Blush Stick', 1, 1),
(169, 8, 25, 'HUDA BEAUTY - Blush Filter Soft Glow Liquid Blush', 630, 580, 2, '647624888_blush4.1.jpg', 'Color: Strawberry Cream - dusty rose', 'What it is: A lightweight liquid blush, with buildable pigments and finely milled micro-pearls, for a soft-focus, high-impact glow.\r\n\r\nFinish: Radiant\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also cruelty-free.\r\n\r\nWhat Else You Need to Know: The Blush Filter Soft Glow Liquid Blush formula has blendable pigments that effortlessly melt into the skin using its innovative doe-foot applicator for a long lasting dimensional ?airblushed? finish. The formula also includes a yummy candy scent to complement the sweet shade names.', 0, 'HUDA BEAUTY - Blush Filter Soft Glow Liquid Blush', '', 'HUDA BEAUTY - Blush Filter Soft Glow Liquid Blush', 1, 1),
(170, 8, 25, 'NARS - Afterglow Liquid Blush - Dolce Vita', 960, 900, 12, '689164757_blush5.1.jpg', 'Color: Dolce Vita - dusty rose', 'What it is: A lightweight, skincare-infused liquid blush that delivers a buildable rush of color with eight-hour hydration.\r\n\r\n\r\n\r\nHighlighted Ingredients: \r\n\r\n- Sodium Hyaluronate: Deeply nourishes the skin barrier and provides eight-hour hydration.\r\n\r\n- Vitamin E: Supports skin with powerful antioxidant properties.\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also gluten-free and comes in recyclable packaging.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Indulge in a rush of color loaded with hydrating skincare benefits. Create a lasting, natural-looking glow with a buildable, transfer-resistant formula that layers and blends without streaking. Infused with Sodium Hyaluronate for 8-hour hydration for healthy-looking skin.', 0, 'NARS - Afterglow Liquid Blush', '', 'NARS - Afterglow Liquid Blush', 1, 1),
(171, 8, 25, 'Charlotte Tilbury - Cheek To Chic Blush', 1260, 1195, 12, '974178697_blush6.1.jpg', 'Color: Love Glow - pink', 'What it is:\r\nAn easy swish-and-pop powder blush duo.\r\n\r\nWhat it does:\r\nRichly pigmented for long-lasting wear, Charlotte Tilbury\'s two-step application blush will brighten any complexion. The shades are buildable so you can adjust the color suit your look. The formula is blendable and colors are uniform. Swish the outer shade across cheekbones to sculpt, then dab the inner color on the apples of your cheeks for a pretty, youthful glow.\r\n\r\nLight Flex Technology captures light and re-emits it for a luminous complexion. Color-rich pigments are rolled into finely crushed pearls that smooth and buff the skin for excellent blendability and uniform color. The formula is buildable for the perfect, healthy, even glow.\r\n\r\nWhat it is formulated WITHOUT:\r\n- Parabens', 0, 'Charlotte Tilbury - Cheek To Chic Blush', '', 'Charlotte Tilbury - Cheek To Chic Blush', 1, 1),
(172, 8, 25, 'Rare Beauty by Selena Gomez - Soft Pinch Powder Blush', 780, 725, 32, '644827285_blush7.1.jpg', 'Color: Cheer (Selena\'s custom shade) - light warm pink', 'What it is: A lightweight glowy blush with buildable, seamless, and silky color to keep you beaming all day.\r\n\r\n\r\n\r\nCoverage: Medium\r\n\r\n\r\nFinish: Radiant\r\n\r\n\r\nFormulation: Pressed Powder\r\n\r\n\r\n\r\nIngredient Callouts: Free of parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, sulfates SLS & SLES, triclocarban, triclosan, and contains less than one percent synthetic fragrance. It is also cruelty-free.\r\n\r\n\r\n\r\nWhat Else You Need to Know: Incredibly smooth and weightless, this powder blush gives a pinch-perfect flush that seems to radiate from within. Its highly pigmented base is packed with shimmering pearls for natural dimension that?s easy to blend, build, or diffuse for a softer effect (without ever looking chalky or ashy).\r\n\r\n\r\n\r\nClinical Results: In an independent consumer testing panel of 55 subjects:\r\n\r\n- 99% said it instantly lights up skin with a radiant flush\r\n\r\n- 99% said it applies evenly\r\n\r\n- 97% said its highly pigmented color blends seamlessly', 0, 'Rare Beauty by Selena Gomez - Soft Pinch Luminous Powder Blush', '', 'Rare Beauty by Selena Gomez - Soft Pinch Luminous Powder Blush', 1, 1),
(173, 8, 25, 'Gucci - Luminous Matte Beauty Blush', 1475, 1395, 12, '283271357_blush8.1.jpg', 'Color: 09 - intense plum', 'What it is: A buildable blush for cheeks and eyes with a hydrating, ultra-thin powder.\r\n\r\nHighlighted Ingredients:\r\n- Shea Butter: Reduces the overall feeling of dryness.\r\n- Hyaluronic Acid: Provides immediate and long-lasting nourishment.\r\n- Black Rose Oil: Provides antioxidant benefits that soothe skin.\r\n\r\nWhat Else You Need to Know: This formula of powders and pigments is infused with emollient waxes to deliver buildable, long-lasting color that intensifies seamlessly. The powder cares for all skin types with an infusion of shea butter, hyaluronic acid, and black rose oil, blending easily for a second-skin feel.', 0, 'Gucci - Luminous Matte Beauty Blush', '', 'Gucci - Luminous Matte Beauty Blush', 1, 1),
(174, 5, 0, 'Marc Jacobs Fragrances - Daisy Love Eau So Sweet', 0, 0, 0, '765829374_p1.1.jpg', 'Woman Perfume', 'Fragrance Family: Floral\r\n\r\nScent Type: Fruity Floral\r\n\r\nKey Notes: White Raspberry, Daisy Tree Petals, Sugar Musk\r\n\r\nFragrance Description: This fragrance boasts notes of sparkling white raspberries to reveal a lustrous personality, while a soft floral airiness and delicate musk immerse you in the sweetness of the moment.\r\n\r\nThis fresh gourmand fragrance creates an enticing atmosphere that truly embraces its name.', 0, 'Marc Jacobs Fragrances - Daisy Love Eau So Sweet', '', 'Marc Jacobs Fragrances - Daisy Love Eau So Sweet', 1, 1),
(175, 5, 0, 'KAYALI - VANILLA CANDY ROCK SUGAR | 42 Eau de Parfum', 0, 0, 0, '667144112_p2.1.jpg', 'Size: 0.34 oz / 10 ml eau de parfum spray', 'Item 2752632\r\n\r\nNEW\r\nONLY AT SEPHORA\r\nFragrance Family: Warm & Spicy\r\n\r\nScent Type: Warm & Sweet Gourmands\r\n\r\nKey Notes: Candied Pear, Rock Sugar, Vanilla Cream\r\n\r\nFragrance Description: Inspired by Mona?s love for candy and mouthwatering notes, Vanilla Candy celebrates one of the most desired notes in fragrance with its delicious blend of sweet ingredients. Notes of glazed candied pear and bubble gum playfully enhance the fruity,?candy-like sweetness with a tempting vanillic?explosion at the heart, magnified by warm and woody notes of tonka bean, sandalwood, and?patchouli.\r\n\r\nAbout the Bottle: KAYALI\'s signature diamond-shaped bottles and opulent jeweled caps are inspired by traditional Middle Eastern oud bottles. The number 42 indicates the 42 rounds of formulations it took to achieve the perfect juice.\r\n\r\nAbout the Fragrance: Live your sweetest fantasy with VANILLA CANDY ROCK SUGAR | 42 Eau de Parfum. Sugary, delightful, and tempting, this fragrance is a lighter, youthful take on the brand?s cult favorite, VANILLA | 28.', 0, 'KAYALI - VANILLA CANDY ROCK SUGAR | 42 Eau de Parfum', '', 'KAYALI - VANILLA CANDY ROCK SUGAR | 42 Eau de Parfum', 2, 1),
(176, 5, 0, 'TOM FORD - Lost Cherry Eau de Parfum Fragrance', 0, 0, 0, '514538371_p3.3.jpg', 'Woman Perfume', 'Fragrance Family: Warm & Spicy\r\n\r\nScent Type: Warm & Sweet Gourmands\r\n\r\nKey Notes: Black Cherry, Tonka Bean, Almond\r\n\r\nFragrance Description: Lost Cherry?s candy-like gleam of exotic black cherry and liqueur touched with teasing almond gives way to a Turkish rose and jasmine sambac blend that penetrates the senses. The full-bodied perfume attains fantasy-like levels of insatiability.\r\n\r\nAbout the Bottle: Lost Cherry is contained in a luscious, deep, cherry-red bottle. Capturing the scent?s dichotomy of sweet and dark, the flacon is adorned with a pale-pink label?the color of cherry blossoms.\r\n\r\nAbout the Fragrance: \"Like the plump fruit waiting to be eaten, Lost Cherry is powerful and insatiable. Notes of cherry liqueur and a touch of bitter almond drip into its heart, glossing it with a candy-like gleam.\"?Tom Ford', 0, 'TOM FORD - Lost Cherry Eau de Parfum Fragrance', '', 'TOM FORD - Lost Cherry Eau de Parfum Fragrance', 2, 1),
(177, 5, 0, 'BURBERRY - My Burberry Blush Eau de Parfum', 0, 0, 0, '483039235_p4.1.jpg', 'Woman Perfume', 'Fragrance Family:\r\nFloral\r\n\r\nScent Type:\r\nFruity Florals\r\n\r\nKey Notes:\r\nPomegranate, Rose, Jasmine\r\n\r\nAbout:\r\nMy Burberry Blush steps back into a London garden as it awakens in the first light of day. Capturing the senses, blossoming flowers open with a burst of energy, while dapples of glowing light weave, twist, and turn through the flora. Created by perfumers Francis Kurkdjian and Christopher Bailey, the fragrance opens with sharp pomegranate fused with vibrant lemon. Delicate rose petal notes are lifted with crisp apple, while a base of jasmine and wisteria round off the scent for an intensely feminine touch.\r\n\r\nThe bottle is enlivened with a feminine and sophisticated pink hue, reflecting the confident and spirited character of the new scent. Its signature design details remain with a lighter shade horn-look lid?inspired by the buttons of the BURBERRY trench coat?and a hand-tied gabardine knot around the neck.', 0, 'BURBERRY - My Burberry Blush Eau de Parfum', '', 'BURBERRY - My Burberry Blush Eau de Parfum', 2, 1),
(178, 5, 0, 'VICTORIA\'S SECRET BEAUTY - Bombshell Isle Eau de Parfum', 3900, 3750, 12, '646295820_p5.1.jpg', 'Woman Perfume', 'Escape to crystal blue waters. Tropical and fresh, Bombshell Isle is a new addition to America\'s #1 Fragrance.* Bombshell Isle Eau de Parfum blends vibrant florals with creamy coconut to reveal a refreshing signature. Like the touch of a cool breeze, notes of ocean air drift towards the iridescent heart of the pearl peonies. At the bottom, sandalwood and tonka bean welcome the scent with a warm island embrace. He limited the luxury of heaven.\r\n\r\nFragrance type: Fresh Juicy Floral\r\nNotes: Ocean air, pearl peony, island coconut\r\nEau de Parfum is the most concentrated, pure version of the fragrance\r\n50 ml\r\n*Source: Euromonitor, US retail sales, 2020, excluding sprays. The total of intact sales of the Victoria\'s Secret Bombshell fragrance series.', 0, 'VICTORIA\'S SECRET BEAUTY - Bombshell Isle Eau de Parfum', '', 'VICTORIA\'S SECRET BEAUTY - Bombshell Isle Eau de Parfum', 2, 1),
(179, 5, 0, 'Dior - Miss Dior Eau de Parfum', 0, 0, 0, '941585445_p6.1.jpg', 'Woman Perfume', 'Fragrance Family: Florals\r\n\r\n\r\n\r\nScent Type: Warm Florals\r\n\r\n\r\n\r\nKey Notes: Lily-of-the-Valley, Centifolia Rose, Soft Musk\r\n\r\n\r\n\r\nFragrance Description: In a warm and floral perfume, fresh notes of lily-of-the-valley, spicy peony, and powdery iris immediately awaken the senses in a dazzling bouquet.\r\n\r\n\r\n\r\nAbout the Bottle: Inspired by women\'s couture, the iconic Miss Dior perfume bottle features a handwoven bow from 346 colorful threads for a touch of Dior craftsmanship.\r\n\r\n\r\n\r\nAbout the Fragrance: ?All our senses are awakened by the sensuality of the new Miss Dior Eau de Parfum?s floral bouquet. It celebrates the velvety and sensual Roses?heightened by a fresh Lily-of-the-Valley and biting Peony?enveloped by a powdery Iris.? ?Dior Perfumer-Creator', 0, 'Dior - Miss Dior Eau de Parfum', '', 'Dior - Miss Dior Eau de Parfum', 2, 1),
(180, 5, 0, 'Lancome - La Vie Est Belle', 0, 0, 0, '770615351_p7.1.jpg', 'Woman Perfume', 'Fragrance Family: Warm & Spicy\r\n\r\n\r\n\r\nScent Type: Warm & Sweet Gourmands\r\n\r\n\r\n\r\nKey Notes: Iris, Patchouli, Vanilla\r\n\r\n\r\n\r\nFragrance Description: This floral perfume entwines iris, earthy patchouli sustainably sourced in Bali, and warm vanilla with spun sugar leaving a sensual trail. It is a floral gourmand bouquet blending the most notable ingredients for a long-lasting and iconic fragrance.\r\n\r\n\r\n\r\nAbout the Bottle: The art of French perfumery is manifested in a unique perfume bottle that captures the essence of happiness in the shape of a smile formed at the bottle\'s base.\r\n\r\n\r\n\r\nAbout the Fragrance: \"La vie est belle,\" a French expression meaning \"life is beautiful,\" is about choosing your own path to happiness and inspiring others. This is a timeless fragrance exclusively crafted by two renowned French perfumers, Anne Flipo and Dominique Ropion, where each spray will unlock a beautiful day.', 0, 'Lancome - La Vie Est Belle', '', 'Lanc?me - La Vie Est Belle', 2, 1),
(181, 11, 29, 'berk_product_1', 0.5, 0.5, 1, '617440520_272955976_tint2.1.jpg', 'berk', 'berk', 0, 'berk', 'berk', 'berk', 6, 1),
(182, 11, 29, 'berk_product_2', 99.9, 99.9, 3, '833232249_p2.1.jpg', 'berk', 'berk', 0, 'berk', 'berk', 'berk', 6, 1),
(183, 12, 30, 'berk_product3', 120, 120, 20, '647098153_pembe1.1.jpg', 'berk', 'berk', 0, 'ber', 'berk', 'berk', 6, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `size_id`, `color_id`, `mrp`, `price`, `qty`) VALUES
(1, 8, 5, 1, 4850, 4580, 20),
(2, 8, 5, 3, 4850, 4580, 22),
(3, 8, 5, 5, 4850, 4580, 18),
(4, 8, 5, 4, 4850, 4580, 10),
(5, 7, 5, 1, 4850, 4580, 12),
(6, 7, 5, 3, 4850, 4580, 10),
(7, 7, 5, 5, 4850, 4580, 4),
(8, 6, 5, 0, 1999, 1500, 10),
(9, 6, 4, 0, 1989, 1490, 9),
(10, 5, 0, 0, 2799, 2399, 10),
(11, 7, 5, 4, 4850, 4580, 5),
(12, 18, 5, 5, 4850, 4580, 14),
(13, 18, 5, 1, 4850, 4580, 10),
(14, 18, 5, 3, 4850, 4580, 4),
(15, 18, 5, 4, 4850, 4580, 12),
(16, 9, 5, 4, 4850, 4580, 10),
(17, 9, 5, 1, 4850, 4580, 14),
(18, 9, 5, 3, 4850, 4580, 47),
(19, 9, 5, 5, 4850, 4580, 14),
(20, 19, 5, 4, 4850, 4580, 10),
(21, 20, 5, 5, 4850, 4580, 10),
(22, 21, 5, 3, 4850, 4580, 18),
(23, 22, 5, 1, 4850, 4580, 8),
(24, 23, 5, 9, 1680, 1595, 48),
(25, 24, 5, 8, 1680, 1595, 8),
(26, 25, 5, 7, 1680, 1595, 4),
(27, 26, 5, 6, 1680, 1595, 48),
(28, 27, 5, 10, 1780, 1685, 5),
(29, 28, 5, 11, 1780, 1595, 36),
(30, 29, 5, 4, 1780, 1685, 5),
(31, 30, 5, 13, 1780, 1685, 10),
(32, 31, 5, 17, 2010, 1850, 5),
(33, 32, 5, 16, 2010, 1850, 8),
(34, 33, 5, 15, 2010, 1850, 15),
(35, 34, 5, 14, 2010, 1850, 4),
(36, 35, 4, 21, 2050, 1910, 12),
(37, 36, 4, 20, 2010, 1910, 5),
(38, 37, 4, 19, 2010, 1910, 6),
(39, 38, 4, 18, 2010, 1910, 9),
(40, 39, 7, 25, 2950, 2780, 5),
(41, 40, 7, 24, 2950, 2780, 5),
(42, 41, 7, 23, 2950, 2780, 6),
(43, 42, 7, 22, 2950, 2780, 16),
(44, 43, 5, 29, 2230, 2110, 5),
(45, 44, 5, 28, 2230, 2110, 5),
(46, 45, 5, 27, 2230, 2110, 12),
(47, 46, 5, 26, 2230, 2110, 3),
(48, 47, 5, 30, 2260, 2150, 14),
(49, 48, 5, 31, 2260, 2150, 12),
(50, 49, 5, 34, 2260, 2150, 12),
(51, 50, 5, 35, 2260, 2150, 20),
(52, 51, 8, 36, 580, 550, 12),
(53, 52, 8, 38, 580, 550, 10),
(54, 53, 8, 37, 580, 550, 25),
(55, 54, 8, 39, 580, 550, 15),
(56, 55, 9, 40, 1515, 1445, 10),
(57, 56, 9, 41, 1515, 1445, 40),
(58, 57, 9, 42, 1515, 1445, 24),
(59, 58, 9, 43, 1515, 1445, 31),
(60, 59, 9, 44, 1515, 1445, 13),
(61, 60, 9, 45, 1515, 1445, 13),
(62, 61, 9, 46, 1515, 1445, 12),
(63, 62, 9, 47, 1515, 1445, 20),
(64, 63, 10, 51, 1130, 1075, 24),
(65, 64, 10, 50, 1130, 1075, 25),
(66, 65, 10, 49, 1130, 1075, 25),
(67, 66, 10, 48, 1130, 1075, 17),
(68, 67, 11, 52, 1420, 1350, 24),
(69, 68, 11, 53, 1420, 1350, 20),
(70, 69, 11, 54, 1420, 1350, 23),
(71, 70, 11, 55, 1420, 1350, 12),
(72, 71, 12, 59, 1515, 1445, 12),
(73, 72, 12, 58, 1515, 1445, 12),
(74, 73, 12, 57, 1515, 1445, 32),
(75, 74, 12, 56, 1515, 1445, 20),
(76, 75, 13, 63, 1940, 1840, 12),
(77, 76, 13, 62, 1940, 1840, 12),
(78, 77, 13, 61, 1940, 1840, 25),
(79, 78, 13, 60, 1940, 1840, 14),
(80, 79, 15, 0, 810, 765, 12),
(81, 79, 14, 0, 1485, 1410, 15),
(82, 80, 14, 0, 1485, 1410, 20),
(83, 80, 15, 0, 810, 765, 15),
(84, 81, 16, 0, 1455, 1380, 25),
(85, 82, 5, 0, 1935, 1840, 35),
(86, 83, 5, 64, 1290, 1225, 50),
(87, 84, 5, 65, 1290, 1225, 15),
(88, 85, 5, 66, 1290, 1225, 26),
(89, 86, 5, 66, 1290, 1225, 26),
(90, 87, 5, 67, 1290, 1225, 25),
(91, 88, 15, 0, 1130, 1075, 26),
(92, 88, 16, 0, 645, 615, 30),
(93, 89, 15, 0, 645, 615, 36),
(94, 89, 5, 0, 1165, 1100, 25),
(95, 90, 15, 0, 645, 615, 36),
(96, 90, 5, 0, 1165, 1100, 26),
(97, 91, 9, 0, 1065, 1010, 26),
(98, 92, 17, 0, 965, 920, 15),
(99, 93, 18, 0, 1035, 985, 26),
(100, 94, 18, 0, 950, 915, 15),
(101, 95, 19, 0, 1080, 960, 36),
(102, 96, 11, 0, 1080, 960, 35),
(103, 97, 20, 0, 1560, 1495, 36),
(104, 98, 21, 0, 2025, 1920, 25),
(105, 99, 22, 0, 2250, 2095, 39),
(106, 100, 0, 0, 2100, 2100, 35),
(107, 101, 0, 0, 1315, 1315, 38),
(108, 102, 0, 0, 1450, 1350, 60),
(109, 103, 0, 0, 1800, 1800, 25),
(110, 104, 0, 0, 1950, 1950, 65),
(111, 105, 0, 0, 2150, 1950, 36),
(112, 106, 0, 0, 2150, 1950, 26),
(113, 107, 0, 0, 2100, 2100, 65),
(114, 108, 23, 0, 750, 690, 45),
(115, 109, 0, 0, 750, 690, 35),
(116, 110, 0, 0, 840, 780, 25),
(117, 111, 24, 0, 1080, 960, 25),
(118, 112, 0, 0, 1050, 1050, 36),
(119, 113, 0, 0, 1290, 1200, 36),
(120, 114, 25, 0, 540, 480, 52),
(121, 115, 26, 0, 750, 695, 25),
(122, 116, 27, 0, 720, 250, 29),
(123, 117, 28, 0, 780, 780, 19),
(124, 118, 29, 0, 1200, 950, 35),
(125, 119, 30, 0, 1050, 960, 35),
(126, 120, 31, 0, 780, 720, 28),
(127, 121, 32, 0, 390, 280, 34),
(128, 122, 33, 0, 720, 660, 34),
(129, 123, 34, 0, 395, 285, 34),
(130, 124, 35, 0, 750, 690, 24),
(131, 125, 26, 0, 780, 675, 19),
(132, 126, 36, 0, 840, 780, 34),
(133, 127, 37, 0, 840, 760, 34),
(134, 128, 38, 0, 960, 845, 18),
(135, 129, 39, 0, 1050, 950, 34),
(136, 130, 21, 0, 660, 600, 15),
(137, 131, 24, 0, 720, 680, 35),
(138, 132, 41, 0, 780, 690, 34),
(139, 133, 42, 0, 780, 695, 15),
(140, 134, 12, 0, 840, 820, 34),
(141, 135, 18, 0, 1200, 1025, 19),
(142, 136, 43, 0, 780, 725, 25),
(143, 137, 44, 0, 960, 890, 35),
(144, 138, 45, 0, 1290, 1150, 13),
(145, 139, 46, 0, 1320, 1250, 15),
(146, 140, 47, 0, 1450, 1280, 14),
(147, 141, 48, 0, 1315, 1295, 15),
(148, 142, 49, 0, 1380, 1325, 14),
(149, 143, 33, 0, 1500, 1400, 15),
(150, 144, 35, 0, 520, 485, 14),
(151, 145, 50, 0, 600, 570, 18),
(152, 146, 51, 0, 780, 710, 14),
(153, 147, 52, 0, 1050, 975, 16),
(154, 148, 35, 0, 1140, 1050, 15),
(155, 149, 11, 0, 1170, 1095, 25),
(156, 150, 18, 0, 975, 885, 14),
(157, 151, 11, 0, 1200, 1075, 35),
(158, 152, 53, 0, 1080, 980, 34),
(159, 153, 54, 0, 1500, 1450, 12),
(160, 154, 55, 0, 1740, 1650, 6),
(161, 155, 56, 0, 1800, 1650, 15),
(162, 156, 15, 0, 750, 690, 14),
(163, 157, 57, 0, 1110, 1085, 12),
(164, 158, 53, 0, 1050, 980, 14),
(165, 159, 58, 0, 1140, 1085, 24),
(166, 160, 53, 0, 1260, 1050, 14),
(167, 161, 29, 0, 1500, 1445, 12),
(168, 162, 60, 0, 780, 695, 12),
(169, 163, 61, 0, 900, 795, 18),
(170, 164, 53, 0, 1260, 1180, 15),
(171, 165, 30, 0, 1800, 1755, 14),
(172, 166, 8, 0, 660, 590, 15),
(173, 167, 62, 0, 690, 625, 17),
(174, 168, 63, 0, 750, 715, 14),
(175, 169, 64, 0, 630, 580, 9),
(176, 170, 51, 0, 960, 900, 31),
(177, 171, 53, 0, 1260, 1195, 20),
(178, 172, 43, 0, 780, 725, 12),
(179, 173, 0, 0, 1475, 1395, 21),
(180, 174, 65, 0, 4110, 3900, 10),
(181, 174, 66, 0, 3000, 2850, 15),
(182, 174, 8, 0, 1800, 1200, 15),
(183, 175, 67, 0, 4140, 3930, 10),
(184, 175, 68, 0, 3000, 2850, 16),
(185, 175, 69, 0, 960, 900, 16),
(186, 176, 67, 0, 18450, 17520, 15),
(187, 176, 68, 0, 11850, 11250, 21),
(188, 176, 5, 0, 7500, 7110, 12),
(189, 177, 65, 0, 5040, 4770, 12),
(190, 177, 5, 0, 3150, 3000, 15),
(191, 178, 68, 0, 3900, 3750, 12),
(192, 179, 67, 0, 4950, 4950, 12),
(193, 179, 68, 0, 4050, 4050, 12),
(194, 179, 5, 0, 30000, 3000, 14),
(195, 180, 68, 0, 3600, 3600, 10),
(196, 180, 5, 0, 2550, 2250, 16),
(197, 181, 0, 0, 1, 1, 1),
(198, 182, 0, 0, 100, 100, 3),
(199, 183, 0, 0, 120, 120, 20);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_images` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `product_images`) VALUES
(1, 8, '232706987_lamer1.1.jpg'),
(2, 8, '232549632_lamer1.2.jpg'),
(4, 8, '814121963_lamer1.3.jpg'),
(5, 8, '789542549_lamer1.4.jpg'),
(6, 7, '685487742_lamer2.1.jpg'),
(7, 7, '248094275_lamer1.2.jpg'),
(8, 7, '740049682_lamer2.3.jpg'),
(9, 7, '482535842_lamer2.4.jpg'),
(10, 18, '514390226_lamer3.1.jpg'),
(11, 18, '694975617_lamer1.2.jpg'),
(12, 18, '619982829_lamer3.2.jpg'),
(13, 18, '865815614_lamer3.4.jpg'),
(14, 9, '909640558_lamer4.1.jpg'),
(15, 9, '432749803_lamer1.2.jpg'),
(16, 9, '836133569_lamer4.2.jpg'),
(17, 19, '832968952_lamer4.1.jpg'),
(18, 19, '985668340_lamer1.2.jpg'),
(19, 19, '859311169_lamer4.2.jpg'),
(20, 20, '431477702_lamer3.1.jpg'),
(21, 20, '112158884_lamer1.2.jpg'),
(22, 20, '435035708_lamer3.2.jpg'),
(23, 20, '182390475_lamer3.4.jpg'),
(24, 21, '419778801_lamer2.1.jpg'),
(25, 21, '627575082_lamer1.2.jpg'),
(26, 21, '382835075_lamer2.3.jpg'),
(27, 21, '844884278_lamer2.4.jpg'),
(28, 22, '322276194_lamer1.1.jpg'),
(29, 22, '792519504_lamer1.2.jpg'),
(30, 22, '305893087_lamer1.3.jpg'),
(31, 22, '475008014_lamer1.4.jpg'),
(32, 23, '225032462_nars4.1.jpg'),
(33, 23, '880938900_nars4.2.jpg'),
(34, 23, '229741903_nars1.2.jpg'),
(35, 23, '915543541_nars4.3.jpg'),
(36, 24, '524021733_nars1.1.jpg'),
(37, 24, '598354255_nars1.2.jpg'),
(38, 24, '684751688_nars1.3.jpg'),
(39, 24, '349105358_nars1.4.jpg'),
(40, 25, '934215010_nars2.1.jpg'),
(41, 25, '929808163_nars1.2.jpg'),
(42, 25, '851606223_nars2.2.jpg'),
(43, 25, '270268303_nars2.3.jpg'),
(44, 26, '270910256_nars3.1.jpg'),
(45, 26, '429553761_nars3.2.jpg'),
(46, 26, '141992028_nars1.2.jpg'),
(47, 26, '408958290_nars3.3.jpg'),
(48, 27, '200444634_este4.1.jpg'),
(49, 27, '404322852_este4.2.jpg'),
(50, 27, '450629223_este4.3.jpg'),
(51, 27, '841902375_este4.4.jpg'),
(52, 29, '348055306_este2.1.jpg'),
(53, 29, '775368749_este2.2.jpg'),
(54, 29, '243930783_este2.3.jpg'),
(55, 29, '752073984_este4.4.jpg'),
(56, 30, '116147573_este1.1.jpg'),
(57, 30, '989693830_este1.2.jpg'),
(58, 30, '485387936_este1.3.jpg'),
(59, 30, '306194723_este4.4.jpg'),
(60, 31, '228305511_dior4.1.jpg'),
(61, 31, '790837540_dior4.2.jpg'),
(62, 31, '630736516_dior4.3.jpg'),
(63, 31, '303755584_dior4.4.jpg'),
(64, 32, '978801322_dior3.1.jpg'),
(65, 32, '564239604_dior3.2.jpg'),
(66, 32, '602815223_dior3.3.jpg'),
(67, 32, '549023012_dior4.4.jpg'),
(68, 33, '791128714_dior2.1.jpg'),
(69, 33, '793417687_dior2.2.jpg'),
(70, 33, '475297981_dior2.3.jpg'),
(71, 33, '203433827_dior4.4.jpg'),
(72, 34, '864269254_dior1.1.jpg'),
(73, 34, '161602222_dior1.2.jpg'),
(74, 34, '255868900_dior1.3.jpg'),
(75, 34, '609393039_dior4.4.jpg'),
(76, 35, '500054035_yves4.1.jpg'),
(77, 35, '502945596_yves4.2.jpg'),
(78, 35, '526985354_yves4.3.jpg'),
(79, 36, '822674485_yves3.1.jpg'),
(80, 36, '753389091_yves3.2.jpg'),
(81, 36, '351310481_yves4.3.jpg'),
(82, 37, '866105117_yves2.1.jpg'),
(83, 37, '856392581_yves2.2.jpg'),
(84, 37, '714823450_yves4.3.jpg'),
(85, 38, '821382292_yves1.1.jpg'),
(86, 38, '210643881_yves1.2.jpg'),
(87, 38, '199217416_yves4.3.jpg'),
(88, 39, '369655802_diorc4.1.jpg'),
(89, 39, '939705165_diorc2.1.jpg'),
(90, 40, '248929659_diorc3.1.jpg'),
(91, 40, '298825120_diorc3.2.jpg'),
(92, 41, '879927017_diorc2.1.jpg'),
(93, 41, '756385681_diorc2.2.jpg'),
(94, 42, '658513192_diorc1.1.jpg'),
(95, 42, '426920900_diorc1.2.jpg'),
(96, 43, '513850563_gucci4.1.jpg'),
(97, 43, '835818302_gucci4.2.jpg'),
(98, 44, '255365722_gucci3.1.jpg'),
(99, 44, '863910555_gucci3.2.jpg'),
(100, 45, '623756841_gucci2.1.jpg'),
(101, 45, '390976850_gucci2.2.jpg'),
(102, 46, '341400021_gucci1.1.jpg'),
(103, 46, '426100358_gucci1.2.jpg'),
(104, 47, '165502093_prada4.1.jpg'),
(105, 47, '181822866_prada4.2.jpg'),
(106, 47, '910747556_prada4.3.jpg'),
(107, 47, '977353357_prada4.4.jpg'),
(108, 48, '439097355_prada3.1.jpg'),
(109, 48, '543785866_prada3.2.jpg'),
(110, 48, '236129019_prada4.3.jpg'),
(111, 48, '469795016_prada4.4.jpg'),
(112, 49, '955076840_prada2.1.jpg'),
(113, 49, '373767170_prada2.2.jpg'),
(114, 49, '398144930_prada2.3.jpg'),
(115, 49, '264650747_prada4.4.jpg'),
(116, 50, '984903090_prada1.1.jpg'),
(117, 50, '785636591_prada1.2.jpg'),
(118, 50, '246510866_prada1.3.jpg'),
(119, 50, '859465671_prada4.4.jpg'),
(120, 51, '319406137_bb1.1.jpg'),
(121, 51, '861732070_bb1.2.jpg'),
(122, 51, '363377952_bb1.3.jpg'),
(123, 52, '138827809_bb2.1.jpg'),
(124, 52, '261482024_bb2.2.jpg'),
(125, 52, '319280483_bb1.3.jpg'),
(126, 53, '375538832_bb3.1.jpg'),
(127, 53, '723272685_bb3.2.jpg'),
(128, 53, '147655566_bb3.3.jpg'),
(129, 54, '733800773_bb4.4.jpg'),
(130, 54, '610057299_bb4.2.jpg'),
(131, 54, '893162192_bb3.3.jpg'),
(132, 55, '899547445_cc1.1.jpg'),
(133, 55, '212486284_cc1.2.jpg'),
(134, 55, '137174270_cc1.3.jpg'),
(135, 55, '115888000_cc1.4.jpg'),
(136, 56, '671028935_cc2.1.jpg'),
(137, 56, '984656497_cc2.2.jpg'),
(138, 56, '537877348_cc2.3.jpg'),
(139, 56, '251081955_cc1.4.jpg'),
(140, 57, '812281523_cc3.1.jpg'),
(141, 57, '398294427_cc3.2.jpg'),
(142, 57, '845017373_cc3.3.jpg'),
(143, 57, '735208082_cc1.4.jpg'),
(144, 58, '324934321_cc4.1.jpg'),
(145, 58, '316200359_cc4.2.jpg'),
(146, 58, '625084982_cc4.3.jpg'),
(147, 58, '965736746_cc1.4.jpg'),
(148, 59, '762624046_ccc1.1.jpg'),
(149, 59, '724864611_ccc1.2.jpg'),
(150, 59, '217899415_ccc1.3.jpg'),
(151, 59, '117314924_ccc1.4.jpg'),
(152, 60, '217553892_ccc2.1.jpg'),
(153, 60, '250585321_ccc2.2.jpg'),
(154, 60, '369003592_ccc2.3.jpg'),
(155, 60, '844181092_ccc1.4.jpg'),
(156, 61, '509569903_ccc3.1.jpg'),
(157, 61, '587725719_ccc3.2.jpg'),
(158, 61, '172894268_ccc3.3.jpg'),
(159, 61, '114565479_ccc1.4.jpg'),
(160, 62, '302360848_ccc4.1.jpg'),
(161, 62, '889347617_ccc4.2.jpg'),
(162, 62, '745919650_ccc4.3.jpg'),
(163, 62, '447420681_ccc1.4.jpg'),
(164, 63, '786875720_con1.1.jpg'),
(165, 63, '161406921_con1.2.jpg'),
(166, 63, '248202146_con1.3.jpg'),
(167, 63, '556254878_con1.4.jpg'),
(168, 64, '746439763_con2.1.jpg'),
(169, 64, '341073302_con2.2.jpg'),
(170, 64, '793395697_con2.3.jpg'),
(171, 64, '305417290_con1.4.jpg'),
(172, 65, '583193418_con3.1.jpg'),
(173, 65, '562206448_con3.2.jpg'),
(174, 65, '890350977_con3.3.jpg'),
(175, 65, '825589039_con1.4.jpg'),
(176, 66, '846635522_con4.1.jpg'),
(177, 66, '587949755_con4.2.jpg'),
(178, 66, '884037013_con4.3.jpg'),
(179, 66, '343986404_con1.4.jpg'),
(180, 67, '725684336_armani1.1.jpg'),
(181, 67, '247135919_armani1.2.jpg'),
(182, 67, '767850830_armani1.3.jpg'),
(183, 68, '376593140_armani2.1.jpg'),
(184, 69, '369428645_armani3.1.jpg'),
(185, 69, '194949061_armani3.2.jpg'),
(186, 69, '647716009_armani3.3.jpg'),
(187, 70, '134359635_armani4.1.jpg'),
(188, 70, '559097208_armani4.2.jpg'),
(189, 70, '337009380_armani4.3.jpg'),
(190, 71, '991418909_guci1.1.jpg'),
(191, 71, '774956480_guci1.2.jpg'),
(192, 71, '659164454_guci1.3.jpg'),
(193, 71, '478126771_guci1.4.jpg'),
(194, 72, '908287181_guci2.1.jpg'),
(195, 72, '954260909_guci2.2.jpg'),
(196, 72, '399846557_guci2.3.jpg'),
(197, 72, '477291749_guci1.4.jpg'),
(198, 73, '362772267_guci3.1.jpg'),
(199, 73, '456437949_guci3.2.jpg'),
(200, 73, '597272976_guci3.3.jpg'),
(201, 73, '965520929_guci1.4.jpg'),
(202, 74, '183301665_guci4.1.jpg'),
(203, 74, '466697875_guci4.2.jpg'),
(204, 74, '992086221_guci4.3.jpg'),
(205, 74, '339620952_guci1.4.jpg'),
(206, 75, '572022241_tom1.1.jpg'),
(207, 75, '794600589_tom1.2.jpg'),
(208, 75, '345727798_tom1.3.jpg'),
(209, 75, '420558172_tom1.4.jpg'),
(210, 76, '421299857_tom2.1.jpg'),
(211, 76, '687336683_tom2.2.jpg'),
(212, 76, '721944615_tom2.3.jpg'),
(213, 76, '404091709_tom1.4.jpg'),
(214, 77, '605828026_tom3.1.jpg'),
(215, 77, '521941055_tom3.2.jpg'),
(216, 77, '299767925_tom3.3.jpg'),
(217, 77, '123938261_tom1.4.jpg'),
(218, 78, '648822043_tom4.1.jpg'),
(219, 78, '877141110_tom4.2.jpg'),
(220, 78, '717575378_tom4.3.jpg'),
(221, 78, '602644741_tom1.4.jpg'),
(222, 79, '356763135_la1.1.jpg'),
(223, 79, '523923716_lamer1.3.jpg'),
(224, 79, '657273073_la1.2.jpg'),
(225, 79, '980953926_la1.4.jpg'),
(226, 80, '919671967_la2.1.jpg'),
(227, 80, '161157854_la2.2.jpg'),
(228, 80, '428479334_la2.3.jpg'),
(229, 80, '738435788_la2.4.jpg'),
(230, 81, '250136668_es1.1.jpg'),
(231, 81, '263320335_es1.2.jpg'),
(232, 82, '596492072_gucp1.1.jpg'),
(233, 82, '354239528_gucp1.2.jpg'),
(234, 83, '833742312_makeupf1.1.jpg'),
(235, 83, '543726740_makeupf1.2.jpg'),
(236, 83, '259797355_makeupf1.3.jpg'),
(237, 84, '990897025_pembe1.1.jpg'),
(238, 84, '497069847_pembe1.2.jpg'),
(239, 84, '555563002_pembe1.3.jpg'),
(243, 85, '947552321_sarı1.1.jpg'),
(244, 85, '920140435_sarı1.2.jpg'),
(245, 85, '585219086_sar1.3.jpg'),
(246, 86, '985246708_sari1.1.jpg'),
(247, 86, '257153944_sari1.2.jpg'),
(248, 86, '416120647_sar1.3.jpg'),
(249, 87, '765099061_turuncu1.1.jpg'),
(250, 87, '440263859_turuncu1.2.jpg'),
(251, 87, '737523294_turuncu1.3.jpg'),
(252, 88, '274324439_wate1.1.jpg'),
(253, 88, '459807386_wate1.2.jpg'),
(254, 88, '532858784_wate1.3.jpg'),
(255, 89, '200795773_fb1.1.jpg'),
(256, 89, '940638335_fb1.2.jpg'),
(257, 90, '722171379_fb2.1.jpg'),
(258, 90, '810574779_fb2.2.jpg'),
(259, 91, '245183934_huda1.1.jpg'),
(260, 91, '262061916_huda1.2.jpg'),
(261, 92, '721821372_nas1.1.jpg'),
(262, 92, '394202674_mas1.2.jpg'),
(263, 92, '892131595_mas1.3.jpg'),
(264, 93, '872684601_mas2.1.jpg'),
(265, 93, '340954102_mas2.2.jpg'),
(266, 93, '776125769_mas2.3.jpg'),
(267, 94, '590993075_mas3.1.jpg'),
(268, 94, '954131387_mas3.2.jpg'),
(269, 94, '848513926_mas3.3.jpg'),
(270, 95, '171790631_mas4.1.jpg'),
(271, 96, '497236533_mas5.1.jpg'),
(272, 96, '355740289_mas5.2.jpg'),
(273, 97, '898177175_mas6.1.jpg'),
(274, 97, '577426156_mas6.2.jpg'),
(275, 98, '354298960_mas7.1.jpg'),
(276, 98, '649134448_mas7.2.jpg'),
(277, 99, '993423798_mas8.1.jpg'),
(278, 99, '455326700_mas8.2.jpg'),
(279, 99, '166956890_mas8.3.jpg'),
(280, 100, '353615112_eyesh1.1.jpg'),
(281, 100, '442318296_eyesh1.2.jpg'),
(282, 100, '785684219_eyesh1.3.jpg'),
(283, 101, '801845544_eyesh2.1.jpg'),
(284, 101, '551252016_eyesh2.2.jpg'),
(285, 101, '267663339_eyesh2.3.jpg'),
(286, 102, '793959110_eyesh3.1.jpg'),
(287, 103, '430237065_eyesh4.1.jpg'),
(288, 103, '919694109_eyesh4.2.jpg'),
(289, 103, '222706446_eyesh4.3.jpg'),
(290, 103, '885650736_eyesh4.4.jpg'),
(291, 104, '425587454_eyesh5.1.jpg'),
(292, 104, '998882545_eyesh5.2.jpg'),
(293, 105, '532312835_eyesh6.1.jpg'),
(294, 105, '835611735_eyesh6.1.jpg'),
(295, 106, '607093669_eyesh7.1.jpg'),
(296, 106, '864850492_eyesh6.3.jpg'),
(297, 107, '406814267_eyesh8.1.jpg'),
(298, 107, '210341768_eyesh8.2.jpg'),
(299, 107, '543674509_eyesh8.3.jpg'),
(300, 108, '531321833_eyeliner1.1.jpg'),
(301, 108, '690508333_eyeliner1.2.jpg'),
(302, 109, '301254130_eyeliner2.1.jpg'),
(303, 109, '164974892_eyeliner2.2.jpg'),
(304, 110, '682291526_eyeliner3.1.jpg'),
(305, 110, '503173349_eyeliner3.2.jpg'),
(306, 111, '314025956_eyeliner4.1.jpg'),
(307, 112, '417335397_eyeliner5.1.jpg'),
(308, 112, '441030587_eyeliner5.2.jpg'),
(309, 113, '375309810_eyeliner6.1.jpg'),
(310, 113, '522396058_eyeliner6.2.jpg'),
(311, 113, '277494580_eyeliner6.3.jpg'),
(312, 114, '377011702_eyeliner7.1.jpg'),
(313, 114, '839839885_eyeliner7.2.jpg'),
(314, 115, '924292777_eyeliner8.1.jpg'),
(315, 115, '673355922_eyeliner8.2.jpg'),
(316, 115, '786618650_eyeliner8.3.jpg'),
(317, 116, '264916934_eyeb1.1.jpg'),
(318, 116, '777850028_eyeb1.2.jpg'),
(319, 117, '450121725_eyeb2.1.jpg'),
(320, 117, '780688501_eyeb2.2.jpg'),
(321, 117, '684577704_eyeb2.3.jpg'),
(322, 118, '824073574_eyeb4.1.jpg'),
(323, 118, '912858688_eyeb4.2.jpg'),
(324, 118, '929251848_eyeb4.3.jpg'),
(325, 119, '765031417_eyeb5.1.jpg'),
(326, 119, '918618351_eyeb5.2.jpg'),
(327, 119, '260214935_eyeb5.3.jpg'),
(328, 120, '580233033_eyeb6.1.jpg'),
(329, 120, '657078490_eyeb6.2.jpg'),
(330, 120, '773374373_eyeb6.3.jpg'),
(331, 121, '177128297_eyeb7.1.jpg'),
(332, 121, '920762170_eyeb7.2.jpg'),
(333, 121, '710847833_eyeb7.3.jpg'),
(334, 122, '433283627_eyeb8.1.jpg'),
(335, 122, '811150346_eyeb8.2.jpg'),
(336, 122, '486818704_eyeb8.3.jpg'),
(337, 123, '858124334_eyeb9.1.jpg'),
(338, 123, '801262733_eyeb9.2.jpg'),
(339, 123, '761724975_eyeb9.3.jpg'),
(340, 123, '785561923_eyeb9.4.jpg'),
(341, 124, '143143971_tint1.1.jpg'),
(342, 124, '212739340_tint1.2.jpg'),
(343, 124, '329131883_tint1.3.jpg'),
(344, 125, '500141161_tint2.1.jpg'),
(345, 125, '619161637_tint2.2.jpg'),
(346, 125, '392155883_tint2.3.jpg'),
(347, 126, '206508778_tint3.1.jpg'),
(348, 126, '215356415_tint3.2.jpg'),
(349, 126, '780750109_tint3.3.jpg'),
(350, 127, '876655565_tint4.1.jpg'),
(351, 127, '619151449_tint4.2.jpg'),
(352, 127, '129496553_tint4.3.jpg'),
(353, 128, '269778885_tint5.1.jpg'),
(354, 128, '247342179_tint5.2.jpg'),
(355, 128, '948459034_tint5.3.jpg'),
(356, 128, '426488206_tint5.4.jpg'),
(357, 129, '556687537_tint6.1.jpg'),
(358, 129, '732990107_tint6.2.jpg'),
(359, 129, '290635980_tint6.3.jpg'),
(360, 130, '822184324_oil1.1.jpg'),
(361, 130, '568737085_oil1.2.jpg'),
(362, 130, '485178137_oil1.3.jpg'),
(363, 131, '511609833_oil2.1.jpg'),
(364, 131, '167048795_oil2.2.jpg'),
(365, 131, '868333502_oil2.3.jpg'),
(366, 132, '474983233_oil3.1.jpg'),
(367, 132, '915764666_oil3.2.jpg'),
(368, 132, '380910082_oil3.3.jpg'),
(369, 133, '660309213_oil4.1.jpg'),
(370, 133, '117509606_oil4.2.jpg'),
(371, 133, '471954230_oil4.3.jpg'),
(372, 134, '349999053_oil5.1.jpg'),
(373, 134, '544069843_oil5.2.jpg'),
(374, 134, '911086745_oil5.3.jpg'),
(375, 135, '985830070_oil6.1.jpg'),
(376, 135, '825383102_oil6.2.jpg'),
(377, 135, '958373915_oil6.3.jpg'),
(378, 136, '998182015_lipst1.1.jpg'),
(379, 136, '385686889_lip1.2.jpg'),
(380, 136, '489686940_lipst1.3.jpg'),
(381, 137, '828265973_lip2.1.jpg'),
(382, 137, '609940104_lip2.2.jpg'),
(383, 137, '668795685_lip2.3.jpg'),
(384, 138, '867414135_lip3.1.jpg'),
(385, 138, '789236404_lip3.2.jpg'),
(386, 138, '781176681_lip3.3.jpg'),
(387, 139, '184940834_lip4.1.jpg'),
(388, 139, '696633677_lip4.2.jpg'),
(389, 140, '915341198_lip5.1.jpg'),
(390, 140, '772511515_lip5.2.jpg'),
(391, 140, '464063568_lip5.3.jpg'),
(392, 141, '935352038_lip6.1.jpg'),
(393, 141, '759121359_lip6.2.jpg'),
(394, 142, '428289844_lip7.11.jpg'),
(395, 142, '486863178_lip7.2.jpg'),
(396, 142, '690764379_lip7.3.jpg'),
(397, 143, '273814405_lip8.1.jpg'),
(398, 143, '827505961_lip8.2.jpg'),
(399, 144, '868896770_gloss1.1.jpg'),
(400, 144, '820460258_gloss1.2.jpg'),
(401, 145, '646903318_gloss2.1.jpg'),
(402, 145, '611396788_gloss2.2.jpg'),
(403, 146, '860891816_gloss33.1.jpg'),
(404, 146, '626043388_gloss3.2.jpg'),
(405, 146, '573442530_gloss3.3.jpg'),
(406, 147, '820639172_gloss4.2.jpg'),
(407, 147, '638252802_gloss4.1.jpg'),
(408, 148, '794650526_gloss5.1.jpg'),
(409, 148, '545233557_gloss5.2.jpg'),
(410, 148, '272979030_gloss5.3.jpg'),
(411, 148, '409683298_gloss5.4.jpg'),
(412, 149, '590104079_gloss6.1.jpg'),
(413, 149, '301963099_gloss6.2.jpg'),
(414, 150, '696147804_gloss7.1.jpg'),
(415, 150, '228220233_gloss7.2.jpg'),
(416, 150, '372933863_gloss7.3.jpg'),
(417, 151, '360561797_gloss8.1.jpg'),
(418, 151, '233741646_gloss8.2.jpg'),
(419, 151, '733722428_gloss8.3.jpg'),
(420, 152, '955822041_bronzer1.1.jpg'),
(421, 152, '134215586_bronzer1.2.jpg'),
(422, 152, '154209261_bronzer1.3.jpg'),
(423, 153, '987213209_bronzer2.1.jpg'),
(424, 153, '684311424_bronzer2.2.jpg'),
(425, 153, '414259151_bronzer2.3.jpg'),
(426, 154, '881884510_bronzer3.1.jpg'),
(427, 154, '198818129_bronzer3.2.jpg'),
(428, 154, '258609015_bronzer3.3.jpg'),
(429, 155, '761896191_bronzer4.2.jpg'),
(430, 155, '562489751_bronzer4.4.jpg'),
(431, 155, '685501056_bronzer4.5.jpg'),
(432, 156, '589656854_hh1.1.jpg'),
(433, 156, '895100659_hh1.2.jpg'),
(434, 156, '395357565_hh1.3.jpg'),
(435, 157, '696088047_hh2.1.jpg'),
(436, 157, '345445082_hh2.2.jpg'),
(437, 157, '670081924_hh2.3.jpg'),
(438, 158, '830463641_hh3.1.jpg'),
(439, 158, '678836570_hh3.2.jpg'),
(440, 159, '277900670_hh4.1.jpg'),
(441, 159, '729643779_hh4.2.jpg'),
(442, 159, '998805981_hh4.3.jpg'),
(443, 160, '308322688_HH5.1.jpg'),
(444, 160, '611213476_hh5.2.jpg'),
(445, 160, '992581096_hh5.3.jpg'),
(446, 161, '115047790_hh6.1.jpg'),
(447, 161, '218058695_hh6.2.jpg'),
(448, 161, '554823616_hh6.3.jpg'),
(449, 162, '480676452_c1.1.jpg'),
(450, 162, '603228474_c1.2.jpg'),
(451, 162, '603129767_c1.3.jpg'),
(452, 163, '134755595_c2.1.jpg'),
(453, 163, '118288373_c2.2.jpg'),
(454, 163, '195310034_c2.3.jpg'),
(455, 164, '936893923_c3.1.jpg'),
(456, 164, '138354267_c3.2.jpg'),
(457, 164, '426491765_c3.3.jpg'),
(458, 165, '637933066_c4.1.jpg'),
(459, 165, '905007255_c4.2.jpg'),
(460, 165, '293906218_c4.3.jpg'),
(461, 166, '918514681_blush1.1.jpg'),
(462, 166, '494351204_blush1.2.jpg'),
(463, 166, '210135833_blush1.3.jpg'),
(464, 167, '956315147_blush2.1.jpg'),
(465, 167, '858452032_blush2.2.jpg'),
(466, 168, '540216512_blush3.1.jpg'),
(467, 168, '347027643_blush3.2.jpg'),
(468, 168, '787854462_blush3.4.jpg'),
(469, 168, '384378270_blush3.4.jpg'),
(470, 169, '222035571_blush4.1.jpg'),
(471, 169, '515078090_blush4.2.jpg'),
(472, 169, '607317986_blush4.3.jpg'),
(473, 170, '645871507_blush5.1.jpg'),
(474, 170, '979961725_blush5.2.jpg'),
(475, 170, '847835323_blush5.3.jpg'),
(476, 171, '815652234_blush6.1.jpg'),
(477, 171, '688977999_blush6.2.jpg'),
(478, 172, '227009621_blush7.1.jpg'),
(479, 172, '658145976_blush7.2.jpg'),
(480, 172, '336077405_blush7.3.jpg'),
(481, 172, '594140943_blush7.4.jpg'),
(482, 173, '182682886_blush8.1.jpg'),
(483, 173, '380399242_blush8.2.jpg'),
(484, 173, '295451067_blush8.3.jpg'),
(485, 173, '872570055_blush8.4.jpg'),
(486, 174, '227476140_p1.1.jpg'),
(487, 174, '983618438_p1.2.jpg'),
(488, 174, '610707709_p1.3.jpg'),
(489, 175, '606263178_p2.1.jpg'),
(490, 175, '636825661_p2.2.jpg'),
(491, 176, '345290391_p3.3.jpg'),
(493, 176, '683077974_p3.2.jpg'),
(494, 177, '980864697_p4.1.jpg'),
(495, 177, '257916838_p4.2.jpg'),
(496, 178, '724454810_p5.1.jpg'),
(497, 178, '865493571_p5.2.jpg'),
(498, 179, '713016161_p6.1.jpg'),
(499, 179, '656609503_p6.2.jpg'),
(500, 180, '951040997_p7.1.jpg'),
(501, 180, '795354145_p7.2.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `status`, `added_on`) VALUES
(8, 180, 5, 'Fantastic', 'I really love this!!!!', 1, '2024-06-06 21:05:33'),
(9, 178, 5, 'Fantastic', 'Product is very nice , must try frangrance is very decent and long lasting', 1, '2024-06-06 09:29:04'),
(10, 88, 5, 'Fantastic', 'I have been using this product for months and finally decided to get the larger product. It works great, hydrating and keeping my skin clear, and is worth the extra money,', 1, '2024-06-06 09:31:11'),
(11, 178, 6, 'Fantastic', 'harikaaaa', 1, '2024-06-10 07:59:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, '', '2019-04-09 00:28:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `size_master`
--

CREATE TABLE `size_master` (
  `id` int(11) NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(4) NOT NULL,
  `order_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `size_master`
--

INSERT INTO `size_master` (`id`, `size`, `status`, `order_by`) VALUES
(4, '0.85 OZ / 25 ML', 1, 4),
(5, '1 OZ / 30 ML', 1, 7),
(7, '0.5 / 15 MG', 1, 3),
(8, '0.33 OZ / 10 ML', 1, 2),
(9, '1.08 OZ / 32 ML', 1, 8),
(10, '0.05 OZ / 1.5 ML', 1, 0),
(11, '0.2 OZ / 6 ML', 1, 1),
(12, '0.27 OZ / 7.98 ML', 1, 0),
(13, '0.14 OZ / 4.15 ML', 1, 0),
(14, '1.01 OZ / 30 ML', 1, 0),
(15, '0.5 OZ / 15 ML', 1, 0),
(16, '1.35 OZ / 40 ML', 1, 0),
(17, '0.27 OZ / 8 ML', 1, 0),
(18, '0.3 OZ / 9 ML', 1, 0),
(19, '0.42 OZ / 14.50 ML', 1, 0),
(20, '0.06 OZ / 2 ML', 1, 0),
(21, '0.15 OZ / 4 ML', 1, 0),
(22, '0.1 OZ / 3 ML', 1, 0),
(23, '0.01 OZ / 0.28 ML', 1, 0),
(24, '0.019 OZ /  0.55 ML', 1, 0),
(25, '0.08 OZ / 2.4 ML', 1, 0),
(26, '0.02 OZ / 0.6 ML', 1, 0),
(27, '0.02 OZ / 0.77 ML', 1, 0),
(28, '0.002 / 0.08 G', 1, 0),
(29, '0.2 / 6 G', 1, 0),
(30, '0.33 OZ / 9.5 G', 1, 0),
(31, '0.24 OZ / 7 ML', 1, 0),
(32, '0.085 FL OZ / 2.5 ML', 1, 0),
(33, '0.13 OZ / 4 G', 1, 0),
(34, '0.08 OZ / 2.5 G', 1, 0),
(35, '0.20 OZ  / 6 ML', 1, 0),
(36, '0.19 OZ / 5.6 ML', 1, 0),
(37, '0.22 OZ / 6.5 ML', 1, 0),
(38, '0.176 OZ / 5 G', 1, 0),
(39, '0.33 OZ / 10 G', 1, 0),
(40, '.019 OZ / 5.6 ML', 1, 0),
(41, '0.25 OZ / 7 ML', 1, 0),
(42, '0.091 OZ / 2.7 ML', 1, 0),
(43, '0.098 OZ / 2.8 G', 1, 0),
(44, '0.05 OZ / 1.5 G', 1, 0),
(45, '0.13 OZ / 3.8 G', 1, 0),
(46, '0.12 OZ / 3.4 G', 1, 0),
(47, '0.1 OZ / 2.8 G', 1, 0),
(48, '0.11 OZ / 3.2 ML', 1, 0),
(49, '0.11 OZ / 3.2 G', 1, 0),
(50, '0.16 OZ / 4.8 ML', 1, 0),
(51, '0.23 OZ / 7 ML', 1, 0),
(52, '0.18 OZ / 5.3 ML', 1, 0),
(53, '0.28 OZ / 8 G', 1, 0),
(54, '0.21 OZ / 6 G', 1, 0),
(55, '0.63 OZ / 17.8 G', 1, 0),
(56, '0.35 OZ / 10 MG', 1, 0),
(57, '0.14 OZ / 4 G', 1, 0),
(58, '0.39 OZ / 11 MG', 1, 0),
(59, '0.22 OZ / 6 ML', 1, 0),
(60, '0.03 OZ / 0.85 G', 1, 0),
(61, '0.42 OZ / 12 G', 1, 0),
(62, '0.25 OZ / 7.5 ML', 1, 0),
(63, '0.17 OZ / 5G', 1, 0),
(64, '0.15 OZ / 4.5 ML', 1, 0),
(65, '3.3 OZ / 100 ML', 1, 0),
(66, '1.6 OZ /50 ML', 1, 0),
(67, '3.4 OZ / 100 ML', 1, 0),
(68, '1.7 OZ / 50 ML', 1, 0),
(69, '0.34 OZ / 10 ML', 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 2, 'Eyebrow', 1),
(2, 2, 'Eyeliner', 1),
(3, 4, 'Foundation', 1),
(4, 4, 'BB & CC Cream', 1),
(5, 4, 'Concealer', 1),
(6, 4, 'Color Correct', 1),
(7, 4, 'Face Primer', 1),
(8, 1, 'Blush', 1),
(9, 1, 'Bronzer', 1),
(10, 1, 'Highlighter', 1),
(11, 1, 'Contour', 1),
(12, 2, 'Eye Palattes', 1),
(13, 2, 'Eye Mascara', 1),
(21, 9, 'Lip Gloss', 1),
(22, 9, 'Lipsticks', 1),
(23, 9, 'Lip Oils', 1),
(24, 9, 'Lip Tints & Lip Stains', 1),
(25, 8, 'Blush', 1),
(26, 8, 'Contour', 1),
(27, 8, 'Highlighter', 1),
(28, 8, 'Bronzer', 1),
(29, 11, 'berk_category_3', 1),
(30, 12, 'groupA_category_1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(5, 'burcu', 'burcu34', 'burcuhanedar@icloud.com', '905301234567', '2024-06-06 21:01:47'),
(6, 'Emir', 'emir3434', 'emiryasin@hotmail.com', '905309876543', '2024-06-06 10:32:23'),
(7, 'emir', 'emir', 'emircena@gmail.com', '905307418523', '2024-06-10 07:55:11'),
(8, 'eren', 'eren34', 'eren@gmail.com', '905307894563', '2024-06-14 07:47:42'),
(9, 'berk', 'berk', 'berk@gmail.com', '905349874563', '2024-06-14 01:09:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(3, 2, 173, '2024-06-06 08:12:18'),
(4, 5, 180, '2024-06-06 09:02:43'),
(5, 5, 91, '2024-06-06 11:19:07'),
(7, 6, 180, '2024-06-07 01:02:44'),
(12, 8, 150, '2024-06-14 07:48:49'),
(13, 8, 175, '2024-06-14 10:11:42'),
(14, 8, 121, '2024-06-14 11:54:02');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `color_master`
--
ALTER TABLE `color_master`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `size_master`
--
ALTER TABLE `size_master`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `color_master`
--
ALTER TABLE `color_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Tablo için AUTO_INCREMENT değeri `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- Tablo için AUTO_INCREMENT değeri `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- Tablo için AUTO_INCREMENT değeri `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- Tablo için AUTO_INCREMENT değeri `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `size_master`
--
ALTER TABLE `size_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Tablo için AUTO_INCREMENT değeri `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
