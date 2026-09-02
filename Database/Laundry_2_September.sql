-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2026 pada 02.38
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '123', 1),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 2),
(3, 'admin2', '202cb962ac59075b964b07152d234b70', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(7000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 1, 'Celana jeans\r\nbaju', 2),
(2, 2, 'Baju\r\nselimut\r\ncelana jeans', 4),
(3, 3, 'Baju\r\nSprei\r\nCelana', 3),
(4, 4, 'Selimut\r\nSprei\r\ncelana', 4),
(5, 5, 'Baju', 6),
(6, 5, 'Baju tidur\r\ncelana dalam', 8),
(7, 6, 'Baju', 3),
(8, 6, 'Celana casual', 4),
(9, 7, 'Baju tidur\r\nCelana dalam', 2),
(10, 7, 'Baju \r\nCelana jeans', 8),
(11, 8, 'Baju tidur\r\nCelana casual', 3),
(12, 8, 'Baju tidur\r\nCelana dalam', 4),
(13, 8, 'Baju\r\nCelana\r\nsinglet', 6),
(14, 9, 'Baju \r\nCelana', 4),
(15, 10, 'Baju tidur\r\nCelana dalam', 3),
(16, 11, 'Baju tidur\r\nCelana dalam', 6),
(17, 12, 'Baju tidur\r\nCelana tidur', 2),
(18, 13, 'Baju\r\nCelana dalam\r\nkemeja', 4),
(19, 14, 'Baju tidur\r\nCelana jeans', 4),
(20, 15, 'Baju\r\nCelana jeans\r\nkemeja\r\nsinglet', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'Patah', '08123456789', 'Campurejo'),
(2, 'Sukiman', '081229880745', 'Njagalan'),
(3, 'Potiman', '081234569867', 'Polaman'),
(4, 'Sri', '089712567832', 'Campurejo'),
(5, 'Asilam', '081234569854', 'Kaliputih'),
(6, 'Sur', '089562567809', 'Limbangan'),
(7, 'Supri', '089764561290', 'Singorojo'),
(8, 'Sari', '081264372245', 'Kaliputih'),
(9, 'Danang', '081234566734', 'Sidawung'),
(10, 'Ahmad', '089712562189', 'Jimbaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transkasi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transkasi_tgl_selesai`, `transaksi_status`) VALUES
(1, '2026-07-25', 1, 14000, 2, '2026-07-26', 2),
(2, '2026-07-26', 2, 7000, 1, '2026-07-27', 1),
(3, '2026-08-17', 3, 21000, 3, '2026-08-19', 1),
(4, '2026-08-20', 4, 28000, 4, '2026-08-22', 0),
(5, '2026-08-22', 5, 7000, 1, '2026-08-22', 0),
(6, '2026-09-01', 6, 28000, 4, '2026-09-03', 0),
(7, '2026-09-01', 7, 7000, 1, '2026-09-02', 2),
(8, '2026-09-02', 8, 14000, 2, '2026-09-03', 1),
(9, '2026-09-03', 9, 14000, 2, '2026-09-04', 2),
(10, '2026-09-10', 9, 7000, 1, '2026-09-10', 2),
(11, '2026-09-10', 9, 21000, 3, '2026-09-12', 0),
(12, '2026-09-20', 10, 28000, 4, '2026-09-22', 2),
(13, '2026-09-22', 10, 7000, 1, '2026-09-22', 1),
(14, '2026-09-23', 10, 28000, 4, '2026-09-25', 1),
(15, '2026-09-25', 10, 7000, 1, '2026-09-26', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
