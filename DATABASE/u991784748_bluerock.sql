-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 22, 2025 at 10:45 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u991784748_bluerock`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `image` text DEFAULT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `image`, `admin_email`, `admin_password`) VALUES
(1, '', 'Admin', 'jamesavatar.png', 'admin@bluerockfinance.live', '$2y$10$zfj2exOs9sT9IJv3qGl/reczotOimfIedXGe.ySadMRjxyWS/UxeC');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ipAddress` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `datenow` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `device`, `ipAddress`, `datenow`) VALUES
(1, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '105.112.102.202', '2023-04-02 20:33:26'),
(2, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '105.112.214.65', '2023-04-03 06:22:55'),
(3, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '154.160.22.195', '2023-04-12 09:36:51'),
(4, 3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '154.160.22.195', '2023-04-13 07:57:38'),
(5, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '105.112.212.173', '2023-04-14 05:04:10'),
(6, 4, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Mobile/15E148 Safari/604.1', '102.91.5.91', '2023-08-12 08:44:38'),
(7, 4, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', '197.210.70.227', '2023-08-12 08:54:16'),
(8, 4, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/110.1  Mobile/15E148 Safari/605.1.15', '102.91.5.91', '2023-08-12 08:58:44'),
(9, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', '102.89.32.87', '2023-08-12 09:15:12'),
(10, 4, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/110.1  Mobile/15E148 Safari/605.1.15', '197.210.70.82', '2023-08-12 09:36:22'),
(11, 4, 'Mozilla/5.0 (Linux; Android 13; SM-N986N Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/115.0.5790.166 Mobile Safari/537.36 Line/13.12.0/IAB', '116.44.147.184', '2023-08-12 09:57:21'),
(12, 4, 'Mozilla/5.0 (Linux; Android 13; SM-N986N Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/115.0.5790.166 Mobile Safari/537.36 Line/13.12.0/IAB', '116.44.147.184', '2023-08-12 09:57:25'),
(13, 4, 'Mozilla/5.0 (Linux; Android 13; SM-N986N Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/115.0.5790.166 Mobile Safari/537.36;KAKAOTALK 2410330', '116.44.147.184', '2023-08-12 10:00:12'),
(14, 4, 'Mozilla/5.0 (Linux; Android 13; SM-N986N Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/115.0.5790.166 Mobile Safari/537.36;KAKAOTALK 2410330', '116.44.147.184', '2023-08-12 10:00:17'),
(15, 4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', '102.91.5.90', '2023-08-13 04:05:35'),
(16, 5, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Mobile/15E148 Safari/604.1', '197.210.71.140', '2023-08-13 04:52:17'),
(17, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', '105.112.211.3', '2023-08-14 10:35:48'),
(18, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', '105.112.211.249', '2023-08-14 13:55:47'),
(19, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-03-01 07:08:37'),
(20, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-03-01 09:44:04'),
(21, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-01 14:03:35'),
(22, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-01 14:49:03'),
(23, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 10:28:41'),
(24, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 10:35:54'),
(25, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 11:17:25'),
(26, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 11:39:47'),
(27, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 11:40:22'),
(28, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 11:40:56'),
(29, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 11:41:08'),
(30, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 11:43:37'),
(31, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-02 11:47:06'),
(32, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 13:21:07'),
(33, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 15:25:18'),
(34, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 16:11:56'),
(35, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 16:32:57'),
(36, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 17:28:32'),
(37, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 17:57:13'),
(38, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 19:04:51'),
(39, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 19:05:05'),
(40, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 19:07:11'),
(41, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 19:08:25'),
(42, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 19:09:10'),
(43, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 21:21:58'),
(44, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 21:23:45'),
(45, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 21:26:00'),
(46, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 21:26:11'),
(47, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 21:29:57'),
(48, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 21:33:21'),
(49, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 21:33:30'),
(50, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:00:09'),
(51, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:01:04'),
(52, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:01:15'),
(53, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:04:46'),
(54, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:08:27'),
(55, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:09:46'),
(56, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:09:59'),
(57, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:11:34'),
(58, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-03 23:12:30'),
(59, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-04 09:12:17'),
(60, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-04 09:59:24'),
(61, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-04 12:10:10'),
(62, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-04 12:32:39'),
(63, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-04 13:28:05'),
(64, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-04 13:57:02'),
(65, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-04 14:25:13'),
(66, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-05 12:48:42'),
(67, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-05 12:51:34'),
(68, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', '127.0.0.1', '2024-03-05 12:58:03'),
(69, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-08 15:04:32'),
(70, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-08 16:01:49'),
(71, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-18 12:03:12'),
(72, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-18 12:04:41'),
(73, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-03-18 12:05:09'),
(74, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '127.0.0.1', '2024-04-10 10:02:09'),
(75, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '127.0.0.1', '2024-04-10 10:04:46'),
(76, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-04-30 08:43:54'),
(77, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-04-30 08:53:20'),
(78, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-05-02 14:05:38'),
(79, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-05-02 14:08:03'),
(80, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-05-02 14:09:06'),
(81, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-05-02 19:13:06'),
(82, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-05-03 00:07:49'),
(83, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '::1', '2024-05-03 16:11:40'),
(84, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-05-17 11:12:14'),
(85, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-05-17 11:15:07'),
(86, 2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '127.0.0.1', '2024-05-17 12:24:05'),
(87, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '::1', '2024-11-03 13:35:03'),
(88, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '197.210.54.128', '2024-11-03 22:31:47'),
(89, 17, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '105.113.75.126', '2024-11-06 13:26:28'),
(90, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.242', '2024-11-06 14:22:31'),
(91, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.242', '2024-11-06 14:31:48'),
(92, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.242', '2024-11-06 14:31:50'),
(93, 17, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '105.113.75.126', '2024-11-06 14:43:46'),
(94, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.192', '2024-11-06 15:30:00'),
(95, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.192', '2024-11-06 16:18:26'),
(96, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.242', '2024-11-06 18:20:51'),
(97, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.242', '2024-11-06 19:16:44'),
(98, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.229', '2024-11-06 21:05:53'),
(99, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.27', '2024-11-06 21:47:37'),
(100, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.27', '2024-11-06 22:45:45'),
(101, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.219', '2024-11-07 00:56:55'),
(102, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.236', '2024-11-07 01:15:44'),
(103, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.236', '2024-11-07 01:15:45'),
(104, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.186', '2024-11-07 02:09:15'),
(105, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.114', '2024-11-07 07:35:08'),
(106, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.168', '2024-11-07 08:19:44'),
(107, 17, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '105.113.114.80', '2024-11-07 08:20:20'),
(108, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.220', '2024-11-07 08:48:17'),
(109, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.220', '2024-11-07 09:09:48'),
(110, 17, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '105.113.114.80', '2024-11-07 09:57:34'),
(111, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-07 11:04:02'),
(112, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-07 11:18:22'),
(113, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-07 11:18:45'),
(114, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-07 11:19:07'),
(115, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-07 12:00:51'),
(116, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-07 12:02:55'),
(117, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-07 12:56:42'),
(118, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-07 12:56:43'),
(119, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-07 12:57:09'),
(120, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.218', '2024-11-07 13:30:01'),
(121, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.218', '2024-11-07 13:30:02'),
(122, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.218', '2024-11-07 13:36:59'),
(123, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-07 18:01:52'),
(124, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-07 18:02:02'),
(125, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.138', '2024-11-07 18:57:47'),
(126, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.138', '2024-11-07 18:58:20'),
(127, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-08 00:40:29'),
(128, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-08 01:14:42'),
(129, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.164', '2024-11-08 01:17:41'),
(130, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-08 02:28:59'),
(131, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-08 09:27:36'),
(132, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-08 09:34:07'),
(133, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '109.83.140.120', '2024-11-08 10:29:48'),
(134, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '109.83.140.120', '2024-11-08 10:38:11'),
(135, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-08 11:41:24'),
(136, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-08 11:41:26'),
(137, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '109.82.165.47', '2024-11-08 12:46:23'),
(138, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.232', '2024-11-08 14:01:17'),
(139, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.195', '2024-11-08 16:37:08'),
(140, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.195', '2024-11-08 16:54:59'),
(141, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.187', '2024-11-08 17:52:04'),
(142, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:3e:3bd9:ad20:a725:f07d:183e', '2024-11-08 18:56:25'),
(143, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.245', '2024-11-08 20:01:45'),
(144, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '37.217.6.211', '2024-11-10 01:32:39'),
(145, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:0:8242:e87f:8642:7e60:baaf', '2024-11-10 16:27:20'),
(146, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:0:8242:e87f:8642:7e60:baaf', '2024-11-10 16:32:13'),
(147, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.89', '2024-11-10 17:07:17'),
(148, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.89', '2024-11-10 17:45:35'),
(149, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.89', '2024-11-10 18:44:02'),
(150, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.201', '2024-11-10 19:11:13'),
(151, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.201', '2024-11-10 19:11:14'),
(152, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.89', '2024-11-10 20:28:49'),
(153, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '109.82.90.219', '2024-11-11 09:00:18'),
(154, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.143', '2024-11-11 14:08:35'),
(155, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.143', '2024-11-11 15:09:05'),
(156, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.143', '2024-11-11 15:54:05'),
(157, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:10:96c1:5908:c2b7:ee6e:2c06', '2024-11-11 16:45:04'),
(158, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:10:96c1:5908:c2b7:ee6e:2c06', '2024-11-11 16:45:10'),
(159, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:10:96c1:5908:c2b7:ee6e:2c06', '2024-11-11 16:45:11'),
(160, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.147', '2024-11-11 18:21:10'),
(161, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.147', '2024-11-11 19:10:23'),
(162, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '109.83.242.56', '2024-11-11 19:35:50'),
(163, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:10:96c1:9dde:4feb:d168:6d6f', '2024-11-11 21:10:52'),
(164, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:10:96c1:9dde:4feb:d168:6d6f', '2024-11-11 21:10:54'),
(165, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '109.83.242.56', '2024-11-11 21:25:44'),
(166, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '109.83.242.56', '2024-11-11 21:25:46'),
(167, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-12 01:50:28'),
(168, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-12 15:52:03'),
(169, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-12 23:48:30'),
(170, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-12 23:48:32'),
(171, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-13 01:39:36'),
(172, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-13 02:40:00'),
(173, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-13 03:33:55'),
(174, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-13 03:33:56'),
(175, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-13 11:24:00'),
(176, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.84.243', '2024-11-13 11:47:41'),
(177, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.4', '2024-11-13 22:34:06'),
(178, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.106', '2024-11-13 23:24:01'),
(179, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.102.186', '2024-11-14 14:48:05'),
(180, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:4003:77f8:a9b9:13ab:69e3:40a9', '2024-11-14 20:19:45'),
(181, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '5.110.217.106', '2024-11-14 21:29:59'),
(182, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.199', '2024-11-14 22:06:37'),
(183, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.102.27', '2024-11-14 22:39:22'),
(184, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:4029:76b4:52f:5246:a546:e327', '2024-11-15 06:43:39'),
(185, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.220', '2024-11-15 16:19:04'),
(186, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.103.204', '2024-11-15 16:50:41'),
(187, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.220', '2024-11-15 19:03:08'),
(188, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.250', '2024-11-15 19:56:24'),
(189, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.145.32', '2024-11-15 22:18:06'),
(190, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.145.32', '2024-11-16 01:29:21'),
(191, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.145.32', '2024-11-16 11:22:39'),
(192, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '2a02:9b0:402b:9387:a483:c460:2022:6775', '2024-11-16 16:20:44'),
(193, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-16 22:58:00'),
(194, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-16 22:58:01'),
(195, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-17 09:43:21'),
(196, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-17 22:27:30'),
(197, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-18 07:45:23'),
(198, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-18 09:06:10'),
(199, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-18 09:12:02'),
(200, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-18 09:14:28'),
(201, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-18 09:16:54'),
(202, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '66.118.130.184', '2024-11-18 10:14:21'),
(203, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '82.197.61.13', '2024-11-18 12:03:25'),
(204, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.36.103.5', '2024-11-18 15:10:53'),
(205, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-18 19:42:15'),
(206, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-19 00:22:26'),
(207, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-19 11:40:16'),
(208, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-19 13:49:41'),
(209, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-19 15:22:41'),
(210, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.157.132', '2024-11-19 19:53:58'),
(211, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '77.232.124.138', '2024-11-19 21:34:14'),
(212, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '77.232.124.138', '2024-11-19 21:34:16'),
(213, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-20 10:24:18'),
(214, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-20 10:26:59'),
(215, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '51.39.157.132', '2024-11-20 13:16:39'),
(216, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '77.232.124.100', '2024-11-20 20:23:43'),
(217, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '77.232.124.100', '2024-11-20 20:23:45'),
(218, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-20 22:35:37'),
(219, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-20 22:35:38'),
(220, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-20 22:44:30'),
(221, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-20 22:44:31'),
(222, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-21 10:04:31'),
(223, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '167.86.142.9', '2024-11-21 13:17:47'),
(224, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '139.64.38.163', '2024-11-22 14:07:26'),
(225, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '139.64.38.163', '2024-11-22 18:17:08'),
(226, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Mobile/15E148 Safari/604.1', '77.232.124.90', '2024-11-23 12:27:04'),
(227, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '139.64.38.163', '2024-11-23 22:09:35'),
(228, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-25 18:26:27'),
(229, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-25 21:33:16'),
(230, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-25 23:28:49'),
(231, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-26 05:21:39'),
(232, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-26 05:22:02'),
(233, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-26 10:05:31'),
(234, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-26 11:10:37'),
(235, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-27 09:39:44'),
(236, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.33.74', '2024-11-27 09:49:50'),
(237, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '77.232.124.16', '2024-11-28 21:04:43'),
(238, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '143.92.158.136', '2024-12-01 08:38:44'),
(239, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '37.217.75.123', '2024-12-04 12:49:56'),
(240, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '212.62.97.25', '2024-12-04 14:30:43'),
(241, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '212.62.97.25', '2024-12-04 15:07:53'),
(242, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:40:44:9c29:bc38:98c8:daa2', '2024-12-04 17:15:29'),
(243, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:40:44:9c29:bc38:98c8:daa2', '2024-12-04 18:30:45'),
(244, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:40:44:9c29:bc38:98c8:daa2', '2024-12-04 18:53:53'),
(245, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:40:44:9c29:bc38:98c8:daa2', '2024-12-04 19:55:46'),
(246, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.24.236', '2024-12-05 01:23:13'),
(247, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '144.86.24.236', '2024-12-05 01:28:54'),
(248, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:41:442e:9c29:bc38:98c8:daa2', '2024-12-05 10:45:02'),
(249, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:18:a147:4047:5f74:f80c:c6ae', '2024-12-06 11:15:51'),
(250, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:18:a147:4047:5f74:f80c:c6ae', '2024-12-06 11:15:53'),
(251, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:40:44:4047:5f74:f80c:c6ae', '2024-12-06 20:42:15'),
(252, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:40:44:4047:5f74:f80c:c6ae', '2024-12-06 20:42:16'),
(253, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:1:bc97:4047:5f74:f80c:c6ae', '2024-12-07 07:03:12'),
(254, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:1:bc97:4047:5f74:f80c:c6ae', '2024-12-07 07:03:14'),
(255, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:1:bc97:4047:5f74:f80c:c6ae', '2024-12-07 12:22:46'),
(256, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:1:bc97:4047:5f74:f80c:c6ae', '2024-12-07 12:22:48'),
(257, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:1:bc97:4047:5f74:f80c:c6ae', '2024-12-07 13:55:55'),
(258, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:9b0:1:bc97:4047:5f74:f80c:c6ae', '2024-12-07 13:55:56'),
(259, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '77.232.124.203', '2024-12-12 09:33:34'),
(260, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '167.86.141.142', '2024-12-16 04:32:44'),
(261, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '77.232.124.4', '2024-12-18 00:29:51'),
(262, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:cb80:4077:215:d7e:6e83:373c:982a', '2024-12-19 21:52:36'),
(263, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2a02:cb80:4077:215:d7e:6e83:373c:982a', '2024-12-19 21:52:37'),
(264, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '77.232.124.101', '2024-12-23 15:45:10'),
(265, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2024-12-30 16:16:02'),
(266, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2603:301f:1903:1a00:ed60:9b61:9005:1752', '2024-12-30 19:22:20'),
(267, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2603:301f:1903:1a00:ed60:9b61:9005:1752', '2024-12-31 01:19:34'),
(268, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2024-12-31 18:12:23'),
(269, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2024-12-31 18:12:26'),
(270, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2024-12-31 18:12:28'),
(271, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2024-12-31 18:31:32'),
(272, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2024-12-31 18:31:33'),
(273, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2025-01-01 00:05:45'),
(274, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '143.92.130.214', '2025-01-05 15:23:22'),
(275, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '143.92.130.214', '2025-01-05 16:21:34'),
(276, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '143.92.130.214', '2025-01-05 16:35:31'),
(277, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422e:91f4:8834:461a:b853:7110', '2025-01-07 07:12:22');
INSERT INTO `audit_logs` (`id`, `user_id`, `device`, `ipAddress`, `datenow`) VALUES
(278, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422e:91f4:8834:461a:b853:7110', '2025-01-07 07:53:39'),
(279, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422e:91f4:8834:461a:b853:7110', '2025-01-07 07:53:41'),
(280, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422f:1dfe:8834:461a:b853:7110', '2025-01-07 08:44:17'),
(281, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422f:1dfe:8834:461a:b853:7110', '2025-01-07 09:11:31'),
(282, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422f:1dfe:8834:461a:b853:7110', '2025-01-07 09:11:40'),
(283, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422f:1dfe:8834:461a:b853:7110', '2025-01-07 09:11:42'),
(284, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422f:1dfe:8834:461a:b853:7110', '2025-01-07 09:34:52'),
(285, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422f:1dfe:8834:461a:b853:7110', '2025-01-07 09:34:53'),
(286, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4278:b75a:8834:461a:b853:7110', '2025-01-07 10:09:31'),
(287, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4278:b75a:8834:461a:b853:7110', '2025-01-07 10:09:33'),
(288, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4278:b843:8834:461a:b853:7110', '2025-01-07 11:18:45'),
(289, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4278:b843:8834:461a:b853:7110', '2025-01-07 11:18:47'),
(290, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422d:306:8834:461a:b853:7110', '2025-01-07 12:19:54'),
(291, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422d:306:8834:461a:b853:7110', '2025-01-07 12:19:56'),
(292, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '82.197.48.93', '2025-01-07 12:52:41'),
(293, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422d:306:6980:7119:d5eb:882f', '2025-01-07 15:11:23'),
(294, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:422d:306:6980:7119:d5eb:882f', '2025-01-07 15:11:25'),
(295, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 15:27:00'),
(296, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 15:27:01'),
(297, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 16:18:18'),
(298, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 16:25:33'),
(299, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '51.39.157.226', '2025-01-07 17:06:42'),
(300, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '51.39.157.226', '2025-01-07 17:27:59'),
(301, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 17:45:03'),
(302, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 18:18:35'),
(303, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 18:44:25'),
(304, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 18:44:26'),
(305, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 19:35:51'),
(306, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.157.165', '2025-01-07 19:35:52'),
(307, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.226', '2025-01-07 20:41:32'),
(308, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4075:26aa:6980:7119:d5eb:882f', '2025-01-07 20:42:29'),
(309, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4075:26aa:6980:7119:d5eb:882f', '2025-01-07 20:42:40'),
(310, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4282:786b:6980:7119:d5eb:882f', '2025-01-07 21:04:01'),
(311, 19, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2a02:cb80:4282:786b:6980:7119:d5eb:882f', '2025-01-07 21:34:15'),
(312, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.36', '2025-01-10 17:10:59'),
(313, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.188', '2025-01-16 15:43:48'),
(314, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '71.60.165.47', '2025-01-17 06:20:56'),
(315, 21, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '105.113.63.126', '2025-01-19 22:31:31'),
(316, 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0', '77.111.245.11', '2025-01-21 15:47:18'),
(317, 21, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '134.122.47.245', '2025-01-21 18:32:35'),
(318, 21, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '147.182.155.170', '2025-01-21 21:07:36'),
(319, 22, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '143.110.215.64', '2025-01-22 13:10:18'),
(320, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '71.60.165.47', '2025-01-23 06:29:50'),
(321, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '71.60.165.47', '2025-01-23 06:32:01'),
(322, 20, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '71.60.165.47', '2025-01-23 06:34:45'),
(323, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.141', '2025-01-23 14:40:07'),
(324, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.141', '2025-01-23 14:40:09'),
(325, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.141', '2025-01-23 15:10:41'),
(326, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.171', '2025-01-24 13:21:55'),
(327, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.171', '2025-01-24 13:29:15'),
(328, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.185', '2025-01-24 14:50:33'),
(329, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '51.39.157.128', '2025-01-24 18:41:38'),
(330, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.172', '2025-01-24 20:06:46'),
(331, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '139.64.9.45', '2025-01-25 05:52:34'),
(332, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '139.64.9.45', '2025-01-25 08:56:52'),
(333, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '139.64.9.45', '2025-01-25 19:11:15'),
(334, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '139.64.9.45', '2025-01-25 19:55:57'),
(335, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '51.39.157.128', '2025-01-26 17:38:46'),
(336, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '139.64.9.45', '2025-01-27 16:07:07'),
(337, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.186', '2025-01-28 19:11:41'),
(338, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.93', '2025-01-29 17:02:19'),
(339, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '130.164.148.203', '2025-01-30 12:39:58'),
(340, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:36'),
(341, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:37'),
(342, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:37'),
(343, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:38'),
(344, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:38'),
(345, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:38'),
(346, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:39'),
(347, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.48', '2025-01-30 17:12:45'),
(348, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '130.164.148.203', '2025-01-30 19:13:45'),
(349, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.90', '2025-01-31 19:19:41'),
(350, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.104', '2025-01-31 20:05:24'),
(351, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '167.86.182.157', '2025-02-02 16:44:20'),
(352, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:5d1:807e:79fe:38c1', '2025-02-03 22:58:14'),
(353, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:1d5e:f07c:2c08:7c69', '2025-02-04 01:39:13'),
(354, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:1d5e:f07c:2c08:7c69', '2025-02-04 03:59:35'),
(355, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:1d5e:f07c:2c08:7c69', '2025-02-04 04:00:30'),
(356, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:387:f:818::b', '2025-02-04 13:29:46'),
(357, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:387:f:818::b', '2025-02-04 13:30:34'),
(358, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:387:f:818::b', '2025-02-04 14:06:24'),
(359, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1700:3c1:a010:dd2f:7c9d:a063:8cf5', '2025-02-04 15:01:41'),
(360, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1700:3c1:a010:dd2f:7c9d:a063:8cf5', '2025-02-04 15:02:38'),
(361, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:387:f:818::b', '2025-02-04 15:41:29'),
(362, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:387:f:818::b', '2025-02-04 17:13:25'),
(363, 22, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '192.241.251.169', '2025-02-04 18:22:56'),
(364, 22, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '192.241.251.169', '2025-02-04 18:22:58'),
(365, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:387:f:818::b', '2025-02-04 19:19:29'),
(366, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:2490:a93e:d61d:7eb3', '2025-02-05 15:54:41'),
(367, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:2490:a93e:d61d:7eb3', '2025-02-05 17:11:34'),
(368, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1700:3c1:a010:e94c:9e48:101f:9a8f', '2025-02-05 19:32:55'),
(369, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:387:f:818::b', '2025-02-05 21:02:28'),
(370, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1.1 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:3019:e605:b181:3d87', '2025-02-05 21:42:32'),
(371, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.208', '2025-02-07 17:20:48'),
(372, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.208', '2025-02-07 17:20:51'),
(373, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.2 Mobile/15E148 Safari/604.1', '77.232.124.228', '2025-02-07 19:20:04'),
(374, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 11:49:27'),
(375, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 11:49:28'),
(376, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 11:49:30'),
(377, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 13:06:56'),
(378, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 13:09:10'),
(379, 24, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '105.113.100.103', '2025-02-28 13:29:00'),
(380, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 13:30:43'),
(381, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 13:30:44'),
(382, 24, 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.1 Mobile/15E148 Safari/604.1', '105.113.100.103', '2025-02-28 13:59:06'),
(383, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '51.223.81.209', '2025-02-28 14:12:08'),
(384, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '51.223.81.209', '2025-02-28 14:13:27'),
(385, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:13:32'),
(386, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:13:34'),
(387, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:13:54'),
(388, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:14:25'),
(389, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:14:26'),
(390, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:15:00'),
(391, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:15:14'),
(392, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:15:15'),
(393, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:16:09'),
(394, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:46:17'),
(395, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:48:35'),
(396, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 14:48:36'),
(397, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:a2b8:1828:151a:a53f:600', '2025-02-28 15:01:05'),
(398, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:4112:2427:1828:77b6:62e7:2b3a', '2025-02-28 20:01:57'),
(399, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e3:482:1828:d81a:d6c9:f770', '2025-03-02 10:01:11'),
(400, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e3:482:1828:d81a:d6c9:f770', '2025-03-02 14:40:15'),
(401, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e3:482:1828:d81a:d6c9:f770', '2025-03-02 14:40:17'),
(402, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:4100:10fd:1829:2558:5cab:e922', '2025-03-03 01:03:48'),
(403, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e2:8f90:1829:a03e:8c6b:7770', '2025-03-04 15:54:11'),
(404, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:5997:ce5d:cf30:47c3', '2025-03-05 03:19:48'),
(405, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:5997:ce5d:cf30:47c3', '2025-03-05 03:59:58'),
(406, 24, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', '102.215.57.39', '2025-03-05 13:42:38'),
(407, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '37.106.110.153', '2025-03-05 13:44:08'),
(408, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '37.106.110.153', '2025-03-05 13:49:15'),
(409, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '37.106.110.153', '2025-03-05 14:16:53'),
(410, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '51.39.141.34', '2025-03-05 17:57:41'),
(411, 23, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3 Mobile/15E148 Safari/604.1', '2600:1702:59d0:a210:dde2:6231:ee75:ce70', '2025-03-12 03:42:58'),
(412, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '175.176.33.115', '2025-03-13 10:38:25'),
(413, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '175.176.33.115', '2025-03-13 10:38:28'),
(414, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '175.176.33.115', '2025-03-13 10:38:30'),
(415, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '2400:6a80:8174:2e0:437a:7d42:ddf2:cac2', '2025-03-13 11:14:41'),
(416, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '2400:6a80:8174:2e0:437a:7d42:ddf2:cac2', '2025-03-13 11:47:53'),
(417, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e1:5406:182c:d34:aa71:5680', '2025-03-13 15:49:54'),
(418, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '175.176.33.33', '2025-03-14 04:58:04'),
(419, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '175.176.33.33', '2025-03-14 08:31:44'),
(420, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/497.0.0.62.109;]', '175.176.33.33', '2025-03-14 08:58:58'),
(421, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/498.0.0.64.109;]', '2400:6a80:8174:2e0:ecb1:f7c0:4a1:dc42', '2025-03-15 09:45:07'),
(422, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/498.0.0.64.109;]', '2400:6a80:8174:2e0:ecb1:f7c0:4a1:dc42', '2025-03-15 11:20:07'),
(423, 25, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '115.85.58.138', '2025-03-16 23:57:52'),
(424, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/498.0.0.64.109;]', '115.85.58.138', '2025-03-17 00:43:29'),
(425, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '51.39.143.32', '2025-03-17 01:31:57'),
(426, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/498.0.0.64.109;]', '2400:6a80:8174:2e0:2927:c5ce:8c2c:562d', '2025-03-17 15:12:49'),
(427, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/498.0.0.64.109;]', '2400:6a80:8174:2e0:b779:8de5:74c2:955a', '2025-03-17 22:17:09'),
(428, 25, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2400:6a80:8174:2e0:ffb2:1ec1:739b:9d7f', '2025-03-18 16:18:09'),
(429, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/133.0.6943.137 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/498.0.0.64.109;]', '2400:6a80:8174:2e0:6fc2:e507:2404:526c', '2025-03-19 08:47:54'),
(430, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:17e3:182f:3029:6d09:981e', '2025-03-23 02:09:09'),
(431, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/134.0.6998.39 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/499.0.0.56.109;]', '115.85.58.90', '2025-03-24 06:47:24'),
(432, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:6315:182f:7fe3:df6e:37f2', '2025-03-26 12:40:44'),
(433, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:6315:182f:7fe3:df6e:37f2', '2025-03-26 13:01:10'),
(434, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:6315:182f:7fe3:df6e:37f2', '2025-03-26 13:05:29'),
(435, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:6315:182f:7fe3:df6e:37f2', '2025-03-26 13:05:30'),
(436, 24, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', '2c0f:2a80:a53:c910:15ef:d082:720:af06', '2025-03-26 13:10:01'),
(437, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:6315:182f:7fe3:df6e:37f2', '2025-03-26 14:01:25'),
(438, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:6315:182f:7fe3:df6e:37f2', '2025-03-26 14:01:26'),
(439, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e1:cb8d:1830:62f3:3b8c:e079', '2025-03-26 22:21:27'),
(440, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e2:bb77:1830:9faa:aa81:cc48', '2025-03-27 10:18:56'),
(441, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/134.0.6998.109 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/500.0.0.62.108;]', '2400:6a80:8174:2e0:799f:b759:3dfa:6d33', '2025-03-27 19:02:10'),
(442, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:4012:435b:1:2:c0ab:5902', '2025-03-29 11:50:56'),
(443, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '51.36.135.175', '2025-03-31 03:55:59'),
(444, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '51.36.135.175', '2025-03-31 03:57:02'),
(445, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/134.0.6998.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/500.1.0.71.108;]', '2400:6a80:8174:2e0:ab85:d44f:9c54:65d8', '2025-04-01 08:51:49'),
(446, 25, 'Mozilla/5.0 (Linux; Android 15; CPH2607 Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/134.0.6998.135 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/500.1.0.71.108;]', '2400:6a80:8174:2e0:ab85:d44f:9c54:65d8', '2025-04-01 08:51:51'),
(447, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:4102:bf6:1833:c7d:f766:a9c8', '2025-04-05 10:57:32'),
(448, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2a02:cb80:4102:bf6:1833:c7d:f766:a9c8', '2025-04-05 10:57:33'),
(449, 25, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', '2400:6a80:8174:2e0:f47e:f7d3:bf90:e184', '2025-04-09 09:56:23'),
(450, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401d:1447:1:1:d3a2:17fa', '2025-04-14 06:17:22'),
(451, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401d:1447:1:1:d3a2:17fa', '2025-04-14 06:18:32'),
(452, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401d:1447:1:1:d3a2:17fa', '2025-04-14 06:30:31'),
(453, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401d:1447:1:1:d3a2:17fa', '2025-04-14 20:34:48'),
(454, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:4103:2966:1837:39a2:33c3:8684', '2025-04-21 10:55:24'),
(455, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:4103:2966:1837:39a2:33c3:8684', '2025-04-21 20:08:08'),
(456, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '141.179.109.217', '2025-04-25 10:11:28'),
(457, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:4011:7f0c:1:1:43cc:b240', '2025-04-25 10:47:50'),
(458, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:4011:7f0c:1:1:43cc:b240', '2025-04-25 11:21:31'),
(459, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '141.179.109.217', '2025-04-25 15:19:55'),
(460, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401c:2ed0:1:1:20b0:1cc6', '2025-04-27 17:45:42'),
(461, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401c:2ed0:1:1:20b0:1cc6', '2025-04-27 19:28:02'),
(462, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401c:2ed0:1:1:20b0:1cc6', '2025-04-28 12:08:07'),
(463, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401c:2ed0:1:1:20b0:1cc6', '2025-04-28 12:24:38'),
(464, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:401a:47ae:1:1:2fe8:3d42', '2025-04-28 20:14:20'),
(465, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '145.82.57.249', '2025-04-28 20:21:34'),
(466, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:4112:80dc:183a:952d:bf23:1ec6', '2025-04-28 20:24:47'),
(467, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:4112:5137:183a:9a12:cb47:bba', '2025-04-29 01:06:58'),
(468, 24, 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', '105.113.62.123', '2025-05-01 05:37:46'),
(469, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2a02:cb80:4011:9b70:1:1:72cf:df37', '2025-05-05 20:48:31'),
(470, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:f4dd:183d:a5bb:e151:6542', '2025-05-09 15:52:36'),
(471, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 11:04:30'),
(472, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 11:32:37'),
(473, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 11:39:38'),
(474, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 11:39:39'),
(475, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 14:06:44'),
(476, 26, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '223.123.88.134', '2025-05-10 14:23:29'),
(477, 26, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '223.123.88.134', '2025-05-10 14:23:30'),
(478, 26, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '223.123.88.134', '2025-05-10 14:23:30'),
(479, 26, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '223.123.88.134', '2025-05-10 14:23:34'),
(480, 26, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '223.123.88.134', '2025-05-10 14:23:35'),
(481, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 14:33:04'),
(482, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 14:33:06'),
(483, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 15:37:06'),
(484, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 15:43:31'),
(485, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-10 16:57:02'),
(486, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:f12b:d0a9:a506:b8a6', '2025-05-11 04:09:51'),
(487, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-11 17:29:55'),
(488, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-12 11:40:36'),
(489, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-12 11:40:38'),
(490, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-12 17:01:00'),
(491, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-12 17:01:04'),
(492, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-12 17:26:36'),
(493, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-12 17:26:38'),
(494, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:428:285:7c8d:d5b6:1fca:8830', '2025-05-12 17:26:39'),
(495, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '2a02:cb80:4103:f71:183e:a049:588:7922', '2025-05-13 13:01:59'),
(496, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '2a02:cb80:4103:f71:183e:a049:588:7922', '2025-05-13 15:49:56'),
(497, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '2a02:cb80:4103:f71:183e:a049:588:7922', '2025-05-13 15:49:58'),
(498, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '2a02:cb80:4103:f71:183e:a049:588:7922', '2025-05-13 17:26:09'),
(499, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '2001:16a2:6727:b800:5519:6e81:a5ee:f984', '2025-05-16 10:55:54'),
(500, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:252:b3d2:f8d2:ad28:9197:b539', '2025-05-23 09:03:05'),
(501, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:252:b3d2:f8d2:ad28:9197:b539', '2025-05-23 09:03:06'),
(502, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', '2a02:cb80:401d:dc3:1:2:9c48:2942', '2025-05-23 20:28:14'),
(503, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '120.17.15.248', '2025-05-25 22:26:53'),
(504, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:230:7c5c:b0ad:a2e4:f4bb:ce0d', '2025-05-26 10:14:58'),
(505, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:230:7c5c:b0ad:a2e4:f4bb:ce0d', '2025-05-26 19:54:56'),
(506, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:45e:4cc8:44d6:53b7:9e79:ab17', '2025-05-27 18:13:09'),
(507, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:222:e096:d8e2:34c2:fcb2:675d', '2025-05-30 09:56:02'),
(508, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:222:e096:d8e2:34c2:fcb2:675d', '2025-05-30 17:09:45'),
(509, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1', '2405:6e00:222:e096:d8e2:34c2:fcb2:675d', '2025-05-30 17:09:46'),
(510, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.51 Mobile/15E148 Safari/604.1', '2405:6e00:231:c4b6:e15a:2654:e05:ecd7', '2025-06-05 04:28:04'),
(511, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.51 Mobile/15E148 Safari/604.1', '2405:6e00:231:c4b6:e15a:2654:e05:ecd7', '2025-06-05 05:52:36'),
(512, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.51 Mobile/15E148 Safari/604.1', '2405:6e00:231:c4b6:5982:8530:bad1:2b29', '2025-06-06 10:49:57'),
(513, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', '2001:16a2:7b1f:2100:3596:7514:27d3:7da7', '2025-06-07 12:13:59'),
(514, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.79 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:d105:56da:65fd:908f', '2025-06-11 13:56:47'),
(515, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.79 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:1180:1152:5c90:a0ee', '2025-06-11 16:43:17'),
(516, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36', '2a02:cb80:401c:bf5c:1:2:1f80:27ce', '2025-06-14 10:35:33'),
(517, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-16 02:44:48'),
(518, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '122.150.144.205', '2025-06-16 11:22:11'),
(519, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '122.150.144.205', '2025-06-16 11:22:13'),
(520, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '122.150.144.205', '2025-06-16 11:22:15'),
(521, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '122.150.144.18', '2025-06-16 17:13:01'),
(522, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-16 21:16:58'),
(523, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-17 03:05:45'),
(524, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-17 03:05:46'),
(525, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-17 06:10:43'),
(526, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-17 09:52:38'),
(527, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-17 09:52:40');
INSERT INTO `audit_logs` (`id`, `user_id`, `device`, `ipAddress`, `datenow`) VALUES
(528, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:81f:b2bf:d61f:5d05', '2025-06-17 09:52:43'),
(529, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:22a:1473:90c8:12b4:dac5:f9ba', '2025-06-18 18:50:59'),
(530, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:45e:f140:3140:4bf5:eb35:cec1', '2025-06-21 10:38:29'),
(531, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '122.150.144.130', '2025-06-23 02:45:23'),
(532, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/137.0.7151.107 Mobile/15E148 Safari/604.1', '2405:6e00:24a:70d8:5041:b116:97bb:5179', '2025-07-02 05:52:10'),
(533, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e7:52f:184e:830d:b6d2:8bf', '2025-07-03 11:29:37'),
(534, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e7:52f:184e:830d:b6d2:8bf', '2025-07-03 18:19:29'),
(535, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e7:52f:184e:830d:b6d2:8bf', '2025-07-03 21:24:11'),
(536, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2001:16a2:672f:b200:b110:6383:a86f:b4e3', '2025-07-04 10:16:03'),
(537, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:4102:31fe:184f:75d1:95b8:54c8', '2025-07-06 10:34:31'),
(538, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/138.0.7204.119 Mobile/15E148 Safari/604.1', '2405:6e00:4a3:4348:9001:8e0f:7df:5666', '2025-07-07 10:00:01'),
(539, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/138.0.7204.119 Mobile/15E148 Safari/604.1', '2405:6e00:4a3:4348:9001:8e0f:7df:5666', '2025-07-07 10:00:03'),
(540, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e0:63a0:1852:1ab4:fd6a:d1be', '2025-07-15 07:19:57'),
(541, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '51.36.254.183', '2025-07-18 10:33:50'),
(542, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '51.36.254.183', '2025-07-18 12:44:53'),
(543, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e3:8cc6:1853:9c25:7b72:7a1a', '2025-07-19 09:14:06'),
(544, 26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '122.150.141.148', '2025-07-22 12:36:08'),
(545, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:4112:caad:1855:273b:fb8d:d374', '2025-07-24 10:07:12'),
(546, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e2:1ba9:1856:320b:4ddc:6a92', '2025-07-27 20:18:44'),
(547, 18, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '82.197.61.55', '2025-08-01 00:34:29'),
(548, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:4013:b73d:1:2:560e:54e3', '2025-08-05 17:12:14'),
(549, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36', '2a02:cb80:401a:7259:1:1:4247:f53f', '2025-08-10 09:37:10'),
(550, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/139.0.7258.76 Mobile/15E148 Safari/604.1', '120.17.29.67', '2025-08-14 09:04:28'),
(551, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e2:1a35:185e:620b:7e58:e690', '2025-08-23 11:33:59'),
(552, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '2a02:cb80:40e2:1a35:185e:620b:7e58:e690', '2025-08-23 11:34:55'),
(553, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/139.0.7258.76 Mobile/15E148 Safari/604.1', '120.17.228.90', '2025-08-24 02:59:32'),
(554, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '2a02:cb80:401d:918b:1:2:9519:2dd9', '2025-08-26 16:17:02'),
(555, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36', '2a02:cb80:401d:dcb6:1:2:cb36:df54', '2025-09-05 12:35:57'),
(556, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '2001:4479:2106:3300:7547:773e:ae3f:fce8', '2025-09-14 23:31:14'),
(557, 26, 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_6_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1', '2001:4479:2106:3300:7547:773e:ae3f:fce8', '2025-09-14 23:31:16'),
(558, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2001:16a2:69cc:6f00:a4af:18de:8754:77ea', '2025-09-23 08:29:32'),
(559, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2001:16a2:7b14:9200:a4af:18de:8754:77ea', '2025-09-25 08:14:24'),
(560, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2a02:cb80:4203:552:a4af:18de:8754:77ea', '2025-09-25 15:17:38'),
(561, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36', '2001:16a2:7b13:5600:99ec:5341:1ad6:bc74', '2025-10-07 07:57:09'),
(562, 24, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36', '2001:16a2:69a1:8e00:1468:a6d:430f:9667', '2025-10-17 14:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `seria_key` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_number` text NOT NULL,
  `card_name` text NOT NULL,
  `card_expiration` varchar(50) NOT NULL,
  `card_security` text NOT NULL,
  `card_limit` double NOT NULL DEFAULT 5000,
  `card_limit_remain` double NOT NULL DEFAULT 5000,
  `card_status` int(11) NOT NULL DEFAULT 2 COMMENT '1=Active,2=Process,3=hold, 4=PAUSE',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `seria_key`, `user_id`, `card_number`, `card_name`, `card_expiration`, `card_security`, `card_limit`, `card_limit_remain`, `card_status`, `createdAt`) VALUES
(1, 'CARD6436846598f32', 3, '6294 1986 7045 8927', 'Lukas W Maurer', '07/26', '897', 5000, 5000, 4, '2023-04-12 10:13:57'),
(2, 'CARD64368535230f3', 3, '6294 1986 7045 8927', 'Lukas W Maurer', '07/26', '897', 5000, 5000, 4, '2023-04-12 10:17:25'),
(3, 'CARD672be84241ab9', 18, '5291 0089 6707 5927', 'Basma Sawed', '07/26', '897', 5000, 5000, 2, '2024-11-06 22:05:54'),
(4, 'CARD672be87404d26', 18, '5291 0089 6707 5927', 'Basma Sawed', '07/26', '897', 5000, 5000, 2, '2024-11-06 22:06:44'),
(5, 'CARD672be88d045fd', 18, '5291 0089 6707 5927', 'Basma Sawed', '07/26', '897', 5000, 5000, 2, '2024-11-06 22:07:09'),
(6, 'CARD677435efb811b', 20, '4099 1994 8048 1994', 'ROHIT CHAUHAN', '07/26', '897', 5000, 5000, 2, '2024-12-31 18:20:31'),
(7, 'CARD67a257bc048b3', 23, '6796 9048 5585 9117', 'Jesus  Alfonso ', '07/26', '897', 5000, 5000, 2, '2025-02-04 18:09:00'),
(8, 'CARD67a38dde9babd', 23, '6796 9048 5585 9117', 'Jesus  Alfonso ', '07/26', '897', 5000, 5000, 2, '2025-02-05 16:12:14'),
(9, 'CARD681f34cf0f69d', 26, '5295 7349 6361 0894', 'Hamza Ali', '07/26', '897', 5000, 5000, 2, '2025-05-10 11:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `card_request`
--

CREATE TABLE `card_request` (
  `id` int(11) NOT NULL,
  `reference_id` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_type` text NOT NULL,
  `card_reason` text NOT NULL,
  `card_request_status` int(11) NOT NULL DEFAULT 2,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `card_request`
--

INSERT INTO `card_request` (`id`, `reference_id`, `user_id`, `card_type`, `card_reason`, `card_request_status`, `createdAt`) VALUES
(1, 'card64368493e63b5', 3, 'mastercard', 'I need that for my international transactions', 2, '2023-04-12 10:14:43'),
(2, 'card643684c69be2b', 3, 'mastercard', 'I need that for my international transactions', 2, '2023-04-12 10:15:34'),
(3, 'card672c6fed7b661', 18, 'mastercard', 'I want to do my tranfer in wire', 2, '2024-11-07 07:44:45'),
(4, 'card67a257d542ff5', 23, 'visa', '', 2, '2025-02-04 18:09:25'),
(5, 'card67a38ddbba2fe', 23, 'visa', '', 2, '2025-02-05 16:12:11'),
(6, 'card681f3b44d503e', 26, 'visa', '', 2, '2025-05-10 11:40:52'),
(7, 'card681f3b5b354cf', 26, 'visa', '', 2, '2025-05-10 11:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_currency`
--

CREATE TABLE `crypto_currency` (
  `id` int(11) NOT NULL,
  `crypto_name` varchar(200) NOT NULL,
  `wallet_address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `crypto_currency`
--

INSERT INTO `crypto_currency` (`id`, `crypto_name`, `wallet_address`, `created_at`) VALUES
(1, 'Bitcoin', 'sfsdfsfsd', '2021-10-08 11:05:42'),
(43, 'Dogecoin', 'sfsfsdf', '2021-11-01 15:39:41'),
(46, 'Paxful Wallet', 'sfsdfsdf', '2021-11-03 10:59:51'),
(47, 'Paypal', 'pafapdfasd', '2021-11-11 13:26:42'),
(48, 'MoneyGram', 'Bnagwyghkwb', '2025-01-07 10:27:32'),
(49, 'Binance', 'B292hsh', '2025-01-07 10:28:18'),
(50, 'Western Union', 'Kejhgsh', '2025-01-07 10:28:43'),
(51, 'Gift cards', 'Shskksj', '2025-01-07 10:29:19'),
(52, 'United bank', 'Gkahgw', '2025-01-07 10:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `d_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `refrence_id` text NOT NULL,
  `image` text DEFAULT NULL,
  `amount` double NOT NULL,
  `wallet_address` text NOT NULL,
  `crypto_id` int(11) NOT NULL,
  `crypto_status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`d_id`, `user_id`, `refrence_id`, `image`, `amount`, `wallet_address`, `crypto_id`, `crypto_status`, `created_at`) VALUES
(1, 2, '65e5afd6da110', '1709551574FireShot Capture 023 - Goldenstone- Admin Dashboard - netercorp.test.png', 10000, 'sfsdfsfsd', 1, 0, '2024-03-04 12:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `domestic_transfer`
--

CREATE TABLE `domestic_transfer` (
  `dom_id` int(11) NOT NULL,
  `acct_id` int(11) DEFAULT NULL,
  `refrence_id` text NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `bank_name` text DEFAULT NULL,
  `acct_name` text DEFAULT NULL,
  `acct_number` int(11) NOT NULL,
  `trans_type` varchar(50) NOT NULL DEFAULT 'domestic transfer',
  `acct_type` varchar(50) NOT NULL,
  `acct_remarks` text DEFAULT NULL,
  `dom_status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `domestic_transfer`
--

INSERT INTO `domestic_transfer` (`dom_id`, `acct_id`, `refrence_id`, `amount`, `bank_name`, `acct_name`, `acct_number`, `trans_type`, `acct_type`, `acct_remarks`, `dom_status`, `created_at`) VALUES
(11, 2, '642a71c92323e', 100, 'Standard chartered bank', 'Daniel Josh', 2147483647, 'domestic transfer', 'Savings', 'Your school fees', 1, '2023-04-03 06:27:21'),
(12, 3, '6436864132c4e', 40000, 'VACU', 'James Thomas', 2147483647, 'domestic transfer', 'Checking', 'Paid for my machinery maintenance.', 1, '2023-04-12 10:21:53'),
(13, 3, '643686af68775', 40000, 'VACU', 'James Thomas', 2147483647, 'domestic transfer', 'Checking', 'Paid for my machinery maintenance.', 1, '2023-04-12 10:23:43'),
(14, 3, '643688025fc80', 54000, 'VACU', 'James Thomas', 2147483647, 'domestic transfer', 'Checking', 'Machinery bills', 1, '2023-04-12 10:29:22'),
(15, 2, '64da129a9194c', 1234, 'ss', 'sss', 324532534, 'domestic transfer', 'Online Banking', 'sfds', 0, '2023-08-14 12:40:10'),
(16, 18, '672d5eae5d903', 10, 'Community Federal Savings Bank', 'BASMA SAEED LTD', 2147483647, 'domestic transfer', 'Checking', '', 2, '2024-11-08 00:43:26'),
(17, 18, '672d69231f128', 1, 'First Century Bank', 'Basma Saeed', 2147483647, 'domestic transfer', 'Checking', '', 2, '2024-11-08 01:28:03'),
(18, 18, '672e5f8b59f8c', 10000, 'First Century Bank', 'Basma Saeed', 2147483647, 'domestic transfer', 'Checking', '', 2, '2024-11-08 18:59:23'),
(19, 18, '6748dbdd5cbab', 1, 'Community Federal Savings Bank', 'BASMA SAEED LTD', 2147483647, 'domestic transfer', 'Checking', '', 0, '2024-11-28 21:08:45'),
(20, 18, '6748dbdd5cbb1', 1, 'Community Federal Savings Bank', 'BASMA SAEED LTD', 2147483647, 'domestic transfer', 'Checking', '', 0, '2024-11-28 21:08:45'),
(21, 18, '6748dd7018fd2', 1, 'First Century Bank', 'Basma Saeed', 2147483647, 'domestic transfer', 'Checking', '', 3, '2024-11-28 21:15:28'),
(22, 19, '6750aaf50e338', 3000, 'بنك الراجحي', 'سامح محممدالمغازي', 2147483647, 'domestic transfer', 'Current', 'freinds', 3, '2024-12-04 19:18:13'),
(23, 19, '6750ade7ae5a2', 3000, 'بنك الراجحي', 'سامح محممدالمغازي', 2147483647, 'domestic transfer', 'Current', 'freinds', 3, '2024-12-04 19:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `loan_reference_id` text DEFAULT NULL,
  `acct_id` int(11) NOT NULL,
  `amount` double DEFAULT 0,
  `loan_remarks` text NOT NULL,
  `loan_status` int(11) NOT NULL DEFAULT 0,
  `loan_message` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `loan_reference_id`, `acct_id`, `amount`, `loan_remarks`, `loan_status`, `loan_message`, `created_at`) VALUES
(1, '6734956c79669', 18, 600, 'I want a loan to pay my transaction fee.', 0, NULL, '2024-11-13 12:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `about_us` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `url_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `url_tel` varchar(15) DEFAULT NULL,
  `url_email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `trans_limit_min` double DEFAULT NULL,
  `trans_limit_max` double DEFAULT NULL,
  `livechat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Live Widget'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `image`, `about_us`, `url_name`, `url_tel`, `url_email`, `trans_limit_min`, `trans_limit_max`, `livechat`) VALUES
(1, 'favicon.png', 'Online Banking With Cot, Imf, Tax & Token Code', 'BlueRock', '+1(541)417-9176', 'support@bluerockfinance.live', 500, 500000, 'https://code.tidio.co/kfbwher8c2u39zo5o9pnxxcx1aunk8o3.js');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `wire_id` int(11) NOT NULL,
  `acct_id` int(11) DEFAULT NULL,
  `trans_id` text NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `bank_name` text DEFAULT NULL,
  `acct_name_id` text DEFAULT NULL,
  `acct_number` varchar(200) DEFAULT NULL,
  `trans_type` varchar(50) NOT NULL DEFAULT 'wire transfer',
  `acct_type` varchar(50) DEFAULT NULL,
  `acct_country` text DEFAULT NULL,
  `acct_swift` varchar(50) DEFAULT NULL,
  `acct_routing` varchar(50) DEFAULT NULL,
  `acct_remarks` text DEFAULT NULL,
  `wire_status` int(11) NOT NULL DEFAULT 0,
  `trans_otp` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `temp_trans`
--

INSERT INTO `temp_trans` (`wire_id`, `acct_id`, `trans_id`, `amount`, `bank_name`, `acct_name_id`, `acct_number`, `trans_type`, `acct_type`, `acct_country`, `acct_swift`, `acct_routing`, `acct_remarks`, `wire_status`, `trans_otp`, `createdAt`) VALUES
(1, 2, '642a71b771f39', 100, 'Standard chartered bank', 'Daniel Josh', '6789456732', 'domestic transfer', 'Savings', NULL, NULL, NULL, 'Your school fees', 0, 247480, '2023-04-03 06:27:03'),
(2, 2, '642a73b37684e', 500, 'Standard chartered bank', 'Daniel Josh', '3245235234', 'wire transfer', 'Fixed Deposit', 'Belgium', '2345345', '23453245', 'Flight funds', 0, 212287, '2023-04-03 06:35:31'),
(3, 3, '643682cac5d63', 100000, 'Chase', 'James Thomas', '9765436984', 'domestic transfer', 'Checking', NULL, NULL, NULL, 'Space project tools', 0, 219350, '2023-04-12 10:07:06'),
(4, 3, '643686029400b', 40000, 'VACU', 'James Thomas', '9875836345', 'domestic transfer', 'Checking', NULL, NULL, NULL, 'Paid for my machinery maintenance.', 0, 289347, '2023-04-12 10:20:50'),
(5, 3, '643687d90dc23', 54000, 'VACU', 'James Thomas', '7654568766', 'domestic transfer', 'Checking', NULL, NULL, NULL, 'Machinery bills', 0, 328255, '2023-04-12 10:28:41'),
(6, 3, '64368aed10d19', 250000, 'Woodforest', 'Wilson Peters', '0875847474', 'wire transfer', 'Current', 'United States of America', '37826', '465734678', 'Space machinery', 0, 316941, '2023-04-12 10:41:49'),
(7, 4, '64d865686a73e', 2000, 'central bank', 'john yen', '78387489', 'wire transfer', 'Savings', 'China', 'dkidsxxx', '44332', 'personal business', 0, 348688, '2023-08-13 06:08:56'),
(8, 2, '64da12510ba7e', 1234, 'ss', 'sss', '324532534', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'sfds', 0, 138155, '2023-08-14 12:38:57'),
(9, 2, '65e5b853367f9', 50, 'chase', 'testing', '888889992', 'wire transfer', 'Domicilary Account', 'American Samoa', '8990', '738838888888', 'hhhh', 0, 117963, '2024-03-04 13:02:27'),
(10, 2, '65e5d054e786c', 996, 'chase', 'test', '77644432', 'wire transfer', 'Online Banking', 'Angola', '99884', '6666666666', 'fdddd', 0, 348173, '2024-03-04 14:44:52'),
(11, 2, '65e5d246d3f51', 5000, 'Anika bank', 'steve', '65477888804', 'wire transfer', 'Joint Account', 'Andorra', '87665', '7655598779', 'gfrryy', 0, 153128, '2024-03-04 14:53:10'),
(12, 2, '65e5dacf94d71', 4900, 'Chase', 'Micheal', '8776662548', 'wire transfer', 'Non Resident', 'American Samoa', '75662', '827727788', 'food money', 0, 318954, '2024-03-04 15:29:35'),
(13, 2, '65e5dd3c16fca', 5000, 'chase', 'Verizon', '98005533', 'wire transfer', 'Joint Account', 'Anguilla', '9887666', '09777', '877 book', 0, 122047, '2024-03-04 15:39:56'),
(14, 2, '65e5e1a46ca45', 5000, 'chase', 'stephen', '112356789', 'wire transfer', 'Domicilary Account', 'Angola', '76455', '7776655', 'yyy', 0, 892221, '2024-03-04 15:58:44'),
(15, 2, '65e5eac177c2e', 5000, 'Chase', 'boss bay', '7654427772', 'wire transfer', 'Non Resident', 'American Samoa', '876653', '12553663773', 'paymnt', 0, 366213, '2024-03-04 16:37:37'),
(16, 2, '65e5edf4cde75', 5000, 'chase', 'boss baby', '12366474', 'wire transfer', 'Domicilary Account', 'Angola', '76575', '9853535', 'hhf', 0, 296629, '2024-03-04 16:51:16'),
(17, 2, '65eb38c410ad6', 300, 'chase bank', 'Boss Layfa', '838939933', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'yeehh', 0, 761100, '2024-03-08 17:11:48'),
(18, 2, '65eb39f9d4176', 300, 'chase bank', 'Boss Layfa', '838939933', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'yeehh', 0, 279060, '2024-03-08 17:16:57'),
(19, 2, '65eb3a235c4d0', 300, 'chase bank', 'Boss Layfa', '882899292', 'domestic transfer', 'Non Resident', NULL, NULL, NULL, 'Money long', 0, 306055, '2024-03-08 17:17:39'),
(20, 2, '65eb3a4a6f518', 300, 'chase bank', 'Boss Layfa', '882899292', 'domestic transfer', 'Non Resident', NULL, NULL, NULL, 'Money long', 0, 380879, '2024-03-08 17:18:18'),
(21, 2, '65eb3aad9c833', 300, 'chase bank', 'Boss Layfa', '35355366', 'wire transfer', 'Domicilary Account', 'Anguilla', '535353', '6366363', 'monruyy', 0, 311639, '2024-03-08 17:19:57'),
(22, 2, '65eb3dfb8996f', 300, 'chase bank', 'Boss Layfa', '786654', 'domestic transfer', 'Domicilary Account', NULL, NULL, NULL, 'you now', 0, 170227, '2024-03-08 17:34:03'),
(23, 2, '65eb45381b312', 600, 'chase bank', 'Boss Layfa', '556432122', 'domestic transfer', 'Domicilary Account', NULL, NULL, NULL, 'sa1qsws', 0, 636816, '2024-03-08 18:04:56'),
(24, 2, '65eb478c3a479', 100, 'chase bank', 'Boss Layfa', '1234567', 'domestic transfer', 'Online Banking', NULL, NULL, NULL, 'your debit', 0, 292121, '2024-03-08 18:14:52'),
(25, 2, '661673017d5f9', 1000, 'chase bank', 'Boss Layfa', '89008755', 'wire transfer', 'Checking', 'Albania', '535353', '78905432', 'bif jjz', 0, 454018, '2024-04-10 12:07:45'),
(26, 2, '66474ad0eca04', 2000, 'chase bank', 'Boss Layfa', '9088765423', 'wire transfer', 'Savings', 'Anguilla', '535353', '8906544455', 'for fund', 0, 162611, '2024-05-17 13:17:20'),
(27, 18, '672c77f86deae', 100, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 335630, '2024-11-07 08:19:04'),
(28, 17, '672c78c98b52b', 1500, 'Unity bank', 'Agwere oyibo', '0041234864', 'wire transfer', 'Current', 'Armenia', '18176', '1345', 'Business', 0, 834132, '2024-11-07 08:22:33'),
(29, 18, '672c80d3d892f', 50, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 336194, '2024-11-07 08:56:51'),
(30, 18, '672c8e5a20ed3', 10, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 336643, '2024-11-07 09:54:34'),
(31, 17, '672c8f6a66819', 1000, 'Unity bank', 'Agwere oyibo', '0044615188', 'wire transfer', 'Current', 'Anguilla', '18176', '646468', 'My money', 0, 957650, '2024-11-07 09:59:06'),
(32, 18, '672c91e220550', 10, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 150573, '2024-11-07 10:09:38'),
(33, 18, '672ca43a22795', 30000, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 983582, '2024-11-07 11:27:54'),
(34, 18, '672cba1303e51', 30000, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 133376, '2024-11-07 13:01:07'),
(35, 18, '672d5e94766ef', 10, 'Community Federal Savings Bank ', 'BASMA SAEED LTD', '8312461456', 'domestic transfer', 'Checking', NULL, NULL, NULL, '', 0, 844879, '2024-11-08 00:43:00'),
(36, 18, '672d602e9fe7a', 5, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 100389, '2024-11-08 00:49:50'),
(37, 18, '672d657a800ec', 1, 'First Century Bank', 'Basma Saeed', '4027285954566', 'domestic transfer', 'Checking', NULL, NULL, NULL, '', 0, 255144, '2024-11-08 01:12:26'),
(38, 18, '672d690f6dc07', 1, 'First Century Bank', 'Basma Saeed', '4027285954566', 'domestic transfer', 'Checking', NULL, NULL, NULL, '', 0, 298326, '2024-11-08 01:27:43'),
(39, 18, '672de91ab2644', 10, 'First Century Bank', 'Basma Saeed', '4027285954566', 'wire transfer', 'Checking', 'United States of America', 'PAYNUS33XXX', '061120084', '', 0, 626952, '2024-11-08 10:34:02'),
(40, 18, '672e5f770f28a', 10000, 'First Century Bank', 'Basma Saeed', '4027285954566', 'domestic transfer', 'Checking', NULL, NULL, NULL, '', 0, 135673, '2024-11-08 18:59:03'),
(41, 18, '67341e9cbf331', 1, 'Community Federal Savings Bank', 'BASMA SAEED LTD', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', '', 0, 639150, '2024-11-13 03:35:56'),
(42, 18, '6748dbc62a387', 1, 'Community Federal Savings Bank ', 'BASMA SAEED LTD', '8312461456', 'domestic transfer', 'Checking', NULL, NULL, NULL, '', 0, 224919, '2024-11-28 21:08:22'),
(43, 18, '6748dd5aa30d0', 1, 'First Century Bank', 'Basma Saeed', '4027285954566', 'domestic transfer', 'Checking', NULL, NULL, NULL, '', 0, 203765, '2024-11-28 21:15:06'),
(44, 18, '6748df66aadd7', 1, 'First Century Bank', 'Basma Saeed', '4027285954566', 'wire transfer', 'Checking', 'United States of America', 'PAYNUS33XXX', '061120084', '', 0, 100257, '2024-11-28 21:23:50'),
(45, 19, '67505daeabe47', 2000, 'بنك الراجحي', 'سامح محممدالمغازي', '201000010006086380856', 'wire transfer', 'Current', 'Saudi Arabia', '786', '0575765991', 'freinds', 0, 369813, '2024-12-04 13:48:30'),
(46, 19, '67505fb2d9f36', 3000, 'بنك الراجحي', 'سامح محممدالمغازي', '201000010006086380856', 'wire transfer', 'Current', 'Saudi Arabia', '786', '0575765951', 'friends', 0, 101468, '2024-12-04 13:57:06'),
(47, 19, '6750601d1fe67', 3000, 'بنك الراجحي', 'سامح محممدالمغازي', '201000010006086380856', 'wire transfer', 'Current', 'Saudi Arabia', '786', '0575765951', 'friends', 0, 124207, '2024-12-04 13:58:53'),
(48, 19, '675070fc50563', 200, 'بنك الراجحي', 'سامح محممدالمغازي', '201000010006086380856', 'wire transfer', 'Current', 'Saudi Arabia', '786', '456', 'freinds', 0, 195429, '2024-12-04 15:10:52'),
(49, 19, '675093cad3e07', 5000, 'standard chartered bank', 'Asad mahmood', '9901761572', 'wire transfer', 'Current', 'United Arab Erimates', '564', '8975567', 'freinds', 0, 343559, '2024-12-04 17:39:22'),
(50, 19, '6750aad3c7081', 3000, 'بنك الراجحي ', 'سامح محممدالمغازي', '201000010006086380856', 'domestic transfer', 'Current', NULL, NULL, NULL, 'freinds', 0, 643912, '2024-12-04 19:17:39'),
(51, 21, '678d7faa3d46c', 500, 'Unity bank', 'Glory', '998865567', 'wire transfer', 'Current', 'Argentina', '13454', '9877', 'Goods', 0, 124095, '2025-01-19 22:41:46'),
(52, 21, '678fe90c25057', 500, 'Unity bank', 'Glory', '789876777', 'wire transfer', 'Checking', 'Anguilla', '12335', '556665', 'Goods', 0, 823221, '2025-01-21 18:35:56'),
(53, 18, '679d23cfbc4ba', 1010, 'Community Federal Savings Bank', 'Basma Saeed', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', 'Paymeny', 0, 293033, '2025-01-31 19:26:07'),
(54, 18, '679d24062f333', 9000, 'Community Federal Savings Bank', 'Basma Saeed', '8312461456', 'wire transfer', 'Checking', 'Select Country', 'CMFGUS33', '026073150', 'Payment', 0, 161229, '2025-01-31 19:27:02'),
(55, 18, '679d2d6f88d14', 8000, 'Community Federal Savings Bank', 'Basma saeed', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', 'Payment', 0, 166008, '2025-01-31 20:07:11'),
(56, 18, '679d2e8800b65', 8000, 'Community Federal Savings Bank', 'Basma saeed', '8312461456', 'domestic transfer', 'Checking', NULL, NULL, NULL, 'Fundds', 0, 179452, '2025-01-31 20:11:52'),
(57, 18, '679d2fb8765a4', 5000, 'Community Federal Savings Bank', 'Basma Saeed', '8312461456', 'wire transfer', 'Checking', 'United States of America', 'CMFGUS33', '026073150', 'Funds', 0, 223632, '2025-01-31 20:16:56'),
(58, 23, '67a23fd48854d', 5000, 'Chase', 'Jesus Alfonso Ruiz', '3992631987', 'wire transfer', 'Savings', 'United States of America', 'CHASUS33', '267084131', '', 0, 184178, '2025-02-04 16:27:00'),
(59, 23, '67a24169a43d4', 5000, 'Chase', 'Jesus Alfonso Ruiz', '3992631987', 'wire transfer', 'Savings', 'United States of America', 'CHASUS33', '267084131', '', 0, 363346, '2025-02-04 16:33:45'),
(60, 23, '67a241aeb470d', 5000, 'Chase', 'Jesus Alfonso Ruiz', '3992631987', 'wire transfer', 'Savings', 'United States of America', 'CHASUS33', '267084131', '', 0, 114687, '2025-02-04 16:34:54'),
(61, 23, '67a243c54a057', 5000, 'Chase', 'Jesus Alfonso Ruiz', '3992631987', 'wire transfer', 'Savings', 'United States of America', 'CHASUS33', '267084131', '', 0, 265528, '2025-02-04 16:43:49'),
(62, 23, '67a3dc7c2fa09', 5000, 'Chase', 'Jesus Alfonso Ruiz', '3992631987', 'wire transfer', 'Savings', 'United States of America', 'CHASUS33', '267084131', '', 0, 160820, '2025-02-05 21:47:40'),
(63, 24, '67c1c2b5cf1db', 5300, 'Al Rajhi', 'MUZAMMILAHMED KHAN AQEELAHMED KHAN', '077010010006082856990', 'wire transfer', 'Savings', 'Saudi Arabia', 'SA96 8000 0856 6080 1285 6990', '6990', 'Business', 0, 346318, '2025-02-28 14:05:41'),
(64, 23, '67c7c43a10282', 10000, 'Chase', 'Jesus Alfonso Ruiz', '520151260', 'wire transfer', 'Checking', 'United States of America', 'CHASUS33', '267084131', '', 0, 237580, '2025-03-05 03:25:46'),
(65, 24, '67c8556be8dac', 5300, 'Al rajhi', 'MUZAMMILAHMED KHAN AQEELAHMED KHAN', '077010010006082856990', 'wire transfer', 'Savings', 'Saudi Arabia', '7637', '72628', 'Transfer', 0, 343126, '2025-03-05 13:45:15'),
(66, 25, '67d3b92d364c2', 10000, 'BDO Unibank Inc', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Payment for my home loan', 0, 132509, '2025-03-14 05:05:49'),
(67, 25, '67d3bd6f36eb5', 10000, 'BDO Unibank', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay for my home loan', 0, 282032, '2025-03-14 05:23:59'),
(68, 25, '67d3ea199da72', 10000, 'BDO Unibank', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay for home debt', 0, 627640, '2025-03-14 08:34:33'),
(69, 25, '67d3f085379bc', 10000, 'BDO UNIBANK', 'Anita Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay my home debt', 0, 384059, '2025-03-14 09:01:57'),
(70, 25, '67d54ca27c60d', 10000, 'BDO Unibank', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 276957, '2025-03-15 09:47:14'),
(71, 25, '67d562e817e8e', 10000, 'BDO Unibank', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 110081, '2025-03-15 11:22:16'),
(72, 25, '67d766030bb59', 10000, 'BDO Unibank', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 256280, '2025-03-17 00:00:03'),
(73, 25, '67d770ab17b9a', 10000, 'BDO UNIBANK', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 123860, '2025-03-17 00:45:31'),
(74, 25, '67d83c800bffe', 10000, 'BDO Unibank Inc.', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 309168, '2025-03-17 15:15:12'),
(75, 25, '67d8a0080e4d1', 10000, 'BDO Unibank', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 341391, '2025-03-17 22:19:52'),
(76, 25, '67e100db658d7', 10000, 'BDO', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 283019, '2025-03-24 06:51:07'),
(77, 25, '67e5a13fcbf69', 10000, 'BDO Unibank', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 372448, '2025-03-27 19:04:31'),
(78, 25, '67eba9a78e478', 10000, 'BDO UNIBANK', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay home loan and debts', 0, 122667, '2025-04-01 08:53:59'),
(79, 25, '67f644cf15c6e', 10000, 'BDO', 'Anita V Tuscano', '000470492279', 'wire transfer', 'Savings', 'Phillipines', 'BNORPHMM', '010530667', 'Pay for home loan and personal debts', 0, 186564, '2025-04-09 09:58:39'),
(80, 24, '68130a0909db9', 20000, 'Alrajhi', 'MUZAMMILAHMED KHAN AQEELAHMED KHAN', '077010010006082856990', 'wire transfer', 'Savings', 'Pakistan', 'RJHISARI', '9680000856608012856990', 'Transaction', 0, 218241, '2025-05-01 05:43:37'),
(81, 26, '681f752a0b65b', 2000, 'Revolut Payments Australia Pty Ltd', 'Hamza ali', '709379150', 'wire transfer', 'Current', 'Australia', 'REVOAU32XXX', '772772', 'Amazon payment', 0, 867156, '2025-05-10 15:47:54'),
(82, 26, '681f75e4bc781', 2000, 'Revolut Payments Australia Pty Ltd', 'Hamza ali', '709379150', 'wire transfer', 'Current', 'Australia', 'REVOAU32XXX', '772772', 'Amazon payment', 0, 336875, '2025-05-10 15:51:00'),
(83, 26, '682229f45bd38', 10000, 'Revolut Payments Australia Pty Ltd', 'Hamza Ali', '709379150', 'wire transfer', 'Current', 'Australia', 'REVOAU32XXX', '772772', 'Amazon salary', 0, 362643, '2025-05-12 17:03:48'),
(84, 26, '6849b39f82b89', 16771, 'Revolut Payments Australia Pty Ltd', 'Hamza Ali', '709379150', 'wire transfer', 'Current', 'Australia', 'REVOAU32XXX', '772772', 'Want to transfer my amount', 0, 233654, '2025-06-11 16:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `refrence_id` text NOT NULL,
  `amount` double NOT NULL,
  `trans_type` int(11) NOT NULL,
  `sender_name` text NOT NULL,
  `description` text NOT NULL,
  `trans_status` int(11) NOT NULL DEFAULT 0,
  `created_at` text NOT NULL,
  `time_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `user_id`, `refrence_id`, `amount`, `trans_type`, `sender_name`, `description`, `trans_status`, `created_at`, `time_created`) VALUES
(1, 2, '642a7155cb8a8', 100000, 1, 'John Wills', 'for your flight tickek', 0, '2020-10-04', '12:56'),
(2, 3, '6436821fb758e', 5490000, 1, 'ESA contractors', 'Project contract', 0, '2018-10-23', '12:54'),
(3, 3, '643682922d5da', 2500000, 1, 'IAF space suits contract ltd', 'Contracts for spacesuit provision for National Space agencies', 0, '2022-12-01', '03:34'),
(4, 4, '64d7556213201', 2500000, 1, 'Kim won ', 'NEW YEAR CONTRACT ', 0, '2023-08-11', '14:47'),
(5, 4, '64d75689ba5c6', 500000, 2, 'Elton Parker ', 'For oil and gas ', 0, '2023-08-01', '05:52'),
(6, 4, '64d7612c810a7', 2000000, 1, 'CANADA ', 'FOR RUBBY ', 0, '2023-07-20', '18:37'),
(7, 2, '64da11f2b1860', 1000, 1, 'admin', 'd', 0, '2023-08-14', '16:37'),
(8, 2, '64da12267fad4', 400000000000, 1, 'ss', 's', 0, '2023-08-09', '12:38'),
(9, 2, '663fe5299a9f9', 2000, 1, 'Dave', 'Biggard', 0, '2024-05-11', '14:41'),
(10, 2, '663fe5644de83', 2000, 1, 'Dave', 'Biggard', 0, '2024-05-11', '14:41'),
(11, 2, '663fe592d2520', 2000, 1, 'Dave', 'Biggard', 0, '2024-05-11', '14:41'),
(12, 2, '663fe6627b3a0', 2000, 1, 'Dave', 'Biggard', 0, '2024-05-11', '14:41'),
(13, 2, '663feb03772cc', 2000, 1, 'Dave', 'Paul', 0, '2024-05-11', '23:05'),
(14, 17, '672b718babfc7', 1500, 1, 'Beginners FBA', 'Withdrawal requested by customer', 0, '2024-11-06', '14:39'),
(15, 18, '672b8ad1257e0', 10000, 1, 'Beginnersfba', 'Withdrawal request from customer (1/3)', 0, '2024-11-06', '10:25'),
(16, 18, '672bb588a6709', 10000, 1, 'BeginnersFBA financial team', 'Withdrawal request from customer (2/3)', 0, '2024-11-06', '01:28'),
(17, 18, '672c635d6cf41', 10000, 1, 'BeginnersFBA financial team', 'Withdrawal request from customer (3/3)', 0, '2024-11-07', '01:50'),
(18, 19, '6750532a835be', 5000, 1, 'Asad Mahmood ', 'Business loan', 0, '2024-12-04', '16:58'),
(19, 19, '677cfd1e0e0d0', 3000, 1, 'Blue Rock', 'Reserve Fund', 0, '2025-01-07', '11:08'),
(20, 19, '677d02e1d758c', 3000, 1, 'Blue Rock', 'Reversed Fund', 0, '2025-01-07', '11:33'),
(21, 21, '678d7dfcdcb1d', 5000, 1, 'Nobody', 'Send', 0, '2025-01-24', '09:32'),
(22, 22, '679102f87ae54', 100000, 1, 'Standard Chartered Ltd ', 'Partial transcript payment transaction 1/3', 0, '2025-01-22', '09:36'),
(23, 22, '67923137858c1', 150000, 1, 'Standard Chartered Ltd', 'Partial transcript payment transaction 2/3', 0, '2025-01-23', '03:08'),
(24, 23, '67a14f8891de0', 10000, 1, 'Beginnerfba platform ', 'Partial transcript payment transaction 1/3', 0, '2025-02-03', '17:21'),
(25, 23, '67a15b91d8437', 14000, 1, 'Beginnersfba platform ', 'Partial transcript payment transaction 2/3', 0, '2025-02-03', '18:12'),
(26, 23, '67a1ab9ec0020', 10000, 1, 'Beginnersfba platform ', 'Partial transcript payment transaction 3/3', 0, '2025-02-04', '00:54'),
(27, 24, '67c1a937e846a', 5300, 1, 'Amazon account', 'Business ', 0, '2025-02-28', '07:16'),
(28, 25, '67d2b14da4dc0', 10000, 1, 'FXsport Investment ', 'Investment profits', 0, '2025-03-13', '08:18'),
(29, 24, '67e401444e00f', 3600, 1, 'Business ', 'Business funds', 0, '2025-03-26', '08:29'),
(30, 24, '67e7d611e9379', 2300, 1, 'Online business ', 'Funds ', 0, '2025-03-29', '09:14'),
(31, 24, '67fca9b4e4c76', 6000, 1, 'Business ', 'Business Fund', 0, '2025-04-14', '08:22'),
(32, 24, '6806254b4e21a', 1300, 1, 'Online business ', 'Business funds', 0, '2025-04-21', '04:00'),
(33, 24, '680b88a596924', 6000, 1, 'Business Funds ', 'Business Fund', 0, '2025-04-25', '14:05'),
(34, 26, '681f5de76a552', 5000, 1, 'BeginningsFBA', 'Business funds', 0, '2025-05-10', '19:08'),
(35, 26, '681f72832ddda', 11771, 1, 'BeginningsFBA', 'Business Funds', 0, '2025-05-10', '19:35'),
(36, 24, '682385276ee8d', 10000, 1, 'Business funds ', 'Business funds ', 0, '2025-05-13', '10:45'),
(37, 26, '685109642bafd', 16771, 1, 'BlueRock Finance ', 'Business funds ', 0, '2025-06-17', '07:21'),
(38, 26, '6852fc632d02f', 3800, 1, 'BeginnersFBA', 'Withdrawal from beginnersfba account ', 0, '2025-06-18', '15:50'),
(39, 24, '6867502f5a011', 18000, 1, 'Business funds ', 'Business funds ', 0, '2025-07-04', '04:53'),
(40, 24, '687a6ee8e62b4', 10000, 1, 'Business Fund', 'Business Fund', 0, '2025-07-18', '16:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `acct_username` varchar(200) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `acct_no` varchar(50) DEFAULT NULL,
  `billing_code` int(11) NOT NULL DEFAULT 0 COMMENT '0=deactive,1=active',
  `acct_balance` double DEFAULT 0,
  `loan_balance` double DEFAULT 0,
  `acct_limit` double DEFAULT 0,
  `limit_remain` double DEFAULT 0,
  `acct_type` varchar(200) DEFAULT NULL,
  `acct_gender` text DEFAULT NULL,
  `marital_status` text DEFAULT NULL,
  `acct_currency` varchar(50) DEFAULT NULL,
  `acct_status` varchar(50) DEFAULT 'active' COMMENT 'active, hold',
  `acct_email` varchar(200) DEFAULT NULL,
  `acct_phone` varchar(20) DEFAULT NULL,
  `acct_occupation` text DEFAULT NULL,
  `acct_dob` text DEFAULT NULL,
  `ssn` varchar(200) DEFAULT NULL,
  `frontID` text DEFAULT NULL,
  `backID` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `acct_password` text DEFAULT NULL,
  `acct_pincode` int(20) NOT NULL DEFAULT 0,
  `acct_pin` varchar(4) DEFAULT NULL,
  `acct_otp` int(11) DEFAULT NULL,
  `acct_cot` varchar(15) DEFAULT NULL,
  `acct_imf` varchar(15) DEFAULT NULL,
  `acct_tax` varchar(15) DEFAULT NULL,
  `mgr_name` text DEFAULT NULL,
  `mgr_no` text DEFAULT NULL,
  `mgr_email` text DEFAULT NULL,
  `mgr_id` text DEFAULT NULL,
  `mgr_image` text DEFAULT NULL,
  `acct_address` text DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `acct_username`, `firstname`, `lastname`, `image`, `acct_no`, `billing_code`, `acct_balance`, `loan_balance`, `acct_limit`, `limit_remain`, `acct_type`, `acct_gender`, `marital_status`, `acct_currency`, `acct_status`, `acct_email`, `acct_phone`, `acct_occupation`, `acct_dob`, `ssn`, `frontID`, `backID`, `country`, `state`, `acct_password`, `acct_pincode`, `acct_pin`, `acct_otp`, `acct_cot`, `acct_imf`, `acct_tax`, `mgr_name`, `mgr_no`, `mgr_email`, `mgr_id`, `mgr_image`, `acct_address`, `createdAt`) VALUES
(2, 'bryte', 'Bright', 'david', '1234567890avatar-3.jpg', '1234567890', 1, 102700, 0, 10000, 4700, 'Savings', 'male', '', 'USD', 'active', 'brytedree@gmail.com', '23407038367621', 'web developer', '2023-04-02', '1234567890', '1680502888d.jpeg', '1680502888d.jpeg', 'Nigeria', 'manchester', '$2y$10$zfj2exOs9sT9IJv3qGl/reczotOimfIedXGe.ySadMRjxyWS/UxeC', 0, '1234', 115533, '3434', '5656', '2320', '', '', '', '', NULL, 'wishville 44 london manchester 34543', '2023-04-03 06:21:28'),
(6, 'perryweb', 'Arthur', 'Rougher', 'Arthur170973353920aab71f88a53b30534b49407b1e61b4.jpg', '9909194680', 0, 0, 0, NULL, NULL, 'Savings', 'male', NULL, 'USD', 'active', 'perryweb17@gmail.com', '0904533872', 'Photographer ', '2024-03-03', '1234567890', '1709381598code.png', '1709381599excel.png', 'Tahiti', 'lagos', '$2y$10$cdMkPjuGU2lKEfZj23p1Gei.NEeo0AWXOi9sLdCFiqx90DXs6PPti', 0, '1234', 391697, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Park side EMP building ikeja lagos 23345', '2024-03-02 13:13:18'),
(15, 'Marvy', 'Ruger', 'Bnxn', '170973448020aab71f88a53b30534b49407b1e61b4.jpg', '9909342406', 0, 0, 0, NULL, NULL, 'Savings', 'male', NULL, 'USD', 'hold', 'poker@gmail.com', '1208846775', 'song writer', '2024-03-06', '123456789', '67577347cbbfcf351a84a2c74ba853146d9713.jpg', '144110998bbc715738adbee6391aa77185ed78.jpg', 'Bahrain', 'kaon', '$2y$10$13MfETLWtz4b3266DYFtbOjtu7NbUPyXvX75XONmIYQ/vybxge8ly', 0, '4272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Park side peter pan bay you kaon 78940', '2024-03-06 15:14:40'),
(17, 'Vizzyjagaban', 'Jagaban', 'Vizzy', '1730888032Screenshot_20241106-101622_WhatsAppBusiness.jpg', '9909324571', 0, 1500, 0, 1500, 1500, 'Savings', 'male', '', 'USD', 'active', 'Amazonfbalikeaboss@gmail.com ', '08042255558', 'Business man', '2024-11-13', '123456', '371054IMG-20241105-WA0034.jpeg', '180264Screenshot_20241106-073401_WhatsAppBusiness.jpg', 'Ecuador', 'Selda', '$2y$10$vint9KjNaSY1a8fanu3KGOJ3ZG57beGDvJ55X2gyBSSzW4/F1Tn5e', 0, '5633', 344657, '75905', '', '', NULL, NULL, NULL, NULL, NULL, 'Okporo 12 Ozoro Selda 7861', '2024-11-06 10:13:52'),
(18, 'Basma', 'Basma', 'Sawed', '1730901084IMG_3990.jpeg', '9909192817', 1, 9986, 0, 30000, 29998, 'Current', 'female', '', 'USD', 'active', 'Basukhan.bk@gmail.com', '580139397', 'Teacher', '1992-10-29', '782466', '883665IMG_4414.jpeg', '165662IMG_4413.jpeg', 'Saudi Arabia', 'Eastern', '$2y$10$9w7aGxB73FddXU30HfJkb.OtX1vFuW7A0HrKhspleTOfN9rJRIstC', 0, '4465', 364238, '75905', '', '', NULL, NULL, NULL, NULL, NULL, 'Al khobar ash shumalia 9 Dammam Eastern 34217', '2024-11-06 13:51:24'),
(19, 'SUNEER167', 'SUNEER ', 'AZAM ', '17333152821733315259544869532738598745530.jpg', '9909272494', 0, 5000, 0, 10000, 4000, 'Savings', 'male', '', 'USD', 'active', 'hahabwywhahabagab@gmail.com', '00966503904025', 'Mechanic', '2000-02-19', '167', '98596517333151783124628371610832740516.jpg', '2689761733315217005561031484462449614.jpg', 'Saudi Arabia', 'Saddah', '$2y$10$8Y2kttN2D8LgZ7DGV0rLN.R7ZdD1xYfbAARz6oCIrpDCN8zT02S.2', 0, '4404', 114270, '', '', '', NULL, NULL, NULL, NULL, NULL, 'Talha bin obaid ullah 786 Riyadh Saddah 456', '2024-12-04 12:28:02'),
(20, 'ROHIT999', 'ROHIT', 'CHAUHAN', 'ROHIT87954414-6d8c-4844-a9f0-ff6bb0e535f1.jpeg', '9909417855', 0, 0, 0, 0, 0, 'Savings', 'male', NULL, 'USD', 'active', 'Iamankitusa@gmail.com', '18402579447', 'BUSINESS ', '1999-09-16', 'DiRQqScmDd', '155314bafbb287-a687-4e58-8597-cad87c70438a.jpeg', '250230fcfa8249-e709-4da1-a927-dfbcda681aac.jpeg', 'United States of America', 'California ', '$2y$10$BG4B7d8c9RWEnBrVaE/7pO4TiAjSFBrY27nsmguKzwNvCmvd1p6uO', 0, '1271', 219301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '800 E WASHINGTON ST. 614  Colton California  92324', '2024-12-30 15:31:32'),
(21, 'Vizzyboy', 'Jagaban', 'Vizzy', '1737325182IMG_3296.jpeg', '9909347990', 1, 3400, 0, 2000, 2000, 'Savings', 'male', '', 'USD', 'active', 'secureapprove76@gmail.com', '808276666', 'Teacher', '1973-03-16', '1234', '527476IMG_3274.png', '123824IMG_3276.png', 'Canada', 'Delta ', '$2y$10$FdtOSyKJeEbmUP8vpimDnuDsOw1qikrWQ8E7./DEyVtXj0EtZcLDS', 0, '3339', 219818, '', '', '', NULL, NULL, NULL, NULL, NULL, '12c okporo 2344 Oleh Delta  17886', '2025-01-19 22:19:42'),
(22, 'Mr Richard Branson', 'Richard', 'Branson', '1737494875IMG_3328.jpeg', '9909137995', 0, 250000, 0, 0, 0, 'Savings', 'male', NULL, 'USD', 'active', 'richardbranson10011@gmail.com', '4476546775', 'Engineer ', '1968-10-13', '1111', '408603IMG_3329.jpeg', '670164IMG_3327.jpeg', 'United Kingdom', 'Leeds', '$2y$10$vAT5xx.zgSeASJG4FsVTHO.d.il9PL1oT.oEXHWA74W8nwz8h6VyS', 0, '7171', 235819, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'London Manchester City  12877c London City Manchester city Leeds 32336', '2025-01-21 21:27:55'),
(23, 'jesusrar11@outlook.com', 'Jesus ', 'Alfonso ', '1738621243IMG_4173.jpeg', '9909466387', 0, 34000, 0, 10000, 10000, 'Savings', 'male', '', 'USD', 'active', 'jesusrar11@outlook.com', '7868699208', 'Trabajo ', '1997-11-04', '709844165', '764282IMG_4173.jpeg', '247611IMG_4173.jpeg', 'United States of America', 'FL', '$2y$10$vsGMh8seIgDfRl9O7IYh0eLnYWmu3VBXo4uM78KRvIXHqWrQcDDtK', 659015, '2222', 713469, '', '', '', NULL, NULL, NULL, NULL, NULL, '21015 sw 124 Ave Rd 21015 Miami  FL 33177', '2025-02-03 22:20:43'),
(24, 'Aqeel Ahmed Khan', 'Muzammil Ahmed', ' Khan', '1740742141IMG_1753.jpeg', '9909293406', 0, 62500, 0, 100000, 100000, 'Savings', 'male', '', 'USD', 'active', 'muuzammil109@gmail.com', '966597544786', 'Business ', '1994-05-28', '12345678', '9674683477f902-0de4-4478-93f2-8ad69ae2d07c.jpeg', '2255514b249539-1186-4d5e-a465-f27e6acf7aa3.jpeg', 'Pakistan', 'Pakistan ', '$2y$10$eVgc8ih9O0vdjwFj8VDCR.97RAQA8mIlwTTy0CXUfCQz9ZlnKTrJq', 659015, '7091', 267520, '564433', '', '', NULL, NULL, NULL, NULL, NULL, 'Pakistan  Apt  Pakistan  Pakistan  10003', '2025-02-28 11:29:01'),
(25, 'gerina2 ', 'Anita', 'Tuscano ', '1741824392inbound2097865701813257963.jpg', '9909121860', 0, 10000, 0, 10000, 10000, 'Savings', 'female', '', 'USD', 'active', 'gerina2@yahoo.com', '09209049046', 'Government employee', '1966-11-02', '118701541', '265881inbound948841994109694229.jpg', '952678inbound5396770328882662883.jpg', 'Phillipines', 'Philippines ', '$2y$10$i9e63hNyMjSaMG0WggbHweSJL7HfWAtOyIEQ4enWNQuVQ/4XRKP3m', 659015, '3012', 262030, '75905', '', '5589', NULL, NULL, NULL, NULL, NULL, 'Macaria Homes Molino2 Bacoor, Cavite  B11L10 Banaba Street  Bacoor City, Province of Cavite Philippines  4102', '2025-03-13 00:06:32'),
(26, 'Hamza Alee', 'Hamza', 'Ali', 'HamzaIMG_3658.jpeg', '9909235615', 1, 3800, 0, 50000, 50000, 'Savings', 'male', '', 'USD', 'active', 'Jadoonxada6666@gmail.com', '61426491179', 'Student', '1996-01-01', '470421470', '874709IMG_1395.jpeg', '183171IMG_1396.jpeg', 'Australia', 'NSW', '$2y$10$TGDFFUPiz5SHYv5e8x8WkOJXi5Q/m4fFH8neF/Qu2eyABiaITQok6', 659015, '1047', 809212, '564433', '#96765', '27670', NULL, NULL, NULL, NULL, NULL, '14 Cornelia St 14 cornelia street wiley park Wiley Park NSW 2195', '2025-05-09 18:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `virtual`
--

CREATE TABLE `virtual` (
  `id` int(11) NOT NULL,
  `bank_name` text NOT NULL,
  `routine_no` text NOT NULL,
  `acct_no` text NOT NULL,
  `swift_code` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `virtual`
--

INSERT INTO `virtual` (`id`, `bank_name`, `routine_no`, `acct_no`, `swift_code`, `created_at`) VALUES
(1, 'Usa Bank', '637363636', '764229211', 'SFDHHS86X', '2021-10-08 11:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `wire_transfer`
--

CREATE TABLE `wire_transfer` (
  `wire_id` int(11) NOT NULL,
  `acct_id` int(11) NOT NULL,
  `refrence_id` text NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `bank_name` text DEFAULT NULL,
  `acct_name` text DEFAULT NULL,
  `acct_number` varchar(200) NOT NULL,
  `trans_type` varchar(50) NOT NULL DEFAULT 'wire transfer',
  `acct_type` varchar(50) NOT NULL,
  `acct_country` text DEFAULT NULL,
  `acct_swift` varchar(50) DEFAULT NULL,
  `acct_routing` varchar(50) NOT NULL,
  `acct_remarks` text DEFAULT NULL,
  `wire_status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `wire_transfer`
--

INSERT INTO `wire_transfer` (`wire_id`, `acct_id`, `refrence_id`, `amount`, `bank_name`, `acct_name`, `acct_number`, `trans_type`, `acct_type`, `acct_country`, `acct_swift`, `acct_routing`, `acct_remarks`, `wire_status`, `created_at`) VALUES
(2, 2, '642a73f83347a', 500, 'Standard chartered bank', 'Daniel Josh', '3245235234', 'wire transfer', 'Fixed Deposit', 'Belgium', '2345345', '23453245', 'Flight funds', 1, '2023-04-03 06:36:40'),
(3, 3, '64368b11b6d58', 250000, 'Woodforest', 'Wilson Peters', '0875847474', 'wire transfer', 'Current', 'United States of America', '37826', '465734678', 'Space machinery', 1, '2023-04-12 10:42:25'),
(4, 2, '65e5ee511c0c9', 5000, 'chase', 'boss baby', '12366474', 'wire transfer', 'Domicilary Account', 'Angola', '76575', '9853535', 'hhf', 0, '2024-03-04 16:52:49'),
(5, 2, '65eb3b0e12368', 300, 'chase bank', 'Boss Layfa', '35355366', 'wire transfer', 'Domicilary Account', 'Anguilla', '535353', '6366363', 'monruyy', 0, '2024-03-08 17:21:34'),
(6, 2, '66474b518a188', 2000, 'chase bank', 'Boss Layfa', '9088765423', 'wire transfer', 'Savings', 'Anguilla', '535353', '8906544455', 'for fund', 0, '2024-05-17 13:19:29'),
(7, 18, '672d659584390', 1, 'First Century Bank', 'Basma Saeed', '4027285954566', 'wire transfer', 'Checking', '', '', '', '', 3, '2024-11-08 01:12:53'),
(8, 18, '677d00fcbfe75', 10000, 'First Century Bank', 'Basma Sawed', '2147483647', 'wire transfer', 'Savings', 'Saudi Arabia', 'FCNSUS32', '467348', 'Business Funds', 0, '2025-01-07 00:00:00'),
(9, 21, '684b11f582a70', 1600, 'City boy bank ', 'First bank ', '9988656675', 'wire transfer', 'Savings', 'United Arab Erimates', 'FHGGFF', '987665554', 'Business funds ', 3, '2025-06-12 00:00:00'),
(10, 26, '68503deaa6cf4', 16771, 'Revolut Payments Australia Pty Ltd', 'Hamza Ali', '709379150', 'wire transfer', 'Savings', 'Australia', 'REVOAU32XXX', '772772', 'Business Funds', 1, '2025-06-16 00:00:00'),
(11, 26, '685155b5cb395', 16771, 'Revolut Payments Australia Pty Ltd', 'Hamza Ali', '709379150', 'wire transfer', 'Savings', 'Australia', 'REVOAU32', '57763', 'Business funds', 1, '2025-06-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `reference_id` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `withdraw_method` varchar(200) NOT NULL,
  `wallet_address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_request`
--
ALTER TABLE `card_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_currency`
--
ALTER TABLE `crypto_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `domestic_transfer`
--
ALTER TABLE `domestic_transfer`
  ADD PRIMARY KEY (`dom_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`wire_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtual`
--
ALTER TABLE `virtual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  ADD PRIMARY KEY (`wire_id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `card_request`
--
ALTER TABLE `card_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crypto_currency`
--
ALTER TABLE `crypto_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `domestic_transfer`
--
ALTER TABLE `domestic_transfer`
  MODIFY `dom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `wire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `virtual`
--
ALTER TABLE `virtual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  MODIFY `wire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
