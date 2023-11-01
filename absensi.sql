-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 01:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` int(11) NOT NULL,
  `users_nip` int(11) DEFAULT NULL,
  `status` enum('in','out') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensis`
--

INSERT INTO `absensis` (`id`, `users_nip`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1005, 'in', '2023-02-16 01:30:14', '2023-02-16 01:30:14'),
(2, 1005, 'out', '2023-02-16 01:30:23', '2023-02-16 01:30:23'),
(3, 1001, 'in', '2023-02-16 02:24:25', '2023-02-16 02:24:25'),
(5, 1001, 'out', '2023-02-16 02:40:02', '2023-02-16 02:40:02'),
(6, 1002, 'in', '2023-02-19 02:24:05', '2023-02-19 02:24:05'),
(10, 1002, 'out', '2023-02-19 02:40:06', '2023-02-19 02:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `nama`, `password`, `createdAt`, `updatedAt`) VALUES
(13, 1001, 'riski', '456', '2023-02-15 07:43:31', '2023-02-15 07:43:31'),
(14, 1002, 'bambank', 'password789', '2023-02-15 07:43:47', '2023-02-15 07:53:50'),
(15, 1003, 'hidayat', '$2b$10$Wkug2DV3mluh9NqTSXQ7oODMilBx84gJdLD4FLghEhF5OBDa05oWq', '2023-02-15 09:29:15', '2023-02-15 09:29:15'),
(16, 1004, 'tsalit', '$2b$05$A2KnTtcqVB7Zc15ApFupRu.XZKO3gOLziH4SQppkI6eRYulrtQKxy', '2023-02-15 09:30:35', '2023-02-15 09:30:35'),
(19, 1006, 'dika', '$2b$10$N4k9S44sw4vRz3coJus67efCxVS62stmBSM7m6Q19iSWpCgI/HMwi', '2023-02-15 09:59:44', '2023-02-15 10:01:54'),
(20, 1007, 'cah', '$2b$10$EUEYqEpMhOmrvx3pWu56uOBvt0ibClzd4NIwCscm9plFAEe5ogcg2', '2023-02-16 01:20:56', '2023-02-16 01:20:56'),
(21, 1008, 'putri', '$2b$10$BuvZkFrExwU0L0uJkzLnWOYAFAa5EbjJVhHaHf7ZwPS3SVwQKmyk6', '2023-02-16 01:47:55', '2023-02-16 01:47:55'),
(22, 1009, 'fajarrr', '$2b$10$dDO63Zo1Sd08er8N65TiDuwk58mzgm.FRbXUmtOkC31v0s.gJcGOa', '2023-02-16 02:14:05', '2023-02-16 02:16:50'),
(23, 1010, 'riski', '$2b$10$SFVCWneXcPBlGThLrntrJ.xrghw1VVwiD1J0GdUvCf1EoDEbHRGdO', '2023-02-16 02:43:14', '2023-02-16 02:43:14'),
(25, 1221407, 'Ferryndra', '$2b$10$BeB/H/kJmIjEI/QFoGABL.IG/kMGJWLlPuxoKZGtULl6ZkcRv/CAy', '2023-02-21 03:11:50', '2023-02-21 03:12:33'),
(28, 100001, 'Ferry', '$2b$10$Tgav.2aftptgjSoRbvBpDuQzJXZK0mt43y1WTE8otKO4e8z2UCvnO', '2023-04-04 14:12:37', '2023-04-04 14:12:37'),
(29, 407, 'Ferry', '$2b$10$8XqDPg1FnMYFDPvyqC4/TO9njiVRlfJgMUmjxgvAfi8jstZOS.bs2', '2023-04-05 22:17:11', '2023-04-05 22:17:11'),
(30, 2121, 'ferry', '$2b$10$8yNEnxnRRvtn7ZvPG0l.jeu8KxeVGHjw1bWTshYC0Zh6wbUCdSk1u', '2023-04-05 22:33:17', '2023-04-05 22:33:17'),
(31, 34, 'ferryndra', '$2b$10$jNetEI1pcmv4fY72muQR4.Ja7xgheR.j4fqrxy2s3xyDrOoS.T/.y', '2023-04-05 22:34:24', '2023-04-05 22:34:24'),
(32, 1233, 'ferryndra', '$2b$10$5d0XMDswdCEg1/nkiSHGWe4stto2505ocMM0CXutObq9PKnO3bYP6', '2023-04-05 22:35:57', '2023-04-05 22:35:57'),
(33, 111, 'Indra', '$2b$10$V7aHoDhsLvL3KMaHcek15u7CXFmZyGSCrJzJgaE6zk5R6996EIOxi', '2023-04-05 22:41:01', '2023-04-05 22:41:01'),
(35, 333, 'Wanwan', '$2b$10$ZlysvIgnB6VTb89y0xwYdObhJyhzFQdBoT8MSogM0ybhLPsmq2Zze', '2023-04-05 22:43:52', '2023-04-05 22:43:52'),
(36, 123456, 'Ferryndra03', '$2b$10$9fy6aWfpsnrzNV9PGeNCu.KteZ1fokk86g9c9rqBQLtvvn3WmDz8a', '2023-04-05 22:44:39', '2023-04-05 22:44:39'),
(37, 1102, 'Fer', '$2b$10$0sZYWTtsip56QpPNRfUnt.7vr6Qp2ZG5f.fltsYXwcTQlEsSwJ5fm', '2023-04-09 14:35:55', '2023-04-09 14:35:55'),
(38, 1101, 'Ferryndra', '$2b$10$jLj2behjGrB1Visy4hJQveNwkPfuQU5w77RmxgPrEOpNrOUExQ1Uq', '2023-04-09 14:39:31', '2023-04-09 14:39:31'),
(39, 1105, 'Ferryndra11', '$2b$10$QNprsDqhNsVVpQ07OGO7WueXNBFhMyTeokCkfXuXboc.H87WTShp6', '2023-04-11 10:33:25', '2023-04-11 10:33:25'),
(40, 1212, 'Ferryndradra', '$2b$10$v1pb9Pqsi7ZUK6e.sSdXyuBdTywBosx9GxNpez25JkUYIqMvndB8C', '2023-04-11 12:34:07', '2023-04-11 12:34:07'),
(41, 1110, 'Ferryyyy', '$2b$10$X4xaFNw6UR/BU5Ot3eb1qeDWFLHXm3xuQDp4LSH0yJquj4mbPZVW.', '2023-04-11 12:38:00', '2023-04-11 12:38:00'),
(42, 1211, 'Ferry', '$2b$10$d7vgjuAkXVn4Ki7fs7Rmp.TjrqJuRMOi59byd27Ym6PuheA3uFGkO', '2023-04-11 14:29:31', '2023-04-11 21:54:56'),
(43, 123, 'FFF', '$2b$10$f6gGsUorGNAyPFO9XwMRFuWXTzcadHnCD1dJkLnVTq6yHrPj/KIEK', '2023-04-11 14:30:11', '2023-04-11 14:30:11'),
(44, 1407, 'Ferryndraa', '$2b$10$NDVmx6Ac0UKshgk0Cno8FuvAkemlnI2H0fxC3fQ8zoujS7e8NBvkO', '2023-04-11 21:49:08', '2023-04-11 21:49:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
