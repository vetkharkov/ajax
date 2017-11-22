-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2017 at 12:03 AM
-- Server version: 5.7.13
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `pos` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `pos`, `is_active`, `parent_id`) VALUES
(1, 'Материнские платы', 1, 1, 0),
(2, 'Жесткие диски', 2, 1, 0),
(3, 'Видеокарты', 3, 1, 0),
(4, 'Процессоры', 4, 1, 0),
(5, 'ASUS', 1, 1, 1),
(6, 'Biostar', 2, 1, 1),
(7, 'Foxconn', 3, 1, 1),
(8, 'GIGABYTE', 4, 1, 1),
(9, 'Intel', 5, 1, 1),
(10, 'MSI', 6, 1, 1),
(11, 'Supermicro', 7, 1, 1),
(12, 'Hitachi', 1, 1, 2),
(13, 'Samsung', 2, 1, 2),
(14, 'Seagate', 3, 1, 2),
(15, 'Western Digital', 4, 1, 2),
(16, 'ASUS', 1, 1, 3),
(17, 'GIGABYTE', 2, 1, 3),
(18, 'MSI', 3, 1, 3),
(19, 'Sapphire', 4, 1, 3),
(20, 'AMD', 1, 1, 4),
(21, 'Intel', 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `nickname` tinytext NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `nickname`, `content`, `created_at`, `is_visible`) VALUES
(5, 'vet', 'test-1', '2017-11-21 00:18:16', 1),
(7, 'vet', 'test-2', '2017-11-21 00:18:21', 1),
(13, 'vet', 'test-3', '2017-11-21 00:18:29', 1),
(21, '<h1>VET', 'privet', '2017-11-21 00:30:36', 1),
(22, 'rew', 'werwer', '2017-11-21 23:54:18', 1),
(31, 'gdfg', 'ddddddddddddd', '2017-11-22 00:05:47', 1),
(32, 'ffffffffff', 'ffffffffffffffffffff', '2017-11-22 00:05:52', 1),
(33, '<b>vbvvb</b>', '<b>vbvvb</b><b>vbvvb</b><b>vbvvb</b>', '2017-11-22 00:06:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `pass` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `first_name` tinytext NOT NULL,
  `last_name` tinytext NOT NULL,
  `created_at` datetime NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `email`, `first_name`, `last_name`, `created_at`, `is_block`) VALUES
(1, 'Alina', 'pass', 'alina@gmail.com', 'Alina', 'aaa', '2016-01-04 19:22:41', 0),
(2, 'Andrey', '222', 'andrey@gmail.com', 'Игорь', 'ddd', '2016-01-04 19:40:01', 0),
(3, 'vet', '1111', 'bvpkharkov@gmail.com', 'Виталий', 'Б', '2017-11-21 03:21:23', 0),
(79, 'xxx', 'hhh', 'admin@admin.com', 'z', 'x', '2017-11-21 04:35:01', 0),
(88, 'zzz', 'hhh', 'bvpkharkov@gmail.com', 'z', 'x', '2017-11-22 12:05:35', 0),
(89, 'zzz', 'hhh', 'admin@admin.comc', 'z', 'x', '2017-11-22 12:40:13', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
