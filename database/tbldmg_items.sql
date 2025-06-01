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
-- Table structure for table `tbldmg_items`
--

CREATE TABLE `tbldmg_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `dateadded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approve` int(11) NOT NULL DEFAULT '0',
  `version` varchar(50) DEFAULT NULL,
  `filetype` varchar(40) NOT NULL DEFAULT 'folder',
  `parent_id` int(11) DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `signed_by` longtext,
  `tag` longtext,
  `note` longtext,
  `master_id` int(11) NOT NULL DEFAULT '0',
  `document_number` varchar(70) DEFAULT NULL,
  `ocr_language` varchar(30) DEFAULT NULL,
  `custom_field` longtext,
  `related_file` text,
  `duedate` datetime DEFAULT NULL,
  `locked` int(11) NOT NULL DEFAULT '0',
  `lock_user` int(11) DEFAULT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '0',
  `creator_type` varchar(40) NOT NULL DEFAULT 'staff',
  `sign_approve` int(11) NOT NULL DEFAULT '0',
  `resolution` longtext,
  `move_after_approval` int(11) NOT NULL DEFAULT '0',
  `show_files_metadata` int(11) NOT NULL DEFAULT '0',
  `folder_after_approval` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldmg_items`
--

INSERT INTO `tbldmg_items` (`id`, `name`, `dateadded`, `approve`, `version`, `filetype`, `parent_id`, `hash`, `creator_id`, `signed_by`, `tag`, `note`, `master_id`, `document_number`, `ocr_language`, `custom_field`, `related_file`, `duedate`, `locked`, `lock_user`, `is_primary`, `creator_type`, `sign_approve`, `resolution`, `move_after_approval`, `show_files_metadata`, `folder_after_approval`) VALUES
(1, 'Inbox', '2025-04-29 11:23:38', 1, '1.0.0', 'folder', 0, '30405c54adc180b76a934dbdef1c3a6e', 1, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'staff', 0, NULL, 0, 0, NULL),
(2, '#Team', '2025-04-29 11:23:38', 1, '1.0.0', 'folder', 0, '9ee65ac0194530be3251b63278565724', 0, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'public', 0, NULL, 0, 0, NULL),
(3, 'Inbox', '2025-05-06 10:01:47', 1, '1.0.0', 'folder', 0, '4a3433254034642cbe88b45aec7c44b7', 11, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'staff', 0, NULL, 0, 0, NULL),
(4, 'SOP', '2025-05-06 10:45:27', 0, NULL, 'folder', 2, '17650db11147a3216da879c61e0e7b33', 11, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 'staff', 0, NULL, 0, 0, NULL),
(5, 'TKT-SOP-MR-04 Audit Internal.pdf', '2025-05-06 10:45:45', 0, '1.0.0', 'application/pdf', 4, '3ba501d5dab8eb117dd238b9ca301c32', 11, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 'staff', 0, NULL, 0, 0, NULL),
(6, 'Inbox', '2025-05-06 10:57:13', 1, '1.0.0', 'folder', 0, '2026de60609c8e953b85acba2889246e', 14, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'staff', 0, NULL, 0, 0, NULL),
(7, 'Inbox', '2025-05-06 12:31:56', 1, '1.0.0', 'folder', 0, 'f09975ae76b8344c6a6394118bbac362', 12, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, 'staff', 0, NULL, 0, 0, NULL),
(13, 'Reza', '2025-05-06 12:46:46', 0, NULL, 'folder', 2, 'de611fd8817f220f1a61757ab5e361be', 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 'staff', 0, NULL, 0, 0, NULL),
(14, '001-Penawaran-500.pdf', '2025-05-06 12:48:06', 1, '1.0.0', 'application/pdf', 1, '2c1a1dc760d868b3a6fea419d6e53d34', 1, '', '', '', 1, '', '', '', '', NULL, 0, NULL, 0, 'staff', 0, 'Tolong di approval', 0, 0, 1),
(15, 'Penawaran-500.pdf', '2025-05-06 12:50:55', 1, '1.0.0', 'application/pdf', 1, '1adfee935b4dd17e2b89005bde52129a', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 'staff', 0, 'Tolong approval ini', 0, 0, 1),
(16, 'HSE', '2025-05-06 12:56:52', 0, NULL, 'folder', 0, '00d7c72b915f004ee894864c9f6edda8', 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 'staff', 0, NULL, 0, 0, NULL),
(17, 'GA', '2025-05-06 12:56:58', 0, NULL, 'folder', 0, '89d3cace30d8afe00f77a10066c2bced', 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 'staff', 0, NULL, 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldmg_items`
--
ALTER TABLE `tbldmg_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbldmg_items`
--
ALTER TABLE `tbldmg_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
