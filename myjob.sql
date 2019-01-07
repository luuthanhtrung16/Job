-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 07, 2019 lúc 10:03 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myjob`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2018_12_27_025542_create_congviecmongmuon_table', 3),
(20, '2018_12_27_025608_create_kinhnghiemlamviec_table', 3),
(21, '2018_12_27_030007_create_vieclamdaungtuyen_table', 3),
(24, '2018_12_27_031831_create_congty_table', 3),
(301, '2014_10_12_000000_create_users_table', 4),
(302, '2014_10_12_100000_create_password_resets_table', 4),
(303, '2018_12_26_065823_create_nguoidung_table', 4),
(304, '2018_12_26_084522_create_hosoungvien_table', 4),
(305, '2018_12_27_013850_create-bangcap-table', 4),
(306, '2018_12_27_025444_create_kynang_table', 4),
(307, '2018_12_27_031553_create_vieclamdaluu_table', 4),
(308, '2018_12_27_031751_create_hosocongty_table', 4),
(309, '2018_12_27_031946_create_capbac_table', 4),
(310, '2018_12_27_032007_create_loaihinh_table', 4),
(311, '2018_12_27_034948_create_nganhnghe_table', 4),
(312, '2018_12_27_035057_create_comment_table', 4),
(313, '2018_12_27_035132_create_chitietnganh_table', 4),
(314, '2018_12_27_035250_create_baiviettuyendung_table', 5),
(315, '2018_12_27_035345_create_thanhpho_table', 5),
(316, '2018_12_27_071337_create_ngoaingu_table', 5),
(317, '2018_12_27_071413_create_chuyenmon_table', 5),
(318, '2018_12_27_071442_create_tinhocvanphong_table', 5),
(319, '2018_12_28_033609_create_congviecmongmuon_table', 5),
(320, '2018_12_28_040242_create_kinhnghiemlamviec_table', 5),
(321, '2018_12_28_074310_create_congty_table', 5),
(322, '2018_12_28_092757_create_lienhecongty_table', 5),
(323, '2019_01_07_042245_create-bvtuyendung-table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Cấu trúc bảng cho bảng `vp_baiviettuyendung`
--

CREATE TABLE `vp_baiviettuyendung` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_bangcap`
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
-- Cấu trúc bảng cho bảng `vp_bvtuyendung`
--

