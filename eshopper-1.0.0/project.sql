-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 08:23 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(3, 'Jewellry sd'),
(5, 'jewellry'),
(10, 'cosmeticdfsdf'),
(11, 'Jewellry'),
(12, 'jewellryss'),
(13, 'cosmetic'),
(14, 'cosmetic');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(222) NOT NULL,
  `subject` varchar(222) NOT NULL,
  `message` varchar(222) NOT NULL,
  `is_viewed` int(222) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `is_viewed`) VALUES
(4, 'Student1436892', 'humairabb.2004@gmail.com', 'Hall', 'ghhfgh', 0),
(5, 'Student1436892', 'humairabb.2004@gmail.com', 'Hall', 'ghhfgh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'humairabb.2004@gmail.com', 123);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `pro-id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `quantity` varchar(225) NOT NULL,
  `view_order` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_id` varchar(11) NOT NULL,
  `pro_name` varchar(222) NOT NULL,
  `pro_price` int(22) NOT NULL,
  `pro_des` varchar(222) NOT NULL,
  `pro_images` varchar(225) NOT NULL,
  `pro_ratting` varchar(233) NOT NULL,
  `pro_dis` varchar(233) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `pro_name`, `pro_price`, `pro_des`, `pro_images`, `pro_ratting`, `pro_dis`) VALUES
(9, '5', 'Student1436892', 34234, 'wer', 'j.jpg', '3.9', 'ytutyu'),
(10, '3', 'Student1436892', 2342, 'sdf', 'j1.jpg', '4.5', 'ytutyu'),
(11, '10', 'Student1436892', 0, 'sdf', 'j5.webp', 'sdf', 'ytutyu'),
(12, '5', 'Test', 1111, '12323', 'stylish-feminine-accessories-bags-cosmetics-jewellery-gifts-decorative-items-golden-colors-white-background-beauty-142217423.webp', '322343', '234234234'),
(13, '5', 'Student1436892', 0, 'sdf', 'j3.png', '4.5', 'ytutyu'),
(14, '10', 'Student1436892', 0, 'sdf', 'j4.jpg', '4.5', 'ytutyu');

-- --------------------------------------------------------

--
-- Table structure for table `temp_products`
--

CREATE TABLE `temp_products` (
  `id` int(11) NOT NULL,
  `session_id` text DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `add_date` text DEFAULT NULL,
  `enabled` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `temp_products`
--

INSERT INTO `temp_products` (`id`, `session_id`, `product_id`, `product_quantity`, `product_price`, `add_date`, `enabled`) VALUES
(4, '9rs2vq0hlqcdbkd6i40hcaqbcm', 9, 1, 34234, '2023-12-02', 1),
(5, '9rs2vq0hlqcdbkd6i40hcaqbcm', 10, 3, 2342, '2023-12-02', 1),
(6, '9rs2vq0hlqcdbkd6i40hcaqbcm', 11, 4, 0, '2023-12-02', 1),
(7, 'tmbttj14uu54h92cjthokpfqsr', 11, 2, 0, '2023-12-03', 1),
(8, 'aa673311ak5rqdg095omgkddd1', 9, 2, 34234, '2023-12-04', 1),
(9, 'aa673311ak5rqdg095omgkddd1', 11, 3, 0, '2023-12-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(222) NOT NULL,
  `phone` int(22) NOT NULL,
  `cell` int(30) NOT NULL,
  `dob` int(22) NOT NULL,
  `category` varchar(233) NOT NULL,
  `remarks` varchar(233) NOT NULL,
  `email` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `name`, `address`, `phone`, `cell`, `dob`, `category`, `remarks`, `email`) VALUES
(16, 'Student1436892', 'karachi', 304569871, 788456789, 8, '1', 'ertertfgdg', 'humairabb.2004@gmail.com'),
(21, 'Student1436892', 'karachi', 1222323210, 4754545, 8, '1', 'ertert', 'mubbarah@gmail.com'),
(22, 'Student1436892', '12', 1222323210, 5, 0, '', 'ertert', 'humairabb.2004@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_products`
--
ALTER TABLE `temp_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `temp_products`
--
ALTER TABLE `temp_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
