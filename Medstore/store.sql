-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2020 at 11:30 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `details` varchar(333) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(1, 'Capsule', 'cap.png', 'these are capsules whisd some k dsfksd', '2017-11-03 04:58:57'),
(2, 'Tablets', 'tablet.png', 'some of the pic to be modii dfs tablet', '2017-11-03 04:58:57'),
(3, 'Syrup', 'syrup.png', 'these are capsules whisd some k dsfksd', '2017-11-03 04:59:24'),
(4, 'Cream', 'cream.png', 'some of the pic to be modii dfs tablet', '2017-11-03 04:59:24'),
(5, 'Lotion', 'lotion.png', 'these are capsules whisd some k dsfksd', '2017-11-03 04:59:59'),
(6, 'Syrunj', 'syrunj.png', 'some of the pic to be modii dfs tablet', '2017-11-03 04:59:59'),
(7, 'Injection', 'injection.jpg', 'these are capsules whisd some k dsfksd', '2017-11-03 05:00:19'),
(8, 'Other', 'fk.jpg', 'some of the pic to be modii dfs tablet', '2017-11-03 05:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `pic` text NOT NULL,
  `description` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `pic`, `description`, `company`, `date`) VALUES
(5, 2, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', 'fasdf', '2017-11-03 06:10:37'),
(6, 2, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', 'sdfas', '2017-11-03 06:10:40'),
(7, 2, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:10:43'),
(9, 2, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:10:48'),
(10, 3, 'Arif Khan', 'Disprin', '6mg', '6', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:11:36'),
(11, 3, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:11:43'),
(12, 4, 'Arif Khan', 'Disprin', '6mg', '8', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:11:50'),
(13, 4, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:11:53'),
(14, 4, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:11:56'),
(15, 5, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:12:03'),
(16, 6, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:12:09'),
(17, 6, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:12:14'),
(18, 6, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:12:17'),
(19, 6, 'Arif Khan', 'Disprin', '6mg', '7', 'fk.jpg', 'these are 2mg disprin for the cure of some thing extera', '0', '2017-11-03 06:12:21'),
(20, 1, 'Asif Khan', 'Panadol', '100mg', '12', '', 'there is no askdfas dfsakdfkas', 'atalfa', '2017-11-17 16:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'Medical Stores', 'Medical Stores');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(2, 'khan Shoaib', '03445584686', '10', '2', '3', 1, '2017-11-17 15:44:15'),
(3, 'sdfgsd', 'dsfgsdf', '10', '3', '25', 1, '2017-11-17 16:47:22'),
(4, 'Younis', '03451212345', '21', '4', '35', 1, '2017-11-19 08:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pic` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `cnic` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(1, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:49'),
(2, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:53'),
(3, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:56'),
(4, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:59'),
(5, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'admin@gmail.com', 'admin', 'FK', 'fk.jpg', '03356910260', '2017-11-02 12:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
