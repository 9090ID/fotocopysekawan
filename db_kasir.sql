-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 08:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Amplop', 'amplop', 'Jenis2 Amplop', '2020-01-21 06:41:30', '2020-01-21 06:41:30'),
(2, 'Batre', 'batre', 'jenis2 batre', '2020-01-21 06:42:00', '2020-01-21 06:42:00'),
(3, 'Buku', 'buku', 'Jenis2 Buku', '2020-01-21 06:42:28', '2020-01-21 06:42:28'),
(4, 'Clip', 'clip', 'Jenis2 Clip', '2020-01-21 06:42:42', '2020-01-21 06:42:42'),
(5, 'Flashdisk', 'flashdisk', 'Jenis2 Fd', '2020-01-21 06:42:56', '2020-01-21 06:42:56'),
(6, 'Isi Curter', 'isi-curter', 'Jenis2 Isi Curter', '2020-01-21 06:43:28', '2020-01-21 06:43:28'),
(7, 'Kalulator', 'kalulator', 'Jenis2 Kalkulator', '2020-01-21 06:43:46', '2020-01-21 06:43:46'),
(8, 'Kertas', 'kertas', 'Jenis2 Kertas', '2020-01-21 06:44:00', '2020-01-21 06:44:00'),
(9, 'Kwitansi', 'kwitansi', 'Jenis2 Kwitansi', '2020-01-21 06:44:16', '2020-01-21 06:44:16'),
(10, 'Label', 'label', 'Jenis2 Label', '2020-01-21 06:44:28', '2020-01-21 06:44:28'),
(11, 'Bantalan', 'bantalan', '#', '2020-01-21 06:45:08', '2020-01-21 06:45:08'),
(12, 'Basiz', 'basiz', '#', '2020-01-21 06:45:18', '2020-01-21 06:45:18'),
(13, 'CD', 'cd', '#', '2020-01-21 06:45:30', '2020-01-21 06:45:30'),
(14, 'Garisan Besi', 'garisan-besi', '#', '2020-01-21 06:45:47', '2020-01-21 06:45:47'),
(15, 'Gunting', 'gunting', '#', '2020-01-21 06:46:00', '2020-01-21 06:46:00'),
(16, 'Penggaris', 'penggaris', '#', '2020-01-21 06:46:19', '2020-01-21 06:46:19'),
(17, 'Penghapus', 'penghapus', '#', '2020-01-21 06:46:32', '2020-01-21 06:46:32'),
(18, 'Pisau Carter', 'pisau-carter', '#', '2020-01-21 06:46:46', '2020-01-21 06:46:46'),
(19, 'Stapler Tembak', 'stapler-tembak', '#', '2020-01-21 06:47:01', '2020-01-21 06:47:01'),
(20, 'Staples Biasa', 'staples-biasa', '#', '2020-01-21 06:47:18', '2020-01-21 06:47:18'),
(21, 'Lakban', 'lakban', 'Lakban Hitam dan Bening', '2020-01-21 06:47:52', '2020-01-21 06:47:52'),
(22, 'Lem', 'lem', '#', '2020-01-21 06:48:04', '2020-01-21 06:48:04'),
(23, 'Map', 'map', '#', '2020-01-21 06:48:14', '2020-01-21 06:48:14'),
(24, 'Pena / Pensil', 'pena-pensil', '#', '2020-01-21 06:48:30', '2020-01-21 06:48:30'),
(25, 'Tinta', 'tinta', 'Jenis2 Tinta', '2020-01-21 06:48:52', '2020-01-21 06:48:52'),
(26, 'Tipe-X', 'tipe-x', '#', '2020-01-21 06:49:06', '2020-01-21 06:49:06'),
(27, 'Tissue', 'tissue', 'Jenis2 Tissue', '2020-01-21 06:49:19', '2020-01-21 06:49:19'),
(28, 'Lain-Lain', 'lain-lain', '#', '2020-01-21 07:38:57', '2020-01-21 07:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_11_24_112835_create_permission_tables', 1),
(25, '2019_11_24_115310_create_profiles_table', 1),
(26, '2019_11_24_125053_create_categories_table', 1),
(27, '2019_11_24_130721_create_products_table', 1),
(28, '2019_11_24_232407_create_temporders_table', 1),
(29, '2019_11_24_233931_create_orders_table', 1),
(30, '2019_11_25_000611_create_orderdetails_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(1, 'App\\User', 3),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_merk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_merk`, `qty`, `satuan`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Amplop 104 (pak)', 75000, 'Sinar Dunia', 12, 'Pak', 900000, '2020-01-21 06:58:33', '2020-01-21 06:58:33'),
(2, 2, 3, 'Amplop 104 (pcs)', 400, 'Sinar Dunia', 3, 'Pcs', 1200, '2020-01-21 06:58:33', '2020-01-21 06:58:33'),
(3, 3, 18, 'Flashdisk 32 gb', 120000, 'Sandisk', 1, 'Buah', 120000, '2020-01-21 12:45:43', '2020-01-21 12:45:43'),
(4, 3, 3, 'Amplop 104 (pcs)', 400, 'Sinar Dunia', 3, 'Pcs', 1200, '2020-01-21 12:45:44', '2020-01-21 12:45:44'),
(5, 3, 26, 'Kwitansi Sedang (pak)', 45000, 'Sidu', 5, 'Pak', 225000, '2020-01-21 12:45:44', '2020-01-21 12:45:44'),
(6, 3, 9, 'Amplop Coklat Tali 310 (Dus)', 110000, 'Sidu', 9, 'Dus', 990000, '2020-01-21 12:45:44', '2020-01-21 12:45:44'),
(7, 4, 2, 'Amplop 104 (k)', 17500, 'Sinar Dunia', 2, 'Kotak', 35000, '2020-01-21 15:30:01', '2020-01-21 15:30:01'),
(8, 4, 10, 'Amplop Coklat Tali 310 (Pak)', 11000, 'Sidu', 3, 'Pak', 33000, '2020-01-21 15:30:01', '2020-01-21 15:30:01'),
(9, 4, 12, 'Baterai ABC', 64000, 'ABC', 3, 'Pak', 192000, '2020-01-21 15:30:01', '2020-01-21 15:30:01'),
(10, 4, 74, 'Pisau Curter Rencengan Besar (pcs)', 2500, '-', 6, 'Pcs', 15000, '2020-01-21 15:30:01', '2020-01-21 15:30:01'),
(11, 5, 2, 'Amplop 104 (k)', 17500, 'Sinar Dunia', 1, 'Pak', 17500, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(12, 5, 24, 'Kwitansi Kecil (pak)', 23500, 'Sidu', 5, 'Pak', 117500, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(13, 5, 13, 'Baterai ABC (pcs)', 6000, 'ABC', 2, 'Pak', 12000, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(14, 5, 54, 'Map Ordiner(lsn)', 240000, '-', 34, 'Pak', 8160000, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(15, 5, 19, 'Amplop Coklat Tali 311(dus)', 120000, 'Sidu', 23, 'Dus', 2760000, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(16, 5, 35, 'Tipe X Cair Cf s225(buah)', 5000, 'Joyko', 3, 'Box', 15000, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(17, 5, 39, 'Lakban Bening 1/2 (Roll)', 3500, 'Gold Tape', 3, 'Gros', 10500, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(18, 6, 2, 'Amplop 104 (k)', 17500, 'Sinar Dunia', 3, 'Kotak', 52500, '2020-01-21 16:04:04', '2020-01-21 16:04:04'),
(19, 6, 5, 'Amplop 90s (pk)', 25000, 'Sidu', 4, 'Pcs', 100000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(20, 6, 14, 'Baterai Alkaline AA', 330000, 'AA', 7, 'Buah', 2310000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(21, 6, 29, 'Tissue Smart facial (pcs)', 3000, 'Faceo', 4, 'Kotak', 12000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(22, 6, 24, 'Kwitansi Kecil (pak)', 23500, 'Sidu', 5, 'Dus', 117500, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(23, 6, 24, 'Kwitansi Kecil (pak)', 23500, 'Sidu', 3, 'Buah', 70500, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(24, 6, 19, 'Amplop Coklat Tali 311(dus)', 120000, 'Sidu', 6, 'Kotak', 720000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(25, 6, 16, 'Baterai Alkaline AAA', 330000, 'AAA', 5, 'Pak', 1650000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(26, 6, 31, 'Tissue 250s (pcs)', 17000, 'Nice', 3, 'Pak', 51000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(27, 6, 23, 'Kwitansi Besar (buah)', 6500, 'Sidu', 5, 'Pak', 32500, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(28, 6, 26, 'Kwitansi Sedang (pak)', 45000, 'Sidu', 2, 'Kotak', 90000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(29, 6, 28, 'Tissue 900 gr', 45000, 'Nice', 2, 'Buah', 90000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(30, 6, 58, 'Bazic Glue Stick 8gr BC 808 (pcs)', 4000, '-', 3, 'Kotak', 12000, '2020-01-21 16:04:05', '2020-01-21 16:04:05'),
(31, 7, 89, 'isi curter A 100 (kotak)', 4000, 'Kenko', 1, 'Kotak', 4000, '2020-01-22 01:56:47', '2020-01-22 01:56:47'),
(32, 7, 11, 'Amplop Coklat Tali 310 (pcs)', 2000, 'Sidu', 2, 'Gros', 4000, '2020-01-22 01:56:47', '2020-01-22 01:56:47'),
(33, 7, 27, 'Kwitansi Sedang (buah)', 4500, 'Sidu', 1, 'Bh', 4500, '2020-01-22 01:56:47', '2020-01-22 01:56:47'),
(34, 7, 28, 'Tissue 900 gr', 45000, 'Nice', 3, 'Buah', 135000, '2020-01-22 01:56:47', '2020-01-22 01:56:47'),
(35, 7, 25, 'Kwitansi Kecil (buah)', 2500, 'Sidu', 2, 'Rim', 5000, '2020-01-22 01:56:47', '2020-01-22 01:56:47'),
(36, 7, 36, 'Lakban Bening 1 (tbg 6bh)', 30000, 'Gold Tape', 3, 'Dus', 90000, '2020-01-22 01:56:48', '2020-01-22 01:56:48'),
(37, 7, 27, 'Kwitansi Sedang (buah)', 4500, 'Sidu', 2, 'Rim', 9000, '2020-01-22 01:56:48', '2020-01-22 01:56:48'),
(38, 7, 15, 'Baterai Alkaline AA (pcs)', 14000, 'AA', 1, 'Dus', 14000, '2020-01-22 01:56:48', '2020-01-22 01:56:48'),
(39, 7, 10, 'Amplop Coklat Tali 310 (Pak)', 11000, 'Sidu', 1, 'Pcs', 11000, '2020-01-22 01:56:48', '2020-01-22 01:56:48'),
(40, 7, 35, 'Tipe X Cair Cf s225(buah)', 5000, 'Joyko', 2, 'Kotak', 10000, '2020-01-22 01:56:48', '2020-01-22 01:56:48'),
(41, 7, 47, 'Label CD (pcs)', 2000, '-', 3, 'Buah', 6000, '2020-01-22 01:56:48', '2020-01-22 01:56:48'),
(42, 8, 1, 'Amplop 104 (pak)', 75000, 'Sinar Dunia', 2, 'Pcs', 150000, '2020-01-22 12:57:16', '2020-01-22 12:57:16'),
(43, 8, 13, 'Baterai ABC (pcs)', 6000, 'ABC', 3, 'Gros', 18000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(44, 8, 60, 'CD R Vertex (box)', 140000, '-', 2, 'Buah', 280000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(45, 8, 10, 'Amplop Coklat Tali 310 (Pak)', 11000, 'Sidu', 3, 'Pak', 33000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(46, 8, 66, 'Gunting Bulat warna LB 5 (lsn)', 56000, '-', 4, 'Tabung (6bh)', 224000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(47, 8, 15, 'Baterai Alkaline AA (pcs)', 14000, 'AA', 2, 'Kotak', 28000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(48, 8, 28, 'Tissue 900 gr', 45000, 'Nice', 4, 'Kotak', 180000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(49, 8, 18, 'Flashdisk 32 gb', 120000, 'Sandisk', 1, 'Kotak', 120000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(50, 8, 7, 'Amplop Coklat Folio', 45000, 'Sidu', 2, 'Box', 90000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(51, 8, 19, 'Amplop Coklat Tali 311(dus)', 120000, 'Sidu', 3, 'Pak', 360000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(52, 8, 36, 'Lakban Bening 1 (tbg 6bh)', 30000, 'Gold Tape', 1, 'Kotak', 30000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(53, 8, 13, 'Baterai ABC (pcs)', 6000, 'ABC', 3, 'Pak', 18000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(54, 8, 25, 'Kwitansi Kecil (buah)', 2500, 'Sidu', 4, 'Rim', 10000, '2020-01-22 12:57:17', '2020-01-22 12:57:17'),
(55, 9, 3, 'Amplop 104 (pcs)', 400, 'Sinar Dunia', 2, 'Pcs', 800, '2020-01-23 06:41:45', '2020-01-23 06:41:45'),
(56, 9, 24, 'Kwitansi Kecil (pak)', 23500, 'Sidu', 2, 'Box', 47000, '2020-01-23 06:41:45', '2020-01-23 06:41:45'),
(57, 9, 54, 'Map Ordiner(lsn)', 240000, '-', 3, 'Gros', 720000, '2020-01-23 06:41:45', '2020-01-23 06:41:45'),
(58, 9, 18, 'Flashdisk 32 gb', 120000, 'Sandisk', 3, 'Gros', 360000, '2020-01-23 06:41:45', '2020-01-23 06:41:45'),
(59, 9, 29, 'Tissue Smart facial (pcs)', 3000, 'Faceo', 3, 'Pcs', 9000, '2020-01-23 06:41:45', '2020-01-23 06:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice`, `customer_name`, `total`, `pay`, `note`, `created_at`, `updated_at`) VALUES
(1, 8, '0001', 'Fakultas Ekonomi', 901200, 10000000, NULL, '2020-01-21 06:58:03', '2020-01-21 06:58:03'),
(2, 8, '0002', 'Fakultas Ekonomi', 901200, 10000000, NULL, '2020-01-21 06:58:33', '2020-01-21 06:58:33'),
(3, 8, '0003', 'Fakultas Ekonomi', 1336200, 1400000, NULL, '2020-01-21 12:45:43', '2020-01-21 12:45:43'),
(4, 8, '0004', 'Fakultas Ekonomi', 275000, 300000, NULL, '2020-01-21 15:30:01', '2020-01-21 15:30:01'),
(5, 8, '0005', 'Fakultas Ekonomi', 11092500, 13000000, NULL, '2020-01-21 15:46:35', '2020-01-21 15:46:35'),
(6, 8, '0006', 'Fakultas Hukum', 5308000, 6000000, NULL, '2020-01-21 16:04:04', '2020-01-21 16:04:04'),
(7, 8, '0007', 'Fakultas Ekonomi', 292500, 300000, NULL, '2020-01-22 01:56:47', '2020-01-22 01:56:47'),
(8, 8, '0008', 'Fakultas Ekonomi', 1541000, 1600000, NULL, '2020-01-22 12:57:16', '2020-01-22 12:57:16'),
(9, 8, '0009', 'Fakultas Ekonomi', 1136800, 2000000, NULL, '2020-01-23 06:41:45', '2020-01-23 06:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `merk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `price`, `merk`, `created_at`, `updated_at`) VALUES
(1, 1, 'Amplop 104 (pak)', 'amplop-104', 75000, 'Sinar Dunia', '2020-01-21 06:52:36', '2020-01-21 06:54:46'),
(2, 1, 'Amplop 104 (k)', 'amplop-104-k', 17500, 'Sinar Dunia', '2020-01-21 06:53:41', '2020-01-21 06:53:41'),
(3, 1, 'Amplop 104 (pcs)', 'amplop-104-pcs', 400, 'Sinar Dunia', '2020-01-21 06:54:28', '2020-01-21 06:54:28'),
(4, 1, 'Amplop 90s (pak)', 'amplop-90s-pak', 105000, 'Sidu', '2020-01-21 07:00:09', '2020-01-21 07:00:09'),
(5, 1, 'Amplop 90s (pk)', 'amplop-90s-pk', 25000, 'Sidu', '2020-01-21 07:00:36', '2020-01-21 07:00:36'),
(6, 1, 'Amplop 90s (pcs)', 'amplop-90s-pcs', 700, 'Sidu', '2020-01-21 07:01:09', '2020-01-21 07:01:09'),
(7, 1, 'Amplop Coklat Folio', 'amplop-coklat-folio', 45000, 'Sidu', '2020-01-21 07:02:03', '2020-01-21 07:02:03'),
(8, 1, 'Amplop Coklat Folio (pcs)', 'amplop-coklat-folio-pcs', 2200, 'Sidu', '2020-01-21 07:02:40', '2020-01-21 07:02:40'),
(9, 1, 'Amplop Coklat Tali 310 (Dus)', 'amplop-coklat-tali-310-dus', 110000, 'Sidu', '2020-01-21 07:03:27', '2020-01-21 07:03:27'),
(10, 1, 'Amplop Coklat Tali 310 (Pak)', 'amplop-coklat-tali-310-pak', 11000, 'Sidu', '2020-01-21 07:03:53', '2020-01-21 07:03:53'),
(11, 1, 'Amplop Coklat Tali 310 (pcs)', 'amplop-coklat-tali-310-pcs', 2000, 'Sidu', '2020-01-21 07:04:16', '2020-01-21 07:04:16'),
(12, 2, 'Baterai ABC', 'baterai-abc', 64000, 'ABC', '2020-01-21 07:06:10', '2020-01-21 07:06:10'),
(13, 2, 'Baterai ABC (pcs)', 'baterai-abc-pcs', 6000, 'ABC', '2020-01-21 07:06:35', '2020-01-21 07:06:35'),
(14, 2, 'Baterai Alkaline AA', 'baterai-alkaline-aa', 330000, 'AA', '2020-01-21 07:08:16', '2020-01-21 07:08:16'),
(15, 2, 'Baterai Alkaline AA (pcs)', 'baterai-alkaline-aa-pcs', 14000, 'AA', '2020-01-21 07:08:35', '2020-01-21 07:08:35'),
(16, 2, 'Baterai Alkaline AAA', 'baterai-alkaline-aaa', 330000, 'AAA', '2020-01-21 07:09:07', '2020-01-21 07:09:07'),
(17, 2, 'Baterai Alkaline AAA (pcs)', 'baterai-alkaline-aaa-pcs', 14000, 'AAA', '2020-01-21 07:09:22', '2020-01-21 07:09:22'),
(18, 5, 'Flashdisk 32 gb', 'flashdisk-32-gb', 120000, 'Sandisk', '2020-01-21 07:10:06', '2020-01-21 07:10:06'),
(19, 1, 'Amplop Coklat Tali 311(dus)', 'amplop-coklat-tali-311dus', 120000, 'Sidu', '2020-01-21 07:10:47', '2020-01-21 07:10:47'),
(20, 1, 'Amplop Coklat Tali 311 (pak)', 'amplop-coklat-tali-311-pak', 14000, 'Sidu', '2020-01-21 07:11:15', '2020-01-21 07:11:15'),
(21, 1, 'Amplop Coklat Tali 311 (pcs)', 'amplop-coklat-tali-311-pcs', 2500, 'Sidu', '2020-01-21 07:11:33', '2020-01-21 07:11:33'),
(22, 9, 'Kwitansi Besar (pak)', 'kwitansi-besar-pak', 63000, 'Sidu', '2020-01-21 07:13:11', '2020-01-21 07:13:11'),
(23, 9, 'Kwitansi Besar (buah)', 'kwitansi-besar-buah', 6500, 'Sidu', '2020-01-21 07:13:41', '2020-01-21 07:13:41'),
(24, 9, 'Kwitansi Kecil (pak)', 'kwitansi-kecil-pak', 23500, 'Sidu', '2020-01-21 07:14:02', '2020-01-21 07:14:02'),
(25, 9, 'Kwitansi Kecil (buah)', 'kwitansi-kecil-buah', 2500, 'Sidu', '2020-01-21 07:14:20', '2020-01-21 07:14:20'),
(26, 9, 'Kwitansi Sedang (pak)', 'kwitansi-sedang-pak', 45000, 'Sidu', '2020-01-21 07:14:39', '2020-01-21 07:14:39'),
(27, 9, 'Kwitansi Sedang (buah)', 'kwitansi-sedang-buah', 4500, 'Sidu', '2020-01-21 07:15:02', '2020-01-21 07:15:02'),
(28, 27, 'Tissue 900 gr', 'tissue-900-gr', 45000, 'Nice', '2020-01-21 07:16:16', '2020-01-21 07:16:16'),
(29, 27, 'Tissue Smart facial (pcs)', 'tissue-smart-facial-pcs', 3000, 'Faceo', '2020-01-21 07:17:08', '2020-01-21 07:17:08'),
(30, 27, 'Tissue Facial Soft 250gr', 'tissue-facial-soft-250gr', 13500, 'Tessa', '2020-01-21 07:17:57', '2020-01-21 07:17:57'),
(31, 27, 'Tissue 250s (pcs)', 'tissue-250s-pcs', 17000, 'Nice', '2020-01-21 07:18:29', '2020-01-21 07:18:29'),
(32, 26, 'Tipe X Cair B Botol Merah (lsn)', 'tipe-x-cair-b-botol-merah-lsn', 66000, 'Kenko', '2020-01-21 07:19:30', '2020-01-21 07:19:30'),
(33, 26, 'Tipe X Cair B Botol Merah (buah)', 'tipe-x-cair-b-botol-merah-buah', 6000, 'Kenko', '2020-01-21 07:20:15', '2020-01-21 07:20:15'),
(34, 26, 'Tipe X Cair Cf s225(lsn)', 'tipe-x-cair-cf-s225lsn', 52000, 'Joyko', '2020-01-21 07:20:57', '2020-01-21 07:21:37'),
(35, 26, 'Tipe X Cair Cf s225(buah)', 'tipe-x-cair-cf-s225buah', 5000, 'Joyko', '2020-01-21 07:21:26', '2020-01-21 07:21:26'),
(36, 21, 'Lakban Bening 1 (tbg 6bh)', 'lakban-bening-1-tbg-6bh', 30000, 'Gold Tape', '2020-01-21 07:24:43', '2020-01-21 07:24:43'),
(37, 21, 'Lakban Bening 1 (roll)', 'lakban-bening-1-roll', 5000, 'Gold Tape', '2020-01-21 07:25:08', '2020-01-21 07:25:08'),
(38, 21, 'Lakban Bening 1/2 (tbg 12 bh)', 'lakban-bening-12-tbg-12-bh', 30000, 'Gold Tape', '2020-01-21 07:25:41', '2020-01-21 07:25:41'),
(39, 21, 'Lakban Bening 1/2 (Roll)', 'lakban-bening-12-roll', 3500, 'Gold Tape', '2020-01-21 07:26:07', '2020-01-21 07:26:07'),
(40, 21, 'Lakban Bening 2 (tabung 6bh)', 'lakban-bening-2-tabung-6bh', 70000, 'Gold Tape', '2020-01-21 07:26:47', '2020-01-21 07:26:47'),
(41, 21, 'Lakban Bening 2 (roll)', 'lakban-bening-2-roll', 15000, 'Gold Tape', '2020-01-21 07:27:12', '2020-01-21 07:27:12'),
(42, 21, 'Lem Cair 111 (box)', 'lem-cair-111-box', 55000, 'Provinal', '2020-01-21 07:27:47', '2020-01-21 07:27:47'),
(43, 21, 'Lakban Hitam 1, 1/5', 'lakban-hitam-1-15', 12500, 'Naichi', '2020-01-21 07:28:15', '2020-01-21 07:28:15'),
(44, 21, 'Lakban Hitam 1 (roll)', 'lakban-hitam-1-roll', 9500, 'Naichi', '2020-01-21 07:28:42', '2020-01-21 07:28:42'),
(45, 21, 'Lakban Hitam 2 (roll)', 'lakban-hitam-2-roll', 17000, 'Naichi', '2020-01-21 07:29:12', '2020-01-21 07:29:12'),
(46, 10, 'Label CD (pak)', 'label-cd-pak', 44000, '-', '2020-01-21 07:31:14', '2020-01-21 07:31:14'),
(47, 10, 'Label CD (pcs)', 'label-cd-pcs', 2000, '-', '2020-01-21 07:31:31', '2020-01-21 07:31:31'),
(48, 7, 'Kalkulator CC27', 'kalkulator-cc27', 48000, 'Joyko', '2020-01-21 07:32:30', '2020-01-21 07:32:30'),
(49, 23, 'Map 5002 (pak)', 'map-5002-pak', 70000, 'Biola', '2020-01-21 07:33:40', '2020-01-21 07:33:40'),
(50, 23, 'Map 5002 Semua Warna (pcs)', 'map-5002-semua-warna-pcs', 3500, 'Biola', '2020-01-21 07:34:17', '2020-01-21 07:34:17'),
(51, 23, 'Map Biasa Stopmap (pak)', 'map-biasa-stopmap-pak', 45000, '-', '2020-01-21 07:35:00', '2020-01-21 07:35:00'),
(52, 23, 'Map Biasa Stopmap (buah)', 'map-biasa-stopmap-buah', 2500, '-', '2020-01-21 07:35:26', '2020-01-21 07:35:26'),
(53, 23, 'Map Tulang (pak)', 'map-tulang-pak', 85000, 'Biola', '2020-01-21 07:35:49', '2020-01-21 07:35:49'),
(54, 23, 'Map Ordiner(lsn)', 'map-ordinerlsn', 240000, '-', '2020-01-21 07:36:12', '2020-01-21 07:36:12'),
(55, 23, 'Map Ordiner 1401(buah)', 'map-ordiner-1401buah', 21500, 'Bantex', '2020-01-21 07:36:45', '2020-01-21 07:36:45'),
(56, 23, 'Map Plastik Tulang (lsn)', 'map-plastik-tulang-lsn', 68000, '-', '2020-01-21 07:37:09', '2020-01-21 07:37:09'),
(57, 11, 'Bantalan Stempel No 1', 'bantalan-stempel-no-1', 11000, '-', '2020-01-21 07:38:16', '2020-01-21 07:38:16'),
(58, 28, 'Bazic Glue Stick 8gr BC 808 (pcs)', 'bazic-glue-stick-8gr-bc-808-pcs', 4000, '-', '2020-01-21 07:39:45', '2020-01-21 07:39:45'),
(59, 28, 'Bazic Pembolong BC 30 (pcs)', 'bazic-pembolong-bc-30-pcs', 15000, '-', '2020-01-21 07:40:19', '2020-01-21 07:40:19'),
(60, 13, 'CD R Vertex (box)', 'cd-r-vertex-box', 140000, '-', '2020-01-21 07:40:51', '2020-01-21 07:40:51'),
(61, 13, 'CD R Vertex (pcs)', 'cd-r-vertex-pcs', 3000, '-', '2020-01-21 07:41:13', '2020-01-21 07:41:13'),
(62, 14, 'Garisan Besi 30 Cm (lsn)', 'garisan-besi-30-cm-lsn', 48000, '-', '2020-01-21 07:42:00', '2020-01-21 07:42:00'),
(63, 14, 'Garisan Besi 30 Cm (pcs)', 'garisan-besi-30-cm-pcs', 5000, '-', '2020-01-21 07:42:18', '2020-01-21 07:42:18'),
(64, 15, 'Gunting Bulat warna LB 4 (lsn)', 'gunting-bulat-warna-lb-4-lsn', 48000, '-', '2020-01-21 07:43:00', '2020-01-21 07:43:00'),
(65, 15, 'Gunting Bulat warna LB 4 (pcs)', 'gunting-bulat-warna-lb-4-pcs', 3500, '-', '2020-01-21 07:43:19', '2020-01-21 07:43:19'),
(66, 15, 'Gunting Bulat warna LB 5 (lsn)', 'gunting-bulat-warna-lb-5-lsn', 56000, '-', '2020-01-21 07:43:40', '2020-01-21 07:43:40'),
(67, 15, 'Gunting Bulat warna LB 5 (pcs)', 'gunting-bulat-warna-lb-5-pcs', 5500, '-', '2020-01-21 07:44:03', '2020-01-21 07:44:03'),
(68, 15, 'Gunting Bulat warna LB 6 (lsn)', 'gunting-bulat-warna-lb-6-lsn', 65000, '-', '2020-01-21 07:44:25', '2020-01-21 07:44:25'),
(69, 15, 'Gunting Bulat warna LB 6 (pcs)', 'gunting-bulat-warna-lb-6-pcs', 7000, '-', '2020-01-21 07:44:42', '2020-01-21 07:44:42'),
(70, 16, 'Penggaris 30 cm Plastik', 'penggaris-30-cm-plastik', 25000, 'Yoker', '2020-01-21 07:45:29', '2020-01-21 07:45:29'),
(71, 16, 'Penggaris 30 cm Plastik (buah)', 'penggaris-30-cm-plastik-buah', 2500, 'Yoker', '2020-01-21 07:45:59', '2020-01-21 07:45:59'),
(72, 17, 'penghapus Wb 202 T (pcs)', 'penghapus-wb-202-t-pcs', 7000, '-', '2020-01-21 07:46:32', '2020-01-21 07:46:32'),
(73, 18, 'Pisau Curter Rencengan Besar (lsn)', 'pisau-curter-rencengan-besar-lsn', 25000, '-', '2020-01-21 07:47:28', '2020-01-21 07:47:28'),
(74, 18, 'Pisau Curter Rencengan Besar (pcs)', 'pisau-curter-rencengan-besar-pcs', 2500, '-', '2020-01-21 07:47:51', '2020-01-21 07:47:51'),
(75, 18, 'Pisau Curter Rencengan Kecil (lsn)', 'pisau-curter-rencengan-kecil-lsn', 15000, '-', '2020-01-21 07:48:14', '2020-01-21 07:48:14'),
(76, 18, 'Pisau Curter Rencengan Kecil (pcs)', 'pisau-curter-rencengan-kecil-pcs', 1500, '-', '2020-01-21 07:48:35', '2020-01-21 07:48:35'),
(77, 19, 'Stapler Tembak Max Bs', 'stapler-tembak-max-bs', 475000, '-', '2020-01-21 07:56:53', '2020-01-21 07:56:53'),
(78, 28, 'Pocket Shett F4 ELA', 'pocket-shett-f4-ela', 120000, '-', '2020-01-21 07:57:29', '2020-01-21 07:57:29'),
(79, 18, 'Pisau Curter L 500', 'pisau-curter-l-500', 198000, 'Kenko', '2020-01-21 07:58:12', '2020-01-21 07:58:12'),
(80, 18, 'Pisau Curter L 150 (lsn)', 'pisau-curter-l-150-pcs', 75000, 'Kenko', '2020-01-21 07:58:43', '2020-01-21 07:59:25'),
(81, 20, 'Staples HS 45 (k) (pcs)', 'staples-hs-45-k-pcs', 52000, 'Kangoro', '2020-01-21 08:00:31', '2020-01-21 08:00:31'),
(82, 20, 'Steples ARIS 35', 'steples-aris-35', 40000, 'Kangoro', '2020-01-21 08:00:47', '2020-01-21 08:00:47'),
(83, 20, 'Steples HD no.10', 'steples-hd-no10', 135000, 'Kangoro', '2020-01-21 08:01:08', '2020-01-21 08:01:08'),
(84, 20, 'Steples HD No.10 (pcs)', 'steples-hd-no10-pcs', 16000, 'Kangoro', '2020-01-21 08:01:40', '2020-01-21 08:01:40'),
(85, 20, 'Steples HD No.10 (pcs) d', 'steples-hd-no10-pcs-d', 12000, 'Deli', '2020-01-21 08:02:14', '2020-01-21 08:02:14'),
(86, 28, 'Tali Rapia Besar (roll)', 'tali-rapia-besar-roll', 18000, '-', '2020-01-21 08:02:51', '2020-01-21 08:02:51'),
(87, 6, 'Isi Pisau Curter L 150 (pcs)', 'isi-pisau-curter-l-150-pcs', 6000, 'Kenko', '2020-01-21 08:03:39', '2020-01-21 08:03:39'),
(88, 6, 'isi curter A 100 (box)', 'isi-curter-a-100-box', 40500, 'Kenko', '2020-01-21 08:08:04', '2020-01-21 08:08:04'),
(89, 6, 'isi curter A 100 (kotak)', 'isi-curter-a-100-kotak', 4000, 'Kenko', '2020-01-21 08:08:34', '2020-01-21 08:08:34'),
(90, 6, 'Isi Curter L-150 (box)', 'isi-curter-l-150-box', 75000, 'Kenko', '2020-01-21 08:09:09', '2020-01-21 08:09:09'),
(91, 6, 'Isi Curter L 150 (ktk)', 'isi-curter-l-150-ktk', 7500, 'Kenko', '2020-01-21 08:09:45', '2020-01-21 08:09:45'),
(92, 20, 'Isi Staples HD No 10 (box)', 'isi-staples-hd-no-10-box', 42000, 'Kangoro', '2020-01-21 08:10:55', '2020-01-21 08:10:55'),
(93, 20, 'Isi Staples HD No 10 (ktk)', 'isi-staples-hd-no-10-ktk', 3000, 'Kangoro', '2020-01-21 08:11:15', '2020-01-21 08:11:15'),
(94, 20, 'Isi Staples HD No 3 (box)', 'isi-staples-hd-no-3-box', 85000, 'Kangoro', '2020-01-21 08:11:56', '2020-01-21 08:11:56'),
(95, 20, 'Isi Stapless HD No 3 (ktk)', 'isi-stapless-hd-no-3-ktk', 7500, 'Kangoro', '2020-01-21 08:12:33', '2020-01-21 08:12:33'),
(96, 22, 'Lem Caer 111', 'lem-caer-111', 4500, 'Provinal', '2020-01-21 08:15:43', '2020-01-21 08:15:43'),
(97, 22, 'Lem Caer 112 (ktk)', 'lem-caer-112-ktk', 55000, 'Provinal', '2020-01-21 08:16:13', '2020-01-21 08:16:13'),
(98, 22, 'Lem Caer 112 (buah)', 'lem-caer-112-buah', 4500, 'Provinal', '2020-01-21 08:16:35', '2020-01-21 08:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `address`, `city`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Nama Cafe Anda', 'Alamat Cafe Anda', 'Nama Kota Cafe Anda', 'No Telp Cafe Anda', '2020-01-21 06:38:37', '2020-01-21 06:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2020-01-21 06:38:34', '2020-01-21 06:38:34'),
(2, 'kasir', 'web', '2020-01-21 06:38:34', '2020-01-21 06:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temporders`
--

CREATE TABLE `temporders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_merk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rio Aditya', 'rioaditya92@gmail.com', NULL, '$2y$10$50aavM2Vfe7rbsmapMR8Tue0BxGLKcozYUSys5V6f41Ld4V7iZRwq', NULL, '2020-01-21 06:38:35', '2020-01-21 06:38:35'),
(2, 'Muhammad Farhan', 'farhan@unja.ac.id', NULL, '$2y$10$3gs88MSHJuv79MCRibGbJuUP0g5T45Ot3x2zCtaeRR5ZskH5n/ndi', NULL, '2020-01-21 06:38:35', '2020-01-21 06:38:35'),
(3, 'Adi Syapriyanto', 'adisyapriyanto@yahoo.com', NULL, '$2y$10$fgi.hBXRNmhZm6AsgO.sp.kFMCZhMNR11CUEiSSibx7iZbgvVO/wK', NULL, '2020-01-21 06:38:35', '2020-01-21 06:38:35'),
(4, 'Ayu', 'ayu@gmail.com', NULL, '$2y$10$YC9OXfdbYB4PRdgVaQKGA.t4LUTgZewOwh0LMKuOQQY/ziiT5XV6q', NULL, '2020-01-21 06:38:35', '2020-01-21 06:38:35'),
(5, 'Satria', 'satria@gmail.com', NULL, '$2y$10$IoZypZqC1n4fabZ9W6mZB.rgHTlT5XMp1ukZ.lrRBEON7DLIgeDQC', NULL, '2020-01-21 06:38:36', '2020-01-21 06:38:36'),
(6, 'Sintia Sari', 'sintiasari@gmail.com', NULL, '$2y$10$Y6Ysuu50cGX.2ArkY9v6FuSUg.tIVvE4rkzjEyQP.dGgI6.cULEZy', NULL, '2020-01-21 06:38:36', '2020-01-21 06:38:36'),
(7, 'Ayu', 'ayu_kasir@gmail.com', NULL, '$2y$10$gBPYOdz67npFclK9DX1CROWnjCSmT9NYNMbLkxcy7jt.6kn8vCWVW', NULL, '2020-01-21 06:38:37', '2020-01-21 06:38:37'),
(8, 'Adi Syapriyanto', 'adisyapriyanto_kasir@yahoo.com', NULL, '$2y$10$ogbWEQOk2WeeNcuyXYot1O5O7/YWGPsw53ewSoXp4Gm/A0Fp6/hoq', NULL, '2020-01-21 06:38:37', '2020-01-21 06:38:37'),
(9, 'M. Farhan', 'farhan_kasir@unja.ac.id', NULL, '$2y$10$eF5UqDklIgk3eWD7crnIReg4RJyK8Mst.N7cTeufQCdiZ2391s.Om', NULL, '2020-01-21 06:38:37', '2020-01-21 06:38:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_order_id_foreign` (`order_id`),
  ADD KEY `orderdetails_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_invoice_unique` (`invoice`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `temporders`
--
ALTER TABLE `temporders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temporders_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temporders`
--
ALTER TABLE `temporders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temporders`
--
ALTER TABLE `temporders`
  ADD CONSTRAINT `temporders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
