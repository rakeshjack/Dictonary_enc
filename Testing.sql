-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2018 at 02:04 PM
-- Server version: 5.7.22-0ubuntu0.17.10.1
-- PHP Version: 7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `dictoniary_result`
--

CREATE TABLE `dictoniary_result` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oxfords`
--

CREATE TABLE `oxfords` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oxfords`
--

INSERT INTO `oxfords` (`id`, `parent_id`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'abc', 'SUCCESS', '2018-07-17 07:25:58', '2018-07-17 12:55:58'),
(2, 13, 'abcd', 'SUCCESS', '2018-07-17 07:25:59', '2018-07-17 12:55:59'),
(3, 13, 'abcd1', 'SUCCESS', '2018-07-17 07:26:00', '2018-07-17 12:56:00'),
(4, 13, 'abcd12', 'SUCCESS', '2018-07-17 07:26:01', '2018-07-17 12:56:01'),
(5, 13, 'abcd123', 'SUCCESS', '2018-07-17 07:26:02', '2018-07-17 12:56:02'),
(6, 13, 'abcd1234', 'SUCCESS', '2018-07-17 07:26:03', '2018-07-17 12:56:03'),
(7, 13, 'abcd1234', 'SUCCESS', '2018-07-17 07:26:04', '2018-07-17 12:56:04'),
(8, 13, 'abcd1234', 'SUCCESS', '2018-07-17 07:26:05', '2018-07-17 12:56:05'),
(9, 13, 'abcd1234', 'SUCCESS', '2018-07-17 07:26:06', '2018-07-17 12:56:06'),
(10, 13, 'bcd', 'SUCCESS', '2018-07-17 07:26:08', '2018-07-17 12:56:08'),
(11, 13, 'bcd1', 'SUCCESS', '2018-07-17 07:26:09', '2018-07-17 12:56:09'),
(12, 13, 'bcd12', 'SUCCESS', '2018-07-17 07:26:10', '2018-07-17 12:56:10'),
(13, 13, 'bcd123', 'SUCCESS', '2018-07-17 07:26:11', '2018-07-17 12:56:11'),
(14, 13, 'bcd1234', 'SUCCESS', '2018-07-17 07:26:12', '2018-07-17 12:56:12'),
(15, 13, 'bcd1234', 'SUCCESS', '2018-07-17 07:26:13', '2018-07-17 12:56:13'),
(16, 13, 'bcd1234', 'SUCCESS', '2018-07-17 07:26:14', '2018-07-17 12:56:14'),
(17, 13, 'bcd1234', 'SUCCESS', '2018-07-17 07:26:15', '2018-07-17 12:56:15'),
(18, 13, 'cd1', 'SUCCESS', '2018-07-17 07:26:16', '2018-07-17 12:56:16'),
(19, 13, 'cd12', 'SUCCESS', '2018-07-17 07:26:17', '2018-07-17 12:56:17'),
(20, 13, 'cd123', 'SUCCESS', '2018-07-17 07:26:18', '2018-07-17 12:56:18'),
(21, 13, 'cd1234', 'SUCCESS', '2018-07-17 07:26:19', '2018-07-17 12:56:19'),
(22, 13, 'cd1234', 'SUCCESS', '2018-07-17 07:26:20', '2018-07-17 12:56:20'),
(23, 13, 'cd1234', 'SUCCESS', '2018-07-17 07:26:21', '2018-07-17 12:56:21'),
(24, 13, 'cd1234', 'SUCCESS', '2018-07-17 07:26:23', '2018-07-17 12:56:23'),
(25, 13, 'cd1234', 'SUCCESS', '2018-07-17 07:26:24', '2018-07-17 12:56:24'),
(26, 13, 'd12', 'SUCCESS', '2018-07-17 07:26:25', '2018-07-17 12:56:25'),
(27, 13, 'd123', 'SUCCESS', '2018-07-17 07:26:26', '2018-07-17 12:56:26'),
(28, 13, 'd1234', 'SUCCESS', '2018-07-17 07:26:27', '2018-07-17 12:56:27'),
(29, 13, 'd1234', 'SUCCESS', '2018-07-17 07:26:28', '2018-07-17 12:56:28'),
(30, 13, 'd1234', 'SUCCESS', '2018-07-17 07:26:29', '2018-07-17 12:56:29'),
(31, 13, 'd1234', 'SUCCESS', '2018-07-17 07:26:30', '2018-07-17 12:56:30'),
(32, 13, 'd1234', 'SUCCESS', '2018-07-17 07:26:31', '2018-07-17 12:56:31'),
(33, 13, 'd1234', 'SUCCESS', '2018-07-17 07:26:32', '2018-07-17 12:56:32'),
(34, 13, '123', 'SUCCESS', '2018-07-17 07:26:33', '2018-07-17 12:56:33'),
(35, 13, '1234', 'SUCCESS', '2018-07-17 07:26:34', '2018-07-17 12:56:34'),
(36, 13, '1234', 'SUCCESS', '2018-07-17 07:26:35', '2018-07-17 12:56:35'),
(37, 13, '1234', 'SUCCESS', '2018-07-17 07:26:36', '2018-07-17 12:56:36'),
(38, 13, '1234', 'SUCCESS', '2018-07-17 07:26:37', '2018-07-17 12:56:37'),
(39, 13, '1234', 'SUCCESS', '2018-07-17 07:26:38', '2018-07-17 12:56:38'),
(40, 13, '1234', 'SUCCESS', '2018-07-17 07:26:39', '2018-07-17 12:56:39'),
(41, 13, '1234', 'SUCCESS', '2018-07-17 07:26:40', '2018-07-17 12:56:40'),
(42, 13, '234', 'SUCCESS', '2018-07-17 07:26:41', '2018-07-17 12:56:41'),
(43, 13, '234', 'SUCCESS', '2018-07-17 07:26:42', '2018-07-17 12:56:42'),
(44, 13, '234', 'SUCCESS', '2018-07-17 07:26:43', '2018-07-17 12:56:43'),
(45, 13, '234', 'SUCCESS', '2018-07-17 07:26:44', '2018-07-17 12:56:44'),
(46, 13, '234', 'SUCCESS', '2018-07-17 07:26:45', '2018-07-17 12:56:45'),
(47, 13, '234', 'SUCCESS', '2018-07-17 07:26:46', '2018-07-17 12:56:46'),
(48, 13, '234', 'SUCCESS', '2018-07-17 07:26:47', '2018-07-17 12:56:47'),
(49, 13, '234', 'SUCCESS', '2018-07-17 07:26:48', '2018-07-17 12:56:48'),
(50, 13, '34', 'SUCCESS', '2018-07-17 07:26:49', '2018-07-17 12:56:49'),
(51, 13, '34', 'SUCCESS', '2018-07-17 07:26:50', '2018-07-17 12:56:50'),
(52, 13, '34', 'SUCCESS', '2018-07-17 07:26:51', '2018-07-17 12:56:51'),
(53, 13, '34', 'SUCCESS', '2018-07-17 07:26:52', '2018-07-17 12:56:52'),
(54, 13, '34', 'SUCCESS', '2018-07-17 07:26:53', '2018-07-17 12:56:53'),
(55, 13, '34', 'SUCCESS', '2018-07-17 07:26:54', '2018-07-17 12:56:54'),
(56, 13, '34', 'SUCCESS', '2018-07-17 07:26:55', '2018-07-17 12:56:55'),
(57, 13, '34', 'SUCCESS', '2018-07-17 07:26:56', '2018-07-17 12:56:56'),
(58, 13, '4', 'SUCCESS', '2018-07-17 07:26:57', '2018-07-17 12:56:57'),
(59, 13, '4', 'SUCCESS', '2018-07-17 07:26:58', '2018-07-17 12:56:58'),
(60, 13, '4', 'SUCCESS', '2018-07-17 07:26:59', '2018-07-17 12:56:59'),
(61, 13, '4', 'SUCCESS', '2018-07-17 07:27:00', '2018-07-17 12:57:00'),
(62, 13, '4', 'SUCCESS', '2018-07-17 07:27:01', '2018-07-17 12:57:01'),
(63, 13, '4', 'SUCCESS', '2018-07-17 07:27:02', '2018-07-17 12:57:02'),
(64, 13, '4', 'SUCCESS', '2018-07-17 07:27:03', '2018-07-17 12:57:03'),
(65, 13, '4', 'SUCCESS', '2018-07-17 07:27:04', '2018-07-17 12:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `salary`, `created_at`, `updated_at`) VALUES
(1, 300, '2018-06-29 00:00:00', '2018-06-29 10:20:44'),
(2, 400, '2018-06-29 00:00:00', '2018-06-29 10:20:44'),
(3, 600, '2018-06-29 00:00:00', '2018-06-29 10:20:55'),
(4, 200, '2018-06-29 00:00:00', '2018-06-29 10:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_type`) VALUES
(1, 'Rakesh', 'abcd1234', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dictoniary_result`
--
ALTER TABLE `dictoniary_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oxfords`
--
ALTER TABLE `oxfords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dictoniary_result`
--
ALTER TABLE `dictoniary_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oxfords`
--
ALTER TABLE `oxfords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
