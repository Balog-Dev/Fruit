-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2023 at 02:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom9`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `vendor_id`, `mobile`, `email`, `password`, `image`, `confirm`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Amit Gupta', 'superadmin', 0, '9500000000', 'admin@admin.com', '$2a$12$apXmK4/yza5lb2SoiOYP.evqydRwfb3r32/6ex6qkwkuTs2yRUzkO', '46481.jpeg', 'No', 1, NULL, '2022-05-24 10:24:04'),
(2, 'John Singh', 'vendor', 1, '9846444444', 'john@admin.com', '$2a$12$99YxoNEWP3RTBaQ.yZ3mSewgYJFUAxP2DTyD/jki9f/473usoC5fK', '49679.png', 'Yes', 1, NULL, '2022-09-25 03:41:04'),
(3, 'Sanjay', 'vendor', 5, '9870000000', 'sanjay@yopmail.com', '$2y$10$soGR9hJNelU.dnKT0bk9BOmhGDV6UczWftIea69l9aXbhW5xOqGaa', NULL, 'No', 1, '2022-08-13 11:29:59', '2022-09-25 03:38:28'),
(4, 'Rahul', 'vendor', 6, '9870000001', 'rahul@admin.com', '$2y$10$OA.P5I.uhJjRC/34Sv7RtOeOnsQ/lAtuOSspvHteJfRn.szCgG8.a', NULL, 'No', 1, '2022-08-13 17:03:00', '2022-08-14 06:53:09'),
(7, 'Amit Gupta', 'vendor', 9, '9870000005', 'test2425@yopmail.com', '$2y$10$PBJUUjTud3W2eLuj5cZR0uomZN4Ul2N23g1Z8iALBPK5cvtrudB1e', '', 'Yes', 1, '2022-08-14 02:59:50', '2022-08-14 07:31:39'),
(8, 'Steve', 'vendor', 10, '9870000002', 'steve@yopmail.com', '$2y$10$.R98IH5mbdhWadSak0sESuVZ5eQ.qPqUJJya5i2ejj2j9/qkgNtYq', '84591.jpeg', 'Yes', 1, '2022-09-11 02:34:43', '2022-09-10 21:11:25'),
(9, 'Imran', 'vendor', 11, '9870000004', 'imran@yopmail.com', '$2y$10$y.CH3wFqTFh2D1C9TdZCWu4K9e37NRDSH9vAFYvX.3xjMFwOWH3fq', '27120.jpeg', 'Yes', 1, '2022-09-11 03:09:49', '2022-09-10 21:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (  
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `type`, `link`, `title`, `alt`, `status`, `created_at`, `updated_at`) VALUES
(1, '75548.png', 'Slider', 'spring-collection', 'Spring Collection', 'Spring Collection', 1, NULL, '2022-06-14 09:14:22'),
(2, 'banner-2.png', 'Slider', 'tops', 'Tops', 'Tops', 1, NULL, '2022-06-14 09:18:33'),
(5, '95054.png', 'Fix', 'men', 'men', 'men', 1, '2022-06-08 10:22:47', '2022-06-14 09:17:24'),
(6, '63694.png', 'Fix', 'test', 'test', 'test', 1, '2022-06-14 09:18:59', '2022-06-14 09:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arrow', 1, NULL, NULL),
(2, 'Gap', 1, NULL, NULL),
(3, 'Lee', 1, NULL, NULL),
(4, 'Samsung', 1, NULL, NULL),
(5, 'LG', 1, NULL, '2022-04-17 07:09:13'),
(6, 'Lenovo', 1, NULL, '2022-04-17 07:09:13'),
(7, 'MI', 1, NULL, '2022-04-17 07:09:14'),
(9, 'Others', 1, '2022-04-17 07:13:02', '2022-04-17 07:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '464467e3f6aaf0768e8b221ec7f4cef7', 5, 2, 'Medium', 1, '2022-10-22 21:53:10', 'c'),
(5, 'aa26b44e05f858b54f3ee4afbbd589a8', 15, 5, 'Medium', 5, '2022-11-16 07:55:07', '2022-12-08 20:22:44'),
(9, '4eae62fb8cca33a3a000cfe0fd605ed4', 0, 2, 'Medium', 2, '2022-11-20 08:42:28', '2022-11-20 08:42:38'),
(10, 'd50a8ec19405bab2e2dc574b79c288e6', 0, 2, 'Medium', 1, '2022-11-22 09:07:25', '2022-11-22 09:07:25'),
(11, 'df8986af36d5c32750fbfb044ba02526', 0, 2, 'Medium', 1, '2022-12-01 09:14:15', '2022-12-01 09:14:15'),
(13, '85d21f9d1ad0ef903b8a60ae97c45408', 0, 2, 'Medium', 1, '2022-12-03 21:40:03', '2022-12-03 21:40:03'),
(14, '85d21f9d1ad0ef903b8a60ae97c45408', 0, 4, 'Small', 1, '2022-12-03 21:40:33', '2022-12-03 21:40:33'),
(15, 'af1aee51bb6890bbf82b89f501fe1ea3', 15, 2, 'Medium', 2, '2022-12-07 09:20:37', '2022-12-08 11:35:45'),
(25, '031a4ff743571666b48e872c0b2ce045', 0, 2, 'Large', 1, '2023-01-09 08:44:49', '2023-01-09 08:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_discount` float NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_image`, `category_discount`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Men', '', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'men', NULL, NULL, NULL, 1, NULL, '2022-07-03 01:39:12'),
(2, 0, 1, 'Women', '', 0, '', 'women', '', '', '', 1, NULL, '2022-04-08 11:42:55'),
(3, 0, 1, 'Kids', '', 0, '', 'kids', '', '', '', 1, NULL, '2022-06-03 10:22:15'),
(4, 0, 2, 'Mobiles', '', 10, NULL, 'mobiles', 'mobiles', NULL, 'mobiles', 1, '2022-04-10 00:41:14', '2022-04-14 10:09:09'),
(5, 4, 2, 'Smartphones', '', 10, 'smartphones', 'smartphones', 'smartphones', 'smartphones', 'smartphones', 1, '2022-04-10 01:31:31', '2022-04-10 01:31:31'),
(6, 1, 1, 'T-Shirts', '', 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'tshirts', 'tshirts', NULL, 'tshirts', 1, '2022-04-10 01:59:53', '2022-07-03 01:39:25'),
(7, 1, 1, 'Shirts', '', 0, NULL, 'shirts', NULL, NULL, NULL, 1, '2022-04-10 04:17:11', '2022-04-10 04:17:11'),
(8, 2, 1, 'Tops', '', 0, NULL, 'tops', NULL, NULL, NULL, 1, '2022-04-10 04:20:38', '2022-04-10 04:20:38'),
(10, 0, 3, 'Refrigerators', '', 0, NULL, 'refrigerators', 'Refrigerators', NULL, NULL, 1, '2022-06-03 10:32:15', '2022-06-03 10:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `title`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Stack Developers', 'Stack Developers Youtube Channel provides the Laravel
 and React JS tutorials', 'about-us', 'About Us', 'Desc', 'about us', 1, NULL, 
 '2023-01-04 09:30:52'),
(3, 'Privacy Policy', 'Content for privacy policy will come up here',
 'privacy-policy', 'Privacy Policy', 'Privacy Policy of our E-commerce Website/React App', 
'privacy policy', 1, '2022-12-29 10:15:41', '2022-12-29 10:15:41'),
(4, 'FAQ', 'FAQ content will come here', 'faq', NULL, NULL, NULL, 1,
 '2023-01-03 10:08:49', '2023-01-03 10:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(2, 'AL', 'Albania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(3, 'DZ', 'Algeria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(4, 'DS', 'American Samoa', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(5, 'AD', 'Andorra', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(6, 'AO', 'Angola', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(7, 'AI', 'Anguilla', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(8, 'AQ', 'Antarctica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(9, 'AG', 'Antigua and Barbuda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(10, 'AR', 'Argentina', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(11, 'AM', 'Armenia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(12, 'AW', 'Aruba', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(13, 'AU', 'Australia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(14, 'AT', 'Austria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(15, 'AZ', 'Azerbaijan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(16, 'BS', 'Bahamas', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(17, 'BH', 'Bahrain', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(18, 'BD', 'Bangladesh', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(19, 'BB', 'Barbados', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(20, 'BY', 'Belarus', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(21, 'BE', 'Belgium', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(22, 'BZ', 'Belize', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(23, 'BJ', 'Benin', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(24, 'BM', 'Bermuda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(25, 'BT', 'Bhutan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(26, 'BO', 'Bolivia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(27, 'BA', 'Bosnia and Herzegovina', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(28, 'BW', 'Botswana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(29, 'BV', 'Bouvet Island', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(30, 'BR', 'Brazil', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(31, 'IO', 'British Indian Ocean Territory', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(32, 'BN', 'Brunei Darussalam', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(33, 'BG', 'Bulgaria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(34, 'BF', 'Burkina Faso', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(35, 'BI', 'Burundi', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(36, 'KH', 'Cambodia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(37, 'CM', 'Cameroon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(38, 'CA', 'Canada', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(39, 'CV', 'Cape Verde', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(40, 'KY', 'Cayman Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(41, 'CF', 'Central African Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(42, 'TD', 'Chad', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(43, 'CL', 'Chile', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(44, 'CN', 'China', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(45, 'CX', 'Christmas Island', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(46, 'CC', 'Cocos (Keeling) Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(47, 'CO', 'Colombia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(48, 'KM', 'Comoros', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(49, 'CD', 'Democratic Republic of the Congo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(50, 'CG', 'Republic of Congo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(51, 'CK', 'Cook Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(52, 'CR', 'Costa Rica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(53, 'HR', 'Croatia (Hrvatska)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(54, 'CU', 'Cuba', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(55, 'CY', 'Cyprus', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(56, 'CZ', 'Czech Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(57, 'DK', 'Denmark', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(58, 'DJ', 'Djibouti', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(59, 'DM', 'Dominica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(60, 'DO', 'Dominican Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(61, 'TP', 'East Timor', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(62, 'EC', 'Ecuador', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(63, 'EG', 'Egypt', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(64, 'SV', 'El Salvador', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(65, 'GQ', 'Equatorial Guinea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(66, 'ER', 'Eritrea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(67, 'EE', 'Estonia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(68, 'ET', 'Ethiopia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(69, 'FK', 'Falkland Islands (Malvinas)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(70, 'FO', 'Faroe Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(71, 'FJ', 'Fiji', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(72, 'FI', 'Finland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(73, 'FR', 'France', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(74, 'FX', 'France, Metropolitan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(75, 'GF', 'French Guiana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(76, 'PF', 'French Polynesia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(77, 'TF', 'French Southern Territories', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(78, 'GA', 'Gabon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(79, 'GM', 'Gambia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(80, 'GE', 'Georgia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(81, 'DE', 'Germany', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(82, 'GH', 'Ghana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(83, 'GI', 'Gibraltar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(84, 'GK', 'Guernsey', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(85, 'GR', 'Greece', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(86, 'GL', 'Greenland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(87, 'GD', 'Grenada', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(88, 'GP', 'Guadeloupe', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(89, 'GU', 'Guam', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(90, 'GT', 'Guatemala', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(91, 'GN', 'Guinea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(92, 'GW', 'Guinea-Bissau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(93, 'GY', 'Guyana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(94, 'HT', 'Haiti', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(95, 'HM', 'Heard and Mc Donald Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(96, 'HN', 'Honduras', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(97, 'HK', 'Hong Kong', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(98, 'HU', 'Hungary', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(99, 'IS', 'Iceland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(100, 'IN', 'India', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(101, 'IM', 'Isle of Man', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(102, 'ID', 'Indonesia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(103, 'IR', 'Iran (Islamic Republic of)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(104, 'IQ', 'Iraq', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(105, 'IE', 'Ireland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(106, 'IL', 'Israel', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(107, 'IT', 'Italy', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(108, 'CI', 'Ivory Coast', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(109, 'JE', 'Jersey', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(110, 'JM', 'Jamaica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(111, 'JP', 'Japan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(112, 'JO', 'Jordan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(113, 'KZ', 'Kazakhstan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(114, 'KE', 'Kenya', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(115, 'KI', 'Kiribati', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(117, 'KR', 'Korea, Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(118, 'XK', 'Kosovo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(119, 'KW', 'Kuwait', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(120, 'KG', 'Kyrgyzstan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(121, 'LA', 'Lao People\'s Democratic Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(122, 'LV', 'Latvia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(123, 'LB', 'Lebanon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(124, 'LS', 'Lesotho', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(125, 'LR', 'Liberia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(126, 'LY', 'Libyan Arab Jamahiriya', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(127, 'LI', 'Liechtenstein', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(128, 'LT', 'Lithuania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(129, 'LU', 'Luxembourg', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(130, 'MO', 'Macau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(131, 'MK', 'North Macedonia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(132, 'MG', 'Madagascar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(133, 'MW', 'Malawi', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(134, 'MY', 'Malaysia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(135, 'MV', 'Maldives', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(136, 'ML', 'Mali', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(137, 'MT', 'Malta', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(138, 'MH', 'Marshall Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(139, 'MQ', 'Martinique', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(140, 'MR', 'Mauritania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(141, 'MU', 'Mauritius', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(142, 'TY', 'Mayotte', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(143, 'MX', 'Mexico', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(144, 'FM', 'Micronesia, Federated States of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(145, 'MD', 'Moldova, Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(146, 'MC', 'Monaco', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(147, 'MN', 'Mongolia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(148, 'ME', 'Montenegro', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(149, 'MS', 'Montserrat', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(150, 'MA', 'Morocco', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(151, 'MZ', 'Mozambique', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(152, 'MM', 'Myanmar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(153, 'NA', 'Namibia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(154, 'NR', 'Nauru', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(155, 'NP', 'Nepal', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(156, 'NL', 'Netherlands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(157, 'AN', 'Netherlands Antilles', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(158, 'NC', 'New Caledonia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(159, 'NZ', 'New Zealand', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(160, 'NI', 'Nicaragua', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(161, 'NE', 'Niger', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(162, 'NG', 'Nigeria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(163, 'NU', 'Niue', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(164, 'NF', 'Norfolk Island', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(165, 'MP', 'Northern Mariana Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(166, 'NO', 'Norway', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(167, 'OM', 'Oman', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(168, 'PK', 'Pakistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(169, 'PW', 'Palau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(170, 'PS', 'Palestine', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(171, 'PA', 'Panama', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(172, 'PG', 'Papua New Guinea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(173, 'PY', 'Paraguay', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(174, 'PE', 'Peru', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(175, 'PH', 'Philippines', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(176, 'PN', 'Pitcairn', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(177, 'PL', 'Poland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(178, 'PT', 'Portugal', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(179, 'PR', 'Puerto Rico', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(180, 'QA', 'Qatar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(181, 'RE', 'Reunion', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(182, 'RO', 'Romania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(183, 'RU', 'Russian Federation', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(184, 'RW', 'Rwanda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(185, 'KN', 'Saint Kitts and Nevis', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(186, 'LC', 'Saint Lucia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(187, 'VC', 'Saint Vincent and the Grenadines', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(188, 'WS', 'Samoa', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(189, 'SM', 'San Marino', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(190, 'ST', 'Sao Tome and Principe', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(191, 'SA', 'Saudi Arabia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(192, 'SN', 'Senegal', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(193, 'RS', 'Serbia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(194, 'SC', 'Seychelles', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(195, 'SL', 'Sierra Leone', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(196, 'SG', 'Singapore', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(197, 'SK', 'Slovakia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(198, 'SI', 'Slovenia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(199, 'SB', 'Solomon Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(200, 'SO', 'Somalia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(201, 'ZA', 'South Africa', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(202, 'GS', 'South Georgia South Sandwich Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(203, 'SS', 'South Sudan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(204, 'ES', 'Spain', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(205, 'LK', 'Sri Lanka', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(206, 'SH', 'St. Helena', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(207, 'PM', 'St. Pierre and Miquelon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(208, 'SD', 'Sudan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(209, 'SR', 'Suriname', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(211, 'SZ', 'Swaziland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(212, 'SE', 'Sweden', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(213, 'CH', 'Switzerland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(214, 'SY', 'Syrian Arab Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(215, 'TW', 'Taiwan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(216, 'TJ', 'Tajikistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(217, 'TZ', 'Tanzania, United Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(218, 'TH', 'Thailand', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(219, 'TG', 'Togo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(220, 'TK', 'Tokelau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(221, 'TO', 'Tonga', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(222, 'TT', 'Trinidad and Tobago', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(223, 'TN', 'Tunisia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(224, 'TR', 'Turkey', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(225, 'TM', 'Turkmenistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(226, 'TC', 'Turks and Caicos Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(227, 'TV', 'Tuvalu', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(228, 'UG', 'Uganda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(229, 'UA', 'Ukraine', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(230, 'AE', 'United Arab Emirates', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(231, 'GB', 'United Kingdom', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(232, 'US', 'United States', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(233, 'UM', 'United States minor outlying islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(234, 'UY', 'Uruguay', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(235, 'UZ', 'Uzbekistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(236, 'VU', 'Vanuatu', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(237, 'VA', 'Vatican City State', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(238, 'VE', 'Venezuela', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(239, 'VN', 'Vietnam', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(240, 'VG', 'Virgin Islands (British)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(241, 'VI', 'Virgin Islands (U.S.)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(242, 'WF', 'Wallis and Futuna Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(243, 'EH', 'Western Sahara', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(244, 'YE', 'Yemen', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(245, 'ZM', 'Zambia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(246, 'ZW', 'Zimbabwe', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `coupon_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brands` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `vendor_id`, `coupon_option`, `coupon_code`, `categories`, `brands`, `users`, `coupon_type`, `amount_type`, `amount`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Automatic', 'ikc5Gn36', '1,6,7,2,8,3', '1,2', '', 'Multiple Times', 'Percentage', 10.00, '2023-12-31', 1, '2022-12-01 09:53:19', '2023-01-05 20:39:56'),
(2, 0, 'Manual', 'test200', '1,6,7,2,8,3,4,5', '1,2,4', 'amit2355@yopmail.com,amit53536@yopmail.com,amit35366@yopmail.com,amit3533464@yopmail.com', 'Single Time', 'Fixed', 200.00, '2022-12-31', 1, '2022-12-01 09:53:53', '2022-12-08 11:23:37'),
(3, 0, 'Manual', 'test20', '1,6,7,2,8,3', '1,2', 'amit100@yopmail.com,amit200@yopmail.com', 'Single Time', 'Percentage', 20.00, '2022-12-31', 1, '2022-12-03 21:47:47', '2022-12-03 21:47:47'),
(4, 9, 'Automatic', 'ypVJPWGf', '1,6,7,2,8,3', '1,2,3,4,5,6,7', '', 'Multiple Times', 'Percentage', 10.00, '2024-12-31', 1, '2022-12-07 11:26:24', '2022-12-07 11:26:24'),
(5, 0, 'Automatic', 'Ty56XqnQ', '1,6', '1,2', 'amit100@yopmail.com,amit200@yopmail.com', 'Single Time', 'Percentage', 10.00, '2023-01-19', 1, '2023-01-05 20:50:05', '2023-01-05 20:50:05'),
(6, 0, 'Manual', 'test250', '1,6', '1,2', '', 'Single Time', 'Percentage', 250.00, '2023-01-06', 1, '2023-01-05 20:50:44', '2023-01-05 20:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(1, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 1, NULL, '2022-12-23 11:24:27'),
(5, 20, 'amit gupta', '12345-a', 'ldh', 'pb', 'Iceland', '141001', '9500000000', 1, '2022-12-23 11:39:40', '2022-12-23 11:40:04'),
(6, 20, 'John', '123-a', 'Delhi', 'Delhi', 'India', '110001', '9876000000', 1, '2022-12-29 09:01:11', '2022-12-29 09:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_17_145807_create_vendors_table', 2),
(6, '2022_02_17_150129_create_admins_table', 3),
(7, '2022_03_07_143631_create_vendors_business_details_table', 4),
(8, '2022_03_07_144056_create_vendors_bank_details', 5),
(9, '2022_03_30_153830_create_sections_table', 6),
(10, '2022_04_08_163340_create_categories_table', 7),
(11, '2022_04_17_122153_create_brands_table', 8),
(12, '2022_04_21_150037_create_products_table', 9),
(13, '2022_05_08_031422_create_products_attributes_table', 10),
(14, '2022_05_11_153022_create_products_images_table', 11),
(15, '2022_06_07_150617_create_banners_table', 12),
(16, '2022_06_13_023248_update_banners_table', 13),
(17, '2022_06_14_143834_update_banners_table', 14),
(18, '2022_06_18_145512_update_products_table', 15),
(19, '2022_07_15_151433_create_products_filters_table', 16),
(20, '2022_07_15_151701_create_products_filters_values_table', 17),
(21, '2022_09_15_171021_create_recently_viewed_products_table', 18),
(22, '2022_09_19_143032_create_carts_table', 19),
(24, '2022_10_16_031308_add_columns_to_users', 20),
(25, '2022_12_20_135455_create_delivery_addresses_table', 21),
(26, '2022_12_29_145231_create_cms_pages_table', 22),
(27, '2023_01_02_142151_create_orders_table', 23),
(28, '2023_01_02_142554_create_orders_products_table', 24),
(29, '2023_01_13_124313_create_order_statuses_table', 25),
(30, '2023_01_24_143715_create_orders_logs_table', 26),
(31, '2023_01_24_145701_update_orders_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double(8,2) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `payment_gateway`, `grand_total`, `courier_name`, `tracking_number`, `created_at`, `updated_at`) VALUES
(1, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 'amit353466@yopmail.com', 0.00, 'PzBbNRwm', 220.00, 'New', 'COD', 'COD', 1980.00, '', '', '2023-01-02 09:53:15', '2023-01-19 09:47:28'),
(2, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 'amit353466@yopmail.com', 0.00, 'PzBbNRwm', 220.00, 'New', 'COD', 'COD', 1980.00, '', '', '2023-01-02 10:05:01', '2023-01-02 10:05:01'),
(3, 20, 'amit gupta', '12345-a', 'ldh', 'pb', 'Iceland', '141001', '9500000000', 'amit353466@yopmail.com', 0.00, 'PzBbNRwm', 220.00, 'New', 'COD', 'COD', 1080.00, '', '', '2023-01-02 10:13:38', '2023-01-02 10:13:38'),
(4, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 'amit353466@yopmail.com', 0.00, NULL, NULL, 'New', 'COD', 'COD', 1300.00, '', '', '2023-01-07 21:37:04', '2023-01-07 21:37:04'),
(5, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 'amit353466@yopmail.com', 0.00, NULL, NULL, 'New', 'COD', 'COD', 1200.00, '', '', '2023-01-08 05:06:29', '2023-01-08 05:06:29'),
(7, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 'amit353466@yopmail.com', 0.00, NULL, NULL, 'New', 'COD', 'COD', 1200.00, '', '', '2023-01-19 09:05:12', '2023-01-19 09:05:12'),
(8, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 'amit353466@yopmail.com', 0.00, NULL, NULL, 'New', 'COD', 'COD', 1200.00, '', '', '2023-01-19 09:06:10', '2023-01-19 09:06:10'),
(9, 20, 'John Singh', '123-a', 'New Delhi', 'Delhi', 'India', '10001', '9800000000', 'amit353466@yopmail.com', 0.00, NULL, NULL, 'New', 'COD', 'COD', 1200.00, '', '', '2023-01-19 09:06:58', '2023-01-19 09:06:58'),
(10, 20, 'amit gupta', '12345-a', 'ldh', 'pb', 'Iceland', '141001', '9500000000', 'amit353466@yopmail.com', 0.00, NULL, NULL, 'Shipped', 'COD', 'COD', 14700.00, 'Fedex', '45464646', '2023-01-19 09:10:09', '2023-01-24 11:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders_logs`
--

