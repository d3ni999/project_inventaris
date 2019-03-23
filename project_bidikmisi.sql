-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2019 at 09:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_bidikmisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `section`) VALUES
(1, 'Jhony', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Ferdian Alghazali', 'ferdi', '8bf4bb0e2efad01abe522bf314504a49', 2),
(3, 'Muzanni', 'muzanni', '2d6c73bdf74a8b00596f5baa124442b6', 3);

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` int(11) NOT NULL,
  `artikel_tanggal` date NOT NULL,
  `artikel_judul` varchar(255) NOT NULL,
  `artikel_kategori` varchar(255) NOT NULL,
  `artikel_konten` date NOT NULL,
  `artikel_sampul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `halaman_id` int(11) NOT NULL,
  `halaman_judul` varchar(255) NOT NULL,
  `halaman_sampul` varchar(255) NOT NULL,
  `halaman_konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `kegiatan_id` int(11) NOT NULL,
  `kegiatan_judul` varchar(255) NOT NULL,
  `kegiatan_tanggal` date NOT NULL,
  `kegiatan_keterangan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_tanggal` date NOT NULL,
  `komentar_jenis_pengguna` varchar(255) NOT NULL,
  `komentar_id_pengguna` varchar(255) NOT NULL,
  `komentar_artikel` varchar(255) NOT NULL,
  `komentar__isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(11) NOT NULL,
  `mahasiswa_nim` int(15) NOT NULL,
  `mahasiswa_nama` varchar(255) NOT NULL,
  `mahasiswa_fakultas` varchar(255) NOT NULL,
  `mahasiswa_jurusan` varchar(255) NOT NULL,
  `mahasiswa_alamat` varchar(255) NOT NULL,
  `mahasiswa_alamat_sekarang` varchar(255) NOT NULL,
  `mahasiswa_no_telpon` varchar(255) NOT NULL,
  `mahasiswa_no_wa` varchar(255) NOT NULL,
  `mahasiswa_no_ortu` varchar(255) NOT NULL,
  `mahasiswa_agama` varchar(255) NOT NULL,
  `mahasiswa_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembina`
--

CREATE TABLE `pembina` (
  `pembina_id` int(11) NOT NULL,
  `pembina_nama` varchar(255) NOT NULL,
  `pembina_username` varchar(255) NOT NULL,
  `pembina_password` varchar(255) NOT NULL,
  `pembina_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `pengurus_id` int(11) NOT NULL,
  `pengurus_nama` varchar(255) NOT NULL,
  `pengurus_username` varchar(255) NOT NULL,
  `pengurus_password` varchar(255) NOT NULL,
  `pengurus_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qa`
--

CREATE TABLE `qa` (
  `qa_id` int(11) NOT NULL,
  `qa_pertanyaan` varchar(255) NOT NULL,
  `qa_jawaban` varchar(255) NOT NULL,
  `qa_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section_sect_id` varchar(200) NOT NULL,
  `section_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_sect_id`, `section_desc`) VALUES
(1, 'S001', 'Press'),
(2, 'S002', 'Hobbing'),
(3, 'S003', 'Heat Treatment'),
(4, 'S004', 'Painting'),
(5, 'S005', 'Cutting'),
(6, 'S006', 'Grinding'),
(7, 'S007', 'ADI'),
(8, 'S008', 'Warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_item_code` varchar(255) DEFAULT NULL,
  `stock_section` varchar(255) DEFAULT NULL,
  `stock_loc_code` varchar(255) DEFAULT NULL,
  `stock_process_code` varchar(255) DEFAULT NULL,
  `stock_qty_theory` float DEFAULT NULL,
  `stock_qty_actual` float DEFAULT NULL,
  `stock_qty_variant` float DEFAULT NULL,
  `stock_date` date DEFAULT NULL,
  `stock_idouhyo_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_item_code`, `stock_section`, `stock_loc_code`, `stock_process_code`, `stock_qty_theory`, `stock_qty_actual`, `stock_qty_variant`, `stock_date`, `stock_idouhyo_no`) VALUES
(1, '1B7-2582W-00 DK20-1', '1', 'DK', 'DK20-1', -138, 0, 0, '2019-03-22', 'SUB-19C-75908'),
(2, '1TP-2581T-00 DK171', '1', 'DK', 'DK171', 1, 0, 0, '2019-03-22', 'YDK-19B-71180'),
(3, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75915'),
(4, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75916'),
(5, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75917'),
(6, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75918'),
(7, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75919'),
(8, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75920'),
(9, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75921'),
(10, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75922'),
(11, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75923'),
(12, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75924'),
(13, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75925'),
(14, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75926'),
(15, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75927'),
(16, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75928'),
(17, '1WD-F581U-00 DK145', '1', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75929'),
(18, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 31, 0, 0, '2019-03-22', 'SUB-19B-73605'),
(19, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 50, 0, 0, '2019-03-22', 'SUB-19B-73606'),
(20, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65426'),
(21, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65427'),
(22, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65428'),
(23, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65429'),
(24, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65457'),
(25, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66522'),
(26, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66529'),
(27, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66533'),
(28, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66544'),
(29, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66545'),
(30, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66546'),
(31, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69708'),
(32, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69718'),
(33, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69719'),
(34, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69721'),
(35, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69729'),
(36, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69744'),
(37, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69745'),
(38, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70928'),
(39, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70931'),
(40, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70936'),
(41, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70942'),
(42, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 50, 0, 0, '2019-03-22', 'YDK-19B-70947'),
(43, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70956'),
(44, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70957'),
(45, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 10, 0, 0, '2019-03-22', 'YDK-19B-71839'),
(46, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 90, -10, '2019-03-22', 'YDK-19B-71840'),
(47, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 140, 40, '2019-03-22', 'YDK-19B-71841'),
(48, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 110, 10, '2019-03-22', 'YDK-19B-71842'),
(49, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 120, 20, '2019-03-22', 'YDK-19B-71855'),
(50, '1WD-F581U-00 DK171', '1', 'DK', 'DK171', 100, 10, -90, '2019-03-22', 'YDK-19B-71856'),
(51, '1B7-2582W-00 DK20-1', '2', 'DK', 'DK20-1', -138, 0, 0, '2019-03-21', 'SUB-19C-75908'),
(52, '1TP-2581T-00 DK171', '2', 'DK', 'DK171', 1, 0, 0, '2019-03-21', 'YDK-19B-71180'),
(53, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75915'),
(54, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75916'),
(55, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75917'),
(56, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75918'),
(57, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75919'),
(58, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75920'),
(59, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75921'),
(60, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75922'),
(61, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75923'),
(62, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75924'),
(63, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75925'),
(64, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75926'),
(65, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75927'),
(66, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75928'),
(67, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-21', 'YDK-19C-75929'),
(68, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 31, 0, 0, '2019-03-21', 'SUB-19B-73605'),
(69, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 50, 0, 0, '2019-03-21', 'SUB-19B-73606'),
(70, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-65426'),
(71, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-65427'),
(72, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-65428'),
(73, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-65429'),
(74, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-65457'),
(75, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-66522'),
(76, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-66529'),
(77, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-66533'),
(78, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-66544'),
(79, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-66545'),
(80, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-66546'),
(81, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-69708'),
(82, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-69718'),
(83, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-69719'),
(84, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-69721'),
(85, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-69729'),
(86, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-69744'),
(87, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-69745'),
(88, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-70928'),
(89, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-70931'),
(90, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-70936'),
(91, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-70942'),
(92, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 50, 0, 0, '2019-03-21', 'YDK-19B-70947'),
(93, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-70956'),
(94, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-70957'),
(95, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 10, 0, 0, '2019-03-21', 'YDK-19B-71839'),
(96, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-71840'),
(97, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-71841'),
(98, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-71842'),
(99, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-21', 'YDK-19B-71855'),
(100, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 90, -10, '2019-03-21', 'YDK-19B-71856'),
(101, '1B7-2582W-00 DK20-1', '2', 'DK', 'DK20-1', -138, 0, 0, '2019-03-22', 'SUB-19C-75908'),
(102, '1TP-2581T-00 DK171', '2', 'DK', 'DK171', 1, 0, 0, '2019-03-22', 'YDK-19B-71180'),
(103, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75915'),
(104, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75916'),
(105, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75917'),
(106, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75918'),
(107, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75919'),
(108, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75920'),
(109, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75921'),
(110, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75922'),
(111, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75923'),
(112, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75924'),
(113, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75925'),
(114, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75926'),
(115, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75927'),
(116, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75928'),
(117, '1WD-F581U-00 DK145', '2', 'DK', 'DK145', 100, 0, 0, '2019-03-22', 'YDK-19C-75929'),
(118, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 31, 0, 0, '2019-03-22', 'SUB-19B-73605'),
(119, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 50, 0, 0, '2019-03-22', 'SUB-19B-73606'),
(120, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65426'),
(121, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65427'),
(122, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65428'),
(123, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65429'),
(124, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-65457'),
(125, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66522'),
(126, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66529'),
(127, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66533'),
(128, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66544'),
(129, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66545'),
(130, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-66546'),
(131, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69708'),
(132, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69718'),
(133, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69719'),
(134, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69721'),
(135, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69729'),
(136, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69744'),
(137, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-69745'),
(138, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70928'),
(139, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70931'),
(140, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70936'),
(141, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70942'),
(142, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 50, 0, 0, '2019-03-22', 'YDK-19B-70947'),
(143, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70956'),
(144, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-70957'),
(145, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 10, 0, 0, '2019-03-22', 'YDK-19B-71839'),
(146, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-71840'),
(147, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-71841'),
(148, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-71842'),
(149, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 0, 0, '2019-03-22', 'YDK-19B-71855'),
(150, '1WD-F581U-00 DK171', '2', 'DK', 'DK171', 100, 130, 30, '2019-03-22', 'YDK-19B-71856');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Super Admin', 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`halaman_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`kegiatan_id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`);

--
-- Indexes for table `pembina`
--
ALTER TABLE `pembina`
  ADD PRIMARY KEY (`pembina_id`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`pengurus_id`);

--
-- Indexes for table `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`qa_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `halaman_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `kegiatan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembina`
--
ALTER TABLE `pembina`
  MODIFY `pembina_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `pengurus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa`
--
ALTER TABLE `qa`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;