-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 06:45 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esewa`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `product_id`, `total`, `status`, `created_at`, `updated_at`) VALUES
(51, '31678624850', 3, 800, 0, '2023-03-12 07:55:50', NULL),
(52, '11678625870', 1, 1800, 0, '2023-03-12 08:12:50', NULL),
(53, '31678698265', 3, 800, 0, '2023-03-13 04:19:25', NULL),
(54, '21678981780', 2, 2800, 0, '2023-03-16 11:04:40', NULL),
(55, '31678981809', 3, 800, 0, '2023-03-16 11:05:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `amount`) VALUES
(1, 'Leather Bag', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor justo sed leo tempus laoreet. Donec a metus sed leo tincidunt tempus ut et augue.', 'bag.jpg', 1800),
(2, 'Boys Shoes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor justo sed leo tempus laoreet. Donec a metus sed leo tincidunt tempus ut et augue.', 'shoes.jpg', 2800),
(3, 'Boys Slipper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor justo sed leo tempus laoreet. Donec a metus sed leo tincidunt tempus ut et augue. ', 'slipper.jpg', 800),
(4, 'Belt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor justo sed leo tempus laoreet. Donec a metus sed leo tincidunt tempus ut et augue.', 'belt.jpg', 600),
(5, 'T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor justo sed leo tempus laoreet. Donec a metus sed leo tincidunt tempus ut et augue.', 'tshirt.jpg', 1200),
(6, 'Leather Shoe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor justo sed leo tempus laoreet. Donec a metus sed leo tincidunt tempus ut et augue.', 'lshoe.jpg', 3800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
