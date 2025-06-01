-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 01, 2025 at 11:24 PM
-- Server version: 5.7.43-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `er_triton38492`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbldmg_share_logs`
--

CREATE TABLE `tbldmg_share_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `share_to` varchar(30) DEFAULT NULL,
  `customer` longtext,
  `staff` longtext,
  `customer_group` longtext,
  `expiration` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `permission` varchar(30) NOT NULL DEFAULT 'preview'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldmg_share_logs`
--

INSERT INTO `tbldmg_share_logs` (`id`, `item_id`, `share_to`, `customer`, `staff`, `customer_group`, `expiration`, `expiration_date`, `permission`) VALUES
(1, 8, 'staff', NULL, '11,12', NULL, 0, NULL, 'viewer'),
(2, 12, 'staff', NULL, '1', NULL, 0, NULL, 'preview'),
(3, 14, 'staff', NULL, '11', NULL, 0, NULL, 'preview'),
(4, 14, 'staff', NULL, '16,6,4', NULL, 0, NULL, 'preview'),
(5, 17, 'staff', NULL, '12', NULL, 0, NULL, 'preview');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldmg_share_logs`
--
ALTER TABLE `tbldmg_share_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbldmg_share_logs`
--
ALTER TABLE `tbldmg_share_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
