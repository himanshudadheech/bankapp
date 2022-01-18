-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2022 at 04:02 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17166590_apphost`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankuser`
--

CREATE TABLE `bankuser` (
  `id` int(32) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` int(255) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ifc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bankuser`
--

INSERT INTO `bankuser` (`id`, `name`, `email`, `balance`, `password`, `ifc`, `status`) VALUES
(101, 'himanshu ', 'himanshu@gmail.com', 8175, '1', 'hpay0123456', 'verified'),
(102, 'vipul ', 'vipul@gmail.com', 964, '1', 'hpay0123456', 'verified'),
(103, 'saurabh ', 'saurabh@gmail.com', 3022, '', '', ''),
(104, 'bhavesh ', 'bhavesh@gmail.com', 3500, '', '', ''),
(105, 'sanyam ', 'sanyam@gmail.com', 2000, '', '', ''),
(106, 'kamal ', 'kamal@gmail.com', 0, '', '', ''),
(107, 'rajesh ', 'rajesh@gmail.com', 2500, '', '', ''),
(108, 'raju ', 'raju@gmail.com', 2100, '', '', ''),
(109, 'amit ', 'amit@gmail.com', 800, '', '', ''),
(110, 'hitesh ', 'hitesh@gmail.com', 1000, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackBus`
--

CREATE TABLE `feedbackBus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rollno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbackcategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbackBus`
--

INSERT INTO `feedbackBus` (`id`, `fullname`, `rollno`, `branch`, `year`, `phone`, `email`, `complian`, `feedbackcategory`, `t`) VALUES
(2, 'a', 'a', 'Computer Science Engineering', '1', '+917742041082', 'bus@gmail.com', 'hello bus', 'Bus', '2021-08-16 12:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackcanteen`
--

CREATE TABLE `feedbackcanteen` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rollno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbackcategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbackcanteen`
--

INSERT INTO `feedbackcanteen` (`id`, `fullname`, `rollno`, `branch`, `year`, `phone`, `email`, `complian`, `feedbackcategory`, `t`) VALUES
(2, 'a', 'a', 'Computer Science Engineering', '1', '+917742041082', 'canteen@gmail.com', 'hello canteen', 'Canteen', '2021-08-16 12:21:39'),
(3, 'Saurabh Sisodiya', '19etccs061', 'Computer Science Engineering', '4', '93565247582', 'ssisodiya.2001@gmail.com', 'food facility is good', 'Canteen', '2021-08-16 12:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackfaculty`
--

CREATE TABLE `feedbackfaculty` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rollno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbackcategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbackfaculty`
--

INSERT INTO `feedbackfaculty` (`id`, `fullname`, `rollno`, `branch`, `year`, `phone`, `email`, `complian`, `feedbackcategory`, `t`) VALUES
(2, 'himanshu dadheech', '19etccs', 'Computer Science', '3', '+917742041082', 'HimanshuDadheech74@gmail.com', 'hello faculty', '', '2021-08-16 12:18:55'),
(11, 'saurabh', '1973622182', 'Computer Science Engineering', '2', '8913862858', 'ssisodiya.2001@gmail.com', 'hi', 'Faculty', '2021-08-16 12:27:29'),
(15, 'Saurabh', '19etccs061@technonjr.org', 'Computer Science Engineering', '3', '+91-9352510013', '19etccs061@technonjr.org', 'faculty is good', 'Faculty', '2021-08-26 07:47:04'),
(16, 'jsj', 'nans', 'Civil Engineering', '1', '+91-7742041082', '19etccs061@technonjr.org', '1', 'Faculty', '2021-08-28 06:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `feedbackother`
--

CREATE TABLE `feedbackother` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rollno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feedbackcategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbackother`
--

INSERT INTO `feedbackother` (`id`, `fullname`, `rollno`, `branch`, `year`, `phone`, `email`, `complian`, `feedbackcategory`, `t`) VALUES
(1, 'himanshu', '19etccs', 'Electronics And Communication Engineering', '1', '+91-7742041082', '19etccs061@technonjr.org', 'good other issue', 'Other Issues', '2021-08-26 04:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `itemupload`
--

CREATE TABLE `itemupload` (
  `item_id` int(11) NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `itemupload`
--

INSERT INTO `itemupload` (`item_id`, `image_path`, `item_name`, `item_price`, `item_desc`) VALUES
(2, 'https://himanshu000.000webhostapp.com/FoodUploadImage/0.png', 'TV', '700$', 'Smart TV ');

-- --------------------------------------------------------

--
-- Table structure for table `post_table`
--

CREATE TABLE `post_table` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `author` text NOT NULL,
  `post_date` text NOT NULL,
  `comments` text NOT NULL,
  `total_like` text NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `category_name` text NOT NULL,
  `create_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rollno` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `branch` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `rollno`, `branch`, `year`, `phone`, `email`, `password`, `datetime`) VALUES
(1, 'himanshu dadheech', '19etccs026', 'Computer Science', '3', '+917742041082', '	19etccs026@technonjr.org', 'test', '2021-07-02 10:35:49'),
(2, 'vipul', '19etccs080', 'Computer Science', '3', '97946797664', '	19etccs080@technonjr.org', 'test', '2021-07-02 10:35:49'),
(3, 'saurabh', '19etccs061', 'Computer Science', '3', '94643494649', '	19etccs061@technonjr.org', 'test', '2021-07-02 10:35:49'),
(4, 'himanshu dadheech', '19etccs026', 'Select Branch', 'Select Year', '+917742041082', '	19etccs026@technonjr.org', 'test', '2021-07-02 10:35:49'),
(5, 'admin', '92', 'Civil', '4', '7742041082', '	himanshudadheech92@gmail.com', 'hello', '2021-07-02 10:41:33'),
(6, '', '', '', '', '', '	', '', '2021-07-02 11:50:02'),
(7, '', '', '', '', '', '	', '', '2021-07-02 11:56:55'),
(8, 'hero', '1', 'Mechanical', '1', '7742041082', '	hero@gmail.com', '', '2021-07-02 12:03:10'),
(9, 'hero1', '2', 'Mechanical', '4', '+917742041082', '	hero1@gmail.com', '12', '2021-07-02 12:05:28'),
(10, 'r', '7', 'Mechanical', '4', '646494494694', '	r@gmail.com', '12', '2021-07-02 12:21:27'),
(11, 't', '9', 'Electrical Electronics', '4', '976446497664', '	t@gmail.com', '12', '2021-07-02 12:36:50'),
(12, 'hello', '1', 'Mechanical', '4', '9764916491919', '	hello@gmail.com', '1w', '2021-07-05 06:49:43'),
(13, 'himanshu dadheech', '1', 'Select Branch', 'Select Year', '679449', '	h@gmail.com', '1', '2021-07-05 06:52:17'),
(14, '', '', '', '', '', '', '$2y$10$3rxCmp5L2Hvm5pWGP6s5vugrCvm7/WMq7W1Kv1EYeVhGiBCWMUSPG', '2021-07-05 07:01:18'),
(16, 'test', 'test', 'Mechanical', '4', '99764946694', 'test@gmail.com', '$2y$10$WCttwrPXqzTnH7fW2YusF..DI.4uVmRKukW01OfrjgSYDkst3HmMK', '2021-07-05 07:10:31'),
(17, 'himanshu dadheech', 'HimanshuDadheech74@gmail.com', 'Mechanical', '3', '+917742041082', 'HimanshuDadheech74@gmail.com', '$2y$10$O0yCgA2vUqRCqasAKqYpSena9cOMD7gkKp8GMUjTSl7oUAlZBrMRq', '2021-07-05 07:16:03'),
(18, 'him', 'test', 'Mechanical', '3', '7742041082', 'helloo', '$2y$10$X/8RuGpb8oSecFezTxNZ2OgjgL7KKOtNXvxplB9jjiUxUza8exQTi', '2021-07-05 07:16:50'),
(19, 'hi', 'hi', 'Select Branch', 'Select Year', '64664461964', 'hello@gmail.com', '$2y$10$dH1GYXoreksr7FEBUzwwhOclbMoyw3qwQspMlxn8RdgDIeq9FKv62', '2021-07-05 07:35:43'),
(20, 'vp', 'HimanshuDadheech74@gmail.com', 'Computer Science', '4', '+917742041082', 'vp', '$2y$10$GiLsSerqaYGmdSK5EEMdqe3VcUheXvVXpMPz.sv3PW0eeH9J/Wgee', '2021-07-05 08:00:17'),
(21, 'tp', 'tp', 'Mechanical', '4', '776496644469', 'tp@gmail.com', '$2y$10$g2kdXY4OZiHnCq0QExBvZOCoXUXBpMrv5l3Z33L/R4fYvUcLAzy3i', '2021-07-05 08:04:40'),
(22, 'to', 'to', 'Mechanical', '4', '66464944949', 'hello', '$2y$10$UswHt3AeTKmV5Obs4oRZmOLbXyJyqSUpLXlSsOGOA0W0UaAye1Vva', '2021-07-05 08:05:11'),
(23, 'ta', 'ta', 'Civil', '4', '+917742041082', 'ta@gmail.com', '$2y$10$1PGB7R8gHpp9idkjL11hWeMG/gRiHeL9sxVhVSjVeUsbQ2qJnUHk6', '2021-07-05 08:06:42'),
(24, 'j', 'j', 'Electrical Electronics', '4', '+917742041082', 'j', '$2y$10$xMcIZXNqIdR45sAfJmkXZun9XDX/SLyakJy8Xubu51SxCwVwUTtTq', '2021-07-05 08:16:12'),
(25, 'k', 'k', 'Electrical Electronics', '4', '+917742041082', 'k', '$2y$10$7rJiNxP/u8LlWJBIBPzuVeaTGM.FQDvP604kK.yCLED46Qi6mD3Jy', '2021-07-05 08:17:09'),
(26, 'l', 'l', 'Electrical Electronics', '4', '+917742041082', 'l', '$2y$10$IxF4srZXxQNqrlUWjK1maeoGl5GtOeGZIWmY9NiY8XCfPlcoWqnyW', '2021-07-05 08:18:06'),
(27, 'z', 'z', 'Civil', '4', '+917742041082', 'z', '$2y$10$8.c.ArX7xa0LN8Bif.X5Qe6s.zuH4ji.b9.o4XZ3XWTU76ItXECGW', '2021-07-05 08:18:45'),
(28, 'Akshat Bordia', '14ETCIT300', 'Computer Science', '4', '8109923234', 'akshat.bordia@technonjr.org', '$2y$10$sAJsHYz5pX/KPUrm2VmMgO5FvBshlQwbPxKq2tD96161NPTYq7guG', '2021-07-28 09:08:31'),
(29, 'vipul', '80', 'Computer Science', '3', '9660123398', 'vipultamboli2000@gmail.com', '$2y$10$iCwaCEimZ.A8n7hatFPcWeF8Q4qH0CfJGASbs8x.j2UOwt061hPNO', '2021-08-15 06:30:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankuser`
--
ALTER TABLE `bankuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbackBus`
--
ALTER TABLE `feedbackBus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbackcanteen`
--
ALTER TABLE `feedbackcanteen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbackfaculty`
--
ALTER TABLE `feedbackfaculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbackother`
--
ALTER TABLE `feedbackother`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemupload`
--
ALTER TABLE `itemupload`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbackBus`
--
ALTER TABLE `feedbackBus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedbackcanteen`
--
ALTER TABLE `feedbackcanteen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedbackfaculty`
--
ALTER TABLE `feedbackfaculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `feedbackother`
--
ALTER TABLE `feedbackother`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itemupload`
--
ALTER TABLE `itemupload`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
