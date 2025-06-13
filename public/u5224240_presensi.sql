-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Jun 2025 pada 06.47
-- Versi server: 10.11.11-MariaDB-cll-lve
-- Versi PHP: 8.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5224240_presensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '180.254.79.47', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-09 18:40:42', 1),
(2, '180.254.79.47', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-09 19:15:12', 1),
(3, '180.254.79.47', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-09 19:20:28', 1),
(4, '180.254.79.47', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-09 19:26:47', 1),
(5, '180.254.79.47', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-09 19:28:25', 1),
(6, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-10 16:24:42', 1),
(7, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-10 23:42:22', 1),
(8, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-10 23:51:22', 1),
(9, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-12 08:45:22', 1),
(10, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-12 08:48:25', 1),
(11, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-12 11:31:54', 1),
(12, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-12 11:37:25', 1),
(13, '114.10.70.250', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-12 23:28:46', 1),
(14, '114.10.70.250', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-12 23:28:49', 1),
(15, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-17 14:06:07', 1),
(16, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-17 14:06:08', 1),
(17, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-17 20:37:38', 1),
(18, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-18 10:53:40', 1),
(19, '180.252.231.213', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-18 10:53:42', 1),
(20, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-19 19:08:31', 1),
(21, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-19 23:25:30', 1),
(22, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-19 23:32:22', 1),
(23, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 04:16:43', 1),
(24, '180.254.66.33', 'admdsdsdssdsd', NULL, '2025-02-20 04:17:14', 0),
(25, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 04:17:20', 1),
(26, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 06:34:27', 1),
(27, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 08:44:01', 1),
(28, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 10:54:14', 1),
(29, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 11:02:51', 1),
(30, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 11:14:17', 1),
(31, '180.254.66.33', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-20 12:12:46', 1),
(32, '180.254.66.33', 'zulfikriyahya', NULL, '2025-02-20 12:13:48', 0),
(33, '180.254.66.33', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-20 12:13:55', 1),
(34, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', NULL, '2025-02-20 21:59:04', 0),
(35, '180.254.66.33', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-20 21:59:16', 1),
(36, '180.254.66.33', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-20 22:52:47', 1),
(37, '180.254.66.33', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-21 03:14:00', 1),
(38, '146.70.250.30', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-21 04:32:27', 1),
(39, '180.254.66.33', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-21 10:57:59', 1),
(40, '182.4.103.125', 'admin', NULL, '2025-02-21 22:40:06', 0),
(41, '182.4.103.125', 'admin', NULL, '2025-02-21 22:40:17', 0),
(42, '182.4.103.125', '\' or 1=1 limit 1 -- -+', NULL, '2025-02-21 22:47:14', 0),
(43, '180.254.66.33', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-22 20:54:32', 1),
(44, '120.188.4.153', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-23 10:31:38', 1),
(45, '103.184.67.13', 'adm@mtsn1pandeglang.sch.id', 1, '2025-02-24 15:27:59', 1),
(46, '180.244.95.115', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-02-25 17:33:19', 1),
(47, '180.254.77.163', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-03-01 20:30:57', 1),
(48, '180.254.77.163', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-03-01 20:30:57', 1),
(49, '61.5.16.209', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-03-06 20:27:23', 1),
(50, '180.254.75.231', 'zulfikriyahya@mtsn1pandeglang.sch.id', 2, '2025-03-06 20:28:02', 1),
(51, '61.5.19.85', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-10 15:54:08', 1),
(52, '61.5.19.85', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-10 16:26:45', 1),
(53, '61.5.19.85', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-12 07:54:35', 1),
(54, '61.5.19.85', 'zulfikriyahya', NULL, '2025-03-12 07:58:13', 0),
(55, '61.5.19.85', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-12 07:58:25', 1),
(56, '180.254.69.221', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-12 22:16:06', 1),
(57, '180.244.58.123', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-15 19:16:15', 1),
(58, '36.75.5.95', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-27 23:02:01', 1),
(59, '36.71.47.139', 'adm@mtsn1pandeglang.sch.id', 1, '2025-03-30 20:15:50', 1),
(60, '180.254.75.244', 'adm@mtsn1pandeglang.sch.id', 1, '2025-04-18 16:56:35', 1),
(61, '180.254.75.244', 'adm@mtsn1pandeglang.sch.id', 1, '2025-04-19 11:26:13', 1),
(62, '180.252.230.220', 'adm@mtsn1pandeglang.sch.id', 1, '2025-04-21 13:00:53', 1),
(63, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-03 23:41:40', 1),
(64, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-03 23:51:21', 1),
(65, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 01:00:55', 1),
(66, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 02:18:22', 1),
(67, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 02:25:39', 1),
(68, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 03:30:38', 1),
(69, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 03:30:50', 1),
(70, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 03:37:24', 1),
(71, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 03:51:57', 1),
(72, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 04:00:05', 1),
(73, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 04:08:09', 1),
(74, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 04:16:29', 1),
(75, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 04:54:37', 1),
(76, '180.254.70.240', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-04 05:36:06', 1),
(77, '77.111.246.44', 'admin', NULL, '2025-05-06 23:42:13', 0),
(78, '77.111.246.44', 'admin@gmail.com', NULL, '2025-05-06 23:42:44', 0),
(79, '77.111.246.44', '\' or 1=1 limit 1 -- -+', NULL, '2025-05-06 23:42:50', 0),
(80, '125.160.217.140', 'adm@mtsn1pandeglang.sch.id', NULL, '2025-05-21 22:43:07', 0),
(81, '125.160.217.140', 'adm@mtsn1pandeglang.sch.id', 1, '2025-05-21 22:43:33', 1),
(82, '180.254.67.63', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-02 01:31:44', 1),
(83, '180.254.67.63', 'adm@mtsn1pandeglang.sch.id', NULL, '2025-06-02 02:07:00', 0),
(84, '180.254.67.63', 'adm@mtsn1pandeglang.sch.id', NULL, '2025-06-02 02:07:12', 0),
(85, '180.254.67.63', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-02 02:07:26', 1),
(86, '180.254.75.32', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-03 21:05:50', 1),
(87, '180.254.75.169', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-04 08:34:45', 1),
(88, '180.254.77.211', 'adm@mtsn1pandeglang@gmail.com', NULL, '2025-06-05 21:02:34', 0),
(89, '180.254.77.211', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-05 21:02:48', 1),
(90, '180.254.77.211', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-07 07:54:01', 1),
(91, '180.254.77.211', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-07 08:37:30', 1),
(92, '180.254.77.211', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-07 08:38:48', 1),
(93, '180.254.77.211', 'adm@mtsn1pandeglang.sch.id', 1, '2025-06-07 09:02:23', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `logo` varchar(225) DEFAULT NULL,
  `school_name` varchar(225) DEFAULT 'MTSN 1 PANDEGLANG',
  `school_year` varchar(225) DEFAULT '2025/2026',
  `copyright` varchar(225) DEFAULT '© 2024 MTSN 1 PANDEGLANG'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `school_name`, `school_year`, `copyright`) VALUES
(1, 'uploads/logo/logo_67aa3be251fd03-44384234.png', 'MTS NEGERI 1 PANDEGLANG', '2024/2025', '© 2024 - 2025 MTSN 1 PANDEGLANG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1739101234, 1),
(2, '2022-08-18-000004', 'App\\Database\\Migrations\\AddSuperadmin', 'default', 'App', 1739101234, 1),
(3, '2023-08-18-000001', 'App\\Database\\Migrations\\CreateJurusanTable', 'default', 'App', 1739101234, 1),
(4, '2023-08-18-000002', 'App\\Database\\Migrations\\CreateKelasTable', 'default', 'App', 1739101234, 1),
(5, '2023-08-18-000003', 'App\\Database\\Migrations\\CreateDB', 'default', 'App', 1739101234, 1),
(6, '2024-07-24-083011', 'App\\Database\\Migrations\\GeneralSettings', 'default', 'App', 1739101234, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nuptk` varchar(24) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(32) NOT NULL,
  `unique_code` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nuptk`, `nama_guru`, `jenis_kelamin`, `alamat`, `no_hp`, `unique_code`) VALUES
(1, '3601340804860001', 'TATU MAFTUHA', 'Perempuan', 'PANDEGLANG', '089612050291', '8f42fb9e1043fa269458de27c9b6066438a704b4353d9892d98f7d8460d35bd5'),
(2, '3601190107720071', 'OJI AHMAD FAUZI S.Ag', 'Laki-laki', 'PANDEGLANG', '089612050291', '00bd711aa08219cd9959e6864d600d25be56e1be9cb63942ae8240ee8a6b4894'),
(3, '3601156307750001', 'CUCU WAKIAH', 'Perempuan', 'PANDEGLANG', '089612050291', '8c618914758aa27d82d820fe4708873fad7fb9b17bff5acba18dc3b6175ae58f'),
(4, '3601117009950001', 'DWI NURUL HUSNA', 'Perempuan', 'PANDEGLANG', '089612050291', 'ccef67b57cc0a760622a1c539583ad120391f56cb180a021adab98606e9612d7'),
(5, '3601181907670001', 'Drs. MAHRUS', 'Laki-laki', 'PANDEGLANG', '089612050291', '88716c721d7d952278953d306bcfeda1f600e030d029c2db4cc6e0266a032079'),
(6, '3601190602680001', 'HARTONO S.Pd', 'Laki-laki', 'PANDEGLANG', '089612050291', '23c4a92f400a7c73df1d11e5590e98f65a2c6599f0cefc6a57f9da51a03b39c3'),
(7, '3601206606740001', 'DARSIH M.Pd', 'Perempuan', 'PANDEGLANG', '089612050291', '8ff8a17b25f0bdc8ca4f0fb2c567b9a86009d5ca8185aa7e954d3cd56fa9321c'),
(8, '3601191808670001', 'ASNAWI', 'Laki-laki', 'PANDEGLANG', '089612050291', '60ac3960f11975b86eb00c77e2cff54bacc457816941aba32a80e4ed7c617334'),
(9, '3601181507700001', 'HAMBALI S.Pd.I', 'Laki-laki', 'PANDEGLANG', '089612050291', 'c991cc3b395523679515fc8d28983c713a7e04bf2670f0864e6881ad33997f26'),
(10, '3601195311820002', 'WULAN NOVITA', 'Perempuan', 'PANDEGLANG', '089612050291', 'e54497e6f9b094bb5ffa614c61bc3e117f21076eb9d0bc976bf255ecaeb517d7'),
(11, '3601180107700046', 'JAENUDIN', 'Laki-laki', 'PANDEGLANG', '089612050291', '1abf4bbb824a46b8695f03fe79ed66e7e0f327f07b67111c4b05e30623bc7d6d'),
(12, '3601156101780001', 'EUIS SOFI SULASIAH, S.Ag.', 'Perempuan', 'PANDEGLANG', '087808905058', '6dc44edbb3276aa92707d0d1fca18d1d1c580dd49a73fbed8d4b36309346c3a6'),
(13, '3601211901730005', 'KUMYARI', 'Laki-laki', 'PANDEGLANG', '089612050291', 'eecab73ecbd85b2519a7840ce0d110368ed141f79aa248206764df92aa211ed3'),
(14, '3601191410660001', 'DELMIAS', 'Laki-laki', 'PANDEGLANG', '089612050291', '2e27b8b11efdafac57979128132290ae8e05a0212c2b9c35c6ae76e2e39e4b83'),
(15, '3601342711800002', 'IPAT APIPAH', 'Perempuan', 'PANDEGLANG', '089612050291', '2b921b3b261bff41d021548ab05d90f4637103687d89532b2717c4fd6a03b5a6'),
(16, '3602090908840006', 'ARMAN', 'Laki-laki', 'PANDEGLANG', '089612050291', '191384917874ecf5213f3887bcae5f33dca0280cc4919538a4d36c5329446741'),
(17, '3601214801820004', 'AI NURHIDAYATI S.Pd', 'Perempuan', 'PANDEGLANG', '089612050291', '290d5b73d15a2872f28c71029ba4c8da894f7cf740962fe0039664e4f991e99a'),
(18, '3601250510730001', 'H. SHOLICHUL HADI, M.Ag.', 'Laki-laki', 'PANDEGLANG', '08128051862', '52095640713fcdca3c4147ffa14b3b199c20f0330daed3ecd7a494fd17851385'),
(19, '3601340512710002', 'BAHTIAR ROSAD S.Pd.I', 'Laki-laki', 'PANDEGLANG', '089612050291', '73f2071c95bc2906b1a0299491368a1245164c27d8582ef3c45c1b47cb44426b'),
(20, '3601031611840001', 'SAEFUL ANWAR', 'Laki-laki', 'PANDEGLANG', '089612050291', '0845d318353616f0226ac65fdd1240f24e5c06afbb6d689b5bc664fe34eacd1e'),
(21, '3601197108720002', 'LINA NURFAJRIANA S.Ag', 'Perempuan', 'PANDEGLANG', '089612050291', 'c9c70096837cf718835b2587fb2815c27d6814c0a36ec0639f92a5d7dc5541db'),
(22, '3601195702760002', 'ETI SUMYATI S.Ag', 'Perempuan', 'PANDEGLANG', '089612050291', '78a9aff5dd1bbb159de64a0faed976c5c37d9df6a42f1841d1a0ed9848ed270c'),
(23, '3601345612680002', 'ANISAH', 'Perempuan', 'PANDEGLANG', '089612050291', '92c3223d545f2e909bd3096d239955b4219ebbe826e611230eceb3e2eab3be87'),
(24, '3601184507820003', 'NENDEN HERAWATI S.Pd', 'Perempuan', 'PANDEGLANG', '089612050291', '8adac23478c65a24cdc4f1b60555ba531a7a8d239da82563a14952ba972e3d27'),
(25, '3601220202700002', 'JAYA SUPIYATNA S.Ag', 'Laki-laki', 'PANDEGLANG', '089612050291', 'c7cd3ee579f005ca74323e2a9d6d649f1217d5c1dfcc6e9318307f295b5f2ee6'),
(26, '3601130609800001', 'IKMAL MAZAJI S.Pd', 'Laki-laki', 'PANDEGLANG', '089612050291', '42657dd333171cc989f1d8b62242f3a9001d4c146274894ba52d6e336eb2a0a4'),
(27, '3601150511660001', 'AGUS MAKSUM, S.Pd.I.', 'Laki-laki', 'PANDEGLANG', '08128110517', 'd2014d3917b323eab3e004d74676af1e3eb8d2097ef233198e5e3197faef8895'),
(28, '3601030205800002', 'MAHBUDIN S.Pd.I., M.Pd.', 'Laki-laki', 'PANDEGLANG', '081298974691', '5085bf6ada49d8b957cad152343f289bae7bbfaee331859a0f5269401b3b2cc0'),
(29, '3601346908710003', 'HJ. AAT NURHAYATI', 'Perempuan', 'PANDEGLANG', '089612050291', 'ac4e01543189936e1ee5adf9faafa61c20847686cce3c0ead854967583620269'),
(30, '3601251604790001', 'AAN HUMAENI', 'Laki-laki', 'PANDEGLANG', '089612050291', '423990813c28acf40f96c8291797cd1e93f23883a389d450b523fa58c8a083d6'),
(31, '3601225484810001', 'ATIEK RIANY RAHAYU', 'Perempuan', 'PANDEGLANG', '089612050291', 'e7b180b565cacf2efe98d7e9bbc568cf0b6fc0a51cea9a571c274d1d35280a1c'),
(32, '3601346203720001', 'HJ. OOM SUNARSIH, M.Pd.I', 'Perempuan', 'PANDEGLANG', '081389224072', 'e9a24206d8ab6f1dc196a0d4e716744f15ef889a0fada88b392f706743b86b5d'),
(33, '197906032005011004', 'SAMUDI, S.S.', 'Laki-laki', 'PANDEGLANG', '085284584209', '2b8c7f4a3e4d76c107d2ea989d955cd38099d50bc89a0186757a2994abe6e262'),
(34, '3601250610920003', 'BARLI MAHARDIKA SANDY, S.Pd.', 'Laki-laki', 'PANDEGLANG', '085716555746', '6ddc9bf5e85b498fb81bffe13f2afd143733b1e7695ac27b9a9c925018c0cef4'),
(35, '3601214812700001', 'KHOLISOH S.Ag', 'Perempuan', 'PANDEGLANG', '089612050291', '1ce8cbeb325504ad62f8ec5c22263ed1f7d74a7caf3835780a6046ca2295090e'),
(36, '3601196012880001', 'LENI ARIANY S.Sos.', 'Perempuan', 'PANDEGLANG', '089612050291', '1343b3a1e9b923b6947878e878735c58f868c1fb1acbb183f383960261832ebe'),
(37, '3601196409920001', 'YEYEN NURAZIZAH S.Pd', 'Perempuan', 'PANDEGLANG', '089612050291', '381ce5db60b0dffae04e39eebcc59077315f736d7287f28c9ccff11c7a7962c5'),
(38, '199107252019031018', 'ASEP SAEFULOH, S.Pd., M.Pd.', 'Laki-laki', 'PANDEGLANG', '085215779997', '0ce4478fc539e163e729c0a91f8993b4189011ce7c2a025343f45091853899a3'),
(39, '3601135002790002', 'ENDAH HUMAEDAH', 'Perempuan', 'PANDEGLANG', '089612050291', '74f0d9486d8cafe83415a2af6b81fba9f9368c13a1e789bd3548a86ab607bd9b'),
(40, '3601347006760005', 'MAYASARI S.Ag', 'Perempuan', 'PANDEGLANG', '089612050291', '4f696a5df928058e403b559ddd6d4604ae5777679a8187b249e1f69fa9975083'),
(41, '3601341905880002', 'DEVI ANDRIYANSYAH, S.Pd.', 'Laki-laki', 'PANDEGLANG', '081381031773', '897e2fb09659c39ad63c24f68d2342409a13658aea0b585a13bf59067bbb355b'),
(42, '3601114602930001', 'WIDI NURHANAH', 'Perempuan', 'PANDEGLANG', '089612050291', '4b773d724a40820b3605e3b45e917a4586e6ead0da5ddaaa32b48616c7d8c7d6'),
(43, '3604012607910348', 'LEISTAR ADIGUNA, S.Sn.', 'Laki-laki', 'PANDEGLANG', '087778066854', '464ebd7e91fb461945cdbfa3fc457a9bec48e31a0469422132db0df7d1d427f4'),
(45, '3601204107850057', 'SITI MARYAM S.Pd.I', 'Perempuan', 'PANDEGLANG', '089612050291', '49e8867443ba9687f9807ef3bf664b98ca3d77ada5b3db700795bb4b3fff127e'),
(46, '3601344107930022', 'E. MARIA ULFAH S.PD', 'Perempuan', 'PANDEGLANG', '089612050291', '8b70ef19e34bd18301a20cd1957aa04f40172afcaae37ef6d40e299bce98c614'),
(47, '3601346605860001', 'ATI SURYATI, S.Pd.', 'Perempuan', 'PANDEGLANG', '081932354086', '123d7da7da295d1890e5af9217a372ce115d3c593a862fe18db0bb34ba05d693'),
(48, '3604294507930001', 'AAM AMALIA, S.Pd.I.', 'Perempuan', 'PANDEGLANG', '0895351856267', '628239398f68f8ffd67ddeb12f2fcc136177c95037a4923691768c81fe46ab07'),
(49, '3602145506870009', 'NURLIYANTI S.PD', 'Perempuan', 'PANDEGLANG', '089612050291', 'ef11d75cf37bdd0423263a8a75dcf5bd05895f22f47878f7fe46da4dadef24d8'),
(50, '3601224508940002', 'FITRI HANDAYANI S.Sos, ', 'Perempuan', 'PANDEGLANG', '089612050291', '006b1d19242256443caea1548ddbe12cf8fe7e0d6354679d6db3c79d07d0e302'),
(51, '3601250411000001', 'RAFIF NUGRAHA MUADZ', 'Laki-laki', 'PANDEGLANG', '089612050291', 'f738e5c3aeee260e83073af74ce151a31896b0e5f518d5e227a68cffa06b3d26'),
(52, '3601024301850001', 'SRI ROHYATI', 'Perempuan', 'PANDEGLANG', '089612050291', 'fb695f86e48c1ad9ddb37aab78f102973bd58422872e7ea11569f23ae8cf0799'),
(53, '3601155011940001', 'RATU SYIFA LUTHFIA MACHAR, S.Si.', 'Perempuan', 'PANDEGLANG', '085925106019', 'f92901c51568b2bade5723a1d639c817dbe3ac3e8e632421349d80fea8d8054c'),
(54, '196805132005012004', 'HJ. MASITOH, S.Ag.', 'Perempuan', 'PANDEGLANG', '089612050291', '1c9bdd4d5b195c3d7afd91e7ecb7bca589a110feca91b37e03fc5ad9e873a4cb'),
(55, '3601191412690001', ' NYANA, S.Pd.', 'Laki-laki', 'PANDEGLANG', '0895351856267', '4641f546b6c83ffa251d6ec4f8b526ed23f0a145dd3325f23059d34d39be8a59'),
(56, '3601344104700004', ' SITI WAHIDOH, S.Pd.I.', 'Perempuan', 'PANDEGLANG', '0895351856267', '5972b8457eacc39718d42cf464739ad96c7d1bae988164fb051c13be093ec366'),
(57, '3601345106760002', 'YUNIARTI INDERAGIRI SE', 'Perempuan', 'PANDEGLANG', '089612050291', '19efdd20c1231ad36cc19b7a580b45e93fe3423e051ea9515094912ff1d68e38'),
(58, '3601191507800003', 'ARIEF JAZULI, S.E.', 'Laki-laki', 'PANDEGLANG', '087809254066', 'c65bfdb7115c3ba170f039a46841f955656e1435bc83b99e47040985039dbe64'),
(59, '3601135011800006', 'OMAH KHUSNUL KHOTIMAH, S.Pd. ', 'Perempuan', 'PANDEGLANG', '089612050291', '1e3485ee1fd3208be3511efc657c40c04b60dd338f65cbac2da337d8253fcce0'),
(60, '3601342412870002', 'ADE SUPALDI', 'Laki-laki', 'PANDEGLANG', '0895385079664', 'a79f50eaf195f4c445540c509147bda16f83ee67e6075b44dd48250b932300d9'),
(61, '3601191002870001', 'ARIS NURDIANSYAH', 'Laki-laki', 'PANDEGLANG', '089638630082', '66e1b271203f53be5daf5c738e2f636dc52ce886a75df05938ed9f01cd8150ee'),
(62, '3601215004900002', 'PUPUNG PURNAMASARI, S.Pd.I.', 'Perempuan', 'PANDEGLANG', '081311154815', '44b7bc48815d445f89e1a4607c10a8f6d1c3789fbdd29b3d7d075cdabb218f82'),
(63, '3601341608880001', 'TUBAGUS MOHAMAD KHOLIK', 'Laki-laki', 'PANDEGLANG', '0895405456123', 'ce87c47259f5b198184d498e47c4cc668457b4ca6bb66d93c0c938d236b6727c'),
(64, '3601340605800003', 'BAKHTIAR EFENDI', 'Laki-laki', 'PANDEGLANG', '089612050291', '99a4192972e640223e2ef94ab39df2117d6e1b715578eed0a99ee2bc0eefff8d'),
(65, '3601340704820005', 'SUPRANA', 'Laki-laki', 'PANDEGLANG', '085775204194', '03f4f177ff0d73f2c74389e38f5ea79e01c279d39ef92248d8d347c0cc6e4587'),
(66, '3209340905810003', 'YUDI WAHYUDI', 'Laki-laki', 'PANDEGLANG', '085778988627', 'ed7a3f78ea75edd9c45e24a20d9d726b0d8d908735d88e11e2b92eb936dbdf84'),
(67, '3601141602980001', 'HASAN SUMARNA', 'Laki-laki', 'PANDEGLANG', '081357241330', '99f6a41a86d487637b6cb28f988a7767e8ce44459e8fd71542f369913cc832f4'),
(68, '3601100612900001', 'ALI HUJAEMI', 'Laki-laki', 'PANDEGLANG', '083892764550', '2c748c299840d67599fc847d00f01b4f35fdbc7b3fbbd79e9800e93b9acda043'),
(70, '3601160708990005', 'HUD QOMARUZ ZAMAN NUR, S.H.', 'Laki-laki', 'PANDEGLANG', '081321823149', '05bbf40f10734ff704e203c274bfd4220bb1517a1ff16658cfe89e22694bc662'),
(71, '3601211801000001', 'YAHYA ZULFIKRI', 'Laki-laki', 'PANDEGLANG', '085124433750', '0b84083cb102734f94fa928595ee2800de999420febe890b21deb7decfcc800f'),
(72, '3601191302980004', 'FAHMI, S.Pd.', 'Laki-laki', 'PANDEGLANG', '085960263138', '89b8d621b1cf222ba01ca4b6bf2ab0e2633f2405834c7d6767aa689422fa09e7'),
(73, '3601214710990001', 'WILDA NAJIYA, S.Pd.', 'Perempuan', 'PANDEGLANG', '083134500848', 'ffa86df719af278a85050436e97cf1157888197b305a33d1e5f15d7e29de9a18'),
(74, '197006032000031002', 'H. EMAN SULAIMAN, S.Ag., M.Pd.', 'Laki-laki', 'PANDEGLANG', '087772142888', '609edc05f858721340cb2b95720e533bf4263afcd768c5449372003b45a3a084'),
(75, '196903061998031004', 'UMAR MU\'TAMAR, S.Ag.', 'Laki-laki', 'PANDEGLANG', '081384238223', '56eca504bc86f0674d728aa8cc18d3bfd7efd22937241774cae65ff7e34cca6f'),
(76, '197608262005011004', 'DIDIN ROSYIDIN, S.E., M.A.P.', 'Laki-laki', 'PANDEGLANG', '081291526555', 'f79b4adcd8176b7c26da9e69c24aa38fe2999241311549bcb50639305fce3979');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id` int(11) UNSIGNED NOT NULL,
  `jurusan` varchar(32) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id`, `jurusan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Unggulan', '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(2, 'Reguler', '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kehadiran`
--

CREATE TABLE `tb_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `kehadiran` enum('Hadir','Sakit','Izin','Alfa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kehadiran`
--

INSERT INTO `tb_kehadiran` (`id_kehadiran`, `kehadiran`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Izin'),
(4, 'Alfa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) UNSIGNED NOT NULL,
  `kelas` varchar(32) NOT NULL,
  `id_jurusan` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`, `id_jurusan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'VII A', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(2, 'VII B', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(3, 'VII C', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(4, 'VII D', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(5, 'VII E', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(6, 'VII F', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(7, 'VII G', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(8, 'VII H', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(9, 'VII I', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(10, 'VII J', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(11, 'VII K', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(12, 'VIII A', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(13, 'VIII B', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(14, 'VIII C', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(15, 'VIII D', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(16, 'VIII E', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(17, 'VIII F', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(18, 'VIII G', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(19, 'VIII H', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(20, 'VIII I', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(21, 'VIII J', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(22, 'IX A', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(23, 'IX B', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(24, 'IX C', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(25, 'IX D', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(26, 'IX E', 1, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(27, 'IX F', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(28, 'IX G', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(29, 'IX H', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(30, 'IX I', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL),
(31, 'IX J', 2, '2025-02-09 11:40:34', '2025-02-09 11:40:34', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_presensi_guru`
--

CREATE TABLE `tb_presensi_guru` (
  `id_presensi` int(11) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `id_kehadiran` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_presensi_guru`
--

INSERT INTO `tb_presensi_guru` (`id_presensi`, `id_guru`, `tanggal`, `jam_masuk`, `jam_keluar`, `id_kehadiran`, `keterangan`) VALUES
(18, 34, '2025-02-20', '09:36:14', NULL, 1, ''),
(19, 41, '2025-02-20', '09:36:21', NULL, 1, ''),
(20, 12, '2025-02-20', '09:36:26', NULL, 1, ''),
(21, 38, '2025-02-20', '09:38:32', NULL, 1, ''),
(22, 56, '2025-02-20', '09:39:23', NULL, 1, ''),
(23, 55, '2025-02-20', '06:39:31', NULL, 1, ''),
(24, 70, '2025-02-20', '09:51:17', NULL, 1, ''),
(25, 53, '2025-02-20', '09:51:25', NULL, 1, ''),
(26, 68, '2025-02-20', '09:51:31', NULL, 1, ''),
(27, 72, '2025-02-20', '09:51:45', NULL, 1, ''),
(28, 67, '2025-02-20', '09:51:49', NULL, 1, ''),
(29, 73, '2025-02-20', '09:54:49', NULL, 1, ''),
(30, 63, '2025-02-20', '09:56:30', NULL, 1, ''),
(31, 65, '2025-02-20', '09:57:42', NULL, 1, ''),
(32, 66, '2025-02-20', '09:59:00', NULL, 1, ''),
(33, 47, '2025-02-20', '10:00:49', NULL, 1, ''),
(34, 27, '2025-02-20', '10:03:29', NULL, 1, ''),
(35, 58, '2025-02-20', '10:05:40', NULL, 1, ''),
(36, 18, '2025-02-20', '10:16:05', NULL, 1, ''),
(37, 71, '2025-02-21', '07:00:00', '16:29:04', 1, ''),
(38, 71, '2025-02-22', '07:56:00', '21:01:18', 1, ''),
(39, 71, '2025-02-23', '10:31:45', NULL, 1, ''),
(40, 71, '2025-02-24', '07:00:00', '15:32:10', 1, ''),
(41, 71, '2025-03-06', '20:33:05', '20:35:28', 1, ''),
(42, 55, '2025-05-04', '01:02:27', '01:04:32', 1, ''),
(43, 48, '2025-05-04', '01:07:19', '03:48:37', 1, ''),
(44, 55, '2025-06-07', '07:56:37', '10:08:00', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_presensi_siswa`
--

CREATE TABLE `tb_presensi_siswa` (
  `id_presensi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) UNSIGNED DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `id_kehadiran` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_presensi_siswa`
--

INSERT INTO `tb_presensi_siswa` (`id_presensi`, `id_siswa`, `id_kelas`, `tanggal`, `jam_masuk`, `jam_keluar`, `id_kehadiran`, `keterangan`) VALUES
(12, 1006, 1, '2025-02-20', '00:39:32', '00:40:17', 1, ''),
(13, 286, 10, '2025-02-20', '09:13:44', NULL, 1, ''),
(14, 27, 1, '2025-03-10', '16:27:25', '16:28:33', 1, ''),
(15, 27, 1, '2025-03-12', '22:21:20', NULL, 1, ''),
(16, 937, 30, '2025-03-27', '23:04:02', '23:05:05', 1, ''),
(17, 45, 2, '2025-05-04', '00:32:45', NULL, 1, ''),
(18, 688, 22, '2025-06-04', '09:24:35', NULL, 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(16) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `id_kelas` int(11) UNSIGNED NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `no_hp` varchar(32) NOT NULL,
  `unique_code` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `id_kelas`, `jenis_kelamin`, `no_hp`, `unique_code`) VALUES
(1, '0126176167', 'ALTAF FATIH RAYYAN', 1, 'Laki-laki', '081276621842', '67a89d9c07f352-60700095-65273407'),
(2, '0111051998', 'ALYA AULIYA', 1, 'Perempuan', '082124627073', '67a89d9c1b0d96-55571557-27154799'),
(3, '0125461597', 'ARGA AYSAR PUTRA', 1, 'Laki-laki', '087886327590', '67a89d9c23dde0-23397159-42389039'),
(4, '0114462384', 'DAMAI YANTI KHULAIFAH', 1, 'Perempuan', '085711873515', '67a89d9c3488a6-83196198-98275988'),
(5, '0121578302', 'ERVINA DWI RAJMI', 1, 'Perempuan', '081290543081', '67a89d9c3e1a06-85781120-92444251'),
(6, '0114087227', 'FARHAN IDZAM WIGUNA', 1, 'Laki-laki', '08129671350', '67a89d9c4f1491-58481240-72897648'),
(7, '0122659779', 'FARIZA RAISA RAFANIA', 1, 'Perempuan', '0895340196783', '67a89d9c5f5135-51000608-54780952'),
(8, '3120720071', 'ILZAM MUQOFFA', 1, 'Laki-laki', '085781325745', '67a89d9c82e239-82423737-24293468'),
(9, '0124275013', 'KANAYA MUTIA MAULIDA', 1, 'Perempuan', '081216950588', '67a89d9c94b635-83396307-89890847'),
(10, '0113473770', 'KEANO ATHAR AL FARABIE', 1, 'Laki-laki', '085942542666', '67a89d9c9ec6c5-06515563-59052511'),
(11, '0126040108', 'M. RIZA SUHENDAR', 1, 'Laki-laki', '087773074054', '67a89d9caff269-67955904-50658865'),
(12, '0128468541', 'M. ZIDAN ALGHIFARI', 1, 'Laki-laki', '085946088052', '67a89d9cc7f215-45058271-16018840'),
(13, '0121751690', 'MARVEL ARISTA SUKMAWAN BAAQII', 1, 'Laki-laki', '089619916156', '67a89d9ce4dd55-84652241-55416326'),
(14, '0112981554', 'MOHAMAD FATURAHMAN SIDIQ', 1, 'Laki-laki', '085691084588', '67a89d9ced1668-22457141-92711904'),
(15, '0117033068', 'MUHAMMAD EL GHAZALY', 1, 'Laki-laki', '0895329082868', '67a89d9d09e030-24375955-25220067'),
(16, '0127599408', 'MUHAMMAD FALDANI FIRLO ALFARIZ', 1, 'Laki-laki', '089686926801', '67a89d9d1544c9-66602156-15302865'),
(17, '0128104875', 'NADILA MELIANI PUTRI', 1, 'Perempuan', '085860705851', '67a89d9d2200b7-89970094-30688849'),
(18, '0129404581', 'NAFIZA QYARA HARYADI', 1, 'Perempuan', '081297212350', '67a89d9d2a2ec0-70740020-30273143'),
(19, '0126269811', 'NAMARA AULIA', 1, 'Perempuan', '085710475026', '67a89d9d3c06b2-14874712-27026182'),
(20, '0115758435', 'RE. AZKA ILHAM PRATAMA', 1, 'Laki-laki', '087774748887', '67a89d9d4b8251-71496032-85547368'),
(21, '0129961196', 'RISKA SYAFITRI KHAIRANI', 1, 'Perempuan', '081291463373', '67a89d9d542986-43622763-25321501'),
(22, '0116067473', 'RIZKY LANGIT RAMADHAN', 1, 'Laki-laki', '087817585333', '67a89d9d61b8e2-43378934-58041012'),
(23, '0128834928', 'SHOFIYATUN NISA', 1, 'Perempuan', '085781854189', '67a89d9d6b40e6-89442642-43666619'),
(24, '0119456377', 'SITI SYIFA OKTAVIA', 1, 'Perempuan', '085778285952', '67a89d9d743488-40906113-50191402'),
(25, '0109972046', 'TB. FATHIR FATURROHMAN', 1, 'Laki-laki', '0818223425', '67a89d9d7fdbf2-59807264-31646920'),
(26, '0126658137', 'YASMINE AMANDADITA FIRMANSYAH', 1, 'Perempuan', '083856027075', '67a89d9d87f153-64606359-71572988'),
(27, '0113835069', 'ZAHWA AININDYA ZURKONI', 1, 'Perempuan', '085280009345', '67a89d9d987690-70145677-69391794'),
(28, '3116113300', 'AZNURIL REINATA PUTRI', 1, 'Perempuan', '089636365373', '67a89d9da119a8-20448494-79703561'),
(29, '3121945120', 'ALVINA DAMAYANTI', 1, 'Perempuan', '0895429971090', '67a89d9db4c685-08844445-80615769'),
(30, '0111181037', 'QONITA SYAKIRAH', 1, 'Perempuan', '082299446103', '67a89d9dc4fb13-77228587-61584845'),
(31, '3122254093', 'AHMAD NIZAM MILLATENA', 1, 'Laki-laki', '', '67a89d9dd2b6f6-44118538-17852871'),
(32, '3120941008', 'ANINDYA RIFAT JABAL HERDIYANSAH', 2, 'Laki-laki', '081230211922', '67a89d9de0cca5-75539762-80414867'),
(33, '0128936480', 'ANNISA RAHMA DIANA', 2, 'Perempuan', '', '67a89d9dea23f9-47035780-88642554'),
(34, '0123476202', 'AQILA AZKAYRA BANAFSHA', 2, 'Perempuan', '081297436205', '67a89d9e0abb41-15509698-89514769'),
(35, '0121446213', 'AZAHRA SALSABILA NASRUDIN', 2, 'Perempuan', '085892167906', '67a89d9e1bd099-90869451-12796127'),
(36, '0115391599', 'AZKIA MAIMATUL RIZKI', 2, 'Perempuan', '082110442227', '67a89d9e230446-97650036-38339595'),
(37, '0127319981', 'BILQIS AZALIA FATHINAH', 2, 'Perempuan', '085716090708', '67a89d9e309a60-39889997-76955204'),
(38, '0129741353', 'DENIA KIRANA', 2, 'Perempuan', '081511961604', '67a89d9e3ac6d6-21256985-36219044'),
(39, '0111328128', 'DWI LUNA OKTAVIA', 2, 'Perempuan', '085217984999', '67a89d9e44d574-30922185-35876000'),
(40, '0114622643', 'FAHIRA HALWA AZYAN', 2, 'Perempuan', '087844301496', '67a89d9ed30868-62951608-39372707'),
(41, '0129880031', 'FIDELYA DZIHNI PRATOMO', 2, 'Perempuan', '089654429602', '67a89d9ee99de6-38116022-17264655'),
(42, '0111444727', 'HENI HALIMATUS SA\'DIAH', 2, 'Perempuan', '', '67a89d9ef2a398-46127763-22317578'),
(43, '3126361722', 'KEYSHA FEBRIANI', 2, 'Perempuan', '', '67a89d9f087be6-17353390-94151655'),
(44, '0111946967', 'LANGGENG SUKMA JELITA', 2, 'Perempuan', '', '67a89d9f16a6b9-54346093-18752098'),
(45, '0111149543', 'M. DIRLY RAJIV ROSYIDIN', 2, 'Laki-laki', '081285342423', '67a89d9f1e2db0-10778610-28525194'),
(46, '0129386645', 'MUHAMAD DAFFA HAIDAR AR RIZKY', 2, 'Laki-laki', '', '67a89d9f25a962-53313719-18197586'),
(47, '0114962521', 'MUHAMAD DZAKI NURFIKRI', 2, 'Laki-laki', '087878188141', '67a89d9f33f723-62116052-67493749'),
(48, '0122709448', 'MUHAMAD GIYOALFARIZ', 2, 'Laki-laki', '', '67a89d9f3dc318-06488478-88640033'),
(49, '0115215154', 'MUHAMMAD FADHLI AKMAL', 2, 'Laki-laki', '', '67a89d9f490030-11760279-99806654'),
(50, '0124930224', 'MUHAMMAD RIZIE ROHIEMAUZ', 2, 'Laki-laki', '082123340640', '67a89d9f515568-61822658-72789004'),
(51, '0103270527', 'OASE AL - GHIFARI', 2, 'Laki-laki', '081584061426', '67a89d9f595b20-12427513-43053423'),
(52, '0121005562', 'RATU SITI AISYAH AQILAH', 2, 'Perempuan', '085215189009', '67a89d9f65d3c0-96036438-73241171'),
(53, '0121700629', 'RAYHAN', 2, 'Laki-laki', '', '67a89d9f6e04f0-89337913-12471059'),
(54, '0121098019', 'RT. NENDEN SHOFWATU AL MADANI', 2, 'Perempuan', '087772781530', '67a89d9f7acfb8-06407818-55388045'),
(55, '0121737286', 'SALSABILA MUTIARA SUNNI', 2, 'Perempuan', '', '67a89d9f83b228-60692481-26071866'),
(56, '0118589842', 'SISKA WULANDARI', 2, 'Perempuan', '', '67a89da023ec05-06046143-36559141'),
(57, '3129209511', 'SITI ASYIFA SETIAWANTI', 2, 'Perempuan', '087772663399', '67a89da0556623-48290604-13890513'),
(58, '0127077724', 'SITI HAURA KHANSA', 2, 'Perempuan', '', '67a89da067c3b6-74756308-48097958'),
(59, '0112843132', 'SITI RUBBY ANINDITA KURNIAWAN', 2, 'Perempuan', '', '67a89da072de25-44853502-93720325'),
(60, '0122352427', 'SYAFIRAREKA MAULIDA', 2, 'Perempuan', '085715289275', '67a89da082ca22-30653752-20657551'),
(61, '0112417183', 'TIFFANY AZAHRA', 2, 'Perempuan', '087772518925', '67a89da0e19649-12652317-16472048'),
(62, '3123335651', 'HASNA AMALIA', 2, 'Perempuan', '082125049056', '67a89da0ebe248-44115281-36994328'),
(63, '0118736992', 'SITI ROSDIANI', 2, 'Perempuan', '085288992693', '67a89da1390eb1-45972748-44974277'),
(64, '0118469654', 'AZKA AZALIAH ROMDANI', 3, 'Perempuan', '085219497778', '67a89da1465349-32597449-20251186'),
(65, '0121632981', 'DZUBYAN HISYAM RAMADHAN', 3, 'Laki-laki', '081310932116', '67a89da16493e0-91431983-42310146'),
(66, '0115123695', 'JIBRAN LANGIT ARRASY', 3, 'Laki-laki', '085861249284', '67a89da213e864-49360279-58776233'),
(67, '0129256384', 'KAYANA DIVA DHIYA MAHIRA', 3, 'Perempuan', '085891525827', '67a89da23a4da8-99773524-20333979'),
(68, '0121536400', 'KYANDRA HAMAM NAZHMI', 3, 'Laki-laki', '081315093717', '67a89da2447be4-38879688-55241038'),
(69, '0124192802', 'LAILATUL BADRIAH', 3, 'Perempuan', '089527041924', '67a89da25226a6-97983643-12217841'),
(70, '0129915055', 'LILI JANATIN AZRIRA', 3, 'Perempuan', '0895803213783', '67a89da25bcc15-85964238-40508923'),
(71, '0126023001', 'M. DZIKRI FEBRIAN KAMIL', 3, 'Laki-laki', '', '67a89da26aa865-84120252-10601468'),
(72, '0111153761', 'MALIKI AKBAR RAHARJO', 3, 'Laki-laki', '081910932324', '67a89da278b667-74698500-42672056'),
(73, '0118636534', 'MOCH ARBI GANI AKBAR', 3, 'Laki-laki', '085715414151', '67a89da281f2f5-50858115-91599566'),
(74, '0129351858', 'MOHAMMAD AZZAM FEBRIANA', 3, 'Laki-laki', '087877222971', '67a89da28be072-67260511-40751615'),
(75, '0124125930', 'MUHAMAD AZZAM RAFARDHAN ATHALLA', 3, 'Laki-laki', '087773608044', '67a89da2a09d82-60653366-57832787'),
(76, '0122076271', 'MUHAMAD FADLI HARJADINATA', 3, 'Laki-laki', '081210521197', '67a89da2b848d1-17094471-14770783'),
(77, '3129580622', 'MUHAMAD NAFIS IMRON', 3, 'Laki-laki', '0859102831022', '67a89da2c9f432-09421210-49515567'),
(78, '0114081793', 'MUHAMMAD ARIQ AL FAKHRI', 3, 'Laki-laki', '085214143516', '67a89da2d1fbc6-04070254-76613396'),
(79, '0122120782', 'MUHAMMAD KAFFAH ARIZIK', 3, 'Laki-laki', '083869750039', '67a89da2ea82f0-94549390-68208798'),
(80, '0113793989', 'MUHAMMAD MALLIK AL-BARRU SIREGAR', 3, 'Laki-laki', '081284991039', '67a89da3119086-99437568-21546901'),
(81, '0111980227', 'MUSHLIH FAWWAZ IBRAHIM A. ', 3, 'Laki-laki', '081296238797', '67a89da3297772-36963860-60565456'),
(82, '0129188591', 'NAYLA SAKURA AZZAHRA', 3, 'Perempuan', '087771377731', '67a89da334ced0-48098888-55505876'),
(83, '0112147352', 'PRABU YUDHISTIRA AL-ISLAMI', 3, 'Laki-laki', '087772987779', '67a89da34036d7-05454536-37718161'),
(84, '0126482163', 'RAFI EL GHOZY AGUSTINO', 3, 'Laki-laki', '085216332932', '67a89da34eef48-42554756-45575167'),
(85, '0115410708', 'RAFLY KURNIYAWAN', 3, 'Laki-laki', '085891030971', '67a89da3577b72-10502556-25174536'),
(86, '0117943516', 'RAHMA HAFIDHA AULANI', 3, 'Perempuan', '08988081252', '67a89da36b68b6-84865359-31388501'),
(87, '0124137962', 'RAIHANA NUR MAULIDA MUSTAFA KAMAL', 3, 'Perempuan', '085224149182', '67a89da37aafc0-26530459-54908493'),
(88, '3120548009', 'REIZAN RENGGA ALFATIH', 3, 'Laki-laki', '087772612386', '67a89da3839a56-29039973-26167094'),
(89, '0124226620', 'RIVALDY JUNIOR AL FATH', 3, 'Laki-laki', '081210430601', '67a89da38c7fe5-96076725-35842893'),
(90, '0129882262', 'RIZKY ADHITYA RAMADHAN', 3, 'Laki-laki', '082128929973', '67a89da3958ab5-30536022-19925950'),
(91, '0121431467', 'SITI AVIVATUL MALIYAH', 3, 'Perempuan', '081323896800', '67a89da3a07817-72171857-73134257'),
(92, '0113022795', 'YASMIN DWI RAMADANI', 3, 'Perempuan', '087762172540', '67a89da3b43621-14695019-34117440'),
(93, '3120608220', 'KEYSA KHOIRUNNISA', 3, 'Perempuan', '085716539635', '67a89da3bd3f03-55614763-26510195'),
(94, '3116150214', 'ZIDNI AZIZAH ZAEIN', 3, 'Perempuan', '081284025079', '67a89da3ca5961-87975341-52798349'),
(95, '3114180754', 'RATU NAFAHAT ROHMANIAH', 3, 'Perempuan', '083813662038', '67a89da3d1d925-43011414-41605676'),
(96, '0122593254', 'AHWAZ JIHAD RAMADHAN', 4, 'Laki-laki', '085810457965', '67a89da3dcd128-03822339-56921989'),
(97, '0116311194', 'ALBAR AL-MANSURI', 4, 'Laki-laki', '081930190601', '67a89da3e569b4-38286067-57135335'),
(98, '0121309915', 'ALENA NADZIFATURIZQIA', 4, 'Perempuan', '081320043581', '67a89da3ef8f27-56216956-66908160'),
(99, '0117473980', 'ALFI NURSALSABILA', 4, 'Perempuan', '085691315750', '67a89da41dd776-65894232-63867977'),
(100, '0129592207', 'ALIYAH ARUM MUFIDAH', 4, 'Perempuan', '081273402306', '67a89da42f54a4-06822323-88328753'),
(101, '0127166125', 'ASYA NAILA SHOFIA', 4, 'Perempuan', '08128575139', '67a89da4489af9-70821378-42140685'),
(102, '0129911886', 'DANIKA AINA MARSYA', 4, 'Perempuan', '', '67a89da459a8e5-68607632-86460441'),
(103, '0125884094', 'IMTIYAAZ AZZAHRA BAEHAKI', 4, 'Perempuan', '082118557787', '67a89da47102a8-48965889-25779665'),
(104, '0121871129', 'KHUMAIRA NURAHMANIA', 4, 'Perempuan', '081299742405', '67a89da4b433b8-33519594-69747042'),
(105, '0119420208', 'LAURIA MARLINA DINATA', 4, 'Perempuan', '081389940744', '67a89da4c819d9-72827775-42830434'),
(106, '0122637246', 'M. RADEN GILANG SAMPOERNA', 4, 'Laki-laki', '085217433073', '67a89da4d2b993-32567487-17138205'),
(107, '0127941516', 'MAGNOLIA LOVINA MARYAM', 4, 'Perempuan', '082112293369', '67a89da4e44cd9-84203748-39899278'),
(108, '0122419115', 'MOCH. ALVITO GIFFARY RAMADHANIS', 4, 'Laki-laki', '085217277016', '67a89da4ee2c63-39130008-82464886'),
(109, '0123877736', 'MOHAMAD MIFTAHUL HIDAYAT', 4, 'Laki-laki', '087800111075', '67a89da50ebde7-20524384-11015444'),
(110, '0119242675', 'MUHAMAD FARZAN CAHYADI', 4, 'Laki-laki', '08121234456', '67a89da51f1ba0-31098566-19457589'),
(111, '3120224483', 'MUHAMMAD AIMAN DHIAURRAHMAN', 4, 'Laki-laki', '087802093650', '67a89da5292c06-87599832-82117957'),
(112, '0113990285', 'MUHAMMAD HAIKAL ALFARIZQY', 4, 'Laki-laki', '081295463939', '67a89da532bc17-42882816-59423211'),
(113, '0128826829', 'NAJMI ZAHROTUSIFA', 4, 'Perempuan', '0895402369118', '67a89da53c8693-90903758-43013329'),
(114, '0118079830', 'NEZZALUNA PUTRI', 4, 'Perempuan', '083147197208', '67a89da548ce61-20872124-27318828'),
(115, '0115345631', 'NURUL AFRIYANI', 4, 'Perempuan', '08176935101', '67a89da5533156-83379309-96315612'),
(116, '0129551133', 'RAHMA PUZAMA', 4, 'Perempuan', '08990258585', '67a89da55ec3e2-90641208-73248477'),
(117, '0113986647', 'RAIDA FAKHIRA', 4, 'Perempuan', '081214222538', '67a89da5679792-46590030-99146199'),
(118, '0116595437', 'RAISA FAKHIRA ALI', 4, 'Perempuan', '085891337059', '67a89da56e8935-87183670-62524937'),
(119, '0118095291', 'RAISA MULIA HASAN', 4, 'Perempuan', '087871575696', '67a89da5797c09-73112308-61270940'),
(120, '0122005628', 'RESWA ZAFIRAH', 4, 'Perempuan', '083197194206', '67a89da5829222-90725082-61129807'),
(121, '0124838798', 'SAHILA RAIHANAH ATHAYA', 4, 'Perempuan', '085287930766', '67a89da58b5ff5-83188671-38110066'),
(122, '0124122712', 'SITI HERLINA MAULIDINA', 4, 'Perempuan', '085882852655', '67a89da5973fa5-23601482-60725497'),
(123, '0118815446', 'YUDA ZAQHGITA ARIFIN', 4, 'Laki-laki', '081311697753', '67a89da59f3d61-84419000-57159056'),
(124, '3127305397', 'ABDUL KARIM', 4, 'Laki-laki', '081211640038', '67a89da5a9a126-45526224-12571536'),
(125, '0115835099', 'TB. RIFAT ULUL AZMI SOFYAN', 4, 'Laki-laki', '082213484590', '67a89da5b61cf7-04518963-32339820'),
(126, '3114460110', 'CAHYA SABILLAH', 4, 'Perempuan', '087772913307', '67a89da5c5c781-22978708-78948269'),
(127, '0119179708', 'ADELIA NOER SABRINA', 5, 'Perempuan', '085210720139', '67a89da5e329d3-40941612-17075298'),
(128, '0111365255', 'AGITA PUTRA GUNAWAN', 5, 'Laki-laki', '', '67a89da5f39090-21281753-58556502'),
(129, '0122743513', 'ALYA FADHILATUN NISA', 5, 'Perempuan', '085211523549', '67a89da6119e31-32073353-90426566'),
(130, '0123071962', 'ATHIFA DAVINA NAJMINA', 5, 'Perempuan', '08818170370', '67a89da62104f6-05174014-51878978'),
(131, '0129875631', 'AURA APRILIANI', 5, 'Perempuan', '081386968541', '67a89da62a3854-31397208-47849697'),
(132, '0124700599', 'AZKA IZZATUL ARIFIN', 5, 'Laki-laki', '085280520998', '67a89da6340201-94554648-92994599'),
(133, '0127634950', 'DENISA AZ ZAHRA WIJAYANTO', 5, 'Perempuan', '', '67a89da63e32d6-47390411-27909425'),
(134, '0121588778', 'FAIRUZ MEIDINA KAMIL', 5, 'Perempuan', '082115999732', '67a89da6492d68-75456242-18289184'),
(135, '3128309899', 'GHAISAN DZAKWAN RIZQI', 5, 'Laki-laki', '087773531787', '67a89da65359f4-06479512-67359644'),
(136, '0119492813', 'IBNU KAMIL BAIHAQI', 5, 'Laki-laki', '', '67a89da65cb379-02401403-29162521'),
(137, '0116077569', 'JIHAN ASYIFA YUGAIRU', 5, 'Perempuan', '087783222509', '67a89da668c9e4-00997878-71495853'),
(138, '0126330560', 'JOVANKA SOLINDRYA QUEEN', 5, 'Perempuan', '0895610765443', '67a89da6703643-72442552-10246153'),
(139, '0119840327', 'KAYLA HASSYIFATU HAIFA', 5, 'Perempuan', '081315517920', '67a89da67caf99-36983663-99485581'),
(140, '0125137754', 'M. FAHRI ALBASIT', 5, 'Laki-laki', '085719617981', '67a89da68596c0-19793092-58572874'),
(141, '0128294748', 'MAURA PUTRI ERWANTY', 5, 'Perempuan', '085219673700', '67a89da68fd743-66179222-91401474'),
(142, '0119907265', 'MOHAMMAD KEISHA RAIHAN', 5, 'Laki-laki', '08989376263', '67a89da6979798-38940351-98486127'),
(143, '3126156015', 'MUHAMAD YUSUF IBRAHIM', 5, 'Laki-laki', '08985533488', '67a89da6a0c7b0-64443568-23650692'),
(144, '0111763323', 'MUHAMMAD ALFATH AN NABAWI', 5, 'Laki-laki', '089603690220', '67a89da6ae7861-61170518-57433131'),
(145, '0124256537', 'MUHAMMAD HUDA HUDZAIFAH', 5, 'Laki-laki', '085219248450', '67a89da7477866-28176117-13827572'),
(146, '0127711452', 'NADA AFIKAH HERAWATI', 5, 'Perempuan', '089529342404', '67a89da757ece2-65816045-72117780'),
(147, '0124054449', 'NADILLA AL MISQI', 5, 'Perempuan', '081305064339', '67a89da7644d52-10922481-43865233'),
(148, '0122545730', 'RADITYA DWI ASTAMA', 5, 'Laki-laki', '081385226452', '67a89da77416e9-11904525-51166840'),
(149, '0127183305', 'RAFARDHAN ROSYANDI PUTRA', 5, 'Laki-laki', '081219570010', '67a89da77ec755-32630807-89469718'),
(150, '0126992026', 'RAFFY AZZAMY FIRZATULLAH', 5, 'Laki-laki', '0811122018', '67a89da7860707-22477881-13406590'),
(151, '0112782026', 'RATU AQILLAH FAHRABIYA', 5, 'Perempuan', '081909810040', '67a89da78fa936-60635951-17680428'),
(152, '0121884077', 'TAURISFI RIZKI PRATAMA', 5, 'Laki-laki', '', '67a89da7984c85-47138180-45148054'),
(153, '0129245784', 'YASMIN SYIFA KARIMA', 5, 'Perempuan', '087771588354', '67a89da7a05c48-25020883-88825316'),
(154, '0123073438', 'ZAHRATUL AINI', 5, 'Perempuan', '002110837226', '67a89da7aa0314-50767228-61758798'),
(155, '3123096366', 'DINA AMALIA', 5, 'Perempuan', '082111236174', '67a89da7b26154-44812230-37284294'),
(156, '3125604240', 'NATASYA ANGGRAENI', 5, 'Perempuan', '083161451291', '67a89da7ba2468-72877080-35680621'),
(157, '3115559772', 'MOH. ZIMAN DZIKRI', 5, 'Laki-laki', '0895403223722', '67a89da7c41c99-17238266-54328958'),
(158, '3113831750', 'ZHAFIF FADLILLAH ASYARI', 5, 'Laki-laki', '087723704747', '67a89da7cc2220-02560062-22231616'),
(159, '0128868821', 'ABELIA DWISAFITRI RAMADHANI', 6, 'Perempuan', '', '67a89da7d87537-90242635-67170754'),
(160, '0111015280', 'ABIAN AL ZALFA', 6, 'Laki-laki', '', '67a89da7e0eef7-05198863-22309371'),
(161, '0111555314', 'ADINDA PRISTIA RAMADHANI', 6, 'Perempuan', '085219092228', '67a89da7ea8450-32887620-80708065'),
(162, '0122760341', 'ALEA PUTRI ARINI OKTAVIA', 6, 'Perempuan', '083896530666', '67a89da7f2cfb7-85163328-38292186'),
(163, '0106378410', 'ANDINI MASARI', 6, 'Perempuan', '', '67a89da80946b1-88027651-86684146'),
(164, '0122461906', 'AYU RAISHA SALSABILA', 6, 'Perempuan', '', '67a89da813cac3-11690566-44856710'),
(165, '0111330880', 'AZRIEL MADYAN AL- FURQON', 6, 'Laki-laki', '083160194818', '67a89da81dd799-23100785-22707364'),
(166, '0114164756', 'DAFIYA FAYQA PARSA', 6, 'Perempuan', '085283238538', '67a89da828f5b6-92401219-11985330'),
(167, '0121141745', 'DARA AYU PRATAMI', 6, 'Perempuan', '08567113387', '67a89da8340914-68897384-16094038'),
(168, '0115117502', 'FARHAT ALFATIH', 6, 'Laki-laki', '085711951505', '67a89da83f8b60-33608310-64874724'),
(169, '0125044448', 'GHEA INDANA ZULFA', 6, 'Perempuan', '081295095056', '67a89da849c612-18933856-17366305'),
(170, '0119825938', 'HANS ADLI', 6, 'Laki-laki', '085718599784', '67a89da851ca94-32116710-28895939'),
(171, '0113939113', 'IBNU FAUZI', 6, 'Laki-laki', '083877635142', '67a89da8599c68-00335146-56765811'),
(172, '0127760322', 'ITSQIYA DZIL MAALIKA TANJUNG', 6, 'Perempuan', '0895405272806', '67a89da86347a1-05527573-20667570'),
(173, '0121039701', 'LUTFIANA ANNUR', 6, 'Perempuan', '087881752374', '67a89da86b2bb9-33150530-35378276'),
(174, '0129219830', 'LUTHFY FATHUL A\'DZHIM', 6, 'Laki-laki', '087809254066', '67a89da8732a17-53836050-95450423'),
(175, '0124424267', 'M REVIANSYAH SAID', 6, 'Laki-laki', '085124433099', '67a89da87bcbe8-57704662-31543509'),
(176, '0115740322', 'M. CHAESAR TANJUNG WINATA', 6, 'Laki-laki', '083147304446', '67a89da8826599-79280136-24197159'),
(177, '0125643078', 'MUHAMAD RASYA AL HABSYI', 6, 'Laki-laki', '082211058553', '67a89da88adc11-36197991-46900805'),
(178, '0118382918', 'MUHAMMAD AL-FIRDAUS', 6, 'Laki-laki', '087781143298', '67a89da892ad54-44293449-60005149'),
(179, '0124733954', 'MUHAMMAD ALFATH AR-ROZAK', 6, 'Laki-laki', '087772808050', '67a89da89adce6-67744988-43484371'),
(180, '0116694799', 'MUHAMMAD FADZLAN', 6, 'Laki-laki', '081276601743', '67a89da8a23a42-80852586-70922421'),
(181, '0125162240', 'NEZA AGTA SYAHILLA', 6, 'Perempuan', '0883177617262', '67a89da8a9b931-34963018-94064037'),
(182, '3113754378', 'RISSA RAMADHANI', 6, 'Perempuan', '081911086562', '67a89da8b2fa25-87767410-24294911'),
(183, '0122929956', 'SITI AFIFATUNNISA RAMADHANI', 6, 'Perempuan', '085719665378', '67a89da8bc91b4-74289575-23770715'),
(184, '0119849404', 'SITI ROFIFAH', 6, 'Perempuan', '', '67a89da8c51b23-60458810-33004148'),
(185, '0122552933', 'AZKIA NUR AZIZAH', 6, 'Perempuan', '085695000170', '67a89da8cc18a1-80746889-74647938'),
(186, '0111961755', 'SITI NUR INAYAH', 6, 'Perempuan', '083850387151', '67a89da8d53ff5-41746338-10345519'),
(187, '0127633044', 'MUHAMMAD FATTAH ALGHAZI', 6, 'Laki-laki', '087772732836', '67a89da8de25e2-05625886-82051808'),
(188, '3124686841', 'NADZHIVA ALMAHIRA ARIANDI', 6, 'Perempuan', '085882538303', '67a89da8e616b5-69749162-37082859'),
(189, '0126220896', 'ANNISA FAUZIA', 6, 'Perempuan', '083155785257', '67a89da8ed9394-22651211-82638259'),
(190, '3131768630', 'AZKA IBNUL AL-MUBAROK', 6, 'Laki-laki', '085692965819', '67a89da907c673-40497968-88901168'),
(191, '0121824829', 'ALAESYA MEITRI UKRIANA', 7, 'Perempuan', '0895424727308', '67a89da90ed947-80476834-75505222'),
(192, '0125726772', 'ALDI PIRMANSYAH', 7, 'Laki-laki', '083874716038', '67a89da91b8141-32827441-42769878'),
(193, '0125072847', 'ALIFIANDRA HANIF PANGESTU', 7, 'Laki-laki', '081310249736', '67a89da9253de5-66353390-28850941'),
(194, '0116976333', 'AULIA NAZLA ANDINASARI', 7, 'Perempuan', '081280837018', '67a89da92dc767-37497368-95235722'),
(195, '0121646504', 'DAFFA DALIL FADHIL', 7, 'Laki-laki', '085287697977', '67a89da936dfb1-14994109-78418624'),
(196, '0125700952', 'DAFFAH AULIA ZHAAFIRAH', 7, 'Perempuan', '083897142729', '67a89da93dfab3-11689389-90100993'),
(197, '0128836919', 'EPRI MULYA PUTRA', 7, 'Laki-laki', '087866263469', '67a89da9466ba7-24668615-34969097'),
(198, '0119783451', 'FAINI MUSLIMAH', 7, 'Perempuan', '083871737519', '67a89da94ef528-82918747-24824908'),
(199, '3125243136', 'FARAH AUFA KAMILAH', 7, 'Perempuan', '081284713891', '67a89da9578eb2-57845639-66538934'),
(200, '3128308434', 'FAUZAN ANGGORO PUTRA', 7, 'Laki-laki', '085770056559', '67a89da95e9682-26782072-43283084'),
(201, '0122342187', 'HAURA ZAHRA PERMASANDI', 7, 'Perempuan', '085945779234', '67a89da965f216-93003934-65679490'),
(202, '0117122098', 'LATIF ALFARIZ', 7, 'Laki-laki', '085894304005', '67a89da96c88b6-79002440-28151018'),
(203, '0111155679', 'M. KHOIRUL UMAM', 7, 'Laki-laki', '083152731866', '67a89da973cbf5-63352987-64138857'),
(204, '0124877306', 'MEISYA NAURA PERMADI', 7, 'Perempuan', '085893369160', '67a89da97b20b9-71154277-76123613'),
(205, '0119406310', 'MISEL JUITA', 7, 'Perempuan', '', '67a89da982dfc4-28464073-58531948'),
(206, '0118917158', 'MOH. KHOIRRULL WAFA', 7, 'Laki-laki', '089518578274', '67a89da989bae0-59282354-55534633'),
(207, '0113446023', 'MUHAMMAD DAFFA AL GHIFARI', 7, 'Laki-laki', '081286244181', '67a89da992b985-22576804-91460667'),
(208, '0115748351', 'MUHAMMAD KHOIRUL UMMAM', 7, 'Laki-laki', '087788048117', '67a89da99b3ba1-83298330-74373592'),
(209, '0122556315', 'MUHAMMAD NIZAM AL ZAM ZAMI', 7, 'Laki-laki', '', '67a89da9a382d2-05032320-10527976'),
(210, '0122656857', 'NAILA', 7, 'Perempuan', '083150643230', '67a89da9ab68f1-01001490-52013638'),
(211, '0112233501', 'RATU FIRLIANA RAMADHANI', 7, 'Perempuan', '085220409262', '67a89da9b24282-59922325-37771701'),
(212, '0118575941', 'REISYA SALVIA ARTANTI', 7, 'Perempuan', '085819317828', '67a89da9ba2b32-92768322-20416765'),
(213, '0128857970', 'RHADHAR RAYYA RABBANI', 7, 'Laki-laki', '081905651307', '67a89da9c331f8-86230171-46454465'),
(214, '0117363777', 'SALWA ARINA KHAIRUNNISA', 7, 'Perempuan', '085213654355', '67a89da9cb3eb7-43048957-53454703'),
(215, '0123086020', 'SITI FADILAH MAULIDA', 7, 'Perempuan', '082130213944', '67a89da9d262a8-32495450-69344765'),
(216, '0122476160', 'SYAFIRA AULIA NAFSYI', 7, 'Perempuan', '08128063112', '67a89da9dc3841-60562650-76825258'),
(217, '0112072009', 'TIARA RIZQI ISNAENI', 7, 'Perempuan', '087776162450', '67a89daa772868-72991033-59194882'),
(218, '0114664408', 'YUANITA AMARA', 7, 'Perempuan', '082110938746', '67a89daa9d94c6-61798520-40710016'),
(219, '3126181043', 'AFNAN SIYAJUL ALAM', 7, 'Laki-laki', '081210327082', '67a89daaaeee09-11943604-57567312'),
(220, '3120606408', 'MAHARIZA WAHID RAHMASYI', 7, 'Laki-laki', '085280097729', '67a89daab7ece1-66962124-79177569'),
(221, '3125918403', 'NAURA SENJA SURYAWINATA', 7, 'Perempuan', '087781660971', '67a89daaca6296-64158741-77022559'),
(222, '0115236352', 'RAESYA NISMALA', 7, 'Perempuan', '08999624217', '67a89daad43751-08090681-98139968'),
(223, '0129721773', 'VHINDY APRISYA PUTRI', 8, 'Perempuan', '', '67a89daae50391-49849327-93707076'),
(224, '0122947532', 'VIOLLIETTA INTANIA MAULIDA', 8, 'Perempuan', '085715724648', '67a89daaec1892-04748293-36119186'),
(225, '0116134996', 'A. MAHARDIKA RAMDHAN', 8, 'Laki-laki', '', '67a89dab1e7da4-35417887-51544494'),
(226, '0126321805', 'AGNES ANINDITA PUTRI', 8, 'Perempuan', '087772292991', '67a89dab290ce1-08105891-30147592'),
(227, '0124184923', 'ALFIAN FASAH HERDIANA', 8, 'Laki-laki', '087771555818', '67a89dab3b4803-84253850-97465663'),
(228, '0111107538', 'AULIA SYARAH', 8, 'Perempuan', '', '67a89dab4e34c1-51272762-95795768'),
(229, '0124760145', 'BILAL APRIAN', 8, 'Laki-laki', '085711667225', '67a89dab571f23-04401157-50333954'),
(230, '0122005978', 'DILA AULIANINGSIH', 8, 'Perempuan', '087873535255', '67a89dab69f1e8-63452816-63959721'),
(231, '0122463676', 'FATIHATUL RIZKIA', 8, 'Perempuan', '', '67a89dab734416-88765784-59055800'),
(232, '0125833961', 'HOLDA HANAT NURQADA', 8, 'Perempuan', '082310464442', '67a89dab81f548-36682689-45264619'),
(233, '0115432037', 'KAFKA MUHAMMAD KHARIZA', 8, 'Laki-laki', '083804071520', '67a89dab89f560-18390601-65192335'),
(234, '0111282911', 'KANEISHIA ANINDYA KISHA', 8, 'Perempuan', '', '67a89dab9549a9-36678261-86047475'),
(235, '3112741574', 'KENZIE NARARYA RAMADHAN', 8, 'Laki-laki', '081287488739', '67a89dab9d3907-30018580-93552903'),
(236, '3128130624', 'KHAIQILLAH AZHAAIRIN RAMADHANTI', 8, 'Perempuan', '085930080154', '67a89daba88fa1-66512734-67655993'),
(237, '0126489504', 'KHANSA NUR AZMINA', 8, 'Perempuan', '081335246177', '67a89dabafe483-41538415-77927357'),
(238, '0115497317', 'M. JIBRIL DZAKWAN AN-NOVRIAN', 8, 'Laki-laki', '081906387008', '67a89dabb80559-31746921-15658937'),
(239, '0113381742', 'MUHAMMAD ALFATIH', 8, 'Laki-laki', '085780318232', '67a89dabc73a67-71367224-97015382'),
(240, '0114575275', 'MUHAMMAD JOVI BIRRU AL ISLAMEEY', 8, 'Laki-laki', '087774443497', '67a89dabcfb8a0-56887336-64448936'),
(241, '0112935857', 'MUHAMMAD RIZKI ANUGRAH', 8, 'Laki-laki', '08970515813', '67a89dabdc9b17-20842758-57787604'),
(242, '0115742040', 'NABIL ATHOULLAH HIJRIYANSYAH', 8, 'Laki-laki', '087722751508', '67a89dabe41629-37816107-85833798'),
(243, '3123160985', 'NAJLA SABILA MAULIDA', 8, 'Perempuan', '085311855742', '67a89dabeb42e1-73993643-79148578'),
(244, '0115179492', 'NANDA ANUGRAH GONIUN WALINDA', 8, 'Perempuan', '087749219018', '67a89dac0a24c1-67332869-82400821'),
(245, '0125261553', 'NAYLATU SA\'ADAH', 8, 'Perempuan', '082210167969', '67a89dac189e88-07329726-20132187'),
(246, '0128820107', 'NENG KHUSNUL KHOTIMAH', 8, 'Perempuan', '085198992440', '67a89dac218cd9-34368150-99940483'),
(247, '0114835517', 'RIJAL TUMENGGUNG KARIM', 8, 'Laki-laki', '085877544702', '67a89dac2a71c8-75033482-30464835'),
(248, '0127134004', 'SILVIA KURNIA', 8, 'Perempuan', '087772523693', '67a89dac355d48-21006786-32061854'),
(249, '0121493221', 'TOMI FAUZI', 8, 'Laki-laki', '085817556646', '67a89dac3caf58-79620427-51981402'),
(250, '0122122306', 'AMANDA LATHIFAH', 8, 'Perempuan', '083891642868', '67a89dac46bee4-51588877-67812112'),
(251, '3125945448', 'HANA NAILA VERYANTO', 8, 'Perempuan', '083853392419', '67a89dac4f94c0-69363823-87233989'),
(252, '0128297910', 'RANIA ZIDNI PERMANA', 8, 'Perempuan', '083812693868', '67a89dac57f0a1-21818098-47050499'),
(253, '0112448504', 'REFAN ALPIANA', 8, 'Laki-laki', '083845325247', '67a89dac658c33-37523069-96986783'),
(254, '0121722435', 'AINUN FAJRILAH', 9, 'Perempuan', '083824242563', '67a89dac6d5185-78232516-20835451'),
(255, '3126365738', 'ALINA NUR AZKIA', 9, 'Perempuan', '083878649009', '67a89dac7dc8a2-41077881-38926711'),
(256, '0126644605', 'ARYA JULIANSYAH', 9, 'Laki-laki', '', '67a89dac8731b3-63305506-30152950'),
(257, '0127629068', 'ATALLAH ALVARO GHAISSAN MANDAYA', 9, 'Laki-laki', '081912416888', '67a89dac985933-20217256-96756400'),
(258, '0126099815', 'ATHIFA DEFALIA AZIZ', 9, 'Perempuan', '082120335802', '67a89daca1fa63-14152101-14872753'),
(259, '0127505385', 'CALLYSTA NYDIA PUTRI ANDREANA', 9, 'Perempuan', '082247188210', '67a89dacafb934-21332127-94068959'),
(260, '0118821449', 'DESIFA SEPTIYANI', 9, 'Perempuan', '', '67a89dacb8e439-24169893-87550868'),
(261, '0126390090', 'ERIN', 9, 'Perempuan', '', '67a89dacc654a4-45380317-38067313'),
(262, '0112498688', 'FARID RIZA ABDILLAH GUNAWAN', 9, 'Laki-laki', '081310949573', '67a89dacce53e1-34385416-90111459'),
(263, '0127260598', 'JANETA DEVA ALIMATUNNISA', 9, 'Perempuan', '081314330207', '67a89dacda3099-17023113-78630683'),
(264, '3117271409', 'KAYLA ASYIFA AL AZIZU MUSTIKA SARI', 9, 'Perempuan', '083890226261', '67a89dace3f8f1-53524014-51927243'),
(265, '0125490805', 'MUHAMAD RAMADAN RIFIANDI', 9, 'Laki-laki', '085282045508', '67a89dad0b61a6-24512786-86580697'),
(266, '0124976877', 'KHANZA AQILA FAIRUZ', 9, 'Perempuan', '081908966730', '67a89dad14b4a7-60246752-86369336'),
(267, '0124259763', 'M. AZKA ARDANI UTAMA', 9, 'Laki-laki', '087871141166', '67a89dad1d01a1-26801603-74793191'),
(268, '0121010232', 'M AZKA NURLIAWAN', 9, 'Laki-laki', '082110065390', '67a89dad252152-40827065-72957390'),
(269, '3128101944', 'M. YUSRIL NAZRUL HAKIM', 9, 'Laki-laki', '082316718190', '67a89dad303f04-10016646-25984786'),
(270, '0125565591', 'MIKALIA QISTIWA', 9, 'Perempuan', '081297097539', '67a89dad3a9315-86080259-94989658'),
(271, '0124551620', 'MUHAMAD ZAQI TAZKIYUNNUFUS', 9, 'Laki-laki', '081290540628', '67a89dad4b9950-24488435-97652139'),
(272, '0126463232', 'MUHAMMAD ABDUL RASYID', 9, 'Laki-laki', '', '67a89dad536597-98692950-95914210'),
(273, '0128203350', 'MUHAMMAD FAJAR RISKY', 9, 'Laki-laki', '083187796164', '67a89dad5eff60-54040521-32201939'),
(274, '0125620083', 'NADHIRA ALIYA NATASYA', 9, 'Perempuan', '082312025363', '67a89dad66d0a6-72269382-16190596'),
(275, '3121250568', 'NOVI APRILIANI', 9, 'Perempuan', '081396196881', '67a89dad6dcf02-60311169-61262498'),
(276, '0126036270', 'NURLAILA KAMAL', 9, 'Perempuan', '085383734122', '67a89dad777398-08839610-39561022'),
(277, '3129042771', 'PUTRI AQILA RAMADHANI', 9, 'Perempuan', '085960333729', '67a89dad80c1e3-07213931-58835617'),
(278, '3124352055', 'QIRA FIKRA AVIFA', 9, 'Perempuan', '0895630616572', '67a89dad88bf03-75313556-51916341'),
(279, '0127871013', 'TB. IHSAN ANWARUDIN', 9, 'Laki-laki', '085210999091', '67a89dad9442d2-94114256-62607026'),
(280, '0128134710', 'ZAHRA OKTAVIANI BASRI', 9, 'Perempuan', '082113564254', '67a89dad9c8444-93015795-73877895'),
(281, '0121413086', 'ZAKIANU PUTRA BUDIMAN', 9, 'Laki-laki', '', '67a89dada97850-13056984-47984905'),
(282, '0116929552', 'ZIDAN FATHUL BIRRI', 9, 'Laki-laki', '081294789333', '67a89dadb74048-01649352-24380501'),
(283, '0123507101', 'ZIHAN FATINA BUHORI', 9, 'Perempuan', '089516299217', '67a89dadc1a919-67007750-41354925'),
(284, '0115027451', 'BEBY AULIA RAHMAH', 9, 'Perempuan', '083841280039', '67a89dadcac218-79307151-35386817'),
(285, '3127889605', 'MUHAMAD HARLI FARENDRA', 9, 'Laki-laki', '', '67a89dadd58743-73368198-48993290'),
(286, '0113313204', 'A MUHYI AL MUJAKI', 10, 'Laki-laki', '085811551212', '67a89dade31039-88187695-52090302'),
(287, '0127668452', 'AFIFA HUMAIRA', 10, 'Perempuan', '', '67a89dae8991c9-30014401-33780751'),
(288, '0119699136', 'AHMAD MUHAR PUTRANTO', 10, 'Laki-laki', '089527401726', '67a89daeb91348-39277280-27941124'),
(289, '0115654893', 'AMANDA APRIYANTI', 10, 'Perempuan', '', '67a89daec8e171-31285756-47228623'),
(290, '0118334364', 'AULIA FATIMAH AZAHRA PERMANA', 10, 'Perempuan', '087787537779', '67a89daf398f49-41290734-81247638'),
(291, '0128488153', 'AWALUDIN IBNU ILMIWAN', 10, 'Laki-laki', '', '67a89daf9f5175-51025102-52808226'),
(292, '0121011497', 'AYESHA FITARI HUMAIRA', 10, 'Perempuan', '', '67a89dafbccd98-68769814-23846626'),
(293, '0127940807', 'AYIMAS NINDIA PUTRI', 10, 'Perempuan', '', '67a89dafe94074-68854282-85868348'),
(294, '0112523787', 'DAFA KHAIRAN ARYAGUNA', 10, 'Laki-laki', '', '67a89db0397e89-27670462-70029740'),
(295, '0118223127', 'DANENDRA PRIYA NATHAN', 10, 'Laki-laki', '', '67a89db059c5e9-68734385-79130263'),
(296, '0127672429', 'DZAOMI MULKI HAKIM', 10, 'Laki-laki', '', '67a89db06c19e2-91747227-95328437'),
(297, '0121408259', 'FAKHIRA SELVANI', 10, 'Perempuan', '081809097333', '67a89db0770339-87830175-11105999'),
(298, '0125251360', 'HAIKAL KAMIL TRIANA', 10, 'Laki-laki', '087772873555', '67a89db083c342-05472571-63215194'),
(299, '3115960985', 'HANI HANIFA', 10, 'Perempuan', '', '67a89db09ce391-19752508-46680342'),
(300, '0117456704', 'JIHAN ZAHIRA AZHAR', 10, 'Perempuan', '083176208992', '67a89db0b6ef31-19673936-43051811'),
(301, '0119332095', 'KAKA KAUTSAR YUSUF', 10, 'Laki-laki', '087772677712', '67a89db0cd8d73-68582035-25997162'),
(302, '0122172984', 'M. FARHAN', 10, 'Laki-laki', '081298912747', '67a89db0ea5642-42130130-81444816'),
(303, '0125131164', 'M. FADHIL SIROJUL WAHAJ', 10, 'Laki-laki', '', '67a89db10cf805-42084385-58536043'),
(304, '0111121172', 'MUHAMAD IQBAL NAJIYUDDIN', 10, 'Laki-laki', '', '67a89db11b15a8-78318293-99655257'),
(305, '0119367391', 'MUHAMAD JAZULI SUFIAN', 10, 'Laki-laki', '', '67a89db126fb19-41537826-95207419'),
(306, '0118756330', 'MUHAMMAD ZAHRAN ZUFAR MUZHAFFAR', 10, 'Laki-laki', '', '67a89db13c8981-48943129-83345061'),
(307, '0115783076', 'NAIRA PUTRI KUSUMAH', 10, 'Perempuan', '', '67a89db145d059-54135955-85740658'),
(308, '3122746344', 'NAZWA AULIA PUTRI', 10, 'Perempuan', '087777497159', '67a89db152bde6-15963044-95031393'),
(309, '0119711413', 'NENG ASIH ELIYANA', 10, 'Perempuan', '', '67a89db15bb6e8-02319193-74483288'),
(310, '0113930578', 'PUTRI YANA NABILAH', 10, 'Perempuan', '', '67a89db1e8a3e9-38551578-94743641'),
(311, '0116263481', 'RATU PUTRI SARI', 10, 'Perempuan', '', '67a89db21d1b16-54536845-59141823'),
(312, '0127056941', 'SHAFIRA KHOIRUNISA', 10, 'Perempuan', '', '67a89db224e254-51621931-39926651'),
(313, '0119777656', 'SINTA FITRIANSYAH', 10, 'Perempuan', '', '67a89db23708c1-92324749-22645734'),
(314, '0116695111', 'SITI AULIA RAHAYU', 10, 'Perempuan', '', '67a89db2476469-77205907-81613027'),
(315, '0119803612', 'TURMUDI', 10, 'Laki-laki', '083891492404', '67a89db255bf10-86570797-20103595'),
(316, '0108450141', 'SITI EUIS MALHAMAH', 10, 'Perempuan', '081284304624', '67a89db2601c64-26890896-58220852'),
(317, '0112950636', 'NOOR AL-FAATIH ABDURRAHMAN', 11, 'Laki-laki', '', '67a89db270aaf7-53420614-72482496'),
(318, '0126855458', 'M. FADHIL PURWANTO', 11, 'Laki-laki', '', '67a89db2871798-39963518-23382808'),
(319, '3124195407', 'M. FADLAN AL-MUBAROK', 11, 'Laki-laki', '', '67a89db2a05ed2-30349926-52360016'),
(320, '3122188957', 'NAILA NURFADILAH', 11, 'Perempuan', '', '67a89db2b20f98-55752010-26720058'),
(321, '0114168903', 'NATASYA CAROLINE SOFYAN', 11, 'Perempuan', '', '67a89db2c01b49-87719860-36996712'),
(322, '0126602691', 'AHMAD MUNTASAR AL FATHAN', 11, 'Laki-laki', '', '67a89db2d21896-50627613-38779932'),
(323, '0127809120', 'APRIEL YUMNA FARIHA', 11, 'Perempuan', '', '67a89db2e08e16-78252035-82727490'),
(324, '0118365579', 'AUFA NUR FALAHATI', 11, 'Perempuan', '', '67a89db2ea2cf4-90299431-23052091'),
(325, '0121521055', 'CALLISTA DWI DAMAYANTI', 11, 'Perempuan', '', '67a89db30b3562-56940104-33722247'),
(326, '0115877513', 'CAREL SEPTRI DIARA', 11, 'Perempuan', '', '67a89db31df089-19627870-75064946'),
(327, '0118217823', 'FARHAT\'AMMAR MUMTAZ', 11, 'Laki-laki', '', '67a89db331a568-89963573-43053826'),
(328, '0116344768', 'KINARA AULIYA RAMADHANI', 11, 'Perempuan', '', '67a89db33be0e0-14838280-94527943'),
(329, '0121586746', 'M. FARHAN ISMATULLOH', 11, 'Laki-laki', '', '67a89db3e6b1c0-13219966-69085692'),
(330, '0111320330', 'MOHAMAD JIBRIL PRASETYO', 11, 'Laki-laki', '085771480438', '67a89db417f020-97192872-66603237'),
(331, '0113734334', 'MUHAMAD UNO RAHABIANSYAH', 11, 'Laki-laki', '', '67a89db42b1a75-72562834-94899252'),
(332, '3113353517', 'RAYHAN FAUZAN RIZKI', 11, 'Laki-laki', '', '67a89db43fbd85-00476274-67630162'),
(333, '0121525005', 'RIHANATUL FAUZIAH', 11, 'Perempuan', '', '67a89db44f3564-00557854-69674933'),
(334, '0122043490', 'SABRINA MALAHAYATI FIRDAUS', 11, 'Perempuan', '', '67a89db4560299-58375857-33358952'),
(335, '0114960614', 'SITI AQILAH', 11, 'Perempuan', '', '67a89db4627052-40327505-77197505'),
(336, '0112815413', 'SITI AULITA RAHAYU', 11, 'Perempuan', '', '67a89db46a7d40-97187037-55005045'),
(337, '0123615612', 'SITI NUR AFIPAH', 11, 'Perempuan', '', '67a89db4739495-62780335-58367945'),
(338, '3129658149', 'SITI QUROTA\'AINI', 11, 'Perempuan', '', '67a89db4860f17-91546537-71795194'),
(339, '3113971990', 'SITI SABILLA AL-ZIQRI', 11, 'Perempuan', '', '67a89db49b9716-55741708-84630838'),
(340, '0123901479', 'SYISYA MAULIDA KHODIJAH', 11, 'Perempuan', '', '67a89db4ac8ed8-61134827-92756160'),
(341, '0113433925', 'TIAS TRI AULIA', 11, 'Perempuan', '', '67a89db4bb7826-46242301-62564174'),
(342, '0121334581', 'ZAHRANA RAMADHANI', 11, 'Perempuan', '', '67a89db4d8fd87-39962547-33125249'),
(343, '0121192115', 'RADIF HIDAYAHTULLAH', 11, 'Laki-laki', '', '67a89db4f089f6-72437690-53188970'),
(344, '3117268870', 'ATHIFA ZAHIRA', 12, 'Perempuan', '08128051862', '67a89db540da94-54384057-21378680'),
(345, '0108364962', 'AZMI FADHILLAH', 12, 'Laki-laki', '081381163386', '67a89db56e1161-80121223-50569515'),
(346, '0113836342', 'DELVIA ARDELIANI', 12, 'Perempuan', '081321980180', '67a89db581a1e5-94862875-49563347'),
(347, '0112135449', 'DILALATUN NAFISAH', 12, 'Perempuan', '085280491675', '67a89db598b2f1-05087357-82568150'),
(348, '0097956285', 'FATHAN CHOIRUL AZMI', 12, 'Laki-laki', '081298998164', '67a89db5c764e4-24478362-14090957'),
(349, '0101453912', 'HALIMATUL MUSTAFIDAH', 12, 'Perempuan', '085311696704', '67a89db5e3ed47-94938683-59740784'),
(350, '0116442108', 'MUHAMMAD DAFA RABBANI', 12, 'Laki-laki', '081298026042', '67a89db5edb120-68358939-82707961'),
(351, '3112077525', 'MUHAMMAD MAHESA IHSANUL IMAN', 12, 'Laki-laki', '085871620221', '67a89db60eb177-42998318-87455821'),
(352, '0103628605', 'NISRINA HASLIZA', 12, 'Perempuan', '085718186313', '67a89db6202073-05047157-95023856'),
(353, '0118766510', 'NUR SYFA KHAIRIN NISA', 12, 'Perempuan', '0895342214042', '67a89db62926c6-18153530-86939335'),
(354, '0107649540', 'OLIVIA RAHAYU', 12, 'Perempuan', '085695341440', '67a89db6389553-40901734-98482203'),
(355, '0111430290', 'OLIVIA MAZID', 12, 'Perempuan', '085210747045', '67a89db6443e86-32309392-91559532'),
(356, '0111684196', 'RAFA FALAH BURHANUDIN', 12, 'Laki-laki', '081808202282', '67a89db64e55e3-99556219-47954708'),
(357, '0102856228', 'SALSABILA', 12, 'Perempuan', '081210974997', '67a89db6567379-48394120-67398680'),
(358, '0117518960', 'SALSABILA MAULIDA', 12, 'Perempuan', '082122302998', '67a89db66961f6-95200735-55520197'),
(359, '0119071469', 'SYAHMEKA JASMINE KAWEDAR', 12, 'Perempuan', '088298936441', '67a89db67ddae2-64572501-29810786'),
(360, '0119445601', 'ZAHWA MUSAROPAH', 12, 'Perempuan', '085893722245', '67a89db6864162-77866479-75736552'),
(361, '0112894812', 'SYIFA NURMAULIDA HAYATI', 12, 'Perempuan', '081911064811', '67a89db69017a1-24075142-23110867'),
(362, '0116705188', 'ALMAIDA AZ ZAHRA', 12, 'Perempuan', '085212731823', '67a89db6999085-31065402-46931334'),
(363, '3101277806', 'DZIRA ASSYIDA', 12, 'Perempuan', '081990022448', '67a89db6a15486-01047880-79480901'),
(364, '0117898500', 'ISQI FADLAH', 12, 'Perempuan', '089650574301', '67a89db6af4305-20102912-29492685'),
(365, '0107742437', 'M. RIO AGASTIAN RAMADHAN', 12, 'Laki-laki', '081318048941', '67a89db6b7e818-09241718-35023788'),
(366, '0118527231', 'SITI NURAFIFAH', 12, 'Perempuan', '08815947577', '67a89db6c55de8-74765516-50421605'),
(367, '3106753779', 'ARIN NAZIHAH', 12, 'Perempuan', '081212889293', '67a89db6cd8996-19026116-81909800'),
(368, '0107090272', 'KHALIDA LUBNA MAJEEDAH', 12, 'Perempuan', '0895393723320', '67a89db6da2ea3-09869284-77783338'),
(369, '0116782432', 'SYAHMI AUFA KHODIJAH', 12, 'Perempuan', '081383389783', '67a89db6e2f7a5-56016615-21534751'),
(370, '0112996462', 'SITI HILDA AYU HIDAYATI', 12, 'Perempuan', '087773196105', '67a89db6eb29e0-83437757-93978548'),
(371, '0113810308', 'NABILA RESTU KIRANA', 12, 'Perempuan', '085778621241', '67a89db70979e6-19166954-14308468'),
(372, '0116982464', 'RINDU ANJELI', 12, 'Perempuan', '0895358671576', '67a89db716a4f8-58473909-46984909'),
(373, '0104493223', 'NURUL AMALIA PRASETYO', 12, 'Perempuan', '083815166389', '67a89db722a1f9-20642321-35350039'),
(374, '0112477069', 'CAHYA REGINA HAPITULLAH', 12, 'Perempuan', '085693419357', '67a89db733d7d6-35663173-26899124'),
(375, '0104101277', 'ARSYAD NAJIB', 12, 'Laki-laki', '081211847799', '67a89db7697103-99175109-42477920'),
(376, '0117093345', 'FAKHRA ZAHIYA AZARIA', 13, 'Perempuan', '081296589981', '67a89db770ba93-37219982-16391333'),
(377, '0115844770', 'MOH. IRPAN SUANDI', 13, 'Laki-laki', '081224314834', '67a89db7800bc4-76857124-20924034'),
(378, '0103890334', 'MUHAMAD DIMAS RAMADAN', 13, 'Laki-laki', '083152765576', '67a89db79012b0-66666290-56883952'),
(379, '0117761135', 'ZAKIYA ZAHRA NURHIDAYAT', 13, 'Perempuan', '085774532934', '67a89db7982681-53045980-25269756'),
(380, '0118786795', 'ZULFAH HASANAH', 13, 'Perempuan', '085892165669', '67a89db79f3504-00986300-32630316'),
(381, '3112166044', 'ALYA DEA LITA', 13, 'Perempuan', '089151829029', '67a89db7addef5-12466808-71368910'),
(382, '3110526252', 'MUHAMMAD ALFARIZI AKBAR', 13, 'Laki-laki', '085216199901', '67a89db7b80d95-84658506-14226571'),
(383, '3116301503', 'KAMILATU NUFUS', 13, 'Perempuan', '0895411943477', '67a89db7cabbb0-79346558-89028786'),
(384, '0117267006', 'AISHA IVANA HARYANTO', 13, 'Perempuan', '081382269498', '67a89db7d3cf14-74421662-13023279'),
(385, '0119107966', 'AISYA SEPTIA', 13, 'Perempuan', '085817091036', '67a89db7e5ecd3-51198856-28351596'),
(386, '0119615121', 'AKMAL LATHIF KHALIFAH RAMADHAN', 13, 'Laki-laki', '087874530882', '67a89db7f3e2d2-64146116-69032238'),
(387, '0119989109', 'ALIKA NAILA PUTRI', 13, 'Perempuan', '087772877757', '67a89db80d3a84-75349351-65341858'),
(388, '0101518396', 'AQSAL AHLUL FAZR', 13, 'Laki-laki', '081386324599', '67a89db820e5f0-76544588-34693671'),
(389, '0111591188', 'DHAFIN FIRENDRA', 13, 'Laki-laki', '087772158139', '67a89db82e47f8-57729779-97056866'),
(390, '0117317675', 'ELLYANA AHSAN SULAEMAN', 13, 'Perempuan', '083152255511', '67a89db83aa790-30358727-46406539'),
(391, '0106108214', 'ELSYAH RAMADHANI', 13, 'Perempuan', '08585993833', '67a89db848a825-80861995-55145354'),
(392, '0104659968', 'FIRDA ZAHLA TIFA', 13, 'Perempuan', '085893570216', '67a89db8547e62-08264679-89416400'),
(393, '0109921750', 'HANNA SYAFIRA SEPTIANI', 13, 'Perempuan', '085215873852', '67a89db864dfc4-47077237-28112075'),
(394, '0119147209', 'LIVIA LATIF ASYFA', 13, 'Perempuan', '085810460609', '67a89db86f6873-82857956-67278515'),
(395, '0112945405', 'LUKMANUL HAKIM', 13, 'Laki-laki', '083812638587', '67a89db884b990-52190503-71468894'),
(396, '0109367606', 'M.AZKA NASABY', 13, 'Laki-laki', '083877432720', '67a89db8924638-39391669-66586243'),
(397, '0094409722', 'MALIKI ADHA', 13, 'Laki-laki', '0818862870', '67a89db89d9686-46243211-94776442'),
(398, '0092634910', 'RATU YULIANA', 13, 'Perempuan', '087889062107', '67a89db8ac9bd9-18989440-26163550'),
(399, '0108699079', 'RESTU GUNAWASA RANDYATAMA', 13, 'Laki-laki', '087896689741', '67a89db8bde155-48557685-58931903'),
(400, '0118118741', 'SHAFA RAYYA HUMAIRA', 13, 'Perempuan', '081806105150', '67a89db8cf9d45-02847177-42798332'),
(401, '0111948045', 'SITI HANA YULIANTI', 13, 'Perempuan', '087777557880', '67a89db8df1e96-53824133-22219907'),
(402, '0118032949', 'SYIFA LATHIFA APRILIYANI', 13, 'Perempuan', '0857737550842', '67a89db8e7e4b9-03546517-77922008'),
(403, '0117424722', 'HANI RAMADHANI', 13, 'Perempuan', '0895342214017', '67a89db9031d87-97118245-55341927'),
(404, '0101193918', 'MARDHOTLLAH NURHILMAN', 13, 'Laki-laki', '082249091583', '67a89db90beb34-31705926-30572252'),
(405, '0105498849', 'AZIZAH RISMAYANTI MULYANA', 13, 'Perempuan', '0895332033521', '67a89db91f81a7-00372610-35077660'),
(406, '0117347075', 'GHANNY NAUVAL SASMITA', 13, 'Laki-laki', '085221518225', '67a89db92ad411-34256289-70266146'),
(407, '0094062751', 'ZALFA LUTHFIYANI', 13, 'Perempuan', '085697908745', '67a89db93876d2-86491790-67339570'),
(408, '0117240192', 'BINTANG SUFI AL FARADJI', 14, 'Laki-laki', '0895322529292', '67a89db94292f9-56430087-22967884'),
(409, '0115737436', 'JIHAN PUTRI KHAIRA', 14, 'Perempuan', '087772248645', '67a89db963fad2-70449714-95775677'),
(410, '0118039029', 'M. ABEEYAN RASYAD', 14, 'Laki-laki', '', '67a89db96b2f39-91692052-44969794'),
(411, '0111516905', 'PHELIA AGRIPINA', 14, 'Perempuan', '087772065082', '67a89db97358a8-46693918-88375768'),
(412, '0111497991', 'RAIHANA FARRAS AQUENA', 14, 'Perempuan', '', '67a89db97dcd20-27138197-49871857'),
(413, '3114758150', 'FIRDA NURANI RAMADHAN', 14, 'Perempuan', '085777266179', '67a89db9852d22-93485010-45813853'),
(414, '0118694615', 'NAILA OKTAVIANI', 14, 'Perempuan', '08567931600', '67a89db9927dc6-09917092-38426702'),
(415, '3108692048', 'RIO EVENDI SAPUTRA', 14, 'Laki-laki', '089516340300', '67a89db999f4b6-38829557-63785761'),
(416, '0103659811', 'ADAM WIJAYA PRAKOSA GUMELAR', 14, 'Laki-laki', '0882249906869', '67a89db9a34d26-53875840-66354842'),
(417, '0107148800', 'AGI HABIBULLAH', 14, 'Laki-laki', '081314412464', '67a89db9b21894-58675603-28638866'),
(418, '0118572905', 'ANIES MUMTAZ NADZIR', 14, 'Laki-laki', '', '67a89db9ba1960-77787956-91905567'),
(419, '0114521700', 'AZALEA PUTRI ZAHIRA. ZK', 14, 'Perempuan', '087784075060', '67a89db9ca5f99-93569858-30814396'),
(420, '0111932588', 'FAWWAZ NADHIF FAUZI', 14, 'Laki-laki', '081319676826', '67a89db9d1f3c7-25009118-38005481'),
(421, '0108779036', 'FITRIA RAMADHANI', 14, 'Perempuan', '0895404910104', '67a89db9e33fe3-38428586-22804405'),
(422, '0108508290', 'SRISYA SEVILLA SHERIN HIDAYAT', 14, 'Perempuan', '081287273197', '67a89db9eec379-86386402-59736261'),
(423, '0102067753', 'SAHRIJAL AZAM', 14, 'Laki-laki', '087773828179', '67a89dba0b04f3-20844033-73779679'),
(424, '0113820044', 'RT. NAURAH HAMDANI', 14, 'Perempuan', '082123377586', '67a89dba191086-80374167-17883122'),
(425, '0104476369', 'MOH.ATTOR FIRDAUS', 14, 'Laki-laki', '', '67a89dba20b529-83482015-11492321'),
(426, '0115032431', 'GADIZA KIRANI RAHAYU', 14, 'Perempuan', '0895403222817', '67a89dba278df8-41375742-34797664'),
(427, '0109110167', 'KHAIFA ALMIRA PUTRI', 14, 'Perempuan', '087871741546', '67a89dba32dd96-01931349-92131806'),
(428, '0105604198', 'M. ADHA PRATAMA', 14, 'Laki-laki', '0895393716796', '67a89dba3a8459-45948445-72519143'),
(429, '0115039781', 'MUCHAMMAD FARHAN FALAH', 14, 'Laki-laki', '082124626420', '67a89dba48a6b3-86419266-83323805'),
(430, '0112664682', 'MUHAMAD ALTAF DZIKRIANSYAH', 14, 'Laki-laki', '081315837030', '67a89dba50ee46-31594537-20752708'),
(431, '0114938927', 'MUHAMAD FATTAH RIZKY AMRIZAL', 14, 'Laki-laki', '083119903134', '67a89dba6089f8-56283769-66750507'),
(432, '0118208032', 'MUHAMAD IHSAN', 14, 'Laki-laki', '081211715040', '67a89dba6c6b68-15678960-35727410'),
(433, '0105556721', 'MUHAMMAD FAKHRY FAQQIHUDDIN', 14, 'Laki-laki', '', '67a89dba768e83-90684329-23363655'),
(434, '0115867108', 'PUTRI INDAH ZAVIRA', 14, 'Perempuan', '', '67a89dba7ec2d3-62602459-26179784'),
(435, '0118015261', 'RANIA AYUNINDYA ASHAR', 14, 'Perempuan', '087884558370', '67a89dba862f31-03958232-61147134'),
(436, '0111422838', 'SYAUQIYA ARIFIA', 14, 'Perempuan', '081228359456', '67a89dba938868-93103264-16428663'),
(437, '0115098163', 'ARKIAN RAFKA ABIEZA', 14, 'Laki-laki', '08122224694', '67a89dbaaa2656-97924394-94000579'),
(438, '3118604350', 'REISYA KHOLIFATUN NAJYAH', 14, 'Perempuan', '081977446471', '67a89dbab2eee6-69196422-70721366'),
(439, '0117417111', 'DAFA NUGRAHA PRATAMA', 14, 'Laki-laki', '085716093746', '67a89dbabad629-62844760-45532694'),
(440, '0118845989', 'LAILA RAMADHANI RUHIYAT', 15, 'Perempuan', '081385563820', '67a89dbac86f73-90592223-34272880'),
(441, '0118725708', 'AFRIZAL SIDQI AL\'GHIFARI', 15, 'Laki-laki', '085180668460', '67a89dbacfc884-00157695-10898880'),
(442, '0105551559', 'ASMA LAILATUL HUSNA', 15, 'Perempuan', '082213324282', '67a89dbad877a8-72246257-66854100'),
(443, '0119512384', 'FAATHIR MUHAMMAD HIDAYAT', 15, 'Laki-laki', '085217318379', '67a89dbae66582-83500320-10579262'),
(444, '0116063450', 'SYIFA HELIYANA AZHAR', 15, 'Perempuan', '081382185503', '67a89dbb09eb96-52677121-75462153'),
(445, '0125834074', 'SYARIFA ANINDYA FAKHRI', 15, 'Perempuan', '081314864064', '67a89dbb2052f7-85628122-58611698'),
(446, '3112725793', 'RADITHYA RAFFA KARLIANDRI', 15, 'Laki-laki', '081283983736', '67a89dbb29d215-33746082-76447068'),
(447, '0104253329', 'AHMAD MURTADZO', 15, 'Laki-laki', '087773924700', '67a89dbb3a0e65-44169863-45739347'),
(448, '0104282084', 'ALYA HAIPANI', 15, 'Perempuan', '08558221578', '67a89dbb42e809-16338703-48827505'),
(449, '0101746222', 'AZKIA FITRI RAMADHANI', 15, 'Perempuan', '081717142121', '67a89dbb52c1a4-04181232-30348531'),
(450, '0113317839', 'AZMI AULIA PUTRI', 15, 'Perempuan', '0827773951063', '67a89dbb6292a1-81459869-97069800'),
(451, '0117842740', 'CLARISSA AINA RAMADHANI', 15, 'Perempuan', '085693748990', '67a89dbb77bae2-74409479-80008729'),
(452, '0115158925', 'FADLI MUHAMAD BASKORO', 15, 'Laki-laki', '081395227952', '67a89dbc389728-55234874-50756959'),
(453, '0116459768', 'FARRAS AZARINE FIRDAUS', 15, 'Perempuan', '0895326017018', '67a89dbc65b323-73037191-86654291'),
(454, '0111742215', 'FATIMATUZ ZAHRO', 15, 'Perempuan', '083198139254', '67a89dbc6d70d5-72753507-44408068'),
(455, '0116427558', 'HANIFA JIHAN MUFIDA', 15, 'Perempuan', '087774525260', '67a89dbc78b834-73433470-50539685'),
(456, '0103637774', 'INANDRA ADRIANI SYUKUR', 15, 'Perempuan', '081514563722', '67a89dbc824705-42158209-10587426'),
(457, '0116244312', 'KAMILLA NUR HIDAYAH', 15, 'Perempuan', '089644402911', '67a89dbc901949-75565531-96416111'),
(458, '0112179324', 'M. GHIBRAN ALFIAN', 15, 'Laki-laki', '085930104043', '67a89dbc9b0222-71313445-88999318'),
(459, '0115826300', 'MUHAMAD HAIDIL FAUZAN', 15, 'Laki-laki', '0881010085598', '67a89dbca83855-55941423-79060639'),
(460, '0111068780', 'NESA KHURIL AENI', 15, 'Perempuan', '083808828422', '67a89dbcb21f53-20287871-35115264');
INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `id_kelas`, `jenis_kelamin`, `no_hp`, `unique_code`) VALUES
(461, '0108667191', 'NOVIA INDRIANI PUTRI', 15, 'Perempuan', '087772182286', '67a89dbcba6868-30952316-19173523'),
(462, '0118791446', 'SAHRA TRIVIA PUTRI', 15, 'Perempuan', '083898951887', '67a89dbcccb671-58862821-91330187'),
(463, '0112688936', 'SASHI KYRAN AISYA', 15, 'Perempuan', '08176686306', '67a89dbcd80469-59301846-73636578'),
(464, '0111523997', 'SATRIA HADIQ SANTIKA', 15, 'Laki-laki', '085781783512', '67a89dbce276f6-13984610-50106025'),
(465, '0115020208', 'SYIFA BILQIS FAJRIANA', 15, 'Perempuan', '081311142767', '67a89dbceb2f10-38157069-63720813'),
(466, '0113391063', 'TB MUHAMMAD HAIDAR AL AMIN', 15, 'Laki-laki', '087773967442', '67a89dbd082d59-92211437-73817816'),
(467, '0111068461', 'ZINAN SAKTI ALGHANI', 15, 'Laki-laki', '08118482216', '67a89dbd1093e2-52638417-84776343'),
(468, '0111197014', 'ASYIFA RAMDANIATI', 15, 'Perempuan', '081296522308', '67a89dbd1dcec9-21470318-27488953'),
(469, '0112125807', 'AZKADINA PRAMESWARI', 15, 'Perempuan', '08111200433', '67a89dbd24df53-97990684-35411877'),
(470, '3129392502', 'NINDIA MAR\'ATUS SOLEKHAH', 15, 'Perempuan', '087773641497', '67a89dbd346987-66635379-37914920'),
(471, '0118698043', 'NAURA PUTRI APRILIA', 15, 'Perempuan', '082110763370', '67a89dbd3e2d24-86773320-86024974'),
(472, '0116608992', 'ARADEA HAZNA FADILAH', 16, 'Perempuan', '085213931492', '67a89dbd4f63d3-40237571-27121460'),
(473, '0116029484', 'ASSYIFA SALSABILA', 16, 'Perempuan', '083179570777', '67a89dbd59c110-97811529-70646190'),
(474, '0112502825', 'NINA NAZILAH', 16, 'Perempuan', '085695402802', '67a89dbd69bd43-04129945-35042402'),
(475, '0111576133', 'QONITA INTAN NARESWARI', 16, 'Perempuan', '081807054654', '67a89dbd7b0a53-60200412-82453106'),
(476, '0116259265', 'ALMIRA FAIHA', 16, 'Perempuan', '083837074448', '67a89dbd8c4325-93324502-80426094'),
(477, '3105288757', 'TIARA RAMADHANI', 16, 'Perempuan', '0883137755390', '67a89dbda08481-77187358-56779593'),
(478, '3113169251', 'MEISYA MALINDRA PUTRI', 16, 'Perempuan', '0895622348675', '67a89dbdb2f961-88358496-63136870'),
(479, '3116855405', 'MUHAMAD AMIR BADAR', 16, 'Laki-laki', '083179230457', '67a89dbdbfabc1-10509521-57727728'),
(480, '3108872371', 'HERA YADI', 16, 'Perempuan', '085777266197', '67a89dbdca86c7-10911022-10600486'),
(481, '0118612373', 'ALISHA ATHA RAHAYU', 16, 'Perempuan', '', '67a89dbde1f941-13288812-20407314'),
(482, '0117183301', 'AURA KHAYLANNISA WIBI', 16, 'Perempuan', '081290510255', '67a89dbdf1f5c8-21041196-96311089'),
(483, '0104816902', 'DAMAR RADITHYA', 16, 'Laki-laki', '081314450905', '67a89dbe09ecf2-96349237-18638066'),
(484, '0113346529', 'DEANDRA NIRMALA', 16, 'Perempuan', '08176685206', '67a89dbe1a8302-27464006-89374359'),
(485, '0115617845', 'DIAN NAFA SYARIFAH', 16, 'Perempuan', '081517157557', '67a89dbe238865-93742987-30340290'),
(486, '0117294931', 'FITHRIYYA KAYLA TAHZANI', 16, 'Perempuan', '', '67a89dbe39de82-16685770-59163136'),
(487, '0111786091', 'ILMA AL-ALIYYA', 16, 'Perempuan', '082288770063', '67a89dbe4d0af8-42041184-95181997'),
(488, '0114639751', 'KEISYA RACHMA DHIYA', 16, 'Perempuan', '085811971923', '67a89dbe5dd575-48339596-88810044'),
(489, '0111918695', 'MIKAYLA SHAFIA PUTRI', 16, 'Perempuan', '081315820096', '67a89dbe6b3f67-34898263-88030789'),
(490, '0107181792', 'MUHAMMAD HIBATULLOH AKMAL', 16, 'Laki-laki', '087883471277', '67a89dbe78f6d8-61758600-10343338'),
(491, '0115548103', 'N. OKTANIA PUTRI AL-LUBBI', 16, 'Perempuan', '087773723334', '67a89dbe88a1a7-66694135-77375793'),
(492, '0113426619', 'NURIL FADILATUL ULYA', 16, 'Perempuan', '08990077053', '67a89dbe9abdb8-78872241-43819248'),
(493, '0107077115', 'RADITIA LUQMANUL HAKIM', 16, 'Laki-laki', '087775134950', '67a89dbea570f2-23041477-48050125'),
(494, '0112490795', 'RUFAIDAH NISRINA HAURA', 16, 'Perempuan', '', '67a89dbeb72067-30287842-37476938'),
(495, '0111480107', 'SAYYIDATI SYAHRA', 16, 'Perempuan', '083879677953', '67a89dbecc86a2-76880767-68696967'),
(496, '0114730887', 'SYAFIQ FADHLAN AHMAD', 16, 'Laki-laki', '081281499647', '67a89dbee40fb1-35716913-13005339'),
(497, '0118314799', 'WILDATUN NUFUS', 16, 'Perempuan', '082110866033', '67a89dbf0db682-03828940-15025767'),
(498, '0117212466', 'YASMIN HEVIANI', 16, 'Perempuan', '082118554771', '67a89dbf39e983-62239679-23284432'),
(499, '0101613789', 'YUSRIE NUR-FATTAH', 16, 'Laki-laki', '', '67a89dbf4e0823-37016830-11311977'),
(500, '0117939607', 'ZAKIA AFIA RAHMI', 16, 'Perempuan', '085774321318', '67a89dbf5ec160-10881523-61140514'),
(501, '0117380437', 'MU\'ADZ NASHEER ABDILLAH', 16, 'Laki-laki', '081519177119', '67a89dbf6ee584-71115148-95464683'),
(502, '0105168732', 'RADITYA ATTHARI HANANIA', 16, 'Laki-laki', '087863998094', '67a89dbf7f9ef4-58556767-46029959'),
(503, '0113187286', 'SANDY PUTRA GINANJAR', 16, 'Laki-laki', '083808554822', '67a89dbf8c5ec8-20577660-96316689'),
(504, '0116309231', 'M. NIDZAM DZULFIKRI', 17, 'Laki-laki', '085216167891', '67a89dbf9f58c9-51308179-44770362'),
(505, '0107221281', 'MUHAMAD FATHIR PERMANA', 17, 'Laki-laki', '085813245744', '67a89dbfb23826-40231620-71169377'),
(506, '0109322139', 'RASYID FIRDAUS', 17, 'Laki-laki', '089517382659', '67a89dbfba8a39-41797480-84804350'),
(507, '0116539744', 'NILAM QUINZEE TRI CAHYA ZAELUDIN', 17, 'Perempuan', '083838839022', '67a89dbfce2ae7-81348069-19875442'),
(508, '0114612035', 'ADINDA PUTRI NATANEGARA', 17, 'Perempuan', '087776788837', '67a89dbfe30995-91184695-41610071'),
(509, '0103203797', 'ALYA OKTAVIANSYAH', 17, 'Perempuan', '089612051232', '67a89dbfee7339-60103159-94021907'),
(510, '0112266633', 'ANANDA DEVIANA HERMAWAN', 17, 'Perempuan', '085811571437', '67a89dc01a8f37-33864120-11445269'),
(511, '0114768987', 'MUHAMAD FATIR AL JABAR', 17, 'Laki-laki', '083137043265', '67a89dc02e8e76-27941918-90612835'),
(512, '0101726251', 'NAJILA SYAHIDATUN NIFAH', 17, 'Perempuan', '087871199952', '67a89dc046ec45-41139957-31618888'),
(513, '0111040342', 'NAJLA OKTARISA', 17, 'Perempuan', '082123766515', '67a89dc0561206-26689478-65743808'),
(514, '0119823605', 'NAZMI USWATUN HASANAH', 17, 'Perempuan', '085717233686', '67a89dc06bdba5-98140114-53246126'),
(515, '0111094538', 'NESYA EKA NABILAH', 17, 'Perempuan', '081317999887', '67a89dc078c6f1-44894414-82398865'),
(516, '0115356350', 'ASSYA QURRATA\'AYUN', 17, 'Perempuan', '087781820019', '67a89dc0846032-10159537-74810195'),
(517, '0101494105', 'AZMI AMRILLAH', 17, 'Laki-laki', '081282229575', '67a89dc095b4e8-24886340-26755948'),
(518, '0107393915', 'MOCHAMAD IBNU SHINA', 17, 'Laki-laki', '087772856951', '67a89dc09edd88-57731564-85856617'),
(519, '0113412930', 'MUHAMAD RIZKI FAUZI', 17, 'Laki-laki', '085972807857', '67a89dc0ace506-95858410-58778031'),
(520, '0113424486', 'MUHAMAD SYEH HAN', 17, 'Laki-laki', '085711042098', '67a89dc0b69036-15155136-96957503'),
(521, '0109525761', 'RAFQI ILFANI PERMANA', 17, 'Laki-laki', '082112152043', '67a89dc0c8b803-51106897-15588470'),
(522, '0114776425', 'SALFA ALVEA NANDA', 17, 'Perempuan', '081382593312', '67a89dc0d22410-88292124-78061886'),
(523, '0111397968', 'SILVI YANI ALAWIYAH', 17, 'Perempuan', '083137683235', '67a89dc0e457a0-90791214-46846620'),
(524, '0116209558', 'WAFI ILMI RIZQIYANA', 17, 'Laki-laki', '083892535425', '67a89dc0ec9f55-21277204-37224579'),
(525, '3111079343', 'SITI MIFTAH HULADAWIAH', 17, 'Perempuan', '087842460003', '67a89dc10a98b1-44388125-83397862'),
(526, '0114908497', 'DEAN CONSTANTYARA CHARISSA NUGRAHA', 17, 'Perempuan', '082150640071', '67a89dc11eac46-50053961-29453114'),
(527, '0106745936', 'DWI NOVIANTI', 17, 'Perempuan', '082124550912', '67a89dc129a824-09230869-37166641'),
(528, '0118796755', 'HAFIZD ALFURQON', 17, 'Laki-laki', '085773496788', '67a89dc136b9f7-10336851-23373207'),
(529, '0115059073', 'HANDZALAH ABDURAHMAN', 17, 'Laki-laki', '085283909900', '67a89dc13ff940-60880209-50717158'),
(530, '0112259279', 'HERVINA HAKIM', 17, 'Perempuan', '087773388577', '67a89dc150d554-62978543-33587884'),
(531, '0104334051', 'A.MAFAAZATUL FIKRI', 17, 'Laki-laki', '085210445427', '67a89dc159b460-11096915-36721236'),
(532, '0119803869', 'CHALIZTA WIRAWAN', 17, 'Perempuan', '087773878330', '67a89dc1652fc2-73807759-74438246'),
(533, '0116715373', 'HARIS RAHMAN', 17, 'Laki-laki', '081298132243', '67a89dc16f0dc6-60992051-84612066'),
(534, '0119225391', 'KEISHA ANINDITA NAILA', 17, 'Perempuan', '081211551378', '67a89dc17a0462-28161915-70444969'),
(535, '0115626697', 'LAYLA QOTRUNADA', 17, 'Perempuan', '085183350383', '67a89dc182d4a4-45977760-72712089'),
(536, '0117068790', 'AURA MIKAYLA PUTRI', 18, 'Perempuan', '087777789681', '67a89dc18a5c54-45658872-62516685'),
(537, '0105855870', 'HANA PITALOKA', 18, 'Perempuan', '083152415384', '67a89dc19885d2-63348327-38205293'),
(538, '0101260406', 'KAHLA HEFNI NASYIF', 18, 'Perempuan', '089524777602', '67a89dc1a0f6a1-42444782-26540482'),
(539, '0115210639', 'M. AZZAM ALFACHRO', 18, 'Laki-laki', '', '67a89dc1aa47a5-49151722-29236652'),
(540, '0118607971', 'RASYA RAMA ABDILAH', 18, 'Laki-laki', '', '67a89dc1b4f4a9-70921522-89760168'),
(541, '0106411995', 'KHALIS KHANDELA', 18, 'Laki-laki', '', '67a89dc1c0ea82-05471148-93768773'),
(542, '0102579101', 'KHAPI RAMADANI', 18, 'Laki-laki', '', '67a89dc1ca5f93-93284795-34155244'),
(543, '0116018201', 'KIRANA MAULIDIA', 18, 'Perempuan', '083877670163', '67a89dc1d27302-87682824-92706098'),
(544, '0106437728', 'LIDYA SARAH ALFREDA', 18, 'Perempuan', '082122925166', '67a89dc1e25fb2-40089874-31970390'),
(545, '0109534188', 'M. FAIZ MUNZAZI', 18, 'Laki-laki', '', '67a89dc1ec81c9-96254678-59979406'),
(546, '0102424086', 'RAFFA NOVALIA NUR FATHONAH', 18, 'Perempuan', '085210055583', '67a89dc209dac4-13214861-92959284'),
(547, '0111537249', 'ADARA LAKEISHA ZALFA', 18, 'Perempuan', '083871905927', '67a89dc216b919-87902425-35115038'),
(548, '0105162575', 'AHMAD NAJIB AL\'ANSORI', 18, 'Laki-laki', '', '67a89dc21ef655-63267998-30493952'),
(549, '0101566129', 'ALRAIKHA PUTRI TRIAS', 18, 'Perempuan', '083876032510', '67a89dc2276761-16758583-51756050'),
(550, '0108567334', 'MUHAMAD FAUZAN', 18, 'Laki-laki', '', '67a89dc2329073-20141366-25535380'),
(551, '0113883135', 'MUHAMAD IKDAM GUNAWAN', 18, 'Laki-laki', '', '67a89dc23ef7a1-40095685-85649335'),
(552, '0109226123', 'MUHAMMAD FAZRI', 18, 'Laki-laki', '081317126494', '67a89dc2486fd1-63199695-22350108'),
(553, '0116641518', 'MUHAMMAD KHAFIZ KHAERULLAH', 18, 'Laki-laki', '083181746857', '67a89dc250a8d3-37418165-30820014'),
(554, '0116249004', 'NADIRA MUMTAZ NOVIADI', 18, 'Perempuan', '085215465912', '67a89dc257a6f6-43793988-32158081'),
(555, '0108860808', 'EVI MUPIDA ROHMAH', 18, 'Perempuan', '085691650016', '67a89dc2603655-26326656-49869584'),
(556, '0103737207', 'ST. NUR ANISAH ADZKIYA', 18, 'Perempuan', '081585255514', '67a89dc26bf440-30206099-29055871'),
(557, '0114804111', 'FELISHA ELVIRA', 18, 'Perempuan', '085693562509', '67a89dc275a146-49916112-58356459'),
(558, '0104892648', 'QEISHYA NADIRA RAMADHANIARSYAH', 18, 'Perempuan', '081298230880', '67a89dc27d5f63-00919018-10862571'),
(559, '3100175501', 'FADILLAH FAJAR PRATAMA SANDJADIRDJA', 18, 'Laki-laki', '', '67a89dc284c465-75451325-79945984'),
(560, '0115674652', 'CINTA AZZAHRA', 18, 'Perempuan', '', '67a89dc2904976-98151595-83463030'),
(561, '0118755685', 'FELISA DWI MAHARANI', 18, 'Perempuan', '', '67a89dc299d809-79752049-31403446'),
(562, '0115881407', 'NARESWARI RAMANIYA DYUINDRANA', 18, 'Perempuan', '', '67a89dc2a15f12-32604735-21975710'),
(563, '0107607389', 'PUTRI ANJANI', 18, 'Perempuan', '', '67a89dc331e190-69897254-50856042'),
(564, '0119703003', 'SYIFA ZAFIRAH', 18, 'Perempuan', '083824267797', '67a89dc34c5e73-62686510-82705472'),
(565, '0116491845', 'TB. FADZLIKA MAULANA', 18, 'Laki-laki', '', '67a89dc35502c0-25976153-12206498'),
(566, '0117648684', 'MUHAMMAD RAFFA FEBRIAN', 18, 'Laki-laki', '', '67a89dc35fccc5-29028525-27858822'),
(567, '0116737750', 'BYANTARA ARJUNA AZKA', 18, 'Laki-laki', '', '67a89dc3687572-05662272-71643298'),
(568, '3108366150', 'MUHAMMAD RIZKY RAMADHAN', 19, 'Laki-laki', '', '67a89dc3720477-82113804-86773285'),
(569, '3115191631', 'MUHAMAD RIFFAT', 19, 'Laki-laki', '', '67a89dc380bc77-56648672-91393427'),
(570, '0115321985', 'MUHAMAD RAFA RIADHI', 19, 'Laki-laki', '', '67a89dc38892c0-46070695-77688090'),
(571, '0117725811', 'MUHAMMAD FADLY ALFAHRIZI', 19, 'Laki-laki', '085217736808', '67a89dc3912af3-09544640-24320988'),
(572, '0115902222', 'NURWAJHIKA MAULIDA AMANAH', 19, 'Perempuan', '087871400679', '67a89dc39e00b2-76698778-42705918'),
(573, '0108370224', 'PUTRA YURINO KHALAF', 19, 'Laki-laki', '085722288888', '67a89dc3a7f213-77619946-80421849'),
(574, '0107643710', 'RAFFA ZAHIR RABBANI', 19, 'Laki-laki', '', '67a89dc3b02379-22677649-98863366'),
(575, '0101706569', 'GIAN REXA FOURDETHA', 19, 'Laki-laki', '', '67a89dc3b74183-67948944-84533891'),
(576, '0115962695', 'IZKI PUTRI BILKIS', 19, 'Perempuan', '', '67a89dc3c0ffc7-68257867-51134312'),
(577, '0108438571', 'SITI MARIA ULFAH', 19, 'Perempuan', '', '67a89dc3c877b7-16548093-30394495'),
(578, '0109757127', 'SITI KHOIRUNNISA', 19, 'Perempuan', '', '67a89dc3d05833-89253471-23855805'),
(579, '0124753076', 'ALRASSY DARREN BAIHAQI', 19, 'Laki-laki', '083898725828', '67a89dc3d9ef55-99133974-17085401'),
(580, '0103140119', 'ANA SELIA OKTIKA WIJAYA', 19, 'Perempuan', '', '67a89dc3e29416-70957433-70996253'),
(581, '0116348915', 'ASYA NABILA', 19, 'Perempuan', '085779566019', '67a89dc3ea53d5-15869334-98123137'),
(582, '0103584972', 'EGA DANENDRA PURWAJATI', 19, 'Laki-laki', '081317727015', '67a89dc40c1101-25231046-99429564'),
(583, '0101308339', 'NAYLA ZAHROTUS SYIFA', 19, 'Perempuan', '', '67a89dc4192f64-80794042-83935868'),
(584, '0103711815', 'REFAN NALA FIRLI', 19, 'Laki-laki', '', '67a89dc42031a7-39607575-14449524'),
(585, '0113073018', 'AINUN NABILA', 19, 'Perempuan', '0895321567669', '67a89dc4293223-06434514-47059991'),
(586, '0119588753', 'AMELIA SEPTIANI', 19, 'Perempuan', '085813895822', '67a89dc4317697-85415830-32803744'),
(587, '0102885094', 'ALYA RIZKIA MAULIDA', 19, 'Perempuan', '085222113976', '67a89dc43a1393-92803925-47053742'),
(588, '0113613361', 'DEVA ANANTA PARAMUDYA', 19, 'Laki-laki', '087773899344', '67a89dc44281a1-67955600-65295070'),
(589, '0114418142', 'DWI RATNA FEBRIANY', 19, 'Perempuan', '081511975425', '67a89dc449fbf0-16781645-43811236'),
(590, '0103986621', 'FANNY PUTRIA WIJAYA', 19, 'Perempuan', '', '67a89dc4517e24-50742855-16670229'),
(591, '3118095723', 'NAURA ZAHIRA FAKHRANI', 19, 'Perempuan', '087837773659', '67a89dc4599bb0-91155634-44279824'),
(592, '0103556345', 'MUHAMMAD SUBHY FADILLAH', 19, 'Laki-laki', '', '67a89dc462a1f9-47732806-14900378'),
(593, '0118868918', 'MUHAMMAD ZAAVIER RAMDANI', 19, 'Laki-laki', '081382612708', '67a89dc46a8bd3-82699811-52285743'),
(594, '0112182096', 'SITI ASRIPAHMAULIDA', 19, 'Perempuan', '', '67a89dc477a551-12347525-83184177'),
(595, '0115332163', 'SITI FENI NINA MAULIDHA', 19, 'Perempuan', '', '67a89dc4800c36-18696951-13865802'),
(596, '0101613064', 'SITI KHODIJATUSSOFA', 19, 'Perempuan', '', '67a89dc489abb3-07479121-54210580'),
(597, '0119234257', 'M. DZAKY HAFIDZUDDIN', 19, 'Laki-laki', '085215372288', '67a89dc497fa33-47758977-51765784'),
(598, '0101990754', 'FIKRI MAULANA', 19, 'Laki-laki', '', '67a89dc49f2543-52280803-27142808'),
(599, '0111037891', 'DERIANSYAH SAPUTRA', 20, 'Laki-laki', '', '67a89dc4a93527-52809788-54014127'),
(600, '0114526993', 'FELISYA AZZAHRA', 20, 'Perempuan', '081293960099', '67a89dc4b407b4-76953811-69372825'),
(601, '0102932129', 'FUTWI ARYANA', 20, 'Perempuan', '', '67a89dc4c4d5b4-61834914-84448737'),
(602, '0104546475', 'MUHAMMAD NAUFAL', 20, 'Laki-laki', '', '67a89dc4da3902-07840544-74965770'),
(603, '0109570788', 'MUHAMMAD ZAYYAD ALZAM D', 20, 'Laki-laki', '', '67a89dc5778767-14282159-36864787'),
(604, '0115890773', 'RAHADATUL AISY NURUL FAUZIAH', 20, 'Perempuan', '', '67a89dc58a9831-28564755-17572088'),
(605, '0113523938', 'ZAHRA AMELIYA', 20, 'Perempuan', '', '67a89dc5951483-02084444-75378187'),
(606, '0101657218', 'NADIRA QANITA ZAHRA', 20, 'Perempuan', '', '67a89dc59e29c3-53952574-43917337'),
(607, '0117650505', 'FAKHROENISA NURMALA', 20, 'Perempuan', '', '67a89dc5a73335-29247373-55111587'),
(608, '0113477513', 'FARAH RAHADATUL \'AISYI', 20, 'Perempuan', '', '67a89dc5b0e104-73536974-31239497'),
(609, '0119735322', 'KANAYA SITI INMAHESA', 20, 'Perempuan', '', '67a89dc5c700b0-61763980-15039601'),
(610, '0114139580', 'LENNY AGUSTIANI', 20, 'Perempuan', '087871202897', '67a89dc5d9f331-76843104-57999498'),
(611, '0107481068', 'RELA KARLIYANA', 20, 'Perempuan', '', '67a89dc5e28630-56625826-55796080'),
(612, '0104838795', 'RIFALDI SETIAWAN', 20, 'Laki-laki', '', '67a89dc5ea8e47-04008740-10784845'),
(613, '0105097803', 'FIDZAN NUR RAMADHAN', 20, 'Laki-laki', '', '67a89dc5f3b5d2-45707012-83525465'),
(614, '0102009045', 'SITI SYIFA NURSYAQILAH', 20, 'Perempuan', '', '67a89dc60b4933-93120298-72682455'),
(615, '0119810550', 'SITI ZAHRA AL FADILAH', 20, 'Perempuan', '', '67a89dc615c7b6-40458420-69915372'),
(616, '0108585712', 'WARA AHADIAH RIZKI', 20, 'Perempuan', '', '67a89dc6210862-30752040-42627470'),
(617, '0115104566', 'ZIDAN JAUZA PRAWIRA', 20, 'Laki-laki', '081400748231', '67a89dc62ba863-36231322-47665023'),
(618, '0114808766', 'SITI ATHAYA RAMADHANIA', 20, 'Perempuan', '', '67a89dc634eec9-10748433-63921742'),
(619, '0129965803', 'AZQIA NUR MAULIDA', 20, 'Perempuan', '', '67a89dc63daa89-53827442-13368478'),
(620, '0116486329', 'M. HERU HERLAMBANG', 20, 'Laki-laki', '', '67a89dc646aea7-18859759-70947462'),
(621, '0115431004', 'MUHAMMAD MIQDAD TSAQIB', 20, 'Laki-laki', '', '67a89dc6504ac7-55976885-97578161'),
(622, '0117486002', 'ANNISA RAMADHANI', 20, 'Perempuan', '', '67a89dc65a0303-60471873-10020596'),
(623, '0119585912', 'AYESHA NINDYA AGUSTYN', 20, 'Perempuan', '', '67a89dc662f915-67693218-94399952'),
(624, '0116363005', 'MUHAMMAD IDLANSYAH PAMUNGKAS', 20, 'Laki-laki', '081218037636', '67a89dc669fc78-98704129-66700827'),
(625, '3118923991', 'MUHAMMAD LUTHFI DARAJAT', 20, 'Laki-laki', '', '67a89dc672faf7-72053241-26543527'),
(626, '3114347634', 'AURYN  ARISTA WIDYA', 20, 'Perempuan', '081385552488', '67a89dc68160c6-73334334-73072357'),
(627, '0119647031', 'AWFA IZZA FIRJATULLAH', 20, 'Laki-laki', '', '67a89dc6899825-75573187-97643296'),
(628, '0109839500', 'AZAM MUAMAR', 20, 'Laki-laki', '', '67a89dc694c554-41326921-83972873'),
(629, '0106909416', 'MUHAMAD AKBAR RAMADHAN', 20, 'Laki-laki', '', '67a89dc69f5b55-15931717-64907973'),
(630, '0116877289', 'MUHAMMAD FIKRI KAMIL', 20, 'Laki-laki', '', '67a89dc6a97150-57455507-35672782'),
(631, '0105727177', 'MOCH RADJA AL-HAFIZH', 21, 'Laki-laki', '', '67a89dc6b26f18-01879182-32811690'),
(632, '0114970938', 'M. NABIL AZRUMI PASHA', 21, 'Laki-laki', '', '67a89dc6bae968-45922517-70325811'),
(633, '0105829718', 'MOHAMAD RAMA FATUROHMAN', 21, 'Laki-laki', '08567926790', '67a89dc6c43721-40454823-48797815'),
(634, '0115940992', 'MUHAMAD AKHMALUDIN MUSTOFA', 21, 'Laki-laki', '081292545472', '67a89dc6cc13f9-10547090-77265620'),
(635, '0111714610', 'SITI RAHMA MAULIDA', 21, 'Perempuan', '085880795068', '67a89dc6d364d8-44178794-11569745'),
(636, '0104138166', 'TIZAN FAHREZA UTSMANI', 21, 'Laki-laki', '085280506455', '67a89dc6e18222-24351358-82486611'),
(637, '0108441034', 'NUR APRILIANI USWATUN', 21, 'Perempuan', '083874280047', '67a89dc6e98d17-15263040-50065034'),
(638, '0119618060', 'CITRA DINDA ERVI RISMA', 21, 'Perempuan', '', '67a89dc771fd54-03089576-85132623'),
(639, '0109912068', 'FATHIR RIZKI PRATAMA', 21, 'Laki-laki', '', '67a89dc7992522-29680296-41956311'),
(640, '0103110332', 'FUTRI HANDAYANI', 21, 'Perempuan', '', '67a89dc7a0e277-79436483-63048107'),
(641, '0102799668', 'MUHAMMAD FACHRY FIRDAUS', 21, 'Laki-laki', '', '67a89dc7aa8c83-58622266-62205814'),
(642, '0112685141', 'NISA NURUL RIZQIYAH', 21, 'Perempuan', '081339320480', '67a89dc7b3b9c7-05452857-37521165'),
(643, '0107119110', 'QORY NAZWA WIBOWO', 21, 'Perempuan', '087808279434', '67a89dc7bbddc6-22354759-11385905'),
(644, '0104696053', 'ASYIFA SALSABILA RAHMAWATI', 21, 'Perempuan', '085312649119', '67a89dc7c36828-94468307-99761539'),
(645, '0105611844', 'ASYIFA WINKY RAMADHANI', 21, 'Perempuan', '087870051854', '67a89dc7cacf01-49786986-33318682'),
(646, '0118395580', 'AZZAHRA AULIA', 21, 'Perempuan', '081284504744', '67a89dc7d22b60-87821862-77679057'),
(647, '0113865905', 'KEANU PARINGGA SYAFIQ', 21, 'Laki-laki', '', '67a89dc7da6279-32508741-36181765'),
(648, '0117379074', 'MAULIDA FEBRIYANTI', 21, 'Perempuan', '083160016945', '67a89dc7e99712-09984223-29903087'),
(649, '0115248474', 'MEISKA FADWA AULIA', 21, 'Perempuan', '', '67a89dc7f3d372-33430955-48648638'),
(650, '0116891512', 'FITRI FATIMAH AZZAHRA', 21, 'Perempuan', '085817091084', '67a89dc816b080-27359185-78482531'),
(651, '0116627328', 'MOCH RESKI BAEHAKI', 21, 'Laki-laki', '', '67a89dc81f05b2-13764685-37119388'),
(652, '0116701713', 'MUHAMMAD BILAL LUTFIANSYAH', 21, 'Laki-laki', '', '67a89dc89d9c52-52602483-20993775'),
(653, '0103124431', 'MUHAMMAD RAKA SETIADHARMA', 21, 'Laki-laki', '', '67a89dc8b43a37-39826420-24796599'),
(654, '0119934437', 'MUHAMMAD UMAR ABDURRAHMAN', 21, 'Laki-laki', '081282525036', '67a89dc8c1bb60-65813110-32224458'),
(655, '0111786933', 'SABILA SRI NURROHMAH', 21, 'Perempuan', '089684457449', '67a89dc8cc0293-98246021-23263700'),
(656, '0119992561', 'SITI ZIANA EL LATIFAH', 21, 'Perempuan', '085716080415', '67a89dc8d69ff0-14812597-18037289'),
(657, '0114253607', 'M. RIYADUL HUDA', 21, 'Laki-laki', '', '67a89dc8dfd3a0-51450223-16753951'),
(658, '0113193738', 'ANNISA MAULANY UMAR', 21, 'Perempuan', '081296600340', '67a89dc8ea4726-08930283-35087315'),
(659, '0112436255', 'AJENG BERLIANI KINANTI', 21, 'Perempuan', '', '67a89dc923d0e7-79852314-26279850'),
(660, '0103245889', 'RASSYA ABBIE SATYA', 21, 'Laki-laki', '', '67a89dc94b52b8-20141130-72540340'),
(661, '0109901023', 'RATU NAYLA RAMADANIA', 21, 'Perempuan', '', '67a89dc9713463-03076189-24035076'),
(662, '0112630842', 'QONITA SYAKIRA HANIFAH', 21, 'Perempuan', '081210399254', '67a89dc98d9764-67210568-25808679'),
(663, '0099002778', 'AZMI NURIZZAH', 22, 'Perempuan', '085216909235', '67a89dc99d2857-77790112-27752437'),
(664, '3101748548', 'EJAZ FAHEEM DAKARA AZFA', 22, 'Laki-laki', '087776129629', '67a89dc9a79f28-66007714-15965671'),
(665, '3098432063', 'ST. ANNISA RAHMAWATI', 22, 'Perempuan', '083115502941', '67a89dc9b1a484-73624282-94177854'),
(666, '0097689774', 'FAKHIRA AZ-ZAHRA', 22, 'Perempuan', '08995134050', '67a89dc9bc89a5-02731542-74822486'),
(667, '0095442886', 'DEWI AULIA ZAHRA', 22, 'Perempuan', '081717791184', '67a89dc9c68f48-90615140-39577697'),
(668, '0104299172', 'ALFI INDRIYANI', 22, 'Perempuan', '083892012606', '67a89dc9d0f1d1-67816422-11725589'),
(669, '0093150726', 'AGNI TAFRIZIAH', 22, 'Perempuan', '083892667310', '67a89dc9daaf73-61512564-29951102'),
(670, '0098161048', 'MUJIB RIDWAN', 22, 'Laki-laki', '083896526442', '67a89dca01ca19-28429035-87341358'),
(671, '0093884353', 'AZ-ZAHRA NUR AQILAH', 22, 'Perempuan', '083811443449', '67a89dca1fb936-75143771-25787441'),
(672, '0104585698', 'DIAH FATIHA MAHMUD', 22, 'Perempuan', '081284060131', '67a89dca2ad8b4-32292006-50301409'),
(673, '0093298740', 'FAIZ ALFARIZKI', 22, 'Laki-laki', '089522290667', '67a89dcab96db4-03211886-26169621'),
(674, '0106347134', 'HANINA NUR\'AENI', 22, 'Perempuan', '083841491556', '67a89dcae7aec1-77613745-29144549'),
(675, '0108966360', 'INTAN ILMIRA PUTRI', 22, 'Perempuan', '083870175406', '67a89dcb122e69-18044869-84841723'),
(676, '0097247184', 'LUNA AINU HAKIM', 22, 'Perempuan', '085215751111', '67a89dcb22e2e7-94609624-85532500'),
(677, '0095350391', 'M. HAKINNAAJILI AKBAR', 22, 'Laki-laki', '08977226412', '67a89dcb36ee34-82867163-68544408'),
(678, '0105610931', 'MAHIRATUNNISA ADZKARANI', 22, 'Perempuan', '083867399544', '67a89dcb4c7554-62968382-40976210'),
(679, '0099759862', 'NABILA PUTRI', 22, 'Perempuan', '082310290010', '67a89dcb8565a5-70488073-49140985'),
(680, '0094530427', 'NANDA SALSYABILA DEWY', 22, 'Perempuan', '087845680961', '67a89dcbb73531-65003295-48484371'),
(681, '0106867461', 'NIZKHA NOERHIDAYAT', 22, 'Perempuan', '081295602740', '67a89dcbc34772-22679440-29403615'),
(682, '0103930089', 'RATU NOUVA HANIN HUNAENI', 22, 'Perempuan', '082123647831', '67a89dcbce5415-57988999-70821496'),
(683, '0103894256', 'RIHAADATUL AZAHRA', 22, 'Perempuan', '081906298080', '67a89dcbd8e225-70217695-28438330'),
(684, '0099328476', 'SITA AZAHRA', 22, 'Perempuan', '0895322509179', '67a89dcbe4aae6-97075338-98565842'),
(685, '0107411365', 'TIANASARI', 22, 'Perempuan', '081210758232', '67a89dcc086412-24513805-73607975'),
(686, '0108735627', 'ZED AHMAD IFDHAL SYAH', 22, 'Laki-laki', '089612048608', '67a89dcc186785-12627394-78519015'),
(687, '0107810325', 'NADIYA LUTFINA', 22, 'Perempuan', '0895320048668', '67a89dcc258743-95661083-41547963'),
(688, '0099865538', 'ADNAN GHAZALI', 22, 'Laki-laki', '083195542176', '67a89dcc46a0f6-99326532-40650636'),
(689, '0096904197', 'NOVIA TRI ALVIONITA', 22, 'Perempuan', '085714291819', '67a89dcd08aeb3-97640694-66767554'),
(690, '0097892706', 'TAZKIATUN NUFUS', 22, 'Perempuan', '085220988797', '67a89dcd275467-66170311-92441947'),
(691, '0092710521', 'RAFKA MAHARDIKA', 22, 'Laki-laki', '', '67a89dcd399167-99850111-31732169'),
(692, '0093980944', 'ALYA ARRIFAH REHANA', 22, 'Perempuan', '085693556019', '67a89dcd47e303-95818389-33426678'),
(693, '0109378528', 'SITI IHA SOLIHAH', 22, 'Perempuan', '083878827089', '67a89dcd538445-14473684-83164808'),
(694, '0093914099', 'TIRA GUNAWAN', 22, 'Perempuan', '085817152764', '67a89dcd6f90d9-84569609-93539926'),
(695, '3093182752', 'ST. ALISHA QOTRUN NADA', 23, 'Perempuan', '081514567244', '67a89dcdabdcc2-65831394-57750458'),
(696, '3095814597', 'ARYA KUSUMA RAMADHAN', 23, 'Laki-laki', '', '67a89dcdeb7511-50235616-55063704'),
(697, '3090766247', 'SINTA JULIANA PUTRI', 23, 'Perempuan', '087800133336', '67a89dce2c8524-41348392-60851105'),
(698, '0109161704', 'ALFITA NURMALIA', 23, 'Perempuan', '083132570103', '67a89dce3f9a49-32560855-36419804'),
(699, '0109871612', 'RADINKA AMILLIA ARSYI', 23, 'Perempuan', '08985537887', '67a89dce559912-94231754-27581351'),
(700, '0092816659', 'ALIKA NADYA PUTRI HUJAIN', 23, 'Perempuan', '087837405643', '67a89dce6fc8c9-54998675-31959177'),
(701, '0119026133', 'BILKIS SUHAENDA', 23, 'Perempuan', '081252115725', '67a89dce9b02a4-38701788-20365316'),
(702, '0094799634', 'BORIELLO', 23, 'Laki-laki', '0895405456901', '67a89dceab1c05-76635813-64167533'),
(703, '0102003960', 'CAHAYA MENTARI', 23, 'Perempuan', '081384606946', '67a89dceb83970-12802271-40663003'),
(704, '0097290850', 'FAJAR DWI NUR SHALA', 23, 'Laki-laki', '083893300085', '67a89dceca8199-41595547-91609651'),
(705, '0091632083', 'FATIMAH AZ-ZAHRA', 23, 'Perempuan', '081949391599', '67a89dceddd0b9-22591615-52667564'),
(706, '0102430658', 'GERAL ANANDA RASYA', 23, 'Laki-laki', '085718696549', '67a89dcef15ef1-53816546-41707670'),
(707, '0099756968', 'HERVI YANI', 23, 'Perempuan', '081946878025', '67a89dcf110ac7-60632104-98181258'),
(708, '0109783903', 'KHANSA RACHMA ZAFIRA', 23, 'Perempuan', '08985536981', '67a89dcf2b40a1-77170487-81612851'),
(709, '0108810166', 'MUHAMAD ZAINI MUMTAZ', 23, 'Laki-laki', '083129902840', '67a89dcf381fb5-31330598-20288419'),
(710, '0109442011', 'MUTHIA ROCHMAT', 23, 'Perempuan', '083139339161', '67a89dcf4114a5-62470189-66264097'),
(711, '0101331902', 'NENG VALYA NURROHMAN', 23, 'Perempuan', '085779058522', '67a89dcf511886-89191264-75731761'),
(712, '0093224052', 'PANJI KARIS SAMUDERA', 23, 'Laki-laki', '', '67a89dcf5a03c1-78629943-50682515'),
(713, '0103438557', 'SILVI HERAWATI', 23, 'Perempuan', '089509404978', '67a89dcf6f8de5-27259471-93972331'),
(714, '0129350122', 'SITI NENG HAMAMI', 23, 'Perempuan', '08975036515', '67a89dcf7d1378-93107112-10133108'),
(715, '0091511919', 'SYAFILLA AZZAHRA', 23, 'Perempuan', '081213121307', '67a89dcf87c5e4-02775285-96459952'),
(716, '0105098267', 'MUHAMMAD YUDHA RAKHA PRATAMA', 23, 'Laki-laki', '085215500869', '67a89dcf942922-04689074-64190073'),
(717, '0108613631', 'MUHAMMAD AQIL SHIDQUL\'AZM', 23, 'Laki-laki', '081286375554', '67a89dcfa28a53-05339382-83571449'),
(718, '0102479810', 'NABILA PUTRI ANISA', 23, 'Perempuan', '089674647444', '67a89dcfaecd70-83139938-43880415'),
(719, '0103547088', 'NAFEEZA AREYTHA NIRWANA', 23, 'Perempuan', '087819154481', '67a89dcfb70125-08237159-79540799'),
(720, '0097121096', 'AINI FITRI KUSUMA', 23, 'Perempuan', '0895344125583', '67a89dcfc3b342-40102100-48664267'),
(721, '0105527796', 'SITI FADILAH RAMADANI', 23, 'Perempuan', '089527538911', '67a89dcfcdb6f1-89833505-47672181'),
(722, '0105932290', 'KAIRA ZALFA ANDINI', 23, 'Perempuan', '085695398640', '67a89dcfda5744-64154360-56576280'),
(723, '0106574981', 'SITI NURINAYAH', 23, 'Perempuan', '083895160651', '67a89dcfebfef5-70696410-23514260'),
(724, '0098761364', 'RT. INDAH PUTRI SYAHNANDA', 23, 'Perempuan', '085692463105', '67a89dd0090763-80927418-40639411'),
(725, '0091956839', 'RT. NAZWA RESI KERIYAN', 23, 'Perempuan', '083815332920', '67a89dd01ccae1-21926152-17481354'),
(726, '0091950604', 'SYIFA MUMTAZAH', 23, 'Perempuan', '', '67a89dd026be85-03368847-45370630'),
(727, '3099989726', 'SYAIRA NAFISA NAWAWI', 24, 'Perempuan', '083899881150', '67a89dd032db56-49327520-90538396'),
(728, '3098102228', 'FITRAH YULIANA', 24, 'Perempuan', '085716104058', '67a89dd03c1db4-24225195-95843161'),
(729, '3091813488', 'SOFY RAHMATILLAH', 24, 'Perempuan', '083891513452', '67a89dd046f0e3-45372766-88912883'),
(730, '3109995934', 'FAWAZ ABDILLAH AL AYYASY', 24, 'Laki-laki', '083151829194', '67a89dd0501075-36871866-24608057'),
(731, '3094025933', 'ZILHAN NUR KHAMZAH', 24, 'Laki-laki', '083152904617', '67a89dd056b9a3-15679584-86633687'),
(732, '3108012008', 'SHERLY NEYLA RISYDATIKA', 24, 'Perempuan', '083875403689', '67a89dd062d795-79135737-57639986'),
(733, '0107284554', 'MOTIKA HANING', 24, 'Perempuan', '085893722228', '67a89dd0f3b624-42042535-17733880'),
(734, '0101543894', 'MUHAMMAD FADLAN HARIRY', 24, 'Laki-laki', '089303432691', '67a89dd122bf52-87102551-23729074'),
(735, '0101843116', 'MUHAMMAD HAIDAR ZAKY', 24, 'Laki-laki', '089603186497', '67a89dd1378701-92265965-56530274'),
(736, '0106416036', 'NAURA RAHMAH NASUTION', 24, 'Perempuan', '089654983797', '67a89dd142a2b7-03684895-95544497'),
(737, '0105650858', 'FAWAZ NAUFAL HIDAYAT', 24, 'Laki-laki', '089502440043', '67a89dd154f054-24582063-44187940'),
(738, '0093345961', 'ALVIN HAIDAR ALVA WIRAGHANI', 24, 'Laki-laki', '0895322520356', '67a89dd16128c7-50004305-62737928'),
(739, '0092929911', 'BILQIS RIHHADATUL AISYA', 24, 'Perempuan', '081295401269', '67a89dd16b7f45-87989264-99590666'),
(740, '0105001315', 'ANANDA ULFASARI', 24, 'Perempuan', '081400746532', '67a89dd2167f40-44916829-61235135'),
(741, '0091050031', 'CITRA KHUNI MUTIA', 24, 'Perempuan', '085770127860', '67a89dd2286b60-53114031-33031218'),
(742, '0097852812', 'DIAZ RATIH MAULANA', 24, 'Perempuan', '083115169020', '67a89dd2393615-38280611-81583700'),
(743, '0102319703', 'DIKRI SULMASAPUTRA', 24, 'Laki-laki', '085695798116', '67a89dd24165e4-86886398-65645888'),
(744, '0108185238', 'FADHIL FAWWAZ MU\'AFI', 24, 'Laki-laki', '082246476178', '67a89dd24cd316-10731240-60297453'),
(745, '0105744203', 'FARRAH ADZRA NAURA', 24, 'Perempuan', '085715455989', '67a89dd2551b14-17536583-18144169'),
(746, '0106912245', 'HYAR ATFIA GHIATSAH', 24, 'Perempuan', '085754669783', '67a89dd26313d8-06335561-49899326'),
(747, '0103137080', 'JULY SUSANTI', 24, 'Perempuan', '083818227549', '67a89dd26cb638-95795234-37498900'),
(748, '0109284160', 'MUHAMAD FERDIANSYAH', 24, 'Laki-laki', '083891759691', '67a89dd27a1c08-66599829-69520868'),
(749, '0103451230', 'MUHAMMAD FADHIL ARFAN', 24, 'Laki-laki', '081399800466', '67a89dd2830d44-19294926-80141357'),
(750, '0096677805', 'MUTIARA RAMADHANI FIRMANSYAH', 24, 'Perempuan', '087749677709', '67a89dd295b4b0-33020413-81970635'),
(751, '0108501512', 'NAJWA AMALIA', 24, 'Perempuan', '082114186385', '67a89dd2a02243-65483370-82179853'),
(752, '0124325694', 'NURUL KHOTIMAH', 24, 'Perempuan', '087722438983', '67a89dd2ab41a0-96450471-79557073'),
(753, '0101521403', 'PHARAMITA MULIA GINANJAR', 24, 'Perempuan', '083875412150', '67a89dd2b3cea3-07887163-81037206'),
(754, '0106919396', 'RIKO PRATAMA', 24, 'Laki-laki', '085711947928', '67a89dd2c56602-81543377-83449512'),
(755, '0106736595', 'ROF ROF YASIR AMRU', 24, 'Laki-laki', '085771583032', '67a89dd2ceda11-61404643-53749364'),
(756, '0101598402', 'ZENNYRA SHENNY DE\'LISA', 24, 'Perempuan', '082179308359', '67a89dd2dda194-03388200-72702780'),
(757, '0104888071', 'NAURA FADHILATUNNISA', 24, 'Perempuan', '085719773886', '67a89dd2e706b9-16880429-98868733'),
(758, '0103242413', 'ZAHRA ATHIRAH', 24, 'Perempuan', '085772748776', '67a89dd3015b06-51703437-29062827'),
(759, '3105059856', 'SYAMIRA HANIFAH FAYYADH', 25, 'Perempuan', '081380787627', '67a89dd31a3b97-98219083-61632362'),
(760, '0096142813', 'ADELIA LESTARI', 25, 'Perempuan', '081322504881', '67a89dd32278f7-74570035-90284730'),
(761, '0107351325', 'AFRA NAILA ANNAJMI', 25, 'Perempuan', '087778054519', '67a89dd331d695-81151144-79504381'),
(762, '0092798489', 'AIRA ALFIATU TAZKYAH DERMAWAN', 25, 'Perempuan', '085218363003', '67a89dd33a8986-68883338-91004124'),
(763, '0103930769', 'AIRA CAHAYA MIHARJA', 25, 'Perempuan', '083815222768', '67a89dd347ba36-53509444-63460458'),
(764, '0097966000', 'ANANDA TIARA PUTRI', 25, 'Perempuan', '085716781338', '67a89dd34f74f4-81387804-20738852'),
(765, '0094276700', 'ARFA IZZUL ISLAM', 25, 'Laki-laki', '082125772397', '67a89dd355ee28-90012472-93416531'),
(766, '0099062397', 'DELIS ADESTRIANI', 25, 'Perempuan', '081299577837', '67a89dd35f3643-76763454-66529394'),
(767, '0099380647', 'DEVIN RIZKY RAMADHAN', 25, 'Laki-laki', '089526147363', '67a89dd367bd76-53156474-61370959'),
(768, '0105054942', 'DHEA PUTRI HERMAWATI', 25, 'Perempuan', '081384192570', '67a89dd36e9511-82558695-16463846'),
(769, '0104056793', 'DINANRA ISMI DAWVANI', 25, 'Perempuan', '089507522184', '67a89dd3781d50-06840408-12513532'),
(770, '0095472782', 'DHEYA FAZILATUNNISA', 25, 'Perempuan', '082122303400', '67a89dd37f3fd0-01904747-41150476'),
(771, '0108686791', 'DIO ADITYA RAHMAT', 25, 'Laki-laki', '081299575545', '67a89dd386fe75-61686925-80830333'),
(772, '0091412597', 'FALISHA NABILA PUTRI SAFA', 25, 'Perempuan', '081389087491', '67a89dd38fc309-03237364-18332419'),
(773, '0091991795', 'FATMA AYU AZAHRA', 25, 'Perempuan', '081218236411', '67a89dd3972444-87495682-97559563'),
(774, '0102769872', 'JASMINE SHELOVEIS WISNU', 25, 'Perempuan', '08568007135', '67a89dd39e6949-98573414-35559722'),
(775, '0105062053', 'M. ALFI ABDUL JABBAR', 25, 'Laki-laki', '081315072366', '67a89dd3a9eeb2-56912051-44875710'),
(776, '0106211440', 'M. FARRAS NAOFAN', 25, 'Laki-laki', '087876291471', '67a89dd3b15623-15166065-72510510'),
(777, '0102126649', 'MEY RINDA SARI', 25, 'Perempuan', '085273625901', '67a89dd3b86c81-68458338-92221512'),
(778, '0094698876', 'MUHAMAD MALIK AR-RASYID', 25, 'Laki-laki', '085133846681', '67a89dd3c47e23-25528978-43277914'),
(779, '0109670228', 'NAFIS MUNTHASIR MAGISTRIAWAN', 25, 'Laki-laki', '082213676011', '67a89dd3cd20a6-00909316-72671708'),
(780, '0096145084', 'NOVALDY JUMHAERIL YUSUF', 25, 'Laki-laki', '082150639107', '67a89dd3d48e69-01856035-32501815'),
(781, '0097625077', 'PUPUT CAHYA RAMADANI', 25, 'Perempuan', '085765569166', '67a89dd3dc6113-53666033-24252696'),
(782, '0103997310', 'RAFFA MAULANA FAARIJ', 25, 'Laki-laki', '082125567515', '67a89dd3e337c5-96640485-87880645'),
(783, '0096192492', 'RIMBA RESTU MAULANA', 25, 'Laki-laki', '085311651647', '67a89dd3e9fc40-32037040-26883097'),
(784, '0104870154', 'SHAYLLA RENATA', 25, 'Perempuan', '085774269451', '67a89dd4009d63-70973932-12006874'),
(785, '0095501361', 'SITI NUR AZIZAH RAMADHANI', 25, 'Perempuan', '085715243895', '67a89dd40b7c24-37094235-56627884'),
(786, '0094336898', 'TB MOH ABYAN FAIRUZ', 25, 'Laki-laki', '087745891727', '67a89dd4165c22-21735800-14697168'),
(787, '0095379156', 'TUBAGUS ASHRAFF PUTRA HASYIM', 25, 'Laki-laki', '085955181989', '67a89dd41ea814-37704651-64936663'),
(788, '0104712271', 'YANUAR ALFATH', 25, 'Laki-laki', '083819828017', '67a89dd425b149-94812374-19426078'),
(789, '0108826355', 'ZIANKHA FATIMAH', 25, 'Perempuan', '082113366147', '67a89dd42fcb62-40929435-65192631'),
(790, '0105803920', 'AGNIA NURUSYIFA FAUJI', 25, 'Perempuan', '082112452397', '67a89dd436e751-98405826-10367324'),
(791, '3104469431', 'NAIA AYUNDRA KHORI', 26, 'Perempuan', '083152274881', '67a89dd43dca61-59512115-92810815'),
(792, '0099761885', 'RAINAYYA NARESWARI', 26, 'Perempuan', '085770761877', '67a89dd446e629-52061884-60955236'),
(793, '3106641545', 'SYIFA MUSTHOFA RAMADHANI', 26, 'Perempuan', '085211410473', '67a89dd44ed176-54631772-44558323'),
(794, '3100910978', 'SYAFIQA HANIFAH FAYYADH', 26, 'Perempuan', '085295312342', '67a89dd456cda6-00419373-72040278'),
(795, '0103290849', 'DALIS ASIFA', 26, 'Perempuan', '083111180157', '67a89dd4622cc6-18931877-37833110'),
(796, '0104407016', 'GILANG PUTRA TRIANTORO', 26, 'Laki-laki', '081398645364', '67a89dd469b263-19805964-64491475'),
(797, '0108089937', 'REGINA CAHAYA HASAN', 26, 'Perempuan', '08811477891', '67a89dd470e615-59097060-59141973'),
(798, '0104315563', 'A. MUNAZILIL HIFDHIL QIRO', 26, 'Laki-laki', '081394380997', '67a89dd489cac4-57372838-49179254'),
(799, '0103284594', 'AFIFA FITIYA SHAHAB', 26, 'Perempuan', '081398353735', '67a89dd4b030a5-62764726-48400802'),
(800, '0092084467', 'ALISYA FITRIYANI', 26, 'Perempuan', '0813842427', '67a89dd4b81f26-20451629-70385161'),
(801, '0092042313', 'ALMA SALSABILA', 26, 'Perempuan', '085155452465', '67a89dd4c50ef6-46206843-28837674'),
(802, '0101181269', 'ANISA TRIHUTAMI', 26, 'Perempuan', '081289885233', '67a89dd4cdcdf7-23160981-59697640'),
(803, '0099123820', 'ANNA ALTHAFUNNISA', 26, 'Perempuan', '083841371138', '67a89dd4da7865-64132808-62776802'),
(804, '0098630273', 'ARINI CITRA NUGRAHA', 26, 'Perempuan', '085215779688', '67a89dd4e2b570-81843984-11193818'),
(805, '0102757251', 'ASYA ABDULLAH FATIH', 26, 'Laki-laki', '082258593967', '67a89dd4ecebb3-60972810-27864609'),
(806, '0107901678', 'DINDA KIRANA RESKIAH SUHADA', 26, 'Perempuan', '083829553952', '67a89dd5034c85-29657676-28316923'),
(807, '0101098120', 'DIRNA PIEANSYAH KUSUMA', 26, 'Perempuan', '08979811491', '67a89dd50b1914-19201795-44164300'),
(808, '0097957453', 'FIRDA KHOIRUNISA', 26, 'Perempuan', '085773894152', '67a89dd518e955-86736297-68324451'),
(809, '0106824096', 'HUSNA NURFAHIMAH', 26, 'Perempuan', '089602365351', '67a89dd5217144-59227270-56879054'),
(810, '0099774878', 'KHANSA FAUZIYYAH SHALIHAH', 26, 'Perempuan', '085892747522', '67a89dd529a1e9-66527720-85226759'),
(811, '0107664935', 'MUHAMAD RIZKY MIFTAHUL ALAWI', 26, 'Laki-laki', '085771237372', '67a89dd5379335-43774820-11724750'),
(812, '0106464713', 'RADINKA PUTRI SUGIARTO', 26, 'Perempuan', '08971841746', '67a89dd543ac70-00988470-56208796'),
(813, '0107158468', 'Raihan Fawaz Hasan', 26, 'Laki-laki', '081398495358', '67a89dd54ed618-88612168-59144890'),
(814, '0094807242', 'RATU AURATUL WAKIROH BURHAN', 26, 'Perempuan', '083195149517', '67a89dd558dfd0-04874384-65066732'),
(815, '0104043029', 'RATU BILQIIS SINTA MULYA', 26, 'Perempuan', '085224142802', '67a89dd56558c4-35099741-21006948'),
(816, '0101992146', 'SAFIRA NURI IZATY', 26, 'Perempuan', '087772821878', '67a89dd56cf4e9-36887396-99133536'),
(817, '0104407221', 'TATU DALFA', 26, 'Perempuan', '083195148620', '67a89dd57a9c69-83693961-98480575'),
(818, '0092270085', 'TIRTA SHAFWAN WARDANA', 26, 'Laki-laki', '0895635115004', '67a89dd5836830-26076735-22540985'),
(819, '0103727570', 'YESSYNIA RAHMA OKTAVIANI', 26, 'Perempuan', '085774957578', '67a89dd5924d96-67069737-22621783'),
(820, '0096412516', 'ZAHRA FADIYA SHALIHAH', 26, 'Perempuan', '08985534276', '67a89dd599de15-76348181-29100641'),
(821, '0105341763', 'KALYA ATHAYA MALAKAYNI', 26, 'Perempuan', '085389711562', '67a89dd5a39574-04216148-20939652'),
(822, '3090249401', 'SITI ROBIATUL ADAWIYAH', 27, 'Perempuan', '083837273929', '67a89dd5ae6599-12527743-76831248'),
(823, '3104353486', 'JELITA RAHMADANI', 27, 'Perempuan', '085772389668', '67a89dd5b80b39-46976586-65033450'),
(824, '3100570966', 'FARAH DIVA RAHMA DINI', 27, 'Perempuan', '087884792312', '67a89dd5c6c7a2-96038880-30621197'),
(825, '3105077931', 'RIRIN RIANTY', 27, 'Perempuan', '081514570635', '67a89dd5cf5755-17536015-40453966'),
(826, '0105376257', 'CAISYA AINURRAHMAH', 27, 'Perempuan', '087823022181', '67a89dd5dc3447-21656741-40108205'),
(827, '0107487004', 'HAFIZAH MAISAROH', 27, 'Perempuan', '081310781271', '67a89dd5e50838-74358422-66758367'),
(828, '0102049427', 'RALIANA VANESA IRAWAN', 27, 'Perempuan', '085714227492', '67a89dd5ec9f07-61908467-42935817'),
(829, '0108145717', 'RAMA AGUSTA NUGRAHA', 27, 'Laki-laki', '085694542464', '67a89dd6073431-72222341-85415627'),
(830, '0093801913', 'RANDI ARDIANSYAH', 27, 'Laki-laki', '085960455017', '67a89dd6105115-58555826-35168223'),
(831, '0096785841', 'CARISSA GLADYS KIRANA', 27, 'Perempuan', '085773219805', '67a89dd61ad387-76398620-62520644'),
(832, '0092278681', 'MOCHAMAD IQBAL FATUROHMAN', 27, 'Laki-laki', '082320029635', '67a89dd6220024-45413664-11017249'),
(833, '0099121594', 'MOCHAMAD WILDAN ADITYA', 27, 'Laki-laki', '089517385566', '67a89dd62a7530-41483743-18606769'),
(834, '0104361170', 'MOHAMAD FATHIR ABDUL BAR', 27, 'Laki-laki', '083152907891', '67a89dd6352312-85031459-41934830'),
(835, '0097804984', 'MOHAMAD SULTAN REVIDO', 27, 'Laki-laki', '085882852725', '67a89dd63c9f97-26144601-75344747'),
(836, '0101269385', 'ANINDYA IVANA ROSE', 27, 'Perempuan', '081387122353', '67a89dd6451d00-46653419-60520365'),
(837, '0108544379', 'GEVI AZZIZAH PRAMESTIKA GARDINA', 27, 'Perempuan', '085214033161', '67a89dd64c5b75-02604984-87388810'),
(838, '0098355432', 'M. ZULVIKAR KUSUMAWARDANA', 27, 'Laki-laki', '085770201411', '67a89dd652add5-06906127-62462350'),
(839, '0102296573', 'NAUFAL RAFIF AZKA PRATAMA', 27, 'Laki-laki', '081315093717', '67a89dd659d6a1-08414708-35114566'),
(840, '0103454846', 'NURHAFIZAH', 27, 'Perempuan', '083833423201', '67a89dd6640377-71159317-42474468'),
(841, '0105930994', 'PUTRI KANIA ASISUTISNA WINATA', 27, 'Perempuan', '087741169869', '67a89dd66d5280-70326874-18597691'),
(842, '0106749744', 'AMANDA RAMADANI SYAFIRA', 27, 'Perempuan', '081219405744', '67a89dd678f1b4-41217887-58078961'),
(843, '0104160982', 'IRGI GIBRAN JUNIAWAN', 27, 'Laki-laki', '01290363755', '67a89dd6800a05-07427141-54013878'),
(844, '0107318092', 'KEVIN SATRIA', 27, 'Laki-laki', '081574632333', '67a89dd687e0e0-78014982-37640559'),
(845, '0096833423', 'KEYSA MAZAYA DARMAWAN', 27, 'Perempuan', '087802114108', '67a89dd693b415-68321139-85316205'),
(846, '0105577744', 'MUHAMAD HAFIZH HABIBULLAH', 27, 'Laki-laki', '089529938389', '67a89dd69c61c5-06963777-54079442'),
(847, '3108972052', 'MUHAMAD RAFAEL FARDHAN', 27, 'Laki-laki', '085892484307', '67a89dd6a55608-68031729-10323044'),
(848, '0105714483', 'TUBAGUS AHMAD FAISAL PUTRA', 27, 'Laki-laki', '089684452874', '67a89dd6af4285-57411381-37065032'),
(849, '0095760577', 'YUDA ANDREANSYAH', 27, 'Laki-laki', '081284619380', '67a89dd6b73ad0-86753096-24296685'),
(850, '0102373562', 'ZAICZHA REPALINA PUTRI PAHLEPI', 27, 'Perempuan', '088297763191', '67a89dd6c2dde5-75912478-75740697'),
(851, '0108299760', 'DIEANDRA NAUFAL HADISTSHAH', 27, 'Laki-laki', '085694901692', '67a89dd6cb2c68-42917192-91794859'),
(852, '0105074166', 'DINARA ZAHRA WILDANA', 27, 'Perempuan', '082113946655', '67a89dd6d618d3-88765094-48100792'),
(853, '0095746443', 'AIKO MARIUM KHUMAEROH', 27, 'Perempuan', '085705703657', '67a89dd6e10313-68559750-10192545'),
(854, '0094344046', 'AIRA MUZDALIFAH ', 27, 'Perempuan', '085141511522', '67a89dd6e90676-21192066-31652258'),
(855, '0098792430', 'NISA SOLEHATUN NURFAZRIAH', 27, 'Perempuan', '083813888726', '67a89dd700f8a9-36872787-95298733'),
(856, '0091825685', 'ZAHRATUSITTA', 27, 'Perempuan', '085711661900', '67a89dd70e44d6-21649621-99885997'),
(857, '0102547519', 'M. CHANDRA ADITYA', 27, 'Laki-laki', '081294633441', '67a89dd71e3013-20838261-72578801'),
(858, '0109088764', 'RATU ALMIRA RAHMABELLA', 27, 'Perempuan', '085773190291', '67a89dd725a462-89050304-13701609'),
(859, '3113692040', 'HAMDI SYAPUTRA', 28, 'Laki-laki', '085282049886', '67a89dd7301c75-55813181-47025085'),
(860, '0108730664', 'DAVIN MALIK GHAISAN', 28, 'Laki-laki', '085880658049', '67a89dd737a937-18058944-41392127'),
(861, '3104350829', 'MUHAMAD ANGGA HERMAWAN', 28, 'Laki-laki', '', '67a89dd7462f45-96799302-73387787'),
(862, '0104301834', 'MOCHAMAD ALZAM DHIYAUDDIN', 28, 'Laki-laki', '083164153407', '67a89dd74e4335-62204273-85313662'),
(863, '0106811668', 'ADHIKA PRAWIRA PRATAMA', 28, 'Laki-laki', '089507618531', '67a89dd755be98-49678040-57104866'),
(864, '0101386446', 'AGHNIA NURFADILLAH', 28, 'Perempuan', '089504071187', '67a89dd761edd1-97282361-26656307'),
(865, '0106071327', 'M. ROFI MASHASANUDIN', 28, 'Laki-laki', '082111970085', '67a89dd76a7537-38045001-96591577'),
(866, '0104921966', 'MARLONE SAKTI PRAMUDITA', 28, 'Laki-laki', '081213189138', '67a89dd773d675-30559537-32272491'),
(867, '0092984412', 'SACHA KAIRA NADIN', 28, 'Perempuan', '081214760306', '67a89dd77d3f40-85004805-53473677'),
(868, '0093858100', 'SALWA FITRIANI', 28, 'Perempuan', '081318702760', '67a89dd7845a56-38603567-44896856'),
(869, '0106355658', 'FAHRI ADITAMA', 28, 'Laki-laki', '082299841672', '67a89dd78e2738-79356242-85096160'),
(870, '0098267226', 'GEITSA ANAJWA', 28, 'Perempuan', '081973466240', '67a89dd7963686-70297429-29375195'),
(871, '0104737272', 'JAFIN MALAZI GUNAWAN', 28, 'Laki-laki', '083896858880', '67a89dd79e69b2-10923299-19564501'),
(872, '0108410218', 'KANIA AFDILA SYAHIRA', 28, 'Perempuan', '083871293942', '67a89dd7ab1fc1-03320167-89496363'),
(873, '0107330032', 'RATU MAULIDA HIDAYAT', 28, 'Perempuan', '081295844387', '67a89dd7b215d2-54421576-79762834'),
(874, '0108706652', 'RATU MITA MINHATUL MAULA', 28, 'Perempuan', '082310804777', '67a89dd7b897e2-74760339-56641730'),
(875, '0108481618', 'ANANDA SARAH SITI HAJR', 28, 'Perempuan', '089506276807', '67a89dd8527d25-76668453-45653338'),
(876, '0102097508', 'CHANTIKA NADYA HERNATA', 28, 'Perempuan', '087777156206', '67a89dd863a780-95737653-12651840'),
(877, '0106685425', 'KEYSA NAZLA MAKAILA HANIFAH', 28, 'Perempuan', '083150107081', '67a89dd86af2f8-49181433-27697612'),
(878, '0111600384', 'KENZI NATHA RESWARA', 28, 'Laki-laki', '08568456294', '67a89dd8738c99-18705732-74160707'),
(879, '0106527667', 'TYA NURDIANA MULANA', 28, 'Perempuan', '085776313112', '67a89dd87de708-08553336-97370787'),
(880, '0092541982', 'ARNA MULYANA', 28, 'Perempuan', '087752716896', '67a89dd884a994-30199134-27956596'),
(881, '0098284434', 'ARYA CIPTA WIGUNA', 28, 'Laki-laki', '081394383493', '67a89dd892a304-75512259-12784364'),
(882, '0108250609', 'REVI SUCI LATIFAH', 28, 'Perempuan', '085211985149', '67a89dd8999351-34326297-94062724'),
(883, '0101431517', 'SITI NURMAULUD DINASARY', 28, 'Perempuan', '081388254959', '67a89dd8a109d0-77859990-69044267'),
(884, '0105745585', 'SITI RATU AJIZAH', 28, 'Perempuan', '083873133500', '67a89dd8ac7988-01096922-50600551'),
(885, '0107027813', 'TITIAN ARETA AFIFA', 28, 'Perempuan', '083870239803', '67a89dd8b3b800-62814082-52473400'),
(886, '0103395983', 'MUHAMMAD AZMI KHOIRUN NAZWAN', 28, 'Laki-laki', '085694236483', '67a89dd8bbf166-51560031-98026034'),
(887, '0096482011', 'M. FATHIR AL KHWARIZMY', 28, 'Laki-laki', '081278461277', '67a89dd8c98a99-09357659-64237646'),
(888, '0084053912', 'M. MAULANA MAHESA', 28, 'Laki-laki', '089513676189', '67a89dd8d226e8-45874798-79116335'),
(889, '0095447586', 'PANDU ZAMZAMI ISA', 28, 'Laki-laki', '081316756233', '67a89dd8e20909-27428320-43418166'),
(890, '0093641147', 'AIRA SALSABILA', 28, 'Perempuan', '082249099750', '67a89dd98460f1-40738725-82055346'),
(891, '0094221461', 'CAHYA MELATI', 28, 'Perempuan', '082113654634', '67a89dd99a4cc4-07705012-88886341'),
(892, '0108563642', 'REZKY HERMAWAN', 28, 'Laki-laki', '087875387691', '67a89dd9a47eb3-66524733-64221605'),
(893, '0104947248', 'NAMIRA MAIESURIE AFGANIA', 28, 'Perempuan', '082114740051', '67a89dd9b03376-44882370-65640008'),
(894, '0108622198', 'MUHAMAD AZZAM BAIHAQY', 28, 'Laki-laki', '089622424264', '67a89dd9b8a6f8-80370700-48114821'),
(895, '0101540353', 'SIFA\'UN TANZILA', 28, 'Perempuan', '083832126883', '67a89dd9cabbf5-97286194-79401314'),
(896, '0104872214', 'MUHAMMAD ILHAM', 29, 'Laki-laki', '085891648429', '67a89dd9d1fbd3-78014924-70883156'),
(897, '0098757772', 'SILPI NASTIA', 29, 'Perempuan', '', '67a89dd9e20d49-10371410-93213862'),
(898, '3108578347', 'M. RAHEESH SHEHZAAD AL- MUHIEBBY', 29, 'Laki-laki', '', '67a89dd9e9f366-39557311-51942578'),
(899, '0099233770', 'KHOIRUNNISA', 29, 'Perempuan', '083187796164', '67a89dda025537-03872925-41093519'),
(900, '3101777455', 'MUHAMAD AZRIL MUDZAKIR', 29, 'Laki-laki', '', '67a89dda0b2f91-53680806-22138491'),
(901, '3103990056', 'MUHAMMAD RAYHAN', 29, 'Laki-laki', '', '67a89dda174cf9-16697598-72378319'),
(902, '3109815079', 'SITI MUQITA RAMDANIAH', 29, 'Perempuan', '087863461500', '67a89dda226d36-26809359-66761742'),
(903, '0094173833', 'AGUNG TIRTA SAPUTRA', 29, 'Laki-laki', '082249209268', '67a89dda309425-50301191-14089598'),
(904, '0104770623', 'AGUSTIN NAIRUL RIVA', 29, 'Perempuan', '', '67a89dda39e783-17564712-86126378'),
(905, '0101541470', 'GADIZA EL RAHMAN', 29, 'Perempuan', '081911230250', '67a89dda471a92-08013359-75600086'),
(906, '0091381840', 'M. HERUL MAULANA', 29, 'Laki-laki', '', '67a89dda4f6ba9-01749988-80779057'),
(907, '0105640633', 'TB. MUHAMMAD SULTHAN FAQIH.R', 29, 'Laki-laki', '', '67a89dda58bf14-28560376-20903309'),
(908, '0105016640', 'WULAN QORINA CHANDRA AMINI', 29, 'Perempuan', '', '67a89dda646494-67947886-47014922'),
(909, '0109269397', 'NAJLA HUMAIRAH', 29, 'Perempuan', '', '67a89dda6ca5e2-10287950-50499164'),
(910, '0093670842', 'RATU QONITA NURDIN', 29, 'Perempuan', '083162968179', '67a89dda7b45d1-80931909-79708178'),
(911, '0104036867', 'RISKA RIYANI', 29, 'Perempuan', '081212001343', '67a89dda863710-31777359-97351327'),
(912, '0102266556', 'SALSABILA VIANY PUTRI', 29, 'Perempuan', '083811137520', '67a89dda975f74-43493473-56247131'),
(913, '0094713346', 'SILVA DWI RAHMADIANTI', 29, 'Perempuan', '', '67a89ddaa90495-29758852-88748082'),
(914, '0102315341', 'FATHIR ALGHIFARI', 29, 'Laki-laki', '', '67a89ddab331b4-92663846-44560315'),
(915, '0101880233', 'HARI SANTOSO', 29, 'Laki-laki', '', '67a89ddabadcf4-50916540-67813132'),
(916, '0107474946', 'MUHAMAD FAUZAN APSELIN', 29, 'Laki-laki', '083803888647', '67a89ddac62d21-53089889-36922409'),
(917, '0105381031', 'SITI AULIA MEYSA', 29, 'Perempuan', '081295746412', '67a89ddad0bdd8-84528834-85275755'),
(918, '0102862331', 'DEVANIA NOOR ALMAHYRA', 29, 'Perempuan', '083812897625', '67a89ddadf0062-01379236-21798564'),
(919, '0094295317', 'DEWI PERMATA SARI', 29, 'Perempuan', '083841158190', '67a89ddae91f67-68054866-52833868');
INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `id_kelas`, `jenis_kelamin`, `no_hp`, `unique_code`) VALUES
(920, '0095420368', 'SAHRUL PAUJI', 29, 'Laki-laki', '', '67a89ddb02fdf2-85081285-39974323'),
(921, '0093542074', 'AZKIA DWI RAHMADIANI', 29, 'Perempuan', '082124621490', '67a89ddb1c25e3-98941045-50109768'),
(922, '0096005301', 'AZMIRA DWIFAIRUS RAMADHAN', 29, 'Perempuan', '', '67a89ddb24f7f4-50117857-65496243'),
(923, '0095436011', 'MUHAMMAD RIZA RAMADHAN', 29, 'Laki-laki', '085716472339', '67a89ddb33de01-96822651-12334780'),
(924, '0109320807', 'NESYA NUR AZZAHRA', 29, 'Perempuan', '083871965652', '67a89ddb3b8c62-76004823-29296853'),
(925, '0114634271', 'NIDA FAUZIYAH', 29, 'Perempuan', '085881875452', '67a89ddb496172-75235713-43168838'),
(926, '0095663689', 'ALINA DWI FAJARINA', 29, 'Perempuan', '', '67a89ddb50a306-38644730-49593739'),
(927, '0102565575', 'MUHAMMAD NABIL', 29, 'Laki-laki', '085718194229', '67a89ddb5cb267-08063045-71528427'),
(928, '0096153217', 'DESPA PUTRI AULIA', 29, 'Perempuan', '', '67a89ddb6ba496-21983058-79186895'),
(929, '3098577144', 'MISCHATUNNURONIYAH', 29, 'Perempuan', '083109969371', '67a89ddb7447b0-85585709-82222516'),
(930, '3093757033', 'MOCHAMAD FADELL ARUDI', 29, 'Laki-laki', '089603185715', '67a89ddb80b481-94804560-77582949'),
(931, '0098471310', 'MONA AULIA', 29, 'Perempuan', '083811184022', '67a89ddb8b59a0-58005288-14254870'),
(932, '0104152103', 'MUHAMAD AHYA HASKA', 29, 'Laki-laki', '081585660502', '67a89ddb9544d3-89385085-74278027'),
(933, '0104344206', 'KAMILA AULIA FATWA', 30, 'Perempuan', '085212561187', '67a89ddba12404-66027313-79951181'),
(934, '0098953826', 'AYYA RAHMI KHAERANI HAKIM', 30, 'Perempuan', '085877536458', '67a89ddbac9765-95983566-21255764'),
(935, '0105066249', 'M. ALFIYANSYAH', 30, 'Laki-laki', '089673369044', '67a89ddbb3e923-02138759-69798466'),
(936, '3105961636', 'AKMAL MAUSUL', 30, 'Laki-laki', '082260108471', '67a89ddbc16cd4-76698721-55104982'),
(937, '3104657506', 'MEI TRI WANDANI', 30, 'Perempuan', '08975037189', '67a89ddbcd15c7-60474838-61892059'),
(938, '3108420926', 'SAVIRA FITRIANI', 30, 'Perempuan', '083109747258', '67a89ddbd98901-97832611-94131178'),
(939, '3105528540', 'MUHAMMAD ZIDNY KAMIL ALKHAWARIZMI', 30, 'Laki-laki', '083875385786', '67a89ddbe1b552-69964428-92988358'),
(940, '3119478023', 'NURFADILLAH', 30, 'Perempuan', '08317361667', '67a89ddc700904-30182689-12544305'),
(941, '0107941908', 'MUHAMMAD ADRIAN MAULANA', 30, 'Laki-laki', '081585655579', '67a89ddc7c9171-08202220-48993645'),
(942, '0102335727', 'M FAHMI MUTASIM BILLAH', 30, 'Laki-laki', '085810093568', '67a89ddc834f23-33921183-78139859'),
(943, '0098150107', 'HESTIANA ANANTA', 30, 'Perempuan', '085811944350', '67a89ddc8b2c64-14096748-46148242'),
(944, '0103049179', 'ILHAM HANIF', 30, 'Laki-laki', '0885811057481', '67a89ddc979227-45203058-86210932'),
(945, '0107380790', 'KALILA ARDIANA PUTRI', 30, 'Perempuan', '083842547900', '67a89ddc9fdc27-83523143-13717862'),
(946, '0091040628', 'MIRA SITI AMELIA', 30, 'Perempuan', '085281259778', '67a89ddcacd150-81562569-23563234'),
(947, '0093971567', 'MUHAMMAD TSABIT RASYIKHA', 30, 'Laki-laki', '085894866545', '67a89ddcb3fcc2-98831211-23891675'),
(948, '0101027605', 'PRAJA SALMAN IMANULHAQ', 30, 'Laki-laki', '081381061743', '67a89ddcbbb0f1-90215434-83451938'),
(949, '0105343834', 'QURROTA RASYIDA TRIBHUWANOTTUNGGADEWI', 30, 'Perempuan', '081287786265', '67a89ddcca4f78-81244384-14873078'),
(950, '0104911632', 'DZAIDAN FAKIH MUTAQIN', 30, 'Laki-laki', '085294776464', '67a89ddcd317f4-39224213-54245753'),
(951, '0105724230', 'FABIAN ARIE ALVARO', 30, 'Laki-laki', '087877929226', '67a89ddce3e5c6-04687393-13538719'),
(952, '0118499066', 'SINTA BELA MAULINA', 30, 'Perempuan', '083841119382', '67a89ddcee3852-44675946-18405281'),
(953, '0082007440', 'SYAMIL ATTAMIMI', 30, 'Laki-laki', '089517333178', '67a89ddd092039-48266369-33165373'),
(954, '0104386953', 'YUSSY AUDAIN', 30, 'Perempuan', '085716775569', '67a89ddd19fa75-31859288-57225949'),
(955, '0109330674', 'ALMIRA MAULIDA', 30, 'Perempuan', '085717564050', '67a89ddd214d61-47996139-38868467'),
(956, '0102537886', 'ELVIRA FLORITA AZKA', 30, 'Perempuan', '085892579448', '67a89ddd285618-85054097-60867757'),
(957, '0094935495', 'FAUZAN NAIL HALIMY', 30, 'Laki-laki', '0895703129800', '67a89ddd354440-09732112-21782504'),
(958, '0107458323', 'FELYZIA DWI LATIFAH', 30, 'Perempuan', '089524769573', '67a89ddd3d5093-43773836-31827199'),
(959, '0097968316', 'GHAZY SAKHA RIZQULLAH', 30, 'Laki-laki', '081905938450', '67a89ddd495147-17259893-63887134'),
(960, '0106570987', 'AHMAD BRAMANTIO RAHMAN', 30, 'Laki-laki', '083162967154', '67a89ddd50b7c0-53560499-33374846'),
(961, '0103565609', 'AHMAD BAIHAQI', 30, 'Laki-laki', '089684457715', '67a89ddd57c813-71879208-26890466'),
(962, '0104166840', 'NIMAL MAULA APRILIANI', 30, 'Perempuan', '083184600438', '67a89ddd65a482-62975655-87603515'),
(963, '0097737035', 'PUTRI ALMIRA', 30, 'Perempuan', '087745892393', '67a89ddd6d63d1-92681120-97729332'),
(964, '0096126536', 'RIVALDI FAUZAN', 30, 'Laki-laki', '081284992862', '67a89ddd7b1f62-01130024-15633400'),
(965, '0101794612', 'RIZKA APRILIA EDIANA', 30, 'Perempuan', '085215850124', '67a89ddd83ce89-27406878-79984569'),
(966, '0103780947', 'FIRDHA NUR WAHIDA', 30, 'Perempuan', '08561138927', '67a89ddd8ef5e5-00847321-36321662'),
(967, '0098912998', 'RAFI ALFIANSYAH', 30, 'Laki-laki', '085210745803', '67a89ddd997e21-73748777-79491467'),
(968, '0104809984', 'AL FATH MEKHA HARDIAN', 30, 'Laki-laki', '081911211181', '67a89ddda1efa1-97316540-82884175'),
(969, '0109873022', 'RAYZEL GHIBTHAH SASTYAVIANI', 31, 'Perempuan', '082112275148', '67a89dddad9780-94694384-53972593'),
(970, '0104905894', 'REKSA BUJANA', 31, 'Laki-laki', '081401769078', '67a89dddb68983-21995475-70388535'),
(971, '0096740490', 'FILDAD FERDINAN FAWAZ', 31, 'Laki-laki', '083818167485', '67a89dddc33427-76066663-28932204'),
(972, '0095904891', 'DALVA ZAHROH. S', 31, 'Perempuan', '082219977229', '67a89dddcaf099-96693667-72733677'),
(973, '0107601184', 'DINDA OKTAVIANA', 31, 'Perempuan', '085716785860', '67a89dddd362b3-63356993-35404215'),
(974, '0097026805', 'DUTA SAPUTRA', 31, 'Laki-laki', '0895341786730', '67a89ddddea937-53340180-29176499'),
(975, '0103616980', 'AIRA SALSABILA', 31, 'Perempuan', '085882654604', '67a89ddde76cd6-20452582-46878187'),
(976, '0106163187', 'AJENG MUZDALIFAH MAHARANI', 31, 'Perempuan', '085773760528', '67a89dde028c40-73328637-31196888'),
(977, '0095647620', 'KEISHA AZZALEA WIJAYA', 31, 'Perempuan', '083898067419', '67a89dde1cee50-67699600-26621857'),
(978, '0103349904', 'LIDA MAULIDA', 31, 'Perempuan', '', '67a89dde2601d2-43328300-61401317'),
(979, '0106599564', 'ARDINA NURHANIFAH', 31, 'Perempuan', '085770578216', '67a89dde354885-04036622-54671292'),
(980, '0092891979', 'AULYA ANGRAENI', 31, 'Perempuan', '085890465707', '67a89dde3cc841-56266982-28007613'),
(981, '0103071346', 'MUHAMAD BADRU NAJINI', 31, 'Laki-laki', '085711515312', '67a89dde4bfbe7-78041681-77157656'),
(982, '0108732677', 'MUHAMAD FARIZ FARHAN', 31, 'Laki-laki', '083110272074', '67a89dde551454-83845242-71385253'),
(983, '0104016402', 'RATU ROONA ZHAVIRAH KHUSNI', 31, 'Perempuan', '0895391998869', '67a89dde652953-34558198-24676588'),
(984, '0101938087', 'RAIHAN MAULANA', 31, 'Laki-laki', '083896619755', '67a89dde6c44d2-40378716-77724182'),
(985, '0103180115', 'AURA MUFIDA', 31, 'Perempuan', '0895351096288', '67a89dde78e366-24721369-92553602'),
(986, '0094217026', 'DERANI ROFATUN VIDINILA', 31, 'Perempuan', '089654989039', '67a89dde827858-75944579-70603223'),
(987, '0101588047', 'MUHAMAD RAFFANANDA RIZQ', 31, 'Laki-laki', '089514788195', '67a89dde8a3bc5-72692223-84242838'),
(988, '0088505630', 'MUHAMAD RIDHO FAUZAN RAJADI', 31, 'Laki-laki', '081412150699', '67a89dde9819a1-33296457-85361294'),
(989, '0099806742', 'MUHAMAD RIZQI ALDIRA', 31, 'Laki-laki', '081399816606', '67a89dde9fd270-29708138-18732946'),
(990, '0097449901', 'MUHAMMAD ALIF NUR ALAM', 31, 'Laki-laki', '083168196051', '67a89ddeacb710-66933469-85769235'),
(991, '0107550072', 'MUHAMMAD ANUGRAH', 31, 'Laki-laki', '081382358266', '67a89ddeb544f4-70111804-23699950'),
(992, '0105842417', 'NAYFA MAULIDA MULYANA', 31, 'Perempuan', '081282754349', '67a89ddec676d9-47580695-70099100'),
(993, '0097629265', 'NAZAHRA NADYA SAFWA', 31, 'Perempuan', '089603849166', '67a89ddecf4880-59972177-12605948'),
(994, '0102824057', 'NAZALEA QUEEN SYABILA', 31, 'Perempuan', '089502440056', '67a89dded9f6c4-12861140-28316622'),
(995, '0097575411', 'PUTRI VIRYA PURNOMO', 31, 'Perempuan', '', '67a89ddee1bca4-56388689-29039336'),
(996, '0098307167', 'ERVINO MULA ADITYA', 31, 'Laki-laki', '089673368340', '67a89ddee8c982-27301438-56697257'),
(997, '0095251077', 'FITRI SEPTIYANA', 31, 'Perempuan', '081295090264', '67a89ddf07f514-24044834-85692021'),
(998, '0105340967', 'GIAN SABRINA', 31, 'Perempuan', '', '67a89ddf1071c5-64573095-70957464'),
(999, '0095845709', 'SYIFA MARWAH', 31, 'Perempuan', '083160012566', '67a89ddf1ef370-97079580-96856322'),
(1000, '0098892596', 'SYIFA NURFADILAH', 31, 'Perempuan', '083184391257', '67a89ddf25dc61-23256048-57302340'),
(1001, '0102976705', 'TB. REZA PAHLEVI SAEFUL', 31, 'Laki-laki', '087781073490', '67a89ddf339617-57539572-72019148'),
(1002, '0109285944', 'ZINERA DWI RAMADHANI', 31, 'Perempuan', '085198991674', '67a89ddf3b69b5-63930379-49963785'),
(1003, '0094037731', 'ZUYYIN JAHROTUSITA', 31, 'Perempuan', '089603360019', '67a89ddf49aef3-89201677-27433574'),
(1004, '0109705670', 'M. SHOHIB HUSNUL AZHIIM', 31, 'Laki-laki', '081337291517', '67a89ddf504274-38404555-47256935'),
(1005, '0104797104', 'MUHAMAD GHAILAN BENZAMI', 31, 'Laki-laki', '081905690435', '67a89ddf56caa5-43802723-95737779'),
(1006, '0000971291', 'YAHYA ZULFIKRI', 1, 'Laki-laki', '089630694880', '67b611187e6bb2-21039437-24137830');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `is_superadmin` tinyint(1) NOT NULL DEFAULT 0,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `is_superadmin`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'adm@mtsn1pandeglang.sch.id', 'administrator', 1, '$2y$10$eFCRdHO1YPX4rkc6t4xqIeJTFgQ5l.baSwA3kYqCgO46yAkC/RFYq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(2, 'zulfikriyahya@mtsn1pandeglang.sch.id', 'zulfikriyahya', 0, '$2y$10$Eo8ub3ycADyTPW0dYVXvyeSKvowEZRuQkS33aZSjgXiTpFQc8IFeS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2025-02-20 12:12:15', '2025-02-20 12:12:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD UNIQUE KEY `unique_code` (`unique_code`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusan` (`jurusan`);

--
-- Indeks untuk tabel `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `tb_kelas_id_jurusan_foreign` (`id_jurusan`);

--
-- Indeks untuk tabel `tb_presensi_guru`
--
ALTER TABLE `tb_presensi_guru`
  ADD PRIMARY KEY (`id_presensi`),
  ADD KEY `id_kehadiran` (`id_kehadiran`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `tb_presensi_siswa`
--
ALTER TABLE `tb_presensi_siswa`
  ADD PRIMARY KEY (`id_presensi`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kehadiran` (`id_kehadiran`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `unique_code` (`unique_code`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_presensi_guru`
--
ALTER TABLE `tb_presensi_guru`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `tb_presensi_siswa`
--
ALTER TABLE `tb_presensi_siswa`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD CONSTRAINT `tb_kelas_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `tb_jurusan` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_presensi_guru`
--
ALTER TABLE `tb_presensi_guru`
  ADD CONSTRAINT `tb_presensi_guru_ibfk_2` FOREIGN KEY (`id_kehadiran`) REFERENCES `tb_kehadiran` (`id_kehadiran`),
  ADD CONSTRAINT `tb_presensi_guru_ibfk_3` FOREIGN KEY (`id_guru`) REFERENCES `tb_guru` (`id_guru`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tb_presensi_siswa`
--
ALTER TABLE `tb_presensi_siswa`
  ADD CONSTRAINT `tb_presensi_siswa_ibfk_2` FOREIGN KEY (`id_kehadiran`) REFERENCES `tb_kehadiran` (`id_kehadiran`),
  ADD CONSTRAINT `tb_presensi_siswa_ibfk_3` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_presensi_siswa_ibfk_4` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
