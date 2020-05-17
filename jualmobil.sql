-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2020 pada 09.51
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jualmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `idkaryawan` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `nomerhp` varchar(15) NOT NULL,
  `gaji` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamobil`
--

CREATE TABLE `datamobil` (
  `kdmobil` int(3) NOT NULL,
  `merk` varchar(16) NOT NULL,
  `jenis` varchar(12) NOT NULL,
  `tahun_produksi` varchar(4) NOT NULL,
  `warna` varchar(12) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobiljual`
--

CREATE TABLE `mobiljual` (
  `idmobil` int(3) NOT NULL,
  `merk` varchar(16) NOT NULL,
  `Jenis` varchar(12) NOT NULL,
  `Warna` varchar(12) CHARACTER SET utf8 NOT NULL,
  `Harga` double NOT NULL,
  `tanggal_terjual` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datakaryawan`
--
ALTER TABLE `datakaryawan`
  ADD PRIMARY KEY (`idkaryawan`);

--
-- Indeks untuk tabel `datamobil`
--
ALTER TABLE `datamobil`
  ADD PRIMARY KEY (`kdmobil`);

--
-- Indeks untuk tabel `mobiljual`
--
ALTER TABLE `mobiljual`
  ADD PRIMARY KEY (`idmobil`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datamobil`
--
ALTER TABLE `datamobil`
  MODIFY `kdmobil` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mobiljual`
--
ALTER TABLE `mobiljual`
  MODIFY `idmobil` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
