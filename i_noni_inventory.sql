-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2026 pada 07.35
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
-- Database: `i_noni_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add jenis barang', 7, 'add_jenisbarang'),
(26, 'Can change jenis barang', 7, 'change_jenisbarang'),
(27, 'Can delete jenis barang', 7, 'delete_jenisbarang'),
(28, 'Can view jenis barang', 7, 'view_jenisbarang'),
(29, 'Can add karyawan', 8, 'add_karyawan'),
(30, 'Can change karyawan', 8, 'change_karyawan'),
(31, 'Can delete karyawan', 8, 'delete_karyawan'),
(32, 'Can view karyawan', 8, 'view_karyawan'),
(33, 'Can add kelompok barang', 9, 'add_kelompokbarang'),
(34, 'Can change kelompok barang', 9, 'change_kelompokbarang'),
(35, 'Can delete kelompok barang', 9, 'delete_kelompokbarang'),
(36, 'Can view kelompok barang', 9, 'view_kelompokbarang'),
(37, 'Can add zona', 10, 'add_zona'),
(38, 'Can change zona', 10, 'change_zona'),
(39, 'Can delete zona', 10, 'delete_zona'),
(40, 'Can view zona', 10, 'view_zona'),
(41, 'Can add sub jenis barang', 11, 'add_subjenisbarang'),
(42, 'Can change sub jenis barang', 11, 'change_subjenisbarang'),
(43, 'Can delete sub jenis barang', 11, 'delete_subjenisbarang'),
(44, 'Can view sub jenis barang', 11, 'view_subjenisbarang'),
(45, 'Can add ruang', 12, 'add_ruang'),
(46, 'Can change ruang', 12, 'change_ruang'),
(47, 'Can delete ruang', 12, 'delete_ruang'),
(48, 'Can view ruang', 12, 'view_ruang'),
(49, 'Can add barang', 13, 'add_barang'),
(50, 'Can change barang', 13, 'change_barang'),
(51, 'Can delete barang', 13, 'delete_barang'),
(52, 'Can view barang', 13, 'view_barang'),
(53, 'Can add log inventarisasi', 14, 'add_loginventarisasi'),
(54, 'Can change log inventarisasi', 14, 'change_loginventarisasi'),
(55, 'Can delete log inventarisasi', 14, 'delete_loginventarisasi'),
(56, 'Can view log inventarisasi', 14, 'view_loginventarisasi'),
(57, 'Can add limbah', 15, 'add_limbah'),
(58, 'Can change limbah', 15, 'change_limbah'),
(59, 'Can delete limbah', 15, 'delete_limbah'),
(60, 'Can view limbah', 15, 'view_limbah'),
(61, 'Can add user profile', 16, 'add_userprofile'),
(62, 'Can change user profile', 16, 'change_userprofile'),
(63, 'Can delete user profile', 16, 'delete_userprofile'),
(64, 'Can view user profile', 16, 'view_userprofile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$4W284mHPyABZoQGka3LJOH$y5OCnMpZobbdTvMZabLpD44mRenTh5F0+weNoib4tf0=', '2026-02-20 06:19:05.959093', 0, 'bidangumum', 'Bidang Umum', '', 'bidangumum@example.com', 0, 1, '2026-02-19 15:21:38.613501'),
(2, 'pbkdf2_sha256$600000$WFO2ImYI2FJl6yYhqaffHe$bc8DpYptYkgBCi5mXoDywEE4Z2s2bYsKvSLWhcmsNEc=', '2026-02-19 15:24:11.407819', 0, 'koordinator', 'Koordinator Tim', '', 'koordinator@example.com', 0, 1, '2026-02-19 15:21:38.868769'),
(3, 'pbkdf2_sha256$600000$MpCjTjprRigOwk0y0FNSxX$mFsPJNOz+tWLIhsIskLHoYgyGKOxBUTYyBgbdft6jkM=', NULL, 0, 'tim', 'Tim Inventarisasi', '', 'tim@example.com', 0, 1, '2026-02-19 15:21:39.111897');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_inventaris` varchar(100) NOT NULL,
  `sub_jenis_id` int(11) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `tipe_model` varchar(100) DEFAULT NULL,
  `nomor_seri` varchar(100) DEFAULT NULL,
  `spesifikasi` text DEFAULT NULL,
  `zona_id` int(11) NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `pic_nid` varchar(20) DEFAULT NULL,
  `tanggal_terima` date NOT NULL,
  `harga_perolehan` decimal(15,2) DEFAULT NULL,
  `kondisi` enum('Baik','Rusak Ringan','Rusak Berat','Hilang') NOT NULL,
  `status` enum('Aktif','Tidak Aktif','Dalam Perbaikan','Disposal') NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_barang`
--

CREATE TABLE `barang_barang` (
  `id` bigint(20) NOT NULL,
  `kode_barcode` varchar(100) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `harga` decimal(15,2) NOT NULL,
  `tahun` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `pic_id` bigint(20) DEFAULT NULL,
  `ruang_id` bigint(20) NOT NULL,
  `subjenis_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang_barang`
--

INSERT INTO `barang_barang` (`id`, `kode_barcode`, `nama_barang`, `tanggal_terima`, `harga`, `tahun`, `foto`, `pic_id`, `ruang_id`, `subjenis_id`) VALUES
(5, 'KP01/J01/0001/2022/R001', 'Voltage Detector', '2022-01-01', 120000.00, 2022, '', 1, 1, 2),
(6, 'KP01/J01/0001/2026/R001', 'Laptop Asus', '2026-02-19', 10000000.00, 2026, 'foto_barang/utm_ptpfKeN.jpeg', 2, 2, 2),
(7, 'KP01/J01/0001/2026/R002', 'PC', '2026-02-19', 10000000.00, 2026, 'foto_barang/utm_qsQ6bLV.jpeg', 2, 2, 2),
(8, 'KP01/J01/0001/2025/R003', 'Meja', '2026-02-10', 120000.00, 2025, 'foto_barang/utm_zNnjGqJ.jpeg', 3, 3, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'barang', 'barang'),
(5, 'contenttypes', 'contenttype'),
(15, 'inventaris', 'limbah'),
(14, 'inventaris', 'loginventarisasi'),
(7, 'master_data', 'jenisbarang'),
(8, 'master_data', 'karyawan'),
(9, 'master_data', 'kelompokbarang'),
(12, 'master_data', 'ruang'),
(11, 'master_data', 'subjenisbarang'),
(10, 'master_data', 'zona'),
(6, 'sessions', 'session'),
(16, 'user_management', 'userprofile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-02-19 15:09:46.525495'),
(2, 'auth', '0001_initial', '2026-02-19 15:09:46.843684'),
(3, 'admin', '0001_initial', '2026-02-19 15:09:46.917297'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-02-19 15:09:46.923304'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-02-19 15:09:46.929208'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-02-19 15:09:46.985521'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-02-19 15:09:47.025043'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-02-19 15:09:47.034558'),
(9, 'auth', '0004_alter_user_username_opts', '2026-02-19 15:09:47.040989'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-02-19 15:09:47.078368'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-02-19 15:09:47.082138'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-02-19 15:09:47.088897'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-02-19 15:09:47.097891'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-02-19 15:09:47.113839'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-02-19 15:09:47.123863'),
(16, 'auth', '0011_update_proxy_permissions', '2026-02-19 15:09:47.129310'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-02-19 15:09:47.137725'),
(18, 'master_data', '0001_initial', '2026-02-19 15:09:47.307716'),
(19, 'barang', '0001_initial', '2026-02-19 15:09:47.426062'),
(20, 'barang', '0002_alter_barang_kode_barcode', '2026-02-19 15:09:47.430596'),
(21, 'barang', '0003_alter_barang_id', '2026-02-19 15:09:47.477608'),
(22, 'master_data', '0002_zona_kode_zona_alter_jenisbarang_id_and_more', '2026-02-19 15:09:50.602100'),
(23, 'inventaris', '0001_initial', '2026-02-19 15:09:50.778359'),
(24, 'sessions', '0001_initial', '2026-02-19 15:09:50.799880'),
(25, 'user_management', '0001_initial', '2026-02-19 15:09:50.858699'),
(26, 'user_management', '0002_alter_userprofile_role', '2026-02-19 15:09:50.865499');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9pwvcrtkugqc3kr266u0e8532oehbwjs', '.eJxVzM0OwiAQBOB32bMhQCvQHr37DISfXYsaMNAmGuO72ya99DrzzXzBNmwtlWzx_Ur1A6OWnJ_AumWe7NKw2hRhBAGHzLvwwLwV8e7yrbBQ8lyTZxthe9vYtUR8XnZ7OJhcm9a1Jj4YH8j4KJU8k9fc91JEFKETeqBOqR4RjVLKSYq48lWEMEQiaboAvz-boEB9:1vtJqz:rpMFTRJ7gRv2CGTXaicRfQkSnuAAXOiOdhMNa85afBo', '2026-02-20 08:19:05.964050'),
('u3soxwlr0bcem260yfe4mh1c6283ypth', '.eJxVzM0OwiAQBOB32bMhQCvQHr37DISfXYsaMNAmGuO72ya99DrzzXzBNmwtlWzx_Ur1A6OWnJ_AumWe7NKw2hRhBAGHzLvwwLwV8e7yrbBQ8lyTZxthe9vYtUR8XnZ7OJhcm9a1Jj4YH8j4KJU8k9fc91JEFKETeqBOqR4RjVLKSYq48lWEMEQiaboAvz-boEB9:1vtHk3:IPCJ-ofXXaA6R-nD3D9OMbFrq5Dr8OCFFThxINkgHfI', '2026-02-20 06:03:47.790523'),
('yu28yq4no0xradbn31qe95j0r1knt62g', '.eJxVzM0OwiAQBOB32bMhQCvQHr37DISfXYsaMNAmGuO72ya99DrzzXzBNmwtlWzx_Ur1A6OWnJ_AumWe7NKw2hRhBAGHzLvwwLwV8e7yrbBQ8lyTZxthe9vYtUR8XnZ7OJhcm9a1Jj4YH8j4KJU8k9fc91JEFKETeqBOqR4RjVLKSYq48lWEMEQiaboAvz-boEB9:1vt5ti:bPUx1ZWPEk5_so6IjHXiiHa1Xv3kmQ7B2qTU0ZpThO4', '2026-02-19 17:24:58.381877');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris_limbah`
--

