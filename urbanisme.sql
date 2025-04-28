-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2025 at 03:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urbanisme`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`, `description`) VALUES
(2, 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'hgfvigvyuku'),
(3, 'fff', 'ffff'),
(4, 'dfsfbsf', 'bbbbbbbbbbbb');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id_transport` int(11) NOT NULL,
  `nom_transport` varchar(100) NOT NULL,
  `capacite` int(11) DEFAULT NULL,
  `frequence` varchar(100) DEFAULT NULL,
  `zone_deservie` text DEFAULT NULL,
  `cout_moyen` float DEFAULT NULL,
  `ecologique` tinyint(1) DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  `start_position` varchar(255) DEFAULT NULL,
  `destination_position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id_transport`, `nom_transport`, `capacite`, `frequence`, `zone_deservie`, `cout_moyen`, `ecologique`, `id_categorie`, `start_position`, `destination_position`) VALUES
(3, 'vfff', 200, 'fdbdfb', 'dfbdfbn', 20, 0, 3, NULL, NULL),
(4, 'cccc', 60, 'jbnkjl', 'nnj', 300000, 1, 3, NULL, NULL),
(5, 'cccc', 300, 'dfbsdf', 'dfsbsdfb', 200, 1, 4, NULL, NULL),
(7, 'ihjim', 32, 'iuojk', 'ojkml', 5312, 1, 2, '36.73272102516791,10.151367187500002', '36.87346882345916,11.052246093750002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id_transport`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id_transport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
