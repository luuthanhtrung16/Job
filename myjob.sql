-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2018 at 10:18 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_12_26_065823_create_nguoidung_table', 1),
(11, '2018_12_26_084522_create_hosoungvien_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vp_hosoungvien`
--

CREATE TABLE `vp_hosoungvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_vitriungtuyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_trinhdohocvan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_sonamkinhnghiem` int(11) NOT NULL,
  `hs_quoctich` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_tinhtp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_quanhuyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_tinhtranghonnhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nd_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vp_nguoidung`
--

CREATE TABLE `vp_nguoidung` (
  `id` int(10) UNSIGNED NOT NULL,
  `nd_hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nd_ngaysinh` date NOT NULL,
  `nd_gioitinh` int(11) NOT NULL,
  `nd_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nd_phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nd_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nd_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nd_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_hosoungvien_nd_id_foreign` (`nd_id`);

--
-- Indexes for table `vp_nguoidung`
--
ALTER TABLE `vp_nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vp_nguoidung_nd_email_unique` (`nd_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_nguoidung`
--
ALTER TABLE `vp_nguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  ADD CONSTRAINT `vp_hosoungvien_nd_id_foreign` FOREIGN KEY (`nd_id`) REFERENCES `vp_nguoidung` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
