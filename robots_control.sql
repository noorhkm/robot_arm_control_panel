-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 يونيو 2021 الساعة 19:36
-- إصدار الخادم: 8.0.23
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robots_control`
--

-- --------------------------------------------------------

--
-- بنية الجدول `arm_control`
--

CREATE TABLE `arm_control` (
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `base` int NOT NULL,
  `shoulder` int NOT NULL,
  `elbow` int NOT NULL,
  `wrist` int NOT NULL,
  `gripper` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- إرجاع أو استيراد بيانات الجدول `arm_control`
--

INSERT INTO `arm_control` (`last_updated`, `base`, `shoulder`, `elbow`, `wrist`, `gripper`) VALUES
('2021-06-23 01:08:33', 84, 102, 102, 104, 96),
('2021-06-23 01:08:53', 84, 102, 102, 104, 96),
('2021-06-23 01:08:58', 84, 102, 40, 24, 23),
('2021-06-23 02:08:00', 26, 48, 128, 43, 51),
('2021-06-23 02:38:10', 90, 90, 90, 90, 90),
('2021-06-23 02:56:31', 161, 90, 90, 90, 90),
('2021-06-23 02:57:07', 40, 25, 145, 57, 41),
('2021-06-23 04:20:07', 89, 132, 54, 140, 71),
('2021-06-23 04:20:34', 43, 108, 143, 94, 152);

-- --------------------------------------------------------

--
-- بنية الجدول `arm_play_status`
--

CREATE TABLE `arm_play_status` (
  `id` int NOT NULL,
  `play` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- إرجاع أو استيراد بيانات الجدول `arm_play_status`
--

INSERT INTO `arm_play_status` (`id`, `play`) VALUES
(1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arm_control`
--
ALTER TABLE `arm_control`
  ADD UNIQUE KEY `id` (`last_updated`) USING BTREE;

--
-- Indexes for table `arm_play_status`
--
ALTER TABLE `arm_play_status`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