CREATE TABLE `vp_bvtuyendung` (
  `id` int(10) UNSIGNED NOT NULL,
  `bv_tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_noidungtieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_noidungtuyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_tentp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_diadiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_soluongtuyen` int(11) NOT NULL,
  `bv_mucluong` int(11) NOT NULL,
  `cb_id` int(10) UNSIGNED DEFAULT NULL,
  `lh_id` int(10) UNSIGNED DEFAULT NULL,
  `ct_id` int(10) UNSIGNED DEFAULT NULL,
  `bc_id` int(10) UNSIGNED DEFAULT NULL,
  `bv_mota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_gioitinh` int(11) NOT NULL,
  `bv_quyenloi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_kinhnghiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_hannophs` date NOT NULL,
  `bv_ngonnguvieths` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_yeucaucv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_yeucauhs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lhcty_id` int(10) UNSIGNED DEFAULT NULL,
  `bv_nguoidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bv_luotxem` int(11) NOT NULL,
  `bv_noibat` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_capbac`
--

CREATE TABLE `vp_capbac` (
  `id` int(10) UNSIGNED NOT NULL,
  `cb_tencapbac` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_chitietnganh`
--

CREATE TABLE `vp_chitietnganh` (
  `id` int(10) UNSIGNED NOT NULL,
  `nn_id` int(10) UNSIGNED DEFAULT NULL,
  `ct_tennganh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_tennganhslug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_tenthanhpho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_luong` int(11) NOT NULL,
  `ct_ngaydang` date NOT NULL,
  `ct_thoigianhethan` date NOT NULL,
  `ct_noibat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_luotxem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_chuyenmon`
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
-- Cấu trúc bảng cho bảng `vp_comment`
--

CREATE TABLE `vp_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_congty`
--

CREATE TABLE `vp_congty` (
  `id` int(10) UNSIGNED NOT NULL,
  `cty_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_tencongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_tinhtp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_quymocongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_mota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_linkwebsite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_phone` int(11) NOT NULL,
  `cty_fax` int(11) NOT NULL,
  `cty_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cty_giayphepkinhdoanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_congviecmongmuon`
--

CREATE TABLE `vp_congviecmongmuon` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `cvmm_noilamviec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_id` int(10) UNSIGNED DEFAULT NULL,
  `lh_id` int(10) UNSIGNED DEFAULT NULL,
  `cb_id` int(10) UNSIGNED DEFAULT NULL,
  `cvmm_mucluong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvmm_muctieunghenghiep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_hosocongty`
--

CREATE TABLE `vp_hosocongty` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_hosoungvien`
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
-- Cấu trúc bảng cho bảng `vp_knlamviec`
--

CREATE TABLE `vp_knlamviec` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `knlv_chucdanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `knlv_congty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `knlv_motacongviec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `knlv_thoigianbd` date NOT NULL,
  `knlv_thoigiankt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_kynang`
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
-- Cấu trúc bảng cho bảng `vp_lienhecty`
--

CREATE TABLE `vp_lienhecty` (
  `id` int(10) UNSIGNED NOT NULL,
  `cty_id` int(10) UNSIGNED DEFAULT NULL,
  `lhe_nguoilienhe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lhe_phone` int(11) NOT NULL,
  `lhe_chucvu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lhe_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_loaihinh`
--

CREATE TABLE `vp_loaihinh` (
  `id` int(10) UNSIGNED NOT NULL,
  `lh_tenloaihinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lh_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_nganhnghe`
--

CREATE TABLE `vp_nganhnghe` (
  `id` int(10) UNSIGNED NOT NULL,
  `nn_tennganhnghe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_ngoaingu`
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
-- Cấu trúc bảng cho bảng `vp_nguoidung`
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
-- Cấu trúc bảng cho bảng `vp_thanhpho`
--

CREATE TABLE `vp_thanhpho` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_tinhocvanphong`
--

CREATE TABLE `vp_tinhocvanphong` (
  `id` int(10) UNSIGNED NOT NULL,
  `hs_id` int(10) UNSIGNED DEFAULT NULL,
  `th_tenloaitinhoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capdo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_vieclamdaluu`
--

CREATE TABLE `vp_vieclamdaluu` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vp_baiviettuyendung`
--
ALTER TABLE `vp_baiviettuyendung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_bangcap`
--
ALTER TABLE `vp_bangcap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_bangcap_hs_id_foreign` (`hs_id`);

--
-- Chỉ mục cho bảng `vp_bvtuyendung`
--
ALTER TABLE `vp_bvtuyendung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_bvtuyendung_cb_id_foreign` (`cb_id`),
  ADD KEY `vp_bvtuyendung_lh_id_foreign` (`lh_id`),
  ADD KEY `vp_bvtuyendung_ct_id_foreign` (`ct_id`),
  ADD KEY `vp_bvtuyendung_bc_id_foreign` (`bc_id`),
  ADD KEY `vp_bvtuyendung_lhcty_id_foreign` (`lhcty_id`);

--
-- Chỉ mục cho bảng `vp_capbac`
--
ALTER TABLE `vp_capbac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_chitietnganh`
--
ALTER TABLE `vp_chitietnganh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_chitietnganh_nn_id_foreign` (`nn_id`);

--
-- Chỉ mục cho bảng `vp_chuyenmon`
--
ALTER TABLE `vp_chuyenmon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_chuyenmon_hs_id_foreign` (`hs_id`);

--
-- Chỉ mục cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_congty`
--
ALTER TABLE `vp_congty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vp_congty_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vp_congviecmongmuon`
--
ALTER TABLE `vp_congviecmongmuon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_congviecmongmuon_hs_id_foreign` (`hs_id`),
  ADD KEY `vp_congviecmongmuon_ct_id_foreign` (`ct_id`),
  ADD KEY `vp_congviecmongmuon_lh_id_foreign` (`lh_id`),
  ADD KEY `vp_congviecmongmuon_cb_id_foreign` (`cb_id`);

--
-- Chỉ mục cho bảng `vp_hosocongty`
--
ALTER TABLE `vp_hosocongty`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_hosoungvien_nd_id_foreign` (`nd_id`);

--
-- Chỉ mục cho bảng `vp_knlamviec`
--
ALTER TABLE `vp_knlamviec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_knlamviec_hs_id_foreign` (`hs_id`);

--
-- Chỉ mục cho bảng `vp_kynang`
--
ALTER TABLE `vp_kynang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_kynang_hs_id_foreign` (`hs_id`);

--
-- Chỉ mục cho bảng `vp_lienhecty`
--
ALTER TABLE `vp_lienhecty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_lienhecty_cty_id_foreign` (`cty_id`);

--
-- Chỉ mục cho bảng `vp_loaihinh`
--
ALTER TABLE `vp_loaihinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_nganhnghe`
--
ALTER TABLE `vp_nganhnghe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_ngoaingu`
--
ALTER TABLE `vp_ngoaingu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_ngoaingu_hs_id_foreign` (`hs_id`);

--
-- Chỉ mục cho bảng `vp_nguoidung`
--
ALTER TABLE `vp_nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vp_nguoidung_nd_email_unique` (`nd_email`);

--
-- Chỉ mục cho bảng `vp_thanhpho`
--
ALTER TABLE `vp_thanhpho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vp_tinhocvanphong`
--
ALTER TABLE `vp_tinhocvanphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_tinhocvanphong_hs_id_foreign` (`hs_id`);

--
-- Chỉ mục cho bảng `vp_vieclamdaluu`
--
ALTER TABLE `vp_vieclamdaluu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_baiviettuyendung`
--
ALTER TABLE `vp_baiviettuyendung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_bangcap`
--
ALTER TABLE `vp_bangcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_bvtuyendung`
--
ALTER TABLE `vp_bvtuyendung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_capbac`
--
ALTER TABLE `vp_capbac`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_chitietnganh`
--
ALTER TABLE `vp_chitietnganh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_chuyenmon`
--
ALTER TABLE `vp_chuyenmon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_congty`
--
ALTER TABLE `vp_congty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_congviecmongmuon`
--
ALTER TABLE `vp_congviecmongmuon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_hosocongty`
--
ALTER TABLE `vp_hosocongty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_knlamviec`
--
ALTER TABLE `vp_knlamviec`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_kynang`
--
ALTER TABLE `vp_kynang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_lienhecty`
--
ALTER TABLE `vp_lienhecty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_loaihinh`
--
ALTER TABLE `vp_loaihinh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_nganhnghe`
--
ALTER TABLE `vp_nganhnghe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_ngoaingu`
--
ALTER TABLE `vp_ngoaingu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_nguoidung`
--
ALTER TABLE `vp_nguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_thanhpho`
--
ALTER TABLE `vp_thanhpho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_tinhocvanphong`
--
ALTER TABLE `vp_tinhocvanphong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_vieclamdaluu`
--
ALTER TABLE `vp_vieclamdaluu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `vp_bangcap`
--
ALTER TABLE `vp_bangcap`
  ADD CONSTRAINT `vp_bangcap_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_hosoungvien` (`id`);

--
-- Các ràng buộc cho bảng `vp_bvtuyendung`
--
ALTER TABLE `vp_bvtuyendung`
  ADD CONSTRAINT `vp_bvtuyendung_bc_id_foreign` FOREIGN KEY (`bc_id`) REFERENCES `vp_bangcap` (`id`),
  ADD CONSTRAINT `vp_bvtuyendung_cb_id_foreign` FOREIGN KEY (`cb_id`) REFERENCES `vp_capbac` (`id`),
  ADD CONSTRAINT `vp_bvtuyendung_ct_id_foreign` FOREIGN KEY (`ct_id`) REFERENCES `vp_congty` (`id`),
  ADD CONSTRAINT `vp_bvtuyendung_lh_id_foreign` FOREIGN KEY (`lh_id`) REFERENCES `vp_loaihinh` (`id`),
  ADD CONSTRAINT `vp_bvtuyendung_lhcty_id_foreign` FOREIGN KEY (`lhcty_id`) REFERENCES `vp_lienhecty` (`id`);

--
-- Các ràng buộc cho bảng `vp_chitietnganh`
--
ALTER TABLE `vp_chitietnganh`
  ADD CONSTRAINT `vp_chitietnganh_nn_id_foreign` FOREIGN KEY (`nn_id`) REFERENCES `vp_nganhnghe` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_chuyenmon`
--
ALTER TABLE `vp_chuyenmon`
  ADD CONSTRAINT `vp_chuyenmon_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_kynang` (`id`);

--
-- Các ràng buộc cho bảng `vp_congviecmongmuon`
--
ALTER TABLE `vp_congviecmongmuon`
  ADD CONSTRAINT `vp_congviecmongmuon_cb_id_foreign` FOREIGN KEY (`cb_id`) REFERENCES `vp_capbac` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vp_congviecmongmuon_ct_id_foreign` FOREIGN KEY (`ct_id`) REFERENCES `vp_chitietnganh` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vp_congviecmongmuon_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_hosoungvien` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vp_congviecmongmuon_lh_id_foreign` FOREIGN KEY (`lh_id`) REFERENCES `vp_loaihinh` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_hosoungvien`
--
ALTER TABLE `vp_hosoungvien`
  ADD CONSTRAINT `vp_hosoungvien_nd_id_foreign` FOREIGN KEY (`nd_id`) REFERENCES `vp_nguoidung` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_knlamviec`
--
ALTER TABLE `vp_knlamviec`
  ADD CONSTRAINT `vp_knlamviec_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_hosoungvien` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_kynang`
--
ALTER TABLE `vp_kynang`
  ADD CONSTRAINT `vp_kynang_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_hosoungvien` (`id`);

--
-- Các ràng buộc cho bảng `vp_lienhecty`
--
ALTER TABLE `vp_lienhecty`
  ADD CONSTRAINT `vp_lienhecty_cty_id_foreign` FOREIGN KEY (`cty_id`) REFERENCES `vp_congty` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_ngoaingu`
--
ALTER TABLE `vp_ngoaingu`
  ADD CONSTRAINT `vp_ngoaingu_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_kynang` (`id`);

--
-- Các ràng buộc cho bảng `vp_tinhocvanphong`
--
ALTER TABLE `vp_tinhocvanphong`
  ADD CONSTRAINT `vp_tinhocvanphong_hs_id_foreign` FOREIGN KEY (`hs_id`) REFERENCES `vp_kynang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