CREATE TABLE `orders_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_logs`
--

INSERT INTO `orders_logs` (`id`, `order_id`, `order_item_id`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 10, 11, 'Shipped', '2023-01-24 10:18:44', '2023-01-24 10:18:44'),
(2, 10, NULL, 'Shipped', '2023-01-24 10:34:32', '2023-01-24 10:34:32'),
(3, 10, NULL, 'Shipped', '2023-01-24 11:32:26', '2023-01-24 11:32:26'),
(4, 10, NULL, 'Shipped', '2023-01-24 11:33:14', '2023-01-24 11:33:14'),
(5, 10, NULL, 'Shipped', '2023-01-24 11:33:32', '2023-01-24 11:33:32'),
(6, 10, 12, 'Shipped', '2023-01-24 11:35:27', '2023-01-24 11:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `item_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `vendor_id`, `admin_id`, `product_id`, `product_code`, `product_name`, `product_color`, `product_size`, `product_price`, `product_qty`, `item_status`, `courier_name`, `tracking_number`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 9, 7, 8, 'BT501', 'Blue T-Shirt', 'Blue', 'Small', 1000.00, 1, '', '', '', '2023-01-02 09:53:15', '2023-01-19 09:58:42'),
(2, 1, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Medium', 1200.00, 1, '', '', '', '2023-01-02 09:53:15', '2023-01-13 07:58:24'),
(3, 2, 20, 9, 7, 8, 'BT501', 'Blue T-Shirt', 'Blue', 'Small', 1000.00, 1, '', '', '', '2023-01-02 10:05:01', '2023-01-02 10:05:01'),
(4, 2, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Medium', 1200.00, 1, '', '', '', '2023-01-02 10:05:01', '2023-01-02 10:05:01'),
(5, 3, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Large', 1300.00, 1, '', '', '', '2023-01-02 10:13:38', '2023-01-02 10:13:38'),
(6, 4, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Large', 1300.00, 1, '', '', '', '  ', '2023-01-07 21:37:04'),
(7, 5, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Medium', 1200.00, 1, '', '', '', '2023-01-08 05:06:29', '2023-01-08 05:06:29'),
(8, 7, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Medium', 1200.00, 1, NULL, '', '', '2023-01-19 09:05:12', '2023-01-19 09:05:12'),
(9, 8, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Medium', 1200.00, 1, NULL, '', '', '2023-01-19 09:06:10', '2023-01-19 09:06:10'),
(10, 9, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Medium', 1200.00, 1, NULL, '', '', '  ', '2023-01-19 09:06:58'),
(11, 10, 20, 0, 1, 1, 'RN11', 'Redmi Note 11', 'Blue', '64GB - 4GB', 13500.00, 1, 'Shipped', 'Fedex', '39539936', '2023-01-19 09:10:09', '2023-01-24 10:18:44'),
(12, 10, 20, 0, 1, 2, 'RC001', 'Red Casual T-Shirt', 'Red', 'Medium', 1200.00, 1, 'Shipped', 'Blue Dart', '34353536', '2023-01-19 09:10:09', '2023-01-24 11:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_statuses`
--

CREATE TABLE `order_item_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item_statuses`
--

INSERT INTO `order_item_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, NULL, NULL),
(2, 'In Process', 1, NULL, NULL),
(3, 'Shipped', 1, NULL, NULL),
(4, 'Delivered', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New', 1, NULL, NULL),
(2, 'Pending', 1, NULL, NULL),
(3, 'Cancelled', 1, NULL, NULL),
(4, 'In Process', 1, NULL, NULL),
(5, 'Shipped', 1, NULL, NULL),
(6, 'Partially Shipped', 1, NULL, NULL),
(7, 'Delivered', 1, NULL, NULL),
(8, 'Partially Delivered', 1, NULL, NULL),
(9, 'Paid', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_discount` float NOT NULL,
  `product_weight` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operating_system` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occassion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sleeve` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fabric` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bestseller` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `section_id`, `category_id`, `brand_id`, `vendor_id`, `admin_id`, `admin_type`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_image`, `product_video`, `group_code`, `description`, `operating_system`, `screen_size`, `occassion`, `fit`, `pattern`, `sleeve`, `ram`, `fabric`, `meta_title`, `meta_description`, `meta_keywords`, `is_featured`, `is_bestseller`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 7, 0, 1, 'superadmin', 'Redmi Note 11', 'RN11', 'Blue', 15000, 10, 500, '84592.png', '', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing   .', 'Android', 'Up to 3.9 in', NULL, NULL, NULL, NULL, '4 GB', NULL, NULL, NULL, NULL, 'Yes', 'Yes', 1, NULL, '2022-09-01 08:24:54'),
(2, 1, 6, 2, 0, 1, 'superadmin', 'Red Casual T-Shirt', 'RC001', 'Red', 1100, 0, 200, '17083.jpeg', '', '100', 'Lorem ipsum dolor sit amet, consectetur adipiscing   .', NULL, NULL, NULL, NULL, NULL, 'Half Sleeve', NULL, 'cotton', NULL, NULL, NULL, 'Yes', 'Yes', 1, NULL, '2022-09-19 08:40:34'),
(3, 1, 6, 1, 0, 1, 'superadmin', 'Arrow Casual T-Shirt', 'AT01', 'Red', 1500, 0, 100, '43210.jpg', '75597.mp4', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing   .', NULL, NULL, NULL, NULL, NULL, 'Half Sleeve', NULL, 'cotton', 'Pure Cotton T-Shirt', 'this is pure cottont', 'cotton t-shirt, red tshirt', 'Yes', 'Yes', 1, '2022-05-01 02:23:20', '2022-07-25 09:50:05'),
(4, 1, 6, 3, 0, 1, 'superadmin', 'Blue T-Shirt', 'BT01', 'Blue', 2500, 0, 0, '45667.png', NULL, '100', 'Lorem ipsum dolor sit amet, consectetur adipiscing   .', NULL, NULL, NULL, NULL, NULL, 'Half Sleeve', NULL, 'Polyester', NULL, NULL, NULL, 'Yes', 'Yes', 1, '2022-06-16 09:40:18', '2022-09-19 08:41:28'),
(5, 1, 6, 2, 0, 1, 'superadmin', 'Green T-Shirt', 'GT01', 'Green', 3500, 10, 100, '3741.jpg', NULL, '100', 'Lorem ipsum dolor sit amet, consectetur adipiscing   .', NULL, NULL, NULL, NULL, NULL, 'Half Sleeve', NULL, 'Polyester', NULL, NULL, NULL, 'Yes', 'Yes', 1, '2022-06-16 09:41:01', '2022-10-01 09:14:59'),
(6, 1, 7, 1, 0, 1, 'superadmin', 'Blue Shirt', 'BS01', 'Blue', 2000, 10, 100, '64737.jpg', NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing   .', NULL, NULL, NULL, NULL, NULL, 'Full Sleeve', NULL, 'Polyester', NULL, NULL, NULL, 'Yes', 'Yes', 1, '2022-06-29 11:57:06', '2022-08-27 07:09:03'),
(7, 2, 4, 7, 0, 1, 'superadmin', 'Redmi Phone', 'RT001', 'Red', 12000, 0, 0, NULL, NULL, '', NULL, 'Android', '5 to 5.4 in', NULL, NULL, NULL, NULL, '4 GB', NULL, NULL, NULL, NULL, 'No', 'No', 1, '2022-07-17 02:37:46', '2022-07-17 02:37:46'),
(8, 1, 6, 2, 9, 7, 'vendor', 'Blue T-Shirt', 'BT501', 'Blue', 1600, 0, 0, '39366.jpeg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Full Sleeve', NULL, 'cotton', NULL, NULL, NULL, 'No', 'No', 1, '2022-08-14 06:42:29', '2022-08-14 06:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Small', 1100.00, 10, 'BT001-S', 0, '2022-05-08 08:17:17', '2022-08-27 05:38:13'),
(2, 2, 'Medium', 1200.00, 2, 'BT001-M', 1, '2022-05-08 08:17:17', '2022-08-27 05:39:06'),
(3, 2, 'Large', 1300.00, 1, 'BT001-L', 1, '2022-05-08 08:17:17', '2022-08-27 05:39:05'),
(4, 1, '64GB - 4GB', 15000.00, 100, 'RN11644', 1, '2022-07-27 05:45:02', '2022-07-27 05:45:02'),
(5, 1, '128GB - 4GB', 18000.00, 150, 'RN111284', 1, '2022-07-27 05:45:02', '2022-07-27 05:45:02'),
(6, 7, '64GB - 4GB', 12000.00, 100, 'RT001644', 1, '2022-07-27 05:52:44', '2022-07-27 05:52:44'),
(7, 3, 'Small', 900.00, 100, 'AT01S', 1, '2022-07-27 06:16:52', '2022-07-27 06:16:52'),
(8, 4, 'Small', 1000.00, 100, 'BT01-S', 1, '2022-07-27 06:17:23', '2022-07-27 06:17:23'),
(9, 5, 'Small', 800.00, 10, 'GT01-S', 1, '2022-07-27 06:18:01', '2022-07-27 06:18:01'),
(10, 5, 'Medium', 900.00, 10, 'GT01-M', 1, '2022-07-27 06:18:01', '2022-07-27 06:18:01'),
(11, 6, 'Small', 2000.00, 10, 'BS01-S', 1, '2022-07-27 06:18:21', '2022-07-27 06:18:21'),
(12, 6, 'Medium', 3000.00, 10, 'BS01-M', 1, '2022-08-27 07:09:36', '2022-08-27 07:09:36'),
(13, 8, 'Small', 1000.00, 10, 'BT501-S', 1, '2023-01-02 09:14:40', '2023-01-02 09:14:40'),
(14, 8, 'Medium', 1200.00, 10, 'BT501-M', 1, '2023-01-02 09:14:40', '2023-01-02 09:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `products_filters`
--

CREATE TABLE `products_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_column` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_filters`
--

INSERT INTO `products_filters` (`id`, `cat_ids`, `filter_name`, `filter_column`, `status`, `created_at`, `updated_at`) VALUES
(1, '1,6,7,2,8,3', 'Fabric', 'fabric', 1, '2022-07-16 21:37:17', '2022-07-16 21:37:17'),
(2, '4,5', 'RAM', 'ram', 1, '2022-07-16 21:38:00', '2022-07-16 21:38:00'),
(3, '1,6,7,2,8,3', 'Sleeve', 'sleeve', 1, '2022-07-16 21:44:12', '2022-07-16 21:44:12'),
(4, '1,6,7,2,8,3', 'Pattern', 'pattern', 1, '2022-07-16 21:44:33', '2022-07-16 21:44:33'),
(5, '1,6,7,2,8,3', 'Fit', 'fit', 1, '2022-07-16 21:44:53', '2022-07-16 21:44:53'),
(6, '1,6,7,2,8,3', 'Occasion', 'occassion', 1, '2022-07-16 21:45:30', '2022-07-16 21:45:30'),
(7, '4,5', 'Screen Size', 'screen_size', 1, '2022-07-16 22:02:46', '2022-07-16 22:02:46'),
(8, '4,5', 'Operating System', 'operating_system', 1, '2022-07-16 22:06:32', '2022-07-16 22:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `products_filters_values`
--

CREATE TABLE `products_filters_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_id` int(11) NOT NULL,
  `filter_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_filters_values`
--

INSERT INTO `products_filters_values` (`id`, `filter_id`, `filter_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'cotton', 1, '2022-07-16 21:57:30', '2022-07-16 21:57:30'),
(2, 1, 'Polyester', 1, '2022-07-16 21:58:04', '2022-07-16 21:58:04'),
(3, 1, 'Wool', 1, '2022-07-16 21:58:20', '2022-07-16 21:58:20'),
(4, 3, 'Full Sleeve', 1, '2022-07-16 21:58:39', '2022-07-16 21:58:39'),
(5, 3, 'Half Sleeve', 1, '2022-07-16 21:59:07', '2022-07-16 21:59:07'),
(6, 3, 'Short Sleeve', 1, '2022-07-16 21:59:43', '2022-07-16 21:59:43'),
(7, 2, '4 GB', 1, '2022-07-16 22:01:47', '2022-07-16 22:01:47'),
(8, 2, '8 GB', 1, '2022-07-16 22:02:02', '2022-07-16 22:02:02'),
(9, 7, 'Up to 3.9 in', 1, '2022-07-16 22:03:30', '2022-07-16 22:03:30'),
(10, 7, '4 to 4.4 in', 1, '2022-07-16 22:03:47', '2022-07-16 22:03:47'),
(11, 7, '4.5 to 4.9 in', 1, '2022-07-16 22:04:00', '2022-07-16 22:04:00'),
(12, 7, '5 to 5.4 in', 1, '2022-07-16 22:04:15', '2022-07-16 22:04:15'),
(13, 7, '5.5 in and above', 1, '2022-07-16 22:04:29', '2022-07-16 22:04:29'),
(14, 8, 'Android', 1, '2022-07-16 22:06:52', '2022-07-16 22:06:52'),
(15, 8, 'iOS', 1, '2022-07-16 22:07:12', '2022-07-16 22:07:12'),
(16, 8, 'Windows', 1, '2022-07-16 22:07:30', '2022-07-16 22:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Evostripe-Slim-Fit-Men\'s-T-Shirt.jpg95447.jpg', 1, '2022-05-11 11:17:25', '2022-05-11 11:38:15'),
(2, 2, 'Evostripe-Slim-Fit-Men\'s-T-Shirt.jpeg2756.jpeg', 0, '2022-05-11 11:17:25', '2022-05-11 11:38:14'),
(4, 2, 'Red_825962b5-2ea4-46b1-a7d9-196b17572185_650x.webp38459.webp', 1, '2022-09-01 08:49:44', '2022-09-01 08:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `recently_viewed_products`
--

CREATE TABLE `recently_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recently_viewed_products`
--

INSERT INTO `recently_viewed_products` (`id`, `product_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'dfaca66ee5814c6ddf2943cb820f2d0a', NULL, NULL),
(2, 3, 'dfaca66ee5814c6ddf2943cb820f2d0a', NULL, NULL),
(3, 2, 'dfaca66ee5814c6ddf2943cb820f2d0a', NULL, NULL),
(4, 4, 'dfaca66ee5814c6ddf2943cb820f2d0a', NULL, NULL),
(5, 8, 'dfaca66ee5814c6ddf2943cb820f2d0a', NULL, NULL),
(6, 2, '76ed2f858a547675b241a35707f3d73c', NULL, NULL),
(7, 4, '76ed2f858a547675b241a35707f3d73c', NULL, NULL),
(8, 2, 'e07a00f04f3127530e17faa869f94516', NULL, NULL),
(9, 4, 'e07a00f04f3127530e17faa869f94516', NULL, NULL),
(10, 5, 'e07a00f04f3127530e17faa869f94516', NULL, NULL),
(11, 2, '30d000b8abb642afc15ac5eaed728e4b', NULL, NULL),
(12, 4, '30d000b8abb642afc15ac5eaed728e4b', NULL, NULL),
(13, 2, '069f41dfe66ec2426d5a7dfa6f72c8fb', NULL, NULL),
(14, 3, 'fc15fe576bcc35c4c62c05e8e7c1d810', NULL, NULL),
(15, 5, 'fc15fe576bcc35c4c62c05e8e7c1d810', NULL, NULL),
(16, 6, 'fc15fe576bcc35c4c62c05e8e7c1d810', NULL, NULL),
(17, 2, 'fc15fe576bcc35c4c62c05e8e7c1d810', NULL, NULL),
(18, 2, 'd20d9723440d17b290dab8f128aae45b', NULL, NULL),
(19, 3, 'd20d9723440d17b290dab8f128aae45b', NULL, NULL),
(20, 6, 'd20d9723440d17b290dab8f128aae45b', NULL, NULL),
(21, 8, 'd20d9723440d17b290dab8f128aae45b', NULL, NULL),
(22, 4, 'd20d9723440d17b290dab8f128aae45b', NULL, NULL),
(23, 2, '00bcca8ca470fd3e4a7b88983db34a0c', NULL, NULL),
(24, 2, 'e42343d4950751853fed2198fdbc923f', NULL, NULL),
(25, 5, 'e42343d4950751853fed2198fdbc923f', NULL, NULL),
(26, 2, '881363ead01c1ac0a479f4eb20ca8e94', NULL, NULL),
(27, 4, '881363ead01c1ac0a479f4eb20ca8e94', NULL, NULL),
(28, 5, '881363ead01c1ac0a479f4eb20ca8e94', NULL, NULL),
(29, 2, '464467e3f6aaf0768e8b221ec7f4cef7', NULL, NULL),
(30, 2, '87223673378ae91bb81e4ba2570b4fd8', NULL, NULL),
(31, 2, 'aa26b44e05f858b54f3ee4afbbd589a8', NULL, NULL),
(32, 4, 'aa26b44e05f858b54f3ee4afbbd589a8', NULL, NULL),
(33, 5, 'aa26b44e05f858b54f3ee4afbbd589a8', NULL, NULL),
(34, 2, '4eae62fb8cca33a3a000cfe0fd605ed4', NULL, NULL),
(35, 4, '4eae62fb8cca33a3a000cfe0fd605ed4', NULL, NULL),
(36, 2, 'd50a8ec19405bab2e2dc574b79c288e6', NULL, NULL),
(37, 2, 'df8986af36d5c32750fbfb044ba02526', NULL, NULL),
(38, 2, '85d21f9d1ad0ef903b8a60ae97c45408', NULL, NULL),
(39, 4, '85d21f9d1ad0ef903b8a60ae97c45408', NULL, NULL),
(40, 2, 'af1aee51bb6890bbf82b89f501fe1ea3', NULL, NULL),
(41, 2, 'bed93a31dc049922b8bcdc2d13a78096', NULL, NULL),
(42, 2, '519d98ba95ace9c354d64661c6332c33', NULL, NULL),
(43, 2, 'b91af510dbb209d3b5cc9d02cb5b68d8', NULL, NULL),
(44, 5, 'e6be3790ae0034c25e542ad4271db62b', NULL, NULL),
(45, 2, '1f2d4cf0a8a75b2848666b783ee6162a', NULL, NULL),
(46, 5, '1f2d4cf0a8a75b2848666b783ee6162a', NULL, NULL),
(47, 8, '1f2d4cf0a8a75b2848666b783ee6162a', NULL, NULL),
(48, 2, 'f104a6ad0766dad922c213b07a07c0ff', NULL, NULL),
(49, 2, 'b219f1376c1808ff94525402b6185340', NULL, NULL),
(50, 2, '031a4ff743571666b48e872c0b2ce045', NULL, NULL),
(51, 2, '38a56a5f1b2c4ad827692f73fcabdc0a', NULL, NULL),
(52, 8, '38a56a5f1b2c4ad827692f73fcabdc0a', NULL, NULL),
(53, 2, '54e2d23b6dc1be3025415e1bd73f03a1', NULL, NULL),
(54, 1, '54e2d23b6dc1be3025415e1bd73f03a1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Clothing', 1, NULL, '2022-04-03 00:53:08'),
(2, 'Electronics', 1, NULL, '2022-06-03 10:13:41'),
(3, 'Appliances', 1, NULL, '2022-06-03 10:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Amit Gupta', '', '', '', '', '', '', 'amit100@yopmail.com', NULL, '$2y$10$q80H4i4Y13gbMxE3XKEk7.O.QPVNg3gn0kK9hXp80LvoMXBs0C2U.', 1, NULL, '2022-02-09 10:06:43', '2022-12-14 09:50:46'),
(2, 'Amit Gupta', '', '', '', '', '', '', 'amit200@yopmail.com', NULL, '$2y$10$k9w9VKLGzeL/2vgsZbTQT.zEQ5YjyoYeWicPUMYxBQfKaJPACnKZO', 1, NULL, '2022-02-12 21:51:14', '2022-12-14 09:50:46'),
(3, 'John Singh', NULL, NULL, NULL, NULL, NULL, '9870000000', 'john2424@yopmail.com', NULL, '$2y$10$FJt75JEHpiDf0srt1wKpROIqToR/rpSaem9GjF6LNPF9yPT3Gdvw2', 1, NULL, '2022-10-19 09:48:38', '2022-12-14 09:50:47'),
(4, 'Steve', NULL, NULL, NULL, NULL, NULL, '9760000000', 'steve2424@yopmail.com', NULL, '$2y$10$AE5ESsg2af2oNojYrau.g.dU6FeWUt0z.Vn30XPzx2fhk07hWePJ6', 1, NULL, '2022-10-19 10:21:18', '2022-12-14 09:50:47'),
(5, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9760000000', 'amit2355@yopmail.com', NULL, '$2y$10$Cbvzx19Jpe2yRVC6M3h91ubKUOlamNPnauNlGxp6GEsuNtKlqrgsW', 1, NULL, '2022-10-21 09:11:46', '2022-12-14 09:50:48'),
(6, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9650000000', 'amit36467@yopmail.com', NULL, '$2y$10$wPdC.E1eGAmyxqzP42c24uUVM92YL7Sfxq/PlG88jabDDWAYUdY86', 1, NULL, '2022-10-28 08:55:14', '2022-12-14 09:50:49'),
(7, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9540000000', 'amit53536@yopmail.com', NULL, '$2y$10$j.3HFBWxFlXjiM96uzOc5.XErRPWvvw.8fHz3fmzeuyHJdMeTJRZO', 0, NULL, '2022-10-28 08:59:01', '2022-12-14 09:50:26'),
(8, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9450000000', 'amit35366@yopmail.com', NULL, '$2y$10$jnAqIlI85uNRSefpvl3ULewOf.8hL5Lg9/7bMK7hIoU0AIFzI4sVe', 0, NULL, '2022-10-28 09:23:46', '2022-12-14 09:50:28'),
(9, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9800000000', 'amit23466@yopmail.com', NULL, '$2y$10$9YLsLlfLBKQKBMfwJoyK6.6cRwhNdkedL8GjfIKYxnBBDTzCMYi5C', 0, NULL, '2022-11-01 09:50:42', '2022-11-01 09:50:42'),
(10, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9870000001', 'amit3536@yopmail.com', NULL, '$2y$10$ulV.egsnRKKoqSCMAvOy.uXDJplAi2aDsHeA5xEiQFjg6Zzy2BanC', 0, NULL, '2022-11-01 09:53:12', '2022-11-01 09:53:12'),
(11, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9870000000', 'amit353646@yopmail.com', NULL, '$2y$10$ssoOSPj8gOfA3kkl0RpXeuK3tKtTJf/9NwunnYC.n06yTIqdZO8N.', 0, NULL, '2022-11-01 10:05:35', '2022-11-01 10:05:35'),
(12, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9870000000', 'amit353464@yopmail.com', NULL, '$2y$10$rDd9su4b7//H2ceFkpN9veiBhPY3Ss3clueekaLO8weEzcrVSg.xm', 0, NULL, '2022-11-01 10:08:31', '2022-11-01 10:08:31'),
(13, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9870000000', 'amit34646@yopmail.com', NULL, '$2y$10$QK3vRLBI3gxAqVQE6fwwD./Hxh7S43RTihmqE4yIjuAv6J.nBPmSu', 0, NULL, '2022-11-01 10:12:44', '2022-11-01 10:12:44'),
(14, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9876000000', 'amit35364@yopmail.com', NULL, '$2y$10$tNpMgFCtCk0sw3YqQadeqOIp8GkKrvO.i6vqA9ME2xgvOzhGesHiy', 0, NULL, '2022-11-01 10:13:49', '2022-11-01 10:13:49'),
(15, 'Amit Gupta', '123-a', 'ludhiana', 'punjab', 'India', '141001', '9875000000', 'amit3533464@yopmail.com', NULL, '$2y$10$stZCJZANhk4k6wt6agz7n.cCs9NKxh9p.dGBYuFaD2Q01HgTVlDa6', 1, NULL, '2022-11-01 10:15:02', '2022-11-14 10:20:28'),
(16, 'John', NULL, NULL, NULL, NULL, NULL, '9800000000', 'john@yopmail.com', NULL, '$2y$10$D3.mVDR.chulBZQE07A08O7FpGCjBlfCq7ev.xsvPEa7ev5ZJvSh6', 1, NULL, '2022-12-06 09:28:22', '2022-12-06 09:28:22'),
(17, 'john', NULL, NULL, NULL, NULL, NULL, '97000000000', 'john243535@yopmail.com', NULL, '$2y$10$Do.oPpCUr0.SSKauaXiKP.kkLlyVfLfGEW1zSNoQsRiLUZQEMC4UK', 1, NULL, '2022-12-06 10:36:58', '2022-12-06 10:36:58'),
(18, 'Rahul', NULL, NULL, NULL, NULL, NULL, '9780000000', 'Rahul45757@yopmail.com', NULL, '$2y$10$KfCopnqCyi63kHK9mQMNaex4eexxVJ4cbUcngSPG.kkKBJtaEpvZi', 1, NULL, '2022-12-06 10:37:25', '2022-12-06 10:37:25'),
(19, 'Imran', NULL, NULL, NULL, NULL, NULL, '96000000000', 'imran@yopmail.com', NULL, '$2y$10$s/Ih5inThG/7gzbxvffKHu4Ggqj0efhGhzFBIB0q.lJZRE5y5hYv.', 1, NULL, '2022-12-06 10:40:09', '2022-12-06 10:40:09'),
(20, 'Amit Gupta', NULL, NULL, NULL, NULL, NULL, '9800000000', 'amit353466@yopmail.com', NULL, '$2y$10$X8Me8ZyCACD5GoJJrygB4OZaSiskVSpeBR5tmrnc5JDsl1wTEmPqC', 1, NULL, '2022-12-10 20:57:47', '2022-12-10 20:57:47'),
(21, 'John Singh', NULL, NULL, NULL, NULL, NULL, '9800000000', 'john@yahoo.com', NULL, '$2y$10$WOq6cymLuVK84lvPv28pzOCSUMOls1papQxrEuol4nYwTbQc8Wr6G', 1, NULL, '2022-12-10 21:03:59', '2022-12-10 21:03:59'),
(22, 'John', '12345-a', 'New Delhi', 'Delhi', 'India', '110001', '9800000000', 'john2@yahoo.com', NULL, '$2y$10$nRE6GPepNlwTJDSG/P4KsexsvdvQo5mizCK.EnESt7VhVn/oKC7C2', 1, NULL, '2022-12-10 21:23:24', '2022-12-21 10:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `confirm`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Singh', 'CP-11245', 'Mumbai', 'Maharashtra', 'India', '2435356', '9846444444', 'john@admin.com', 'No', 1, NULL, '2022-09-25 03:41:04'),
(5, 'Sanjay', NULL, NULL, NULL, NULL, NULL, '9870000000', 'sanjay@yopmail.com', 'No', 0, '2022-08-13 11:29:58', '2022-08-13 11:29:58'),
(6, 'Rahul', NULL, NULL, NULL, NULL, NULL, '9870000001', 'rahul@admin.com', 'No', 0, '2022-08-13 17:03:00', '2022-08-13 17:03:00'),
(9, 'Amit Gupta', '123-a', 'New Delhi', NULL, NULL, NULL, '9870000005', 'test2425@yopmail.com', 'Yes', 0, '2022-08-14 02:59:50', '2022-08-14 07:31:39'),
(10, 'Steve', '123-a', 'New Delhi', 'Delhi', 'India', '110001', '9870000002', 'steve@yopmail.com', 'Yes', 0, '2022-09-11 02:34:42', '2022-09-10 21:10:58'),
(11, 'Imran', '123-a', 'New Delhi', 'Delhi', 'India', '110001', '9870000004', 'imran@yopmail.com', 'Yes', 0, '2022-09-11 03:09:49', '2022-09-10 21:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_bank_details`
--

CREATE TABLE `vendors_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_bank_details`
--

INSERT INTO `vendors_bank_details` (`id`, `vendor_id`, `account_holder_name`, `bank_name`, `account_number`, `bank_ifsc_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Singh', 'ICICI Bank', '354646475775', '555757577', NULL, '2022-03-12 10:33:49'),
(2, 9, 'Amit Gupta', 'ICICI', '57575758', '686868', NULL, NULL),
(3, 10, 'Steve', 'ICICI', '3546557', '57575757', NULL, NULL),
(4, 11, 'Imran', 'ICICI', '57575758', 'c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors_business_details`
--

CREATE TABLE `vendors_business_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_proof_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_license_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_business_details`
--

INSERT INTO `vendors_business_details` (`id`, `vendor_id`, `shop_name`, `shop_address`, `shop_city`, `shop_state`, `shop_country`, `shop_pincode`, `shop_mobile`, `shop_website`, `shop_email`, `address_proof`, `address_proof_image`, `business_license_number`, `gst_number`, `pan_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Electronics World', '123-A, Mall Road', 'Shimla', 'Himachal Pradesh', 'India', '435346', '8900000000', 'sitemakers.in', 'john@admin.com', 'PAN', '97846.png', '353564646', '464757585', '46575758', NULL, '2022-03-30 09:56:01'),
(2, 9, 'Stack Developers', '123-A Delhi', 'New Delhi', 'Delhi', NULL, NULL, '9857586868', NULL, NULL, 'Passport', '', NULL, NULL, NULL, NULL, NULL),
(3, 10, 'Steve Shop', '123-A Delhi', 'New Delhi', 'Delhi', 'India', '141001', '9857586868', NULL, NULL, 'Passport', '', '53534646', '467575757', '46464646', NULL, NULL),
(4, 11, 'Imran Shop', '123-A Delhi', 'New Delhi', 'Delhi', 'India', '141001', '9857586868', NULL, NULL, 'PAN', '1886.jpeg', '53534646', '354646467', '46464657', NULL, NULL);

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
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
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
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_logs`
--
ALTER TABLE `orders_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_filters`
--
ALTER TABLE `products_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_filters_values`
--
ALTER TABLE `products_filters_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_logs`
--
ALTER TABLE `orders_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_filters`
--
ALTER TABLE `products_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_filters_values`
--
ALTER TABLE `products_filters_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
