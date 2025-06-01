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
-- Table structure for table `tbldmg_audit_logs`
--

CREATE TABLE `tbldmg_audit_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(300) DEFAULT NULL,
  `action` varchar(300) NOT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldmg_audit_logs`
--

INSERT INTO `tbldmg_audit_logs` (`id`, `date`, `user_id`, `user_name`, `action`, `item_id`) VALUES
(1, '2025-05-06 10:45:45', 11, 'HSE TRITON KENCANA TIRTA', 'Added file', 5),
(2, '2025-05-06 12:37:07', 1, 'Andhy Reeza', 'Added file', 11),
(3, '2025-05-06 12:37:35', 1, 'Andhy Reeza', 'Added file', 12),
(4, '2025-05-06 12:46:09', 1, 'Andhy Reeza', 'Moved file from Reza to Reza', 11),
(5, '2025-05-06 12:46:09', 1, 'Andhy Reeza', 'Moved file from Reza to Reza', 12),
(6, '2025-05-06 12:48:06', 1, 'Andhy Reeza', 'Added file', 14),
(7, '2025-05-06 12:48:52', 1, 'Andhy Reeza', 'Updated file', 14),
(8, '2025-05-06 12:50:05', 1, 'Andhy Reeza', 'Updated file', 14),
(9, '2025-05-06 12:50:55', 1, 'Andhy Reeza', 'Added file', 15),
(10, '2025-05-06 12:51:10', 1, 'Andhy Reeza', 'Updated file', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldmg_audit_logs`
--
ALTER TABLE `tbldmg_audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbldmg_audit_logs`
--
ALTER TABLE `tbldmg_audit_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