CREATE TABLE `inventaris_limbah` (
  `id` bigint(20) NOT NULL,
  `tanggal_limbah` date NOT NULL,
  `alasan` longtext NOT NULL,
  `status_disposal` varchar(20) NOT NULL,
  `tanggal_diproses` date DEFAULT NULL,
  `barang_id` bigint(20) NOT NULL,
  `diproses_oleh_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris_loginventarisasi`
--

CREATE TABLE `inventaris_loginventarisasi` (
  `id` bigint(20) NOT NULL,
  `tanggal_scan` datetime(6) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `catatan` longtext NOT NULL,
  `barang_id` bigint(20) NOT NULL,
  `ruang_ditemukan_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inventaris_loginventarisasi`
--

INSERT INTO `inventaris_loginventarisasi` (`id`, `tanggal_scan`, `kondisi`, `catatan`, `barang_id`, `ruang_ditemukan_id`, `user_id`) VALUES
(5, '2026-02-19 15:21:39.367123', 'rusak_ringan', 'Sample log 5 - rusak_ringan', 5, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id` int(11) NOT NULL,
  `kelompok_id` int(11) NOT NULL,
  `kode_jenis` varchar(10) NOT NULL,
  `nama_jenis` varchar(150) NOT NULL,
  `urutan` int(11) DEFAULT 0,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nid` varchar(20) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `departemen` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_barang`
--

CREATE TABLE `kelompok_barang` (
  `id` int(11) NOT NULL,
  `kode_kelompok` varchar(10) NOT NULL,
  `nama_kelompok` varchar(150) NOT NULL,
  `urutan` int(11) DEFAULT 0,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_jenisbarang`
--

CREATE TABLE `master_data_jenisbarang` (
  `id` bigint(20) NOT NULL,
  `kode_jenis` varchar(10) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL,
  `kelompok_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_data_jenisbarang`
--

INSERT INTO `master_data_jenisbarang` (`id`, `kode_jenis`, `nama_jenis`, `kelompok_id`) VALUES
(1, 'J01', 'Alat Ukur', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_karyawan`
--

CREATE TABLE `master_data_karyawan` (
  `id` bigint(20) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_data_karyawan`
--

INSERT INTO `master_data_karyawan` (`id`, `nid`, `nama`, `jabatan`) VALUES
(1, 'K001', 'Andi Wijaya', 'Teknisi'),
(2, '2001', 'Vrilla', 'Staff'),
(3, '2002', 'Syafii', 'Staff');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_kelompokbarang`
--

CREATE TABLE `master_data_kelompokbarang` (
  `id` bigint(20) NOT NULL,
  `kode_kelompok` varchar(10) NOT NULL,
  `nama_kelompok` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_data_kelompokbarang`
--

INSERT INTO `master_data_kelompokbarang` (`id`, `kode_kelompok`, `nama_kelompok`) VALUES
(1, 'KP01', 'Peralatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_ruang`
--

CREATE TABLE `master_data_ruang` (
  `id` bigint(20) NOT NULL,
  `kode_ruang` varchar(20) NOT NULL,
  `nama_ruang` varchar(100) NOT NULL,
  `pic_id` bigint(20) DEFAULT NULL,
  `zona_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_data_ruang`
--

INSERT INTO `master_data_ruang` (`id`, `kode_ruang`, `nama_ruang`, `pic_id`, `zona_id`) VALUES
(1, 'R001', 'Gudang A', 1, 1),
(2, 'R002', 'Umum', 1, 2),
(3, 'R003', 'Jiire', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_subjenisbarang`
--

CREATE TABLE `master_data_subjenisbarang` (
  `id` bigint(20) NOT NULL,
  `kode_subjenis` varchar(10) NOT NULL,
  `nama_subjenis` varchar(100) NOT NULL,
  `jenis_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_data_subjenisbarang`
--

INSERT INTO `master_data_subjenisbarang` (`id`, `kode_subjenis`, `nama_subjenis`, `jenis_id`) VALUES
(1, 'SJ01', 'Multimeter', 1),
(2, 'SJ02', 'Clamp Meter', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_zona`
--

CREATE TABLE `master_data_zona` (
  `id` bigint(20) NOT NULL,
  `nama_zona` varchar(100) NOT NULL,
  `kode_zona` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `master_data_zona`
--

INSERT INTO `master_data_zona` (`id`, `nama_zona`, `kode_zona`) VALUES
(1, 'Zona A', 'Z001'),
(2, 'Zona B', 'Z002'),
(3, 'Zona C', 'Z003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id` int(11) NOT NULL,
  `kode_ruang` varchar(10) NOT NULL,
  `nama_ruang` varchar(100) NOT NULL,
  `zona_id` int(11) NOT NULL,
  `pic_nid` varchar(20) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_jenis_barang`
--

CREATE TABLE `sub_jenis_barang` (
  `id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `kode_sub_jenis` varchar(10) NOT NULL,
  `nama_sub_jenis` varchar(150) NOT NULL,
  `spesifikasi_default` text DEFAULT NULL,
  `satuan` varchar(50) DEFAULT 'Unit',
  `estimasi_umur_pakai` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT 0,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('timinventarisasi','koordtiminventarisasi','bidangumum') NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_management_userprofile`
--

CREATE TABLE `user_management_userprofile` (
  `id` bigint(20) NOT NULL,
  `role` varchar(30) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_management_userprofile`
--

INSERT INTO `user_management_userprofile` (`id`, `role`, `nid`, `phone`, `user_id`) VALUES
(1, 'bidangumum', '', '', 1),
(2, 'koordtiminventarisasi', '', '', 2),
(3, 'timinventarisasi', '', '', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `zona`
--

CREATE TABLE `zona` (
  `id` int(11) NOT NULL,
  `kode_zona` varchar(10) NOT NULL,
  `nama_zona` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_inventaris` (`kode_inventaris`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `idx_barang_ruang` (`ruang_id`),
  ADD KEY `idx_barang_zona` (`zona_id`),
  ADD KEY `idx_barang_subjenis` (`sub_jenis_id`),
  ADD KEY `idx_barang_pic` (`pic_nid`),
  ADD KEY `idx_barang_deleted` (`deleted_at`);

--
-- Indeks untuk tabel `barang_barang`
--
ALTER TABLE `barang_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barcode` (`kode_barcode`),
  ADD KEY `barang_barang_pic_id_41051ac9_fk` (`pic_id`),
  ADD KEY `barang_barang_ruang_id_f97e4d49_fk` (`ruang_id`),
  ADD KEY `barang_barang_subjenis_id_65cc9a9f_fk` (`subjenis_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `inventaris_limbah`
--
ALTER TABLE `inventaris_limbah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barang_id` (`barang_id`),
  ADD KEY `inventaris_limbah_diproses_oleh_id_4f3c31a2_fk_auth_user_id` (`diproses_oleh_id`);

--
-- Indeks untuk tabel `inventaris_loginventarisasi`
--
ALTER TABLE `inventaris_loginventarisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventaris_loginvent_barang_id_ecb70e94_fk_barang_ba` (`barang_id`),
  ADD KEY `inventaris_loginvent_ruang_ditemukan_id_6e5f49c0_fk_master_da` (`ruang_ditemukan_id`),
  ADD KEY `inventaris_loginventarisasi_user_id_c92cc54c_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_jenis` (`kode_jenis`),
  ADD KEY `kelompok_id` (`kelompok_id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nid`);

--
-- Indeks untuk tabel `kelompok_barang`
--
ALTER TABLE `kelompok_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_kelompok` (`kode_kelompok`);

--
-- Indeks untuk tabel `master_data_jenisbarang`
--
ALTER TABLE `master_data_jenisbarang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_data_jenisbarang_kode_jenis_439a78ea_uniq` (`kode_jenis`),
  ADD KEY `master_data_jenisbarang_kelompok_id_720d053e_fk` (`kelompok_id`);

--
-- Indeks untuk tabel `master_data_karyawan`
--
ALTER TABLE `master_data_karyawan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_data_karyawan_nid_1ec9e8ba_uniq` (`nid`);

--
-- Indeks untuk tabel `master_data_kelompokbarang`
--
ALTER TABLE `master_data_kelompokbarang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_data_kelompokbarang_kode_kelompok_2c934106_uniq` (`kode_kelompok`);

--
-- Indeks untuk tabel `master_data_ruang`
--
ALTER TABLE `master_data_ruang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_data_ruang_kode_ruang_cac06641_uniq` (`kode_ruang`),
  ADD KEY `master_data_ruang_pic_id_395437b6_fk` (`pic_id`),
  ADD KEY `master_data_ruang_zona_id_32619584_fk` (`zona_id`);

--
-- Indeks untuk tabel `master_data_subjenisbarang`
--
ALTER TABLE `master_data_subjenisbarang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_data_subjenisbarang_kode_subjenis_0ea086ef_uniq` (`kode_subjenis`),
  ADD KEY `master_data_subjenisbarang_jenis_id_50a3ac5c_fk` (`jenis_id`);

--
-- Indeks untuk tabel `master_data_zona`
--
ALTER TABLE `master_data_zona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_zona` (`kode_zona`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_ruang` (`kode_ruang`),
  ADD KEY `zona_id` (`zona_id`);

--
-- Indeks untuk tabel `sub_jenis_barang`
--
ALTER TABLE `sub_jenis_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_sub_jenis` (`kode_sub_jenis`),
  ADD KEY `jenis_id` (`jenis_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `user_management_userprofile`
--
ALTER TABLE `user_management_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_zona` (`kode_zona`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `barang_barang`
--
ALTER TABLE `barang_barang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `inventaris_limbah`
--
ALTER TABLE `inventaris_limbah`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inventaris_loginventarisasi`
--
ALTER TABLE `inventaris_loginventarisasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelompok_barang`
--
ALTER TABLE `kelompok_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_data_jenisbarang`
--
ALTER TABLE `master_data_jenisbarang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_data_karyawan`
--
ALTER TABLE `master_data_karyawan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_data_kelompokbarang`
--
ALTER TABLE `master_data_kelompokbarang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `master_data_ruang`
--
ALTER TABLE `master_data_ruang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_data_subjenisbarang`
--
ALTER TABLE `master_data_subjenisbarang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_data_zona`
--
ALTER TABLE `master_data_zona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sub_jenis_barang`
--
ALTER TABLE `sub_jenis_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_management_userprofile`
--
ALTER TABLE `user_management_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `zona`
--
ALTER TABLE `zona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`sub_jenis_id`) REFERENCES `sub_jenis_barang` (`id`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`zona_id`) REFERENCES `zona` (`id`),
  ADD CONSTRAINT `barang_ibfk_3` FOREIGN KEY (`ruang_id`) REFERENCES `ruang` (`id`),
  ADD CONSTRAINT `barang_ibfk_4` FOREIGN KEY (`pic_nid`) REFERENCES `karyawan` (`nid`),
  ADD CONSTRAINT `barang_ibfk_5` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `barang_ibfk_6` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `barang_barang`
--
ALTER TABLE `barang_barang`
  ADD CONSTRAINT `barang_barang_pic_id_41051ac9_fk` FOREIGN KEY (`pic_id`) REFERENCES `master_data_karyawan` (`id`),
  ADD CONSTRAINT `barang_barang_ruang_id_f97e4d49_fk` FOREIGN KEY (`ruang_id`) REFERENCES `master_data_ruang` (`id`),
  ADD CONSTRAINT `barang_barang_subjenis_id_65cc9a9f_fk` FOREIGN KEY (`subjenis_id`) REFERENCES `master_data_subjenisbarang` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `inventaris_limbah`
--
ALTER TABLE `inventaris_limbah`
  ADD CONSTRAINT `inventaris_limbah_barang_id_c26893a8_fk_barang_barang_id` FOREIGN KEY (`barang_id`) REFERENCES `barang_barang` (`id`),
  ADD CONSTRAINT `inventaris_limbah_diproses_oleh_id_4f3c31a2_fk_auth_user_id` FOREIGN KEY (`diproses_oleh_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `inventaris_loginventarisasi`
--
ALTER TABLE `inventaris_loginventarisasi`
  ADD CONSTRAINT `inventaris_loginvent_barang_id_ecb70e94_fk_barang_ba` FOREIGN KEY (`barang_id`) REFERENCES `barang_barang` (`id`),
  ADD CONSTRAINT `inventaris_loginvent_ruang_ditemukan_id_6e5f49c0_fk_master_da` FOREIGN KEY (`ruang_ditemukan_id`) REFERENCES `master_data_ruang` (`id`),
  ADD CONSTRAINT `inventaris_loginventarisasi_user_id_c92cc54c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD CONSTRAINT `jenis_barang_ibfk_1` FOREIGN KEY (`kelompok_id`) REFERENCES `kelompok_barang` (`id`);

--
-- Ketidakleluasaan untuk tabel `master_data_jenisbarang`
--
ALTER TABLE `master_data_jenisbarang`
  ADD CONSTRAINT `master_data_jenisbarang_kelompok_id_720d053e_fk` FOREIGN KEY (`kelompok_id`) REFERENCES `master_data_kelompokbarang` (`id`);

--
-- Ketidakleluasaan untuk tabel `master_data_ruang`
--
ALTER TABLE `master_data_ruang`
  ADD CONSTRAINT `master_data_ruang_pic_id_395437b6_fk` FOREIGN KEY (`pic_id`) REFERENCES `master_data_karyawan` (`id`),
  ADD CONSTRAINT `master_data_ruang_zona_id_32619584_fk` FOREIGN KEY (`zona_id`) REFERENCES `master_data_zona` (`id`);

--
-- Ketidakleluasaan untuk tabel `master_data_subjenisbarang`
--
ALTER TABLE `master_data_subjenisbarang`
  ADD CONSTRAINT `master_data_subjenisbarang_jenis_id_50a3ac5c_fk` FOREIGN KEY (`jenis_id`) REFERENCES `master_data_jenisbarang` (`id`);

--
-- Ketidakleluasaan untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD CONSTRAINT `ruang_ibfk_1` FOREIGN KEY (`zona_id`) REFERENCES `zona` (`id`);

--
-- Ketidakleluasaan untuk tabel `sub_jenis_barang`
--
ALTER TABLE `sub_jenis_barang`
  ADD CONSTRAINT `sub_jenis_barang_ibfk_1` FOREIGN KEY (`jenis_id`) REFERENCES `jenis_barang` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_management_userprofile`
--
ALTER TABLE `user_management_userprofile`
  ADD CONSTRAINT `user_management_userprofile_user_id_4e76c756_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
