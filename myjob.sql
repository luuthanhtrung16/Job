-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2018 at 09:12 AM
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
(19, '2018_12_27_025542_create_congviecmongmuon_table', 3),
(20, '2018_12_27_025608_create_kinhnghiemlamviec_table', 3),
(21, '2018_12_27_030007_create_vieclamdaungtuyen_table', 3),
(22, '2018_12_27_031553_create_vieclamdaluu_table', 3),
(23, '2018_12_27_031751_create_hosocongty_table', 3),
(24, '2018_12_27_031831_create_congty_table', 3),
(25, '2018_12_27_031852_create_lienhecongty_table', 3),
(26, '2018_12_27_031946_create_capbac_table', 3),
(27, '2018_12_27_032007_create_loaihinh_table', 3),
(28, '2018_12_27_034948_create_nganhnghe_table', 3),
(29, '2018_12_27_035057_create_comment_table', 3),
(30, '2018_12_27_035132_create_chitietnganh_table', 3),
(31, '2018_12_27_035250_create_baiviettuyendung_table', 3),
(32, '2018_12_27_035345_create_thanhpho_table', 3),
(39, '2014_10_12_000000_create_users_table', 4),
(40, '2014_10_12_100000_create_password_resets_table', 4),
(41, '2018_12_26_065823_create_nguoidung_table', 4),
(42, '2018_12_26_084522_create_hosoungvien_table', 4),
(43, '2018_12_27_013850_create-bangcap-table', 4),
(44, '2018_12_27_025444_create_kynang_table', 4),
(45, '2018_12_27_071337_create_ngoaingu_table', 5),
(46, '2018_12_27_071413_create_chuyenmon_table', 5),
(47, '2018_12_27_071442_create_tinhocvanphong_table', 5);

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
-- Table structure for table `vp_bangcap`
--

CREATE TABLE `vp_bangcap` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `bc_truong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bc_khoa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bc_tenbangcap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bc_chuyennganh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bc_xeploai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bc_thoigiannhaphoc` date NOT NULL,
  `bc_thoigianketthuc` date NOT NULL,
  `bc_thongtinbosung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vp_chuyenmon`
--

CREATE TABLE `vp_chuyenmon` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `cm_tenchuyenmon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `vp_kynang`
--

CREATE TABLE `vp_kynang` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `kn_motachuyenmon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vp_ngoaingu`
--

CREATE TABLE `vp_ngoaingu` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `nn_tenngoaingu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nn_capdo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `vp_tinhocvanphong`
--

CREATE TABLE `vp_tinhocvanphong` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `th_tenloaitinhoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capdo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for table `vp_bangcap`
--
ALTER TABLE `vp_bangcap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_bangcap_hs_id_foreign` (`hs_id`);

--
-- Indexes for table `vp_chuyenmon`
--
ALTER TABLE `vp_chuyenmon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_chuyenmon_hs_id_foreign` (`hs_id`);

--
-- Indexes for table `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_hosoungvien_nd_id_foreign` (`nd_id`);

--
-- Indexes for table `vp_kynang`
--
ALTER TABLE `vp_kynang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_kynang_hs_id_foreign` (`hs_id`);

--
-- Indexes for table `vp_ngoaingu`
--
ALTER TABLE `vp_ngoaingu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_ngoaingu_hs_id_foreign` (`hs_id`);

--
-- Indexes for table `vp_nguoidung`
--
ALTER TABLE `vp_nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vp_nguoidung_nd_email_unique` (`nd_email`);

--
-- Indexes for table `vp_tinhocvanphong`
--
ALTER TABLE `vp_tinhocvanphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_tinhocvanphong_hs_id_foreign` (`hs_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_bangcap`
--
ALTER TABLE `vp_bangcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_chuyenmon`
--
ALTER TABLE `vp_chuyenmon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_kynang`
--
ALTER TABLE `vp_kynang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_ngoaingu`
--
ALTER TABLE `vp_ngoaingu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_nguoidung`
--
ALTER TABLE `vp_nguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_tinhocvanphong`
--
ALTER TABLE `vp_tinhocvanphong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vp_bangcap`
--
ALTER TABLE `vp_bangcap`
  ADD CONSTRAINT `vp_bangcap_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_hosoungvien` (`id`);

--
-- Constraints for table `vp_chuyenmon`
--
ALTER TABLE `vp_chuyenmon`
  ADD CONSTRAINT `vp_chuyenmon_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_kynang` (`id`);

--
-- Constraints for table `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  ADD CONSTRAINT `vp_hosoungvien_nd_id_foreign` FOREIGN KEY (`nd_id`) REFERENCES `vp_nguoidung` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vp_kynang`
--
ALTER TABLE `vp_kynang`
  ADD CONSTRAINT `vp_kynang_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_hosoungvien` (`id`);

--
-- Constraints for table `vp_ngoaingu`
--
ALTER TABLE `vp_ngoaingu`
  ADD CONSTRAINT `vp_ngoaingu_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_kynang` (`id`);

--
-- Constraints for table `vp_tinhocvanphong`
--
ALTER TABLE `vp_tinhocvanphong`
  ADD CONSTRAINT `vp_tinhocvanphong_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_kynang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
