-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2026 at 02:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '123', 0),
(2, 'admin', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(50000);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 1, 'kemeja', 2),
(2, 2, 'kaos', 2),
(3, 3, 'blus', 1),
(4, 4, 'tunik', 2),
(5, 5, 'jaket', 1),
(6, 6, 'celana panjang', 2),
(7, 7, 'celana pendek', 2),
(8, 8, 'gamis', 1),
(9, 9, 'rok', 2),
(10, 10, 'jeans', 2),
(11, 11, 'seragam', 2),
(12, 12, 'batik', 1),
(13, 13, 'dress', 1),
(14, 14, 'kaos panjang', 2),
(15, 15, 'baju koko', 2),
(16, 2, 'daster', 2),
(17, 3, 'cardigan', 1),
(18, 4, 'baju tidur', 1),
(19, 5, 'rompi', 2),
(20, 6, 'jas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'hasna', '085127892378654', 'margosari'),
(2, 'alisa', '08789873562356', 'boja,kendal'),
(3, 'hasnaaisy', '0893674838764', 'jetis'),
(4, 'alisaaulia', '098364572822', 'gunungsari'),
(5, 'vina', '086368352777', 'pagerwojo'),
(6, 'natassya', '025378296846', 'mlaten'),
(7, 'nesya', '0389768976833', 'kliris'),
(8, 'ravita', '08976798536', 'pasigitan'),
(9, 'zipara', '0783682873892', 'limbangan'),
(10, 'nisa', '089852763894772', 'boja');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaski_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transasksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaski_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transasksi_status`) VALUES
(1, '2026-03-15', 1, 50000, 1, '2026-06-18', 1),
(2, '2026-06-02', 2, 50000, 1, '2026-06-05', 1),
(3, '2026-07-09', 3, 50000, 1, '2026-07-12', 1),
(4, '2026-08-09', 4, 50000, 1, '2026-08-13', 1),
(5, '2026-09-10', 5, 50000, 1, '2026-09-13', 1),
(6, '2026-08-10', 6, 50000, 1, '2026-08-13', 1),
(7, '2026-04-13', 7, 50000, 1, '2026-04-17', 1),
(8, '2026-03-16', 8, 100000, 2, '2026-03-19', 1),
(9, '2026-09-12', 9, 100000, 2, '2026-09-15', 0),
(10, '2026-07-01', 10, 100000, 2, '2026-07-04', 2),
(11, '2026-09-01', 2, 100000, 2, '2026-09-04', 0),
(12, '2026-12-01', 3, 100000, 2, '2026-12-04', 0),
(13, '2026-07-03', 4, 100000, 2, '2026-07-07', 2),
(14, '2026-01-02', 5, 150000, 3, '2026-01-06', 0),
(15, '2026-04-02', 6, 150000, 3, '2026-04-05', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
