-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2023 at 05:59 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrvmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1671568390HRV Mart - Logo - Brave 12_21_2022 2_31_07 AM (2).png', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, '3Qehrk2Q09pgVcGuk6N4ybXm84301LhP3Koz6rLt3fzEo9KfKlOaFR4d7hJg', '2018-02-28 23:27:08', '2022-12-20 20:33:10', 'HRV Mart'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL),
(8, 'Korear Bazar', 'hrventureecom@gmail.com', '01753-005687', 18, '1605954823korearbazarlogo.png', '$2y$10$..rFevwphhR4WcstJVzn3ewRstMkkRmp/u9YP8an5uD/lQoTklaii', 1, NULL, '2020-11-21 21:33:07', '2020-11-21 21:33:43', NULL),
(9, 'Korear Bazar', 'korearbazar@gmail.com', '0000000000', 18, '1606114137koreabazar21.png', '$2y$10$iAizmldJSbcCkH8oqad26.FXRWq7BHPcaaudlF7BEW3pO78OfXn1S', 1, 'HYU9DFeJOxNN42xsFwjCG51Yy5KhSafr56AWdVIFPm03PAmp6fTBoJOSP7Qk', '2020-11-23 17:48:57', '2020-11-23 17:48:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'Order Confirmation', 22, 'rfgdfgfd', '2022-01-21 01:18:38', '2020-01-21 01:18:38', 'Ticket', NULL),
(2, 'tesr', 36, 't', '2022-11-23 22:42:42', '2022-11-23 22:42:42', NULL, NULL),
(3, 'tesr', 29, 'test', '2022-12-13 20:48:41', '2022-12-13 20:48:41', NULL, NULL),
(4, 'tesr', 29, 'test', '2022-12-13 21:02:05', '2022-12-13 21:02:05', NULL, NULL),
(5, 'tesr', 54, 'test', '2022-12-13 22:55:29', '2022-12-13 22:55:29', NULL, NULL),
(6, 'test', 13, 'message', '2022-11-25 22:22:39', '2022-01-25 22:22:39', 'Ticket', NULL),
(7, 'order', 22, 'I want to buy this product', '2022-12-20 20:08:43', '2022-12-20 20:08:43', 'Ticket', NULL),
(8, 'welcome message', 74, 'Thanks for believing us.', '2022-12-20 20:11:48', '2022-12-20 20:11:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'rfgdfgfd', 22, '2022-01-21 01:18:38', '2022-11-21 01:18:38'),
(2, 2, 't', NULL, '2022-11-23 22:42:42', '2022-11-23 22:42:42'),
(3, 3, 'test', NULL, '2022-12-13 20:48:41', '2022-12-13 20:48:41'),
(4, 4, 'test', NULL, '2022-12-13 21:02:06', '2022-12-13 21:02:06'),
(5, 5, 'test', NULL, '2022-12-13 22:55:29', '2022-12-13 22:55:29'),
(6, 6, 'message', 13, '2022-11-25 22:22:39', '2022-01-25 22:22:39'),
(7, 7, 'I want to buy this product', 22, '2022-12-20 20:08:43', '2022-12-20 20:08:43'),
(8, 8, 'Thanks for believing us.', NULL, '2022-12-20 20:11:48', '2022-12-20 20:11:48'),
(9, 7, 'Thanks for messaging us.', NULL, '2022-12-20 20:20:58', '2022-12-20 20:20:58'),
(10, 7, 'bal', 22, '2022-12-21 00:30:47', '2022-12-21 00:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(11) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int(11) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1625302469happy-family-shopping-together_48866-1135.jpg', 'http://ecom.hrventure.xyz/category/Halal-Meat/Chicken', 'TopSmall'),
(2, '1625302252family-shopping-banner_38747-331.jpg', 'http://ecom.hrventure.xyz/category/Fruits-N-Juice', 'TopSmall'),
(3, '1625308376wordpress-woocommerce-ecommerce-plugins.jpg', 'http://ecom.hrventure.xyz/category/Halal-Meat', 'Large'),
(4, '16253055971 (2).jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '16253055841 (2).jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '16253052961 (2).jpg', 'https://www.google.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 2, 'How to design Lorem Ipsum?', '<div align=\"justify\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div></div><p align=\"justify\"><br></p>', '1625309183young-woman-trying-footwear-shoe-store_23-2147888946.jpg', 'www.geniusocean.com', 73, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41'),
(10, 3, 'How to Lorem Ipsum?', '<div align=\"justify\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div></div>', '1625309067happy-woman-with-multi-colored-shopping-bags-standing-near-window-display-store_23-2147888963.jpg', 'www.geniusocean.com', 54, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21'),
(25, 3, 'How to Lorem Ipsum?', '<div align=\"justify\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div></div>', '1625308874loving-couple-shopping_1098-1062.jpg', 'www.geniusocean.com', 88, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Oil & gas', 'oil-and-gas'),
(3, 'Manufacturing', 'manufacturing'),
(4, 'Chemical Research', 'chemical_research'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(5, '{\"1\":\"Fashion & Beauty\",\"10\":\"\\u09ab\\u09cd\\u09af\\u09be\\u09b6\\u09a8 \\u098f\\u09ac\\u0982 \\u09b8\\u09cc\\u09a8\\u09cd\\u09a6\\u09b0\\u09cd\\u09af\"}', 'fashion-beauty', 1, '16602235624.png', 1, '16602235844.png'),
(17, 'Home & kitchen', 'home-kitchen', 1, '1568878538electronic.jpg', 0, NULL),
(18, 'Baby & Kids', 'baby-kids', 0, '1606046270Main-Pic-1.png', 0, NULL),
(20, 'Vegetable', 'Vegetable', 1, '1606236856IMGBIN_vegetable-vegetarian-cuisine-cooking-food-health-png_TthtdqLy.png', 1, '1606236856IMGBIN_vegetable-vegetarian-cuisine-cooking-food-health-png_TthtdqLy.png'),
(21, 'Halal Food', 'Halal-Food', 0, '1606237783Food-240-240.png', 0, NULL),
(22, 'Halal Meat', 'Halal-Meat', 0, '1606237614240-240.png', 0, NULL),
(23, 'Fish', 'Fish', 0, '1606385742Webp.net-resizeimage.png', 0, NULL),
(24, 'Kacha Bazar', 'Kacha-Bazar', 1, '1607266447imgbin_vegetable-food-vegetarian-cuisine-png.png', 0, NULL),
(25, 'Ready Made Food', 'Ready-Made-Food', 1, NULL, 0, NULL),
(26, '{\"1\":\"Home applience\",\"10\":\"home applience\"}', 'home-applience', 1, '1612269271home.png', 1, '1612269271home.png'),
(27, '{\"1\":\"Smart Watch\",\"10\":\"smart watch\"}', 'smart-watch', 1, '1612268913Screenshot_3.png', 1, '1612268913Screenshot_3.png'),
(28, '{\"1\":\"Mobile Gadgets\",\"10\":\"mobile gadgets\"}', 'mobile-gadgets', 1, '1612268748Screenshot_2.png', 1, '1612268748Screenshot_2.png'),
(29, 'Mixed Pickle', 'Mixed-Pickle', 0, '1607270259IMG_0066-removebg-preview.png', 0, NULL),
(30, '{\"1\":\"Smart TV\",\"10\":\"Smart TV\"}', 'smart-tv', 1, '1612268463tv.png', 1, '1612268463tv.png'),
(31, '{\"1\":\"Baby Zone\",\"10\":\"\\u09ac\\u09c7\\u09ac\\u09bf\"}', 'baby', 1, '1612269188Screenshot_5.png', 1, '1612269188Screenshot_5.png'),
(32, '{\"1\":\"Automobiles & Motorcycles\",\"10\":\"\\u0997\\u09be\\u09a1\\u09bc\\u09bf \\u0993 \\u09ae\\u09cb\\u099f\\u09b0\\u09b8\\u09be\\u0987\\u0995\\u09c7\\u09b2\"}', 'automobiles', 1, '1612078372unnamed.jpg', 1, '1612078372unnamed.jpg'),
(33, '{\"1\":\"Sport & Outdoor\",\"10\":\"\\u0996\\u09c7\\u09b2\\u09be\\u09a7\\u09c1\\u09b2\\u09be \\u098f\\u09ac\\u0982 \\u0986\\u0989\\u099f\\u09a1\\u09cb\\u09b0\"}', 'sport', 1, '1612078237soccer-logo-football-logo-sport-team-logo-vectortemplate_1195-965.jpg', 1, '1612078237soccer-logo-football-logo-sport-team-logo-vectortemplate_1195-965.jpg'),
(34, '{\"1\":\"Jewelry & Watches\",\"10\":\"\\u0997\\u09b9\\u09a8\\u09be \\u098f\\u09ac\\u0982 \\u0998\\u09a1\\u09bc\\u09bf\"}', 'Jewelry-watches', 1, '166022350710.png', 1, '16120779982555533_1007.jpg'),
(35, '{\"1\":\"Books & Office\",\"10\":\"\\u09ac\\u0987 \\u0993 \\u0985\\u09ab\\u09bf\\u09b8\"}', 'books-office', 1, '16120777151568026853LMtcb9he.png', 1, '16120777151568026853LMtcb9he.png'),
(36, '{\"1\":\"Food\",\"10\":\"\\u0996\\u09be\\u09a6\\u09cd\\u09af\"}', 'food', 1, '16602235018.png', 1, '1612077412Apple Fuji(P) per kg 190TK.jpg'),
(37, '{\"1\":\"Electronic\",\"10\":\"\\u09ac\\u09c8\\u09a6\\u09cd\\u09af\\u09c1\\u09a4\\u09bf\\u0995\"}', 'Computer', 1, '16602234947.png', 1, '1612077318e.jpg'),
(38, '{\"1\":\"Grocery\",\"10\":\"\\u0997\\u09cd\\u09b0\\u09cb\\u09b8\\u09be\\u09b0\\u09bf\"}', 'grocery', 1, '16602234846.png', 0, NULL),
(39, '{\"1\":\"Baby Zone\",\"10\":\"\\u09ac\\u09c7\\u09ac\\u09bf \\u099c\\u09cb\\u09a8\"}', 'baby-zone', 1, '16602234765.png', 0, NULL),
(40, '{\"1\":\"Beverages\",\"10\":\"\\u09ad\\u09c7\\u09ac\\u09be\\u09b0\\u09c7\\u099c\"}', 'beverages', 1, '16602234684.png', 1, '16602236575.png'),
(41, '{\"1\":\"Cleaning Accessories\",\"10\":\"\\u0995\\u09cd\\u09b2\\u09bf\\u09a8\\u09bf\\u0982 \\u098f\\u0995\\u09b8\\u09cb\\u09b8\\u09b0\\u09bf\\u099c\"}', 'cleaning-accessories', 1, '16602234613.png', 1, '16602236463.png'),
(42, '{\"1\":\"Home & Office\",\"10\":\"\\u09b9\\u09cb\\u09ae \\u098f\\u09a8\\u09cd\\u09a1 \\u0985\\u09ab\\u09bf\\u09b8\"}', 'home-and-office', 1, '16602234532.png', 1, '16602236344.png'),
(43, '{\"1\":\"Noodles\",\"10\":\"\\u09a8\\u09c1\\u09a1\\u09b2\\u09b8\"}', 'noodles', 1, '16602234291.png', 1, '16602235331.png'),
(44, '{\"1\":\"Mens Panjabi\",\"10\":\"Mens Panjabi\"}', 'mens-panjabi', 1, '16731911203.jpg', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(4, 68, 289, 'Nice product', '2022-07-25 16:08:50', '2022-07-25 16:08:50'),
(5, 68, 289, 'Nice product', '2022-07-25 16:13:09', '2022-07-25 16:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(11) NOT NULL,
  `recieved_user` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Test', 22, 22, 'Test my message Check', '2021-01-20 22:37:24', '2021-01-20 22:37:24'),
(2, 'test', 13, 36, 'message', '2021-01-25 16:48:46', '2021-01-25 16:48:46'),
(3, 'test', 36, 36, 'message', '2021-02-02 03:38:21', '2021-02-02 03:38:21'),
(4, 'cdf', 22, 22, 'fdfvg', '2021-02-03 00:50:29', '2021-02-03 00:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 1609, 0, NULL),
(4, 'browser', 'Linux', 1933, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 1634, 0, NULL),
(6, 'browser', 'Windows 7', 517, 0, NULL),
(7, 'referral', 'yandex.ru', 20, 0, NULL),
(8, 'browser', 'Windows 8.1', 538, 0, NULL),
(9, 'referral', 'www.google.com', 14, 0, NULL),
(10, 'browser', 'Android', 495, 0, NULL),
(11, 'browser', 'Mac OS X', 559, 0, NULL),
(12, 'referral', 'l.facebook.com', 9, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 3, 0, NULL),
(15, 'browser', 'Windows 8', 6, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 18, 0, NULL),
(18, 'browser', 'iPhone', 41, 0, NULL),
(19, 'referral', 'new.jubayer', 235, 0, NULL),
(20, 'referral', 'm.facebook.com', 8, 0, NULL),
(21, 'referral', 'google.com', 1, 0, NULL),
(22, 'referral', 'facebook.com', 1, 0, NULL),
(23, 'referral', 'korearbazar.jubayer', 309, 0, NULL),
(24, 'referral', 'korearbazar2.jubayer', 1, 0, NULL),
(25, 'referral', 'eiconik.com', 1, 0, NULL),
(26, 'referral', 'www.eiconik.com', 2, 0, NULL),
(27, 'referral', 'l.messenger.com', 1, 0, NULL),
(28, 'referral', 'hrventureai.com', 7, 0, NULL),
(29, 'referral', NULL, 8, 0, NULL),
(30, 'referral', 'de01.webpanel.one', 3, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '664', 2, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(12, 'BDT', '৳', 84.64, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><br></div></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(248, 199, '160722395220201125_231244-1__2_-removebg-preview.png'),
(249, 200, '160722465920201125_231244-1__5_-removebg-preview.png'),
(250, 214, '1607273045IMG_0003-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(11) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci,
  `header_phone` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `map_key` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `is_contact` tinyint(1) NOT NULL DEFAULT '0',
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_check` tinyint(1) NOT NULL DEFAULT '0',
  `cod_check` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `add_cart` text COLLATE utf8mb4_unicode_ci,
  `out_stock` text COLLATE utf8mb4_unicode_ci,
  `add_wish` text COLLATE utf8mb4_unicode_ci,
  `already_wish` text COLLATE utf8mb4_unicode_ci,
  `wish_remove` text COLLATE utf8mb4_unicode_ci,
  `add_compare` text COLLATE utf8mb4_unicode_ci,
  `already_compare` text COLLATE utf8mb4_unicode_ci,
  `compare_remove` text COLLATE utf8mb4_unicode_ci,
  `color_change` text COLLATE utf8mb4_unicode_ci,
  `coupon_found` text COLLATE utf8mb4_unicode_ci,
  `no_coupon` text COLLATE utf8mb4_unicode_ci,
  `already_coupon` text COLLATE utf8mb4_unicode_ci,
  `order_title` text COLLATE utf8mb4_unicode_ci,
  `order_text` text COLLATE utf8mb4_unicode_ci,
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(11) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `already_cart` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `cod_text` text COLLATE utf8mb4_unicode_ci,
  `paypal_text` text COLLATE utf8mb4_unicode_ci,
  `stripe_text` text COLLATE utf8mb4_unicode_ci,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT '0',
  `is_paystack` tinyint(1) NOT NULL DEFAULT '0',
  `paystack_key` text COLLATE utf8mb4_unicode_ci,
  `paystack_email` text COLLATE utf8mb4_unicode_ci,
  `paystack_text` text COLLATE utf8mb4_unicode_ci,
  `wholesell` int(11) NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_title` text COLLATE utf8mb4_unicode_ci,
  `popup_text` text COLLATE utf8mb4_unicode_ci,
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT '0',
  `paypal_business` text COLLATE utf8mb4_unicode_ci,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci,
  `paytm_website` text COLLATE utf8mb4_unicode_ci,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci,
  `is_paytm` int(11) NOT NULL DEFAULT '1',
  `paytm_text` text COLLATE utf8mb4_unicode_ci,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT '0',
  `molly_key` text COLLATE utf8mb4_unicode_ci,
  `molly_text` text COLLATE utf8mb4_unicode_ci,
  `is_razorpay` int(11) NOT NULL DEFAULT '1',
  `razorpay_key` text COLLATE utf8mb4_unicode_ci,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `maintain_text` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`) VALUES
(1, '1660222113Untitled-2.png', '1624449407167100820_245453620634370_75308003259731923_n.png', 'HRV Ecom', 'smtp', '0123 456789', 'HRV Mart is the new eCommerce site in Bangladesh. We are here to provide you with the best service as fast as we can. Your belief makes us strong, and your faith helps us to unstoppable.', 'COPYRIGHT © 2022. All Rights Reserved By <a href=\"http://hrventureai.com\" title=\"\" target=\"_blank\">Hr Venture</a>', '#4b4f96', '16060448095.gif', '16060448125.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 1, 0, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 0, 0, 0, 0, 5, 'smtp.googlemail.com', '587', 'hrventureecom@gmail.com', 'arkldgkpooxmehcx', 'hrventureecom@gmail.com', 'Korear Bazar', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 0, 0, 1, 1, 1, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#7dadd1', '#56484f', 1, '#ff5500', '#02020c', 1, 1, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 1, 1, 1, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 1, '1566878455404.png', 1, 'NEWSLETTER', 'Please Enter your email for future update.', '1671531464subscribe-button-pointing-finger-on-260nw-1527255857.jpg', '1623822861logo.png', '1567655174profile.jpg', '#bc1616', 1, 1, 1, 'shaon143-facilitator-1@gmail.com', '1623822858logo.png', 'TLS', 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 1, 'Pay via your Paytm account.', 'sandbox', 1, 'test_pwhwssHjctxFSscJsHJ9MMstP68yuP', 'Pay with Molly Payment.', 1, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 1, 1, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image1`) VALUES
(1, 'sdfsdfdsf.jpg'),
(2, 'sdfsdfdsf.jpg'),
(3, 'sdfsdfdsf.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(1, 1, 'English', '1607421544DAsfqM9S.json'),
(10, 0, 'Bangla', '1612245667Js7DMjUv.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(11) DEFAULT NULL,
  `recieved_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test my message Check', 22, NULL, '2021-01-20 22:37:25', '2021-01-20 22:37:25'),
(2, 2, 'message', 13, NULL, '2021-01-25 16:48:46', '2021-01-25 16:48:46'),
(3, 2, 'message', 13, NULL, '2021-01-25 21:04:54', '2021-01-25 21:04:54'),
(4, 2, 'message', 13, NULL, '2021-01-25 22:21:57', '2021-01-25 22:21:57'),
(5, 3, 'message', 36, NULL, '2021-02-02 03:38:21', '2021-02-02 03:38:21'),
(6, 4, 'fdfvg', 22, NULL, '2021-02-03 00:50:29', '2021-02-03 00:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `noti`
--

CREATE TABLE `noti` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noti`
--

INSERT INTO `noti` (`id`, `session_id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 215, 1, '2022-08-11 13:23:23', '2022-08-11 13:23:23'),
(2, '127.0.0.1', 289, 1, '2022-08-11 13:31:32', '2022-08-11 13:31:32'),
(3, '127.0.0.1', 290, 1, '2022-08-13 06:18:32', '2022-08-13 06:18:32'),
(4, '127.0.0.1', 216, 1, '2022-08-14 09:05:18', '2022-08-14 09:05:18'),
(5, '127.0.0.1', 201, 1, '2022-08-14 09:26:51', '2022-08-14 09:26:51'),
(6, '127.0.0.1', 218, 1, '2022-08-15 15:52:51', '2022-08-15 15:52:51'),
(7, '127.0.0.1', 214, 1, '2022-08-15 15:53:14', '2022-08-15 15:53:14'),
(8, '127.0.0.1', 217, 1, '2022-08-22 07:09:35', '2022-08-22 07:09:35'),
(9, '127.0.0.1', 288, 1, '2022-11-23 12:12:54', '2022-11-23 12:12:54'),
(10, '103.217.111.207', 217, 1, '2022-11-27 10:54:35', '2022-11-27 10:54:35'),
(11, '103.217.111.207', 206, 1, '2022-11-27 10:54:46', '2022-11-27 10:54:46'),
(12, '103.217.111.207', 279, 1, '2022-11-27 11:02:20', '2022-11-27 11:02:20'),
(13, '127.0.0.1', 286, 1, '2022-12-20 09:29:04', '2022-12-20 09:29:04'),
(14, '127.0.0.1', 287, 1, '2022-12-20 11:00:57', '2022-12-20 11:00:57'),
(15, '127.0.0.1', 284, 1, '2022-12-20 11:01:03', '2022-12-20 11:01:03'),
(16, '127.0.0.1', 283, 1, '2022-12-20 11:01:11', '2022-12-20 11:01:11'),
(17, '127.0.0.1', 269, 1, '2022-12-20 23:26:00', '2022-12-20 23:26:00'),
(18, '127.0.0.1', 301, 1, '2022-12-21 00:19:49', '2022-12-21 00:19:49'),
(19, '127.0.0.1', 308, 1, '2022-12-21 00:29:18', '2022-12-21 00:29:18'),
(20, '127.0.0.1', 309, 1, '2022-12-21 00:44:31', '2022-12-21 00:44:31'),
(21, '127.0.0.1', 310, 1, '2022-12-21 00:57:24', '2022-12-21 00:57:24'),
(22, '127.0.0.1', 298, 1, '2022-12-21 01:06:55', '2022-12-21 01:06:55'),
(23, '127.0.0.1', 297, 1, '2022-12-21 01:07:05', '2022-12-21 01:07:05'),
(24, '127.0.0.1', 296, 1, '2022-12-21 01:07:08', '2022-12-21 01:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(70, NULL, NULL, NULL, 225, NULL, 1, '2020-12-29 12:38:55', '2022-02-16 16:32:28'),
(131, NULL, NULL, NULL, NULL, 6, 1, '2021-01-25 22:22:39', '2022-02-16 16:32:23'),
(148, NULL, 68, NULL, NULL, NULL, 1, '2022-02-16 16:43:54', '2022-08-15 16:16:28'),
(149, NULL, 68, NULL, NULL, NULL, 1, '2022-02-16 16:44:02', '2022-08-15 16:16:28'),
(157, NULL, NULL, NULL, NULL, 7, 1, '2022-12-20 20:08:43', '2022-12-20 20:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int(11) NOT NULL DEFAULT '0',
  `vendor_packing_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(93, 13, 'BZh91AY&SYz$$L\0þ_@Pø+ö$¿ÿÿúPÝîàî#¶à9L\0\0À\0L\0 	¨¢iê¡ \0\0\r4\0j\" Qµ\0h\0\0\r\r\0\0I*zSôIäÑÓhÍ510$DÄ)JzL¨ÐHjyG	\"$B¶b¤_æ´0ÁIú8ßüQãfÃD¶s\n>EhÝsa·ëTðÅ°ô)Õ©GÓJ\Z®8Ñ)M6ªTÝÉÜJ9¼¡¥J3©aORz\0ïEAãËf0û$Oa9_XÓ9KÊ¤I%<	<:Ô3Ý;%ìB1!¶PCÄÀä5 à0Þ!q!¨173~wâ`G)ÀfY17U)²VÊK\r\n\ZÙÜ¦\"pXÌ©¼pÉ¬­ÙµÂj±°­fô½Ã£¬«2Q»IºctÜÖÒçF$vD#Yx*¨33æwÓdÙSbø^ù+0H¬æX-VÄj¢Í;äÝmEnúÁMÆ489±$)¡Æ$ÑC2$£)rm[P.§NhÒ1$È\\ÚÔÐJB2EÔ\"£;¸EMÕút$ÒÒªIIåDú Î\0è°u@<Ì XÕÁeÊ1¢§R Ó	R0Ë¢ )#ß\nR<N.ÞCI6Â$ÃL9Óápy\"ïk89@olnnÆðÚ2ÊcÊ1M%¨ö·pÄ[æeÑ¶Ä)¬\"ÓyÓ=H³³@0§çä<ÇcA°y8%Ù¦#.½£\"9C´dÃæ&&£¥³\"&×D TÀþcýÉë?%vC²=g¸ßà~Í79FëtåËã¡dy\"¦ó	`LûòöEKð\nQîWh]pwLêl3+0bPÊ%ö¡êBä9a×;;kÆw_\"£t&Øª6æ*Ñ\\|¡LCÜSLÈU%06K2Äg\"È¸Ü=£7÷ÊÌçJ¼wÇø5¸$uk3/uÚj>r&PÀ%bÁpCßâ)â½Ç²úÁ#ý:XÞ1ÆñÝjK´¡Ø±]\"Jma}Ô¹ìHÔ%òs87q-^áx³ay^\\ÎÂ±DÈ¨k*es\n²øN±}\\a²&\n,ºÖ0\\ºNãÌ¨ÂD¼!À¯\\ÍHCÓ´ÕÓ. X¿ÐU}FcÈjÿ·ÈÝ.ÙJ¥ÓØäÄM²/#gÖ|M¦VJæ¶Dl:­G\\Nùék6,R¤¢üBÀi\\È4lÔìïïòéÜy]XÀD¾t¨ ÈÆ\"A	IBS\"	\"ÎÁCqÓ.h!Q{ÊÔÌya ¸÷AcÁÀ2ìr2¾W²i(È\nK|Pe`¹l¨¡0ºä`×Á/VÌgÝÄ¿fG@ÞÔÔ\\·¢;Éz~¤\0ÂÂoF0,@ÕÓ^Ã\'ð<9!z	nÞM`R\rOø»)ÂÑ!\"`', 'Cash On Delivery', 'shipto', 'Azampur', '1', 8.8, NULL, NULL, 'czLH1611755425', 'Pending', 'vendor@gmail.com', 'User', 'Korea, Republic of', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-01-28 00:50:25', '2021-01-28 00:50:25', NULL, NULL, '₩', 1136.57, 0, 0, 0, 0, NULL, 0, 0),
(94, 13, 'BZh91AY&SYTÒ%\06_@Pø+÷¿ÿÿú`?zè«MhT `\0\0	\0\0\0Q\Z4È5¡\Z¦#@i¦C\0&\0`\0\0\0\0R\"äM¨h7©\Z¦m@æ\0	\0\0\0\0\0$D!2\Zi¤B6SAêSLORDA$a|½ÃÿÈ#aS¬àtGYÄ6DíñÇÏÙ¯]As,Îñ!òAiOèd_(­`5©WEO2&õ5{Q|lÌkR;ÝS5ô9]l6ÇèÆïB.;Â¯ÜS¸@¬IXc¸Ð<Æ½En/OV^¨]ìK	4%KB+X« ¼]PBÔË¼² \r$aq¬&% ÓCygZ*²Ç²J+/bÎU»LVP@eXTÒÔ,Ö\roF6©\nË¹ bnrEueU1¡0dµa]0M l\ZÄÛRÕÉ:§*tÊkQ]ñ4c2úTZ,ÖjBë2Ìöx­¬¶°ÉhÌÄ6zEi¡:æ­à-Ì	DRqZ¼i×jf°£×(RÌ×ÌØA©*@Ì ©bBäºhEcN6aQêë{8YB¥íDÔLÈRÕ½¬)À0¤ª\\ ©GRUÖ8ÜÍ0Qe\'êxÏ ´°jÜÊ5E0YiEâQaC*\r$*D,ËQ\nH¡è:{$ªZ1­ ¥,Vhm½N[t+1ºµwª@zÊj`©¡BÄ8U©TÂRÏAØÌD^äÈÊc$Ëa\ZÅG\\àæ|÷ð öPòI/½øêðw0{Fy¨öðKÍ_ÞÍ¨«U6¯KØì<Ûë¹Fwjòãòi3u\rÂÆsr©G÷Ô¢á¼Ðu6paC¤ÌaäB=ã ±ïÓxT\r Dd,Qí\"+¤8$!\rhcº2æÒÚë&PÔË7.ÁÈKî==pðñÓÆÊÅ^ÅÜÖW?sèm8\Zfbdpbt!,w]7Qì©§ÔßU°)~=Gú5ÜHÚëägÖaÛqÒ>RP©ÜØ¬[5]çö½hCi çs©b!­``Îg«â-òo=F9èJ£YåzÝèIÀ\'jÄê\\ÍüL[ =700W³ÛÅ/ÌL-kÜ$\\U ½4\'UÄÔ§]Yf¨PI@Â¥¨lL.1,4Nò&£Q¨î;LNØ0ñ>Ç\0éï.ÔpCLÅC#Ûö\'Ü²°Ó0iééø××Ôo§	µ%\Zñ6ô©SI¹R£[C½=íÀé¦èC?&c+\nep\'=BÜ4°dÜ9káÛnOÇÁ1ÐÄ@F#\0BPÒ`Ä\\ÍNÝðK´U^%¬m!d`LeË¢M\\\nÃÁÚlÊnc	¤flP1üG!sCIã(d²­GÔÝ\Z5ðKÑ7òäe¦Ã¸8Ð¥UU\\QCOAöuX}Mj\\LpÃðq|¡191\\P\n Ôÿ¹\"(H*i', 'Cash On Delivery', 'shipto', 'Azampur', '1', 0.04, NULL, NULL, 'k1FV1611755552', 'Pending', 'vendor@gmail.com', 'User', 'Korea, Republic of', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-01-28 00:52:32', '2021-04-24 05:19:20', NULL, NULL, '₩', 1136.57, 0, 0, 0, 0, NULL, 0, 0),
(95, 36, 'BZh91AY&SY£ø¸\0Áß@\0Pø;Kôd¿ïÿúPÞè¤ãe@PÑ G0\0L\0À\0\0\0(2&¨¤`\r	¦ÄÉ@P©M¨dô=C õ44Ñ4m#C@æ\0	\0\0\0\0\0$D\"zDÐÈÐ\0ÉR\"H÷pIñÔÈÜn?Ñ\\ºÎÈmÃ°ëë³I-D\Zî7eFHeñzÒZtO2&õ5µb¾7SVV´SæÌíf´]É×qL7Þm©BÆÿB]W°§@;D!°j?°®Ä	a&¡ç=	/fË41ÆU\Z*À¨îCÔ(!Pi¡ø¾(ªËJ\n%qjÖB	!1J\rºRk@\nE Ê<EÔy È¡c¡uYYr³0Hwx3.íÒ¢\n\Z9()a,@Á#DªP/\\KB-©8[ÖìX²;¤´¬VB¨éDyEJ30<Vbk²<\nµ%-jªª³_âø¯JÚÀmÄ\0ô²QL\\£\"k7ÙPi!R1D\n@RE(ö6yô1%$Bûe&RÅhVèdwÎË³Lål\\LM\nSKv/!lA{T\"FK½ïh2Èu-t»Jaæ\'sJöÄæ$xP±ðI/±ùy©÷YædGÈ§Ø=ôÃ< Ùj£ÒµëP@©¨ú÷À\'1ú(ï»(Ös\'{ í74:Hây/*R\\:MSwPÆ³ÀøK2Ç»uq`n,fhn2Ì*B>v£1Ýd<à@^áµNóCymd\rd\'ùCã<Æp=\\Ç!/Àdñí<©|¬PeôÊ¶+º\n÷X?ãÌèq3*&¤HK!EÍ¨ÍåSNjníó\Z½®<úÌ;o }²IC¼&åÃ°a:{É9©²\0²ãÒk$*Í\"Dã9êï¹NBá\'ÔdA$ª5Z¶QlÅr6ì/^ôfÀ`¯g#[^#¸L-kaPµQNyÄ§²ÉP¡	SlJÔ±Pª]âÀ²]#\r$ÏlLl¡ÒÈÞÒ6úD\n\\÷\rgïóaµ;Y±ÈºPlr üÎdw6Ê¾ó<ê\ZPîFõÔ?Æv3Å¥ ÊÂQ!Aë\ZW$.Kôö÷[Öù<}È?PD¼©PADb0(DÚ@6¡¤Á6»J&§=Ýõ%ÌU^¢Ö7É@I?Ù¡ÆUT\\ú Ô7òp¬<ÇFSsM#3¡@Æ@XÌÎ{b¥,ÖëEJîÚñKêÃÆ{äõÆzï<BTTQä©ÖSê>Î$\0ÂÁ¢	$jõ^)â{y¡Xó{=Ô&Á°)§ü]ÉáBBâZà', 'Bank', 'shipto', 'Azampur', '1', 20, '12345trfds', NULL, 'OWcS1613381738', 'Pending', 'jubayerk7@gmail.com', 'Jub', 'Korea, Republic of', '+91 8475953333', 'Nadmula', 'Bhandaria', '8550', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on delivery', '2021-02-15 09:35:38', '2021-04-24 05:16:57', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(96, 36, 'BZh91AY&SYeG=z\0Ðß@\0Pø;oü¿ïÿú`>¨*J$¥QUTs\00\0	\0\0À&\0L\0`\0&\00	\0\0\0	Ì`À\0&\0`\0\"HJm4¤ü)=j\'¢§SiíPf¦RBhM\nhOMM1M\ZiCjz/~gó?dþ;#äþ«?ñÌ°ìv)L£èk\n(ý\n+ýª\\é r9YÔÝÃ@ñb´ír´4ø±²Ù»äºÊsh´ØeL,¢>j7]M,ÕVValèÃf»,¬Ãþ(äË*N1;ÚË¹ºm:7§c\'WÔ±v­T»Â[µ$uhôÄs°ÑØ(±ìú<\rÞKÄsIðX¸Æ{Þ¼ª2¦Z,Ê7]CàRQ\réJ)\réJ²TR*L90Ë¢¦\\´Å&\nJÊ¤Y,Zeî©³Fï-%Ô`£B2©¦]£\r*OJBR¥\nL,Êì½%¥í³ú*YE,²Ë°Ëí]¤ÒB4]fV]\"R¤J0ºëuL/1)4.X±sa\rLv4ìl6~ç\'\r1Í³NÜ¦²òÉ4t:6a)²Í^f¢´n¼ØÙ0Â*j»Ze£Q¢a,jË	Ie×\\aYdl(atÃQcIi.¦YbrMFÊpµóD,B\0CHÑ¹E+JDÑK4a!\Z\n[qh^Òô¨¥%D£2²Ý@±Q!nss6â(É	ÖÖ¤©F¬ejÑF«+ÃÎÝO;%×j×\'y¼«N8afÆì.nÊÆêSVMÛ²j¢é³F­X7nÝ³376nØÒ]»B5ZcCøxOdÀv¾×Ú]ëp~FG k~\n/l4nºÃ#¸·s¬Ðsé)Øxµ.§T÷¬yÑ¢A\0#£ú66L0òybÇöÐw¿@£a\ZzÜëø?«ælèî4s½ÉÜa¹/5Îq)¡Ñè\'Ck£ó*{ß{òCæ£Øü^f$;ÔiÄé<ÓwIdÕ;C¤Mjl4(.haAÄàÍÛ§ØÖ{gIÙ2ê¸ä¸»iu05t7Ü£¸ú=êyJ.îzSe6w=l5n»2já5)DÔ¥)jÕ6|±Úæv8 BufÅN£0.lpÐ0,cØÝÍÃ{3c½²&ç9.ËÐíï*,x©;ÉÝ6S.ªX±âõ114\"í¦ÉàKJw>)æzóO°UïÔkz(GÞnR*xÏ`ò{ZÌ=;×óÊo-7p/4°¡£TbTúËÎÔ»ª\'u vÎ§Q¹~Ä7« âúD<Å{IûíC\nNI«DYyw4ï=àuy¼ÉÉ¸aµ¥0¶Á]SÑ/LË\r&JCÝ\"ò-ì>3/QN£µrpíF§(Qh´ú´aÊ}¯¬»Å2Êñ9ZRrG¬õO½ëu#N÷¤ üõ4zÂ!à]?ÑÃ)0¤ê>OÕíÉ;å6tóÁsHA=Ð\rh `²X°Ñ´×F\'¹ÜSJFéá-eæóít|^-^å8Sc@°uôB\0FO4$¤HAdhbÅÍó»_¼Üt&0¼AÀö9°æw\nhÖæÄ¦í<¢S¢ôz´9¼Ë\nn{\'W%Û¹6FÅJ)8bÒ,ÌNWzVi16MxØç)hi0²5%\'òÖwRÉçzç\'ïÂY²wÂÎéîaõð9ßaehls\nv9´ÁÐæ0?fÌ¨ü½ìDÔúBJ<¼§Ü))CDAÿ¹\"(H2£½\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 540, NULL, NULL, 'yedA1619583446', 'Pending', 'jubayerk7@gmail.com', 'Jubayer khondoker', 'Bangladesh', '01710029052', 'Kawola, Airport, Dhaka, Bangladesh', 'Dhaka', '12323', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-28 04:17:26', '2021-04-28 04:17:26', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(97, 36, 'BZh91AY&SY]\0Ðß@\0Pø;oü¿ïÿú`>\0\0\0\09L\0\0À\0L\0`\0&\00\0\0À	\0L\0À\0æ0`\0\00\0Q¢M©êd\0\Z\r\r\0ÐI \0© \Z	fhÓÔÙ#4Ô´Axõ?æØ±grD}Ýgôr,:ÝjSD}MaE\"ú²\\ç`g3Ã}£VLH.d¬Ü-è!s&¾¬§&V\rS÷QºêS:´95h³	)³\rMÚ4YþQÁ£E\'ÌNö²îNfNmã¡ÖâÂht}jÕI{¼Þ4IÑ Äf]b\Z>o«Èläõ¯É\'½b=0ø{åä¶4ef`ÜZDtsYyPh¢)Jô¥HÙ*)&hÁM´µ&\nÑR,-IÉ²÷Sf[¯ðh´ºd¢aMR\"0Âì±*ñBR¥\nK¬Êì»Xb¦- çK°ÆQeÍ%(]ee«Ò»32¡Öh²ì1\"Q×\\ÃüªayFCRP´}k6Ö-æ¬Ù:l3s7K¦²òÉ3,é2êlÂSeº5ÝëÍ\"¦«µ¦µL%\rZ0]uÆ\Z2Õ£B]°¡Ó\rEÌ+2éªhÑÁ2l§4Gî¼\"íZ%-$§Ê¢Å*)e¥\nT^Yª-%ÊLÑÖ¨^´½\"ê)IQ*1(!)0´ËÚIeH¡©N¹¼ÝÔuªDo$%t´ùJei«FM\Z¯:ócu0ÁÁuÚµàÐì^o$âÕiÄâ±Å¦nØÝÍÚ¬j¥5hnØhÐÕEÓD³-Z±8·nÝ³IÁÀÂ7lf-][ä¦Z­3¡øM+ÈQàjss2E/Gà¿s¤Èå-ÎS¬ðj]N&{;&J¤5Yôu$KÆe>³ýÎÅ×hfoÐLÔ$T ÍÝ{^Çg¹µÇÕ´õGàÌÂ^k\'aÆS\'7i9<nÔ©î}ÏÒfºScóu1!Þ êN3ê¸Ë#øZudqÙ8JqXÁId¥I(±évÉ»tñ5©ÎuÍm.²¦®fûwbÇ¢Rò]O\\¢îçe6SgsÎÃVë´£WÖeJ&¥)LV©´úÉÕ7<R¦TR§^]yV7r©ÄÊJ=xnvJÞTìà§ÉÚÃhíxç½üÊ\nNçpwMÑÑK<f&&g»i²y	iNçÔ£àâ÷O2|ö©I\'Æµx8O,(©!÷Ð=oSY¢Gzó¾zæòÓwyÊ£v2Õ>ÒóÆtDò\' ¥ÙØóÍ:äû)Ù$Þeåzg¾MVYê\'òZKµ)9µ&&¬¢ËË¹\'|»½S)²|]&eìÞ-(K­)TíÃ3%JCÛ\"ò-)â>G§Aã\\^4jpO³,4\'¥öx&À¼¢ÒòyÏ9ÖÃÒù;\'¢mÓ²yÔ§õ<òÏQIJQ÷OÎsqh\nNèý¨q´ïÙÎwÏ#Õ¡Hühr,Qâë¥Ne¥ÓÚî)¥#tòKGóyés|\r^Õ8©³sÐù¾0~IR¡AR«òT²)*EEEJ\n*J¢%%HQéÏê7[Ê²2æÒL§²hõ\ZÎ²è-,á7*TÂ-1,²v¼ê´ã\'7KIKÍSsÑ:8.ÝÁ´R6*QIÆtJ(²k18]åY²l;ÆÇ)KC3	«A¬8)>!ûRnèQú;yÅÍÆxñhL%\'|,îÖiO#º{WY/îT-9Må¥\'¬§ÚQÈÑGÞ}ÏB&§ÖQëõÏb¤¥ÊJ±ÿÅÜN$DÀ', 'Cash On Delivery', 'shipto', 'Azampur', '3', 665, NULL, NULL, 'idFQ1619587744', 'Pending', 'jubayerk7@gmail.com', 'Jubayer khondoker', 'Bangladesh', '01710029052', 'Kawola, Airport, Dhaka, Bangladesh', 'Dhaka', '12323', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-04-28 05:29:04', '2021-04-28 05:29:04', NULL, NULL, '৳', 84.63, 0, 0, 0, 0, NULL, 0, 0),
(98, 36, 'BZh91AY&SYÃVq\0Øß@\0ÿø+Oö$¿ÿÿú`}\0BQ `\0\0	\0\0\00\0L\0À\0\0\0\0&\0`\0\0\0Ì\0\00\0\0\0\0D&	1O?$ò§ê¦=ALdHI4ÒiQ£Gê´Ñ\ZzJ-vGÑ©é\n(}ò\\üpÈ|[ØÚÅÓðuZBÅ~,l·8~Nl(ºÎ-&iL%ßE.¦llÑÑ³K07u0ÂpË+8~94Òæ%ÎæÓÍN³Ø»©£E{×;MØKéëõ¢I;âN·7\'{Î£¨àö®ò};O/{K=ç¸í`Â¤ÌËíbqwÁx(M®ÙÑi2£)L©Ü]²¥JH2¤C*RTibvÌ7b2©K¸9/ÈÉbR]JjXu)4¨ÒT*MÖÅÖË\rÜ)©KR³¥*E9Ùó\nlË¢#1BR¥\nL,Òí?W½ðiØ£Íµ¢7^8z=nÓwTiÄw)e\rÖYÃ~\'\rôbT(eMlÃ­Þw½SxeC¢¤-8nºîL-:aÑi©I³mau)¥\r9677·´ÇÍ7¸º\rô9å6a)²Ì¹´)»-×¦]^lËm×]¦&ÉíJK.ºã\r2Ý¦vâL630¬Ë¦É¦&S/4>hÈüäwLD*#\nh[¬=ñ(!SDB,ÑzB4X ;È!j@K# Å(EaaFÎFÐÜE«©PO{åë®aei³:^V0în§srë´ÛGróÛ-9Ö9­µÛ2¹V8R,leJ*ê§¯i¦ÍNn6n(ÝÍ³<&Xn²î)%¦0T<çÓ²|§´ùOÉxÿ5?ûSúNg¦U©ù¸sàÇá)Þ{Yö¹S­9¿èÊ%\nRM6YÜ,}åfQæÞ|%ÇÍäûBd1.\Zz¾ç±ú;:N´Ì³Û<£ïfa/6¸ç)©üòxöl]ÒTÞZz,s8u4fC½AÔæbÇG¹ÌÖí	û¸³Þ&1ØhPÁWô?SzúLÌÇàíx:ÆÒ£Ç\"ëMNÓ\"©c2êyÊ.ñy,¦ênö=Ì6p¹©ïQºÍ¦T¢lB¸G\'Ì?ÇkÁÑ¼ Ç@lØ³)È±ÜÐ¹1ðlà8¹Ìw0ÈB÷C±I.ÓØï7é*,|ïlÙÉö<\'%7vIfæ÷°3ryör)s4:è6	ær=aÿ?hB\">Qj½Æ$ E\nõd!=ì56:©È³Éðqj|\\Ååã\nN2Ù>ùyàx>ãí<§ºe§ÔõIû)ëq4æøOÆMYæJ¶):ÛfQeåÝIäöÌ<[Öòótä8bbí­)>j{\r¦S+JaSÂ^60IòyuD{%êÂw¼sEL¶ho=O£c°æj È=¬Îfâ&Çz4ìz!öÖo{GP@Á¡ü@l?aº;èoQâÃQ­âë.7BÆ)E%BÆ1¡ ìÁ1m&û8½\rg¨ê`v!Ô&!ë@ñÄ $dñ#BADHAV@,£\"wº#{±êm;ÊQÀ^Ê}ÓMNÒÈ9/.å8*TÊ-1,²yéÑ{d)ÞQC£°È±EÞ÷d^QEÓiÎs»½ff\'àlt*M#YIØþõ¤äí(ôe³Êsu;\'¼x/)³ñgcJ{&_YO´ý%Óúò-2JSÅP´ôv½¥NÁd³dé(Ë¬ów¾ÇZ\'Ö|~3ÌBa¢ ÿÅÜN$0â@', 'Cash On Delivery', 'shipto', 'Azampur', '2', 120072, NULL, NULL, 'emTc1620232522', 'Pending', 'jubayerk7@gmail.com', 'Jubayer khondoker', 'Bangladesh', '01710029052', 'Kawola, Airport, Dhaka, Bangladesh', 'Dhaka', '12323', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-05-05 16:35:22', '2021-05-05 16:35:22', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(99, 36, 'BZh91AY&SYk})A\0	Ôß@\0Pÿø+Oö$¿ÿÿú`\n!U \0JJU¨AÓ\0		\0L\0Ãb`00\0	\0sLL\0&\0&\00\0iÀÀ\0&\0` \"@)´M\Z\0\r¤2LÉèSÁå<SÚSbQâ$GÔóDIíTý3Xr9ñ\'å2IIóR}ËRéõÁ5O¬úÜÌÀÄ¢õÉDXù/UT¼¹cù(º.gÚj7lÇ©ËB]»7B±Ã`M8§.\Zn Ço[vèpáÃOòÁåËPÖ]0.tÌ&é¸äc6dÓ`ÞÜØ%çíÅhi0ÙN%ºH0uEÓÈÑÒæ209Nå©Å½â³õ±zzÒÎye&3½,%Þ¥7DT\0ÀæÊ\Zz!\\å´92QµÚ6HË,\nVJ\r*RU¢üF0¼0Pxnòá&2[WbÜpn0ÊTy0m\rÈ\0±HÐ¸¦Î[z:(ÀcLaG°ëlä1ê Ó »2£ á`!£Bí9låÿOô{H8>R\Z²£NÛ	Ã÷\'\\ÙÖð¾ií¦Xu?pä¹¸@XÀrY§O}¸{OòÓ¾Ër(Åæròñ¶97°oXÈ¨g2Ê\\Â]iSK\"çÆ¥ÅÌM%6,bm6-r,X¬=nÚrö:<8xl¡vÁ§¶X³.ÁºB»·MÐSfÍ»Ü¹³°`7lÝC»0CHeËpå!èìTþ<¢´TP4ÒÛ4)\\ZÅ4ÄcÁN0(i°F^æ+HÁ¨­a¥Ël¢4Ó#HÀF0#ÜÏw/pÓ\0^@{(+ë0pá±a»N2åÀåÀuºlÆ÷l{Û{fÎÝòä{Û\0ºh:F£{jîÇ-î\ZÁÀðãRB\\:¹\"m,ßË·nC£Ã§N×!ËÈÝ·¡£åÇa»¶<8áå ¹qúGãé=\'ö\\ñ>ï{ì§òú·µ< }MÆ)ïÆ|VÈü5=è©ÔwºÜSÑ5MÔ:?ÛWCDË¦\0¤öSôbú3	÷)>GÅ,Ý*g0Èâiñ<åÍMðÄ´ê:äöÌL!s$s&¥LS{é8\'É]¸¤yÞ²jlM³l1$è\'!£2NCI¸}¹Õ$Ô©4*k,*)#Þù¹ÑÖÒh:&GÀó\',¸á.KÌËÏ9ychÚåMuJLÓöK	f>gÌùÚc¶;|¯¸ÝÓÃaÈ{Ä½E±Æ8ÛÉÂø?øå:\rLR¡F¨\\¼¹V6ËÍçÐÐÂ\"<LáNr·s4=×Ô÷7z³ÁñSýZx¾pÑËÚóJÎ	æ.´ì1;Éy¡´â¢sÎ±0*q¾\rîä)Ï9bQü8½÷=\nlAízÃÌJ?4*R¡GyÜ<gÈÂw\\¹ÖxB 6-Ø¼¼:pé[PX< ^t$°ì	P¤òy§q²e?G¹N\rtôÕIC)iiêBró!0\ró$02É-.^rC±Öa:¦G[2æpÒC3ajØay¶ÅCè©ÔdceJ8bbbQPÀ¹u¥ÉÂ\'QDõ¹sº\ZÎ2\Z£ÈÁÃ yý>2äÀä~ò¡¬ìå§Làq1±¼î8Ãàxøp§àcAHz¼; ìt¡ÊO\'º&ã¾r¦syç7Ì\'DÍx¶ÜQ²ZKËÃµy®Et¢¢f:ËIÑs3¶nÒwL§©Ý*g5>O³SêAúÀ°$û¬+,,C#RD¦(¡B*¤í67AÌxNyÙ-$Ù7Äw¡=¦É°çKHM/46¥c$±p¦÷_%A:ß;\Z\Zc±÷±á³£nÖ(òSµl`Ø\r@égÈÓ¹¶&ÒeJÊhöbZT8=Â}*\ZNT¤ùL^¶nÓtß9OubòÃZi©%§+bLgè©Õ<ç©söÕd0ÏÃø,bJr¢Xø9%¡f³(n)1×:]ÍòC7äCÓéOR0À\n`ÿrE8Pk})A', 'Cash On Delivery', 'shipto', 'Azampur', '3', 120487, NULL, NULL, 'bGDC1621933746', 'Pending', 'jubayerk7@gmail.com', 'Jub', 'Korea, Republic of', '+91 8475953333', 'House: 08, Road:02, PC Culture Housing Society, Shekhertek, Mohammadpur', 'Dhaka', '1207', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-05-25 09:09:06', '2021-05-25 09:09:06', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(100, 36, 'BZh91AY&SY¤qÒ\0Øß@\0ÿø+Oö$¿ÿÿú`}\0B¤)J)Q\n`\0\0	\0\0\00\0L\0À\0\0\0\0&\0`\0\0\0Ì\0\00\0\0\0\0DôÉ4ÔÓOCI¦ &\0h$DÚFêhÐmz¢¢DÄú£è|¡EÔÿÏÏøÂÎ-Íìm½ÓÜáiiïce¹ÃôsL.§SKI\ZS	g7ê£ÔÍ:4³Ów[\'²³î£M)9®b\\ïm0êuo5;%Ým\Z,ÓÚ¹ÜnÂ_O	oI\'HÓ±ÍÉÑÂçYÖpzWzÅÇÁµ¥ÓÖw0aRfeîbqw½x¤&Æ×DlêZL¨ÊS¼»\r7e	JF%ø*E£K¤´¶a»J]ÁÉ~FRêK)MKµ&\ZJIºØºÓa»25)jRós`¥H§;2ÞaMu)¢3%)\nP¤ÂÍ.Óèö½í;T|[Z!³uãÉàî7uÆGzPÝe9)wæpßF%HRTÙfÌG¢o¨u*BÓë®ZuaÔ´Ô¤Ù¶Ì,ÂjZxJt677·´ÇÍ7¸¸6ÆÍzBå6a)²Ì¹´)»-×¦]^lËm×]¦&ÉíJK.ºã\r2Ý¦vâL630¬Ë¦É¦&S/4Gè~Ò;æ\"E*¢âÅ+Ø\n)¢!f)RÅ(BÐ½ôEáAb\n\"°°#\rn·A¼\ZÈ¢b5u*	ÚÄyybÃ+L°eÖÒò±{u;Ø;×]¦Ü;×HæÙiÌæ±Ím®ÜáÌ2±Âdá£cM(ÎNc*ËvíNn6n(ÝÍ³<&Xn²î(¼È¦ë!Îý÷§¡ñ,¥ÆR#åòÊµ?gí{Øüe:·À÷9S±9¿&J¤l³½\"Xü\nÌ§ÒeÜð,·¨(ÒCá§ìx\\º_ë©³¨ozgª?fói;Îr:ßÈèO´þÍº¥IùKCÇ9£[Fd:(:ç&ò9»®F/hO¨vxÍ#Ê0©\'Éù=z£ið³ÂiÜíXY¼»ÈºÓC¸çÈ£cêXÌ¥äºEÞoRÊn¦ï\'­Î5=ª7Y´ÊMR&Î§èÉÛ<\'9§2^]yV.Ýh]y;¸F¶n±ÖÃA\r¥îfñq¦K´òt7ï*,{Ô³ØñÝÚxõ/13=ÂîSæ©Sý¼%<ÜÞÂw»âl=¡äó\"#× +ºfìBP¡È Çæ=F\rE6v<Î-<ÆayxÂ£Ì¶F%OÂ^x¥Þ\'j&´÷¡G¡ëiõ=å<$M9½óàó¢e|ISä»`Â±±16e^]Ö§¦aæØô·§$ÔÄ±ÃmiIóSÈÚe2´¦<eãiC	dË¬¼:å(}¬x»IÑâ**e³CyèÙw¸r0 ÐLYG©ØÞ:¡°zG´±ôg°¤¥(ÚY>éÞv?cdRw\\9ObtÓªtL=\r×¤ûêG)SJK¥÷ÐÐr°LG¤ß³´ÒtÏrÅ7n}°}éR¡DTªûÕ,JR$HÀÄ@ B\n²\0´A`ÅÁë7ÝO!¼q&] Þ>×XPfÆNo(xÍús­æ¥¡S+)¹ëlÝ¼T)ÑÛQtÚsîè³3p6:§\"Êfg\'Øq);_p}i9;>L¶z§7[¶{GÒñ2K8O9v´§Ëë)æñiò2(\rÇìã\noá\"üÍgGKâÌ²YÍ²uJ2ì>.c±ë	>	ñB0ÑPÅÜN$)t¢', 'Cash On Delivery', 'shipto', 'Azampur', '2', 120097, NULL, NULL, '9nT01622010208', 'Pending', 'juba@gmail.com', 'Jubayer khondoker', 'Bangladesh', '017100', 'Kawola, Airport, Dhaka, Bangladesh', 'Dhaka', '12323', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-05-26 06:23:28', '2021-05-26 06:23:28', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0),
(101, 36, 'BZh91AY&SY­_²\0Í_@\0ÿø+ô$¿ÿÿúPéà!ÄwP]ÒH*m¢jx£ÔñF\0ÓÒ\0Éé\0	@	Ñ=@@\0\r4h\0¥(dÔýH=CÒ\0\04\0\0`\0\0\0\0\0\0\0\"@M¦ô\nl$i =@24ôÒ0$ÀK!}¡AæÈ»^L@GTéA©]Æ:E×Vé¼ÁRÂ6ÿe4:\\-^pML¶¿\nmT©»9ÆÉé¡;6¶*E7¦¥5¼I`¨Ì*s:\ZtÞr3èS:ÃÂM\n¥d©EGGØ2¤À\0¥B\r!L Ô\nÕ¦¨Ë!l@À40³Úì:\0Û¼N³­¨¦	´\rSÊ¾R£H)Y+{#ÑÃ\nÄ;^äØMÒ)5°((bL¤Ýæ6 R­n9F6IS\n,q%9¥.m§zÉÇ0Ä F./«2áÝÂ*r¨GÀPH°bHY-* ÒJOè\'Õ>âyp$(\nC0¢p¦Ì2JtpãhÃ4!ß8d&,¤:`@PQjkrõa]¢.@)ÐB9MDÁ0p§9fxéxÁÅß3z4æÞØÜÝí°Ô9ÆI4L¦ðlðVd­^%lBFµÆ3êEró\\Ç¨ñxÆ_ÍÜHÕÈÐ?¬/*9$E³©bÅhT6mñÐ~êk/ìgä¤\Z;MAyàk\'ï?\nG¨¼ÁvÄy,(\Z%:@ân*AÃÌyÁBúP ì\r41P~çhÌwXp\r6àä^áÝCÀØwÛ².Ky(*6àeR ì2\\yC»¿s¶R*w¼(Ø¬6æ+Y\\ô?ãq¼ÁA¦`R%!ÁyhBYð$YXc=ÐecI°EÎÞºÓfáVVàf\'´fß8Áä34å6óðv\"ßÀuÜâ?Ç¡ZUecT1!a¦t<:Ô1k#SÀ¹\\ÂDÚÆV¥1i#P¦ä)¸ï85äR¾¡¨}Y¼çÐëÍ-à&|	X	µ¶Âr8ü¼wHîYcI aÇiaS ^ÑD¥ sgJÃ	ÒòÂ8>Ã¨¸qKi \\îúì²¨ÐËÖ\\ýÃaÈ¢Pm8ßQÞ0ýÃ9É¨Øcé9ß£vÅäCt«ë¡ÀÒzÜ ø4°2°¥%¨ÈPv\ZV\ræÖÃ»ÓñðäïÜ-»O2\0a\"½³1CJ´ÀÄ\\ÊÆÃ¿o(E5KÚ*/yZ@AÉ¢	t\r98RÏi³)X½ÓHÁ¼Ú¤1Ë|P2-ÑBalDæU~°OXÆ¸SQ .%éÉ:â^£çÄê\\H\'ó;È(&ù´A°â33Rd(1UÊs<u:½D·o&Á°!þ.äp¡!Z¿d', 'Cash On Delivery', 'shipto', 'Azampur', '1', 106855, NULL, NULL, 'J6Yo1622010977', 'Pending', 'jubayerk7@gmail.com', 'Jubayer khondoker', 'Bangladesh', '01710029052', 'Kawola, Airport, Dhaka, Bangladesh', 'Dhaka', '12323', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, 'rererere', '9', 'pending', '2021-05-26 06:36:17', '2021-05-26 06:36:17', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0),
(102, 36, 'BZh91AY&SYtÈ¢\0Í_@\0ÿø+ô$¿ÿÿúPû<1ÔkCZ:4ÂI3DÔñG©â4§¤\0(\"zh\0\0\ZhÐ\0\"I(hhz\Z4\0 Ó@\0\0\0\0\0\0\0\0	M¤Äa&£Mê4G©å ©B¥à.aû;3E[s.[uN¡Dé\ZÜc¨QÁÍuîëÅL,#oöSC¥ÉÅRÐçBjeµøSj¥MÜÎO<ÉÜ©°ã¬©R(A´¬4)  \râHF`ÁSÌÌÏ0¢Ð¨vhU+$%LB(Ê:>Ä&\0\\i(@L Ô\nÕ¦¨Ë!k@À40³Úì:\0Û¼N³­¨¦	´\rSÊ¾§B£H)Y¼ÏNË`ábkÁû b	ºE\'¬((bLw0ØEJµ¸bJäØpr	$aLbL(p±ÆDå¸E¶è\'Ã¸¼z¬HFHËTgw©Ê¡B\"Á!dt´ªI)=ô¢Tûäh\"\"U2FTTI4g2U;¤PJX¤A¨B \0H	!//:ÅðW\0P2\n)ãÔL9É3ÃKÂùÑ§4&öÆæìom¡È4ªI­Ì*Sh¬É3Z¼J6Ø2j17gÔ;0ä	æ:ùOQâñ_ÍÚHÕù\'4ÈkL\nÎ9lêY1b(Õ\r¥[FÐAÄt©ùKøøBÝ `wÊ;ÅCÊKG`b»\"A<-)\Z%Zð8Jd0ô!0P¾t(#{2Æ£f2\né#2ÖM´8¸n¡ÔÖn+³\\\\òPT0l2ÀËÄ*A\'ØQù»¸¹ÛçÓt\ncJ¨*¬	v~ÏÑ´Þ` Ó0)à¼³!-C:,¬1ÃÌbÁ¤ØÄ¦Øgæ¾ãÛèdãØ\\I¦Þ7ÆÅäÊZèp SbîØyçØm$µXÑb!XiÎ½*K´¡Ô¹LDÚÆ«RÈÏ¬ KCjÃÌñ84âR¾Á {³x\ZåÌéÉ-ÔLù°keåqøÓ îÏeZi$¥Ny(©;É+&Kà)pÆaßÐWp¥B14BrÝÃô©fNd2:êÈ¥ÃÅ}çRSÀM²Ä/¸ÜlÿMJ­w4`è»Ç\\Îó9érHäÒÀÊÂb£!AØiX8nr,xåõs¯gÍÞçØæbbßÚÊHc@!D(\"¬µmr*n5;8Â)¢^¢ø©´¨¸ÆML\\·AÏe!Üð5êÝ4ÍC ±·Å	¨,³0CE	°sCVu¥úÁE\ZâbSUf¼§W¥I{rä\nA?ðñ  äÑ³Ì	 ÅVC)ÈòÐækBöÝ¼Àñw$S	L À', 'Cash On Delivery', 'shipto', 'Azampur', '1', 106839, NULL, NULL, 'XtP11622024404', 'Pending', 'juba@gmail.com', 'Jubayer khondoker', 'Bangladesh', '017100', 'Kawola, Airport, Dhaka, Bangladesh', 'Dhaka', '12323', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-05-26 10:20:04', '2021-05-26 10:20:04', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(103, 68, 'BZh91AY&SYÀCó\0\r2_@\0Pø?ÿý¿ïÿú`\0\0\0\0\0\0\0\0\0\0\0\0L`Âa4À\0dÓ@Ç0À	Âi\0É¦a0		Ó\0\0	MÂ`\0&	¦\0\0&9À&\0L&L\0\0&M4$©! )´©ù\ZL§SÔõ7¡©Õ-!%ä$ý¼|À¥7wÙø°¥ÓþbÈ:5RQªÐÖ\n?QB¿ªª¨¡qÏqò>W£¨½\'ú´uÅ´ªªª«GúÉÀý(ä`´NF\rJ0K¹C¹©ÈÐÉcjls0`ÆKÆrâÌGy¬`äaÌRdÚ9¶0*K)Ô:L7R6=IAëÌÀö¿³ê{\\\\ÔæXË·Iû:4w=riÄvh±¢âå.Q«µïò}µjµaê¥pwEÞ èIÚ²CAîÉó¡ÆJ0Àäl¨ÝØxÁ\n¨eZI)I80,-E*E*E*#´\"¢q.`ÐÄ2Tq~íQeÉeR©\\\Z(i·\\µê¬Kµj¼dQp-,.jdât}Êf.£÷Q<êI£ÈàAEDQEÎÍMÖÉÍCU#bÉ\Z(°J(JX£bé±ÄÊcÑZQ­.(Î¶2a4Áe­8¬¶m³-E«QE\ZJÄ( Ék\Z40tYN+´YY$ÁQ¢êÐ±ræ\rÜ\\¥ØR`´f(é±¡&Ç[aTSú]Y1héEãXÌf-bñhÌq\"èÖ/$Ì®.ÑÈÀÂSÇAB¤£%BNãØ0F¥ÍhÐÉ¨d%SC¢X¹ráC&¦\\Ø(0\\5Æ\nÌ\\CCÄ&M5hì$ñsOæ%äB:É%-$X¡0X½âK­BÂ-*\n*F\"ÆaEE¤\\Q\ni\"PP¥\nQ¡J\n!/h,^ ºTIEDJ)¢¢¹ÏÈt* ã\"H¿>®¼I~±QC&&Fc&ã\\äØâQâ07.\\ØÛsAÀ¼pÅ71\\Øp2\\p5,8L¡BÓbÅ¸RÆÆÆ#sÄâli#\rI&æ\rK62(ÉÄ´b`TâQàó<#çÙ\Zd{£äÄsShíjó­´yß¬çe¯d}¼Oý¯eqïl÷Åníeê+¼ï[Üõ½oHúÁÔQÜv\"2Q2((¢M\rK÷#UTHÌ5<ñöFNÓh±ÅGÛÎ¢Ñáúãá(ëÆñÈøCàf0KÆ±<Cx£#¡ØNÒ:w7ä¨ÿ§­øF`Õ9ÆÃât2f!ÞP:F±¼sÄÜ3#ù-gâÆ(ää\\d¤X¢¢,x¤àpGi¤yãt¢ãp¹´\\±QÕNcCÆ>Éá^Kz¢ÎãÊX£bãGÉcrÆb§$äù¸Fï+rÜQE	¹÷¹}cxñGÇtZ2QBQ¸´p8#æn$¨¨öF#+Txâ%s1Èí0rrîÖ§¡Þy#ó>qPÕq©ªÄï<#£ÉJ6:ÍV\\\\rxFéc,òx£¸ÿe§´MÎ³ÊO¬~°þÑ$ÿ-RÐpø(TBÄ>¢8E\nóQàk<\"<eãº=QÂ-\rÂñd¨q8(dÔEGÒ/4\\ê\"wÀQC¡åLq>:DFO!ásº#RÅ@Áh\\Ô(ÍDÄjdÝ;ÅFI±5O{Þ²k\ZÆF{EUÆ	ÑD¹QÙPÖ,¢¢ÈÅ-$Ü±AõÆpó2ÜñôO*p9AF!hþMLÁG\0ç£ò²jh¢}Æåâ¢¹þsÔzØ{3UÝ¸á	hìH|Åî=QcêQE(£1ÖXORu£bM\n&CÙùoQ;âFÇ8ï!°ü×ÄøÐâ¢Å\ZâÁ\\ìs¤ëEÉÞ{£\"ÑAÅhwÞ3£¬ö³SûnQ±±stYöÈ>äTTQU÷\"R\nE¢¡QI\"Â¢J(RBX¤PôÆÑø;#®;N±\Z=\"dØÐô&±Ð\\Ñcp\"Ñ±bv<\n´o¨òZ\'äÉ¹Ü³1±¡FãÓEÍÜ¡HlTQDç!h¡BÈÖ1nw3°sE9ÅHÊ64j6rõùQÄë?ÿ\\ûÔìSðSÚ§ÅL)îSÊ§OÑOÑÿØï<§=ÁìB`%=Xæú=fO¤QØzãU.#È¦!¸Qã*GTo&Æ	øÅ&J?ì}ÖDó¶ÌEÂO°EEEY?ü]ÉáBCÌ|', 'Cash On Delivery', 'shipto', 'Azampur', '4', 1459, NULL, NULL, '8VbG1658728510', 'Completed', 'sagorroy204@gmail.com', 'Sagor Roy', 'Korea, Republic of', '01785400204', 'Birgonj', 'dhaka', '1205', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-07-25 15:55:10', '2022-07-25 16:06:46', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(104, 68, 'BZh91AY&SY£Çt\0\"ß@\0Pø??ý¿ïÿú`ÿ>\0¡I@\nR$9dÀa0L!#\0À2`0&À`\00\0L`À0\0L\0L&	0`I¨SL)§¦A4d\0Èh TA4Äj4LÐC#M\Z=KD?3ùìø±ÃÁ\"?Gâ±ÿÁÖÑJhÜÖQþ\n+öª\\àÀ3ÜûÙÞpnÆÐ;X­:ZÉ$±fÖ6¿ESIÍªa,áú¨ÜÎ\Z´9µh³Ñ³¡vYY»âÊÇ%)8\\³ÔÖaÍAL¶Ü£¤ët:W£0ù\\ú_KVên²fï)oZI$ý¯lA:£âXÑÖî,ñ6,³W5 Í\'ZÄnùÏ~Qï¡i4YfT¹ÌY²¤GåÅA¢¡*&ª¥*F©RR*M°ÑÊ¦ïÕ²¹zY\\(þRY¦å0i5a{ªnË¨Ä²ÊJ©¦]ÔE	JB)0³EÚ?S/ft(¦Ñy-kL¨³]0´¡hÕ±\nPÂYë4Y¢¥Bê(Ñ¢ë°äÝÑ.Â-3)3«,0ÕÍ¨ÔRË¯*m->¹a³w#vælÓw3°ålÐ·[Ø,bXººutQ»T¦VlÙ¨¦ì·^nla5]­4e¨Êa,jÑ¤²ë®0Ñ­\Zí.j,faYMSFNIËf¯Hã%äE(E#DV(!SDBlÑth),MDZRÔÚYB\nA\rP(\"°0HQjs8¢(FAC±V5a[2ÁgSEÌaØä§c®Õ¯&Íâ8j´àáclnÂæí7RdÝ¨Ë.ÙES-Z±8nÝ»f7hn¤Å\'5YvÌ¹NCÒ6_Î¶áèyß±x_¡À]þ#Þ¢ôCYêu§Pe;Kip;Øe0èasc/Gü]äô}oG£Ìú]Jî×ÁEhÊ%\nRM\Z¬àz%ã23ó;X06´.°£9\r<¯SÎïûçCg}Ô7höÏ¶>ÖfóY;%2t4;IÜNÍïq(ücæ~0ÕtMâëdÌ©A×5N×98GýZu(âSdå)ÍÍs%%©\n,vMÛ§sIç:\'\\ÑÒÝafÒë*eûw\"Ç¥åÔô]àö,¦Êlðhñefë¬ÒYF®\ZÍÞ¶Ë¨¥4&íÓúêÒ¦TR§\"^]yV7tÎFT©é/6Çd­¥NÉMÔñfpìaÎK®ìjõ;çäý¥F);Þ¹Ã.ùºt§µìbbfy· Ó\rð Bàé8ÇÊTåUöAj({[Od(©!ó£yEÙèö4xÈî^wOI´´÷8ª97aC-Q;<#c@Áð j6¹KWq\rJï7zÞ3ÉáE&«,ó\'ìZKµ):\ZVQeåÜÓÂ]àÌ©Ù533.b^ÌE7 ÝÀp)X¦É2´Û=$^R¡ºvJ¼àzÎÕj>OScQ´³QÊy?wpÑI÷ZRnûÞ\'ÞÃÍç®Ùå6iÙ<Ä§ürÏqJR¥3>¢ÉöNTRuD1yGcwcÄ`k)=XÐ@¹e÷°Â]Ôâ´ºwCJG$öKGuæóÚé|ÏsW½NÙcÕ!ðJ\n\n_hH1H#\0#0#*ÈÑ ÅÊõçCÂi8Ê#DÊ{ærk: ´³Ü©S´Ä²ÉØòU§t½ZLå²§#Îu8]ÉÃh¤lT¢êJ(²k19]ëY²l:Ç9KC3	«¥¨Ú)=áþi9:>÷æÝOÁNÕ??²rS¬È²d:Ïñæx3kÐ0Ñßd(Üs:KwV´²b!ÂD)às4ÁÊ`;ÂäuqCx;X=/P ÂDAÿrE8P£Çt', 'Paypal', 'pickup', 'Azampur', '2', 820, NULL, NULL, 'kiDR1659950543', 'Pending', 'zylus@mailinator.com', 'Hilary Burns', 'Mauritius', '+1 (701) 728-8517', 'Ducimus similique ipsa et ea', 'Culpa quaerat neque est aute r', '63443', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, 'Dicta sequi dolor quia id eius', NULL, NULL, 'pending', '2022-08-08 19:22:23', '2022-08-08 19:22:23', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(105, 13, 'BZh91AY&SY	^þ\0_@\0Pø?_ýÄ¿ÿÿú`ÿ> Q\"J\"Ra0		Ó\0\0	MÂ`\0&	¦\0\0&9À&\0L&L\0\0&M4s	L\0L&\0\0LhDhB=MM¢z¦Ô=M¨Í5=CÔôÔOSÔzR@MÔM¡¤Ú$h\Z¡ ÈÓOD´^D?¹öûö;É#æÿ?3¡aäuRGæhQGÞ¢¿éEÎì\Z¶ÖpcLö©³Lv¸ÚBÇxÖ*T¼9?âë´³±¥¤Ó,©Sâ£ÔÍ4v6if¦î7e8i¥~J91¦Ø3=\råÝÎ#´êña4w?BÅÛ6R^ïT·\0íuxH$³ÔÊÎN¥Ì±åzû)õ;;R|V#Ìø>bG×SVG£e\ZiÊdæ,áR#Üò,CJ#ëT¢âÇ1¤EØp%ÈâGBmhRé¢Ð´Ø^ê2Ý³¢R#VY¥×2Ó#J|TViIh¡)HR%n»u¥ÊRõºó,©e©ºëÝø®jJPºË0Ó\nbbB°Ã<.©²ºæ¼©¡kóFÃfìnÝ³Û4ÝÍÅ°äÙ¡nlívì±E8e)ÂÍÝ92ä¼àÝ0Â*l»jiÃ)²a³L%%r`e³MÛ4K¸0ºa°±e°ä89ÆæfG ¾§ù1d¦¢AJÃº%\"BhÂ%.%@v1b§i@lB#AH Á±JXE@1×S·XÂ\"*NÛYt©ic¢Ë\Za[2ÁgkKÌaÕÂX9.»fÜ:¯8J\'6ËNe9¨æÆ®ÜáÎ,iK6há¾ª¨ËFÊ/-Må¥¬ÙÍÃ\r(ÝÁ»æi9²ÝeÜ2S-ç*Rë±ñÚô<î!ÔûÅó4.ÿ¥Ús5½ /T:Ü úÎEjll{±Ìù]Æ<ç½Ø]NãÖ8FT(Ri±FÔoì;^#½ üÍ¯Qc\'9Ùú\\ÇµÖr|ÎÿS\ZÃv´ë30IÙ<ÅJdî¹ÞÞêhô»%È©Þýo	ð³sÞêÌ¬Ôæ\'YÃÌ²>kNã¢9Ên¥9¬`¤²R¤XÃ¬·O3iíºiÑÝ9®.â]eMg.\n<çÈ±ìJ^K©î]ô=K)º¼ï8j`£fÓ()J`OèN ÜÆäA°lØ³)ÑÔkçav1è:Ì±N°ÔÍLv°ÖCØ]äxN2æc$Þr½Çpv1yÂðhrSgK;×<W¶e¦§»äùÊKÊz2ÔN®äûÂ>\n¤>Ú ö·¢¤,Äà¤TöÏ{ÜÔ»×#è^}ß7=ÓÒÊÆ&ã*NPËdbTý%ç.íDü]óÖQEr:½3Ï$>J:É7z^¹ô»è¤ÙeÂ~E¤»`Â£bblÊ,¼»±;åÝÏÉ¹´ÄºrL\\\Z6£RÓ9w±L;+ÄG&w0\"ô)À?ãØúÛÚð;ÞÂtz£¹Ù^/.Ðâ{_)w¹94¤þgå>O¤úO;kÅÖzÞÉÂ<ÎçÐúöûZOhA bëäèø:>Öé4¤ê=ðç>¤ôJiÒz\'¥,JGÂ)Ròå¸3²w3IFeK§¹íÓ-kÎ\'±Ññx¶{Ôæ¦êÁ\0# Á Á:i#\0#R1\n \0Ta ÅØâö<o¸ÐÞdØH{ÎAyÅ>©³ÄÞu.ÒÎsISJ1,²y^\n´ç\'êRÒ`äRé¦àõÎ×%Ü5¤M0 ð6J`@¡ÉØqveéY´Ìá4<£¤¥ûf¦Su¦Ãrv)>úRry\n?×9º9OéÁ£!Þ\r+à\\ô~äX£{JÁ¤ð6D7\ntu½ÍËÅ \\Ø%GÌ<ÁXã¦@ÒPÊñw$S	\0Åïà', 'Cash On Delivery', 'shipto', 'Azampur', '2', 2625, NULL, NULL, 'OOW41660372572', 'Completed', 'vendor@gmail.com', 'User', 'Korea, Republic of', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-08-13 06:36:12', '2022-08-13 06:41:53', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(106, 13, 'BZh91AY&SYù¡K\0ñß@\0Pø/OýÄ¿ÿÿú`<øTDA@( ª!Ì\0&\0	a\0æ\0	\0	Á0\0\0s\0ÉÂ`C\0F\0\n!MH\rÔ\0 hdÄÀ2`0&ÀhML)àhM¨Ó 4jbhOÙú½©zÖêaÍÖó§­úESÎó4ïmè}ÓjÅe-1_Ã9]yØàdþ1#:@gJM;üÙy\rÚu¤MÃTæ¯B/ÿ3\Z*Õ¬¦Pá,õÀÔ\\46t&Têò ­9Þ$°æ R.`zÌÎ%` ô±I¤uI4õ2Ô«Z³¡pK¹Aò¬M,7K:z·Ñ·Éd	\n8¤ë4\r¶*ÄVRU©Aw«àpÎd¤¶\\¼õÏZY«!­uîq:çjs-5ËÕ¶Ñlk{ÞÍ+*JÞõ­1Zdo|Üo¦1ó´ìhÓ(Hf(`TX	QAcCK(/dïg`xÓ0SiYÖ\n)¨SµfbNaKWTR¸0ìP¡%eZÌÁQR§b_)$ÿ#Ðªð7	a¼/Ì[.c,ÍLâ1Z³±böÙjbÙ-TXKÄ2RZE*ö»^¼Si%`I6	#÷Ä«VhR²\'==6JV¶56HºcFV!3.¸¹äcX1pPÆÐ1é++LÎ÷½ªe6auyYg;D¢fÆçVÒïgqØzÎóÄ¡CèLÏiî¿àLÔt=Vw=°È±¨ÖWÀ{OF$ø²ñÅ)l¹ç}!kê~gc³Ê¿kÒÆNý\n©ËsÞbo4ø\Zìl&+±à¼(MH°fnèu|N\0¾Â§#1\"r2(tÒ8°4*\\14/P}`ÍÊãÆ¦À ZÁ®C#B¹èjJä¡n3iúºÁÈ$ûFKwx<<ÜgkÔËT 1TmÌUª±ú3CqA¦b)àÐ¼ó!,FwÐÌ¨f±âùÐó\Z¶Ó@çóó\ZÜòg[\\uûËmgÈë+bú4¾.äïõÏýO$%©7J¨Èy\'Bì;zT!m´í0 : d!Q¬ojYäHÚÑÄæocW\rÛX¿6\0À§g_0´GL&³¨¦VÉo%§Ì¡ñ,m©Õ96ÆÎãpÜÖ.ëÙj\'%6XD»E1À/±ào$pßØ-üÔjC!ABçoÐrÆ£LÀö_Ýº;t9eRâLÖyÑç(Bì\Zm!~&}æUAG v\"çE´uÈÚnµ	5ÚÅÉ¸MbªÑ1 ë\ZV\rä²ïç^ÇÉáêAû6\r©ô1¨«)R¬b`eImq(PØfsÕÂ¤ûÉsWÜZÇS Æu:T­â¶dñx1Ôvxnã.3UåcZD(È\nEL©Â,Pº¨`³Ä¼ Á,ÚûÐy2úÆ{yç¡ØB.	GÀÿ	Fò\0aä\\P÷´ÇyÒò´ÉÑÄûU¿©Ý\'Íé_\'u¶ÂÐ½Ø\\âîH§\n0)`', 'Cash On Delivery', 'shipto', 'Azampur', '4', 10000, NULL, NULL, 'ISSo1660373104', 'Pending', 'vendor@gmail.com', 'User', 'Korea, Republic of', '34534534534', 'Test Address', 'Test City', '1231', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-08-13 06:45:04', '2022-08-13 06:45:04', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(107, NULL, 'BZh91AY&SY4ôé\0\r_@\0Pø;ßý¿ïÿú`\r?\0\0\0\0\0\0\0\0\0\0\0\0\0À2`0&À`\00\0L`À0\0L\0L&	0`\0&L\0&Â0Ì\0&\0	a\0*H \r12\Z\0Iú£Á0j$¼I\'ìÿÓïIbÇþ;ï\ZIÝù4YsýBÁÜîQJQ?Á´(q+þªJ¥¬#ö?kÞ1OÖ(âñh¨ì/UUT¹ú¢Ø-¹û,QÈÁh\Z`°¡FçðPÜ\\ÔÈähd±5696&æ¡còPàhhQ8hÁ£Ìho\Z³%)Ðu7R4°»V¥òç-ß$I&Ì¹¿ëÏI¤K¸e¬j¹ª,w<Ï3Ù+êx­çGµÞùØz*Aâ$â²C	!ÌæX2`±?Rà3®õ;W7TMeG\n6¢\n¢\n¢ÅhÂ/\n\"¢q0`ÐÄ2Thô)8¯2ÊÃÞ(ÚõUVT.(º6Ñ0ÁbæMÎoµO[AÂ¢}JI«Ö²8$]bÅDháræ0rfNj\Z²±¨´eEQD( ¢RÅ\ZV¨Ø·ÀÉuIFj ª.]4,TX¦êVqÑXPhµXÔ³3ügQ\n(*\r\r\'ò²õrJjÑwF¨Ø¨QnX¹tÁ6j``\" ÐÁræ¦I&üebÑhÄ^:EÑxÒ*3ÅFñx´f7\"èÖ/$Ì,,ËGnÇr(R`ÐhXØÔÔ(ÜÉ¹xÜlLB£Ræ´hdÔ2LÄÁ©¡Q,\\á054654æáAäÁ¨Xf0VbäÔ\ZdÙ³V\'HCªG÷/QëI,RÒ¤&J?J\n,Z,REÅÂâ%E\n²TK(RBQ¤ ²BbÑ/,^ ¹Q%´D±BTQ×N|ºÉEB:sëêÄ¤Ti\Z,70oÀÐÈÐÌ4/Á©NÌËð4ãrTTN&¥££C|U\\Ønd¸ÜÔ°Ü£Q ÜØ425(\\FõJª¹¡±±âp8\r#sÁCcr¸8,niDâjnX¹ÀÈ£&¥£LÌQR>ô£Ðô#úìÇÑ\Zû#1ÍM#¹ãju5+X´sNQùHIöÑ÷FÝÀÐø¯Öáè£èNQô»c¯Â(»ÖÕéSEØSíw©êS©ïzï\n<iC¸°àFJ&EI¡©cèlöi$ñ¤6=1Úy¢ÆSCGï9(öGh³¬£C´zc1øGÝ>øî¸¼HäLÅ=0øñ¬NÚ*(Èæ~ÑÜ4¨XÐ¡GÅås*=/­å¤jeaá#qö¤Ò!àP;#XÝ#²8r\nf.GøZ:Îq7\'£gã%\"Ä¢¢J;\"w§;ÍcÓ#²4:QÄÀ`Þ.X¨àîC#ä,tQx(õÅ#ÊX£bæ0jn\\Ò(¡©Å?¦ÈÄp;[(N(ØNàâNQî£²8<QhÉE\n%G//hìª?ä$Äb8AÀo¼TwE\n<ÆcÉÎó\'8.w¶ã<#â1Põ6Yceàsf­\Z¼$J.u§[uØNGÄZ5P\\ågýGc1cÈRØ÷Ðï<äúïtI?:U*©!1Â<é*!bóqBTy£Ô=¨Ö0zb<ãÂ=¼oE!À¼2T8(5#QòÇz.t\"yzE)ÖycSÖÐëõì?§{lyO=fhR6,Xö	±h\\Ô(\rDÄjdã3ÆÒ-\Zrlz,m\ZÆF{EQ¹,Z(*;âòB£H Ìeùâ/P±þ¿¨ûcÂ0Üuí¡ä#é=çTb©¡FáÎ=Æ.{I©¢øKÅEø¬õæOö¼Qìá=1xî?G÷CÜ(QC1Ô\\ßRt>.gÉ«rM&¡óÁñry<FÆÇHòGº¢é#ñ ç41%Óh¹>§¡£\"ÑAº<±hxïQÐùÏÔ÷q(ØÙÅL}ð?R)\n¤RE\"übÑi\n\"¢**\nH¢Z\"¢%T=´ÆñÛQÜu±r(æIè$öÆÒô[ÇhÉ¢Ç(â)-\'qæ*ÑÎ\'Yå(´OÁF©ÓçhT;\"¡¹QE^-åFÑÒ8àð,kÉ v\r¢\"¤~q¬hËF­éÊ\'1}N±Cþ«µOZTö©e?50¦T²rR?ES*MS¹îä<QÈ=ahL±ØOZESäù¢Ì(ëz£U.·Åq:ÊÑÒ8Çís$÷E&J?!öò\'²6Ù	Cà}UE¯°²*ÑÿâîH§\næ ', 'Cash On Delivery', 'pickup', 'Uttara', '4', 793.4, NULL, NULL, 'pRSJ1660576793', 'Pending', 'wodipi@mailinator.com', 'Dieter Daniels', 'Guadeloupe', '+1 (874) 489-4789', 'Quis quis laborum In omnis fu', 'Eiusmod dolor optio et sit nu', '95992', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, 'Facere quis cumque eos aut rep', NULL, NULL, 'pending', '2022-08-15 15:19:53', '2022-08-15 15:19:53', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0),
(108, NULL, 'BZh91AY&SYD} \0à_@\0Pø?ÿý¿ïÿú`ô\0Q\n\0A©EÌ&0a0`\02i cL`Âa4À\0dÓ@Ç0À	Âi\0É¦a0		Ó\0\0	M	ªHFFSÉ\r=OSM6£@=A h@¥$&¦&ÑziOÈyQ£Ôa©§©èR6R?³þÏÄh}Æ4aù<©óUSó\',i´ÿ	çMäua1p§êÉÙ1?¹«Æ&ÉåºvOí?¶Û-Ö-,¯ê°]VËK¡tÛ3333iÔ³uKÁ³¬üæÓS\'âh<&ó¤Ëy¡¬ÿÉ§TÉÃÑ<\'3¤ÔÞ.\'tñÎáÀî¹\\­-×úY-üË¥Î¶­×²vw.\'	â\'UËyÏ<ÍÎö)´ÿ)¤ÙËÍU±´ö­zQùºº<ÏîùÔCgè4å£Ç,71¹©Õä÷=Ï¦øýÏ[ö?{N¯zzf}¾wW­ö8}¬Iì¡äÕSÐârJè£]&ÌL<cÄº±Tð|Æ=M¡:²QË~SÉ¤ÖLafLe3&Í-ËjdX¦óyÒoL]ïîî}4ÃÍ»Ze.\\µOÚ;Ûfi6tj;òp8-Rh7o56\'´ÙäKdÝû°>VCEÞÍMLK£¿i´Þm6ÏÅËmbÔâÅª±,¥KK¥õo]Ó]çÞt8hi2tÊ2m6[ò86Æim1ÞÄÙËg69q6NdÉ©ÌÓyâåmú±tTÉÌ\\Îg3zôaÞêrÓ£\r4á³f×E¥1pÎé©¾ózÔáÞèÇ\'Ã£@ÒådÓ¼Þu;Üu`blý[º::--.ËÉl[.V.e½l´¸]ë¢Ø¹[-PâM8tv==ÓäLLMçJ±r´».T±w\\.ëiÞ]ëx²t¶]båpº¥ÀÜhnº\\­Æ\r-n·¥Âér».0Ùw¥·[\r×Tµ.&ë8+¼ì8.×k«µÕì*ôx§ü2%2|\Z©0­L¼ÔÒ¯ë©bßE¥²ÔÒÂbÂÞipbÒj,i5V±\ZX&K`ÕË%fRÕ²ÊX­¢Y²Ùµ+K%VLbÉÊx//»6ñóùyqD_Ñbåi7N³y¿|Éºq7Òl·Þuí5;MÓ¾m6Î{çDí6]jÅvÍ.ÉiÚm¾ºkyÜgdë;¦§Bî»Rås.KaÔïYl¹]iºí;ç|ïÓ¢ë;ÓyÝ4ë4êïwµ:®r®ÓÖjm1ßp8Í.&L/â°÷½ïy~²ûW\'½~åùº/&9_+Øî?«Òê¾wäê¶^ä¿â¨~>gâ¸OÇÄæ~oæßåx.÷,>õÌ¿{æ^Þ²lèûó¶}-6nü[1ëlÓé}O±³ïpÝö>\\>¤øOZz&Ou|³Í4q2®	(tÍOÜò:°{Ñ_«¥;Oáøæ:ÄöL¹\\Þù¥ábøOZ¼.VãSß8º~ièøÏ\\òJæx&Ï?	~ÄÜl¹õéLY8Oþ«ä+æ#É4¹¬ôö¼V&^÷Öö®)r®\ZObò]SøÏLä:*{&	é\\®¥æ^ß6x-¢ýfóEÙdëWzÉàêðªÉ`ÑèJí;ªr½ëÉzIçÚnMçU´ÔÅÞº«IÛ²bpå5^âÉ°m2|&ÓåÙ©ºdî4ýyÌë6]ÏàýKÙzN³yç,X»ÃÎ¾7ñ	xOTóV«Ø´¸deX»*Ùm6Y¥é]ó°ây/Ñx#±|Kuß\'zuYÕbõ,ó\'ºp½kÆz§Ä6/QÝOëÅÿSôYO î;pÍUì+Ærtrö#´É´ó¯;«fé¼y^éºÒå}Úx/iìGøX^S×?V1âÓO±WõOu_j~këdÄåÆe¬D½ë¼ùÈZEôÓ\nÅûÐ>3è­ç½/\\Ù{Åu]Vëu©±7[©ÄÊwÎ³yÄæ-Ö/ò¶^¢Úy záïLóÏjæ|\'>ùA£Ôï]ÓÛ?Ñ|\']ÓSSâ«¸Òm9yy«¨o:\\)¥´ÙxlÙ{W¶æjr;Óß}VZ§Ss6ÒÝj`êÅjq7\ZZ,rl/L²u2ÅO©-L\Z_öÿÕû×±nO¹ubz\\Å^iëö¯u<¤Ãzi~G&óÌaÔ+ã?%´újæte_ØÙbie]§ã>çÀø©Äú§ÒâöOwtÚzç¾÷/÷8/É,VL/#j¼ÏÁbòÆ.´;«T¾¿á>òÌ]«²ôO}ÕÂõó¶&£öàxÌM«UÊÜ¾»u¸Ú|%¥µ_sØbtpYGy{©ëÙp¿ÒyO®|\'3í;LÓ¹ÙÍ&\'û	0²ã542¥)dÄµ,µbÅ,¦J¬Â÷NÓø]çÉ=3Ö¼Þ]MÅâUîõ®ý^ó³W¥8ijx.Éy¥ÅºÔÕ_!î¥âyí4±àÑÁwN\'dú¢xM§gìX^©Þ²e`ôMS%Ôø1w.EÛyì®ZºÌ;§DÅ±?|êsNëSªíWrx¬2_NÓÎñ?£ÒÇ{4Çû±»[°þF:1»0ü´Ó{±lûÍ±ó·iò°èá§óbìîtí^ÙîÕäO©-ãq¥ìA4½WÛ~9«öÏ\\ÔÉñ\\´ØÚô±½;*ÉÑ2M/2ì¿Ùj®³¾ÕØâaüøOÛÞúTÿáV\'îÃ&dÈ²`ú©ü]ÉáBAôF', 'Cash On Delivery', 'pickup', 'Azampur', '7', 1717.4, NULL, NULL, '879l1660578871', 'Pending', 'nalelolod@mailinator.com', 'Cameran Huff', 'Denmark', '+1 (557) 995-6764', 'Omnis accusamus incididunt ad', 'Velit aut magnam fuga Consequ', '22545', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, 'Sunt maxime dolor consequatur', NULL, NULL, 'pending', '2022-08-15 15:54:31', '2022-08-15 15:54:31', NULL, NULL, '$', 1, 0, 15, 0, 0, NULL, 0, 0),
(109, NULL, 'BZh91AY&SYÓé·\0\n\n_@\0Pø;Oþ¤¿ÿÿú`\n?}BR¢@H(\n\0s\0ÉÂ`C\0F\09dÀa0L!#\0À2`0&À`\00\0L`À%4H2\ZÔ\Z\r\0hÑ3SÓB\rM<¦ÒbOH4ò~©¢-¿RüOÌôÊ¯ìÙþ_üº-í!CÔ/ø<#ègðh{rý¯Ûm\Z2y³cFàã¶d=àZá\no©³f=[¶«£cèGo±§N«\r¡¨1áìnð8Cn\\]þX<¹rÄ:47#ÀSÕì¼`l÷>Û82<sÿ\r6Yëµ\Zmxð*§©Üâõn88òÓäÝ»År¾«gÚÑç[Ù&JÚÙlªø>\rò|:pUIäyÀ¯\'aÔØGFAºÂ]G!ªÊ±8].]Â·°â½­HíYv²]L¸¥©i6cgîß£©Aà³E¼±9\0bjíÜ¸(£ù,e9îà.rBÍ1Ä8lí¦î90FÌR£fhpØ`÷!L0\Z8!íÜ7l °,b·nÝ»Ø`\n`	\Zi»É-G­òáÃl9rdAAÐ(:Cs\rÍÍ8\Z7:&Ã±¨[Gy{¡:z:;pí ØðÛM:\\:]!wN[¡³O!vàáÓND)Ø0´ÝaÀ]\nCHeËpá!Ó\'¶ûGù0Å´VYS,FYFÖ­)é¥VZ´id2ÊØÓu6ÐF#¹²Æ,2ÚÈÕ5T¦­Õe±¡5a,°Ë¼ï»ÝñRº\ZîhU~\r.ëVÇÆÀåÀvºh/wµá{qïi§N¹r=\Z\r¡+ÑÓ`è=Fù)àvá¡Û¦Ã:Þ¹0i´M8eØ4ÐtvíÛ!ËÈÝÃ¶FÜpG/­®»u÷;G=ÛÙeõ=ãöï=g¼÷³ÀþíáÀú¸øì9\'Ã/èp^mìæ{ÐüOaû¸6;cÉ×ñ2ð^`Ó×«±°ò®M®ÇyFÕ¹¤ýçuÂÿ£¬ýÖ]WÑänSò:~gú;ß¿sàyWßr8ÆÇZt=·]×êzæ[¯CÀÕOQÌÝ~m¹^«ÚvG1ÐØëºæªþ-s2åf\\í±NÔþWPï·=§aæ8Ý·î¶-®³kVKè=nõÙÑbô¯Ôò4%1÷B\r>WmðÇÊùºvÐd!OBÁÒp¸i¦lcèC®ëgÚ¿sÎxÍî¡£hàmlf9ÎávÄÂá&w\\º×QÌ=\\ì½çÛzmîÔÚöªò¼O÷¿Éü/uãv[¶Çs²åyÍ,=ÖÆq{.³ïy:w½m60½æ&^WæþHú.¨þkõ¯æË)Ö}Yì,+TºFaï¾ÛµîcÒ{Î£í8\rXt.§^]ºS¸@ÿÖ¡óQ÷YfXèÙç¼N»Þ;ÐÓÐ§3ã}G×xbÁÊÕ«ìGA£k¸Y·$p4úÀ4­Ü¡Þûå\r\0}ïör9®&Ú¸èÂÃ´jÑÖ£FÕyL-Üh:GÜù÷>¬Ü¾G¼n(î¼jø¨y¥µÄa£µÎÆ¡ì¿ÑµïË#µùïê½ö,wÓsx1Øò/ÝeüMWÚ²2ËQùwKy8YíQîAèíÞå²WÑä P8inÝ;ä!¨úËeKô®ýGÒò½W+ÛeôÙu]ïð0`°ÌVWàhÕaÃ+-,S,5d0LÊúN\'Îv7uáq6«.x£xøn\'rÒOñ5CÁFæÍ­CÚ|v¢v¾Ë	\0Ãf;0v»iÑÃÂå^c	ÐÕhÅCÌÜçÂúm\\OêâuÇ\"ê»v6¯L4799Ú9Ã¶Èùçø¹Þû^Ó¥ÛwYy¨á#W(ò¯Öp½cæa«/GÒb4?\'äÆ7­Ý«/%£Ç3û\rGÒã{ä¾ÙQì9/òÝ|2Ì²`3áhfÿrE8PÓé·', 'Bkash', 'shipto', 'Uttara', '3', 745, 'fdsfdsfdsfdsfdsf', NULL, 'xRJ61669205485', 'Pending', 'bejavohile@mailinator.com', 'Talon Gay', 'Nauru', '+1 (133) 733-9863', 'Ut occaecat ad porro', 'Enim et quam sed eum', '28429', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-11-23 12:11:25', '2022-11-23 12:11:25', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0),
(110, NULL, 'BZh91AY&SYÓY÷\0òß@\0Pø/ü¿ïÿú`?2¤B¢(  æ\0	\0\0\0\0\0$HMIú¡§©äCÄÒ\0Ó&æ\0	\0\0\0\0\0s\0À\0L\0\0\0\09`\0&\0\0\0\0E `©4zi14Â=O&TÂ$\'Ìÿo]²$ÿËü·°rrhÃò¯ÙWè¬,Ü.9dÍXYÿTndÂ¿f-£ùb\rPíÂ8Im)õñgCâO(Æz&Vª_Û]²Þ	9àäÉÒu|Î¢ëF9ù°ÙÓÅr@äêÈÃÔÜ|^%°Rdîâ«Ôé~ãöÑ\'yÈy(,Ö¦%·ç¿9¥j²?ºÃUÌÕÁÆ¹ìú84\Z©Eµ5Æ.\"äIÌà3(zG.LÂ¦ i`²b*ºRHdTTìHw1L$ÄÜDüMA##lLÎ(û àA$(¢2@å,Á¥IË5} ÄZl¾:0\rªÔ2¦DÆ#\ru¥)Ôâå2xØ\nÅç(Ð0L)À9Dµ°®äÊ¥¦Ù8É\'Ò>ª¦PÂÑl2ÆýlÂÙq,Ì¦ËXc%«\n«É,=ÅbÌð-Ii¯GKÓ¤¶I6É$åa#õVL9c\rìiLÜõÈói¸ÉÆ#ÚÍàÒaøssw7·É©Vå³kå±X\"ßo­k6m±,eÍjp·<f­xdsí=\'¬ûÏà¢;ÈÐd÷¤{~ç¤£î¶ÉïÇ¹À¯Än\'nnc1¥)lìÇ±Í!Ñ~Ìâé¥]Ï-Ns(õÓ#Üt+8ªà¼(cË£©ÚMîM]î\nw1\'Ú®ç¬ùhÚ95n7¹7v\Z1¾#zì~-½NÇ&¼98äe¹+S~åzlOädÝËÎíÏãVHÆ,aXÌÒ+µü>OK{E½2eáÉ»>Øg%W¬Íº76¯t]÷®×FL¶OçéóY[;ûýÇæx&û¶ºJòÉoaæãÅ?2_©Ortò÷Éî[$[ ölxÉUºmR½wmè(9ÆNÒIÂGTËma¬\"Jódôn¢vÎ«];ÛtÔæyàÂ­;ú¼»ª1RV5YÃÉÁ=crlnÛÉèbËÜyY%úq!;r!.jÕM\ZdpL²~O7Üïf}®­9xG²¶hm{_ÒnÕem}ë7~>{x¼Mdðfèê}WøhÄö¬¶´b~IO\'ª4v.±±¹Ör¤é2<X7¡L§é6an9Úd«&Ó¹Ùrmxð÷õ××|nÞÃáÌ¥(«K©ñaTU©V0©lD¶JTÎ­Z¾Ç£~¬¢öIÕ4á¯ù69²I÷³13gØÞ¥g+61>Ç[Á`Ó+µäç»-­ÛeÔv100Ãm?KÙFUãu¥âYA2í>2yÓw5~>Mü9=ðI¤Òclë&;G{?7½ÿMÉo}8¶¿FLMOÁYýÏ-¨þÞûm¡}ø.ü]ÉáB@MgÜ', 'Cash On Delivery', 'pickup', 'Kamarpara', '1', 505, NULL, NULL, 'vJUm1669546974', 'Pending', 'pigeqy@mailinator.com', 'Sonya Barrera', 'Anguilla', '+1 (502) 271-9315', 'Aperiam deleniti ab', 'Anim rem beatae dign', '68971', NULL, 'Korea, Republic of', NULL, NULL, NULL, NULL, NULL, 'Minim ut qui eiusmod', NULL, NULL, 'pending', '2022-11-27 11:02:54', '2022-11-27 11:02:54', NULL, NULL, '$', 1, 10, 15, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(96, 93, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:50:25', '2021-01-28 00:50:25'),
(97, 94, 'Pending', 'You have successfully placed your order.', '2021-01-28 00:52:32', '2021-01-28 00:52:32'),
(98, 95, 'Pending', 'You have successfully placed your order.', '2021-02-15 09:35:38', '2021-02-15 09:35:38'),
(99, 95, 'On Delivery', 'TEST', '2021-03-07 05:29:33', '2021-03-07 05:29:33'),
(100, 96, 'Pending', 'You have successfully placed your order.', '2021-04-28 04:17:26', '2021-04-28 04:17:26'),
(101, 97, 'Pending', 'You have successfully placed your order.', '2021-04-28 05:29:04', '2021-04-28 05:29:04'),
(102, 98, 'Pending', 'You have successfully placed your order.', '2021-05-05 16:35:22', '2021-05-05 16:35:22'),
(103, 99, 'Pending', 'You have successfully placed your order.', '2021-05-25 09:09:06', '2021-05-25 09:09:06'),
(104, 100, 'Pending', 'You have successfully placed your order.', '2021-05-26 06:23:28', '2021-05-26 06:23:28'),
(105, 101, 'Pending', 'You have successfully placed your order.', '2021-05-26 06:36:17', '2021-05-26 06:36:17'),
(106, 102, 'Pending', 'You have successfully placed your order.', '2021-05-26 10:20:05', '2021-05-26 10:20:05'),
(107, 103, 'Pending', 'You have successfully placed your order.', '2022-07-25 15:55:10', '2022-07-25 15:55:10'),
(108, 105, 'Pending', 'You have successfully placed your order.', '2022-08-13 06:36:12', '2022-08-13 06:36:12'),
(109, 106, 'Pending', 'You have successfully placed your order.', '2022-08-13 06:45:04', '2022-08-13 06:45:04'),
(110, 107, 'Pending', 'You have successfully placed your order.', '2022-08-15 15:19:53', '2022-08-15 15:19:53'),
(111, 108, 'Pending', 'You have successfully placed your order.', '2022-08-15 15:54:31', '2022-08-15 15:54:31'),
(112, 109, 'Pending', 'You have successfully placed your order.', '2022-11-23 12:11:25', '2022-11-23 12:11:25'),
(113, 110, 'Pending', 'You have successfully placed your order.', '2022-11-27 11:02:54', '2022-11-27 11:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 0, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `side_title` text COLLATE utf8mb4_unicode_ci,
  `side_text` text COLLATE utf8mb4_unicode_ci,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `slider` tinyint(1) NOT NULL DEFAULT '1',
  `service` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `small_banner` tinyint(1) NOT NULL DEFAULT '1',
  `best` tinyint(1) NOT NULL DEFAULT '1',
  `top_rated` tinyint(1) NOT NULL DEFAULT '1',
  `large_banner` tinyint(1) NOT NULL DEFAULT '1',
  `big` tinyint(1) NOT NULL DEFAULT '1',
  `hot_sale` tinyint(1) NOT NULL DEFAULT '1',
  `partners` tinyint(1) NOT NULL DEFAULT '0',
  `review_blog` tinyint(1) NOT NULL DEFAULT '1',
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `bottom_small` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '0',
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `featured_category` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '3584', '00 000 000 000', '00 000 000 000', 'test@gmail.com', 'http://ecom.hrventure.xyz/', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1625302041Btl10326-Small-Size-Fashion-Designer-Ladies-Shoulder-Bag-Handbag-From-China-Fashion-Female-Shoulder-Bags.jpg', 'http://ecom.hrventure.xyz/item/halal-chicken-yk85602shr', '1565150264banner3.jpg', 'http://google.com', 1, 1, '16253020417ce1a3828d4b63db9c00fadeca0fafff.jpg', 'http://ecom.hrventure.xyz/item/halal-beef-xat5827umz', '1565150264banner4.jpg', 'http://google.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(1, '16123368411604063134food1.png', 'https://www.google.com/'),
(2, '16123368251604063134food1.png', 'https://www.google.com/'),
(3, '16123368571604063134food1.png', 'https://www.google.com/'),
(5, '1604063134food1.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via your Mobile Money.', 'Mobile Money', '<font size=\"3\"><b style=\"\">Mobile Money</b><b>&nbsp;No: 6528068515</b><br><br></font>', 1),
(47, 'bank', 'Bank', 'test', 1),
(48, 'Bkash', 'Bkash', '<br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Shaymoli'),
(6, 'Uttara'),
(7, 'Farmgate');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(11) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(199, 'E2K3584TK2', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Womens Top\",\"10\":\"Womens Top\"}', '1womens-top10womens-top-e2k3584tk2', '1625303413gyfUdStp.png', '16253034139LSrEOLO.jpg', NULL, NULL, NULL, NULL, NULL, 375, 0, '{\"1\":\"100% Halal lamb keema. net weight 800gram. korean products\",\"10\":\"100% Halal lamb keema. net weight 800gram. korean products\"}', 49, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 66, 'Lamp Keema', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, 0, 1, '2020-12-06 14:05:52', '2022-11-23 12:11:25', 0, NULL, NULL, NULL, 0, 0),
(200, 'eKN4356zuu', 'normal', NULL, 45, 38, NULL, NULL, NULL, '{\"1\":\"Genes shirt\",\"10\":\"Genes shirt\"}', '1genes-shirt10genes-shirt-ekn4356zuu', '1625303251GYsxkp2c.png', '16253032514mdeyheh.jpg', NULL, NULL, NULL, NULL, NULL, 125, 0, '{\"1\":\"100% halal beef keema. Net weight 1kg 200gram. Produced by Muslim. Korean products\",\"10\":\"100% halal beef keema. Net weight 1kg 200gram. Produced by Muslim. Korean products\"}', 50, '{\"1\":\"Dear customer, This is food category products so not refundable. Thank you\",\"10\":\"Dear customer, This is food category products so not refundable. Thank you\"}', 1, 49, 'Halal Beef Keema', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 1, '2020-12-06 14:17:39', '2022-08-10 20:23:48', 0, NULL, NULL, NULL, 0, 0),
(201, 'YK85602sHR', 'normal', NULL, 45, 38, 38, NULL, NULL, '{\"1\":\"Ispahani Agomoni Chinigura Rice 1 kg\",\"10\":\"Ispahani Agomoni Chinigura Rice\"}', '1ispahani-agomoni-chinigura-rice-1-kg10ispahani-agomoni-chinigura-rice-yk85602shr', '1612257810PGU5NM3V.png', '1612257810IZEfXE84.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '{\"1\":\"100% Halal chicken. Net weight 1.3kg\",\"10\":\"100% Halal chicken. Net weight 1.3kg\"}', NULL, '{\"1\":\"Food item no refundable\",\"10\":\"Food item no refundable\"}', 1, 49, 'Halal Chicken', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-12-06 14:36:20', '2022-08-14 09:26:51', 0, NULL, NULL, NULL, 0, 0),
(202, 'xat5827uMZ', 'normal', NULL, 45, 22, NULL, NULL, NULL, '{\"1\":\"ACI Pure Najirshail Rice 10 kg\",\"10\":\"ACI Pure Najirshail Rice\"}', '1aci-pure-najirshail-rice-10-kg10aci-pure-najirshail-rice-xat5827umz', '1612257659PSNNHt7r.png', '16122576599qOg4LZO.jpg', NULL, NULL, NULL, NULL, NULL, 795, 0, '{\"1\":\"100% halal beef. net weight 1.3kg\",\"10\":\"100% halal beef. net weight 1.3kg\"}', NULL, '{\"1\":\"Sorry, food item no refundable\",\"10\":\"Sorry, food item no refundable\"}', 1, 42, 'Halal Beef', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-12-06 14:39:25', '2022-08-07 04:12:22', 0, NULL, NULL, NULL, 0, 0),
(203, 'xty6032j3o', 'normal', NULL, 45, 18, NULL, NULL, NULL, '{\"1\":\"Womens Stripe long sleeve\",\"10\":\"Womens Stripe long sleeve\"}', '1womens-stripe-long-sleeve10womens-stripe-long-sleeve-xty6032j3o', '1625303633LflB2YMH.png', '162530363304UHgEr1.jpg', NULL, NULL, NULL, NULL, NULL, 300, 0, '{\"1\":\"Fish from Bangladesh\",\"10\":\"Fish from Bangladesh\"}', NULL, '{\"1\":\"Fish items no refundable\",\"10\":\"Fish items no refundable\"}', 1, 43, 'Fish roi', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 1, 0, 0, '2020-12-06 14:42:45', '2022-08-11 13:35:13', 0, NULL, NULL, NULL, 0, 0),
(204, 'yZz4590H71', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Womens Tops Yellow\",\"10\":\"Womens Tops\"}', '1womens-tops-yellow10womens-tops-yzz4590h71', '1625302739JG3LjeQz.png', '1625302739PuAbpSkn.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '{\"1\":\"100% Halal Duck. Net weight 1.7kg\",\"10\":\"100% Halal Duck. Net weight 1.7kg\"}', NULL, '{\"1\":\"Dear customer meat items no refundable. Thank you\",\"10\":\"Dear customer meat items no refundable. Thank you\"}', 1, 46, 'Halal Duck', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-12-07 01:58:13', '2022-08-01 21:09:58', 0, NULL, NULL, NULL, 0, 0),
(205, 'L9i7514Zcd', 'normal', NULL, 45, 38, 38, NULL, NULL, '{\"1\":\"Fresh Chinigura Rice - 1Kg\",\"10\":\"Fresh Chinigura Rice\"}', '1fresh-chinigura-rice-1kg10fresh-chinigura-rice-l9i7514zcd', '1612257428evw8Blx9.png', '1612257429DAFqnXVZ.jpg', NULL, NULL, NULL, NULL, NULL, 144, 0, '{\"1\":\"Mango fruit juice. Net weight 1.2L\",\"10\":\"Mango fruit juice. Net weight 1.2L\"}', 100, '{\"1\":\"Dear Customer Fruits and Juice items are not refundable. Thank you\",\"10\":\"Dear Customer Fruits and Juice items are not refundable. Thank you\"}', 1, 40, 'Mango Juice', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-12-07 02:14:33', '2022-08-10 22:01:27', 0, NULL, NULL, NULL, 1, 0),
(206, 'Mx58058tZs', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Long Sleeve Black Dress\",\"10\":\"Long Sleeve Black Dress\"}', '1long-sleeve-black-dress10long-sleeve-black-dress-mx58058tzs', '1625301248ien0fxF1.png', '1625301248wXolY7Mo.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '{\"1\":\"Plain Paratha, net weight 400gm 5pcs. Product of Bangladesh\",\"10\":\"Plain Paratha, net weight 400gm 5pcs. Product of Bangladesh\"}', NULL, '{\"1\":\"dear customer food items are not refundable. Thank you\",\"10\":\"dear customer food items are not refundable. Thank you\"}', 1, 38, 'Plain Paratha', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 0, '2020-12-07 02:27:20', '2022-11-27 10:54:46', 0, NULL, NULL, NULL, 0, 0),
(207, 'OEu8447jgd', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Womens Shoe\",\"10\":\"Womens Shoe\"}', '1womens-shoe10womens-shoe-oeu8447jgd', '1625299639dcdPbAGg.png', '1625299639BlcFVvi6.jpg', NULL, NULL, NULL, NULL, NULL, 95, 0, '{\"1\":\"Flour Bread, 12pcs. Products of South Korea\",\"10\":\"Flour Bread, 12pcs. Products of South Korea\"}', NULL, '{\"1\":\"Dear customer food items are not refundable. Thank you\",\"10\":\"Dear customer food items are not refundable. Thank you\"}', 1, 46, 'Flour Bread', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, '2020-12-07 02:33:19', '2022-08-03 07:20:11', 0, NULL, NULL, NULL, 0, 0),
(208, 'mBC95063fM', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Womens Bag\",\"10\":\"Womens Bag\"}', '1womens-bag10womens-bag-mbc95063fm', '1625299548vVzXYZSi.png', '1625299548KIKeWdt7.jpg', NULL, NULL, NULL, NULL, NULL, 60, 0, '{\"1\":\"Pran Special Dry cake, net weight 0.00gm, 00pcs. products of Bangladesh\",\"10\":\"Pran Special Dry cake, net weight 0.00gm, 00pcs. products of Bangladesh\"}', NULL, '{\"1\":\"Dear customer food items are not refundable. Thank you.\",\"10\":\"Dear customer food items are not refundable. Thank you.\"}', 1, 52, 'Dry Cake', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 0, '2020-12-07 02:48:11', '2022-08-05 14:15:43', 0, NULL, NULL, NULL, 0, 0),
(209, 'GPH0264Hoa', 'normal', NULL, 45, 38, NULL, NULL, NULL, '{\"1\":\"Mens Watch\",\"10\":\"Mens Watch\"}', '1mens-watch10mens-watch-gph0264hoa', '1625299433oUeLfvKh.png', '1625299433gzPQ81h3.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '{\"1\":\"Pran Mixed Pickle, net weight 1kg. product of Bangladesh\",\"10\":\"Pran Mixed Pickle, net weight 1kg. product of Bangladesh\"}', NULL, '{\"1\":\"Dear customer food items are not refundable. Thank you\",\"10\":\"Dear customer food items are not refundable. Thank you\"}', 1, 54, 'Mixed Pickle', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 1, 1, 0, 0, '2020-12-07 03:01:17', '2022-08-10 13:56:04', 0, NULL, NULL, NULL, 0, 0),
(210, 'SIp0539sQu', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Boy Shoe\",\"10\":\"Boy Shoe\"}', '1boy-shoe10boy-shoe-sip0539squ', '1625299308OzZFDs7W.png', '1625299308OMFuJs5m.jpg', NULL, NULL, NULL, NULL, NULL, 20, 0, '{\"1\":\"Laziza International garlic Pickle, net weight 330gm.\",\"10\":\"Laziza International garlic Pickle, net weight 330gm.\"}', NULL, '{\"1\":\"Dear customer food items are not refundable. Thank you.\",\"10\":\"Dear customer food items are not refundable. Thank you.\"}', 1, 54, 'Garlic Pickle', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 0, 0, 0, '2020-12-07 03:05:08', '2022-08-08 11:03:48', 0, NULL, NULL, NULL, 0, 0),
(211, 'xhJ07670Tx', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Genes shirt\",\"10\":\"Genes shirt\"}', '1genes-shirt10genes-shirt-xhj07670tx', '1625299158DJvOTmFM.png', '1625299159p6dRAT8n.jpg', NULL, NULL, NULL, NULL, NULL, 70, 0, '{\"1\":\"National Garlic Pickle Oil, net weight 500gm. Expire date 2022\",\"10\":\"National Garlic Pickle Oil, net weight 500gm. Expire date 2022\"}', NULL, '{\"1\":\"dear customer food items are not refundable. Thank you\",\"10\":\"dear customer food items are not refundable. Thank you\"}', 1, 50, 'Garlic Pickle Oil', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 1, '2020-12-07 03:08:36', '2022-08-08 19:49:46', 0, NULL, NULL, NULL, 0, 0),
(212, 'cEq1323sev', 'normal', NULL, 45, 42, NULL, NULL, NULL, '{\"1\":\"Women Long Dress\",\"10\":\"Women Long Dress\"}', '1women-long-dress10women-long-dress-ceq1323sev', '1625299065Jf9IiWea.png', '162529906685jy6Z38.jpg', NULL, NULL, NULL, NULL, NULL, 4.4, 0, '{\"1\":\"DAL PURI, 10pcs, product of Bangladesh<br>\",\"10\":\"DAL PURI, 10pcs, product of Bangladesh<br>\"}', NULL, '{\"1\":\"Dear customer food items are not refundable. Thank you\",\"10\":\"Dear customer food items are not refundable. Thank you\"}', 1, 56, 'Puri Samosa,DAL PURI', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, '2020-12-07 03:19:28', '2022-08-11 04:00:01', 0, NULL, NULL, NULL, 0, 0),
(213, 'ycI1586RtC', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Women  Short dress\",\"10\":\"Women  Short dress\"}', '1women-short-dress10women-short-dress-yci1586rtc', '1625300041fZQWMCtt.png', '1625300041OkmsxUaQ.jpg', NULL, NULL, NULL, NULL, NULL, 4.4, 0, '{\"1\":\"Vegetable Samosa, 10pcs, products of Bangladesh.<br>\",\"10\":\"Vegetable Samosa, 10pcs, products of Bangladesh.<br>\"}', NULL, '{\"1\":\"Dear customer food items are not refundable. Thank you\",\"10\":\"Dear customer food items are not refundable. Thank you\"}', 1, 60, 'Vegetable Samosa', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 0, '2020-12-07 03:21:49', '2022-08-05 16:37:47', 1, '100', NULL, NULL, 0, 0),
(214, 'k3l2774Gtb', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Sunglasses\",\"10\":\"Sunglasses\"}', '1sunglasses10sunglasses-k3l2774gtb', '1625299739JAuiF5Hu.png', '1625299739YZwxn3hg.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '{\"1\":\"Olive Oil premium aromatic, net weight 0.0L<br>\",\"10\":\"Olive Oil premium aromatic, net weight 0.0L<br>\"}', NULL, '{\"1\":\"Dear customer oil items are not refundable. Thank you.\",\"10\":\"Dear customer oil items are not refundable. Thank you.\"}', 1, 54, 'Olive Oil', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-12-07 03:44:05', '2022-08-15 15:53:14', 0, NULL, NULL, NULL, 0, 0),
(215, 'Qth3089Khg', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Mens Black Tshirt\",\"10\":\"\\u09ae\\u09c7\\u09a8\\u09b8 \\u09ac\\u09cd\\u09b2\\u09cd\\u09af\\u09be\\u0995 \\u099f\\u09bf\\u09b6\\u09be\\u09b0\\u09cd\\u099f\"}', '1mens-black-tshirt10u09aeu09c7u09a8u09b8-u09acu09cdu09b2u09cdu09afu09beu0995-u099fu09bfu09b6u09beu09b0u09cdu099f-qth3089khg', '1625298648qaHQo1hm.png', '16252986481a2HcKwz.jpg', NULL, NULL, NULL, NULL, NULL, 4.4, 0, '{\"1\":\"Mustard Oil, for external use, net weight 0.00 L<br>\",\"10\":\"Mustard Oil, for external use, net weight 0.00 L<br>\"}', NULL, '{\"1\":\"Dear customer oil items are not refundable. Thank you\",\"10\":\"Dear customer oil items are not refundable. Thank you\"}', 1, 59, 'Mustard Oil', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 0, '2020-12-07 03:47:08', '2022-08-11 13:31:24', 0, NULL, NULL, NULL, 0, 0),
(216, 'ewa3237rFG', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Womens Tops\",\"10\":\"Womens Tops\"}', '1womens-tops10womens-tops-ewa3237rfg', '1625298283G2ra640F.png', '1625298283t03TevEE.jpg', NULL, NULL, NULL, NULL, NULL, 525, 0, '{\"1\":\"Pure Cow\'s Ghee, net weight 800gm<br>\",\"10\":\"Pure Cow\'s Ghee, net weight 800gm<br>\"}', NULL, '{\"1\":\"Dear customer Ghee items are not refundable. Thank you\",\"10\":\"Dear customer Ghee items are not refundable. Thank you\"}', 1, 60, 'Pure Cow\'s Ghee', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-12-07 03:49:32', '2022-08-14 09:05:18', 0, NULL, NULL, NULL, 0, 0),
(217, 'oW73519v9T', 'normal', NULL, 45, 5, NULL, NULL, NULL, '{\"1\":\"Mens Red Hoodie\",\"10\":\"Mens Red Hoodie\"}', '1mens-red-hoodie10mens-red-hoodie-ow73519v9t', '162529820385eahReC.png', '1625298203AiARP7bt.jpg', NULL, NULL, NULL, NULL, NULL, 114, 0, '{\"1\":\"Pure Butter Ghee, net weight 0.00gm.<br>\",\"10\":\"Pure Butter Ghee, net weight 0.00gm.<br>\"}', NULL, '{\"1\":\"Dear customer ghee items are not refundable. Thank you.\",\"10\":\"Dear customer ghee items are not refundable. Thank you.\"}', 1, 60, 'Pure Butter Ghee', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, 1, 0, 0, '2020-12-07 03:53:57', '2022-11-27 10:54:35', 0, NULL, NULL, NULL, 0, 0),
(218, 'G043139vAg', 'normal', NULL, 45, 18, NULL, NULL, NULL, '{\"1\":\"Boys Printed Cotton Blend T Shirt\",\"10\":\"Boys Printed Cotton Blend T Shirt\"}', '1boys-printed-cotton-blend-t-shirt10boys-printed-cotton-blend-t-shirt-g043139vag', '1625298108JvKsFVqp.png', '1625298108WiWFZMNT.jpg', NULL, NULL, NULL, NULL, NULL, 125, 0, '{\"1\":\"Radhuni Chilli Powder, net weight 200g<br>\",\"10\":\"Radhuni Chilli Powder, net weight 200g<br>\"}', NULL, '{\"1\":\"Dear customer Spices items are not refundable. Thank you\",\"10\":\"Dear customer Spices items are not refundable. Thank you\"}', 1, 64, 'Radhuni Chilli Powder', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2020-12-07 20:27:40', '2022-08-15 15:57:19', 0, NULL, NULL, NULL, 0, 0),
(234, 'EOK5733bFZ', 'normal', NULL, 0, 22, NULL, NULL, NULL, '{\"1\":\"ACI Nutrilife Rice Bran Oil 5 Liter Tk\",\"10\":\"\\u098f\\u09b8\\u09bf\\u0986\\u0987 \\u09a8\\u09bf\\u0989\\u099f\\u09cd\\u09b0\\u09be\\u09b2\\u09be\\u0987\\u09ab \\u09b0\\u09be\\u0987\\u09b8 \\u09ac\\u09cd\\u09b0\\u09be\\u09a8 \\u0985\\u09af\\u09bc\\u09c7\\u09b2\"}', '1aci-nutrilife-rice-bran-oil-5-liter-tk10u098fu09b8u09bfu0986u0987-u09a8u09bfu0989u099fu09cdu09b0u09beu09b2u09beu0987u09ab-u09b0u09beu0987u09b8-u09acu09cdu09b0u09beu09a8-u0985u09afu09bcu09c7u09b2-eok5733bfz', '16122563438YEGQcZu.png', '16122563431SCcdrEl.jpg', NULL, NULL, NULL, NULL, NULL, 725, 800, '{\"1\":\"t\",\"10\":\"t\"}', 12, '{\"1\":\"t\",\"10\":\"t\"}', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'FKCESw8YJu', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-01-30 22:22:47', '2022-08-03 10:47:05', 0, NULL, NULL, NULL, 0, 0),
(235, 'iDX36531FU', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Womens Three Piece\",\"10\":\"Womens Three Piece\"}', '1womens-three-piece10womens-three-piece-idx36531fu', '1625301436cmWzVhII.png', '1625301436FUimwT0I.jpg', NULL, NULL, NULL, NULL, NULL, 50, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 32, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, 1, 0, 0, '2021-02-02 17:02:57', '2022-08-09 13:34:59', 1, '02/01/2022', NULL, NULL, 0, 0),
(236, 'TiU5794yzT', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"Formula Junior Kiddo Optimum Toothbrush\",\"10\":\"\\u09ab\\u09b0\\u09cd\\u09ae\\u09c1\\u09b2\\u09be \\u099c\\u09c1\\u09a8\\u09bf\\u09af\\u09bc\\u09b0 \\u0995\\u09bf\\u09a1\\u09c1 \\u099f\\u09c1\\u09a5\\u09ac\\u09cd\\u09b0\\u09be\\u09b6\"}', '1formula-junior-kiddo-optimum-toothbrush10u09abu09b0u09cdu09aeu09c1u09b2u09be-u099cu09c1u09a8u09bfu09afu09bcu09b0-u0995u09bfu09a1u09c1-u099fu09c1u09a5u09acu09cdu09b0u09beu09b6-tiu5794yzt', '1612245988F5uYBiIP.png', '1612245988uNB0SvDN.jpg', NULL, NULL, NULL, NULL, NULL, 150, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 33, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:06:28', '2022-08-08 10:20:18', 0, NULL, NULL, NULL, 0, 0),
(237, 'd8l60220xT', 'normal', NULL, 0, 39, NULL, NULL, NULL, '{\"1\":\"Johnson\'s Baby Cream Jar 50 Gm (Imported)\",\"10\":\"\\u099c\\u09a8\\u09b8\\u09a8\\u09b8 \\u09ac\\u09c7\\u09ac\\u09bf \\u0995\\u09cd\\u09b0\\u09bf\\u09ae \\u099c\\u09be\\u09b0\"}', '1johnsons-baby-cream-jar-50-gm-imported10u099cu09a8u09b8u09a8u09b8-u09acu09c7u09acu09bf-u0995u09cdu09b0u09bfu09ae-u099cu09beu09b0-d8l60220xt', '1612246128B3CrW1py.png', '1612246128JfUXVjla.jpg', NULL, NULL, NULL, NULL, NULL, 450, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:08:48', '2022-08-01 21:06:00', 0, NULL, NULL, NULL, 0, 0),
(238, 'Tlg6285Rdv', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"johnsons-milk-lotion\",\"10\":\"\\u099c\\u09a8\\u09b8\\u09a8\\u09b8 \\u09ae\\u09bf\\u09b2\\u09cd\\u0995 \\u09b2\\u09cb\\u09b6\\u09a8\"}', '1johnsons-milk-lotion10u099cu09a8u09b8u09a8u09b8-u09aeu09bfu09b2u09cdu0995-u09b2u09cbu09b6u09a8-tlg6285rdv', '1612246531PUZzvsiG.png', '1612246531yF0lrMHP.jpg', NULL, NULL, NULL, NULL, NULL, 250, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 33, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:15:31', '2022-08-11 12:19:44', 0, NULL, NULL, NULL, 0, 0),
(239, '7yu6575kio', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"Meril baby lotion-100-ml\",\"10\":\"\\u09ae\\u09c7\\u09b0\\u09bf\\u09b2 \\u09ac\\u09c7\\u09ac\\u09bf \\u09b2\\u09cb\\u09b6\\u09a8\"}', '1meril-baby-lotion-100-ml10u09aeu09c7u09b0u09bfu09b2-u09acu09c7u09acu09bf-u09b2u09cbu09b6u09a8-7yu6575kio', '1612246687Uz2V6w1S.png', '161224668728DaNoIv.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 31, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:18:07', '2022-08-11 08:10:50', 0, NULL, NULL, NULL, 0, 0),
(240, 'kpH6697ek6', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"Meril Baby Powder-100g\",\"10\":\"\\u09ae\\u09c7\\u09b0\\u09bf\\u09b2 \\u09ac\\u09c7\\u09ac\\u09bf \\u09aa\\u09be\\u0989\\u09a1\\u09be\\u09b0\"}', '1meril-baby-powder-100g10u09aeu09c7u09b0u09bfu09b2-u09acu09c7u09acu09bf-u09aau09beu0989u09a1u09beu09b0-kph6697ek6', '16122558108pGJYbFT.png', '16122558102xzNw7bp.jpg', NULL, NULL, NULL, NULL, NULL, 85, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 30, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:20:42', '2022-08-01 21:07:12', 0, NULL, NULL, NULL, 0, 0),
(241, 'Pxs6879PGi', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"Kodomo Baby Powder\",\"10\":\"\\u0995\\u09cb\\u09a1\\u09cb\\u09ae\\u09cb-\\u09ac\\u09c7\\u09ac\\u09bf-\\u09aa\\u09be\\u0989\\u09a1\\u09be\\u09b0\"}', '1kodomo-baby-powder10u0995u09cbu09a1u09cbu09aeu09cb-u09acu09c7u09acu09bf-u09aau09beu0989u09a1u09beu09b0-pxs6879pgi', '16122469542RgfpowO.png', '1612246954EAcDZExX.jpg', NULL, NULL, NULL, NULL, NULL, 120, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:22:34', '2022-08-01 21:06:31', 0, NULL, NULL, NULL, 0, 0),
(242, '6Bh6964cH6', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"mothercare-all-we-know-baby-powder-150gm\",\"10\":\"\\u09ae\\u09be\\u09a6\\u09be\\u09b0 \\u0995\\u09c7\\u09af\\u09bc\\u09be\\u09b0 - \\u09ac\\u09c7\\u09ac\\u09bf \\u09aa\\u09be\\u0989\\u09a1\\u09be\\u09b0\"}', '1mothercare-all-we-know-baby-powder-150gm10u09aeu09beu09a6u09beu09b0-u0995u09c7u09afu09bcu09beu09b0-u09acu09c7u09acu09bf-u09aau09beu0989u09a1u09beu09b0-6bh6964ch6', '1612247106xhslLVkS.png', '1612247106gHjMNfK3.jpg', NULL, NULL, NULL, NULL, NULL, 750, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:25:06', '2022-08-09 12:37:35', 0, NULL, NULL, NULL, 0, 0),
(243, 'LOW7129P2w', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"mothercare-all-we-know-baby-shampoo-300ml\",\"10\":\"\\u09ae\\u09be\\u09a6\\u09be\\u09b0 \\u0995\\u09c7\\u09af\\u09bc\\u09be\\u09b0 - \\u09ac\\u09c7\\u09ac\\u09bf \\u09b6\\u09cd\\u09af\\u09be\\u09ae\\u09cd\\u09aa\\u09c1\"}', '1mothercare-all-we-know-baby-shampoo-300ml10u09aeu09beu09a6u09beu09b0-u0995u09c7u09afu09bcu09beu09b0-u09acu09c7u09acu09bf-u09b6u09cdu09afu09beu09aeu09cdu09aau09c1-low7129p2w', '1612247213aJOLkOnB.png', '1612247214D417ZXQV.jpg', NULL, NULL, NULL, NULL, NULL, 750, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:26:53', '2022-08-08 00:47:00', 0, NULL, NULL, NULL, 0, 0),
(244, 'vqH7228ePg', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Long Hoodie\",\"10\":\"Long Hoodie\"}', '1long-hoodie10long-hoodie-vqh7228epg', '1625303553f9BnM0av.png', '1625303553ifBTfayU.jpg', NULL, NULL, NULL, NULL, NULL, 320, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 26, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, '2021-02-02 17:29:44', '2022-08-01 21:06:45', 1, '50', NULL, NULL, 0, 0),
(245, 'MsJ7396558', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"parachute-just-for-baby-soap-125gm\",\"10\":\"\\u09aa\\u09cd\\u09af\\u09be\\u09b0\\u09be\\u09b6\\u09c1\\u099f-\\u09ac\\u09c7\\u09ac\\u09bf \\u09b8\\u09be\\u09ac\\u09be\\u09a8\"}', '1parachute-just-for-baby-soap-125gm10u09aau09cdu09afu09beu09b0u09beu09b6u09c1u099f-u09acu09c7u09acu09bf-u09b8u09beu09acu09beu09a8-msj7396558', '1612247517J2KNNXUd.png', '1612247517TNcQSKFE.jpg', NULL, NULL, NULL, NULL, NULL, 115, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 33, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:31:57', '2022-08-05 07:43:54', 0, NULL, NULL, NULL, 0, 0),
(246, 's9M7571e1H', 'normal', NULL, 0, 39, 35, NULL, NULL, '{\"1\":\"Parachute just-for-baby-wash-200ml\",\"10\":\"\\u09aa\\u09cd\\u09af\\u09be\\u09b0\\u09be\\u09b6\\u09c1\\u099f-\\u09ac\\u09c7\\u09ac\\u09bf \\u0993\\u09df\\u09be\\u09b6\"}', '1parachute-just-for-baby-wash-200ml10u09aau09cdu09afu09beu09b0u09beu09b6u09c1u099f-u09acu09c7u09acu09bf-u0993u09dfu09beu09b6-s9m7571e1h', '1612247681xWrHl7HD.png', '1612247681vkZ9PUSg.jpg', NULL, NULL, NULL, NULL, NULL, 230, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 28, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:34:41', '2022-08-01 21:08:09', 1, '12/31/2021', NULL, NULL, 0, 0),
(247, 'W7m7706fBw', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"Babies-knee-pads-for-safety-multicolor\",\"10\":\"\\u09ac\\u09c7\\u09ac\\u09bf-\\u09b9\\u09be\\u0981\\u099f\\u09c1-\\u09aa\\u09cd\\u09af\\u09be\\u09a1\"}', '1babies-knee-pads-for-safety-multicolor10u09acu09c7u09acu09bf-u09b9u09beu0981u099fu09c1-u09aau09cdu09afu09beu09a1-w7m7706fbw', '1612247831isrBN13f.png', '1612247831MfrJ4KDF.jpg', NULL, NULL, NULL, NULL, NULL, 140, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:37:11', '2022-08-01 21:04:22', 0, NULL, NULL, NULL, 0, 0),
(248, 'XIE7839HzI', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"Mumlove-colorful-body-pacifier\",\"10\":\"\\u09ae\\u09ae \\u09b2\\u09be\\u09ad \\u09ac\\u09c7\\u09ac\\u09bf \\u09aa\\u09c7\\u09b8\\u09bf\\u09ab\\u09be\\u09df\\u09be\\u09b0\"}', '1mumlove-colorful-body-pacifier10u09aeu09ae-u09b2u09beu09ad-u09acu09c7u09acu09bf-u09aau09c7u09b8u09bfu09abu09beu09dfu09beu09b0-xie7839hzi', '1612247981UvuYemMo.png', '1612247981QZwzJyTn.jpg', NULL, NULL, NULL, NULL, NULL, 135, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:39:41', '2022-08-11 01:25:29', 0, NULL, NULL, NULL, 0, 0),
(249, 'blN7992Ij2', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"mumlove-emulational-caliber-nipple-2-pieces\",\"10\":\"\\u09ae\\u09ae \\u09b2\\u09be\\u09ad \\u0995\\u09c7\\u09b2\\u09bf\\u09ad\\u09be\\u09b0 \\u09a8\\u09bf\\u09aa\\u09b2\"}', '1mumlove-emulational-caliber-nipple-2-pieces10u09aeu09ae-u09b2u09beu09ad-u0995u09c7u09b2u09bfu09adu09beu09b0-u09a8u09bfu09aau09b2-bln7992ij2', '1612248094lxGtbhfJ.png', '1612248094WwEZcmV7.jpg', NULL, NULL, NULL, NULL, NULL, 130, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 30, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:41:34', '2022-08-01 21:07:29', 0, NULL, NULL, NULL, 0, 0),
(250, 'oPj8512eNV', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"pampers-baby-dry-pants-diaper-9-14kg-8-pieces\",\"10\":\"\\u09aa\\u09cd\\u09af\\u09be\\u09ae\\u09cd\\u09aa\\u09be\\u09b0\\u09b8-\\u09ac\\u09c7\\u09ac\\u09bf-\\u09a1\\u09cd\\u09b0\\u09be\\u0987-\\u09aa\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u099f-\\u09a1\\u09be\\u09af\\u09bc\\u09be\\u09aa\\u09be\\u09b0\"}', '1pampers-baby-dry-pants-diaper-9-14kg-8-pieces10u09aau09cdu09afu09beu09aeu09cdu09aau09beu09b0u09b8-u09acu09c7u09acu09bf-u09a1u09cdu09b0u09beu0987-u09aau09cdu09afu09beu09a8u09cdu099f-u09a1u09beu09afu09bcu09beu09aau09beu09b0-opj8512env', '1612248602AK1fJIiT.png', '1612248602IMW5wwwV.jpg', NULL, NULL, NULL, NULL, NULL, 300, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 25, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:50:02', '2022-08-01 21:07:43', 0, NULL, NULL, NULL, 0, 0),
(251, 'YQS86157Z4', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"pampers-baby-dry-pants-diaper-l-9-14kg-44-pieces\",\"10\":\"\\u09aa\\u09cd\\u09af\\u09be\\u09ae\\u09cd\\u09aa\\u09be\\u09b0\\u09b8-\\u09ac\\u09c7\\u09ac\\u09bf-\\u09a1\\u09cd\\u09b0\\u09be\\u0987-\\u09aa\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u099f-\\u09a1\\u09be\\u09af\\u09bc\\u09be\\u09aa\\u09be\\u09b0\"}', '1pampers-baby-dry-pants-diaper-l-9-14kg-44-pieces10u09aau09cdu09afu09beu09aeu09cdu09aau09beu09b0u09b8-u09acu09c7u09acu09bf-u09a1u09cdu09b0u09beu0987-u09aau09cdu09afu09beu09a8u09cdu099f-u09a1u09beu09afu09bcu09beu09aau09beu09b0-yqs86157z4', '1612248683sIAHWrlZ.png', '1612248683LvetIEtG.jpg', NULL, NULL, NULL, NULL, NULL, 1499, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 25, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:51:23', '2022-08-10 18:26:48', 0, NULL, NULL, NULL, 0, 0),
(252, 'HUu8692CHe', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"pampers-wipes-medium-120-pieces_\",\"10\":\"\\u09aa\\u09be\\u09ae\\u09cd\\u09aa\\u09be\\u09b0-\\u0993\\u09af\\u09bc\\u09be\\u0987\\u09aa\"}', '1pampers-wipes-medium-120-pieces-10u09aau09beu09aeu09cdu09aau09beu09b0-u0993u09afu09bcu09beu0987u09aa-huu8692che', '1612248763myzaZLy8.png', '1612248763qLlpbuF2.jpg', NULL, NULL, NULL, NULL, NULL, 190, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 30, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:52:43', '2022-08-01 21:08:00', 0, NULL, NULL, NULL, 0, 0),
(253, '5zv8771Cvl', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"savlon-baby-wipes-jar-100-pieces\",\"10\":\"\\u09b8\\u09cd\\u09af\\u09be\\u09ad\\u09b2\\u09a8-\\u09ac\\u09c7\\u09ac\\u09bf-\\u0993\\u09af\\u09bc\\u09be\\u0987\\u09aa-\\u099c\\u09be\\u09b0\"}', '1savlon-baby-wipes-jar-100-pieces10u09b8u09cdu09afu09beu09adu09b2u09a8-u09acu09c7u09acu09bf-u0993u09afu09bcu09beu0987u09aa-u099cu09beu09b0-5zv8771cvl', '1612248841Jwl4hglx.png', '1612248841WeRf5rNk.jpg', NULL, NULL, NULL, NULL, NULL, 195, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 30, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:54:01', '2022-08-05 07:44:49', 0, NULL, NULL, NULL, 0, 0),
(254, 'xOe8856SGV', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"savlon-twinkle-baby-new-born-diaper-belt-s-0-8-kg-44-pieces\",\"10\":\"\\u09b8\\u09cd\\u09af\\u09be\\u09ad\\u09b2\\u09a8-\\u099f\\u09c1\\u0987\\u0999\\u09cd\\u0995\\u09b2-\\u09ac\\u09c7\\u09ac\\u09bf-\\u09a1\\u09be\\u09af\\u09bc\\u09be\\u09aa\\u09be\\u09b0-\\u09ac\\u09c7\\u09b2\\u09cd\\u099f\"}', '1savlon-twinkle-baby-new-born-diaper-belt-s-0-8-kg-44-pieces10u09b8u09cdu09afu09beu09adu09b2u09a8-u099fu09c1u0987u0999u09cdu0995u09b2-u09acu09c7u09acu09bf-u09a1u09beu09afu09bcu09beu09aau09beu09b0-u09acu09c7u09b2u09cdu099f-xoe8856sgv', '1612248930SRroHAZX.png', '1612248930piSMaRoS.jpg', NULL, NULL, NULL, NULL, NULL, 950, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 24, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:55:30', '2022-08-01 21:08:18', 0, NULL, NULL, NULL, 0, 0),
(255, 'JRg8944Bhq', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"savlon-twinkle-baby-wipes-pouch-80-pieces_\",\"10\":\"\\u09b8\\u09cd\\u09af\\u09be\\u09ad\\u09b2\\u09a8-\\u099f\\u09c1\\u0987\\u0999\\u09cd\\u0995\\u09b2-\\u09ac\\u09c7\\u09ac\\u09bf-\\u0993\\u09af\\u09bc\\u09be\\u0987\\u09aa\\u09b8\"}', '1savlon-twinkle-baby-wipes-pouch-80-pieces-10u09b8u09cdu09afu09beu09adu09b2u09a8-u099fu09c1u0987u0999u09cdu0995u09b2-u09acu09c7u09acu09bf-u0993u09afu09bcu09beu0987u09aau09b8-jrg8944bhq', '1612249017GBUxyRN2.png', '1612249018ouGku4cE.jpg', NULL, NULL, NULL, NULL, NULL, 180, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 32, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:56:57', '2022-08-05 07:46:42', 0, NULL, NULL, NULL, 0, 0),
(256, 'JJD9031khf', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"savlon-wet-wipes-20-pieces\",\"10\":\"\\u09b8\\u09cd\\u09af\\u09be\\u09ad\\u09b2\\u09a8-\\u09ad\\u09c7\\u099c\\u09be-\\u09ae\\u09c1\\u099b\\u09be \\u0989\\u0987\\u09aa\\u09cd\\u09b8\"}', '1savlon-wet-wipes-20-pieces10u09b8u09cdu09afu09beu09adu09b2u09a8-u09adu09c7u099cu09be-u09aeu09c1u099bu09be-u0989u0987u09aau09cdu09b8-jjd9031khf', '1612249148zuYoa5KL.png', '16122491486a7bSlow.jpg', NULL, NULL, NULL, NULL, NULL, 85, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 17:59:08', '2022-08-01 21:08:26', 0, NULL, NULL, NULL, 0, 0),
(257, '87Z9156RJG', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"supermom-baby-diaper-belt-l-9-14-kg-22-pieces\",\"10\":\"\\u09b8\\u09c1\\u09aa\\u09be\\u09b0\\u09ae\\u09ae-\\u09ac\\u09c7\\u09ac\\u09bf-\\u09a1\\u09be\\u09af\\u09bc\\u09be\\u09aa\\u09be\\u09b0-\\u09ac\\u09c7\\u09b2\\u09cd\\u099f\"}', '1supermom-baby-diaper-belt-l-9-14-kg-22-pieces10u09b8u09c1u09aau09beu09b0u09aeu09ae-u09acu09c7u09acu09bf-u09a1u09beu09afu09bcu09beu09aau09beu09b0-u09acu09c7u09b2u09cdu099f-87z9156rjg', '16122492320fJBuhc0.png', '1612249233gRpt2l93.jpg', NULL, NULL, NULL, NULL, NULL, 750, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 27, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:00:32', '2022-08-05 07:48:41', 0, NULL, NULL, NULL, 0, 0),
(258, 'NZ09251e4i', 'normal', NULL, 0, 39, 34, NULL, NULL, '{\"1\":\"Supermom-baby-diaper-belt-m-6-11-kg-4pcs\",\"10\":\"\\u09b8\\u09c1\\u09aa\\u09be\\u09b0\\u09ae\\u09ae-\\u09ac\\u09c7\\u09ac\\u09bf-\\u09a1\\u09be\\u09af\\u09bc\\u09be\\u09aa\\u09be\\u09b0-\\u09ac\\u09c7\\u09b2\\u09cd\\u099f\"}', '1supermom-baby-diaper-belt-m-6-11-kg-4pcs10u09b8u09c1u09aau09beu09b0u09aeu09ae-u09acu09c7u09acu09bf-u09a1u09beu09afu09bcu09beu09aau09beu09b0-u09acu09c7u09b2u09cdu099f-nz09251e4i', '1612249329fRDkYH0l.png', '1612249330UiWHwcX3.jpg', NULL, NULL, NULL, NULL, NULL, 115, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:02:09', '2022-08-05 07:47:39', 0, NULL, NULL, NULL, 0, 0),
(259, 'Jbn9349dHf', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Cerelac Rice & Potato With Chicken 400 gm\",\"10\":\"\\u09b8\\u09c7\\u09b0\\u09bf\\u09b2\\u09be\\u0995\"}', '1cerelac-rice-potato-with-chicken-400-gm10u09b8u09c7u09b0u09bfu09b2u09beu0995-jbn9349dhf', '1612249443gtS8F7BL.png', '1612249443oNqvPo22.jpg', NULL, NULL, NULL, NULL, NULL, 410, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 32, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:04:03', '2022-08-11 20:21:24', 0, NULL, NULL, NULL, 0, 0),
(260, '6q79458kxM', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Cerelac Wheat Apple Cherry 400 Gm (BIB)\",\"10\":\"\\u09b8\\u09c7\\u09b0\\u09bf\\u09b2\\u09be\\u0995\"}', '1cerelac-wheat-apple-cherry-400-gm-bib10u09b8u09c7u09b0u09bfu09b2u09beu0995-6q79458kxm', '1612249528YsEW09uR.png', '1612249528yy3YO0OF.jpg', NULL, NULL, NULL, NULL, NULL, 370, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 33, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:05:28', '2022-08-01 21:04:35', 0, NULL, NULL, NULL, 0, 0),
(261, 'z669542Lg3', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Junior Horlicks 400 Gm (BIB)\",\"10\":\"\\u099c\\u09c1\\u09a8\\u09bf\\u09af\\u09bc\\u09b0 \\u09b9\\u09b0\\u09b2\\u09bf\\u0995\\u09cd\\u09b8\"}', '1junior-horlicks-400-gm-bib10u099cu09c1u09a8u09bfu09afu09bcu09b0-u09b9u09b0u09b2u09bfu0995u09cdu09b8-z669542lg3', '1612249611O5MCXNLq.png', '16122496128IXSF9Zv.jpg', NULL, NULL, NULL, NULL, NULL, 390, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:06:51', '2022-08-01 21:06:21', 0, NULL, NULL, NULL, 0, 0),
(262, 'ZuX9625040', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Lactogen-1 ( TIN) 400 Gm (NEW)\",\"10\":\"\\u09b2\\u09cd\\u09af\\u09be\\u0995\\u099f\\u09cb\\u099c\\u09c7\\u09a8 -\\u09e7\"}', '1lactogen-1-tin-400-gm-new10u09b2u09cdu09afu09beu0995u099fu09cbu099cu09c7u09a8-u09e7-zux9625040', '1612249692SsXxpW0u.png', '1612249692Q7oXa72m.jpg', NULL, NULL, NULL, NULL, NULL, 630, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 33, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:08:12', '2022-08-11 12:14:04', 0, NULL, NULL, NULL, 0, 0),
(263, 'OcS9704Cm6', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Lactogen-3 (BIB) 350 gm\",\"10\":\"\\u09b2\\u09cd\\u09af\\u09be\\u0995\\u099f\\u09cb\\u099c\\u09c7\\u09a8 -\\u09e9\"}', '1lactogen-3-bib-350-gm10u09b2u09cdu09afu09beu0995u099fu09cbu099cu09c7u09a8-u09e9-ocs9704cm6', '1612249855wpUb2gVY.png', '1612249855FME51zhp.jpg', NULL, NULL, NULL, NULL, NULL, 480, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 31, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:10:55', '2022-08-01 21:06:42', 0, NULL, NULL, NULL, 0, 0),
(264, 'bkH9869ty6', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Womens Top\",\"10\":\"Womens Top\"}', '1womens-top10womens-top-bkh9869ty6', '1625302975MvpDJEQY.png', '16253029758nN7iVxO.jpg', NULL, NULL, NULL, NULL, NULL, 350, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 35, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 1, 0, 0, '2021-02-02 18:12:32', '2022-08-02 21:35:34', 0, NULL, NULL, NULL, 0, 0),
(265, 'HQm9969wAz', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Nestle Cerelac 5Fruits & Multi Grain 350g 350 gm\",\"10\":\"\\u09a8\\u09c7\\u09b8\\u09cd\\u099f\\u09b2\\u09c7 \\u09b8\\u09c7\\u09b0\\u09c7\\u09b2\\u09be\\u0995\"}', '1nestle-cerelac-5fruits-multi-grain-350g-350-gm10u09a8u09c7u09b8u09cdu099fu09b2u09c7-u09b8u09c7u09b0u09c7u09b2u09beu0995-hqm9969waz', '1612250047DNmgLoFi.png', '1612250047dw84itwI.jpg', NULL, NULL, NULL, NULL, NULL, 450, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 28, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:14:07', '2022-08-05 07:42:41', 0, NULL, NULL, NULL, 0, 0),
(266, 'VGY0059rXa', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Nestle Nan-3 Optipro Milk Powder 350g 350 gm\",\"10\":\"\\u09a8\\u09c7\\u09b8\\u09cd\\u099f\\u09b2\\u09c7 \\u09a8\\u09cd\\u09af\\u09be\\u09a8 -\\u09e9 \\u0985\\u09aa\\u099f\\u09bf\\u09aa\\u09cb \\u09ae\\u09bf\\u09b2\\u09cd\\u0995 \\u09aa\\u09be\\u0989\\u09a1\\u09be\\u09b0\"}', '1nestle-nan-3-optipro-milk-powder-350g-350-gm10u09a8u09c7u09b8u09cdu099fu09b2u09c7-u09a8u09cdu09afu09beu09a8-u09e9-u0985u09aau099fu09bfu09aau09cb-u09aeu09bfu09b2u09cdu0995-u09aau09beu0989u09a1u09beu09b0-vgy0059rxa', '1612250126PMF3e0u8.png', '161225012674hvxmXT.jpg', NULL, NULL, NULL, NULL, NULL, 620, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 31, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:15:26', '2022-08-11 13:52:02', 0, NULL, NULL, NULL, 0, 0),
(267, 'duo0139BMF', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Nido FortiGrow Full Cream Instant Milk Powder (BIB) 700 gm\",\"10\":\"\\u09a8\\u09bf\\u09a1\\u09cb \\u09ab\\u09cb\\u09b0\\u09cd\\u099f\\u09bf\\u0997\\u09cd\\u09b0\\u09cb \\u09ab\\u09c1\\u09b2 \\u0995\\u09cd\\u09b0\\u09bf\\u09ae \\u0987\\u09a8\\u09b8\\u09cd\\u099f\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u099f \\u09ae\\u09bf\\u09b2\\u09cd\\u0995 \\u09aa\\u09be\\u0989\\u09a1\\u09be\\u09b0\"}', '1nido-fortigrow-full-cream-instant-milk-powder-bib-700-gm10u09a8u09bfu09a1u09cb-u09abu09cbu09b0u09cdu099fu09bfu0997u09cdu09b0u09cb-u09abu09c1u09b2-u0995u09cdu09b0u09bfu09ae-u0987u09a8u09b8u09cdu099fu09cdu09afu09beu09a8u09cdu099f-u09aeu09bfu09b2u09cdu0995-u09aau09beu0989u09a1u09beu09b0-duo0139bmf', '1612250212epwJ6v8c.png', '1612250213aCFrxI3E.jpg', NULL, NULL, NULL, NULL, NULL, 530, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 26, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:16:52', '2022-08-05 07:45:46', 0, NULL, NULL, NULL, 0, 0),
(268, 'c8o0225AIU', 'normal', NULL, 0, 39, 33, NULL, NULL, '{\"1\":\"Pediasure Vanilla Delight 200g (Jar) 200 gm\",\"10\":\"\\u09aa\\u09c7\\u09a1\\u09bf\\u09af\\u09bc\\u09be\\u09b8 \\u09ad\\u09cd\\u09af\\u09be\\u09a8\\u09bf\\u09b2\\u09be\"}', '1pediasure-vanilla-delight-200g-jar-200-gm10u09aau09c7u09a1u09bfu09afu09bcu09beu09b8-u09adu09cdu09afu09beu09a8u09bfu09b2u09be-c8o0225aiu', '1612250304tyXLqFvj.png', '1612250304nLWT7mMi.jpg', NULL, NULL, NULL, NULL, NULL, 431, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 30, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:18:24', '2022-08-08 19:16:25', 0, NULL, NULL, NULL, 0, 0),
(269, 'N0s0312C7e', 'normal', NULL, 0, 39, 59, NULL, NULL, '{\"1\":\"crystal-mum-pot\",\"10\":\"\\u0995\\u09cd\\u09b0\\u09bf\\u09b8\\u09cd\\u099f\\u09be\\u09b2 \\u09ae\\u0997\"}', '1crystal-mum-pot10u0995u09cdu09b0u09bfu09b8u09cdu099fu09beu09b2-u09aeu0997-n0s0312c7e', '1671578464xgiold3v.png', '1671578464ANWapVrZ.jpg', NULL, NULL, NULL, NULL, NULL, 55, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:20:29', '2022-12-20 23:26:01', 0, NULL, NULL, NULL, 0, 0),
(274, 'QeQ0952fcj', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Mens Tracksut\",\"10\":\"Mens Tracksut\"}', '1mens-tracksut10mens-tracksut-qeq0952fcj', '1625297903G9TZkneW.png', '1625297903jlBh74xe.jpg', NULL, NULL, NULL, NULL, NULL, 395, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 30, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2021-02-02 18:30:32', '2022-08-01 21:07:04', 1, '100', NULL, NULL, 0, 0),
(276, 'UCg1125Z8T', 'normal', NULL, 0, 5, 58, NULL, NULL, '{\"1\":\"Mens white Hodie\",\"10\":\"Mens white Hodie\"}', '1mens-white-hodie10mens-white-hodie-ucg1125z8t', '16252978223dotf3ST.png', '1625297822TswuU4un.jpg', NULL, NULL, NULL, NULL, NULL, 3.2490548204159, 6.5571833648393, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:32:56', '2022-12-21 00:16:37', 0, NULL, NULL, NULL, 0, 0),
(277, 'tc81192qRX', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Multi color Hodie\",\"10\":\"Multi color Hodie\"}', '1multi-color-hodie10multi-color-hodie-tc81192qrx', '1625297769fRHPQC3t.png', '1625297769NSav8xD9.jpg', NULL, NULL, NULL, NULL, NULL, 840, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 32, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:34:10', '2022-08-08 15:09:35', 0, NULL, NULL, NULL, 0, 0),
(278, 'DLm1263xNS', 'normal', NULL, 0, 5, 58, NULL, NULL, '{\"1\":\"Mens full Sliv Shirt Red\",\"10\":\"Mens full Sliv Shirt red\"}', '1mens-full-sliv-shirt-red10mens-full-sliv-shirt-red-dlm1263xns', '1625297726XfpaPzsn.png', '1625297726WDxhSJEh.jpg', NULL, NULL, NULL, NULL, NULL, 3.7925330812854, 7.0888468809074, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 35, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:35:55', '2022-12-21 00:16:57', 0, NULL, NULL, NULL, 0, 0),
(279, '82r1367A8w', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Mens full Sliv Shirt\",\"10\":\"Mens full sliv Shirt\"}', '1mens-full-sliv-shirt10mens-full-sliv-shirt-82r1367a8w', '1625297590pbc2oLPD.png', '1625297590QrEwFtQj.jpg', NULL, NULL, NULL, NULL, NULL, 480, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2021-02-02 18:37:30', '2022-11-27 11:02:20', 0, NULL, NULL, NULL, 0, 0),
(280, 'KbS1468ZcJ', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"womens long tops\",\"10\":\"womens long tops\"}', '1womens-long-tops10womens-long-tops-kbs1468zcj', '1625297458gzkdYAfc.png', '16252974580wkNfFXs.jpg', NULL, NULL, NULL, NULL, NULL, 390, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 32, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0, '2021-02-02 18:38:45', '2022-08-01 21:09:23', 1, '60', NULL, NULL, 0, 0),
(281, 'Veu1538lOt', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Womens 2 pices\",\"10\":\"Womens 2 pices\"}', '1womens-2-pices10womens-2-pices-veu1538lot', '1625297367KqbD1MhS.png', '1625297367N81OeiH8.jpg', NULL, NULL, NULL, NULL, NULL, 490, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 32, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2021-02-02 18:40:28', '2022-08-01 21:09:05', 1, '02/24/2021', NULL, NULL, 0, 0),
(282, 'i1O1641Z2P', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"womens tops and bottom\",\"10\":\"womens tops and bottom\"}', '1womens-tops-and-bottom10womens-tops-and-bottom-i1o1641z2p', '1625297220cPGywI0S.png', '1625297220cgsh3jla.jpg', NULL, NULL, NULL, NULL, NULL, 65, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 25, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2021-02-02 18:41:45', '2022-08-03 20:50:54', 1, '01/29/2021', NULL, NULL, 0, 0),
(283, 'oEl1717AFh', 'normal', NULL, 0, 5, 58, NULL, NULL, '{\"1\":\"Solid Color Tshirt\",\"10\":\"Solid Color Tshirt\"}', '1solid-color-tshirt10solid-color-tshirt-oel1717afh', '1625297182hRmDdI03.png', '1625297182iiBIPIBN.jpg', NULL, NULL, NULL, NULL, NULL, 34.995274102079, 35.444234404537, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 33, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-02 18:43:18', '2022-12-21 00:17:09', 0, NULL, NULL, NULL, 0, 0),
(284, 'OIP18130ZC', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Womens Tops and Bottom\",\"10\":\"Womens Tops and Bottom\"}', '1womens-tops-and-bottom10womens-tops-and-bottom-oip18130zc', '1625297030ad2EjCiR.png', '1625297030tfiFdXfw.jpg', NULL, NULL, NULL, NULL, NULL, 270, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 30, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2021-02-02 18:45:08', '2022-12-20 11:01:03', 1, '12/16/2021', NULL, NULL, 0, 0),
(285, 'NUq1922ZVs', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Women  Short dress\",\"10\":\"Women  Short dress\"}', '1women-short-dress10women-short-dress-nuq1922zvs', '1625296957F5JfP5xm.png', '1625296957hpREyoZd.jpg', NULL, NULL, NULL, NULL, NULL, 430, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, '2021-02-02 18:46:15', '2022-08-01 21:08:54', 0, NULL, NULL, NULL, 0, 0),
(286, 'KIs1996LpC', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Mens Court\",\"10\":\"Mens Court\"}', '1mens-court10mens-court-kis1996lpc', '1625296816fwMOxUqR.png', '1625296816Ho2kZFET.jpg', NULL, NULL, NULL, NULL, NULL, 265, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 34, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 0, 0, '2021-02-02 18:47:34', '2022-12-20 09:29:04', 1, '500', NULL, NULL, 1, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(287, '6wJ2067lmN', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Red Jipper\",\"10\":\"Red Jipper\"}', '1red-jipper10red-jipper-6wj2067lmn', '1625296657xIctecx2.png', '16252966576pGLgL2n.jpg', NULL, NULL, NULL, NULL, NULL, 190, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 49, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 0, 0, '2021-02-02 18:48:43', '2022-12-20 11:00:57', 0, NULL, NULL, NULL, 1, 0),
(288, 'tj02136j0h', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Long Sleeve Black Dress\",\"10\":\"Long Sleeve Black Dress\"}', '1long-sleeve-black-dress10long-sleeve-black-dress-tj02136j0h', '16253031107OLdAjhe.png', '1625303110888kBZed.jpg', NULL, NULL, NULL, NULL, NULL, 395, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 53, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, '2021-02-02 18:49:44', '2022-12-20 20:05:54', 1, '07/14/2022', NULL, NULL, 1, 0),
(289, 'TT02197zrN', 'normal', NULL, 0, 5, NULL, NULL, NULL, '{\"1\":\"Womens Shoe\",\"10\":\"\\u09ae\\u09b9\\u09bf\\u09b2\\u09be\\u09a6\\u09c7\\u09b0 \\u099c\\u09c1\\u09a4\\u09cb\"}', '1womens-shoe10u09aeu09b9u09bfu09b2u09beu09a6u09c7u09b0-u099cu09c1u09a4u09cb-tt02197zrn', '1625296281PQDLIuBp.png', '1625296282aOIAeREU.jpg', NULL, NULL, NULL, NULL, NULL, 695, 0, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 69, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 0, 1, '2021-02-02 18:50:40', '2022-12-21 00:20:11', 1, '07/23/2022', NULL, NULL, 1, 0),
(290, '446fsd45f64', 'normal', NULL, 13, 27, 61, NULL, NULL, '{\"1\":\"Vernon Martinez\",\"10\":\"\\u09ad\\u09be\\u09b0\\u09cd\\u09a8\\u09a8 \\u09ae\\u09be\\u09b0\\u09cd\\u099f\\u09bf\\u09a8\\u09c7\\u099c\"}', '1vernon-martinez10u09adu09beu09b0u09cdu09a8u09a8-u09aeu09beu09b0u09cdu099fu09bfu09a8u09c7u099c-446fsd45f64', '1660371462xqHbPnXD.jpg', '1660371462EbWMGqdq.jpg', NULL, NULL, NULL, NULL, NULL, 2500, 3000, '{\"1\":\"Voluptas sint aut nisi duis po.\",\"10\":\"Aut vel quo distinctio. Dolore.\"}', 95, '{\"1\":\"Quidem in non quam deserunt se.\",\"10\":\"Eos facere ad minima suscipit .\"}', 1, 9, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-13 06:17:41', '2022-12-20 23:41:12', 0, NULL, NULL, NULL, 0, 0),
(291, 'gTQ8695rpV', 'normal', NULL, 0, 34, 60, NULL, NULL, '{\"1\":\"Necklace\",\"10\":\"\\u09a8\\u09c7\\u0995\\u09b2\\u09c7\\u09b8\"}', '1necklace10u09a8u09c7u0995u09b2u09c7u09b8-gtq8695rpv', '1671578800xs14yv9n.png', '1671578800d9sicThx.jpg', NULL, NULL, NULL, NULL, NULL, 53.166351606805, 44.896030245747, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:26:40', '2022-12-20 23:26:40', 0, NULL, NULL, NULL, 0, 0),
(292, 'wjo94750nF', 'normal', NULL, 0, 27, 61, NULL, NULL, '{\"1\":\"Xiaomi Haylou RT2 LS10 Smart Watch\",\"10\":\"\\u09b6\\u09be\\u0993\\u09ae\\u09bf \\u09b9\\u09c7\\u09df\\u09b2\\u09c1 \\u0986\\u09b0\\u099f\\u09bf \\u098f\\u09b2\\u098f\\u09b8\\u09e7\\u09e6 \\u09b8\\u09cd\\u09ae\\u09be\\u09b0\\u09cd\\u099f \\u0993\\u09df\\u09be\\u099a\"}', '1xiaomi-haylou-rt2-ls10-smart-watch10u09b6u09beu0993u09aeu09bf-u09b9u09c7u09dfu09b2u09c1-u0986u09b0u099fu09bf-u098fu09b2u098fu09b8u09e7u09e6-u09b8u09cdu09aeu09beu09b0u09cdu099f-u0993u09dfu09beu099a-wjo94750nf', '1671579513Z8O5K8Sr.png', '1671579514ulAIL4Gj.jpg', NULL, NULL, NULL, NULL, NULL, 53.946124763705, 76.79584120983, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:38:33', '2022-12-20 23:38:34', 0, NULL, NULL, NULL, 0, 0),
(293, 'Hr49726olk', 'normal', NULL, 0, 27, 61, NULL, NULL, '{\"1\":\"Brand Watch\",\"10\":\"\\u09ac\\u09cd\\u09b0\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09a1 \\u0993\\u09df\\u09be\\u099a\"}', '1brand-watch10u09acu09cdu09b0u09cdu09afu09beu09a8u09cdu09a1-u0993u09dfu09beu099a-hr49726olk', '1671579815I4G2C2HY.png', '1671579815T3K7LBGC.jpg', NULL, NULL, NULL, NULL, NULL, 53.757088846881, 59.321833648393, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:43:35', '2022-12-20 23:43:35', 0, NULL, NULL, NULL, 0, 0),
(294, 'Yur9826kQK', 'normal', NULL, 0, 27, 61, NULL, NULL, '{\"1\":\"Brand Watch 2\",\"10\":\"\\u09ac\\u09cd\\u09b0\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09a1 \\u0993\\u09df\\u09be\\u099a \\u09e8\"}', '1brand-watch-210u09acu09cdu09b0u09cdu09afu09beu09a8u09cdu09a1-u0993u09dfu09beu099a-u09e8-yur9826kqk', '1671579935PyGrSpV2.png', '1671579935jfncLV9r.jpg', NULL, NULL, NULL, NULL, NULL, 18.431001890359, 23.629489603025, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:45:35', '2022-12-20 23:45:35', 0, NULL, NULL, NULL, 0, 0),
(295, '3um9939a7v', 'normal', NULL, 0, 27, 61, NULL, NULL, '{\"1\":\"Brand Watch 3\",\"10\":\"\\u09ac\\u09cd\\u09b0\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09a1 \\u0993\\u09df\\u09be\\u099a \\u09e9\"}', '1brand-watch-310u09acu09cdu09b0u09cdu09afu09beu09a8u09cdu09a1-u0993u09dfu09beu099a-u09e9-3um9939a7v', '1671579991EhgbxWKM.png', '16715799915Jh14F10.jpg', NULL, NULL, NULL, NULL, NULL, 47.258979206049, 46.668241965974, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:46:31', '2022-12-20 23:46:31', 0, NULL, NULL, NULL, 0, 0),
(296, '4Ue0158uFM', 'normal', NULL, 0, 28, 62, NULL, NULL, '{\"1\":\"Xiaomi Mi A3\",\"10\":\"\\u09b6\\u09be\\u0993\\u09ae\\u09bf \\u09ae\\u09bf \\u098f\\u09e9\"}', '1xiaomi-mi-a310u09b6u09beu0993u09aeu09bf-u09aeu09bf-u098fu09e9-4ue0158ufm', '1671580202bqoQXS41.png', '16715802026yeQz2NQ.jpg', NULL, NULL, NULL, NULL, NULL, 141.77693761815, 165.39461247637, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:50:02', '2022-12-21 01:07:08', 0, NULL, NULL, NULL, 0, 0),
(297, 'D0V0211OVw', 'normal', NULL, 0, 28, 62, NULL, NULL, '{\"1\":\"Redmi K20 Pro\",\"10\":\"\\u09b0\\u09c7\\u09a1\\u09ae\\u09bf \\u0995\\u09c7\\u09e8\\u09e6 \\u09aa\\u09cd\\u09b0\\u09cb\"}', '1redmi-k20-pro10u09b0u09c7u09a1u09aeu09bf-u0995u09c7u09e8u09e6-u09aau09cdu09b0u09cb-d0v0211ovw', '1671580319coh5GQfP.png', '1671580319Ib29xQud.jpg', NULL, NULL, NULL, NULL, NULL, 224.48015122873, 259.92438563327, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:51:59', '2022-12-21 01:07:05', 0, NULL, NULL, NULL, 0, 0),
(298, '9TV0326VHc', 'normal', NULL, 0, 28, 62, NULL, NULL, '{\"1\":\"Mi Note 10\",\"10\":\"\\u098f\\u09ae\\u0986\\u0987 \\u09a8\\u09cb\\u099f \\u09e7\\u09e6\"}', '1mi-note-1010u098fu09aeu0986u0987-u09a8u09cbu099f-u09e7u09e6-9tv0326vhc', '1671580397BnX8MgU3.png', '16715803971pim8Aki.jpg', NULL, NULL, NULL, NULL, NULL, 236.29489603025, 283.55387523629, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:53:17', '2022-12-21 01:06:55', 0, NULL, NULL, NULL, 0, 0),
(299, '7Cq0448J8i', 'normal', NULL, 0, 17, 63, NULL, NULL, '{\"1\":\"Combo 1\",\"10\":\"\\u0995\\u09ae\\u09cd\\u09ac\\u09cb \\u09e7\"}', '1combo-110u0995u09aeu09cdu09acu09cb-u09e7-7cq0448j8i', '1671580646Uliwhhfg.png', '1671580646bUwg6w5L.jpg', NULL, NULL, NULL, NULL, NULL, 20.085066162571, 26.583175803403, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:57:26', '2022-12-20 23:57:26', 0, NULL, NULL, NULL, 0, 0),
(300, 'k3g0414tlC', 'normal', NULL, 0, 17, 63, NULL, NULL, '{\"1\":\"combo 2\",\"10\":\"\\u0995\\u09ae\\u09cd\\u09ac\\u09cb \\u09e8\"}', '1combo-210u0995u09aeu09cdu09acu09cb-u09e8-k3g0414tlc', '16715806873bmMhNd5.png', '1671580687owjhuTNy.jpg', NULL, NULL, NULL, NULL, NULL, 27.764650283554, 31.887996219282, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 23:58:07', '2022-12-20 23:58:07', 0, NULL, NULL, NULL, 0, 0),
(301, 'K9Z0798htQ', 'normal', NULL, 0, 17, 63, NULL, NULL, '{\"1\":\"combo 3\",\"10\":\"\\u0995\\u09ae\\u09cd\\u09ac\\u09cb \\u09e9\"}', '1combo-310u0995u09aeu09cdu09acu09cb-u09e9-k9z0798htq', '1671580850abc1HNY1.png', '16715808509HJGP4gT.jpg', NULL, NULL, NULL, NULL, NULL, 9.2155009451796, 10.62145557656, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:50', '2022-12-21 00:19:50', 0, NULL, NULL, NULL, 0, 0),
(302, 'oB70853jaO', 'normal', NULL, 0, 17, 63, NULL, NULL, '{\"1\":\"combo 4\",\"10\":\"\\u0995\\u09ae\\u09cd\\u09ac\\u09cb \\u09ea\"}', '1combo-410u0995u09aeu09cdu09acu09cb-u09ea-ob70853jao', '1671580897kqI887GL.png', '1671580897vAHl4WxG.jpg', NULL, NULL, NULL, NULL, NULL, 42.131379962193, 54.182419659735, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:01:37', '2022-12-21 00:01:37', 0, NULL, NULL, NULL, 0, 0),
(303, 'iZh1063slj', 'normal', NULL, 0, 43, 64, NULL, NULL, '{\"1\":\"Noodles Ramen\",\"10\":\"\\u09b0\\u09be\\u09ae\\u09c7\\u09a8\"}', '1noodles-ramen10u09b0u09beu09aeu09c7u09a8-izh1063slj', '1671581105AJNwABu4.png', '1671581105Vbtu2wkt.jpg', NULL, NULL, NULL, NULL, NULL, 1.4177693761815, 1.7131379962193, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:05:05', '2022-12-21 00:05:05', 0, NULL, NULL, NULL, 0, 0),
(304, '3Au1110nkM', 'normal', NULL, 0, 43, 64, NULL, NULL, '{\"1\":\"Cocola\",\"10\":\"\\u0995\\u09cb\\u0995\\u09cb\\u09b2\\u09be\"}', '1cocola10u0995u09cbu0995u09cbu09b2u09be-3au1110nkm', '16715811450ECkMMMU.png', '167158114541RAVjBj.jpg', NULL, NULL, NULL, NULL, NULL, 0.59073724007561, 0.64981096408318, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:05:45', '2022-12-21 00:05:45', 0, NULL, NULL, NULL, 0, 0),
(305, 'hGk1147TGa', 'normal', NULL, 0, 43, 64, NULL, NULL, '{\"1\":\"Maggi\",\"10\":\"\\u09ae\\u09cd\\u09af\\u09be\\u0997\\u09bf \\u09a8\\u09c1\\u09a1\\u09c1\\u09b2\\u09b8\"}', '1maggi10u09aeu09cdu09afu09beu0997u09bf-u09a8u09c1u09a1u09c1u09b2u09b8-hgk1147tga', '1671581198EePsEx7L.png', '1671581198N7IYBait.jpg', NULL, NULL, NULL, NULL, NULL, 1.1814744801512, 1.4177693761815, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:06:38', '2022-12-21 00:06:38', 0, NULL, NULL, NULL, 0, 0),
(306, '9aU1201bQg', 'normal', NULL, 0, 43, 64, NULL, NULL, '{\"1\":\"Noodles 4\",\"10\":\"\\u09a8\\u09c1\\u09a1\\u09c1\\u09b2\\u09b8\"}', '1noodles-410u09a8u09c1u09a1u09c1u09b2u09b8-9au1201bqg', '1671581251flSxh5x7.png', '1671581251hRyBf3IT.jpg', NULL, NULL, NULL, NULL, NULL, 2.1266540642722, 2.5992438563327, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:07:31', '2022-12-21 00:07:31', 0, NULL, NULL, NULL, 0, 0),
(307, 'qqs1254gX1', 'normal', NULL, 0, 43, 64, NULL, NULL, '{\"1\":\"Noodles 5\",\"10\":\"\\u09a8\\u09c1\\u09a1\\u09c1\\u09b2\\u09b8 \\u09eb\"}', '1noodles-510u09a8u09c1u09a1u09c1u09b2u09b8-u09eb-qqs1254gx1', '16715812953LSFeOJ1.png', '16715812960UPRBHKw.jpg', NULL, NULL, NULL, NULL, NULL, 1.7131379962193, 2.0675803402647, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:08:15', '2022-12-21 00:08:16', 0, NULL, NULL, NULL, 0, 0),
(308, 'NM31355RET', 'normal', NULL, 0, 24, 65, NULL, NULL, '{\"1\":\"Kacha Bazar 1\",\"10\":\"\\u0995\\u09be\\u099a\\u09be\\u09ac\\u09be\\u099c\\u09be\\u09b0 \\u09e7\"}', '1kacha-bazar-110u0995u09beu099au09beu09acu09beu099cu09beu09b0-u09e7-nm31355ret', '1671581545hcpVm1nw.png', '16715815453apQLyPK.jpg', NULL, NULL, NULL, NULL, NULL, 0.7679584120983, 0.94517958412098, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:12:25', '2022-12-21 00:35:50', 0, NULL, NULL, NULL, 0, 0),
(309, 'vkG1549iLJ', 'normal', NULL, 0, 24, 65, NULL, NULL, '{\"1\":\"Kacha Bazar 2\",\"10\":\"\\u0995\\u09be\\u099a\\u09be\\u09ac\\u09be\\u099c\\u09be\\u09b0 \\u09e8\"}', '1kacha-bazar-210u0995u09beu099au09beu09acu09beu099cu09beu09b0-u09e8-vkg1549ilj', '1671581600DnjuTC65.png', '1671581600ipPKNOJd.jpg', NULL, NULL, NULL, NULL, NULL, 0.30718336483932, 0.38988657844991, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:13:20', '2022-12-21 00:44:31', 0, NULL, NULL, NULL, 0, 0),
(310, 'SjY16021sU', 'normal', NULL, 0, 24, 65, NULL, NULL, '{\"1\":\"Kacha Bazar 3\",\"10\":\"\\u0995\\u09be\\u099a\\u09be \\u09ac\\u09be\\u099c\\u09be\\u09b0 \\u09e9\"}', '1kacha-bazar-310u0995u09beu099au09be-u09acu09beu099cu09beu09b0-u09e9-sjy16021su', '16715816418iCMFVCG.png', '1671581641jTdNqRNN.jpg', NULL, NULL, NULL, NULL, NULL, 0.88610586011342, 0.92155009451796, '{\"1\":\"<br>\",\"10\":\"<br>\"}', NULL, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:14:01', '2022-12-21 01:05:40', 0, NULL, NULL, NULL, 0, 0),
(311, 'Ssp1292t7M', 'normal', NULL, 0, 5, 58, NULL, NULL, '{\"1\":\"test product\",\"10\":\"test product\"}', '1test-product10test-product-ssp1292t7m', '1673191405kfCDoOHo.png', '1673191405VOkSjdSW.jpg', NULL, NULL, NULL, NULL, NULL, 2.3629489603025, 2.9536862003781, '{\"1\":\"test\",\"10\":\"test\"}', 20, '{\"1\":\"test\",\"10\":\"test\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 15:23:25', '2023-01-08 15:23:25', 0, NULL, NULL, NULL, 0, 0),
(312, 'KmU0574Ch5', 'normal', NULL, 0, 5, 58, NULL, NULL, '{\"1\":\"test product\",\"10\":\"test product\"}', '1test-product10test-product-kmu0574ch5', '1673200619SuGcFsps.png', '16732006229OIH43Ux.jpg', NULL, NULL, NULL, NULL, NULL, 4.7258979206049, 5.3166351606805, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 10, '{\"1\":\"<br>\",\"10\":\"<br>\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 17:56:59', '2023-01-08 17:57:02', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(280, 199, '2020-12-06'),
(283, 199, '2020-12-06'),
(284, 202, '2020-12-06'),
(285, 199, '2020-12-06'),
(286, 207, '2020-12-06'),
(287, 217, '2020-12-07'),
(289, 217, '2020-12-07'),
(290, 216, '2020-12-07'),
(291, 215, '2020-12-07'),
(292, 217, '2020-12-07'),
(293, 214, '2020-12-07'),
(294, 215, '2020-12-07'),
(295, 211, '2020-12-07'),
(296, 201, '2020-12-08'),
(297, 202, '2020-12-08'),
(298, 201, '2020-12-08'),
(299, 218, '2020-12-08'),
(300, 213, '2020-12-08'),
(302, 216, '2020-12-09'),
(303, 216, '2020-12-09'),
(304, 216, '2020-12-09'),
(320, 215, '2020-12-13'),
(329, 200, '2020-12-19'),
(332, 218, '2020-12-19'),
(335, 212, '2020-12-19'),
(357, 199, '2020-12-20'),
(360, 199, '2020-12-20'),
(363, 199, '2020-12-20'),
(364, 199, '2020-12-20'),
(365, 199, '2020-12-21'),
(371, 216, '2020-12-24'),
(372, 216, '2020-12-24'),
(373, 218, '2020-12-24'),
(374, 215, '2020-12-24'),
(375, 216, '2020-12-24'),
(438, 205, '2020-12-27'),
(507, 199, '2020-12-28'),
(508, 199, '2020-12-28'),
(509, 201, '2020-12-28'),
(510, 201, '2020-12-28'),
(511, 200, '2020-12-28'),
(512, 200, '2020-12-28'),
(515, 200, '2020-12-28'),
(516, 200, '2020-12-28'),
(545, 199, '2020-12-28'),
(546, 199, '2020-12-28'),
(547, 201, '2020-12-28'),
(548, 201, '2020-12-28'),
(549, 199, '2020-12-28'),
(550, 199, '2020-12-28'),
(563, 218, '2020-12-28'),
(564, 218, '2020-12-28'),
(569, 199, '2020-12-28'),
(570, 199, '2020-12-28'),
(573, 199, '2020-12-28'),
(574, 199, '2020-12-28'),
(579, 199, '2020-12-28'),
(580, 199, '2020-12-28'),
(583, 199, '2020-12-28'),
(584, 199, '2020-12-28'),
(585, 201, '2020-12-28'),
(586, 201, '2020-12-28'),
(591, 199, '2020-12-28'),
(592, 199, '2020-12-28'),
(597, 199, '2020-12-28'),
(598, 199, '2020-12-28'),
(599, 200, '2020-12-28'),
(600, 200, '2020-12-28'),
(603, 199, '2020-12-28'),
(604, 199, '2020-12-28'),
(631, 199, '2021-01-06'),
(632, 199, '2021-01-06'),
(643, 199, '2021-01-06'),
(644, 199, '2021-01-06'),
(665, 200, '2021-01-07'),
(666, 200, '2021-01-07'),
(710, 213, '2021-01-09'),
(711, 213, '2021-01-09'),
(716, 200, '2021-01-09'),
(777, 215, '2021-01-10'),
(778, 215, '2021-01-10'),
(994, 202, '2021-01-14'),
(995, 208, '2021-01-14'),
(996, 203, '2021-01-15'),
(997, 200, '2021-01-15'),
(998, 207, '2021-01-15'),
(1018, 213, '2021-01-18'),
(1019, 213, '2021-01-18'),
(1020, 212, '2021-01-18'),
(1021, 212, '2021-01-18'),
(1022, 208, '2021-01-18'),
(1023, 208, '2021-01-18'),
(1024, 207, '2021-01-18'),
(1025, 207, '2021-01-18'),
(1026, 213, '2021-01-18'),
(1027, 213, '2021-01-18'),
(1030, 215, '2021-01-18'),
(1031, 215, '2021-01-18'),
(1032, 214, '2021-01-18'),
(1033, 214, '2021-01-18'),
(1034, 213, '2021-01-18'),
(1035, 213, '2021-01-18'),
(1036, 212, '2021-01-18'),
(1037, 212, '2021-01-18'),
(1050, 205, '2021-01-20'),
(1059, 212, '2021-01-20'),
(1060, 208, '2021-01-20'),
(1061, 203, '2021-01-20'),
(1062, 203, '2021-01-21'),
(1063, 214, '2021-01-21'),
(1064, 202, '2021-01-21'),
(1065, 204, '2021-01-21'),
(1066, 199, '2021-01-21'),
(1067, 207, '2021-01-21'),
(1068, 215, '2021-01-21'),
(1069, 209, '2021-01-21'),
(1070, 210, '2021-01-21'),
(1071, 201, '2021-01-21'),
(1072, 213, '2021-01-21'),
(1073, 206, '2021-01-21'),
(1074, 206, '2021-01-21'),
(1075, 206, '2021-01-21'),
(1076, 206, '2021-01-21'),
(1077, 206, '2021-01-21'),
(1087, 213, '2021-01-23'),
(1088, 213, '2021-01-23'),
(1092, 207, '2021-01-25'),
(1093, 207, '2021-01-25'),
(1102, 201, '2021-01-25'),
(1103, 201, '2021-01-25'),
(1104, 212, '2021-01-25'),
(1105, 212, '2021-01-25'),
(1117, 205, '2021-01-27'),
(1126, 212, '2021-01-27'),
(1127, 208, '2021-01-27'),
(1128, 212, '2021-01-28'),
(1129, 208, '2021-01-28'),
(1130, 203, '2021-01-28'),
(1131, 214, '2021-01-28'),
(1132, 205, '2021-01-28'),
(1133, 215, '2021-01-28'),
(1136, 209, '2021-01-28'),
(1137, 210, '2021-01-28'),
(1138, 216, '2021-01-28'),
(1143, 217, '2021-01-28'),
(1144, 213, '2021-01-28'),
(1145, 211, '2021-01-28'),
(1146, 218, '2021-01-28'),
(1147, 203, '2021-01-28'),
(1148, 214, '2021-01-28'),
(1149, 202, '2021-01-28'),
(1150, 204, '2021-01-28'),
(1151, 199, '2021-01-28'),
(1152, 207, '2021-01-28'),
(1153, 215, '2021-01-28'),
(1154, 209, '2021-01-28'),
(1155, 210, '2021-01-28'),
(1156, 201, '2021-01-28'),
(1157, 206, '2021-01-28'),
(1158, 216, '2021-01-28'),
(1160, 200, '2021-01-28'),
(1161, 217, '2021-01-28'),
(1162, 213, '2021-01-28'),
(1163, 211, '2021-01-28'),
(1164, 218, '2021-01-28'),
(1165, 202, '2021-01-29'),
(1166, 204, '2021-01-29'),
(1167, 199, '2021-01-29'),
(1168, 201, '2021-01-29'),
(1170, 200, '2021-01-29'),
(1173, 199, '2021-02-01'),
(1174, 202, '2021-02-01'),
(1176, 218, '2021-02-03'),
(1180, 218, '2021-02-03'),
(1181, 218, '2021-02-03'),
(1183, 218, '2021-02-03'),
(1184, 217, '2021-02-03'),
(1185, 216, '2021-02-03'),
(1186, 218, '2021-02-03'),
(1187, 216, '2021-02-03'),
(1188, 216, '2021-02-03'),
(1189, 215, '2021-02-03'),
(1190, 213, '2021-02-03'),
(1191, 204, '2021-02-03'),
(1192, 235, '2021-02-03'),
(1193, 199, '2021-02-03'),
(1194, 200, '2021-02-03'),
(1195, 264, '2021-02-03'),
(1196, 244, '2021-02-03'),
(1197, 281, '2021-02-03'),
(1198, 288, '2021-02-03'),
(1199, 206, '2021-02-03'),
(1200, 210, '2021-02-03'),
(1201, 211, '2021-02-03'),
(1202, 214, '2021-02-03'),
(1203, 208, '2021-02-03'),
(1204, 207, '2021-02-03'),
(1205, 203, '2021-02-03'),
(1206, 285, '2021-02-03'),
(1207, 285, '2021-02-03'),
(1208, 285, '2021-02-03'),
(1209, 285, '2021-02-03'),
(1210, 204, '2021-02-03'),
(1211, 204, '2021-02-03'),
(1212, 204, '2021-02-03'),
(1213, 204, '2021-02-03'),
(1214, 207, '2021-02-03'),
(1215, 207, '2021-02-03'),
(1216, 207, '2021-02-03'),
(1217, 207, '2021-02-03'),
(1218, 213, '2021-02-03'),
(1219, 215, '2021-02-03'),
(1220, 289, '2021-02-03'),
(1221, 204, '2021-02-03'),
(1222, 204, '2021-02-03'),
(1223, 204, '2021-02-03'),
(1224, 206, '2021-02-03'),
(1225, 208, '2021-02-03'),
(1226, 206, '2021-02-03'),
(1227, 217, '2021-02-03'),
(1228, 199, '2021-02-03'),
(1229, 218, '2021-02-03'),
(1231, 285, '2021-02-03'),
(1232, 235, '2021-02-03'),
(1233, 281, '2021-02-03'),
(1234, 284, '2021-02-03'),
(1235, 264, '2021-02-03'),
(1236, 200, '2021-02-03'),
(1237, 288, '2021-02-03'),
(1238, 199, '2021-02-03'),
(1239, 287, '2021-02-03'),
(1240, 286, '2021-02-03'),
(1241, 244, '2021-02-03'),
(1242, 264, '2021-02-03'),
(1245, 284, '2021-02-03'),
(1246, 284, '2021-02-03'),
(1247, 287, '2021-02-04'),
(1249, 244, '2021-02-04'),
(1250, 286, '2021-02-04'),
(1251, 288, '2021-02-04'),
(1252, 213, '2021-02-04'),
(1254, 216, '2021-02-04'),
(1256, 274, '2021-02-04'),
(1257, 200, '2021-02-04'),
(1258, 281, '2021-02-04'),
(1259, 204, '2021-02-04'),
(1260, 212, '2021-02-04'),
(1261, 217, '2021-02-04'),
(1262, 235, '2021-02-04'),
(1263, 264, '2021-02-04'),
(1264, 199, '2021-02-04'),
(1265, 276, '2021-02-04'),
(1266, 280, '2021-02-04'),
(1267, 208, '2021-02-04'),
(1269, 277, '2021-02-04'),
(1270, 283, '2021-02-04'),
(1271, 279, '2021-02-04'),
(1273, 207, '2021-02-04'),
(1274, 205, '2021-02-04'),
(1275, 282, '2021-02-04'),
(1276, 284, '2021-02-04'),
(1277, 285, '2021-02-04'),
(1278, 278, '2021-02-04'),
(1279, 202, '2021-02-04'),
(1280, 218, '2021-02-04'),
(1281, 201, '2021-02-04'),
(1282, 269, '2021-02-04'),
(1283, 260, '2021-02-04'),
(1284, 259, '2021-02-04'),
(1285, 263, '2021-02-04'),
(1286, 262, '2021-02-04'),
(1287, 239, '2021-02-04'),
(1288, 238, '2021-02-04'),
(1289, 261, '2021-02-04'),
(1290, 252, '2021-02-04'),
(1291, 240, '2021-02-04'),
(1292, 241, '2021-02-04'),
(1293, 247, '2021-02-04'),
(1294, 265, '2021-02-04'),
(1295, 246, '2021-02-04'),
(1296, 268, '2021-02-04'),
(1297, 248, '2021-02-04'),
(1298, 237, '2021-02-04'),
(1299, 249, '2021-02-04'),
(1300, 245, '2021-02-04'),
(1301, 209, '2021-02-04'),
(1302, 256, '2021-02-04'),
(1303, 253, '2021-02-04'),
(1304, 242, '2021-02-04'),
(1305, 243, '2021-02-04'),
(1306, 258, '2021-02-04'),
(1307, 257, '2021-02-04'),
(1308, 255, '2021-02-04'),
(1309, 236, '2021-02-04'),
(1310, 234, '2021-02-04'),
(1311, 266, '2021-02-04'),
(1312, 254, '2021-02-04'),
(1313, 250, '2021-02-04'),
(1314, 251, '2021-02-04'),
(1315, 267, '2021-02-04'),
(1317, 210, '2021-02-04'),
(1318, 214, '2021-02-04'),
(1319, 211, '2021-02-04'),
(1320, 206, '2021-02-04'),
(1321, 203, '2021-02-04'),
(1322, 289, '2021-02-04'),
(1323, 215, '2021-02-04'),
(1324, 210, '2021-02-15'),
(1325, 210, '2021-02-15'),
(1326, 213, '2021-04-24'),
(1340, 288, '2021-04-27'),
(1341, 215, '2021-04-28'),
(1344, 289, '2021-06-23'),
(1345, 288, '2021-06-23'),
(1346, 200, '2021-07-03'),
(1347, 217, '2021-07-04'),
(1348, 281, '2021-10-07'),
(1349, 289, '2022-02-12'),
(1350, 289, '2022-02-12'),
(1351, 289, '2022-02-12'),
(1352, 210, '2022-02-18'),
(1353, 218, '2022-02-18'),
(1354, 211, '2022-02-18'),
(1355, 288, '2022-02-18'),
(1356, 215, '2022-02-18'),
(1357, 217, '2022-02-18'),
(1358, 209, '2022-02-18'),
(1359, 287, '2022-02-18'),
(1360, 214, '2022-02-18'),
(1361, 212, '2022-02-18'),
(1362, 213, '2022-02-18'),
(1363, 208, '2022-02-18'),
(1364, 289, '2022-02-18'),
(1365, 216, '2022-02-18'),
(1366, 202, '2022-02-18'),
(1367, 247, '2022-02-18'),
(1368, 259, '2022-02-18'),
(1369, 260, '2022-02-18'),
(1370, 269, '2022-02-18'),
(1371, 236, '2022-02-18'),
(1372, 205, '2022-02-18'),
(1373, 200, '2022-02-18'),
(1374, 201, '2022-02-18'),
(1375, 237, '2022-02-18'),
(1376, 238, '2022-02-18'),
(1377, 261, '2022-02-18'),
(1378, 241, '2022-02-18'),
(1379, 262, '2022-02-18'),
(1380, 263, '2022-02-18'),
(1381, 244, '2022-02-18'),
(1382, 206, '2022-02-18'),
(1383, 286, '2022-02-18'),
(1384, 278, '2022-02-18'),
(1385, 279, '2022-02-18'),
(1386, 274, '2022-02-18'),
(1387, 276, '2022-02-18'),
(1388, 239, '2022-02-18'),
(1389, 240, '2022-02-18'),
(1390, 242, '2022-02-18'),
(1391, 243, '2022-02-18'),
(1392, 277, '2022-02-18'),
(1393, 248, '2022-02-18'),
(1394, 249, '2022-02-18'),
(1395, 265, '2022-02-18'),
(1396, 266, '2022-02-18'),
(1397, 252, '2022-02-18'),
(1398, 245, '2022-02-18'),
(1399, 246, '2022-02-18'),
(1400, 268, '2022-02-18'),
(1401, 253, '2022-02-18'),
(1402, 255, '2022-02-18'),
(1403, 256, '2022-02-18'),
(1404, 283, '2022-02-18'),
(1405, 257, '2022-02-18'),
(1406, 258, '2022-02-18'),
(1407, 285, '2022-02-18'),
(1408, 281, '2022-02-18'),
(1409, 280, '2022-02-18'),
(1410, 207, '2022-02-18'),
(1411, 203, '2022-02-18'),
(1412, 235, '2022-02-18'),
(1413, 264, '2022-02-18'),
(1414, 199, '2022-02-18'),
(1415, 282, '2022-02-18'),
(1416, 284, '2022-02-18'),
(1417, 204, '2022-02-18'),
(1418, 234, '2022-02-18'),
(1419, 210, '2022-02-20'),
(1420, 218, '2022-02-20'),
(1421, 211, '2022-02-20'),
(1422, 288, '2022-02-20'),
(1423, 215, '2022-02-20'),
(1424, 217, '2022-02-20'),
(1425, 209, '2022-02-20'),
(1426, 287, '2022-02-20'),
(1427, 214, '2022-02-20'),
(1428, 212, '2022-02-20'),
(1429, 213, '2022-02-20'),
(1430, 208, '2022-02-20'),
(1431, 289, '2022-02-20'),
(1432, 216, '2022-02-20'),
(1433, 209, '2022-02-21'),
(1434, 218, '2022-02-21'),
(1435, 203, '2022-02-21'),
(1436, 212, '2022-02-21'),
(1437, 287, '2022-02-21'),
(1438, 283, '2022-02-21'),
(1439, 209, '2022-02-21'),
(1440, 217, '2022-02-21'),
(1441, 213, '2022-02-21'),
(1442, 235, '2022-02-21'),
(1443, 215, '2022-02-21'),
(1444, 211, '2022-02-21'),
(1445, 274, '2022-02-21'),
(1446, 208, '2022-02-21'),
(1447, 205, '2022-02-21'),
(1448, 280, '2022-02-21'),
(1449, 207, '2022-02-21'),
(1450, 206, '2022-02-21'),
(1451, 288, '2022-02-21'),
(1452, 285, '2022-02-21'),
(1453, 286, '2022-02-21'),
(1454, 212, '2022-02-21'),
(1455, 264, '2022-02-21'),
(1456, 277, '2022-02-21'),
(1457, 200, '2022-02-21'),
(1458, 244, '2022-02-21'),
(1459, 289, '2022-02-21'),
(1460, 204, '2022-02-21'),
(1461, 281, '2022-02-21'),
(1462, 287, '2022-02-21'),
(1463, 216, '2022-02-21'),
(1464, 201, '2022-02-21'),
(1465, 210, '2022-02-21'),
(1466, 214, '2022-02-21'),
(1467, 279, '2022-02-21'),
(1468, 278, '2022-02-21'),
(1469, 248, '2022-02-21'),
(1470, 258, '2022-02-21'),
(1471, 257, '2022-02-21'),
(1472, 266, '2022-02-21'),
(1473, 253, '2022-02-21'),
(1474, 245, '2022-02-21'),
(1475, 238, '2022-02-21'),
(1476, 236, '2022-02-21'),
(1477, 265, '2022-02-21'),
(1478, 237, '2022-02-21'),
(1479, 260, '2022-02-21'),
(1480, 240, '2022-02-21'),
(1481, 256, '2022-02-21'),
(1482, 249, '2022-02-21'),
(1483, 243, '2022-02-21'),
(1484, 268, '2022-02-21'),
(1485, 255, '2022-02-21'),
(1486, 261, '2022-02-21'),
(1487, 263, '2022-02-21'),
(1488, 269, '2022-02-21'),
(1489, 262, '2022-02-21'),
(1490, 241, '2022-02-21'),
(1491, 239, '2022-02-21'),
(1492, 252, '2022-02-21'),
(1493, 259, '2022-02-21'),
(1494, 218, '2022-02-21'),
(1495, 203, '2022-02-21'),
(1496, 242, '2022-02-21'),
(1497, 199, '2022-02-21'),
(1498, 246, '2022-02-21'),
(1499, 276, '2022-02-21'),
(1500, 284, '2022-02-21'),
(1501, 282, '2022-02-21'),
(1502, 247, '2022-02-21'),
(1503, 202, '2022-02-21'),
(1504, 234, '2022-02-21'),
(1505, 202, '2022-02-21'),
(1506, 210, '2022-02-24'),
(1507, 218, '2022-02-24'),
(1508, 211, '2022-02-24'),
(1509, 288, '2022-02-24'),
(1510, 215, '2022-02-24'),
(1511, 217, '2022-02-24'),
(1512, 209, '2022-02-24'),
(1513, 287, '2022-02-24'),
(1514, 214, '2022-02-24'),
(1515, 212, '2022-02-24'),
(1516, 213, '2022-02-24'),
(1517, 208, '2022-02-24'),
(1518, 289, '2022-02-24'),
(1519, 216, '2022-02-24'),
(1520, 209, '2022-02-26'),
(1521, 201, '2022-03-01'),
(1522, 209, '2022-03-02'),
(1523, 209, '2022-03-03'),
(1524, 206, '2022-03-04'),
(1525, 199, '2022-03-04'),
(1526, 204, '2022-03-04'),
(1527, 205, '2022-03-04'),
(1528, 200, '2022-03-04'),
(1529, 201, '2022-03-04'),
(1530, 207, '2022-03-04'),
(1531, 202, '2022-03-04'),
(1532, 203, '2022-03-04'),
(1533, 234, '2022-03-04'),
(1534, 286, '2022-03-04'),
(1535, 278, '2022-03-04'),
(1536, 279, '2022-03-04'),
(1537, 274, '2022-03-04'),
(1538, 276, '2022-03-04'),
(1539, 277, '2022-03-04'),
(1540, 283, '2022-03-04'),
(1541, 285, '2022-03-04'),
(1542, 281, '2022-03-04'),
(1543, 280, '2022-03-04'),
(1544, 235, '2022-03-04'),
(1545, 264, '2022-03-04'),
(1546, 247, '2022-03-04'),
(1547, 259, '2022-03-04'),
(1548, 260, '2022-03-04'),
(1549, 269, '2022-03-04'),
(1550, 236, '2022-03-04'),
(1551, 237, '2022-03-04'),
(1552, 238, '2022-03-04'),
(1553, 261, '2022-03-04'),
(1554, 241, '2022-03-04'),
(1555, 262, '2022-03-04'),
(1556, 263, '2022-03-04'),
(1557, 239, '2022-03-04'),
(1558, 240, '2022-03-04'),
(1559, 242, '2022-03-04'),
(1560, 243, '2022-03-04'),
(1561, 248, '2022-03-04'),
(1562, 249, '2022-03-04'),
(1563, 265, '2022-03-04'),
(1564, 266, '2022-03-04'),
(1565, 267, '2022-03-04'),
(1566, 250, '2022-03-04'),
(1567, 251, '2022-03-04'),
(1568, 252, '2022-03-04'),
(1569, 245, '2022-03-04'),
(1570, 246, '2022-03-04'),
(1571, 268, '2022-03-04'),
(1572, 253, '2022-03-04'),
(1573, 254, '2022-03-04'),
(1574, 255, '2022-03-04'),
(1575, 256, '2022-03-04'),
(1576, 257, '2022-03-04'),
(1577, 258, '2022-03-04'),
(1578, 201, '2022-03-04'),
(1579, 282, '2022-03-05'),
(1580, 286, '2022-03-05'),
(1581, 284, '2022-03-05'),
(1582, 279, '2022-03-05'),
(1583, 278, '2022-03-05'),
(1584, 201, '2022-03-06'),
(1585, 201, '2022-03-07'),
(1586, 278, '2022-03-08'),
(1587, 288, '2022-03-09'),
(1588, 287, '2022-03-09'),
(1589, 289, '2022-03-09'),
(1590, 210, '2022-03-12'),
(1591, 211, '2022-03-12'),
(1592, 213, '2022-03-12'),
(1593, 208, '2022-03-12'),
(1594, 214, '2022-03-14'),
(1595, 209, '2022-03-14'),
(1596, 218, '2022-03-14'),
(1597, 215, '2022-03-14'),
(1598, 217, '2022-03-14'),
(1599, 216, '2022-03-14'),
(1600, 212, '2022-03-14'),
(1601, 199, '2022-03-19'),
(1602, 206, '2022-03-19'),
(1603, 204, '2022-03-19'),
(1604, 207, '2022-03-19'),
(1605, 288, '2022-03-19'),
(1606, 287, '2022-03-19'),
(1607, 289, '2022-03-19'),
(1608, 205, '2022-03-19'),
(1609, 200, '2022-03-19'),
(1610, 201, '2022-03-19'),
(1611, 202, '2022-03-19'),
(1612, 203, '2022-03-20'),
(1613, 236, '2022-03-20'),
(1614, 238, '2022-03-20'),
(1615, 237, '2022-03-20'),
(1616, 241, '2022-03-20'),
(1617, 239, '2022-03-20'),
(1618, 240, '2022-03-20'),
(1619, 242, '2022-03-20'),
(1620, 243, '2022-03-20'),
(1621, 210, '2022-03-21'),
(1622, 218, '2022-03-21'),
(1623, 211, '2022-03-21'),
(1624, 288, '2022-03-21'),
(1625, 215, '2022-03-21'),
(1626, 217, '2022-03-21'),
(1627, 209, '2022-03-21'),
(1628, 287, '2022-03-21'),
(1629, 214, '2022-03-21'),
(1630, 212, '2022-03-21'),
(1631, 213, '2022-03-21'),
(1632, 208, '2022-03-21'),
(1633, 289, '2022-03-21'),
(1634, 216, '2022-03-21'),
(1635, 202, '2022-03-21'),
(1636, 247, '2022-03-21'),
(1637, 259, '2022-03-21'),
(1638, 260, '2022-03-21'),
(1639, 269, '2022-03-21'),
(1640, 236, '2022-03-21'),
(1641, 205, '2022-03-21'),
(1642, 200, '2022-03-21'),
(1643, 201, '2022-03-21'),
(1644, 237, '2022-03-21'),
(1645, 238, '2022-03-21'),
(1646, 261, '2022-03-21'),
(1647, 241, '2022-03-21'),
(1648, 262, '2022-03-21'),
(1649, 263, '2022-03-21'),
(1650, 244, '2022-03-21'),
(1651, 206, '2022-03-21'),
(1652, 286, '2022-03-21'),
(1653, 278, '2022-03-21'),
(1654, 279, '2022-03-21'),
(1655, 274, '2022-03-21'),
(1656, 276, '2022-03-21'),
(1657, 239, '2022-03-21'),
(1658, 240, '2022-03-21'),
(1659, 242, '2022-03-21'),
(1660, 243, '2022-03-21'),
(1661, 277, '2022-03-21'),
(1662, 248, '2022-03-21'),
(1663, 249, '2022-03-21'),
(1664, 265, '2022-03-21'),
(1665, 266, '2022-03-21'),
(1666, 267, '2022-03-21'),
(1667, 250, '2022-03-21'),
(1668, 251, '2022-03-21'),
(1669, 252, '2022-03-21'),
(1670, 245, '2022-03-21'),
(1671, 246, '2022-03-21'),
(1672, 268, '2022-03-21'),
(1673, 253, '2022-03-21'),
(1674, 254, '2022-03-21'),
(1675, 255, '2022-03-21'),
(1676, 256, '2022-03-21'),
(1677, 283, '2022-03-21'),
(1678, 257, '2022-03-21'),
(1679, 258, '2022-03-21'),
(1680, 285, '2022-03-21'),
(1681, 281, '2022-03-21'),
(1682, 280, '2022-03-21'),
(1683, 207, '2022-03-21'),
(1684, 203, '2022-03-21'),
(1685, 235, '2022-03-21'),
(1686, 264, '2022-03-21'),
(1687, 199, '2022-03-21'),
(1688, 282, '2022-03-21'),
(1689, 284, '2022-03-21'),
(1690, 204, '2022-03-21'),
(1691, 234, '2022-03-21'),
(1692, 245, '2022-03-22'),
(1693, 210, '2022-03-23'),
(1694, 213, '2022-03-23'),
(1695, 208, '2022-03-23'),
(1696, 211, '2022-03-23'),
(1697, 234, '2022-03-24'),
(1698, 286, '2022-03-24'),
(1699, 278, '2022-03-24'),
(1700, 279, '2022-03-24'),
(1701, 274, '2022-03-24'),
(1702, 276, '2022-03-24'),
(1703, 277, '2022-03-24'),
(1704, 283, '2022-03-24'),
(1705, 285, '2022-03-24'),
(1706, 281, '2022-03-24'),
(1707, 280, '2022-03-24'),
(1708, 235, '2022-03-24'),
(1709, 264, '2022-03-24'),
(1710, 247, '2022-03-24'),
(1711, 259, '2022-03-24'),
(1712, 260, '2022-03-24'),
(1713, 269, '2022-03-24'),
(1714, 261, '2022-03-24'),
(1715, 262, '2022-03-24'),
(1716, 263, '2022-03-24'),
(1717, 248, '2022-03-24'),
(1718, 249, '2022-03-24'),
(1719, 265, '2022-03-24'),
(1720, 266, '2022-03-24'),
(1721, 246, '2022-03-24'),
(1722, 268, '2022-03-24'),
(1723, 253, '2022-03-24'),
(1724, 254, '2022-03-24'),
(1725, 255, '2022-03-24'),
(1726, 256, '2022-03-24'),
(1727, 257, '2022-03-24'),
(1728, 258, '2022-03-24'),
(1729, 267, '2022-03-25'),
(1730, 250, '2022-03-25'),
(1731, 251, '2022-03-25'),
(1732, 252, '2022-03-25'),
(1733, 214, '2022-03-25'),
(1734, 209, '2022-03-25'),
(1735, 218, '2022-03-26'),
(1736, 215, '2022-03-26'),
(1737, 217, '2022-03-26'),
(1738, 216, '2022-03-26'),
(1739, 212, '2022-03-26'),
(1740, 216, '2022-03-26'),
(1741, 210, '2022-03-26'),
(1742, 214, '2022-03-26'),
(1743, 209, '2022-03-26'),
(1744, 208, '2022-03-26'),
(1745, 211, '2022-03-26'),
(1746, 212, '2022-03-26'),
(1747, 213, '2022-03-26'),
(1748, 217, '2022-03-26'),
(1749, 287, '2022-03-26'),
(1750, 288, '2022-03-26'),
(1751, 218, '2022-03-26'),
(1752, 289, '2022-03-26'),
(1753, 215, '2022-03-26'),
(1754, 288, '2022-03-29'),
(1755, 287, '2022-03-29'),
(1756, 289, '2022-03-29'),
(1757, 199, '2022-04-02'),
(1758, 206, '2022-04-02'),
(1759, 204, '2022-04-02'),
(1760, 210, '2022-04-02'),
(1761, 218, '2022-04-02'),
(1762, 211, '2022-04-02'),
(1763, 288, '2022-04-02'),
(1764, 215, '2022-04-02'),
(1765, 217, '2022-04-02'),
(1766, 209, '2022-04-02'),
(1767, 287, '2022-04-02'),
(1768, 214, '2022-04-02'),
(1769, 212, '2022-04-02'),
(1770, 213, '2022-04-02'),
(1771, 208, '2022-04-02'),
(1772, 289, '2022-04-02'),
(1773, 216, '2022-04-02'),
(1774, 210, '2022-04-02'),
(1775, 213, '2022-04-02'),
(1776, 208, '2022-04-02'),
(1777, 211, '2022-04-03'),
(1778, 207, '2022-04-03'),
(1779, 202, '2022-04-03'),
(1780, 247, '2022-04-03'),
(1781, 259, '2022-04-03'),
(1782, 260, '2022-04-03'),
(1783, 269, '2022-04-03'),
(1784, 236, '2022-04-03'),
(1785, 205, '2022-04-03'),
(1786, 200, '2022-04-03'),
(1787, 201, '2022-04-03'),
(1788, 237, '2022-04-03'),
(1789, 238, '2022-04-03'),
(1790, 261, '2022-04-03'),
(1791, 241, '2022-04-03'),
(1792, 262, '2022-04-03'),
(1793, 263, '2022-04-03'),
(1794, 244, '2022-04-03'),
(1795, 206, '2022-04-03'),
(1796, 286, '2022-04-03'),
(1797, 278, '2022-04-03'),
(1798, 279, '2022-04-03'),
(1799, 274, '2022-04-03'),
(1800, 276, '2022-04-03'),
(1801, 239, '2022-04-03'),
(1802, 240, '2022-04-03'),
(1803, 242, '2022-04-03'),
(1804, 243, '2022-04-03'),
(1805, 277, '2022-04-03'),
(1806, 248, '2022-04-03'),
(1807, 249, '2022-04-03'),
(1808, 265, '2022-04-03'),
(1809, 266, '2022-04-03'),
(1810, 267, '2022-04-03'),
(1811, 250, '2022-04-03'),
(1812, 251, '2022-04-03'),
(1813, 252, '2022-04-03'),
(1814, 245, '2022-04-03'),
(1815, 246, '2022-04-03'),
(1816, 268, '2022-04-03'),
(1817, 253, '2022-04-03'),
(1818, 254, '2022-04-03'),
(1819, 255, '2022-04-03'),
(1820, 256, '2022-04-03'),
(1821, 283, '2022-04-03'),
(1822, 257, '2022-04-03'),
(1823, 258, '2022-04-03'),
(1824, 285, '2022-04-03'),
(1825, 281, '2022-04-03'),
(1826, 280, '2022-04-03'),
(1827, 207, '2022-04-03'),
(1828, 203, '2022-04-03'),
(1829, 235, '2022-04-03'),
(1830, 264, '2022-04-03'),
(1831, 199, '2022-04-03'),
(1832, 282, '2022-04-03'),
(1833, 284, '2022-04-03'),
(1834, 204, '2022-04-03'),
(1835, 234, '2022-04-05'),
(1836, 202, '2022-04-05'),
(1837, 218, '2022-04-05'),
(1838, 215, '2022-04-05'),
(1839, 212, '2022-04-05'),
(1840, 217, '2022-04-05'),
(1841, 205, '2022-04-05'),
(1842, 216, '2022-04-05'),
(1843, 200, '2022-04-05'),
(1844, 209, '2022-04-05'),
(1845, 201, '2022-04-05'),
(1846, 203, '2022-04-05'),
(1847, 214, '2022-04-05'),
(1848, 236, '2022-04-06'),
(1849, 238, '2022-04-06'),
(1850, 237, '2022-04-06'),
(1851, 241, '2022-04-06'),
(1852, 239, '2022-04-06'),
(1853, 240, '2022-04-06'),
(1854, 242, '2022-04-06'),
(1855, 243, '2022-04-06'),
(1856, 202, '2022-04-07'),
(1857, 288, '2022-04-08'),
(1858, 287, '2022-04-08'),
(1859, 289, '2022-04-08'),
(1860, 241, '2022-04-08'),
(1861, 215, '2022-04-08'),
(1862, 207, '2022-04-09'),
(1863, 245, '2022-04-09'),
(1864, 236, '2022-04-09'),
(1865, 238, '2022-04-10'),
(1866, 266, '2022-04-10'),
(1867, 260, '2022-04-10'),
(1868, 216, '2022-04-11'),
(1869, 210, '2022-04-11'),
(1870, 214, '2022-04-11'),
(1871, 209, '2022-04-11'),
(1872, 208, '2022-04-11'),
(1873, 264, '2022-04-11'),
(1874, 199, '2022-04-11'),
(1875, 286, '2022-04-11'),
(1876, 207, '2022-04-11'),
(1877, 200, '2022-04-11'),
(1878, 204, '2022-04-11'),
(1879, 281, '2022-04-11'),
(1880, 244, '2022-04-11'),
(1881, 235, '2022-04-11'),
(1882, 211, '2022-04-11'),
(1883, 212, '2022-04-11'),
(1884, 213, '2022-04-11'),
(1885, 276, '2022-04-11'),
(1886, 283, '2022-04-11'),
(1887, 280, '2022-04-11'),
(1888, 285, '2022-04-11'),
(1889, 274, '2022-04-11'),
(1890, 284, '2022-04-11'),
(1891, 217, '2022-04-11'),
(1892, 206, '2022-04-11'),
(1893, 282, '2022-04-11'),
(1894, 287, '2022-04-11'),
(1895, 277, '2022-04-11'),
(1896, 288, '2022-04-11'),
(1897, 279, '2022-04-11'),
(1898, 203, '2022-04-11'),
(1899, 218, '2022-04-11'),
(1900, 278, '2022-04-11'),
(1901, 205, '2022-04-11'),
(1902, 202, '2022-04-11'),
(1903, 201, '2022-04-11'),
(1904, 259, '2022-04-11'),
(1905, 260, '2022-04-11'),
(1906, 269, '2022-04-11'),
(1907, 263, '2022-04-11'),
(1908, 262, '2022-04-11'),
(1909, 289, '2022-04-11'),
(1910, 252, '2022-04-11'),
(1911, 238, '2022-04-11'),
(1912, 239, '2022-04-11'),
(1913, 261, '2022-04-11'),
(1914, 241, '2022-04-11'),
(1915, 240, '2022-04-11'),
(1916, 247, '2022-04-11'),
(1917, 215, '2022-04-11'),
(1918, 268, '2022-04-11'),
(1919, 249, '2022-04-11'),
(1920, 210, '2022-04-12'),
(1921, 208, '2022-04-12'),
(1922, 211, '2022-04-12'),
(1923, 213, '2022-04-13'),
(1924, 235, '2022-04-14'),
(1925, 234, '2022-04-14'),
(1926, 278, '2022-04-14'),
(1927, 279, '2022-04-14'),
(1928, 274, '2022-04-14'),
(1929, 286, '2022-04-14'),
(1930, 276, '2022-04-14'),
(1931, 277, '2022-04-14'),
(1932, 259, '2022-04-14'),
(1933, 283, '2022-04-14'),
(1934, 247, '2022-04-14'),
(1935, 285, '2022-04-14'),
(1936, 281, '2022-04-14'),
(1937, 260, '2022-04-14'),
(1938, 280, '2022-04-14'),
(1939, 269, '2022-04-14'),
(1940, 261, '2022-04-14'),
(1941, 262, '2022-04-14'),
(1942, 235, '2022-04-14'),
(1943, 263, '2022-04-14'),
(1944, 264, '2022-04-14'),
(1945, 248, '2022-04-14'),
(1946, 249, '2022-04-14'),
(1947, 265, '2022-04-14'),
(1948, 266, '2022-04-14'),
(1949, 246, '2022-04-14'),
(1950, 268, '2022-04-14'),
(1951, 253, '2022-04-15'),
(1952, 254, '2022-04-15'),
(1953, 255, '2022-04-15'),
(1954, 256, '2022-04-15'),
(1955, 257, '2022-04-15'),
(1956, 258, '2022-04-15'),
(1957, 267, '2022-04-15'),
(1958, 250, '2022-04-15'),
(1959, 251, '2022-04-15'),
(1960, 252, '2022-04-15'),
(1961, 218, '2022-04-16'),
(1962, 215, '2022-04-16'),
(1963, 217, '2022-04-16'),
(1964, 212, '2022-04-16'),
(1965, 216, '2022-04-16'),
(1966, 209, '2022-04-16'),
(1967, 214, '2022-04-16'),
(1968, 199, '2022-04-16'),
(1969, 206, '2022-04-16'),
(1970, 204, '2022-04-16'),
(1971, 288, '2022-04-17'),
(1972, 287, '2022-04-17'),
(1973, 289, '2022-04-17'),
(1974, 207, '2022-04-17'),
(1975, 218, '2022-04-17'),
(1976, 287, '2022-04-19'),
(1977, 288, '2022-04-19'),
(1978, 215, '2022-04-19'),
(1979, 210, '2022-04-20'),
(1980, 202, '2022-04-20'),
(1981, 289, '2022-04-21'),
(1982, 249, '2022-04-21'),
(1983, 245, '2022-04-21'),
(1984, 287, '2022-04-21'),
(1985, 288, '2022-04-21'),
(1986, 262, '2022-04-21'),
(1987, 215, '2022-04-21'),
(1988, 238, '2022-04-21'),
(1989, 243, '2022-04-21'),
(1990, 200, '2022-04-21'),
(1991, 201, '2022-04-21'),
(1992, 203, '2022-04-21'),
(1993, 205, '2022-04-21'),
(1994, 241, '2022-04-21'),
(1995, 237, '2022-04-21'),
(1996, 239, '2022-04-21'),
(1997, 240, '2022-04-21'),
(1998, 253, '2022-04-21'),
(1999, 236, '2022-04-21'),
(2000, 242, '2022-04-21'),
(2001, 214, '2022-04-21'),
(2002, 258, '2022-04-22'),
(2003, 209, '2022-04-22'),
(2004, 267, '2022-04-22'),
(2005, 264, '2022-04-22'),
(2006, 210, '2022-04-22'),
(2007, 255, '2022-04-22'),
(2008, 281, '2022-04-22'),
(2009, 216, '2022-04-22'),
(2010, 212, '2022-04-22'),
(2011, 261, '2022-04-22'),
(2012, 203, '2022-04-22'),
(2013, 199, '2022-04-22'),
(2014, 268, '2022-04-22'),
(2015, 243, '2022-04-22'),
(2016, 284, '2022-04-22'),
(2017, 208, '2022-04-22'),
(2018, 208, '2022-04-22'),
(2019, 211, '2022-04-22'),
(2020, 213, '2022-04-22'),
(2021, 213, '2022-04-22'),
(2022, 251, '2022-04-22'),
(2023, 269, '2022-04-22'),
(2024, 246, '2022-04-23'),
(2025, 252, '2022-04-23'),
(2026, 277, '2022-04-23'),
(2027, 206, '2022-04-23'),
(2028, 248, '2022-04-23'),
(2029, 289, '2022-04-23'),
(2030, 211, '2022-04-23'),
(2031, 249, '2022-04-23'),
(2032, 245, '2022-04-23'),
(2033, 239, '2022-04-23'),
(2034, 205, '2022-04-23'),
(2035, 207, '2022-04-23'),
(2036, 286, '2022-04-23'),
(2037, 244, '2022-04-23'),
(2038, 250, '2022-04-23'),
(2039, 260, '2022-04-23'),
(2040, 259, '2022-04-23'),
(2041, 242, '2022-04-23'),
(2042, 214, '2022-04-23'),
(2043, 266, '2022-04-24'),
(2044, 253, '2022-04-24'),
(2045, 276, '2022-04-24'),
(2046, 204, '2022-04-24'),
(2047, 279, '2022-04-24'),
(2048, 238, '2022-04-24'),
(2049, 202, '2022-04-24'),
(2050, 274, '2022-04-24'),
(2051, 209, '2022-04-24'),
(2052, 263, '2022-04-24'),
(2053, 258, '2022-04-24'),
(2054, 267, '2022-04-24'),
(2055, 217, '2022-04-24'),
(2056, 264, '2022-04-24'),
(2057, 237, '2022-04-24'),
(2058, 255, '2022-04-24'),
(2059, 281, '2022-04-24'),
(2060, 216, '2022-04-24'),
(2061, 212, '2022-04-24'),
(2062, 261, '2022-04-24'),
(2063, 203, '2022-04-24'),
(2064, 199, '2022-04-24'),
(2065, 243, '2022-04-24'),
(2066, 268, '2022-04-24'),
(2067, 208, '2022-04-24'),
(2068, 284, '2022-04-24'),
(2069, 213, '2022-04-25'),
(2070, 236, '2022-04-25'),
(2071, 256, '2022-04-25'),
(2072, 201, '2022-04-25'),
(2073, 265, '2022-04-25'),
(2074, 269, '2022-04-25'),
(2075, 247, '2022-04-25'),
(2076, 252, '2022-04-25'),
(2077, 277, '2022-04-25'),
(2078, 248, '2022-04-25'),
(2079, 282, '2022-04-25'),
(2080, 205, '2022-04-25'),
(2081, 207, '2022-04-25'),
(2082, 286, '2022-04-26'),
(2083, 218, '2022-04-26'),
(2084, 244, '2022-04-26'),
(2085, 260, '2022-04-26'),
(2086, 250, '2022-04-26'),
(2087, 215, '2022-04-26'),
(2088, 235, '2022-04-26'),
(2089, 254, '2022-04-26'),
(2090, 266, '2022-04-26'),
(2091, 214, '2022-04-26'),
(2092, 217, '2022-04-26'),
(2093, 216, '2022-04-26'),
(2094, 209, '2022-04-26'),
(2095, 283, '2022-04-26'),
(2096, 279, '2022-04-26'),
(2097, 212, '2022-04-26'),
(2098, 204, '2022-04-26'),
(2099, 238, '2022-04-26'),
(2100, 200, '2022-04-26'),
(2101, 274, '2022-04-26'),
(2102, 263, '2022-04-26'),
(2103, 267, '2022-04-26'),
(2104, 264, '2022-04-26'),
(2105, 237, '2022-04-26'),
(2106, 255, '2022-04-26'),
(2107, 281, '2022-04-26'),
(2108, 280, '2022-04-26'),
(2109, 212, '2022-04-26'),
(2110, 278, '2022-04-26'),
(2111, 288, '2022-04-26'),
(2112, 241, '2022-04-26'),
(2113, 289, '2022-04-26'),
(2114, 287, '2022-04-27'),
(2115, 208, '2022-04-27'),
(2116, 213, '2022-04-27'),
(2117, 203, '2022-04-27'),
(2118, 202, '2022-04-27'),
(2119, 212, '2022-04-27'),
(2120, 287, '2022-04-27'),
(2121, 248, '2022-04-27'),
(2122, 259, '2022-04-27'),
(2123, 218, '2022-04-27'),
(2124, 267, '2022-04-27'),
(2125, 289, '2022-04-27'),
(2126, 253, '2022-04-27'),
(2127, 204, '2022-04-27'),
(2128, 205, '2022-04-27'),
(2129, 280, '2022-04-27'),
(2130, 247, '2022-04-27'),
(2131, 286, '2022-04-27'),
(2132, 242, '2022-04-27'),
(2133, 238, '2022-04-27'),
(2134, 268, '2022-04-27'),
(2135, 200, '2022-04-27'),
(2136, 282, '2022-04-27'),
(2137, 216, '2022-04-27'),
(2138, 283, '2022-04-27'),
(2139, 246, '2022-04-27'),
(2140, 209, '2022-04-27'),
(2141, 250, '2022-04-27'),
(2142, 239, '2022-04-27'),
(2143, 260, '2022-04-27'),
(2144, 199, '2022-04-27'),
(2145, 266, '2022-04-27'),
(2146, 201, '2022-04-27'),
(2147, 288, '2022-04-27'),
(2148, 215, '2022-04-27'),
(2149, 257, '2022-04-27'),
(2150, 261, '2022-04-27'),
(2151, 249, '2022-04-27'),
(2152, 241, '2022-04-27'),
(2153, 255, '2022-04-27'),
(2154, 274, '2022-04-27'),
(2155, 214, '2022-04-27'),
(2156, 217, '2022-04-27'),
(2157, 265, '2022-04-27'),
(2158, 207, '2022-04-27'),
(2159, 279, '2022-04-27'),
(2160, 244, '2022-04-27'),
(2161, 236, '2022-04-27'),
(2162, 264, '2022-04-27'),
(2163, 254, '2022-04-27'),
(2164, 237, '2022-04-27'),
(2165, 240, '2022-04-27'),
(2166, 276, '2022-04-27'),
(2167, 284, '2022-04-27'),
(2168, 252, '2022-04-27'),
(2169, 285, '2022-04-27'),
(2170, 285, '2022-04-27'),
(2171, 234, '2022-04-27'),
(2172, 243, '2022-04-27'),
(2173, 235, '2022-04-27'),
(2174, 211, '2022-04-27'),
(2175, 269, '2022-04-27'),
(2176, 210, '2022-04-27'),
(2177, 262, '2022-04-27'),
(2178, 236, '2022-04-27'),
(2179, 206, '2022-04-27'),
(2180, 251, '2022-04-27'),
(2181, 277, '2022-04-27'),
(2182, 281, '2022-04-27'),
(2183, 256, '2022-04-27'),
(2184, 283, '2022-04-27'),
(2185, 280, '2022-04-27'),
(2186, 204, '2022-04-27'),
(2187, 208, '2022-04-27'),
(2188, 217, '2022-04-27'),
(2189, 203, '2022-04-27'),
(2190, 286, '2022-04-27'),
(2191, 206, '2022-04-27'),
(2192, 256, '2022-04-27'),
(2193, 277, '2022-04-27'),
(2194, 263, '2022-04-27'),
(2195, 261, '2022-04-27'),
(2196, 258, '2022-04-27'),
(2197, 234, '2022-04-27'),
(2198, 258, '2022-04-27'),
(2199, 253, '2022-04-27'),
(2200, 215, '2022-04-27'),
(2201, 243, '2022-04-27'),
(2202, 207, '2022-04-27'),
(2203, 288, '2022-04-27'),
(2204, 218, '2022-04-27'),
(2205, 210, '2022-04-27'),
(2206, 240, '2022-04-27'),
(2207, 269, '2022-04-27'),
(2208, 262, '2022-04-27'),
(2209, 254, '2022-04-27'),
(2210, 209, '2022-04-27'),
(2211, 235, '2022-04-27'),
(2212, 213, '2022-04-27'),
(2213, 246, '2022-04-27'),
(2214, 278, '2022-04-27'),
(2215, 211, '2022-04-27'),
(2216, 212, '2022-04-27'),
(2217, 249, '2022-04-27'),
(2218, 247, '2022-04-27'),
(2219, 245, '2022-04-27'),
(2220, 265, '2022-04-27'),
(2221, 287, '2022-04-27'),
(2222, 200, '2022-04-27'),
(2223, 237, '2022-04-27'),
(2224, 238, '2022-04-27'),
(2225, 241, '2022-04-27'),
(2226, 268, '2022-04-27'),
(2227, 202, '2022-04-27'),
(2228, 250, '2022-04-27'),
(2229, 252, '2022-04-27'),
(2230, 282, '2022-04-27'),
(2231, 284, '2022-04-27'),
(2232, 260, '2022-04-27'),
(2233, 285, '2022-04-27'),
(2234, 279, '2022-04-27'),
(2235, 242, '2022-04-27'),
(2236, 244, '2022-04-27'),
(2237, 199, '2022-04-27'),
(2238, 205, '2022-04-27'),
(2239, 236, '2022-04-27'),
(2240, 251, '2022-04-27'),
(2241, 257, '2022-04-27'),
(2242, 255, '2022-04-27'),
(2243, 248, '2022-04-27'),
(2244, 276, '2022-04-27'),
(2245, 259, '2022-04-27'),
(2246, 267, '2022-04-27'),
(2247, 266, '2022-04-27'),
(2248, 278, '2022-04-27'),
(2249, 216, '2022-04-27'),
(2250, 289, '2022-04-27'),
(2251, 265, '2022-04-27'),
(2252, 263, '2022-04-27'),
(2253, 264, '2022-04-27'),
(2254, 274, '2022-04-27'),
(2255, 201, '2022-04-27'),
(2256, 239, '2022-04-27'),
(2257, 245, '2022-04-27'),
(2258, 281, '2022-04-27'),
(2259, 214, '2022-04-27'),
(2260, 201, '2022-04-27'),
(2261, 240, '2022-04-27'),
(2262, 247, '2022-04-27'),
(2263, 245, '2022-04-27'),
(2264, 282, '2022-04-28'),
(2265, 205, '2022-04-28'),
(2266, 235, '2022-04-28'),
(2267, 200, '2022-04-28'),
(2268, 210, '2022-04-29'),
(2269, 218, '2022-04-29'),
(2270, 211, '2022-04-29'),
(2271, 288, '2022-04-29'),
(2272, 215, '2022-04-29'),
(2273, 217, '2022-04-29'),
(2274, 209, '2022-04-29'),
(2275, 287, '2022-04-29'),
(2276, 214, '2022-04-29'),
(2277, 212, '2022-04-29'),
(2278, 213, '2022-04-29'),
(2279, 208, '2022-04-29'),
(2280, 289, '2022-04-29'),
(2281, 216, '2022-04-29'),
(2282, 199, '2022-04-30'),
(2283, 206, '2022-04-30'),
(2284, 204, '2022-04-30'),
(2285, 210, '2022-05-02'),
(2286, 211, '2022-05-02'),
(2287, 213, '2022-05-02'),
(2288, 207, '2022-05-02'),
(2289, 208, '2022-05-02'),
(2290, 202, '2022-05-03'),
(2291, 247, '2022-05-03'),
(2292, 259, '2022-05-03'),
(2293, 260, '2022-05-03'),
(2294, 269, '2022-05-03'),
(2295, 236, '2022-05-03'),
(2296, 205, '2022-05-03'),
(2297, 200, '2022-05-03'),
(2298, 201, '2022-05-03'),
(2299, 237, '2022-05-03'),
(2300, 238, '2022-05-03'),
(2301, 261, '2022-05-03'),
(2302, 241, '2022-05-03'),
(2303, 262, '2022-05-03'),
(2304, 263, '2022-05-03'),
(2305, 244, '2022-05-03'),
(2306, 206, '2022-05-03'),
(2307, 286, '2022-05-03'),
(2308, 278, '2022-05-03'),
(2309, 279, '2022-05-03'),
(2310, 274, '2022-05-03'),
(2311, 276, '2022-05-03'),
(2312, 239, '2022-05-03'),
(2313, 240, '2022-05-03'),
(2314, 242, '2022-05-03'),
(2315, 243, '2022-05-03'),
(2316, 277, '2022-05-03'),
(2317, 248, '2022-05-03'),
(2318, 249, '2022-05-03'),
(2319, 265, '2022-05-03'),
(2320, 266, '2022-05-03'),
(2321, 267, '2022-05-03'),
(2322, 250, '2022-05-03'),
(2323, 251, '2022-05-03'),
(2324, 252, '2022-05-03'),
(2325, 245, '2022-05-03'),
(2326, 246, '2022-05-03'),
(2327, 268, '2022-05-03'),
(2328, 253, '2022-05-03'),
(2329, 254, '2022-05-03'),
(2330, 255, '2022-05-03'),
(2331, 256, '2022-05-03'),
(2332, 283, '2022-05-03'),
(2333, 257, '2022-05-03'),
(2334, 258, '2022-05-03'),
(2335, 285, '2022-05-03'),
(2336, 281, '2022-05-03'),
(2337, 280, '2022-05-03'),
(2338, 207, '2022-05-03'),
(2339, 203, '2022-05-03'),
(2340, 235, '2022-05-03'),
(2341, 264, '2022-05-03'),
(2342, 199, '2022-05-03'),
(2343, 282, '2022-05-03'),
(2344, 284, '2022-05-03'),
(2345, 204, '2022-05-03'),
(2346, 234, '2022-05-05'),
(2347, 259, '2022-05-05'),
(2348, 234, '2022-05-05'),
(2349, 278, '2022-05-05'),
(2350, 279, '2022-05-05'),
(2351, 274, '2022-05-05'),
(2352, 286, '2022-05-05'),
(2353, 276, '2022-05-05'),
(2354, 234, '2022-05-05'),
(2355, 277, '2022-05-05'),
(2356, 283, '2022-05-05'),
(2357, 285, '2022-05-05'),
(2358, 281, '2022-05-05'),
(2359, 280, '2022-05-06'),
(2360, 247, '2022-05-06'),
(2361, 260, '2022-05-06'),
(2362, 235, '2022-05-06'),
(2363, 269, '2022-05-06'),
(2364, 264, '2022-05-06'),
(2365, 261, '2022-05-06'),
(2366, 262, '2022-05-06'),
(2367, 263, '2022-05-06'),
(2368, 248, '2022-05-06'),
(2369, 249, '2022-05-06'),
(2370, 265, '2022-05-06'),
(2371, 251, '2022-05-06'),
(2372, 266, '2022-05-06'),
(2373, 246, '2022-05-06'),
(2374, 210, '2022-05-06'),
(2375, 288, '2022-05-06'),
(2376, 252, '2022-05-06'),
(2377, 268, '2022-05-06'),
(2378, 218, '2022-05-06'),
(2379, 253, '2022-05-06'),
(2380, 202, '2022-05-06'),
(2381, 254, '2022-05-06'),
(2382, 214, '2022-05-06'),
(2383, 255, '2022-05-06'),
(2384, 256, '2022-05-06'),
(2385, 257, '2022-05-06'),
(2386, 289, '2022-05-06'),
(2387, 258, '2022-05-06'),
(2388, 249, '2022-05-06'),
(2389, 212, '2022-05-06'),
(2390, 245, '2022-05-06'),
(2391, 217, '2022-05-06'),
(2392, 216, '2022-05-06'),
(2393, 209, '2022-05-06'),
(2394, 287, '2022-05-06'),
(2395, 267, '2022-05-06'),
(2396, 250, '2022-05-06'),
(2397, 215, '2022-05-06'),
(2398, 238, '2022-05-06'),
(2399, 243, '2022-05-06'),
(2400, 236, '2022-05-06'),
(2401, 241, '2022-05-06'),
(2402, 239, '2022-05-06'),
(2403, 237, '2022-05-06'),
(2404, 240, '2022-05-06'),
(2405, 242, '2022-05-06'),
(2406, 200, '2022-05-07'),
(2407, 201, '2022-05-07'),
(2408, 205, '2022-05-07'),
(2409, 203, '2022-05-07'),
(2410, 279, '2022-05-07'),
(2411, 199, '2022-05-07'),
(2412, 210, '2022-05-08'),
(2413, 218, '2022-05-08'),
(2414, 211, '2022-05-08'),
(2415, 288, '2022-05-08'),
(2416, 215, '2022-05-08'),
(2417, 217, '2022-05-08'),
(2418, 209, '2022-05-08'),
(2419, 287, '2022-05-08'),
(2420, 214, '2022-05-08'),
(2421, 212, '2022-05-08'),
(2422, 213, '2022-05-08'),
(2423, 208, '2022-05-08'),
(2424, 289, '2022-05-08'),
(2425, 216, '2022-05-08'),
(2426, 210, '2022-05-08'),
(2427, 262, '2022-05-08'),
(2428, 234, '2022-05-09'),
(2429, 202, '2022-05-09'),
(2430, 247, '2022-05-09'),
(2431, 259, '2022-05-09'),
(2432, 260, '2022-05-09'),
(2433, 269, '2022-05-09'),
(2434, 236, '2022-05-09'),
(2435, 205, '2022-05-09'),
(2436, 200, '2022-05-09'),
(2437, 201, '2022-05-09'),
(2438, 237, '2022-05-09'),
(2439, 238, '2022-05-09'),
(2440, 261, '2022-05-09'),
(2441, 241, '2022-05-09'),
(2442, 262, '2022-05-09'),
(2443, 263, '2022-05-09'),
(2444, 244, '2022-05-09'),
(2445, 206, '2022-05-09'),
(2446, 286, '2022-05-09'),
(2447, 278, '2022-05-09'),
(2448, 279, '2022-05-09'),
(2449, 274, '2022-05-09'),
(2450, 276, '2022-05-09'),
(2451, 239, '2022-05-09'),
(2452, 240, '2022-05-09'),
(2453, 242, '2022-05-09'),
(2454, 243, '2022-05-09'),
(2455, 277, '2022-05-09'),
(2456, 248, '2022-05-09'),
(2457, 249, '2022-05-09'),
(2458, 265, '2022-05-09'),
(2459, 266, '2022-05-09'),
(2460, 252, '2022-05-09'),
(2461, 245, '2022-05-09'),
(2462, 246, '2022-05-09'),
(2463, 268, '2022-05-09'),
(2464, 253, '2022-05-09'),
(2465, 255, '2022-05-09'),
(2466, 256, '2022-05-09'),
(2467, 283, '2022-05-09'),
(2468, 257, '2022-05-09'),
(2469, 258, '2022-05-09'),
(2470, 285, '2022-05-09'),
(2471, 281, '2022-05-09'),
(2472, 280, '2022-05-09'),
(2473, 207, '2022-05-09'),
(2474, 203, '2022-05-09'),
(2475, 235, '2022-05-09'),
(2476, 264, '2022-05-09'),
(2477, 199, '2022-05-09'),
(2478, 282, '2022-05-09'),
(2479, 284, '2022-05-09'),
(2480, 204, '2022-05-09'),
(2481, 214, '2022-05-09'),
(2482, 253, '2022-05-09'),
(2483, 203, '2022-05-10'),
(2484, 268, '2022-05-10'),
(2485, 284, '2022-05-10'),
(2486, 210, '2022-05-10'),
(2487, 218, '2022-05-10'),
(2488, 211, '2022-05-10'),
(2489, 288, '2022-05-10'),
(2490, 215, '2022-05-10'),
(2491, 217, '2022-05-10'),
(2492, 209, '2022-05-10'),
(2493, 287, '2022-05-10'),
(2494, 214, '2022-05-10'),
(2495, 212, '2022-05-10'),
(2496, 213, '2022-05-10'),
(2497, 208, '2022-05-10'),
(2498, 289, '2022-05-10'),
(2499, 216, '2022-05-10'),
(2500, 206, '2022-05-10'),
(2501, 211, '2022-05-10'),
(2502, 239, '2022-05-10'),
(2503, 262, '2022-05-11'),
(2504, 244, '2022-05-11'),
(2505, 260, '2022-05-11'),
(2506, 266, '2022-05-11'),
(2507, 214, '2022-05-11'),
(2508, 276, '2022-05-11'),
(2509, 253, '2022-05-11'),
(2510, 279, '2022-05-11'),
(2511, 274, '2022-05-11'),
(2512, 218, '2022-05-11'),
(2513, 280, '2022-05-12'),
(2514, 210, '2022-05-12'),
(2515, 203, '2022-05-12'),
(2516, 240, '2022-05-12'),
(2517, 252, '2022-05-12'),
(2518, 201, '2022-05-12'),
(2519, 213, '2022-05-12'),
(2520, 208, '2022-05-12'),
(2521, 259, '2022-05-13'),
(2522, 282, '2022-05-13'),
(2523, 211, '2022-05-13'),
(2524, 250, '2022-05-13'),
(2525, 238, '2022-05-13'),
(2526, 280, '2022-05-14'),
(2527, 278, '2022-05-14'),
(2528, 212, '2022-05-14'),
(2529, 241, '2022-05-14'),
(2530, 199, '2022-05-14'),
(2531, 285, '2022-05-14'),
(2532, 252, '2022-05-15'),
(2533, 240, '2022-05-15'),
(2534, 206, '2022-05-15'),
(2535, 204, '2022-05-15'),
(2536, 249, '2022-05-16'),
(2537, 288, '2022-05-16'),
(2538, 245, '2022-05-16'),
(2539, 278, '2022-05-16'),
(2540, 212, '2022-05-16'),
(2541, 241, '2022-05-16'),
(2542, 289, '2022-05-16'),
(2543, 287, '2022-05-16'),
(2544, 214, '2022-05-16'),
(2545, 285, '2022-05-17'),
(2546, 218, '2022-05-17'),
(2547, 217, '2022-05-17'),
(2548, 212, '2022-05-17'),
(2549, 216, '2022-05-17'),
(2550, 209, '2022-05-17'),
(2551, 215, '2022-05-17'),
(2552, 207, '2022-05-18'),
(2553, 209, '2022-05-19'),
(2554, 218, '2022-05-19'),
(2555, 200, '2022-05-19'),
(2556, 212, '2022-05-19'),
(2557, 204, '2022-05-19'),
(2558, 203, '2022-05-19'),
(2559, 289, '2022-05-19'),
(2560, 209, '2022-05-19'),
(2561, 218, '2022-05-19'),
(2562, 212, '2022-05-19'),
(2563, 258, '2022-05-19'),
(2564, 248, '2022-05-19'),
(2565, 257, '2022-05-19'),
(2566, 283, '2022-05-19'),
(2567, 209, '2022-05-19'),
(2568, 217, '2022-05-19'),
(2569, 213, '2022-05-19'),
(2570, 266, '2022-05-19'),
(2571, 235, '2022-05-19'),
(2572, 215, '2022-05-19'),
(2573, 218, '2022-05-19'),
(2574, 253, '2022-05-19'),
(2575, 238, '2022-05-19'),
(2576, 236, '2022-05-19'),
(2577, 211, '2022-05-19'),
(2578, 274, '2022-05-19'),
(2579, 208, '2022-05-19'),
(2580, 237, '2022-05-19'),
(2581, 260, '2022-05-19'),
(2582, 240, '2022-05-19'),
(2583, 205, '2022-05-19'),
(2584, 256, '2022-05-19'),
(2585, 249, '2022-05-19'),
(2586, 280, '2022-05-19'),
(2587, 268, '2022-05-19'),
(2588, 207, '2022-05-19'),
(2589, 206, '2022-05-19'),
(2590, 288, '2022-05-19'),
(2591, 234, '2022-05-19'),
(2592, 285, '2022-05-19'),
(2593, 255, '2022-05-19'),
(2594, 286, '2022-05-19'),
(2595, 261, '2022-05-19'),
(2596, 202, '2022-05-19'),
(2597, 212, '2022-05-19'),
(2598, 277, '2022-05-19'),
(2599, 200, '2022-05-19'),
(2600, 263, '2022-05-19'),
(2601, 203, '2022-05-19'),
(2602, 244, '2022-05-19'),
(2603, 289, '2022-05-19'),
(2604, 204, '2022-05-19'),
(2605, 281, '2022-05-19'),
(2606, 287, '2022-05-19'),
(2607, 269, '2022-05-19'),
(2608, 216, '2022-05-19'),
(2609, 201, '2022-05-19'),
(2610, 262, '2022-05-19'),
(2611, 241, '2022-05-19'),
(2612, 210, '2022-05-19'),
(2613, 278, '2022-05-19'),
(2614, 239, '2022-05-19'),
(2615, 252, '2022-05-19'),
(2616, 214, '2022-05-19'),
(2617, 259, '2022-05-19'),
(2618, 279, '2022-05-19'),
(2619, 265, '2022-05-19'),
(2620, 247, '2022-05-19'),
(2621, 245, '2022-05-19'),
(2622, 242, '2022-05-19'),
(2623, 243, '2022-05-19'),
(2624, 199, '2022-05-19'),
(2625, 264, '2022-05-19'),
(2626, 276, '2022-05-19'),
(2627, 246, '2022-05-19'),
(2628, 282, '2022-05-19'),
(2629, 284, '2022-05-19'),
(2630, 289, '2022-05-19'),
(2631, 288, '2022-05-19'),
(2632, 256, '2022-05-20'),
(2633, 215, '2022-05-20'),
(2634, 242, '2022-05-20'),
(2635, 278, '2022-05-20'),
(2636, 202, '2022-05-20'),
(2637, 282, '2022-05-21'),
(2638, 202, '2022-05-21'),
(2639, 287, '2022-05-21'),
(2640, 210, '2022-05-22'),
(2641, 200, '2022-05-22'),
(2642, 201, '2022-05-22'),
(2643, 205, '2022-05-22'),
(2644, 203, '2022-05-22'),
(2645, 209, '2022-05-22'),
(2646, 216, '2022-05-22'),
(2647, 261, '2022-05-23'),
(2648, 213, '2022-05-23'),
(2649, 208, '2022-05-23'),
(2650, 211, '2022-05-23'),
(2651, 238, '2022-05-23'),
(2652, 243, '2022-05-23'),
(2653, 236, '2022-05-23'),
(2654, 241, '2022-05-23'),
(2655, 239, '2022-05-23'),
(2656, 237, '2022-05-23'),
(2657, 240, '2022-05-23'),
(2658, 242, '2022-05-23'),
(2659, 218, '2022-05-23'),
(2660, 264, '2022-05-23'),
(2661, 199, '2022-05-24'),
(2662, 259, '2022-05-24'),
(2663, 254, '2022-05-24'),
(2664, 217, '2022-05-25'),
(2665, 216, '2022-05-25'),
(2666, 210, '2022-05-25'),
(2667, 214, '2022-05-25'),
(2668, 209, '2022-05-25'),
(2669, 208, '2022-05-25'),
(2670, 264, '2022-05-25'),
(2671, 199, '2022-05-25'),
(2672, 286, '2022-05-25'),
(2673, 207, '2022-05-25'),
(2674, 200, '2022-05-25'),
(2675, 204, '2022-05-25'),
(2676, 281, '2022-05-25'),
(2677, 244, '2022-05-25'),
(2678, 235, '2022-05-25'),
(2679, 211, '2022-05-25'),
(2680, 212, '2022-05-25'),
(2681, 213, '2022-05-25'),
(2682, 276, '2022-05-25'),
(2683, 283, '2022-05-25'),
(2684, 280, '2022-05-25'),
(2685, 285, '2022-05-25'),
(2686, 274, '2022-05-25'),
(2687, 284, '2022-05-25'),
(2688, 217, '2022-05-25'),
(2689, 206, '2022-05-25'),
(2690, 282, '2022-05-25'),
(2691, 287, '2022-05-25'),
(2692, 277, '2022-05-25'),
(2693, 288, '2022-05-25'),
(2694, 279, '2022-05-25'),
(2695, 203, '2022-05-25'),
(2696, 218, '2022-05-25'),
(2697, 278, '2022-05-25'),
(2698, 205, '2022-05-25'),
(2699, 202, '2022-05-25'),
(2700, 201, '2022-05-25'),
(2701, 259, '2022-05-25'),
(2702, 260, '2022-05-25'),
(2703, 269, '2022-05-25'),
(2704, 263, '2022-05-25'),
(2705, 262, '2022-05-25'),
(2706, 289, '2022-05-25'),
(2707, 252, '2022-05-25'),
(2708, 238, '2022-05-25'),
(2709, 239, '2022-05-25'),
(2710, 261, '2022-05-25'),
(2711, 241, '2022-05-25'),
(2712, 240, '2022-05-25'),
(2713, 247, '2022-05-25'),
(2714, 215, '2022-05-25'),
(2715, 268, '2022-05-25'),
(2716, 249, '2022-05-25'),
(2717, 265, '2022-05-25'),
(2718, 246, '2022-05-25'),
(2719, 237, '2022-05-25'),
(2720, 248, '2022-05-25'),
(2721, 245, '2022-05-25'),
(2722, 256, '2022-05-25'),
(2723, 253, '2022-05-25'),
(2724, 267, '2022-05-25'),
(2725, 242, '2022-05-25'),
(2726, 243, '2022-05-25'),
(2727, 255, '2022-05-25'),
(2728, 258, '2022-05-25'),
(2729, 257, '2022-05-25'),
(2730, 236, '2022-05-25'),
(2731, 234, '2022-05-25'),
(2732, 266, '2022-05-25'),
(2733, 250, '2022-05-25'),
(2734, 254, '2022-05-25'),
(2735, 251, '2022-05-25'),
(2736, 234, '2022-05-25'),
(2737, 210, '2022-05-25'),
(2738, 218, '2022-05-25'),
(2739, 211, '2022-05-25'),
(2740, 288, '2022-05-25'),
(2741, 215, '2022-05-25'),
(2742, 217, '2022-05-25'),
(2743, 209, '2022-05-25'),
(2744, 287, '2022-05-25'),
(2745, 214, '2022-05-25'),
(2746, 212, '2022-05-25'),
(2747, 213, '2022-05-25'),
(2748, 208, '2022-05-25'),
(2749, 289, '2022-05-25'),
(2750, 216, '2022-05-25'),
(2751, 288, '2022-05-25'),
(2752, 251, '2022-05-25'),
(2753, 256, '2022-05-25'),
(2754, 265, '2022-05-25'),
(2755, 269, '2022-05-25'),
(2756, 246, '2022-05-25'),
(2757, 289, '2022-05-26'),
(2758, 259, '2022-05-26'),
(2759, 287, '2022-05-26'),
(2760, 279, '2022-05-26'),
(2761, 274, '2022-05-26'),
(2762, 286, '2022-05-26'),
(2763, 278, '2022-05-26'),
(2764, 207, '2022-05-26'),
(2765, 289, '2022-05-26'),
(2766, 286, '2022-05-26'),
(2767, 276, '2022-05-26'),
(2768, 234, '2022-05-26'),
(2769, 277, '2022-05-26'),
(2770, 283, '2022-05-26'),
(2771, 285, '2022-05-26'),
(2772, 281, '2022-05-26'),
(2773, 280, '2022-05-26'),
(2774, 235, '2022-05-26'),
(2775, 264, '2022-05-26'),
(2776, 247, '2022-05-26'),
(2777, 260, '2022-05-26'),
(2778, 269, '2022-05-26'),
(2779, 261, '2022-05-26'),
(2780, 262, '2022-05-26'),
(2781, 263, '2022-05-26'),
(2782, 248, '2022-05-26'),
(2783, 249, '2022-05-26'),
(2784, 265, '2022-05-26'),
(2785, 286, '2022-05-26'),
(2786, 251, '2022-05-26'),
(2787, 266, '2022-05-27'),
(2788, 246, '2022-05-27'),
(2789, 252, '2022-05-27'),
(2790, 257, '2022-05-27'),
(2791, 268, '2022-05-27'),
(2792, 253, '2022-05-27'),
(2793, 254, '2022-05-27'),
(2794, 214, '2022-05-27'),
(2795, 255, '2022-05-27'),
(2796, 256, '2022-05-27'),
(2797, 257, '2022-05-27'),
(2798, 263, '2022-05-27'),
(2799, 258, '2022-05-27'),
(2800, 215, '2022-05-27'),
(2801, 267, '2022-05-27'),
(2802, 264, '2022-05-27'),
(2803, 218, '2022-05-27'),
(2804, 281, '2022-05-27'),
(2805, 217, '2022-05-27'),
(2806, 209, '2022-05-27'),
(2807, 267, '2022-05-27'),
(2808, 250, '2022-05-27'),
(2809, 216, '2022-05-27'),
(2810, 212, '2022-05-27'),
(2811, 215, '2022-05-27'),
(2812, 208, '2022-05-27'),
(2813, 210, '2022-05-28'),
(2814, 256, '2022-05-28'),
(2815, 289, '2022-05-28'),
(2816, 238, '2022-05-28'),
(2817, 205, '2022-05-28'),
(2818, 260, '2022-05-29'),
(2819, 199, '2022-05-29'),
(2820, 206, '2022-05-29'),
(2821, 204, '2022-05-29'),
(2822, 204, '2022-05-29'),
(2823, 218, '2022-05-29'),
(2824, 217, '2022-05-29'),
(2825, 208, '2022-05-30'),
(2826, 284, '2022-05-30'),
(2827, 236, '2022-05-30'),
(2828, 201, '2022-05-30'),
(2829, 247, '2022-05-30'),
(2830, 200, '2022-05-31'),
(2831, 218, '2022-05-31'),
(2832, 237, '2022-05-31'),
(2833, 217, '2022-05-31'),
(2834, 279, '2022-06-01'),
(2835, 210, '2022-06-01'),
(2836, 201, '2022-06-01'),
(2837, 213, '2022-06-02'),
(2838, 208, '2022-06-02'),
(2839, 211, '2022-06-02'),
(2840, 207, '2022-06-02'),
(2841, 235, '2022-06-02'),
(2842, 269, '2022-06-03'),
(2843, 263, '2022-06-03'),
(2844, 284, '2022-06-03'),
(2845, 245, '2022-06-03'),
(2846, 288, '2022-06-04'),
(2847, 242, '2022-06-04'),
(2848, 237, '2022-06-05'),
(2849, 287, '2022-06-05'),
(2850, 199, '2022-06-05'),
(2851, 289, '2022-06-05'),
(2852, 262, '2022-06-05'),
(2853, 218, '2022-06-06'),
(2854, 210, '2022-06-06'),
(2855, 249, '2022-06-06'),
(2856, 202, '2022-06-06'),
(2857, 211, '2022-06-06'),
(2858, 242, '2022-06-06'),
(2859, 214, '2022-06-07'),
(2860, 279, '2022-06-07'),
(2861, 200, '2022-06-07'),
(2862, 202, '2022-06-07'),
(2863, 201, '2022-06-07'),
(2864, 205, '2022-06-07'),
(2865, 289, '2022-06-07'),
(2866, 218, '2022-06-07'),
(2867, 289, '2022-06-07'),
(2868, 213, '2022-06-07'),
(2869, 217, '2022-06-07'),
(2870, 209, '2022-06-07'),
(2871, 278, '2022-06-07'),
(2872, 248, '2022-06-07'),
(2873, 251, '2022-06-07'),
(2874, 216, '2022-06-07'),
(2875, 215, '2022-06-07'),
(2876, 212, '2022-06-07'),
(2877, 203, '2022-06-07'),
(2878, 214, '2022-06-07'),
(2879, 217, '2022-06-08'),
(2880, 215, '2022-06-08'),
(2881, 209, '2022-06-08'),
(2882, 216, '2022-06-08'),
(2883, 262, '2022-06-08'),
(2884, 208, '2022-06-09'),
(2885, 259, '2022-06-09'),
(2886, 254, '2022-06-09'),
(2887, 243, '2022-06-09'),
(2888, 236, '2022-06-09'),
(2889, 241, '2022-06-09'),
(2890, 239, '2022-06-09'),
(2891, 237, '2022-06-09'),
(2892, 238, '2022-06-09'),
(2893, 240, '2022-06-09'),
(2894, 242, '2022-06-09'),
(2895, 288, '2022-06-09'),
(2896, 287, '2022-06-09'),
(2897, 218, '2022-06-09'),
(2898, 210, '2022-06-09'),
(2899, 203, '2022-06-09'),
(2900, 234, '2022-06-09'),
(2901, 268, '2022-06-09'),
(2902, 213, '2022-06-10'),
(2903, 211, '2022-06-10'),
(2904, 210, '2022-06-10'),
(2905, 283, '2022-06-10'),
(2906, 206, '2022-06-10'),
(2907, 244, '2022-06-10'),
(2908, 237, '2022-06-10'),
(2909, 287, '2022-06-10'),
(2910, 264, '2022-06-11'),
(2911, 282, '2022-06-11'),
(2912, 284, '2022-06-11'),
(2913, 204, '2022-06-11'),
(2914, 259, '2022-06-11'),
(2915, 253, '2022-06-11'),
(2916, 276, '2022-06-11'),
(2917, 210, '2022-06-11'),
(2918, 258, '2022-06-11'),
(2919, 207, '2022-06-11'),
(2920, 215, '2022-06-11'),
(2921, 276, '2022-06-11'),
(2922, 241, '2022-06-12'),
(2923, 234, '2022-06-12'),
(2924, 206, '2022-06-12'),
(2925, 281, '2022-06-12'),
(2926, 277, '2022-06-12'),
(2927, 201, '2022-06-12'),
(2928, 249, '2022-06-12'),
(2929, 280, '2022-06-12'),
(2930, 286, '2022-06-12'),
(2931, 245, '2022-06-12'),
(2932, 213, '2022-06-12'),
(2933, 251, '2022-06-12'),
(2934, 240, '2022-06-12'),
(2935, 208, '2022-06-12'),
(2936, 199, '2022-06-12'),
(2937, 240, '2022-06-12'),
(2938, 269, '2022-06-12'),
(2939, 266, '2022-06-12'),
(2940, 211, '2022-06-12'),
(2941, 246, '2022-06-12'),
(2942, 204, '2022-06-12'),
(2943, 235, '2022-06-12'),
(2944, 261, '2022-06-12'),
(2945, 277, '2022-06-12'),
(2946, 267, '2022-06-12'),
(2947, 274, '2022-06-12'),
(2948, 243, '2022-06-12'),
(2949, 205, '2022-06-12'),
(2950, 253, '2022-06-12'),
(2951, 279, '2022-06-12'),
(2952, 245, '2022-06-13'),
(2953, 239, '2022-06-13'),
(2954, 247, '2022-06-13'),
(2955, 265, '2022-06-13'),
(2956, 238, '2022-06-13'),
(2957, 250, '2022-06-13'),
(2958, 278, '2022-06-13'),
(2959, 248, '2022-06-13'),
(2960, 199, '2022-06-13'),
(2961, 203, '2022-06-13'),
(2962, 236, '2022-06-13'),
(2963, 200, '2022-06-13'),
(2964, 266, '2022-06-13'),
(2965, 202, '2022-06-13'),
(2966, 283, '2022-06-13'),
(2967, 257, '2022-06-13'),
(2968, 267, '2022-06-13'),
(2969, 238, '2022-06-13'),
(2970, 252, '2022-06-13'),
(2971, 274, '2022-06-13'),
(2972, 242, '2022-06-13'),
(2973, 241, '2022-06-13'),
(2974, 288, '2022-06-13'),
(2975, 268, '2022-06-13'),
(2976, 217, '2022-06-13'),
(2977, 285, '2022-06-13'),
(2978, 237, '2022-06-13'),
(2979, 260, '2022-06-14'),
(2980, 280, '2022-06-14'),
(2981, 239, '2022-06-14'),
(2982, 243, '2022-06-14'),
(2983, 243, '2022-06-14'),
(2984, 250, '2022-06-14'),
(2985, 246, '2022-06-14'),
(2986, 217, '2022-06-14'),
(2987, 217, '2022-06-14'),
(2988, 217, '2022-06-14'),
(2989, 237, '2022-06-14'),
(2990, 242, '2022-06-14'),
(2991, 243, '2022-06-14'),
(2992, 236, '2022-06-14'),
(2993, 234, '2022-06-14'),
(2994, 262, '2022-06-14'),
(2995, 285, '2022-06-14'),
(2996, 204, '2022-06-14'),
(2997, 257, '2022-06-14'),
(2998, 252, '2022-06-14'),
(2999, 258, '2022-06-14'),
(3000, 263, '2022-06-15'),
(3001, 255, '2022-06-15'),
(3002, 259, '2022-06-15'),
(3003, 234, '2022-06-15'),
(3004, 287, '2022-06-15'),
(3005, 256, '2022-06-15'),
(3006, 254, '2022-06-15'),
(3007, 244, '2022-06-15'),
(3008, 251, '2022-06-15'),
(3009, 260, '2022-06-15'),
(3010, 289, '2022-06-16'),
(3011, 217, '2022-06-16'),
(3012, 259, '2022-06-16'),
(3013, 280, '2022-06-16'),
(3014, 278, '2022-06-16'),
(3015, 212, '2022-06-16'),
(3016, 280, '2022-06-16'),
(3017, 279, '2022-06-16'),
(3018, 274, '2022-06-16'),
(3019, 286, '2022-06-16'),
(3020, 278, '2022-06-16'),
(3021, 276, '2022-06-16'),
(3022, 285, '2022-06-16'),
(3023, 281, '2022-06-16'),
(3024, 235, '2022-06-17'),
(3025, 264, '2022-06-17'),
(3026, 234, '2022-06-17'),
(3027, 247, '2022-06-17'),
(3028, 277, '2022-06-17'),
(3029, 260, '2022-06-17'),
(3030, 283, '2022-06-17'),
(3031, 269, '2022-06-17');
INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(3032, 261, '2022-06-17'),
(3033, 262, '2022-06-17'),
(3034, 263, '2022-06-17'),
(3035, 248, '2022-06-17'),
(3036, 249, '2022-06-17'),
(3037, 265, '2022-06-17'),
(3038, 251, '2022-06-17'),
(3039, 266, '2022-06-17'),
(3040, 246, '2022-06-17'),
(3041, 252, '2022-06-17'),
(3042, 268, '2022-06-17'),
(3043, 253, '2022-06-17'),
(3044, 254, '2022-06-17'),
(3045, 255, '2022-06-17'),
(3046, 256, '2022-06-17'),
(3047, 214, '2022-06-17'),
(3048, 257, '2022-06-17'),
(3049, 258, '2022-06-17'),
(3050, 207, '2022-06-17'),
(3051, 243, '2022-06-17'),
(3052, 217, '2022-06-17'),
(3053, 209, '2022-06-17'),
(3054, 267, '2022-06-17'),
(3055, 244, '2022-06-17'),
(3056, 250, '2022-06-17'),
(3057, 260, '2022-06-17'),
(3058, 250, '2022-06-17'),
(3059, 246, '2022-06-17'),
(3060, 216, '2022-06-18'),
(3061, 215, '2022-06-18'),
(3062, 262, '2022-06-18'),
(3063, 212, '2022-06-18'),
(3064, 218, '2022-06-18'),
(3065, 257, '2022-06-18'),
(3066, 258, '2022-06-18'),
(3067, 255, '2022-06-18'),
(3068, 237, '2022-06-18'),
(3069, 263, '2022-06-18'),
(3070, 255, '2022-06-18'),
(3071, 278, '2022-06-18'),
(3072, 259, '2022-06-18'),
(3073, 241, '2022-06-19'),
(3074, 211, '2022-06-19'),
(3075, 288, '2022-06-19'),
(3076, 209, '2022-06-20'),
(3077, 255, '2022-06-20'),
(3078, 237, '2022-06-20'),
(3079, 202, '2022-06-21'),
(3080, 245, '2022-06-21'),
(3081, 210, '2022-06-22'),
(3082, 216, '2022-06-22'),
(3083, 201, '2022-06-22'),
(3084, 205, '2022-06-22'),
(3085, 200, '2022-06-22'),
(3086, 261, '2022-06-23'),
(3087, 208, '2022-06-23'),
(3088, 203, '2022-06-23'),
(3089, 211, '2022-06-23'),
(3090, 213, '2022-06-23'),
(3091, 256, '2022-06-25'),
(3092, 269, '2022-06-25'),
(3093, 289, '2022-06-26'),
(3094, 207, '2022-06-26'),
(3095, 242, '2022-06-26'),
(3096, 243, '2022-06-26'),
(3097, 236, '2022-06-26'),
(3098, 287, '2022-06-26'),
(3099, 241, '2022-06-26'),
(3100, 239, '2022-06-26'),
(3101, 234, '2022-06-26'),
(3102, 204, '2022-06-26'),
(3103, 263, '2022-06-27'),
(3104, 284, '2022-06-27'),
(3105, 199, '2022-06-27'),
(3106, 204, '2022-06-27'),
(3107, 214, '2022-06-28'),
(3108, 269, '2022-06-28'),
(3109, 217, '2022-06-28'),
(3110, 209, '2022-06-28'),
(3111, 216, '2022-06-28'),
(3112, 215, '2022-06-28'),
(3113, 212, '2022-06-28'),
(3114, 205, '2022-06-28'),
(3115, 207, '2022-06-28'),
(3116, 286, '2022-06-28'),
(3117, 204, '2022-06-29'),
(3118, 243, '2022-06-29'),
(3119, 208, '2022-06-29'),
(3120, 247, '2022-06-30'),
(3121, 277, '2022-06-30'),
(3122, 289, '2022-06-30'),
(3123, 205, '2022-07-01'),
(3124, 283, '2022-07-01'),
(3125, 200, '2022-07-01'),
(3126, 264, '2022-07-01'),
(3127, 218, '2022-07-01'),
(3128, 208, '2022-07-02'),
(3129, 284, '2022-07-02'),
(3130, 210, '2022-07-02'),
(3131, 277, '2022-07-02'),
(3132, 206, '2022-07-02'),
(3133, 288, '2022-07-02'),
(3134, 245, '2022-07-02'),
(3135, 288, '2022-07-03'),
(3136, 207, '2022-07-03'),
(3137, 214, '2022-07-03'),
(3138, 208, '2022-07-03'),
(3139, 211, '2022-07-03'),
(3140, 213, '2022-07-03'),
(3141, 283, '2022-07-03'),
(3142, 218, '2022-07-03'),
(3143, 245, '2022-07-05'),
(3144, 287, '2022-07-05'),
(3145, 245, '2022-07-05'),
(3146, 242, '2022-07-05'),
(3147, 236, '2022-07-06'),
(3148, 201, '2022-07-06'),
(3149, 248, '2022-07-07'),
(3150, 202, '2022-07-07'),
(3151, 259, '2022-07-07'),
(3152, 289, '2022-07-07'),
(3153, 280, '2022-07-07'),
(3154, 279, '2022-07-08'),
(3155, 274, '2022-07-08'),
(3156, 286, '2022-07-08'),
(3157, 278, '2022-07-08'),
(3158, 276, '2022-07-08'),
(3159, 285, '2022-07-08'),
(3160, 281, '2022-07-08'),
(3161, 235, '2022-07-08'),
(3162, 264, '2022-07-08'),
(3163, 234, '2022-07-08'),
(3164, 277, '2022-07-08'),
(3165, 283, '2022-07-08'),
(3166, 260, '2022-07-08'),
(3167, 269, '2022-07-09'),
(3168, 282, '2022-07-09'),
(3169, 248, '2022-07-09'),
(3170, 246, '2022-07-09'),
(3171, 252, '2022-07-09'),
(3172, 257, '2022-07-09'),
(3173, 249, '2022-07-09'),
(3174, 209, '2022-07-09'),
(3175, 268, '2022-07-09'),
(3176, 258, '2022-07-09'),
(3177, 203, '2022-07-09'),
(3178, 267, '2022-07-09'),
(3179, 250, '2022-07-09'),
(3180, 216, '2022-07-09'),
(3181, 200, '2022-07-09'),
(3182, 261, '2022-07-09'),
(3183, 253, '2022-07-09'),
(3184, 262, '2022-07-09'),
(3185, 254, '2022-07-09'),
(3186, 204, '2022-07-09'),
(3187, 263, '2022-07-09'),
(3188, 213, '2022-07-09'),
(3189, 214, '2022-07-09'),
(3190, 211, '2022-07-09'),
(3191, 289, '2022-07-09'),
(3192, 210, '2022-07-09'),
(3193, 288, '2022-07-09'),
(3194, 209, '2022-07-09'),
(3195, 216, '2022-07-09'),
(3196, 218, '2022-07-09'),
(3197, 215, '2022-07-09'),
(3198, 212, '2022-07-09'),
(3199, 217, '2022-07-09'),
(3200, 287, '2022-07-09'),
(3201, 213, '2022-07-09'),
(3202, 211, '2022-07-09'),
(3203, 214, '2022-07-09'),
(3204, 289, '2022-07-09'),
(3205, 210, '2022-07-09'),
(3206, 288, '2022-07-09'),
(3207, 209, '2022-07-09'),
(3208, 216, '2022-07-09'),
(3209, 214, '2022-07-09'),
(3210, 248, '2022-07-09'),
(3211, 255, '2022-07-09'),
(3212, 249, '2022-07-09'),
(3213, 265, '2022-07-09'),
(3214, 256, '2022-07-09'),
(3215, 202, '2022-07-09'),
(3216, 247, '2022-07-09'),
(3217, 259, '2022-07-09'),
(3218, 260, '2022-07-09'),
(3219, 269, '2022-07-09'),
(3220, 236, '2022-07-09'),
(3221, 205, '2022-07-09'),
(3222, 200, '2022-07-09'),
(3223, 201, '2022-07-09'),
(3224, 237, '2022-07-09'),
(3225, 238, '2022-07-09'),
(3226, 261, '2022-07-09'),
(3227, 241, '2022-07-09'),
(3228, 262, '2022-07-09'),
(3229, 263, '2022-07-09'),
(3230, 244, '2022-07-09'),
(3231, 206, '2022-07-09'),
(3232, 286, '2022-07-09'),
(3233, 278, '2022-07-09'),
(3234, 279, '2022-07-09'),
(3235, 274, '2022-07-09'),
(3236, 276, '2022-07-09'),
(3237, 239, '2022-07-09'),
(3238, 240, '2022-07-09'),
(3239, 242, '2022-07-09'),
(3240, 243, '2022-07-09'),
(3241, 277, '2022-07-09'),
(3242, 248, '2022-07-09'),
(3243, 249, '2022-07-09'),
(3244, 265, '2022-07-09'),
(3245, 266, '2022-07-09'),
(3246, 267, '2022-07-09'),
(3247, 250, '2022-07-09'),
(3248, 251, '2022-07-09'),
(3249, 252, '2022-07-09'),
(3250, 245, '2022-07-09'),
(3251, 246, '2022-07-09'),
(3252, 268, '2022-07-09'),
(3253, 253, '2022-07-09'),
(3254, 254, '2022-07-09'),
(3255, 255, '2022-07-09'),
(3256, 256, '2022-07-09'),
(3257, 283, '2022-07-09'),
(3258, 257, '2022-07-09'),
(3259, 258, '2022-07-09'),
(3260, 285, '2022-07-09'),
(3261, 281, '2022-07-09'),
(3262, 280, '2022-07-09'),
(3263, 207, '2022-07-09'),
(3264, 203, '2022-07-09'),
(3265, 235, '2022-07-09'),
(3266, 264, '2022-07-09'),
(3267, 251, '2022-07-09'),
(3268, 199, '2022-07-09'),
(3269, 282, '2022-07-09'),
(3270, 284, '2022-07-09'),
(3271, 204, '2022-07-09'),
(3272, 212, '2022-07-09'),
(3273, 266, '2022-07-09'),
(3274, 262, '2022-07-09'),
(3275, 247, '2022-07-09'),
(3276, 201, '2022-07-09'),
(3277, 205, '2022-07-09'),
(3278, 217, '2022-07-09'),
(3279, 215, '2022-07-09'),
(3280, 287, '2022-07-09'),
(3281, 253, '2022-07-10'),
(3282, 238, '2022-07-10'),
(3283, 237, '2022-07-10'),
(3284, 240, '2022-07-10'),
(3285, 234, '2022-07-10'),
(3286, 210, '2022-07-11'),
(3287, 259, '2022-07-12'),
(3288, 254, '2022-07-12'),
(3289, 202, '2022-07-12'),
(3290, 258, '2022-07-12'),
(3291, 242, '2022-07-12'),
(3292, 213, '2022-07-13'),
(3293, 242, '2022-07-13'),
(3294, 251, '2022-07-13'),
(3295, 285, '2022-07-13'),
(3296, 240, '2022-07-13'),
(3297, 289, '2022-07-13'),
(3298, 239, '2022-07-14'),
(3299, 241, '2022-07-14'),
(3300, 288, '2022-07-14'),
(3301, 200, '2022-07-14'),
(3302, 243, '2022-07-14'),
(3303, 250, '2022-07-14'),
(3304, 266, '2022-07-14'),
(3305, 276, '2022-07-14'),
(3306, 202, '2022-07-14'),
(3307, 274, '2022-07-14'),
(3308, 241, '2022-07-15'),
(3309, 254, '2022-07-15'),
(3310, 199, '2022-07-15'),
(3311, 218, '2022-07-15'),
(3312, 210, '2022-07-15'),
(3313, 199, '2022-07-15'),
(3314, 204, '2022-07-15'),
(3315, 236, '2022-07-15'),
(3316, 241, '2022-07-15'),
(3317, 245, '2022-07-15'),
(3318, 208, '2022-07-15'),
(3319, 211, '2022-07-15'),
(3320, 213, '2022-07-15'),
(3321, 246, '2022-07-16'),
(3322, 252, '2022-07-16'),
(3323, 236, '2022-07-16'),
(3324, 289, '2022-07-16'),
(3325, 289, '2022-07-17'),
(3326, 280, '2022-07-17'),
(3327, 212, '2022-07-17'),
(3328, 268, '2022-07-17'),
(3329, 207, '2022-07-19'),
(3330, 260, '2022-07-19'),
(3331, 238, '2022-07-19'),
(3332, 209, '2022-07-19'),
(3333, 217, '2022-07-19'),
(3334, 287, '2022-07-19'),
(3335, 214, '2022-07-19'),
(3336, 216, '2022-07-19'),
(3337, 280, '2022-07-20'),
(3338, 278, '2022-07-20'),
(3339, 212, '2022-07-20'),
(3340, 212, '2022-07-20'),
(3341, 209, '2022-07-20'),
(3342, 217, '2022-07-20'),
(3343, 215, '2022-07-20'),
(3344, 279, '2022-07-20'),
(3345, 287, '2022-07-21'),
(3346, 214, '2022-07-21'),
(3347, 218, '2022-07-22'),
(3348, 287, '2022-07-22'),
(3349, 214, '2022-07-22'),
(3350, 288, '2022-07-22'),
(3351, 218, '2022-07-22'),
(3352, 211, '2022-07-22'),
(3353, 213, '2022-07-22'),
(3354, 217, '2022-07-22'),
(3355, 212, '2022-07-22'),
(3356, 210, '2022-07-22'),
(3357, 216, '2022-07-22'),
(3358, 209, '2022-07-22'),
(3359, 208, '2022-07-22'),
(3360, 289, '2022-07-22'),
(3361, 237, '2022-07-22'),
(3362, 276, '2022-07-22'),
(3363, 202, '2022-07-22'),
(3364, 204, '2022-07-22'),
(3365, 260, '2022-07-22'),
(3366, 284, '2022-07-22'),
(3367, 205, '2022-07-22'),
(3368, 274, '2022-07-22'),
(3369, 279, '2022-07-22'),
(3370, 280, '2022-07-22'),
(3371, 206, '2022-07-22'),
(3372, 235, '2022-07-22'),
(3373, 264, '2022-07-22'),
(3374, 285, '2022-07-22'),
(3375, 286, '2022-07-22'),
(3376, 199, '2022-07-22'),
(3377, 269, '2022-07-22'),
(3378, 282, '2022-07-22'),
(3379, 201, '2022-07-22'),
(3380, 207, '2022-07-22'),
(3381, 281, '2022-07-22'),
(3382, 283, '2022-07-22'),
(3383, 277, '2022-07-22'),
(3384, 278, '2022-07-22'),
(3385, 244, '2022-07-22'),
(3386, 203, '2022-07-22'),
(3387, 200, '2022-07-22'),
(3388, 261, '2022-07-22'),
(3389, 243, '2022-07-22'),
(3390, 202, '2022-07-22'),
(3391, 239, '2022-07-23'),
(3392, 206, '2022-07-23'),
(3393, 211, '2022-07-23'),
(3394, 244, '2022-07-23'),
(3395, 214, '2022-07-24'),
(3396, 288, '2022-07-24'),
(3397, 216, '2022-07-24'),
(3398, 289, '2022-07-25'),
(3399, 289, '2022-07-25'),
(3400, 289, '2022-07-25'),
(3401, 200, '2022-07-25'),
(3402, 289, '2022-07-25'),
(3403, 289, '2022-07-25'),
(3404, 203, '2022-07-25'),
(3405, 201, '2022-07-25'),
(3406, 205, '2022-07-25'),
(3407, 288, '2022-07-25'),
(3408, 282, '2022-07-26'),
(3409, 210, '2022-07-26'),
(3410, 208, '2022-07-26'),
(3411, 211, '2022-07-26'),
(3412, 218, '2022-07-26'),
(3413, 286, '2022-07-26'),
(3414, 215, '2022-07-26'),
(3415, 213, '2022-07-26'),
(3416, 244, '2022-07-26'),
(3417, 238, '2022-07-26'),
(3418, 263, '2022-07-26'),
(3419, 237, '2022-07-26'),
(3420, 240, '2022-07-26'),
(3421, 237, '2022-07-26'),
(3422, 216, '2022-07-26'),
(3423, 255, '2022-07-26'),
(3424, 216, '2022-07-27'),
(3425, 210, '2022-07-27'),
(3426, 214, '2022-07-27'),
(3427, 209, '2022-07-27'),
(3428, 208, '2022-07-27'),
(3429, 264, '2022-07-27'),
(3430, 199, '2022-07-27'),
(3431, 286, '2022-07-27'),
(3432, 207, '2022-07-27'),
(3433, 200, '2022-07-27'),
(3434, 204, '2022-07-27'),
(3435, 281, '2022-07-27'),
(3436, 244, '2022-07-27'),
(3437, 235, '2022-07-27'),
(3438, 211, '2022-07-27'),
(3439, 212, '2022-07-27'),
(3440, 213, '2022-07-27'),
(3441, 276, '2022-07-27'),
(3442, 283, '2022-07-27'),
(3443, 280, '2022-07-27'),
(3444, 285, '2022-07-27'),
(3445, 274, '2022-07-27'),
(3446, 284, '2022-07-27'),
(3447, 217, '2022-07-27'),
(3448, 206, '2022-07-27'),
(3449, 282, '2022-07-27'),
(3450, 287, '2022-07-27'),
(3451, 277, '2022-07-27'),
(3452, 288, '2022-07-27'),
(3453, 279, '2022-07-27'),
(3454, 203, '2022-07-27'),
(3455, 218, '2022-07-27'),
(3456, 278, '2022-07-27'),
(3457, 205, '2022-07-27'),
(3458, 202, '2022-07-27'),
(3459, 201, '2022-07-27'),
(3460, 259, '2022-07-27'),
(3461, 260, '2022-07-27'),
(3462, 269, '2022-07-27'),
(3463, 263, '2022-07-27'),
(3464, 262, '2022-07-27'),
(3465, 289, '2022-07-27'),
(3466, 252, '2022-07-27'),
(3467, 238, '2022-07-27'),
(3468, 239, '2022-07-27'),
(3469, 261, '2022-07-27'),
(3470, 241, '2022-07-27'),
(3471, 240, '2022-07-27'),
(3472, 247, '2022-07-27'),
(3473, 215, '2022-07-27'),
(3474, 268, '2022-07-27'),
(3475, 249, '2022-07-27'),
(3476, 265, '2022-07-27'),
(3477, 246, '2022-07-27'),
(3478, 237, '2022-07-27'),
(3479, 248, '2022-07-27'),
(3480, 245, '2022-07-27'),
(3481, 256, '2022-07-27'),
(3482, 253, '2022-07-27'),
(3483, 267, '2022-07-27'),
(3484, 242, '2022-07-27'),
(3485, 243, '2022-07-27'),
(3486, 255, '2022-07-27'),
(3487, 258, '2022-07-27'),
(3488, 257, '2022-07-27'),
(3489, 236, '2022-07-27'),
(3490, 234, '2022-07-27'),
(3491, 266, '2022-07-27'),
(3492, 250, '2022-07-27'),
(3493, 254, '2022-07-27'),
(3494, 251, '2022-07-27'),
(3495, 289, '2022-07-27'),
(3496, 256, '2022-07-27'),
(3497, 265, '2022-07-27'),
(3498, 269, '2022-07-27'),
(3499, 247, '2022-07-27'),
(3500, 288, '2022-07-28'),
(3501, 205, '2022-07-28'),
(3502, 207, '2022-07-28'),
(3503, 259, '2022-07-28'),
(3504, 280, '2022-07-28'),
(3505, 267, '2022-07-29'),
(3506, 210, '2022-07-29'),
(3507, 218, '2022-07-29'),
(3508, 211, '2022-07-29'),
(3509, 288, '2022-07-29'),
(3510, 215, '2022-07-29'),
(3511, 217, '2022-07-29'),
(3512, 209, '2022-07-29'),
(3513, 287, '2022-07-29'),
(3514, 214, '2022-07-29'),
(3515, 212, '2022-07-29'),
(3516, 213, '2022-07-29'),
(3517, 208, '2022-07-29'),
(3518, 289, '2022-07-29'),
(3519, 216, '2022-07-29'),
(3520, 279, '2022-07-29'),
(3521, 208, '2022-07-29'),
(3522, 274, '2022-07-29'),
(3523, 286, '2022-07-29'),
(3524, 278, '2022-07-29'),
(3525, 234, '2022-07-29'),
(3526, 277, '2022-07-29'),
(3527, 283, '2022-07-29'),
(3528, 276, '2022-07-29'),
(3529, 285, '2022-07-29'),
(3530, 242, '2022-07-30'),
(3531, 269, '2022-07-30'),
(3532, 281, '2022-07-30'),
(3533, 235, '2022-07-30'),
(3534, 264, '2022-07-30'),
(3535, 199, '2022-07-30'),
(3536, 204, '2022-07-30'),
(3537, 289, '2022-07-30'),
(3538, 287, '2022-07-30'),
(3539, 260, '2022-07-30'),
(3540, 214, '2022-07-30'),
(3541, 255, '2022-07-30'),
(3542, 269, '2022-07-30'),
(3543, 239, '2022-07-30'),
(3544, 216, '2022-07-30'),
(3545, 246, '2022-07-30'),
(3546, 252, '2022-07-30'),
(3547, 257, '2022-07-30'),
(3548, 209, '2022-07-30'),
(3549, 243, '2022-07-30'),
(3550, 215, '2022-07-30'),
(3551, 268, '2022-07-30'),
(3552, 258, '2022-07-30'),
(3553, 267, '2022-07-30'),
(3554, 261, '2022-07-30'),
(3555, 253, '2022-07-30'),
(3556, 262, '2022-07-31'),
(3557, 254, '2022-07-31'),
(3558, 263, '2022-07-31'),
(3559, 248, '2022-07-31'),
(3560, 255, '2022-07-31'),
(3561, 249, '2022-07-31'),
(3562, 265, '2022-07-31'),
(3563, 256, '2022-07-31'),
(3564, 251, '2022-07-31'),
(3565, 266, '2022-07-31'),
(3566, 210, '2022-07-31'),
(3567, 218, '2022-07-31'),
(3568, 211, '2022-07-31'),
(3569, 288, '2022-07-31'),
(3570, 215, '2022-07-31'),
(3571, 217, '2022-07-31'),
(3572, 209, '2022-07-31'),
(3573, 287, '2022-07-31'),
(3574, 214, '2022-07-31'),
(3575, 212, '2022-07-31'),
(3576, 213, '2022-07-31'),
(3577, 208, '2022-07-31'),
(3578, 289, '2022-07-31'),
(3579, 216, '2022-07-31'),
(3580, 236, '2022-07-31'),
(3581, 204, '2022-07-31'),
(3582, 241, '2022-07-31'),
(3583, 247, '2022-07-31'),
(3584, 250, '2022-07-31'),
(3585, 200, '2022-07-31'),
(3586, 212, '2022-07-31'),
(3587, 217, '2022-07-31'),
(3588, 203, '2022-07-31'),
(3589, 284, '2022-08-01'),
(3590, 289, '2022-08-01'),
(3591, 202, '2022-08-01'),
(3592, 247, '2022-08-01'),
(3593, 259, '2022-08-01'),
(3594, 260, '2022-08-01'),
(3595, 269, '2022-08-01'),
(3596, 236, '2022-08-01'),
(3597, 205, '2022-08-01'),
(3598, 200, '2022-08-01'),
(3599, 201, '2022-08-01'),
(3600, 237, '2022-08-01'),
(3601, 238, '2022-08-01'),
(3602, 261, '2022-08-01'),
(3603, 241, '2022-08-01'),
(3604, 262, '2022-08-01'),
(3605, 263, '2022-08-01'),
(3606, 244, '2022-08-01'),
(3607, 206, '2022-08-01'),
(3608, 286, '2022-08-01'),
(3609, 278, '2022-08-01'),
(3610, 279, '2022-08-01'),
(3611, 274, '2022-08-01'),
(3612, 276, '2022-08-01'),
(3613, 239, '2022-08-01'),
(3614, 240, '2022-08-01'),
(3615, 242, '2022-08-01'),
(3616, 243, '2022-08-01'),
(3617, 277, '2022-08-01'),
(3618, 248, '2022-08-01'),
(3619, 249, '2022-08-01'),
(3620, 265, '2022-08-01'),
(3621, 266, '2022-08-01'),
(3622, 267, '2022-08-01'),
(3623, 250, '2022-08-01'),
(3624, 251, '2022-08-01'),
(3625, 252, '2022-08-01'),
(3626, 245, '2022-08-01'),
(3627, 246, '2022-08-01'),
(3628, 268, '2022-08-01'),
(3629, 253, '2022-08-01'),
(3630, 254, '2022-08-01'),
(3631, 255, '2022-08-01'),
(3632, 256, '2022-08-01'),
(3633, 283, '2022-08-01'),
(3634, 257, '2022-08-01'),
(3635, 258, '2022-08-01'),
(3636, 285, '2022-08-01'),
(3637, 281, '2022-08-01'),
(3638, 280, '2022-08-01'),
(3639, 207, '2022-08-01'),
(3640, 203, '2022-08-01'),
(3641, 235, '2022-08-01'),
(3642, 264, '2022-08-01'),
(3643, 199, '2022-08-01'),
(3644, 282, '2022-08-01'),
(3645, 284, '2022-08-01'),
(3646, 204, '2022-08-01'),
(3647, 205, '2022-08-02'),
(3648, 200, '2022-08-02'),
(3649, 264, '2022-08-02'),
(3650, 203, '2022-08-03'),
(3651, 207, '2022-08-03'),
(3652, 245, '2022-08-03'),
(3653, 288, '2022-08-03'),
(3654, 234, '2022-08-03'),
(3655, 284, '2022-08-03'),
(3656, 282, '2022-08-03'),
(3657, 210, '2022-08-03'),
(3658, 218, '2022-08-03'),
(3659, 211, '2022-08-03'),
(3660, 288, '2022-08-03'),
(3661, 215, '2022-08-03'),
(3662, 209, '2022-08-03'),
(3663, 217, '2022-08-03'),
(3664, 287, '2022-08-03'),
(3665, 212, '2022-08-03'),
(3666, 214, '2022-08-03'),
(3667, 289, '2022-08-03'),
(3668, 208, '2022-08-03'),
(3669, 213, '2022-08-03'),
(3670, 216, '2022-08-03'),
(3671, 245, '2022-08-04'),
(3672, 283, '2022-08-04'),
(3673, 265, '2022-08-05'),
(3674, 245, '2022-08-05'),
(3675, 253, '2022-08-05'),
(3676, 267, '2022-08-05'),
(3677, 255, '2022-08-05'),
(3678, 258, '2022-08-05'),
(3679, 257, '2022-08-05'),
(3680, 266, '2022-08-05'),
(3681, 210, '2022-08-05'),
(3682, 208, '2022-08-05'),
(3683, 211, '2022-08-05'),
(3684, 213, '2022-08-05'),
(3685, 218, '2022-08-05'),
(3686, 277, '2022-08-06'),
(3687, 289, '2022-08-06'),
(3688, 202, '2022-08-07'),
(3689, 242, '2022-08-07'),
(3690, 243, '2022-08-07'),
(3691, 236, '2022-08-08'),
(3692, 210, '2022-08-08'),
(3693, 277, '2022-08-08'),
(3694, 268, '2022-08-08'),
(3695, 211, '2022-08-08'),
(3696, 262, '2022-08-08'),
(3697, 287, '2022-08-09'),
(3698, 242, '2022-08-09'),
(3699, 235, '2022-08-09'),
(3700, 216, '2022-08-09'),
(3701, 214, '2022-08-10'),
(3702, 216, '2022-08-10'),
(3703, 199, '2022-08-10'),
(3704, 209, '2022-08-10'),
(3705, 215, '2022-08-10'),
(3706, 251, '2022-08-10'),
(3707, 200, '2022-08-10'),
(3708, 201, '2022-08-10'),
(3709, 205, '2022-08-10'),
(3710, 248, '2022-08-10'),
(3711, 217, '2022-08-10'),
(3712, 212, '2022-08-11'),
(3713, 239, '2022-08-11'),
(3714, 262, '2022-08-11'),
(3715, 238, '2022-08-11'),
(3716, 203, '2022-08-11'),
(3717, 266, '2022-08-11'),
(3718, 259, '2022-08-11'),
(3719, 215, '2022-08-11'),
(3720, 215, '2022-08-11'),
(3721, 289, '2022-08-11'),
(3722, 289, '2022-08-11'),
(3723, 290, '2022-08-13'),
(3724, 290, '2022-08-13'),
(3725, 290, '2022-08-13'),
(3726, 216, '2022-08-14'),
(3727, 201, '2022-08-14'),
(3728, 289, '2022-08-15'),
(3729, 218, '2022-08-15'),
(3730, 214, '2022-08-15'),
(3731, 218, '2022-08-15'),
(3732, 217, '2022-08-22'),
(3733, 289, '2022-09-26'),
(3734, 217, '2022-11-23'),
(3735, 288, '2022-11-23'),
(3736, 217, '2022-11-27'),
(3737, 206, '2022-11-27'),
(3738, 279, '2022-11-27'),
(3739, 290, '2022-12-20'),
(3740, 290, '2022-12-20'),
(3741, 290, '2022-12-20'),
(3742, 290, '2022-12-20'),
(3743, 290, '2022-12-20'),
(3744, 290, '2022-12-20'),
(3745, 286, '2022-12-20'),
(3746, 287, '2022-12-20'),
(3747, 284, '2022-12-20'),
(3748, 283, '2022-12-20'),
(3749, 283, '2022-12-20'),
(3750, 288, '2022-12-21'),
(3751, 289, '2022-12-21'),
(3752, 269, '2022-12-21'),
(3753, 283, '2022-12-21'),
(3754, 301, '2022-12-21'),
(3755, 289, '2022-12-21'),
(3756, 308, '2022-12-21'),
(3757, 308, '2022-12-21'),
(3758, 309, '2022-12-21'),
(3759, 310, '2022-12-21'),
(3760, 310, '2022-12-21'),
(3761, 298, '2022-12-21'),
(3762, 297, '2022-12-21'),
(3763, 296, '2022-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(4) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`) VALUES
(1, 68, 289, 'Nice product', 4, '2022-07-25 12:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(5, 68, 4, 'fhsdkjhfjksdfds', '2022-07-25 16:12:40', '2022-07-25 16:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '16123367481557343024img.jpg', 'Jhon Smith', 'Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '16123367361557343024img.jpg', 'Jhon Smith', 'Co Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , language_settings');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1561348133service1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1561348138service2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1561348143service3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1561348147service4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1563247602brand1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1563247614brand2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1563247620brand3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1563247670brand4.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(2 - 3 days)', 0),
(2, 0, 'Express Shipping', '(1 days)', 10),
(3, 68, 'Deserunt occaecat ip', 'Possimus exercitati', 52);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(10, NULL, NULL, '#000000', 'fadeIn', NULL, '24', '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '16715323614196986.jpg', 'slide-two', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(4) DEFAULT NULL,
  `g_check` tinyint(4) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 1, 1, 1, 1, 1, 0, 0, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/geniuscart1.7.4/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/geniuscart1.7.4/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(58, 5, '{\"1\":\"Test\",\"10\":\"t\"}', 'test', 1),
(59, 39, '{\"1\":\"Crystal_Mum_Pot\",\"10\":\"\\u0995\\u09cd\\u09b0\\u09bf\\u09b8\\u09cd\\u099f\\u09be\\u09b2 \\u09ae\\u0997 \\u09aa\\u099f\"}', 'crystal-mum-pot', 1),
(60, 34, '{\"1\":\"Necklace\",\"10\":\"\\u09a8\\u09c7\\u0995\\u09b2\\u09c7\\u09b8\"}', 'necklace', 1),
(61, 27, '{\"1\":\"Watch\",\"10\":\"\\u0993\\u09df\\u09be\\u099a\"}', 'watch', 1),
(62, 28, '{\"1\":\"Mobile\",\"10\":\"\\u09ae\\u09cb\\u09ac\\u09be\\u0987\\u09b2\"}', 'mobile', 1),
(63, 17, '{\"1\":\"Kitchen\",\"10\":\"\\u0995\\u09bf\\u099a\\u09c7\\u09a8\"}', 'kitchen', 1),
(64, 43, '{\"1\":\"Noodles\",\"10\":\"\\u09a8\\u09c1\\u09a1\\u09c1\\u09b2\\u09b8\"}', 'noodles', 1),
(65, 24, '{\"1\":\"Kacha Bazar\",\"10\":\"\\u0995\\u09be\\u099a\\u09be \\u09ac\\u09be\\u099c\\u09be\\u09b0\"}', 'kacha-Baza', 1),
(66, 5, '{\"1\":\"Women\",\"10\":\"women\"}', 'women', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'jubayer.kodeeo@gmail.com'),
(2, '008802@gmail.com'),
(3, '0088@gmail.com'),
(4, 'maruf.hasan.9493@gmail.com'),
(5, 'habib456@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>');

-- --------------------------------------------------------

--
-- Table structure for table `top_banner`
--

CREATE TABLE `top_banner` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_banner`
--

INSERT INTO `top_banner` (`id`, `img`) VALUES
(1, 'fsdfsdfsdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`) VALUES
(13, 'User', '1557677677bouquet_PNG62.png', '1231', 'Test City', 'Bangladesh', 'Test Address', '34534534534', '34534534534', 'vendor@gmail.com', '$2a$12$hlezDhPeGCeu.gqNx3twhOM0VOLZ6zYamAQhjuM5QyJnjZFt/Xc6m', 'HiB2FZjwxJT8QVr2Ts3oSksiRuGZqZfCqx60HWn9qubax8Qn3H9HuumkGFxZ', '2018-03-07 18:05:44', '2022-12-20 09:22:01', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 4981.52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1606051035chicken.png', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 7476.96, '2019-11-24', 0),
(22, 'Hasan Mahruf', NULL, '1215', 'Dhaka', 'Bangladesh', 'Farmgate, Dhaka-1215', '01949318043', '01949318043', 'user@gmail.com', '$2a$12$hlezDhPeGCeu.gqNx3twhOM0VOLZ6zYamAQhjuM5QyJnjZFt/Xc6m', 'k7IUtCEk4UXHXoB9964kjaOOFNw49HmZ9QfwwmK0L1gjOLxnHramKGThwo55', '2019-06-20 12:26:24', '2022-12-23 17:40:41', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4939.8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-11-23', 0),
(27, 'Test User', NULL, NULL, NULL, NULL, 'Space Needle 400 Broad St, Seattles', '34534534', NULL, 'junajunnun@gmail.com', '$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS', 'RdBI4RFgbKUzSDCo8mhI3LSz4oXURe8RNUizf7DXUEIO4sdVF35qJlLleDHn', '2019-10-05 04:15:08', '2022-12-20 09:23:30', 0, 0, '0521bba4c819528b6a18a581a5842f17', 'Yes', 'bb9d23401cd70f11998fe36ea7677797', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-11-24', 0),
(28, 'User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'junnun@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2019-10-13 05:39:13', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(29, 'Jubayer khondoker', NULL, NULL, NULL, NULL, 'Kawola, Airport, Dhaka, Bangladesh', '+8801710029053', NULL, 'jubayer.kodeeo@gmail.com', '$2y$10$nLppBhQOkQj/EpgkKgefte2R6rOHoPan.r0vXEdA8/WPQgGRN.LBO', NULL, '2020-10-22 04:33:09', '2022-12-20 09:22:27', 0, 0, '110e39ae0007a3d48a10ff5a82cb37df', 'Yes', '53d4561061b0365ffdb2c429f30bc05f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-11-28', 0),
(30, 'Jubayer khondoker', NULL, NULL, NULL, NULL, 'Kawola, Airport, Dhaka, Bangladesh', '+8801710029053', NULL, 'jubayer@gmail.com', '$2a$12$ua2wjcgtzGPbjXK7FbPBXukS0VUCYctGbqquGid447sZLgqZp9v/q', 'QSaipwYHEv5vCPOn9TZzyYQXGxGvIAzxWngAIiV9DGGpYAnqNMMPxoK4yavD', '2020-10-22 04:34:41', '2020-10-22 04:34:41', 0, 0, '8016e6c3c22febedf8624a2ef4369755', 'Yes', '73fbb97c9292ecbb789504b200bfa216', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(31, 'dztpGG9bv9', NULL, NULL, NULL, NULL, 'u0gDXWLiuV', '9079330930', NULL, '8xs1h@j9nj.com', '$2y$10$YzRASclvyTClJAQwyhBoTu3OU82RcbTTe54RZBAUyjo7opDZSvEUK', NULL, '2020-10-24 23:52:16', '2020-11-22 17:16:11', 0, 0, '45053f9ed296a47fb728827d95e8e788', 'Yes', 'de1735ae64bf7accbcae874239a17667', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(32, 'ezJJL7J1Wd', NULL, NULL, NULL, NULL, '8OC03zVdrb', '8536686135', NULL, 'plstu@g2os.com', '$2y$10$UhuqPcrTF7uoqhhUYfRU.uZHogWcvHiusGVaCVen.jHKi7pFnQmZS', NULL, '2020-10-24 23:55:54', '2020-11-22 17:16:28', 0, 0, '18ed7690042de2e9bdaf70340a6a388c', 'Yes', 'ec8a708708643043c81a979ab79b8d86', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(33, '9CWXBP7kLM', NULL, NULL, NULL, NULL, 'eJvyjuknxV', '8480961768', NULL, '2vlib@ersx.com', '$2y$10$uUQBgfJ9pHg.DiYySxcNa.4hXuECtCabybXN5YwNksDBiyIzdAId2', NULL, '2020-10-24 23:56:56', '2022-12-20 09:22:46', 0, 0, 'c19c721237c3a6030d8eb395603108da', 'Yes', '7c836bc87a3778f412520f208976e5e8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://web.facebook.com', '#', '#', '#', 0, 1, 0, 0, 0, 1, 0, 0, '2020-11-24', 0),
(34, 'Jubayer khondoker', NULL, NULL, NULL, NULL, 'Kawola, Airport, Dhaka, Bangladesh', '+8801710029053', NULL, 'jubayer1@gmail.com', '$2y$10$rBcR2k3kBtphoNz836i2buYdr/k4ZTK0OL89WlsAS/nvh2jV10tzi', NULL, '2020-10-25 07:29:28', '2020-11-21 21:35:41', 0, 0, '98504e6906f3c1e08350a450e87b5189', 'Yes', '99eb799942ff3b46bce703122a62ec39', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-11-24', 0),
(35, 'Jubayer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jubayer23@gmail.com', '$2y$10$9MuMckwtHp4vhSl0WNmDtOIuH3f3INNwUxfj.sLBZdKxuklQSxcX6', NULL, '2020-10-27 02:12:18', '2020-10-27 02:12:18', 0, 0, '1ef0253bfb3062a02e4dc790a56d56c2', 'Yes', '73fbb97c9292ecbb789504b200bfa216', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(36, 'Jub', NULL, NULL, NULL, NULL, 'Dhaka', '+91 8475953333', NULL, 'jubayerk7@gmail.com', '$2y$10$M.8JwruIh9xU8MzMsfww1e/MlVju8v/A/QMU.JMgrmup5VBOi/pVm', NULL, '2020-10-29 19:21:11', '2020-10-29 19:21:48', 0, 0, '67f51e9f5a09483e5265916c0cb8eb46', 'Yes', 'b9defa228e76685289aa4964d21af95f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(39, 'sk Rony Rony', NULL, NULL, NULL, NULL, 'Gulshan', '01946116327', NULL, '008802@gmail.com', '$2y$10$XfUReiCt0QUGRobFOIzVfuBkVHc5GgbMSSp41Jwqw7DrB3LeYAWGW', NULL, '2020-10-30 23:18:09', '2021-06-10 15:40:04', 0, 0, '951d17bfe88bcc83cc915d53a673bd31', 'No', '9d40179c6e1d49fa7ea5e98f474ec85c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(40, 'sk Rony Rony', NULL, NULL, NULL, NULL, 'Gulshan', '01946116327', NULL, '0194611@gmail.com', '$2y$10$mOEtFuV4pFHarYeXRdkTJeLplC0G7UjLCos.btuxoZVYKHJBxCA3.', NULL, '2020-10-30 23:20:49', '2020-10-30 23:20:49', 0, 0, 'e32f053fbe342a19516038dc8249afa1', 'No', 'ee94dce66fa3ca028d8ffa3062430167', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(41, 'sk Rony Rony', NULL, NULL, NULL, NULL, 'Gulshan', '01946116327', NULL, '016@gmail.com', '$2y$10$tnVgsFaWF9d/OCBgGloh6O5xTIX0Th3J3X6HgYpxWtQWFoC/Zyu7G', NULL, '2020-10-30 23:22:18', '2020-10-30 23:22:18', 0, 0, 'f82d719efe4066bb16508d2d8e286aff', 'No', '45f304747f42b4463d13094cebb89a3e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(42, 'MD RAFIQUL ISLAM SUVO', NULL, NULL, NULL, NULL, 'Dhaka, Bangladesh', '01792166627', NULL, 'cse.engr.shuvo@gmail.com', '$2y$10$9iWnfjYfgGspv5NQKTiZqeKBdfX/lUze2aunbqq/u106I8VV5vcPi', NULL, '2020-10-30 23:50:44', '2020-10-30 23:51:24', 0, 0, 'bdb6f4bf94705c1eb7ba5e12469b2d55', 'Yes', '08caf46951f5ddda842ea7d8d73a82d3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(43, 'Farvez Hossen', NULL, NULL, NULL, NULL, 'Mohammadpur', '01770000000', NULL, 'farvezhossen583324@gmail.com', '$2y$10$cqKPgsTKfANQKu3Or.SQ2OuFCaXJOnqYR6X8cIZXVNkd5xvegFyDO', NULL, '2020-11-10 00:55:54', '2020-11-10 00:57:53', 0, 0, '8c60885f8e7869bf4890400ed19d1ef1', 'Yes', 'ce9a1cffbbc08d90e2ae302c9c4c4be9', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(44, 'Dhaka bank', NULL, NULL, NULL, NULL, 'dhaka', '01791938766', NULL, 'hamid.code01@gmail.com', '$2y$10$1EsIv4sXq0H4XuE06Blmne7AIv4HT0D4V2Ivvd5b4JN.Fyo1R1yN6', NULL, '2020-11-16 21:58:36', '2020-11-16 21:58:36', 0, 0, '4cebcd9d622dba5a7785393cb8dde1e4', 'No', '1943be81c302bfd4b22ae5b4baee37b1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(45, 'BHUIYAN RAMJAN ALI', '16057187871. LTV24 Logo with bangla ramjan.png', NULL, NULL, NULL, 'Gyunggi-do, Si-hung-si, bongwo jaero5-4, 102ho ( jong wang dong)', '+821027293780', NULL, 'korearbazar@gmail.com', '$2y$10$SeRy5XhkYzWDE0nJ2OirIuhf74N/7ZO7P0MjagAhNMBc0GU851AD.', NULL, '2020-11-18 11:57:07', '2022-12-20 09:23:03', 0, 0, 'ec4a6eb6000865368712216fdeab0231', 'Yes', '23e7f2ec3611516750ef5d1ba27dfd3c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1607441717Korear Bazar (2).png', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 89, '2020-12-18', 0),
(46, 'ABC Vendor', '1606026410Farvez.png', NULL, NULL, 'Uganda', 'Uganda Capital City', '01710029052', NULL, 'farvezhossen66@gmail.com', '$2y$10$e762JMoGRHmcKJd5tz9Lru6xbwAXt8gFRHw.YGLLWzbdxoiYiMop2', NULL, '2020-11-18 16:43:52', '2022-12-20 09:22:53', 0, 0, '941b7d8edf0e63fb48e90883aa0a96d0', 'Yes', 'cd12cc6f1e5d63383bbcddb79fe78551', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2020-12-22', 0),
(47, 'Ramjan Ali Bhuiyan', '1606114264My Daughters.jpg', NULL, NULL, 'Korea, Republic of', 'Gunja chonro 81beon gil 31, jong wang dong 2ma602', '01027293780', NULL, 'RAMJANKOREA@GMAIL.COM', '$2y$10$mYVIGWWXNUdrJsY5Sx6ice/ruepjbN1msH5.w4cueT6on8IkdN8m.', NULL, '2020-11-20 15:43:09', '2020-11-24 17:42:27', 0, 0, 'e1a9951d0235241b8be4d74a9e59293d', 'Yes', '4fb3c9c1e7d3b24a8cef0fdbd44c54ca', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(48, 'salma akter', NULL, NULL, NULL, NULL, 'rgrtgr', '01627919216', NULL, 'salmasajib110@gmail.com', '$2y$10$/j7/Bx0XZ4P60UWSh/RiAeVI4xx41w2dpXyK/55xvS1re1q4RlriK', NULL, '2020-11-22 21:26:21', '2020-12-06 13:57:24', 0, 0, '41dcbe6957b891503c195695ced9e86f', 'Yes', '170e26bf03f7e138dafc07bebaeae991', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(49, 'farvezhossen', NULL, NULL, NULL, NULL, 'Mohammadpur', '01770000000', NULL, 'farvezhossen450@gmail.com', '$2y$10$882rLp7zyIEymdMHpMn6DeZVIx9T6FhCZvMFWo2iKH8bw8EBQVodC', NULL, '2020-11-23 18:42:36', '2020-11-23 18:47:09', 0, 0, 'c757408281a9cabcf65e2e73d14f33cc', 'Yes', '5cb4c3328489f8854a772995784a4f9b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(50, 'jubayer hrv', NULL, NULL, NULL, NULL, 'dhaka', '01799990012', NULL, 'jubayer.hrv@gmail.com', '$2y$10$CW9C6SyKSjpS3r7foahED.DCRWBQWr2B1JsCzWDM6ZUiCVolr6ASu', NULL, '2020-11-24 00:47:53', '2020-11-24 00:55:42', 0, 0, '888d23ded94c2ab51917770a0395592c', 'Yes', 'a90850d59636e1fcda98250bd8cc696e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(52, 'abc', NULL, NULL, NULL, NULL, 'Dhaka', '55', NULL, 'abc@gmail.com', '$2y$10$HLnt5HVn.Ec5SR1NA8EF5uM9AWF.R5vKtcX8iUCyO7kkpUM.sY19W', NULL, '2020-11-25 17:12:26', '2020-11-25 17:12:26', 0, 0, '343a0b9e9e55c9bb832450221c37be5e', 'No', '398052d44c2c5894f7e8df95c31a3107', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(54, 'Nazmun Nahar Srabony', '1607215184Nazmun Nahar Srabony-2.jpg', NULL, NULL, 'Korea, Republic of', 'Incheon, Korea', '01030473635', NULL, 'networkramjan@gmail.com', '$2y$10$RMwr4MTEClsmcxErVlVU9.QwBOl05hLLqwRRSJgyeV5Vc1bCBl/4.', NULL, '2020-12-06 10:54:06', '2022-12-20 09:22:19', 0, 0, '1fda48ca1b126850ee077cdcb38a4afa', 'Yes', 'ec5139b62a6dfdecbb9556a2cdaa11f8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(56, 'Farvez Hossen', NULL, '73132', 'Dhaka', 'Bangladesh', 'Adabor, Mohammadpur, Dhaka', '01776711862', NULL, 'farvezhossen101@gmail.com', '$2y$10$tadzpqxWCrjjf8Oq5JhCxuc/2N6XMjOVAs.IoV2n7FweHTGQgscAy', NULL, '2020-12-07 22:15:41', '2020-12-13 18:06:24', 0, 0, '0ec956e91abf2d694dd9b7083f5a9e32', 'Yes', '5ac48b81ed6ff79ff5415d63b06d2820', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(57, 'Ramjan Ali', '1607804693Hafsa babu.png', NULL, NULL, NULL, 'south korea', '01027293780', NULL, 'babygift.shopping@gmail.com', '$2y$10$8DAiFEeNRhPTbL/sgiHA6.kNUrKcduVJaIIHx7E6ie9ghA0AkrOKe', NULL, '2020-12-13 07:10:48', '2020-12-14 00:02:24', 0, 0, '43553d131c917ad59ac57790ca62e40f', 'Yes', 'c55944e5b137531c2bccdc17ef4d39f2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(58, 'Md Polash Ahmed', NULL, NULL, NULL, NULL, 'kyeonggi-do, Siheung-si, Jeongwang-dong, 1578-5, 102ho. Post code: 15057', '010 2729 3780', NULL, 'mdpolash1498@gmail.com', '$2y$10$PMlBMyfukJ5CXiRaLKqanuuXproTd3/78/YX6kI/Nlc.f7e3m7jGy', NULL, '2021-01-14 03:00:12', '2021-01-14 03:00:12', 0, 0, '110b0033a309ca8d5eddecb06998d1aa', 'No', '66ac23c9f851eebe835f030ebc400e66', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(59, 'Sajawal', NULL, NULL, NULL, NULL, 'DHA phase 1', '03244409099', NULL, 'sanju@gmail.com', '$2y$10$1zPyZrfLD1vFwEnW4W/PHO7gn5SdV26p1IrIZljQfXxxnJjqyv3QW', NULL, '2021-01-19 19:18:08', '2021-01-19 19:18:08', 0, 0, 'afda9d125d8439484cac59581ac589d7', 'No', 'ff899b551a31be40a07bd55d8e572f35', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(60, 'ios', NULL, NULL, NULL, NULL, 'paki', '1234567890', NULL, 'ios@gmail.com', '$2y$10$o.MH2ulf4cBdqt8MVh140u0Ef9t7jrSfIuL826DPleDjw3b9ADy22', NULL, '2021-01-19 19:48:16', '2021-01-19 19:48:16', 0, 0, 'f32769c133d8cf077cb56f34fdce533c', 'No', '446d23d3e035d9f64801b96f403121d6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(61, 'Sajawal', NULL, NULL, NULL, NULL, 'DHA phase 1', '03244409099', NULL, 'sajawalzahid101@gmail.com', '$2y$10$Iy5Mh0MDdtROqhVfgdZGou74m.W8Fc.ILqd33j2fV2kPRI1QJwZyu', NULL, '2021-01-19 20:13:18', '2021-01-19 20:13:38', 0, 0, 'bb30409197c94d3f40db214a0dd0c92f', 'Yes', '58cd90219c932063077516e1e5540ff4', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(62, 'jubayer hrv', NULL, NULL, NULL, NULL, 'dhaka', '01799990012', NULL, 'jubayerk@gmail.com', '$2y$10$uC.r0ROLXrN6eUODmtdW7.3mw16x4EkwyoWgr.52h2w9btmgqe7AS', NULL, '2021-01-21 21:26:27', '2022-12-20 09:22:24', 0, 0, 'b397c053a09e8f9b7f5ced98926ed489', 'No', 'a19bdac7c0812480a38d80081d99e104', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(63, 'Frz', NULL, NULL, NULL, NULL, 'Dhaka', '0155682694', NULL, 'frz@gmail.com', '$2y$10$ggSv0LpIJ4.ya4KWnERIPOIymSKT5Ov0FiexUs9VEAwoHi4NtNbgK', NULL, '2021-01-23 17:36:07', '2022-12-20 09:23:24', 0, 0, 'd0f4a4a58cac28270a736766c44b2639', 'No', '47b9c4ba9f76f4f404d50354f4bdbe32', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(64, 'hjs', NULL, NULL, NULL, NULL, 'gh', '699', NULL, 'fa@gmail.com', '$2y$10$dq0FuVDgPrBV2FsQuK9At.rstZKgWl3r/A2g4z4OLfSirOHpvhPaS', NULL, '2021-01-23 18:06:12', '2022-12-20 09:20:45', 0, 0, 'a3790b94512572cb341e6e1bb0e255ee', 'No', '4d29d86251543004475bed41911607b2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(65, 'sk', NULL, NULL, NULL, NULL, 'dhaka', '01946116327', NULL, 'khairuzzaman@ergo-ventures.com', '$2y$10$H8NgQYjE9w0AKFz.21L6puoXyOZm4Ue0pTr4BjiEdIBysUu35Lx62', NULL, '2021-06-10 15:42:12', '2021-06-10 15:42:33', 0, 0, 'e47778d0ccc86ed6c34a08202a6bafd8', 'Yes', 'd968a78d02fa8e4043a0b55d6af60513', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(66, 'Alexis Taylor', NULL, NULL, NULL, NULL, 'Voluptas sint volup', '+1 (339) 951-6617', NULL, 'lovimaxa@mailinator.com', '$2y$10$62ieXM3Vn77pasL8TiUYLOE4jfGALM6Xt.mVV.zDdfBIbxgSS1yEC', NULL, '2022-02-12 20:00:26', '2022-12-20 09:22:49', 0, 0, 'c4874af7a6a4cf5b722c149009e43b13', 'No', 'b5f24f0d8b6b0b3a24c98ea6c80e107e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(67, 'Vincent Kelley', NULL, NULL, NULL, NULL, 'Consectetur error r', '+1 (122) 834-9643', NULL, 'moxadi@mailinator.com', '$2y$10$nPWz92xlEic2A/I0UcF8Yu1RNhXPHG8NeYsWxqE448D06FqZ9st7C', NULL, '2022-02-16 16:35:15', '2022-02-16 16:36:21', 0, 0, '0e92b00c18f9deb882f2b37a676a614d', 'No', 'dc95ecd2e1530e42b022c8fe88834bed', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(68, 'Sagor Roy', NULL, NULL, NULL, NULL, 'Birgonj', '01785400204', NULL, 'sagorroy204@gmail.com', '$2y$10$9KdtG6I49tEAW2u.Y9yqTu9rGc9OtRM1M5wVc/gU0IL.VVmLurime', NULL, '2022-02-16 16:36:57', '2022-12-20 09:20:42', 0, 0, '19ea74745b72cce491d081e08eb9e01a', 'Yes', 'd777f58503667f572483a0b37c7104a6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1644990934Diploma-in-artificial-intelligence-web.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(69, 'Ruth Velasquez', NULL, NULL, NULL, NULL, 'Debitis sapiente ea voluptas a', '+1 (429) 597-2024', NULL, 'zedojivu@mailinator.com', '$2y$10$lJbYdCTyPXVlUjBtVvgQ/O/k3Qz7QuK6mlgzAi4SMBSd/azp4REGG', NULL, '2022-07-25 15:52:58', '2022-07-25 15:52:58', 0, 0, 'c97f6df2a4ac110f76ca11a3d4dc8fbf', 'No', '20c98eab6ceefe16bdfcc214b06a5136', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(70, 'Brandon Mcgowan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rapilah@mailinator.com', '$2y$10$1tutaGj7O6vtOvFI9D/X7O.Ivjb7qcelgLtSnYcj2dkxw8qeQRwha', NULL, '2022-11-23 12:11:25', '2022-11-23 12:11:25', 0, 0, '5a367af9c0b4bc0a1faffbd5283e4ec5', 'Yes', '07ccd29edfea6292d5517d17447a626d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(71, 'Troy Curry', NULL, NULL, NULL, NULL, 'Labore incididunt do', '+1 (699) 637-1197', NULL, 'jabebudo@mailinator.com', '$2y$10$dyWqirfQ/QJhxZ3rrxmTx.3TV/kORVn8x4zw/2lVvLMXQNti842ve', NULL, '2022-11-24 05:33:16', '2022-11-24 05:33:16', 0, 0, '64105b3888d8e8d4557e31f44ea12f30', 'No', 'e1041e1a69dffe6812280eb61bc8ff2d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(72, 'Chaney Frazier', NULL, NULL, NULL, NULL, 'Aspernatur quo ab at', '+1 (223) 804-1477', NULL, 'bd.samapti.roy@gmail.com', '$2y$10$yuJ7fqRP0ShrqhFM6udsT.fGY.jD6yyHfsvVjO5rPBfFcO2ftyS9q', NULL, '2022-11-24 05:35:18', '2022-11-24 05:35:18', 0, 0, '09049d7fb063681e4d412c26c4b449a2', 'No', '0506c90b376bc09eb7cc96360aab1c1b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(73, 'Maruf Hasan', NULL, NULL, NULL, NULL, 'Farmgate, Dhaka-1215', '01949318043', NULL, 'maruf.hasan.9493@gmail.com', '$2y$10$SCaOVBwiVsK2ZmKNyi0ehO32Q0VzUFzPkV/PB9pmrUby9gqfsE/0O', NULL, '2022-12-20 08:44:33', '2022-12-20 09:15:27', 0, 0, '77ee0cf97b20d6569eec4f56e083cc39', 'No', '8858d1d707f2135cf925709f5f95e212', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(74, 'Maruf Hasan', NULL, NULL, NULL, NULL, 'Farmgate, Dhaka-1215', '01949318043', NULL, 'maruf16-439@diu.edu.bd', '$2y$10$OMmNSENh9zFuhovE.SgmSeG4oVGikPStPRr28uRSOaf45lPniEO/S', NULL, '2022-12-20 09:49:00', '2022-12-20 09:49:00', 0, 0, '02d21e029736bc091158508718202b74', 'No', 'a8580399c5c1113f868e8ade1be70f03', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, '2019-10-09 21:32:57', '2019-10-09 21:32:57', 1, NULL),
(84, 13, 5, 'Standard', '$', 'NGN', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(85, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', NULL, NULL, '2020-10-24 05:14:05', '2020-10-24 05:14:05', 0, NULL),
(86, 22, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-10-24 09:46:53', '2020-10-24 09:46:53', 1, NULL),
(87, 33, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-10-24 23:57:19', '2020-10-24 23:57:19', 1, NULL),
(88, 34, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-10-25 07:30:09', '2020-10-25 07:30:09', 1, NULL),
(89, 29, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-10-29 15:55:44', '2020-10-29 15:55:44', 1, NULL),
(90, 45, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-11-19 04:14:54', '2020-11-19 04:14:54', 1, NULL),
(91, 46, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, '2020-11-22 17:40:45', '2020-11-22 17:40:45', 1, NULL),
(92, 22, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', NULL, NULL, '2022-12-20 20:56:02', '2022-12-20 20:56:02', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(74, 45, 93, 1, 8.8, 'czLH1611755425', 'pending'),
(75, 13, 94, 1, 0.04, 'k1FV1611755552', 'on delivery'),
(76, 45, 95, 1, 20, 'OWcS1613381738', 'on delivery'),
(77, 45, 96, 1, 125, 'yedA1619583446', 'pending'),
(78, 45, 97, 2, 250, 'idFQ1619587744', 'pending'),
(79, 45, 103, 1, 125, '8VbG1658728510', 'completed'),
(80, 45, 103, 1, 114, '8VbG1658728510', 'completed'),
(81, 45, 103, 1, 525, '8VbG1658728510', 'completed'),
(82, 45, 104, 1, 125, 'kiDR1659950543', 'pending'),
(83, 45, 105, 1, 125, 'OOW41660372572', 'completed'),
(84, 13, 105, 1, 2500, 'OOW41660372572', 'completed'),
(85, 13, 106, 4, 10000, 'ISSo1660373104', 'completed'),
(86, 45, 107, 1, 125, 'pRSJ1660576793', 'completed'),
(87, 45, 107, 1, 114, 'pRSJ1660576793', 'completed'),
(88, 45, 107, 1, 525, 'pRSJ1660576793', 'completed'),
(89, 45, 107, 1, 4.4, 'pRSJ1660576793', 'completed'),
(90, 45, 108, 2, 250, '879l1660578871', 'completed'),
(91, 45, 108, 2, 228, '879l1660578871', 'completed'),
(92, 45, 108, 1, 525, '879l1660578871', 'completed'),
(93, 45, 108, 1, 4.4, '879l1660578871', 'completed'),
(94, 45, 109, 1, 70, 'xRJ61669205485', 'pending'),
(95, 45, 109, 1, 300, 'xRJ61669205485', 'pending'),
(96, 45, 109, 1, 375, 'xRJ61669205485', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2019-11-14 03:34:06'),
(6, 54, '1607596491IMG_0403.JPG', 'Verified', 'Hello korear bazar i want to be your vendor. Thank you', 0, 'test', '2020-12-10 17:21:22', '2020-12-10 21:35:48'),
(7, 29, '16075816231578780111adult-beard-boy-casual-220453.jpg,16075816231578780111adult-beard-boy-casual-220453.jpg', 'Verified', 'test', 0, 'test', '2020-12-10 17:22:08', '2021-01-20 03:53:06'),
(8, 45, '1660580029logo.png', 'Pending', 'Fugiat officia et ea voluptate', 0, 'Dear Happy star halal food and travel. Please click verify now. Thank you', '2020-12-10 21:38:32', '2022-08-15 16:13:49'),
(9, 45, '1607598870Picture-2020-10-24 22.46.55.jpg', 'Verified', 'please accept my request', 0, 'Please click verify', '2020-12-10 22:07:52', '2020-12-10 22:14:47'),
(11, 29, '16110753271608629098473.JPEG', 'Verified', 'test', 0, 'some details', '2021-01-20 03:54:30', '2021-01-20 03:55:43'),
(12, 68, '1644990392Computer Certificate.JPG', 'Pending', 'Voluptatem Laborum', 0, 'are you sure to vendor access giving to you', '2022-02-16 16:40:10', '2022-02-16 16:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(19, 45, 200),
(20, 22, 288),
(21, 22, 289);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(1, 13, 'Paypal', '1234@fs.com', NULL, NULL, NULL, NULL, NULL, NULL, -3.99, 5.053, '2020-11-23 17:37:16', '2020-11-23 17:40:10', 'completed', 'vendor'),
(2, 22, 'Payoneer', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Test', 0.18, 0, '2021-01-20 13:41:33', '2021-01-20 13:41:33', 'pending', 'user'),
(3, 22, 'Paypal', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Test2', 0.09, 0, '2021-01-20 15:08:18', '2021-01-20 15:08:18', 'pending', 'user'),
(4, 13, 'cash', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2.64, 0, '2021-01-24 13:40:11', '2021-01-24 13:40:11', 'pending', 'user'),
(5, 13, 'cash', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2.64, 0, '2021-01-24 20:27:20', '2021-01-24 20:27:20', 'pending', 'user'),
(6, 13, 'cash', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2.64, 0, '2021-01-24 20:27:49', '2021-01-24 20:27:49', 'pending', 'user'),
(7, 13, 'a', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2.64, 0, '2021-01-24 21:04:12', '2021-01-24 21:04:12', 'pending', 'user'),
(8, 13, NULL, 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2.64, 0, '2021-01-24 21:04:28', '2021-01-24 21:04:28', 'pending', 'user'),
(9, 13, NULL, 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2.64, 0, '2021-01-24 21:04:36', '2021-01-24 21:04:36', 'pending', 'user'),
(10, 13, 'cash', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 2.64, 0, '2021-01-24 21:32:20', '2021-01-24 21:32:20', 'pending', 'user'),
(11, 45, 'Cash', 'kb@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sdfsdfsdf45sdf56sd4f6', 800, 0, '2022-08-15 22:15:57', '2022-08-15 22:17:35', 'completed', 'vendor'),
(12, 22, 'Paypal', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, '1000', 11.81, 0, '2022-12-23 23:40:39', '2022-12-23 23:40:39', 'pending', 'user'),
(13, 22, 'Paypal', 'user@gmail.com', NULL, NULL, NULL, NULL, NULL, '1000', 11.81, 0, '2022-12-23 23:40:41', '2022-12-23 23:40:41', 'pending', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti`
--
ALTER TABLE `noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_banner`
--
ALTER TABLE `top_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3764;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `top_banner`
--
ALTER TABLE `top_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
