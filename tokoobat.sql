-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2024 pada 18.39
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoobat`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_harga_transaksi` ()   BEGIN
    SELECT 
        SUM(tb_keranjang.jumlah_obat * tb_keranjang.harga_obat) AS total_harga
    FROM tb_keranjang;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pengguna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`nama`, `email`, `password`, `pengguna`) VALUES
('adel', 'adel@gmail.com', '123', 'User'),
('a', 'a@gmail.com', '123', 'Admin'),
('sipa', 'ulya@gmail.com', 'ulya', 'User'),
('shifa', 'shifa@gmail.com', '12345', 'User'),
('kayla', 'kayla@gmail.com', '123', 'User'),
('Budi', 'budi@gmail.com', '1234', 'admin'),
('Asep', 'asep@gmail.com', 'abcd', 'Admin'),
('kayia', 'kayia@gmail.com', '123', 'User'),
('delia', 'delia@gmail.com', '1234', 'User'),
('syifa', 'syifa@gmail.com', 'syifa', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_obat`
--

CREATE TABLE `daftar_obat` (
  `nama_obat` varchar(50) NOT NULL,
  `harga_beli` int(50) NOT NULL,
  `harga_jual` int(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_obat`
--

INSERT INTO `daftar_obat` (`nama_obat`, `harga_beli`, `harga_jual`, `stok`) VALUES
('batuk', 2000, 5000, 1000),
('paracetamol', 25000, 20000, 3),
('Panadol', 16000, 12000, 20),
('Lanso', 15000, 10000, 15),
('Bodrex', 10000, 5000, 20),
('Cream luka', 28000, 20000, 5),
('Zambuk', 35000, 30000, 10),
('inpepsa', 15000, 12000, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keranjang`
--

CREATE TABLE `tb_keranjang` (
  `nama_obat` varchar(50) NOT NULL,
  `harga_obat` int(50) NOT NULL,
  `jumlah_obat` int(50) NOT NULL,
  `total_harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
