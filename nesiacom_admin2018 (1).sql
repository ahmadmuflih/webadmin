-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Sep 2018 pada 22.17
-- Versi server: 10.2.17-MariaDB-cll-lve
-- Versi PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nesiacom_admin2018`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT 0,
  `changes` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT 0,
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1, '2017-05-16 09:57:32', 2, 'created', 'task', 'Video Aplikasi', 1, NULL, 'project', 2, '', 0, 0),
(2, '2017-05-16 09:57:49', 2, 'updated', 'task', 'Video Aplikasi', 1, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 2, '', 0, 0),
(3, '2017-05-18 14:24:23', 3, 'created', 'task', 'Video', 2, NULL, 'project', 4, '', 0, 0),
(4, '2017-05-18 14:28:15', 3, 'updated', 'task', 'Video', 2, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:120:\"Take dilanjutkan editing video profile, video teaser, video testimoni KP (semua peserta KP wajib untuk video testimoni)\n\";s:2:\"to\";s:107:\"Take dilanjutkan editing video profile & video testimoni KP (semua peserta KP wajib untuk video testimoni)\n\";}}', 'project', 4, '', 0, 0),
(5, '2017-05-18 14:29:52', 3, 'created', 'task', 'Video teaser', 3, NULL, 'project', 4, '', 0, 0),
(6, '2017-05-18 14:31:12', 3, 'updated', 'task', 'Video', 2, 'a:3:{s:5:\"title\";a:2:{s:4:\"from\";s:5:\"Video\";s:2:\"to\";s:13:\"Taking gambar\";}s:11:\"description\";a:2:{s:4:\"from\";s:107:\"Take dilanjutkan editing video profile & video testimoni KP (semua peserta KP wajib untuk video testimoni)\n\";s:2:\"to\";s:88:\"Take video profile & video testimoni KP (semua peserta KP wajib untuk video testimoni) \n\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-05-28\";s:2:\"to\";s:10:\"2017-05-24\";}}', 'project', 4, '', 0, 0),
(7, '2017-05-18 14:32:27', 3, 'created', 'task', 'Editing Video', 4, NULL, 'project', 4, '', 0, 0),
(8, '2017-05-20 07:52:53', 4, 'created', 'task', 'Merancang ERD', 5, NULL, 'project', 6, '', 0, 0),
(9, '2017-05-20 07:54:46', 4, 'updated', 'task', 'Merancang ERD', 5, 'a:5:{s:11:\"description\";a:2:{s:4:\"from\";s:13:\"ERD HaloNesia\";s:2:\"to\";s:25:\"ERD HaloNesia\nwww.draw.io\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:3:\"ERD\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-05-20\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-05-23\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:13:\"9,12,14,17,13\";s:2:\"to\";s:16:\"9,12,14,17,13,19\";}}', 'project', 6, '', 0, 0),
(10, '2017-05-20 07:58:38', 4, 'updated', 'task', 'Merancang ERD', 5, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:25:\"ERD HaloNesia\nwww.draw.io\";s:2:\"to\";s:91:\"ERD HaloNesia\nhttps://drive.google.com/file/d/0ByR9KIaeoerUSTJMbHl3MUxRWnM/view?usp=sharing\";}}', 'project', 6, '', 0, 0),
(11, '2017-05-20 08:01:29', 4, 'updated', 'task', 'Merancang ERD', 5, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:91:\"ERD HaloNesia\nhttps://drive.google.com/file/d/0ByR9KIaeoerUSTJMbHl3MUxRWnM/view?usp=sharing\";s:2:\"to\";s:114:\"ERD HaloNesia\nhttps://drive.google.com/file/d/0ByR9KIaeoerUSTJMbHl3MUxRWnM/view?usp=sharing\n\nhttp://bit.ly/2qE3BIU\";}}', 'project', 6, '', 0, 0),
(12, '2017-05-20 14:32:46', 1, 'deleted', 'task', 'Video Aplikasi', 1, NULL, 'project', 2, NULL, NULL, 0),
(13, '2017-05-24 03:59:38', 14, 'updated', 'task', 'Merancang ERD', 5, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 6, '', 0, 0),
(14, '2017-05-27 04:08:48', 3, 'updated', 'task', 'Taking gambar', 2, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 4, '', 0, 0),
(15, '2017-05-27 07:26:09', 15, 'updated', 'task', 'Editing Video', 4, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 4, '', 0, 0),
(16, '2017-05-29 14:56:43', 16, 'created', 'task', 'Create Repository', 6, NULL, 'project', 6, '', 0, 0),
(17, '2017-05-29 15:01:36', 16, 'created', 'task', 'Create Model Class', 7, NULL, 'project', 6, '', 0, 0),
(18, '2017-05-29 15:03:35', 4, 'updated', 'task', 'Create Repository', 6, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 6, '', 0, 0),
(19, '2017-05-29 15:03:36', 4, 'updated', 'task', 'Create Repository', 6, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:4:\"done\";s:2:\"to\";s:5:\"to_do\";}}', 'project', 6, '', 0, 0),
(20, '2017-05-29 15:06:47', 16, 'updated', 'task', 'Create Model Class', 7, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-05-29\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-06-05\";}}', 'project', 6, '', 0, 0),
(21, '2017-05-29 15:06:59', 16, 'updated', 'task', 'Create Repository', 6, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-05-29\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-06-05\";}}', 'project', 6, '', 0, 0),
(22, '2017-05-29 15:10:51', 16, 'created', 'task', 'Create repository', 8, NULL, 'project', 6, '', 0, 0),
(23, '2017-05-29 15:11:30', 16, 'updated', 'task', 'Create Repository', 6, 'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:72:\"Buat repository di github untuk API (koordinasi jgn sampai bikin 2 repo)\";s:2:\"to\";s:89:\"Init project dan buat repository di github untuk API (koordinasi jgn sampai bikin 2 repo)\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-06-05\";s:2:\"to\";s:10:\"2017-05-31\";}}', 'project', 6, '', 0, 0),
(24, '2017-05-29 15:13:19', 16, 'created', 'task', 'Create model class', 9, NULL, 'project', 6, '', 0, 0),
(25, '2017-05-29 15:23:40', 16, 'created', 'task', 'CRUD SUPER ADMIN', 10, NULL, 'project', 6, '', 0, 0),
(26, '2017-05-29 15:28:56', 16, 'created', 'task', 'Create front end layout', 11, NULL, 'project', 6, '', 0, 0),
(27, '2017-05-29 15:30:57', 16, 'updated', 'task', 'Create model class', 9, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:58:\"buat model class berdasarkan ERD, masing2 ada fungsi CRUD.\";s:2:\"to\";s:124:\"buat model class berdasarkan ERD, masing2 ada fungsi CRUD. dan buat sebuah folder SQL yang berisi file SQL yang sudah dibuat\";}}', 'project', 6, '', 0, 0),
(28, '2017-05-29 15:44:21', 17, 'updated', 'task', 'Create Repository', 6, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 6, '', 0, 0),
(29, '2017-05-29 20:52:24', 19, 'updated', 'task', 'Create model class', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 6, '', 0, 0),
(30, '2017-05-30 08:22:26', 9, 'updated', 'task', 'Create repository', 8, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 6, '', 0, 0),
(31, '2017-05-30 08:57:38', 9, 'updated', 'task', 'Create repository', 8, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 6, '', 0, 0),
(32, '2017-05-30 08:58:07', 9, 'created', 'project_comment', 'https://github.com/megaseptian/Web-Admin-HaloNesia.git', 1, NULL, 'project', 6, '', 0, 0),
(33, '2017-05-31 03:38:17', 19, 'updated', 'task', 'Create model class', 9, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 6, '', 0, 0),
(34, '2017-06-01 11:43:24', 13, 'created', 'project_comment_reply', 'Invit ka dlu ke project githubnya sodara, akun github ku harydj', 2, NULL, 'project', 6, '', 0, 0),
(35, '2017-06-03 08:11:01', 17, 'created', 'project_comment', 'https://gitlab.com/imamfa/api-hellonesia', 3, NULL, 'project', 6, '', 0, 0),
(36, '2017-06-03 08:35:49', 3, 'updated', 'task', 'Editing Video', 4, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-05-28\";s:2:\"to\";s:10:\"2017-06-04\";}}', 'project', 4, '', 0, 0),
(37, '2017-06-03 08:36:10', 3, 'updated', 'task', 'Video teaser', 3, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-05-28\";s:2:\"to\";s:10:\"2017-06-04\";}}', 'project', 4, '', 0, 0),
(38, '2017-06-04 12:17:19', 13, 'updated', 'task', 'CRUD SUPER ADMIN', 10, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 6, '', 0, 0),
(39, '2017-06-04 14:21:10', 13, 'updated', 'task', 'CRUD SUPER ADMIN', 10, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 6, '', 0, 0),
(40, '2017-06-04 21:54:08', 15, 'updated', 'task', 'Video teaser', 3, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 4, '', 0, 0),
(41, '2017-06-12 01:37:07', 1, 'created', 'project_comment_reply', 'mantap', 4, NULL, 'project', 6, '', 0, 0),
(42, '2017-06-12 01:37:28', 1, 'created', 'project_comment_reply', 'invite ka juga nah :D', 5, NULL, 'project', 6, '', 0, 0),
(43, '2017-06-13 10:09:27', 10, 'updated', 'task', 'Video teaser', 3, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 4, '', 0, 0),
(44, '2017-06-13 10:09:28', 10, 'updated', 'task', 'Editing Video', 4, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 4, '', 0, 0),
(45, '2017-06-15 15:06:29', 1, 'created', 'task_comment', 'apa sdh di upload di youtube?', 6, NULL, 'project', 4, 'task', 4, 0),
(46, '2017-06-15 15:06:29', 1, 'created', 'task_comment', 'apa sdh di upload di youtube?', 7, NULL, 'project', 4, 'task', 4, 0),
(47, '2017-06-15 15:06:42', 1, 'deleted', 'project_comment', 'apa sdh di upload di youtube?', 7, NULL, 'project', 4, NULL, NULL, 0),
(48, '2017-06-17 14:43:39', 1, 'created', 'task', 'Revisi tombol aksi admin cabor', 12, NULL, 'project', 2, '', 0, 0),
(49, '2017-06-17 14:44:36', 1, 'created', 'task', 'Route login admin cabor dan admin sidora', 13, NULL, 'project', 2, '', 0, 0),
(50, '2017-06-17 14:45:33', 1, 'created', 'task', 'Detail data Cabor di admin', 14, NULL, 'project', 2, '', 0, 0),
(51, '2017-06-17 14:47:59', 1, 'created', 'task', 'Detail Data Cabor', 15, NULL, 'project', 2, '', 0, 0),
(52, '2017-06-17 14:48:29', 1, 'created', 'task', 'Style Foto', 16, NULL, 'project', 2, '', 0, 0),
(53, '2017-06-17 14:48:48', 1, 'updated', 'task', 'Revisi tombol aksi admin cabor', 12, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:30:\"Revisi tombol aksi admin cabor\";s:2:\"to\";s:39:\"Revisi tombol aksi admin cabor & sidora\";}}', 'project', 2, '', 0, 0),
(54, '2017-06-17 14:52:18', 1, 'created', 'task', 'Perubahan Logo Lapor Maros', 17, NULL, 'project', 1, '', 0, 0),
(55, '2017-06-17 14:52:47', 1, 'created', 'task', 'Scroll Image dan title (Tampilan Details News)', 18, NULL, 'project', 1, '', 0, 0),
(56, '2017-06-17 14:54:04', 1, 'created', 'task', 'Menampilkan History Laporan (Laporan Saya) di menu Profil', 19, NULL, 'project', 1, '', 0, 0),
(57, '2017-06-17 14:54:28', 1, 'updated', 'task', 'Scroll Image dan title (Tampilan Details News)', 18, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"4\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"4\";s:2:\"to\";s:0:\"\";}}', 'project', 1, '', 0, 0),
(58, '2017-06-17 14:54:37', 1, 'updated', 'task', 'Perubahan Logo Lapor Maros', 17, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"4\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"4\";s:2:\"to\";s:0:\"\";}}', 'project', 1, '', 0, 0),
(59, '2017-06-17 14:55:34', 1, 'updated', 'task', 'Menampilkan History Laporan (Laporan Saya) di menu Profil', 19, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:57:\"Menampilkan History Laporan (Laporan Saya) di menu Profil\";s:2:\"to\";s:43:\"Menampilkan History Laporan (Laporan Saya) \";}s:11:\"description\";a:2:{s:4:\"from\";s:11:\"API dan Apk\";s:2:\"to\";s:38:\"API (get by id) dan Apk di menu Profil\";}}', 'project', 1, '', 0, 0),
(60, '2017-06-17 14:56:00', 1, 'created', 'task', 'klo sdh kirim laporan ada status', 20, NULL, 'project', 1, '', 0, 0),
(61, '2017-06-17 14:56:30', 1, 'created', 'task', 'profil bisa tambah foto, tambah alamat rumah dan t4 kerja', 21, NULL, 'project', 1, '', 0, 0),
(62, '2017-06-17 14:57:08', 1, 'created', 'task', 'push notif dari web', 22, NULL, 'project', 1, '', 0, 0),
(63, '2017-06-17 14:57:20', 1, 'updated', 'task', 'profil bisa tambah foto, tambah alamat rumah dan t4 kerja', 21, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"4\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"6\";}}', 'project', 1, '', 0, 0),
(64, '2017-06-22 09:33:47', 3, 'created', 'milestone', 'Video Profile', 1, NULL, 'project', 4, '', 0, 0),
(65, '2017-06-22 09:35:47', 3, 'created', 'milestone', 'Website Content', 2, NULL, 'project', 4, '', 0, 0),
(66, '2017-06-22 09:40:31', 3, 'updated', 'milestone', 'Website Content', 2, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2017-06-22\";s:2:\"to\";s:10:\"2017-07-06\";}}', 'project', 4, '', 0, 0),
(67, '2017-06-22 15:41:54', 6, 'updated', 'task', 'Revisi tombol aksi admin cabor & sidora', 12, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 2, '', 0, 0),
(68, '2017-06-22 15:49:19', 6, 'updated', 'task', 'Detail Data Cabor', 15, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 2, '', 0, 0),
(69, '2017-06-24 16:36:06', 4, 'updated', 'task', 'Scroll Image dan title (Tampilan Details News)', 18, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(70, '2017-06-24 16:45:56', 4, 'created', 'task_comment', 'ada status dmn ? ', 8, NULL, 'project', 1, 'task', 20, 0),
(71, '2017-06-24 20:38:23', 5, 'created', 'project_file', '_file594ecdbf4c1f3-Logo.png', 1, NULL, 'project', 1, '', 0, 0),
(72, '2017-06-24 20:39:41', 5, 'updated', 'task', 'Perubahan Logo Lapor Maros', 17, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(73, '2017-06-24 20:40:05', 5, 'updated', 'task', 'Perubahan Logo Lapor Maros', 17, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:4:\"done\";s:2:\"to\";s:5:\"to_do\";}}', 'project', 1, '', 0, 0),
(74, '2017-06-28 12:46:34', 4, 'updated', 'task', 'Perubahan Logo Lapor Maros', 17, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(75, '2017-06-28 13:20:02', 4, 'updated', 'task', 'Menampilkan History Laporan (Laporan Saya) ', 19, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(76, '2017-06-28 13:40:09', 3, 'updated', 'milestone', 'Website Content', 2, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:69:\"install wp\ninstall plugin\ninstall template\ncontent home \ncontent page\";}}', 'project', 4, '', 0, 0),
(77, '2017-06-28 13:40:51', 3, 'created', 'task', 'Install WP', 23, NULL, 'project', 4, '', 0, 0),
(78, '2017-06-28 13:41:12', 3, 'created', 'task', 'install plugin', 24, NULL, 'project', 4, '', 0, 0),
(79, '2017-06-28 13:41:35', 3, 'created', 'task', 'install template', 25, NULL, 'project', 4, '', 0, 0),
(80, '2017-06-28 13:42:09', 3, 'created', 'task', 'content home', 26, NULL, 'project', 4, '', 0, 0),
(81, '2017-06-28 13:42:42', 3, 'created', 'task', 'content page', 27, NULL, 'project', 4, '', 0, 0),
(82, '2017-07-02 11:40:34', 1, 'updated', 'task', 'push notif dari web', 22, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(83, '2017-07-04 12:50:48', 1, 'created', 'project_comment', 'FTP Username: 4nesia@beta.4nesia.com\nFTP server: ftp.4nesia.com\nFTP & explicit FTPS port:  21\nFTP Password : kp2017bandung', 9, NULL, 'project', 4, '', 0, 0),
(84, '2017-07-04 13:00:03', 3, 'updated', 'task', 'Install WP', 23, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:2:\"10\";}}', 'project', 4, '', 0, 0),
(85, '2017-07-04 13:00:17', 3, 'updated', 'task', 'install template', 25, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:2:\"15\";}}', 'project', 4, '', 0, 0),
(86, '2017-07-04 13:00:42', 3, 'updated', 'task', 'install plugin', 24, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:2:\"10\";}}', 'project', 4, '', 0, 0),
(87, '2017-07-04 13:00:53', 3, 'updated', 'task', 'content home', 26, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:2:\"15\";}}', 'project', 4, '', 0, 0),
(88, '2017-07-04 13:01:05', 3, 'updated', 'task', 'content page', 27, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:2:\"10\";}}', 'project', 4, '', 0, 0),
(89, '2017-07-05 13:27:48', 1, 'updated', 'task', 'profil bisa tambah foto, tambah alamat rumah dan t4 kerja', 21, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(90, '2017-07-05 13:27:53', 1, 'updated', 'task', 'klo sdh kirim laporan ada status', 20, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(91, '2017-07-05 13:29:35', 1, 'created', 'task', 'Bug Fitur Lapor', 28, NULL, 'project', 1, '', 0, 0),
(92, '2017-07-05 13:31:25', 1, 'created', 'task', 'Gambar Profil', 29, NULL, 'project', 1, '', 0, 0),
(93, '2017-07-05 13:32:18', 1, 'created', 'task', 'Tampilan Hystory Laporan', 30, NULL, 'project', 1, '', 0, 0),
(94, '2017-07-05 13:34:09', 1, 'created', 'task', 'Revisi/ Feedback dari Maros', 31, NULL, 'project', 1, '', 0, 0),
(95, '2017-09-11 15:14:15', 4, 'updated', 'task', 'Tampilan Hystory Laporan', 30, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(96, '2017-09-11 15:14:17', 4, 'updated', 'task', 'Gambar Profil', 29, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(97, '2017-09-11 15:14:24', 4, 'updated', 'task', 'Bug Fitur Lapor', 28, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(98, '2017-09-11 15:14:27', 4, 'updated', 'task', 'Revisi/ Feedback dari Maros', 31, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 1, '', 0, 0),
(99, '2017-09-11 16:18:43', 1, 'updated', 'task', 'Style Foto', 16, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 2, '', 0, 0),
(100, '2017-09-11 16:18:53', 1, 'updated', 'task', 'Detail data Cabor di admin', 14, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 2, '', 0, 0),
(101, '2017-09-11 16:18:57', 1, 'updated', 'task', 'Route login admin cabor dan admin sidora', 13, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 2, '', 0, 0),
(102, '2017-09-11 17:50:25', 1, 'created', 'task', 'Backup Konten WEB', 32, NULL, 'project', 9, '', 0, 0),
(103, '2017-09-11 17:51:00', 1, 'created', 'task', 'Pemilihan Theme', 33, NULL, 'project', 9, '', 0, 0),
(104, '2017-09-11 18:07:08', 1, 'created', 'task', 'Penentuan Konsep WEB', 34, NULL, 'project', 9, '', 0, 0),
(105, '2017-09-11 18:07:57', 1, 'created', 'task', 'Konten Update', 35, NULL, 'project', 9, '', 0, 0),
(106, '2017-09-11 18:16:00', 1, 'created', 'task', 'Deleting / WIPE Wordpress 4nesia', 36, NULL, 'project', 9, '', 0, 0),
(107, '2017-09-11 18:16:46', 1, 'created', 'task', 'Installing Theme baru', 37, NULL, 'project', 9, '', 0, 0),
(108, '2017-09-12 03:10:15', 1, 'created', 'task', 'Super Admin Terhapus sendiri', 38, NULL, 'project', 2, '', 0, 0),
(109, '2017-09-12 03:10:30', 1, 'created', 'project_comment', 'Username: sidorapa\nPassword: nGrJe73f30\n\nControl Panel URL: http://139.99.7.208:2082/\nKetika domain sudah aktif, anda dapat mengaksesnya dengan http://www.sidora.pareparekota.go.id:2082/', 10, NULL, 'project', 2, '', 0, 0),
(110, '2017-09-12 03:11:40', 1, 'created', 'task', 'Mengatasi Double data Guru', 39, NULL, 'project', 2, '', 0, 0),
(111, '2017-09-12 03:24:02', 1, 'created', 'task', 'Fitur Delete CABORS', 40, NULL, 'project', 2, '', 0, 0),
(112, '2017-09-12 03:24:31', 1, 'updated', 'task', 'Fitur Delete CABORS', 40, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"4\";}}', 'project', 2, '', 0, 0),
(113, '2017-09-12 03:25:06', 1, 'created', 'task', 'Fitur Delete Data Guru', 41, NULL, 'project', 2, '', 0, 0),
(114, '2017-09-12 03:27:11', 1, 'created', 'task', 'Fitur Unduh/Export to excel/pdf data guru di super admin', 42, NULL, 'project', 2, '', 0, 0),
(115, '2017-09-12 03:33:02', 6, 'updated', 'task', 'Fitur Unduh/Export to excel/pdf data guru di super admin', 42, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 2, '', 0, 0),
(116, '2017-09-12 03:35:32', 1, 'created', 'project_comment', 'referensi \nhttp://dispora.jabarprov.go.id/webdb/', 11, NULL, 'project', 2, '', 0, 0),
(117, '2017-09-12 03:42:33', 1, 'updated', 'task', 'Super Admin Terhapus sendiri', 38, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:41:\"users super admin sering terhapus sendiri\";s:2:\"to\";s:50:\"users super admin ikut terhapus jika cabor dihapus\";}}', 'project', 2, '', 0, 0),
(118, '2017-09-12 14:44:25', 8, 'created', 'project_comment', 'Akun CPanel 4nesia\n\nUsername: nesiacom\nPassword: xt9792flEY', 12, NULL, 'project', 11, '', 0, 0),
(119, '2017-09-13 09:33:41', 5, 'updated', 'task', 'Konten Update', 35, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 9, '', 0, 0),
(120, '2017-09-13 09:33:42', 5, 'updated', 'task', 'Konten Update', 35, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:4:\"done\";s:2:\"to\";s:5:\"to_do\";}}', 'project', 9, '', 0, 0),
(121, '2017-09-13 11:19:08', 5, 'updated', 'task', 'Konten Update', 35, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 9, '', 0, 0),
(122, '2017-09-13 11:19:11', 5, 'updated', 'task', 'Konten Update', 35, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:4:\"done\";s:2:\"to\";s:5:\"to_do\";}}', 'project', 9, '', 0, 0),
(123, '2017-09-14 05:18:57', 1, 'created', 'project_comment', 'bagaimana progress?', 13, NULL, 'project', 9, '', 0, 0),
(124, '2017-09-14 06:31:36', 1, 'updated', 'task', 'Pemilihan Theme', 33, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 9, '', 0, 0),
(125, '2017-09-15 15:23:54', 1, 'updated', 'task', 'Installing Theme baru', 37, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 9, '', 0, 0),
(126, '2017-09-15 15:24:00', 1, 'updated', 'task', 'Deleting / WIPE Wordpress 4nesia', 36, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 9, '', 0, 0),
(127, '2017-09-15 15:24:21', 1, 'updated', 'task', 'Backup Konten WEB', 32, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 9, '', 0, 0),
(128, '2017-09-15 15:24:42', 1, 'updated', 'task', 'Penentuan Konsep WEB', 34, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 9, '', 0, 0),
(129, '2017-09-16 04:09:34', 1, 'created', 'task', 'Fitur Lapor', 43, NULL, 'project', 8, '', 0, 0),
(130, '2017-09-16 04:10:06', 1, 'created', 'task', 'Fitur News', 44, NULL, 'project', 8, '', 0, 0),
(131, '2017-09-16 04:10:16', 1, 'updated', 'task', 'Fitur News', 44, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:2:\"21\";}}', 'project', 8, '', 0, 0),
(132, '2017-09-16 04:10:30', 1, 'created', 'task', 'Menu Profil', 45, NULL, 'project', 8, '', 0, 0),
(133, '2017-09-19 06:52:39', 1, 'created', 'project_comment', 'KP done ya', 14, NULL, 'project', 6, '', 0, 0),
(134, '2017-09-25 12:24:46', 2, 'created', 'task', 'Pengembangan Website 4nesia', 46, NULL, 'project', 14, '', 0, 0),
(135, '2017-09-25 12:25:07', 2, 'updated', 'task', 'Pengembangan Website 4nesia', 46, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"26\";}}', 'project', 14, '', 0, 0),
(136, '2017-09-25 12:26:40', 2, 'updated', 'task', 'Pengembangan Website 4nesia', 46, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:4:\"done\";}}', 'project', 14, '', 0, 0),
(137, '2017-09-25 12:35:15', 2, 'created', 'task', 'Role Banner 4nesia', 47, NULL, 'project', 14, '', 0, 0),
(138, '2017-09-25 12:35:25', 2, 'deleted', 'task', 'Pengembangan Website 4nesia', 46, NULL, 'project', 14, NULL, NULL, 0),
(139, '2017-09-25 12:38:59', 2, 'created', 'task', 'Video Profile 4nesia', 48, NULL, 'project', 14, '', 0, 0),
(140, '2017-09-25 12:45:22', 2, 'created', 'task', 'Format Surat 4nesia', 49, NULL, 'project', 14, '', 0, 0),
(141, '2017-09-25 12:45:50', 2, 'updated', 'task', 'Format Surat 4nesia', 49, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:2:\"26\";}}', 'project', 14, '', 0, 0),
(142, '2017-09-25 12:46:36', 2, 'created', 'task', 'Desain Website 4nesia', 50, NULL, 'project', 14, '', 0, 0),
(143, '2017-09-25 12:48:20', 2, 'updated', 'task', 'Role Banner 4nesia', 47, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-09-25\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-09-27\";}}', 'project', 14, '', 0, 0),
(144, '2017-09-25 12:49:10', 2, 'updated', 'task', 'Video Profile 4nesia', 48, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2017-09-26\";s:2:\"to\";s:10:\"2017-10-01\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-10-31\";s:2:\"to\";s:10:\"2017-12-06\";}}', 'project', 14, '', 0, 0),
(145, '2017-09-25 12:51:16', 2, 'updated', 'task', 'Desain Website 4nesia', 50, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-09-28\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-06\";}}', 'project', 14, '', 0, 0),
(146, '2017-09-27 10:54:04', 26, 'updated', 'task', 'Role Banner 4nesia', 47, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 14, '', 0, 0),
(147, '2017-09-29 06:09:07', 26, 'updated', 'task', 'Role Banner 4nesia', 47, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"in_progress\";s:2:\"to\";s:4:\"done\";}}', 'project', 14, '', 0, 0),
(148, '2017-09-29 06:09:15', 26, 'updated', 'task', 'Format Surat 4nesia', 49, 'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:5:\"to_do\";s:2:\"to\";s:11:\"in_progress\";}}', 'project', 14, '', 0, 0),
(149, '2017-10-04 15:04:22', 1, 'created', 'task_comment', 'upload Screenshotnya ya', 15, NULL, 'project', 14, 'task', 47, 0),
(150, '2017-10-07 04:54:25', 1, 'updated', 'task', 'Konten Update', 35, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"3500000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 9, '', 0, 0),
(151, '2017-10-07 04:54:27', 1, 'updated', 'task', 'Konten Update', 35, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 9, '', 0, 0),
(152, '2017-10-07 15:13:52', 1, 'created', 'task', 'Install Composer', 51, NULL, 'project', 15, '', 0, 0),
(153, '2017-10-07 15:14:13', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"4\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(154, '2017-10-07 15:14:21', 1, 'updated', 'task', 'Install Composer', 51, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(155, '2017-10-07 15:14:22', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(156, '2017-10-07 15:14:23', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(157, '2017-10-07 15:14:26', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(158, '2017-10-07 15:14:26', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(159, '2017-10-07 15:16:24', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(160, '2017-10-07 15:16:25', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(161, '2017-10-07 15:16:27', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(162, '2017-10-07 15:16:29', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(163, '2017-10-07 15:16:30', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(164, '2017-10-07 15:16:36', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(165, '2017-10-07 15:16:37', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(166, '2017-10-07 15:16:39', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(167, '2017-10-07 15:16:40', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(168, '2017-10-07 15:16:51', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(169, '2017-10-07 15:16:52', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(170, '2017-10-07 15:16:55', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(171, '2017-10-07 15:17:00', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(172, '2017-10-07 15:17:02', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(173, '2017-10-07 15:18:21', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(174, '2017-10-07 15:18:26', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(175, '2017-10-07 15:18:27', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(176, '2017-10-07 15:18:33', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(177, '2017-10-07 15:18:39', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(178, '2017-10-07 15:18:50', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(179, '2017-10-07 15:18:52', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(180, '2017-10-07 15:18:54', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(181, '2017-10-07 17:04:07', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(182, '2017-10-07 17:04:12', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(183, '2017-10-07 17:04:14', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(184, '2017-10-07 17:04:15', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(185, '2017-10-07 17:04:18', 1, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(186, '2017-10-07 17:07:33', 4, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 15, '', 0, 0),
(187, '2017-10-07 17:07:37', 4, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 15, '', 0, 0),
(188, '2017-10-07 17:07:38', 4, 'updated', 'task', 'Install Composer', 51, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 15, '', 0, 0),
(189, '2017-10-15 17:49:55', 26, 'created', 'project_file', '_file59e39fb84c858-RollBanner4nesia.jpg', 2, NULL, 'project', 14, '', 0, 0),
(190, '2017-10-28 12:21:42', 1, 'updated', 'task', 'Super Admin Terhapus sendiri', 38, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"3800000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(191, '2017-10-28 12:21:44', 1, 'updated', 'task', 'Fitur Delete CABORS', 40, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"4000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(192, '2017-10-28 12:21:46', 1, 'updated', 'task', 'Fitur Delete Data Guru', 41, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"4100000\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(193, '2017-10-28 12:21:48', 1, 'updated', 'task', 'Fitur Delete Data Guru', 41, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10200000\";s:2:\"to\";s:7:\"1300000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(194, '2017-10-28 12:21:49', 1, 'updated', 'task', 'Super Admin Terhapus sendiri', 38, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"1199500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(195, '2017-10-28 12:21:53', 1, 'updated', 'task', 'Fitur Delete CABORS', 40, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"1199000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(196, '2017-10-28 14:32:01', 1, 'updated', 'task', 'Fitur Delete CABORS', 40, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1199000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(197, '2017-10-28 14:32:03', 1, 'updated', 'task', 'Revisi tombol aksi admin cabor & sidora', 12, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1200000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(198, '2017-10-28 14:32:04', 1, 'updated', 'task', 'Fitur Delete Data Guru', 41, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1300000\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(199, '2017-10-28 14:32:05', 1, 'updated', 'task', 'Route login admin cabor dan admin sidora', 13, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1300000\";s:2:\"to\";s:7:\"4000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(200, '2017-10-28 14:32:07', 1, 'updated', 'task', 'Super Admin Terhapus sendiri', 38, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1199500\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(201, '2017-10-28 14:32:10', 1, 'updated', 'task', 'Detail Data Cabor', 15, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1500000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(202, '2017-10-28 14:32:11', 1, 'updated', 'task', 'Detail Data Cabor', 15, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"3900000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(203, '2017-10-28 14:32:12', 1, 'updated', 'task', 'Fitur Unduh/Export to excel/pdf data guru di super admin', 42, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"4200000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(204, '2017-10-28 14:32:13', 1, 'updated', 'task', 'Fitur Unduh/Export to excel/pdf data guru di super admin', 42, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"4100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 2, '', 0, 0),
(205, '2017-10-28 14:32:15', 1, 'updated', 'task', 'Style Foto', 16, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1600000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(206, '2017-10-28 14:32:16', 1, 'updated', 'task', 'Detail data Cabor di admin', 14, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"1400000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(207, '2017-10-28 14:32:20', 1, 'updated', 'task', 'Detail data Cabor di admin', 14, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(208, '2017-10-28 14:32:21', 1, 'updated', 'task', 'Style Foto', 16, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(209, '2017-10-28 14:32:22', 1, 'updated', 'task', 'Fitur Delete CABORS', 40, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(210, '2017-10-28 14:32:22', 1, 'updated', 'task', 'Revisi tombol aksi admin cabor & sidora', 12, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(211, '2017-10-28 14:32:23', 1, 'updated', 'task', 'Super Admin Terhapus sendiri', 38, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9998500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(212, '2017-10-28 14:32:24', 1, 'updated', 'task', 'Fitur Delete Data Guru', 41, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10200000\";s:2:\"to\";s:7:\"9998000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(213, '2017-10-28 14:32:26', 1, 'updated', 'task', 'Mengatasi Double data Guru', 39, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"3900000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(214, '2017-10-28 14:32:27', 1, 'updated', 'task', 'Route login admin cabor dan admin sidora', 13, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"4000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(215, '2017-10-28 14:32:28', 1, 'updated', 'task', 'Fitur Unduh/Export to excel/pdf data guru di super admin', 42, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"4100000\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(216, '2017-10-28 14:32:29', 1, 'updated', 'task', 'Detail Data Cabor', 15, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"3900000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(217, '2017-10-29 19:02:10', 6, 'updated', 'task', 'Fitur Unduh/Export to excel/pdf data guru di super admin', 42, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(218, '2017-10-30 13:08:34', 6, 'updated', 'task', 'Mengatasi Double data Guru', 39, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(219, '2017-10-30 14:44:05', 1, 'updated', 'task', 'Route login admin cabor dan admin sidora', 13, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(220, '2017-10-30 14:44:08', 1, 'deleted', 'task', 'Route login admin cabor dan admin sidora', 13, NULL, 'project', 2, NULL, NULL, 0),
(221, '2017-10-30 14:44:12', 1, 'deleted', 'task', 'Detail Data Cabor', 15, NULL, 'project', 2, NULL, NULL, 0),
(222, '2017-10-30 15:49:07', 1, 'created', 'task', 'Show Profil Cabor ', 52, NULL, 'project', 2, '', 0, 0),
(223, '2017-10-30 15:49:19', 1, 'updated', 'task', 'Show Profil Cabor ', 52, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 2, '', 0, 0),
(224, '2017-10-30 15:50:27', 1, 'created', 'task', 'increment nomor', 53, NULL, 'project', 2, '', 0, 0),
(225, '2017-10-30 15:51:08', 1, 'created', 'task', 'edit data guru', 54, NULL, 'project', 2, '', 0, 0),
(226, '2017-10-30 15:51:23', 1, 'updated', 'task', 'edit data guru', 54, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(227, '2017-10-30 15:54:13', 1, 'created', 'task', 'datapublic atlet tidak muncul', 55, NULL, 'project', 2, '', 0, 0),
(228, '2017-10-30 15:57:08', 1, 'created', 'task_comment', 'gambar', 16, NULL, 'project', 2, 'task', 55, 0),
(229, '2017-10-30 15:58:27', 1, 'created', 'task', 'foto prasarana tidak muncul (public)', 56, NULL, 'project', 2, '', 0, 0),
(230, '2017-10-30 15:58:59', 1, 'created', 'task_comment', 'gambar', 17, NULL, 'project', 2, 'task', 56, 0),
(231, '2017-10-30 16:57:58', 6, 'updated', 'task', 'foto prasarana tidak muncul (public)', 56, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(232, '2017-10-30 16:58:02', 6, 'updated', 'task', 'datapublic atlet tidak muncul', 55, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(233, '2017-10-31 19:23:14', 6, 'updated', 'task', 'increment nomor', 53, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(234, '2017-11-03 12:18:17', 1, 'created', 'task', 'tampilan public view data cabor', 57, NULL, 'project', 2, '', 0, 0),
(235, '2017-11-04 15:08:45', 14, 'updated', 'task', 'Konten Update', 35, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"3199500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 9, '', 0, 0),
(236, '2017-11-05 12:02:19', 14, 'created', 'task', 'Usecase Diagram', 58, NULL, 'project', 16, '', 0, 0),
(237, '2017-11-05 12:03:01', 14, 'updated', 'task', 'Usecase Diagram', 58, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"Usecase Diagram\";s:2:\"to\";s:22:\"[Kasar]Usecase Diagram\";}}', 'project', 16, '', 0, 0),
(238, '2017-11-05 12:03:51', 14, 'created', 'task', '[Kasar] Tabel ERD', 59, NULL, 'project', 16, '', 0, 0),
(239, '2017-11-05 12:04:27', 14, 'updated', 'task', '[Kasar] Tabel ERD', 59, 'a:1:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 16, '', 0, 0),
(240, '2017-11-05 12:04:54', 14, 'updated', 'task', '[Kasar] Tabel ERD', 59, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:24:\"Analisis dan Perancangan\";}}', 'project', 16, '', 0, 0),
(241, '2017-11-05 12:13:05', 14, 'created', 'task', 'Class Diagram', 60, NULL, 'project', 16, '', 0, 0),
(242, '2017-11-05 12:13:34', 14, 'updated', 'task', 'Class Diagram', 60, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2017-11-07\";s:2:\"to\";s:10:\"2017-11-08\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-11-08\";s:2:\"to\";s:10:\"2017-11-11\";}}', 'project', 16, '', 0, 0),
(243, '2017-11-05 12:14:42', 14, 'updated', 'task', '[Kasar] Tabel ERD', 59, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-05\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-08\";}}', 'project', 16, '', 0, 0),
(244, '2017-11-05 12:15:04', 14, 'updated', 'task', '[Kasar]Usecase Diagram', 58, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-06\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-08\";}}', 'project', 16, '', 0, 0),
(245, '2017-11-05 12:15:40', 14, 'updated', 'task', 'Class Diagram', 60, 'a:2:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"4\";s:2:\"to\";s:1:\"3\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"14\";}}', 'project', 16, '', 0, 0),
(246, '2017-11-05 12:17:06', 14, 'created', 'task', 'Wireframe App', 61, NULL, 'project', 16, '', 0, 0),
(247, '2017-11-05 12:17:36', 14, 'updated', 'task', 'Wireframe App', 61, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:1:\"8\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"8\";s:2:\"to\";s:0:\"\";}}', 'project', 16, '', 0, 0),
(248, '2017-11-05 12:19:28', 14, 'created', 'task', '[Final] Use Case & Tabel ERD', 62, NULL, 'project', 16, '', 0, 0),
(249, '2017-11-05 12:19:54', 14, 'updated', 'task', 'Wireframe App', 61, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"5\";}}', 'project', 16, '', 0, 0),
(250, '2017-11-05 12:20:58', 14, 'updated', 'task', 'Class Diagram', 60, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"16\";s:2:\"to\";s:2:\"14\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"16\";}}', 'project', 16, '', 0, 0),
(251, '2017-11-05 12:21:53', 14, 'updated', 'task', 'Wireframe App', 61, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-08\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-11\";}}', 'project', 16, '', 0, 0),
(252, '2017-11-05 12:23:11', 14, 'updated', 'task', '[Kasar] Tabel ERD', 59, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"5\";}}', 'project', 16, '', 0, 0),
(253, '2017-11-05 12:23:24', 14, 'updated', 'task', '[Kasar]Usecase Diagram', 58, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"5\";}}', 'project', 16, '', 0, 0),
(254, '2017-11-05 12:27:17', 14, 'updated', 'task', '[Kasar] Tabel ERD', 59, 'a:1:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2017-11-05\";s:2:\"to\";s:10:\"2017-11-06\";}}', 'project', 16, '', 0, 0),
(255, '2017-11-05 12:31:46', 14, 'updated', 'task', '[Kasar]Usecase Diagram', 58, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 16, '', 0, 0),
(256, '2017-11-05 12:31:49', 14, 'updated', 'task', '[Kasar] Tabel ERD', 59, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 16, '', 0, 0),
(257, '2017-11-08 22:38:32', 14, 'updated', 'task', '[Kasar]Usecase Diagram', 58, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 16, '', 0, 0),
(258, '2017-11-08 22:39:09', 14, 'created', 'task_comment', 'http://bit.ly/usecaseAntri', 18, NULL, 'project', 16, 'task', 58, 0),
(259, '2017-11-08 23:27:14', 14, 'updated', 'task', '[Kasar] Tabel ERD', 59, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 16, '', 0, 0),
(260, '2017-11-08 23:29:44', 14, 'created', 'task_comment', 'http://bit.ly/ERDantri', 19, NULL, 'project', 16, 'task', 59, 0),
(261, '2017-11-08 23:29:55', 14, 'deleted', 'project_comment', 'http://bit.ly/usecaseAntri', 18, NULL, 'project', 16, NULL, NULL, 0),
(262, '2017-11-08 23:30:33', 14, 'created', 'task_comment', 'http://bit.ly/usecaseAntri', 20, NULL, 'project', 16, 'task', 58, 0),
(263, '2017-11-08 23:31:35', 14, 'updated', 'task', 'Class Diagram', 60, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"16\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:2:\"16\";s:2:\"to\";s:6:\"14,5,8\";}}', 'project', 16, '', 0, 0),
(264, '2017-11-08 23:41:17', 14, 'created', 'milestone', 'Analisis dan Perancangan', 3, NULL, 'project', 16, '', 0, 0),
(265, '2017-11-08 23:42:04', 14, 'created', 'task', 'Actvity Diagram', 63, NULL, 'project', 16, '', 0, 0),
(266, '2017-11-08 23:44:15', 14, 'created', 'milestone', 'Mock up Step', 4, NULL, 'project', 16, '', 0, 0),
(267, '2017-11-08 23:44:56', 14, 'created', 'milestone', 'Devepment Tahap 1', 5, NULL, 'project', 16, '', 0, 0),
(268, '2017-11-08 23:45:21', 14, 'updated', 'milestone', 'Devepment Tahap 1', 5, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:20:\"Kebijakan Programmer\";s:2:\"to\";s:35:\"Mulai ngoding sesuai dengan mock up\";}}', 'project', 16, '', 0, 0),
(269, '2017-11-08 23:48:12', 14, 'updated', 'milestone', 'Devepment Tahap 1', 5, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:17:\"Devepment Tahap 1\";s:2:\"to\";s:13:\"UX/UI Testing\";}s:11:\"description\";a:2:{s:4:\"from\";s:35:\"Mulai ngoding sesuai dengan mock up\";s:2:\"to\";s:84:\"Pake mock up saja, \ncustomer demografi:\n-bapak/ibu umur > 30 tahun\n-minimal 15 orang\";}}', 'project', 16, '', 0, 0);
INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(270, '2017-11-08 23:48:34', 14, 'updated', 'milestone', 'Analisis dan Perancangan', 3, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:24:\"Analisis dan Perancangan\";s:2:\"to\";s:32:\"[WEEK 1]Analisis dan Perancangan\";}}', 'project', 16, '', 0, 0),
(271, '2017-11-08 23:48:46', 14, 'updated', 'milestone', 'Mock up Step', 4, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:12:\"Mock up Step\";s:2:\"to\";s:20:\"[WEEK 2]Mock up Step\";}}', 'project', 16, '', 0, 0),
(272, '2017-11-08 23:49:25', 14, 'updated', 'milestone', 'UX/UI Testing', 5, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:13:\"UX/UI Testing\";s:2:\"to\";s:21:\"[WEEK 3]UX/UI Testing\";}}', 'project', 16, '', 0, 0),
(273, '2017-11-08 23:49:41', 14, 'updated', 'milestone', '[WEEK 3]UX/UI Testing', 5, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:84:\"Pake mock up saja, \ncustomer demografi:\n-bapak/ibu umur > 30 tahun\n-minimal 15 orang\";s:2:\"to\";s:83:\"Pake mock up saja, \ncustomer demografi:\n-bapak/ibu umur > 30 tahun\n-minimal 5 orang\";}}', 'project', 16, '', 0, 0),
(274, '2017-11-08 23:51:44', 14, 'created', 'milestone', '[WEEK 4] Mock Up Part 2', 6, NULL, 'project', 16, '', 0, 0),
(275, '2017-11-08 23:51:53', 14, 'updated', 'milestone', '[WEEK 3]UX/UI Testing', 5, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2017-11-27\";s:2:\"to\";s:10:\"2017-11-25\";}}', 'project', 16, '', 0, 0),
(276, '2017-11-08 23:52:00', 14, 'updated', 'milestone', '[WEEK 2]Mock up Step', 4, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2017-11-20\";s:2:\"to\";s:10:\"2017-11-18\";}}', 'project', 16, '', 0, 0),
(277, '2017-11-08 23:52:10', 14, 'updated', 'milestone', '[WEEK 1]Analisis dan Perancangan', 3, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2017-11-12\";s:2:\"to\";s:10:\"2017-11-11\";}}', 'project', 16, '', 0, 0),
(278, '2017-11-08 23:52:45', 14, 'updated', 'milestone', '[WEEK 3]UX/UI Testing', 5, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:83:\"Pake mock up saja, \ncustomer demografi:\n-bapak/ibu umur > 30 tahun\n-minimal 5 orang\";s:2:\"to\";s:68:\"Pake Marvel aja, \nTarget\n-bapak/ibu umur > 30 tahun\n-minimal 5 orang\";}}', 'project', 16, '', 0, 0),
(279, '2017-11-08 23:53:41', 14, 'updated', 'milestone', '[WEEK 2]Mock up Step', 4, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:20:\"[WEEK 2]Mock up Step\";s:2:\"to\";s:15:\"[WEEK 2]Mock up\";}}', 'project', 16, '', 0, 0),
(280, '2017-11-08 23:54:36', 14, 'created', 'milestone', 'Prototyping I', 7, NULL, 'project', 16, '', 0, 0),
(281, '2017-11-08 23:54:53', 14, 'updated', 'milestone', 'Prototyping I', 7, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:13:\"Prototyping I\";s:2:\"to\";s:22:\"[WEEK 5] Prototyping I\";}}', 'project', 16, '', 0, 0),
(282, '2017-11-08 23:56:11', 14, 'updated', 'milestone', '[WEEK 2]Mock up', 4, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:36:\"Bikin Mock up Berwarna\ndan Scope Fix\";s:2:\"to\";s:96:\"Mock up Berwarna, Material Design Based.\ndan Scope Fix\nRemember, Target User : Bpk/Ibu > 30tahun\";}}', 'project', 16, '', 0, 0),
(283, '2017-11-08 23:57:31', 14, 'created', 'milestone', '[WEEK 6]Prototyping II', 8, NULL, 'project', 16, '', 0, 0),
(284, '2017-11-09 00:03:11', 14, 'updated', 'task', '[Final] Use Case & Tabel ERD', 62, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"3\";}}', 'project', 16, '', 0, 0),
(285, '2017-11-09 00:03:42', 14, 'updated', 'task', 'Wireframe App', 61, 'a:3:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"3\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2017-11-08\";s:2:\"to\";s:10:\"0000-00-00\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2017-11-11\";s:2:\"to\";s:10:\"0000-00-00\";}}', 'project', 16, '', 0, 0),
(286, '2017-11-09 00:03:57', 14, 'updated', 'task', 'Class Diagram', 60, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"3\";}}', 'project', 16, '', 0, 0),
(287, '2017-11-09 00:05:41', 14, 'updated', 'task', 'Actvity Diagram', 63, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-04\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-11\";}}', 'project', 16, '', 0, 0),
(288, '2017-11-09 00:06:07', 14, 'updated', 'task', 'Wireframe App', 61, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-09\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-11\";}}', 'project', 16, '', 0, 0),
(289, '2017-11-10 09:17:41', 6, 'updated', 'task', 'tampilan public view data cabor', 57, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(290, '2017-11-10 15:40:52', 1, 'updated', 'task', 'Show Profil Cabor ', 52, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(291, '2017-11-10 15:40:53', 1, 'updated', 'task', 'Show Profil Cabor ', 52, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(292, '2017-11-10 15:41:18', 1, 'updated', 'task', 'edit data guru', 54, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(293, '2017-11-11 02:07:51', 16, 'created', 'task', 'Firebase Database & Push Notification', 64, NULL, 'project', 16, '', 0, 0),
(294, '2017-11-13 23:45:18', 1, 'created', 'task', 'Data Atlet', 65, NULL, 'project', 2, '', 0, 0),
(295, '2017-11-13 23:46:06', 1, 'created', 'task', 'Edit Data Atlet', 66, NULL, 'project', 2, '', 0, 0),
(296, '2017-11-13 23:48:28', 1, 'updated', 'task', 'Edit Data Atlet', 66, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"6\";}}', 'project', 2, '', 0, 0),
(297, '2017-11-13 23:49:03', 1, 'created', 'task', 'Data Organisasi (Public)', 67, NULL, 'project', 2, '', 0, 0),
(298, '2017-11-13 23:49:51', 1, 'updated', 'task', 'Data Atlet', 65, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:10:\"Data Atlet\";s:2:\"to\";s:20:\"Data Atlet & Pelatih\";}}', 'project', 2, '', 0, 0),
(299, '2017-11-13 23:50:09', 1, 'updated', 'task', 'Edit Data Atlet', 66, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"Edit Data Atlet\";s:2:\"to\";s:19:\"Pas edit Data Atlet\";}}', 'project', 2, '', 0, 0),
(300, '2017-11-13 23:55:38', 1, 'created', 'task', 'Periksa Semua Edit Data Cabor', 68, NULL, 'project', 2, '', 0, 0),
(301, '2017-11-14 15:31:04', 1, 'updated', 'task', 'Data Organisasi (Public)', 67, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(302, '2017-11-15 06:58:00', 1, 'updated', 'task', 'Periksa Semua Edit Data Cabor', 68, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(303, '2017-11-15 06:58:07', 1, 'updated', 'task', 'Pas edit Data Atlet', 66, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(304, '2017-11-15 06:58:35', 1, 'updated', 'task', 'Data Atlet & Pelatih', 65, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(305, '2017-11-15 06:59:11', 1, 'updated', 'task', 'Data Atlet & Pelatih', 65, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(306, '2017-11-15 06:59:20', 1, 'updated', 'task', 'Data Atlet & Pelatih', 65, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(307, '2017-11-15 06:59:22', 1, 'updated', 'task', 'Periksa Semua Edit Data Cabor', 68, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(308, '2017-11-15 06:59:27', 1, 'updated', 'task', 'Pas edit Data Atlet', 66, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 2, '', 0, 0),
(309, '2017-11-15 06:59:29', 1, 'updated', 'task', 'Periksa Semua Edit Data Cabor', 68, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(310, '2017-11-15 06:59:34', 1, 'updated', 'task', 'Pas edit Data Atlet', 66, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(311, '2017-11-16 03:43:51', 1, 'created', 'task', 'Count Atlet Perempuan', 69, NULL, 'project', 2, '', 0, 0),
(312, '2017-11-16 15:10:33', 1, 'updated', 'task', 'Count Atlet Perempuan', 69, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 2, '', 0, 0),
(313, '2017-11-18 03:23:23', 8, 'updated', 'task', 'Wireframe App', 61, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 16, '', 0, 0),
(314, '2017-11-18 03:58:45', 8, 'updated', 'task', 'Wireframe App', 61, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 16, '', 0, 0),
(315, '2017-11-18 13:27:14', 8, 'created', 'task_comment', 'https://www.figma.com/file/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri', 21, NULL, 'project', 16, 'task', 61, 0),
(316, '2017-11-18 15:46:50', 8, 'created', 'task', 'Layanan Akademik (LAK)', 70, NULL, 'project', 18, '', 0, 0),
(317, '2017-11-18 15:47:19', 8, 'created', 'task', 'Kelompok Keahlian', 71, NULL, 'project', 18, '', 0, 0),
(318, '2017-11-18 15:48:02', 8, 'created', 'task', 'Mahasiswa', 72, NULL, 'project', 18, '', 0, 0),
(319, '2017-11-18 15:48:56', 8, 'created', 'task', 'Dosen Akademik', 73, NULL, 'project', 18, '', 0, 0),
(320, '2017-11-18 15:50:32', 8, 'created', 'task', 'Perusahaan, Pembimbing Lap', 74, NULL, 'project', 18, '', 0, 0),
(321, '2017-11-18 15:51:04', 8, 'created', 'task', 'Program Studi', 75, NULL, 'project', 18, '', 0, 0),
(322, '2017-11-18 15:52:08', 8, 'updated', 'task', 'Dosen Akademik', 73, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 18, '', 0, 0),
(323, '2017-11-18 15:52:15', 8, 'updated', 'task', 'Program Studi', 75, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 18, '', 0, 0),
(324, '2017-11-18 15:55:55', 1, 'updated', 'task', 'Dosen Akademik', 73, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 18, '', 0, 0),
(325, '2017-11-18 15:57:31', 8, 'updated', 'task', 'Program Studi', 75, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:1:\"-\";s:2:\"to\";s:26:\"usr: prodisi\npass: prodisi\";}}', 'project', 18, '', 0, 0),
(326, '2017-11-18 15:58:08', 8, 'updated', 'task', 'Perusahaan, Pembimbing Lap', 74, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:1:\"-\";s:2:\"to\";s:64:\"perusahaan\nusr:telkom\npass:telkom\n\npemb\nusr:abdazis\npass:abdazis\";}}', 'project', 18, '', 0, 0),
(327, '2017-11-18 15:58:36', 1, 'created', 'task', 'Pembimbing Lapangan', 76, NULL, 'project', 18, '', 0, 0),
(328, '2017-11-18 15:59:19', 1, 'updated', 'task', 'Pembimbing Lapangan', 76, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"6\";}}', 'project', 18, '', 0, 0),
(329, '2017-11-18 15:59:29', 1, 'updated', 'task', 'Perusahaan, Pembimbing Lap', 74, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:26:\"Perusahaan, Pembimbing Lap\";s:2:\"to\";s:10:\"Perusahaan\";}}', 'project', 18, '', 0, 0),
(330, '2017-11-18 15:59:45', 1, 'updated', 'task', 'Pembimbing Lapangan', 76, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-18\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2017-11-19\";}}', 'project', 18, '', 0, 0),
(331, '2017-11-18 16:00:37', 2, 'updated', 'task', 'Kelompok Keahlian', 71, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 18, '', 0, 0),
(332, '2017-11-18 16:00:47', 2, 'updated', 'task', 'Program Studi', 75, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 18, '', 0, 0),
(333, '2017-11-18 19:11:36', 2, 'updated', 'task', 'Program Studi', 75, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 18, '', 0, 0),
(334, '2017-11-19 15:57:22', 6, 'updated', 'task', 'Pembimbing Lapangan', 76, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 18, '', 0, 0),
(335, '2017-11-20 03:17:17', 8, 'updated', 'task', 'Kelompok Keahlian', 71, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 18, '', 0, 0),
(336, '2017-11-26 14:14:04', 8, 'updated', 'task', 'Wireframe App', 61, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 16, '', 0, 0),
(337, '2017-11-26 14:15:13', 8, 'created', 'task_comment', 'Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=61:87', 22, NULL, 'project', 16, 'task', 61, 0),
(338, '2017-11-26 14:15:35', 8, 'created', 'task_comment', 'Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=61:87', 23, NULL, 'project', 16, 'task', 61, 0),
(339, '2017-11-26 14:15:41', 8, 'deleted', 'project_comment', 'Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=61:87', 23, NULL, 'project', 16, NULL, NULL, 0),
(340, '2017-11-26 14:18:16', 8, 'deleted', 'project_comment', 'Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=61:87', 22, NULL, 'project', 16, NULL, NULL, 0),
(341, '2017-11-26 14:20:14', 8, 'created', 'task_comment', 'Updated Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=53:24', 24, NULL, 'project', 16, 'task', 61, 0),
(342, '2017-11-26 14:24:38', 8, 'updated', 'task', 'Kelompok Keahlian', 71, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 18, '', 0, 0),
(343, '2017-11-26 14:24:45', 8, 'updated', 'task', '[Final] Use Case & Tabel ERD', 62, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 16, '', 0, 0),
(344, '2017-11-26 14:26:45', 8, 'created', 'task', 'Splash Screen', 77, NULL, 'project', 17, '', 0, 0),
(345, '2017-11-26 14:27:25', 8, 'created', 'task', 'Login Screen', 78, NULL, 'project', 17, '', 0, 0),
(346, '2017-11-26 14:28:07', 8, 'created', 'task', 'Home screen', 79, NULL, 'project', 17, '', 0, 0),
(347, '2017-11-26 14:28:52', 8, 'updated', 'task', 'Dosen Akademik', 73, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 18, '', 0, 0),
(348, '2017-11-26 14:28:55', 8, 'updated', 'task', 'Layanan Akademik (LAK)', 70, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 18, '', 0, 0),
(349, '2017-11-26 14:29:00', 8, 'updated', 'task', 'Mahasiswa', 72, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 18, '', 0, 0),
(350, '2017-11-26 14:29:04', 8, 'updated', 'task', 'Perusahaan', 74, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 18, '', 0, 0),
(351, '2017-11-26 14:29:06', 8, 'updated', 'task', 'Layanan Akademik (LAK)', 70, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 18, '', 0, 0),
(352, '2017-11-26 14:29:09', 8, 'updated', 'task', 'Perusahaan', 74, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10200000\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 18, '', 0, 0),
(353, '2017-11-26 14:29:16', 8, 'updated', 'task', 'Mahasiswa', 72, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 18, '', 0, 0),
(354, '2017-12-02 13:51:52', 8, 'updated', 'task', 'Splash Screen', 77, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 17, '', 0, 0),
(355, '2017-12-02 13:51:54', 8, 'updated', 'task', 'Login Screen', 78, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 17, '', 0, 0),
(356, '2017-12-02 13:51:55', 8, 'updated', 'task', 'Home screen', 79, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 17, '', 0, 0),
(357, '2017-12-02 13:52:18', 8, 'updated', 'task', 'Login Screen', 78, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:12:\"Login Screen\";s:2:\"to\";s:22:\"Home Screen Kepemudaan\";}}', 'project', 17, '', 0, 0),
(358, '2017-12-02 13:52:31', 8, 'updated', 'task', 'Home screen', 79, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:11:\"Home screen\";s:2:\"to\";s:24:\"Home screen Keolahragaan\";}}', 'project', 17, '', 0, 0),
(359, '2017-12-02 13:53:42', 8, 'created', 'task', 'Screen List Data', 80, NULL, 'project', 17, '', 0, 0),
(360, '2017-12-02 13:53:46', 8, 'updated', 'task', 'Screen List Data', 80, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 17, '', 0, 0),
(361, '2017-12-02 13:54:16', 8, 'created', 'task', 'Screen Detail List Data', 81, NULL, 'project', 17, '', 0, 0),
(362, '2017-12-02 13:54:21', 8, 'updated', 'task', 'Screen Detail List Data', 81, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 17, '', 0, 0),
(363, '2017-12-09 15:23:03', 1, 'updated', 'task', 'Firebase Database & Push Notification', 64, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 16, '', 0, 0),
(364, '2017-12-09 15:23:39', 1, 'updated', 'task', 'Firebase Database & Push Notification', 64, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 16, '', 0, 0),
(365, '2018-01-31 15:17:03', 1, 'created', 'milestone', 'Januari', 9, NULL, 'project', 20, '', 0, 0),
(366, '2018-01-31 15:17:27', 1, 'created', 'task', 'Membuat pembukuan', 82, NULL, 'project', 20, '', 0, 0),
(367, '2018-01-31 15:17:48', 1, 'created', 'milestone', 'Pebruari', 10, NULL, 'project', 20, '', 0, 0),
(368, '2018-01-31 15:18:01', 1, 'updated', 'milestone', 'Pebruari', 10, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-01-31\";s:2:\"to\";s:10:\"2018-02-01\";}}', 'project', 20, '', 0, 0),
(369, '2018-01-31 15:18:22', 1, 'updated', 'task', 'Membuat pembukuan', 82, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"9\";s:2:\"to\";s:2:\"10\";}}', 'project', 20, '', 0, 0),
(370, '2018-02-07 14:02:19', 1, 'created', 'project_file', '_file5a7b06eae51f8-3-Day-Entrepreneur-1-Page-12-Month-Strategic-Plan.docx', 3, NULL, 'project', 21, '', 0, 0),
(371, '2018-02-07 14:32:00', 1, 'created', 'project_file', '_file5a7b0de0a3409-persenan-4nesia.pdf', 4, NULL, 'project', 21, '', 0, 0),
(372, '2018-02-07 16:14:42', 1, 'created', 'task', 'Menyusun Visi 3 tahun perusahaan', 83, NULL, 'project', 23, '', 0, 0),
(373, '2018-02-07 16:55:51', 3, 'created', 'task', 'Structure Organization', 84, NULL, 'project', 22, '', 0, 1),
(374, '2018-02-07 16:56:19', 3, 'created', 'task', 'Poster Internship', 85, NULL, 'project', 22, '', 0, 1),
(375, '2018-02-10 13:40:20', 8, 'updated', 'task', 'Splash Screen', 77, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9998500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 17, '', 0, 0),
(376, '2018-02-10 13:40:22', 8, 'updated', 'task', 'Screen List Data', 80, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9998000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 17, '', 0, 0),
(377, '2018-02-10 13:40:23', 8, 'updated', 'task', 'Screen Detail List Data', 81, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9997500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 17, '', 0, 0),
(378, '2018-02-10 13:40:24', 8, 'updated', 'task', 'Home Screen Kepemudaan', 78, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9997000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 17, '', 0, 0),
(379, '2018-02-10 13:40:26', 8, 'updated', 'task', 'Home screen Keolahragaan', 79, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10200000\";s:2:\"to\";s:7:\"9996500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 17, '', 0, 0),
(380, '2018-02-10 13:47:39', 16, 'created', 'task', 'Finishing Aplikasi KP', 86, NULL, 'project', 27, '', 0, 0),
(381, '2018-02-10 13:50:36', 1, 'created', 'task', 'membuat  format', 87, NULL, 'project', 25, '', 0, 0),
(382, '2018-02-10 13:50:43', 1, 'updated', 'task', 'membuat  format', 87, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 25, '', 0, 0),
(383, '2018-02-10 13:50:46', 1, 'updated', 'task', 'membuat  format', 87, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 25, '', 0, 0),
(384, '2018-02-10 13:51:22', 1, 'updated', 'task', 'membuat  format', 87, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 25, '', 0, 0),
(385, '2018-02-10 13:51:23', 1, 'updated', 'task', 'membuat  format', 87, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 25, '', 0, 0),
(386, '2018-02-10 13:51:24', 1, 'updated', 'task', 'membuat  format', 87, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 25, '', 0, 0),
(387, '2018-02-10 13:51:27', 1, 'updated', 'task', 'membuat  format', 87, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 25, '', 0, 0),
(388, '2018-02-10 13:57:50', 2, 'created', 'task', 'Maintainance Blog Article', 88, NULL, 'project', 26, '', 0, 0),
(389, '2018-02-12 07:38:42', 3, 'updated', 'task', 'Structure Organization', 84, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 22, '', 0, 1),
(390, '2018-02-12 07:38:48', 3, 'updated', 'task', 'Poster Internship', 85, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 22, '', 0, 1),
(391, '2018-02-12 07:44:56', 3, 'created', 'task', 'Poster Internship', 89, NULL, 'project', 29, '', 0, 0),
(392, '2018-02-12 07:45:19', 3, 'created', 'task', 'Struktur Organisasi', 90, NULL, 'project', 29, '', 0, 0),
(393, '2018-02-12 07:45:46', 3, 'created', 'task', 'Jaket crew', 91, NULL, 'project', 29, '', 0, 0),
(394, '2018-02-12 07:47:26', 3, 'created', 'task', 'Kartu Nama 4nesia', 92, NULL, 'project', 29, '', 0, 0),
(395, '2018-02-12 07:47:42', 3, 'created', 'task', 'idCard Crew', 93, NULL, 'project', 29, '', 0, 0),
(396, '2018-02-12 07:48:12', 3, 'created', 'task', 'Video Profile 4nesia', 94, NULL, 'project', 29, '', 0, 0),
(397, '2018-02-14 13:30:10', 14, 'created', 'task', 'Business Strategic Plan', 95, NULL, 'project', 21, '', 0, 0),
(398, '2018-02-14 13:30:57', 14, 'created', 'task', 'Presentasi Business Strategic Plan', 96, NULL, 'project', 21, '', 0, 0),
(399, '2018-02-14 15:08:00', 1, 'created', 'task', 'Mengkordinasikan rencana project siakad UIN & UMPAR Palu', 97, NULL, 'project', 23, '', 0, 0),
(400, '2018-02-14 15:09:20', 1, 'created', 'task', 'mengkordinasikan project PPDB', 98, NULL, 'project', 23, '', 0, 0),
(401, '2018-02-14 15:14:26', 3, 'created', 'task', 'Bikin Proposal', 99, NULL, 'project', 30, '', 0, 0),
(402, '2018-02-21 15:13:21', 23, 'created', 'project_file', '_file5a8d8c90deb23-Doc1.docx', 5, NULL, 'project', 32, '', 0, 0),
(403, '2018-02-22 07:10:57', 1, 'created', 'customer_feedback', 'aa', 25, NULL, 'project', 2, 'customer_feedback', 2, 0),
(404, '2018-02-22 07:10:58', 1, 'created', 'customer_feedback', 'aa', 26, NULL, 'project', 2, 'customer_feedback', 2, 0),
(405, '2018-02-26 08:46:25', 1, 'created', 'project_file', '_file5a93c9611937c-Rancangan-Proposal-SIAKADnesia.pptx', 6, NULL, 'project', 32, '', 0, 0),
(406, '2018-02-26 14:56:54', 2, 'created', 'project_file', '_file5a94202fd7607-Rancangan-Proposal-SIAKADnesia.pptx', 7, NULL, 'project', 32, '', 0, 0),
(407, '2018-02-26 15:36:56', 2, 'deleted', 'project_file', '_file5a94202fd7607-Rancangan-Proposal-SIAKADnesia.pptx', 7, NULL, 'project', 32, NULL, NULL, 0),
(408, '2018-02-26 15:37:35', 2, 'created', 'project_file', '_file5a9429bf9a3df-Rancangan-Proposal-SIAKADnesia.pdf', 8, NULL, 'project', 32, '', 0, 0),
(409, '2018-02-26 15:37:36', 2, 'created', 'project_file', '_file5a9429bfd6cf5-Rancangan-Proposal-SIAKADnesia.pptx', 9, NULL, 'project', 32, '', 0, 0),
(410, '2018-03-05 15:09:59', 1, 'deleted', 'project_file', '_file5a8d8c90deb23-Doc1.docx', 5, NULL, 'project', 32, NULL, NULL, 0),
(411, '2018-03-05 15:10:06', 1, 'deleted', 'project_file', '_file5a93c9611937c-Rancangan-Proposal-SIAKADnesia.pptx', 6, NULL, 'project', 32, NULL, NULL, 0),
(412, '2018-03-05 15:10:47', 1, 'deleted', 'project_file', '_file5a9429bf9a3df-Rancangan-Proposal-SIAKADnesia.pdf', 8, NULL, 'project', 32, NULL, NULL, 0),
(413, '2018-03-05 15:10:54', 1, 'deleted', 'project_file', '_file5a9429bfd6cf5-Rancangan-Proposal-SIAKADnesia.pptx', 9, NULL, 'project', 32, NULL, NULL, 0),
(414, '2018-03-05 15:12:25', 1, 'created', 'project_file', '_file5a9d5e55b10aa-Proposal-SIAKADnesia.pdf', 10, NULL, 'project', 32, '', 0, 0),
(415, '2018-03-05 15:13:58', 1, 'created', 'project_comment', 'Ini username sama password database siakad\nUsername : root \npasswrd : k1kic4k', 27, NULL, 'project', 32, '', 0, 0),
(416, '2018-03-05 15:26:12', 1, 'created', 'project_file', '_file5a9d619492217-list-portal-dan-lembar-kerja-dosen.pdf', 11, NULL, 'project', 32, '', 0, 0),
(417, '2018-03-05 15:26:12', 1, 'created', 'project_file', '_file5a9d6194b41dd-PMB-bidik-misi.pdf', 12, NULL, 'project', 32, '', 0, 0),
(418, '2018-03-05 15:26:12', 1, 'created', 'project_file', '_file5a9d6194d0a5e-PMB-penjaringan-siswa-berprestasi--PSB-.pdf', 13, NULL, 'project', 32, '', 0, 0),
(419, '2018-03-05 15:26:13', 1, 'created', 'project_file', '_file5a9d61950ddb8-PMB-UJIAN-MASUK-MANDIRI.pdf', 14, NULL, 'project', 32, '', 0, 0),
(420, '2018-03-05 15:26:41', 1, 'created', 'milestone', 'LKD ONLINE', 11, NULL, 'project', 32, '', 0, 0),
(421, '2018-03-05 15:58:55', 1, 'created', 'task', 'Design UI/UX', 100, NULL, 'project', 32, '', 0, 0),
(422, '2018-03-05 16:00:58', 1, 'created', 'milestone', 'Requirement Gathering', 12, NULL, 'project', 32, '', 0, 0),
(423, '2018-03-05 16:02:27', 23, 'created', 'task', 'Desain Database', 101, NULL, 'project', 32, '', 0, 0),
(424, '2018-03-05 16:05:57', 1, 'created', 'milestone', 'Perencanaan Konsep', 13, NULL, 'project', 32, '', 0, 0),
(425, '2018-03-05 16:06:14', 1, 'updated', 'milestone', 'Requirement Gathering', 12, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-03-05\";s:2:\"to\";s:10:\"2018-03-03\";}}', 'project', 32, '', 0, 0),
(426, '2018-03-05 16:08:17', 1, 'updated', 'task', 'Desain Database', 101, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"8\";s:2:\"to\";s:0:\"\";}}', 'project', 32, '', 0, 0),
(427, '2018-03-05 16:09:02', 1, 'updated', 'task', 'Desain Database', 101, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(428, '2018-03-05 16:09:09', 1, 'updated', 'task', 'Desain Database', 101, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(429, '2018-03-05 16:09:12', 1, 'updated', 'task', 'Desain Database', 101, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(430, '2018-03-05 16:11:47', 23, 'updated', 'task', 'Desain Database', 101, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"Desain Database\";s:2:\"to\";s:19:\"Desain Database LKD\";}}', 'project', 32, '', 0, 0),
(431, '2018-03-05 16:49:40', 1, 'created', 'task', 'Input Data LKD', 102, NULL, 'project', 32, '', 0, 0),
(432, '2018-03-05 16:53:18', 1, 'updated', 'task', 'Input Data LKD', 102, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"11\";}}', 'project', 32, '', 0, 0),
(433, '2018-03-05 16:56:09', 23, 'created', 'task', 'Delete Data LKD', 103, NULL, 'project', 32, '', 0, 0),
(434, '2018-03-05 16:56:53', 23, 'updated', 'task', 'Delete Data LKD', 103, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-03-11\";s:2:\"to\";s:10:\"2018-03-10\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-03-13\";s:2:\"to\";s:10:\"2018-03-12\";}}', 'project', 32, '', 0, 0),
(435, '2018-03-05 17:01:42', 23, 'created', 'task', 'List Data LKD', 104, NULL, 'project', 32, '', 0, 0),
(436, '2018-03-05 17:02:14', 23, 'updated', 'task', 'Delete Data LKD', 103, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-03-12\";s:2:\"to\";s:10:\"2018-03-11\";}}', 'project', 32, '', 0, 0),
(437, '2018-03-05 17:02:33', 23, 'updated', 'task', 'List Data LKD', 104, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-03-13\";s:2:\"to\";s:10:\"2018-03-12\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-03-15\";s:2:\"to\";s:10:\"2018-03-13\";}}', 'project', 32, '', 0, 0),
(438, '2018-03-05 17:04:29', 23, 'created', 'task', 'Export Data LKD', 105, NULL, 'project', 32, '', 0, 0),
(439, '2018-03-05 17:05:42', 23, 'created', 'task', 'Save Data LKD', 106, NULL, 'project', 32, '', 0, 0),
(440, '2018-03-05 17:09:15', 23, 'created', 'task', 'Online Signature', 107, NULL, 'project', 32, '', 0, 0),
(441, '2018-03-05 17:09:59', 23, 'created', 'task', 'View LKD ', 108, NULL, 'project', 32, '', 0, 0),
(442, '2018-03-05 17:11:42', 23, 'updated', 'task', 'Design UI/UX', 100, 'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:5:\"8 jam\";s:2:\"to\";s:6:\"10 jam\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-03-06\";s:2:\"to\";s:10:\"2018-03-07\";}}', 'project', 32, '', 0, 0),
(443, '2018-03-05 17:28:06', 1, 'created', 'project_file', '_file5a9d7e2623daf-SIAKAD-4nesia-Three-Point-Estimation--1-.xlsx', 15, NULL, 'project', 32, '', 0, 0),
(444, '2018-03-05 17:28:25', 1, 'created', 'project_file', '_file5a9d7e396703d-LKD-UIN-ANTASARI-project-charter.docx', 16, NULL, 'project', 32, '', 0, 0),
(445, '2018-03-05 17:31:58', 1, 'created', 'customer_feedback', 'Draft Project Charter ', 28, NULL, 'project', 32, 'customer_feedback', 32, 0),
(446, '2018-03-05 17:38:46', 23, 'created', 'task', 'Platform Website', 109, NULL, 'project', 32, '', 0, 0),
(447, '2018-03-05 17:40:21', 23, 'created', 'milestone', 'PMB', 14, NULL, 'project', 32, '', 0, 0),
(448, '2018-03-05 17:40:35', 23, 'updated', 'task', 'Platform Website', 109, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"14\";}}', 'project', 32, '', 0, 0),
(449, '2018-03-05 17:41:38', 23, 'created', 'task', 'Penentuan Nama Domain & Hosting', 110, NULL, 'project', 32, '', 0, 0),
(450, '2018-03-05 17:42:53', 23, 'created', 'task', 'Konfigurasi DNS dan Server', 111, NULL, 'project', 32, '', 0, 0),
(451, '2018-03-05 17:44:08', 23, 'created', 'task', 'Instalasi Website', 112, NULL, 'project', 32, '', 0, 0),
(452, '2018-03-05 17:44:51', 23, 'updated', 'task', 'Penentuan Nama Domain & Hosting', 110, 'a:2:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:2:\"16\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(453, '2018-03-05 17:45:56', 23, 'created', 'task', 'Optimasi Website', 113, NULL, 'project', 32, '', 0, 0),
(454, '2018-03-05 17:47:11', 23, 'created', 'task', 'Desain Database Website', 114, NULL, 'project', 32, '', 0, 0),
(455, '2018-03-05 17:47:39', 23, 'updated', 'task', 'Desain Database Website', 114, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-03-31\";s:2:\"to\";s:10:\"2018-04-01\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-04-01\";s:2:\"to\";s:10:\"2018-04-02\";}}', 'project', 32, '', 0, 0),
(456, '2018-03-05 17:48:33', 23, 'created', 'task', 'Desain UI/UX Website', 115, NULL, 'project', 32, '', 0, 0),
(457, '2018-03-05 17:49:27', 23, 'created', 'task', 'Login Page', 116, NULL, 'project', 32, '', 0, 0),
(458, '2018-03-05 17:51:58', 23, 'created', 'task', 'Form Registrasi Mahasiswa Baru', 117, NULL, 'project', 32, '', 0, 0),
(459, '2018-03-05 17:53:19', 23, 'created', 'task', 'Form dan File Registrasi Mahasiswa  Baru', 118, NULL, 'project', 32, '', 0, 0),
(460, '2018-03-05 17:54:33', 23, 'created', 'task', 'Create Notification ', 119, NULL, 'project', 32, '', 0, 0),
(461, '2018-03-05 17:55:20', 23, 'created', 'task', 'View Notification', 120, NULL, 'project', 32, '', 0, 0),
(462, '2018-03-05 17:56:36', 23, 'created', 'task', 'Desain Database PMB', 121, NULL, 'project', 32, '', 0, 0),
(463, '2018-03-05 17:59:02', 1, 'updated', 'task', 'Design UI/UX', 100, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(464, '2018-03-05 17:59:08', 1, 'updated', 'task', 'Input Data LKD', 102, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(465, '2018-03-05 18:19:48', 23, 'updated', 'task', 'Desain Database PMB', 121, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-04-15\";s:2:\"to\";s:10:\"2018-04-05\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-04-16\";s:2:\"to\";s:10:\"2018-04-06\";}}', 'project', 32, '', 0, 0),
(466, '2018-03-05 18:20:43', 23, 'deleted', 'task', 'Form Registrasi Mahasiswa Baru', 117, NULL, 'project', 32, NULL, NULL, 0),
(467, '2018-03-05 18:21:06', 23, 'deleted', 'task', 'Form dan File Registrasi Mahasiswa  Baru', 118, NULL, 'project', 32, NULL, NULL, 0),
(468, '2018-03-05 18:21:13', 23, 'deleted', 'task', 'View Notification', 120, NULL, 'project', 32, NULL, NULL, 0),
(469, '2018-03-05 18:21:23', 23, 'deleted', 'task', 'Create Notification ', 119, NULL, 'project', 32, NULL, NULL, 0),
(470, '2018-03-05 18:21:37', 23, 'deleted', 'task', 'Login Page', 116, NULL, 'project', 32, NULL, NULL, 0),
(471, '2018-03-05 18:22:59', 23, 'created', 'task', 'Perancangan UI/UX PMB', 122, NULL, 'project', 32, '', 0, 0),
(472, '2018-03-05 18:24:03', 23, 'created', 'task', 'Login Page', 123, NULL, 'project', 32, '', 0, 0),
(473, '2018-03-05 18:25:55', 23, 'created', 'task', 'Form Registrasi Mahasiswa Baru', 124, NULL, 'project', 32, '', 0, 0),
(474, '2018-03-05 18:27:19', 23, 'created', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, NULL, 'project', 32, '', 0, 0),
(475, '2018-03-05 18:27:43', 23, 'updated', 'task', 'Form Registrasi Mahasiswa Baru', 124, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:6:\"8 Jam \";s:2:\"to\";s:6:\"6 Jam \";}}', 'project', 32, '', 0, 0),
(476, '2018-03-05 18:28:30', 23, 'created', 'task', 'Create Notification ', 126, NULL, 'project', 32, '', 0, 0),
(477, '2018-03-05 18:29:36', 23, 'created', 'task', 'View Notification ', 127, NULL, 'project', 32, '', 0, 0),
(478, '2018-03-05 18:31:35', 23, 'updated', 'milestone', 'PMB', 14, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-04-11\";s:2:\"to\";s:10:\"2018-04-19\";}}', 'project', 32, '', 0, 0),
(479, '2018-03-05 18:43:24', 1, 'created', 'project_comment', 'https://siakad.4nesia.com/\n\nAkses Mahasiswa : \nusername : mhs\npassword : mhs\n\n\nAkses Dosen : \nusername : dosen\npassword : dosen\n*baru input LKD saja\n\nAkses Super Admin : \nusername : admin\npassword : admin\n*Master Pusat\n*Civitas\n*PMB Konfigurasi\n', 29, NULL, 'project', 32, '', 0, 0),
(480, '2018-03-05 19:09:47', 23, 'created', 'project_file', '_file5a9d95fac298f-SIAKAD-4nesia-Three-Point-Estimation.xlsx', 17, NULL, 'project', 32, '', 0, 0),
(481, '2018-03-14 13:56:42', 1, 'created', 'task', 'UI/UX LKD Dosen', 128, NULL, 'project', 32, '', 0, 0),
(482, '2018-03-14 13:57:29', 1, 'created', 'task', 'UI/UX LKD Dekan', 129, NULL, 'project', 32, '', 0, 0),
(483, '2018-03-14 13:58:02', 1, 'created', 'task', 'UI/UX LKD Rektor', 130, NULL, 'project', 32, '', 0, 0),
(484, '2018-03-14 14:00:27', 1, 'created', 'task', 'LKD Dosen', 131, NULL, 'project', 32, '', 0, 0),
(485, '2018-03-14 14:01:06', 1, 'created', 'task', 'LKD Dekan', 132, NULL, 'project', 32, '', 0, 0),
(486, '2018-03-14 14:06:09', 1, 'created', 'task', 'LKD Rektor', 133, NULL, 'project', 32, '', 0, 0),
(487, '2018-03-14 14:06:34', 1, 'updated', 'task', 'LKD Rektor', 133, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"11\";}}', 'project', 32, '', 0, 0),
(488, '2018-03-14 14:06:56', 1, 'updated', 'task', 'LKD Dekan', 132, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"11\";}}', 'project', 32, '', 0, 0),
(489, '2018-03-14 14:07:11', 1, 'updated', 'task', 'LKD Dosen', 131, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"11\";}}', 'project', 32, '', 0, 0),
(490, '2018-03-14 14:07:48', 1, 'updated', 'task', 'UI/UX LKD Rektor', 130, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"11\";}}', 'project', 32, '', 0, 0),
(491, '2018-03-14 14:07:58', 1, 'updated', 'task', 'UI/UX LKD Dekan', 129, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"11\";}}', 'project', 32, '', 0, 0),
(492, '2018-03-14 14:08:11', 1, 'updated', 'task', 'UI/UX LKD Dosen', 128, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"11\";}}', 'project', 32, '', 0, 0),
(493, '2018-03-18 13:20:36', 23, 'updated', 'milestone', 'PMB', 14, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-04-19\";s:2:\"to\";s:10:\"2018-03-29\";}}', 'project', 32, '', 0, 0),
(494, '2018-03-18 13:20:50', 23, 'updated', 'milestone', 'LKD ONLINE', 11, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-04-05\";s:2:\"to\";s:10:\"2018-03-19\";}}', 'project', 32, '', 0, 0),
(495, '2018-03-18 13:22:53', 23, 'created', 'milestone', 'SIAKAD : MASTER DATA', 15, NULL, 'project', 32, '', 0, 0),
(496, '2018-03-22 15:43:14', 8, 'updated', 'task', 'Delete Data LKD', 103, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(497, '2018-03-22 15:43:15', 8, 'updated', 'task', 'List Data LKD', 104, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(498, '2018-03-22 15:43:23', 8, 'updated', 'task', 'Export Data LKD', 105, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(499, '2018-03-22 15:43:28', 8, 'updated', 'task', 'Save Data LKD', 106, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(500, '2018-03-22 15:43:30', 8, 'updated', 'task', 'Online Signature', 107, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(501, '2018-03-22 15:43:32', 8, 'updated', 'task', 'View LKD ', 108, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(502, '2018-03-22 15:43:34', 8, 'updated', 'task', 'Platform Website', 109, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(503, '2018-03-22 15:43:36', 8, 'updated', 'task', 'Penentuan Nama Domain & Hosting', 110, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(504, '2018-03-22 15:43:38', 8, 'updated', 'task', 'Konfigurasi DNS dan Server', 111, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(505, '2018-03-22 15:43:41', 8, 'updated', 'task', 'Perancangan UI/UX PMB', 122, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(506, '2018-03-22 15:43:45', 8, 'updated', 'task', 'Instalasi Website', 112, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(507, '2018-03-22 15:43:47', 8, 'updated', 'task', 'Desain Database Website', 114, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(508, '2018-03-22 15:43:49', 8, 'updated', 'task', 'Optimasi Website', 113, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(509, '2018-03-22 15:43:50', 8, 'updated', 'task', 'Desain UI/UX Website', 115, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(510, '2018-03-22 15:43:51', 8, 'updated', 'task', 'Desain Database PMB', 121, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(511, '2018-03-22 15:43:52', 8, 'updated', 'task', 'Login Page', 123, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(512, '2018-03-22 15:43:53', 8, 'updated', 'task', 'Form Registrasi Mahasiswa Baru', 124, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(513, '2018-03-22 15:43:54', 8, 'updated', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}}', 'project', 32, '', 0, 0),
(514, '2018-03-22 15:43:56', 8, 'updated', 'task', 'Create Notification ', 126, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(515, '2018-03-22 15:43:57', 8, 'updated', 'task', 'View Notification ', 127, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(516, '2018-03-22 15:43:58', 8, 'updated', 'task', 'UI/UX LKD Dosen', 128, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(517, '2018-03-22 15:44:11', 8, 'updated', 'task', 'UI/UX LKD Rektor', 130, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(518, '2018-03-22 15:44:11', 8, 'updated', 'task', 'LKD Dosen', 131, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(519, '2018-03-22 15:44:12', 8, 'updated', 'task', 'UI/UX LKD Dekan', 129, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(520, '2018-03-22 15:44:12', 8, 'updated', 'task', 'LKD Rektor', 133, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(521, '2018-03-22 15:44:13', 8, 'updated', 'task', 'Desain Database LKD', 101, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9998500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(522, '2018-03-22 15:44:14', 8, 'updated', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9998000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(523, '2018-03-22 15:44:15', 8, 'updated', 'task', 'Input Data LKD', 102, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(524, '2018-03-22 15:44:18', 8, 'updated', 'task', 'Save Data LKD', 106, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(525, '2018-03-22 15:44:21', 8, 'updated', 'task', 'LKD Dekan', 132, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(526, '2018-03-22 15:44:22', 8, 'updated', 'task', 'Delete Data LKD', 103, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(527, '2018-03-22 15:44:25', 8, 'updated', 'task', 'Online Signature', 107, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(528, '2018-03-22 15:44:26', 8, 'updated', 'task', 'View LKD ', 108, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(529, '2018-03-22 15:44:28', 8, 'updated', 'task', 'Export Data LKD', 105, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(530, '2018-03-22 15:44:31', 8, 'updated', 'task', 'Penentuan Nama Domain & Hosting', 110, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(531, '2018-03-22 15:44:49', 8, 'updated', 'task', 'LKD Dekan', 132, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(532, '2018-03-22 15:44:50', 8, 'updated', 'task', 'LKD Rektor', 133, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(533, '2018-03-22 15:44:53', 8, 'updated', 'task', 'Desain Database LKD', 101, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9998500\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(534, '2018-03-22 15:44:55', 8, 'updated', 'task', 'Design UI/UX', 100, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(535, '2018-03-22 15:45:00', 8, 'updated', 'task', 'UI/UX LKD Rektor', 130, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(536, '2018-03-22 15:45:02', 8, 'updated', 'task', 'UI/UX LKD Dekan', 129, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(537, '2018-03-22 15:45:05', 8, 'updated', 'task', 'UI/UX LKD Dosen', 128, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(538, '2018-03-22 15:45:07', 8, 'updated', 'task', 'LKD Dosen', 131, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0);
INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(539, '2018-03-22 15:45:19', 8, 'updated', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9998000\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(540, '2018-03-22 15:45:43', 8, 'updated', 'task', 'Form Registrasi Mahasiswa Baru', 124, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(541, '2018-03-22 15:45:59', 8, 'updated', 'task', 'List Data LKD', 104, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(542, '2018-03-22 15:46:08', 8, 'updated', 'task', 'Desain Database Website', 114, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(543, '2018-03-22 15:46:12', 8, 'updated', 'task', 'Desain Database Website', 114, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(544, '2018-03-30 10:38:05', 1, 'updated', 'task', 'Instalasi Website', 112, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(545, '2018-04-03 06:04:28', 23, 'created', 'project_file', '_file5ac3196c6f81b-RAB.docx', 18, NULL, 'project', 33, '', 0, 0),
(546, '2018-04-03 06:04:28', 23, 'created', 'project_file', '_file5ac3196cbbd07-Template-panggilan-interview.docx', 19, NULL, 'project', 33, '', 0, 0),
(547, '2018-04-07 14:29:25', 23, 'created', 'project_file', '_file5ac8d5c34a26e-PAKTA-INTERGITAS--KP-.docx', 20, NULL, 'project', 33, '', 0, 0),
(548, '2018-04-21 04:21:26', 1, 'updated', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(549, '2018-04-21 04:21:28', 1, 'updated', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(550, '2018-04-21 13:39:59', 2, 'created', 'project_file', '_file5adb3f2eacd61-Prioritas-Modul-Sistem-Informasi-UIN-Antasari.docx', 21, NULL, 'project', 32, '', 0, 0),
(551, '2018-04-28 14:56:44', 1, 'created', 'project_comment', 'Hasil Rapat Mingguan 28/04/2018\n\n1.Internship Program:\n* Firts Meet (BCH atau Makrab)\n* Wawancara Peserta tambahan (Fakhry & Zayeed)\n* Baju Intern 2018 \n\n2.Status Project UIN Antasari\n3. Follow up UNISMUH PALU\n4. Peningkatan Kinerja Personel 4nesia sesuai fashion/jobdesk\n\ntambahan : \n130k beli template SOP IT\n150k 1 bulan Langganan Jurnal (laporan akun)\nLaporan 1 tahun pph done\n\n\n', 30, NULL, 'project', 35, '', 0, 0),
(552, '2018-04-28 15:03:10', 1, 'created', 'project_comment_reply', 'Foto', 31, NULL, 'project', 35, '', 0, 0),
(553, '2018-04-28 15:42:13', 1, 'created', 'project_comment', 'LAPOR Minggu ini yang dikerjakan 28/04/2018\n\n1.template SOP 4nesia\n2.Lapor pajak bulanan dan tahunan 4nesia\n3. clean reset hosting 4nesia\n4. Laporan akun untuk pajak', 32, NULL, 'project', 34, '', 0, 0),
(554, '2018-05-02 13:41:23', 1, 'updated', 'task', 'Form Registrasi Mahasiswa Baru', 124, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9998500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(555, '2018-05-02 13:41:26', 1, 'updated', 'task', 'Platform Website', 109, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9998000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(556, '2018-05-02 13:41:27', 1, 'updated', 'task', 'Konfigurasi DNS dan Server', 111, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9997500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(557, '2018-05-05 14:35:07', 1, 'created', 'project_comment', 'Hasil Rapat 05/05/2018\n\nPeserta : \nBaso\nRidwan\nAmar\nArian\nDian\nHendri\nHansa\nFikri\n\n\nKP :\nHendri urus tempat meeting BCH\nBaju KP \n\nProject UIN:\nGaji\n\nInternal :\nPeningkatan Kinerja dan perusahaan\n', 33, NULL, 'project', 35, '', 0, 0),
(558, '2018-05-08 04:35:20', 46, 'created', 'customer_feedback', 'Halo Mas Andi,\ntadi baru rapat mengenai host to host,\n\nmereka minta yang didahulukan mengenai pembayaran ukt dan krs mahasiswa\n\nsaya sertakan screenshoot pembicaraan dari bank BRI untuk mengkoneksikan servernya ke aplikasi ukt.\nlink UKT dan pasword sudah saya sertakan di gambar, mohon di lihat.\n\nTerimakasih', 34, NULL, 'project', 32, 'customer_feedback', 32, 0),
(559, '2018-05-08 12:54:36', 1, 'created', 'customer_feedback_reply', 'siap mas, langsung di follwup', 35, NULL, 'project', 32, 'customer_feedback', 32, 0),
(560, '2018-05-08 13:09:27', 23, 'updated', 'milestone', 'SIAKAD : MASTER DATA', 15, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-01\";s:2:\"to\";s:10:\"2018-05-19\";}}', 'project', 32, '', 0, 0),
(561, '2018-05-08 13:11:32', 23, 'created', 'milestone', 'SIAKAD : TUGAS AKHIR', 16, NULL, 'project', 32, '', 0, 0),
(562, '2018-05-08 13:11:50', 23, 'updated', 'milestone', 'SIAKAD : TUGAS AKHIR', 16, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-02\";s:2:\"to\";s:10:\"2018-06-04\";}}', 'project', 32, '', 0, 0),
(563, '2018-05-08 13:13:36', 23, 'deleted', 'milestone', 'PMB', 14, NULL, 'project', 32, NULL, NULL, 0),
(564, '2018-05-08 13:14:21', 23, 'created', 'milestone', 'SIAKAD : PROFIL', 17, NULL, 'project', 32, '', 0, 0),
(565, '2018-05-08 13:15:28', 23, 'created', 'milestone', 'SIAKAD : BEASISWA', 18, NULL, 'project', 32, '', 0, 0),
(566, '2018-05-08 13:19:08', 23, 'created', 'milestone', 'SIAKAD : WISUDA', 19, NULL, 'project', 32, '', 0, 0),
(567, '2018-05-08 13:20:13', 23, 'created', 'milestone', 'SIAKAD : KRS', 20, NULL, 'project', 32, '', 0, 0),
(568, '2018-05-08 13:21:07', 23, 'created', 'milestone', 'SIAKAD : KHS', 21, NULL, 'project', 32, '', 0, 0),
(569, '2018-05-08 13:27:33', 23, 'created', 'milestone', 'SIAKAD : JADWAL PERKULIAHAN', 22, NULL, 'project', 32, '', 0, 0),
(570, '2018-05-08 13:35:06', 23, 'created', 'milestone', 'SIAKAD : PRESENSI', 23, NULL, 'project', 32, '', 0, 0),
(571, '2018-05-08 13:37:37', 23, 'created', 'milestone', 'SIAKAD : PERMOHONAN CUTI', 24, NULL, 'project', 32, '', 0, 0),
(572, '2018-05-08 13:38:06', 23, 'created', 'milestone', 'SIAKAD : FEEDER DIKTI', 25, NULL, 'project', 32, '', 0, 0),
(573, '2018-05-08 13:38:52', 23, 'created', 'milestone', 'SIAKAD : KEUANGAN', 26, NULL, 'project', 32, '', 0, 0),
(574, '2018-05-08 13:39:32', 23, 'created', 'milestone', 'WEBSITE INFORMASI', 27, NULL, 'project', 32, '', 0, 0),
(575, '2018-05-08 13:43:40', 23, 'created', 'milestone', 'TESTING APLIKASI', 28, NULL, 'project', 32, '', 0, 0),
(576, '2018-05-08 13:43:57', 23, 'created', 'milestone', 'IMPLEMENTASI & DOKUMENTASI', 29, NULL, 'project', 32, '', 0, 0),
(577, '2018-05-08 13:47:10', 23, 'updated', 'milestone', 'SIAKAD : MASTER DATA', 15, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-19\";s:2:\"to\";s:10:\"2018-04-02\";}}', 'project', 32, '', 0, 0),
(578, '2018-05-08 13:48:32', 23, 'updated', 'milestone', 'SIAKAD : MASTER DATA', 15, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-04-02\";s:2:\"to\";s:10:\"2018-05-19\";}}', 'project', 32, '', 0, 0),
(579, '2018-05-08 13:49:02', 23, 'updated', 'milestone', 'SIAKAD : MASTER DATA', 15, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-19\";s:2:\"to\";s:10:\"2018-05-14\";}}', 'project', 32, '', 0, 0),
(580, '2018-05-08 13:49:39', 23, 'updated', 'milestone', 'SIAKAD : TUGAS AKHIR', 16, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-04\";s:2:\"to\";s:10:\"2018-05-21\";}}', 'project', 32, '', 0, 0),
(581, '2018-05-08 13:50:11', 23, 'updated', 'milestone', 'SIAKAD : PROFIL', 17, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-18\";s:2:\"to\";s:10:\"2018-05-28\";}}', 'project', 32, '', 0, 0),
(582, '2018-05-08 13:51:43', 23, 'updated', 'milestone', 'SIAKAD : BEASISWA', 18, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-25\";s:2:\"to\";s:10:\"2018-06-04\";}}', 'project', 32, '', 0, 0),
(583, '2018-05-08 13:52:09', 23, 'updated', 'milestone', 'SIAKAD : WISUDA', 19, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-02\";s:2:\"to\";s:10:\"2018-06-18\";}}', 'project', 32, '', 0, 0),
(584, '2018-05-08 13:53:08', 23, 'updated', 'milestone', 'SIAKAD : KRS', 20, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-23\";s:2:\"to\";s:10:\"2018-07-09\";}}', 'project', 32, '', 0, 0),
(585, '2018-05-08 13:53:34', 23, 'updated', 'milestone', 'SIAKAD : KHS', 21, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-08-06\";s:2:\"to\";s:10:\"2018-07-23\";}}', 'project', 32, '', 0, 0),
(586, '2018-05-08 13:54:10', 23, 'updated', 'milestone', 'SIAKAD : JADWAL PERKULIAHAN', 22, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-09-03\";s:2:\"to\";s:10:\"2018-08-13\";}}', 'project', 32, '', 0, 0),
(587, '2018-05-08 13:54:30', 23, 'updated', 'milestone', 'SIAKAD : PRESENSI', 23, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-09-17\";s:2:\"to\";s:10:\"2018-08-27\";}}', 'project', 32, '', 0, 0),
(588, '2018-05-08 13:54:50', 23, 'updated', 'milestone', 'SIAKAD : PERMOHONAN CUTI', 24, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-10-01\";s:2:\"to\";s:10:\"2018-09-10\";}}', 'project', 32, '', 0, 0),
(589, '2018-05-08 13:55:30', 23, 'updated', 'milestone', 'SIAKAD : FEEDER DIKTI', 25, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-10-22\";s:2:\"to\";s:10:\"2018-10-01\";}}', 'project', 32, '', 0, 0),
(590, '2018-05-08 13:59:00', 23, 'updated', 'milestone', 'SIAKAD : KEUANGAN', 26, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-11-12\";s:2:\"to\";s:10:\"2018-10-22\";}}', 'project', 32, '', 0, 0),
(591, '2018-05-08 13:59:18', 23, 'updated', 'milestone', 'WEBSITE INFORMASI', 27, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-12-10\";s:2:\"to\";s:10:\"2018-11-12\";}}', 'project', 32, '', 0, 0),
(592, '2018-05-08 13:59:30', 23, 'updated', 'milestone', 'TESTING APLIKASI', 28, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-12-17\";s:2:\"to\";s:10:\"2018-11-19\";}}', 'project', 32, '', 0, 0),
(593, '2018-05-08 13:59:45', 23, 'updated', 'milestone', 'IMPLEMENTASI & DOKUMENTASI', 29, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-12-31\";s:2:\"to\";s:10:\"2018-12-03\";}}', 'project', 32, '', 0, 0),
(594, '2018-05-08 14:04:17', 23, 'updated', 'milestone', 'SIAKAD : TUGAS AKHIR', 16, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-21\";s:2:\"to\";s:10:\"2018-05-26\";}}', 'project', 32, '', 0, 0),
(595, '2018-05-08 14:05:34', 23, 'updated', 'milestone', 'SIAKAD : PROFIL', 17, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-28\";s:2:\"to\";s:10:\"2018-06-02\";}}', 'project', 32, '', 0, 0),
(596, '2018-05-08 14:06:38', 23, 'updated', 'milestone', 'SIAKAD : BEASISWA', 18, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-04\";s:2:\"to\";s:10:\"2018-06-11\";}}', 'project', 32, '', 0, 0),
(597, '2018-05-08 14:08:42', 23, 'updated', 'milestone', 'SIAKAD : KRS', 20, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-09\";s:2:\"to\";s:10:\"2018-07-11\";}}', 'project', 32, '', 0, 0),
(598, '2018-05-08 14:08:59', 23, 'updated', 'milestone', 'SIAKAD : KRS', 20, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-11\";s:2:\"to\";s:10:\"2018-07-23\";}}', 'project', 32, '', 0, 0),
(599, '2018-05-08 14:09:29', 23, 'updated', 'milestone', 'SIAKAD : KHS', 21, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-23\";s:2:\"to\";s:10:\"2018-08-04\";}}', 'project', 32, '', 0, 0),
(600, '2018-05-08 14:10:21', 23, 'updated', 'milestone', 'SIAKAD : JADWAL PERKULIAHAN', 22, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-08-13\";s:2:\"to\";s:10:\"2018-08-15\";}}', 'project', 32, '', 0, 0),
(601, '2018-05-08 14:10:54', 23, 'updated', 'milestone', 'SIAKAD : PRESENSI', 23, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-08-27\";s:2:\"to\";s:10:\"2018-08-25\";}}', 'project', 32, '', 0, 0),
(602, '2018-05-08 14:11:32', 23, 'updated', 'milestone', 'SIAKAD : PERMOHONAN CUTI', 24, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-09-10\";s:2:\"to\";s:10:\"2018-09-02\";}}', 'project', 32, '', 0, 0),
(603, '2018-05-08 14:12:04', 23, 'updated', 'milestone', 'SIAKAD : FEEDER DIKTI', 25, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-10-01\";s:2:\"to\";s:10:\"2018-09-10\";}}', 'project', 32, '', 0, 0),
(604, '2018-05-08 14:12:38', 23, 'updated', 'milestone', 'SIAKAD : KEUANGAN', 26, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-10-22\";s:2:\"to\";s:10:\"2018-09-25\";}}', 'project', 32, '', 0, 0),
(605, '2018-05-08 14:13:14', 23, 'updated', 'milestone', 'WEBSITE INFORMASI', 27, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-11-12\";s:2:\"to\";s:10:\"2018-09-30\";}}', 'project', 32, '', 0, 0),
(606, '2018-05-08 14:13:35', 23, 'updated', 'milestone', 'TESTING APLIKASI', 28, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-11-19\";s:2:\"to\";s:10:\"2018-09-01\";}}', 'project', 32, '', 0, 0),
(607, '2018-05-08 14:14:08', 23, 'updated', 'milestone', 'TESTING APLIKASI', 28, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-09-01\";s:2:\"to\";s:10:\"2018-10-01\";}}', 'project', 32, '', 0, 0),
(608, '2018-05-08 14:14:34', 23, 'updated', 'milestone', 'IMPLEMENTASI & DOKUMENTASI', 29, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-12-03\";s:2:\"to\";s:10:\"2018-10-06\";}}', 'project', 32, '', 0, 0),
(609, '2018-05-08 14:19:53', 23, 'created', 'task', 'Master Pusat Perguruan Tinggi', 134, NULL, 'project', 32, '', 0, 0),
(610, '2018-05-08 14:21:07', 23, 'created', 'task', 'Data Gedung & Ruangan `', 135, NULL, 'project', 32, '', 0, 0),
(611, '2018-05-08 14:21:48', 23, 'created', 'task', 'Data Fakultas', 136, NULL, 'project', 32, '', 0, 0),
(612, '2018-05-08 14:22:08', 23, 'updated', 'task', 'Master Pusat Perguruan Tinggi', 134, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(613, '2018-05-08 14:25:58', 23, 'created', 'task', 'Data Prodi ', 137, NULL, 'project', 32, '', 0, 0),
(614, '2018-05-08 14:28:11', 23, 'updated', 'task', 'Data Prodi ', 137, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(615, '2018-05-08 14:28:15', 23, 'updated', 'task', 'Data Fakultas', 136, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(616, '2018-05-08 14:28:17', 23, 'updated', 'task', 'Master Pusat Perguruan Tinggi', 134, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(617, '2018-05-08 14:32:25', 23, 'updated', 'task', 'Master Pusat Perguruan Tinggi', 134, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(618, '2018-05-08 14:34:44', 23, 'updated', 'task', 'Master Pusat Perguruan Tinggi', 134, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(619, '2018-05-08 14:34:59', 23, 'updated', 'task', 'Data Fakultas', 136, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10100000\";}}', 'project', 32, '', 0, 0),
(620, '2018-05-08 14:35:20', 23, 'updated', 'task', 'Data Prodi ', 137, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10200000\";}}', 'project', 32, '', 0, 0),
(621, '2018-05-08 14:35:24', 23, 'updated', 'task', 'Data Gedung & Ruangan `', 135, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(622, '2018-05-08 14:36:46', 23, 'created', 'task', 'Data Pimpinan', 138, NULL, 'project', 32, '', 0, 0),
(623, '2018-05-08 14:37:12', 23, 'updated', 'task', 'Data Pimpinan', 138, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:56:\"1. Tambah Data Prodi\n2. Kelola Data Profil (Save, Edit)\n\";s:2:\"to\";s:64:\"1. Tambah Data Prodi\n2. Kelola Data Profil (Save, Edit, Delete)\n\";}}', 'project', 32, '', 0, 0),
(624, '2018-05-08 14:38:13', 23, 'created', 'task', 'Data Matakuliah', 139, NULL, 'project', 32, '', 0, 0),
(625, '2018-05-08 14:39:16', 23, 'created', 'task', 'Data Tahun Ajaran', 140, NULL, 'project', 32, '', 0, 0),
(626, '2018-05-08 14:39:36', 23, 'updated', 'task', 'Data Matakuliah', 139, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"15\";}}', 'project', 32, '', 0, 0),
(627, '2018-05-08 14:40:23', 23, 'created', 'task', 'Data Kelas', 141, NULL, 'project', 32, '', 0, 0),
(628, '2018-05-08 14:40:53', 23, 'updated', 'task', 'List Data LKD', 104, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(629, '2018-05-08 14:41:03', 23, 'updated', 'task', 'Konfigurasi DNS dan Server', 111, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9997500\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(630, '2018-05-08 14:41:08', 23, 'updated', 'task', 'Platform Website', 109, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9998000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(631, '2018-05-08 14:41:21', 23, 'updated', 'task', 'Design UI/UX', 100, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(632, '2018-05-08 14:41:26', 23, 'updated', 'task', 'Design UI/UX', 100, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(633, '2018-05-08 14:41:36', 23, 'updated', 'task', 'Form Registrasi Mahasiswa Baru', 124, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9998500\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(634, '2018-05-08 14:41:38', 23, 'updated', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(635, '2018-05-08 14:44:08', 23, 'created', 'task', 'Data Pegawai', 142, NULL, 'project', 32, '', 0, 0),
(636, '2018-05-08 14:45:34', 23, 'created', 'task', 'Civitas : Data Dosen', 143, NULL, 'project', 32, '', 0, 0),
(637, '2018-05-08 14:47:09', 23, 'created', 'task', 'Civitas : Data Mahasiswa', 144, NULL, 'project', 32, '', 0, 0),
(638, '2018-05-08 14:48:57', 23, 'created', 'task', 'Civitas : Data Staff', 145, NULL, 'project', 32, '', 0, 0),
(639, '2018-05-08 14:51:18', 23, 'updated', 'task', 'Save Data LKD', 106, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(640, '2018-05-08 14:51:52', 23, 'updated', 'task', 'Export Data LKD', 105, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(641, '2018-05-08 14:52:17', 23, 'updated', 'task', 'Online Signature', 107, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(642, '2018-05-08 14:52:26', 23, 'updated', 'task', 'View LKD ', 108, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(643, '2018-05-08 14:52:36', 23, 'updated', 'task', 'Penentuan Nama Domain & Hosting', 110, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(644, '2018-05-08 14:52:53', 23, 'updated', 'task', 'Delete Data LKD', 103, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10200000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(645, '2018-05-08 14:55:18', 23, 'created', 'task', 'Data Prodi', 146, NULL, 'project', 32, '', 0, 0),
(646, '2018-05-08 14:57:00', 23, 'updated', 'task', 'Optimasi Website', 113, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(647, '2018-05-08 14:57:04', 23, 'updated', 'task', 'Desain Database Website', 114, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(648, '2018-05-08 14:57:18', 23, 'updated', 'task', 'Desain UI/UX Website', 115, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(649, '2018-05-08 15:00:36', 23, 'updated', 'task', 'Data Prodi', 146, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(650, '2018-05-08 15:00:38', 23, 'updated', 'task', 'Data Prodi', 146, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(651, '2018-05-08 15:00:48', 23, 'updated', 'task', 'Data Prodi', 146, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(652, '2018-05-08 15:03:18', 23, 'updated', 'task', 'Master Pusat Perguruan Tinggi', 134, 'a:3:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:124:\"1. Input Data Profil Perguruan Tinggi( Identitas & Akta Terakhir)\n2. Input Alamat, Kontak & Pengesahan (Edit, Save, Delete)\n\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-23\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-24\";}}', 'project', 32, '', 0, 0),
(653, '2018-05-08 15:04:06', 23, 'updated', 'task', 'Data Fakultas', 136, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-25\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-26\";}}', 'project', 32, '', 0, 0),
(654, '2018-05-08 15:05:46', 23, 'updated', 'task', 'Data Gedung & Ruangan `', 135, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-27\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-28\";}}', 'project', 32, '', 0, 0),
(655, '2018-05-08 15:10:06', 23, 'updated', 'task', 'UI/UX LKD Dosen', 128, 'a:3:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-21\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-22\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"16\";}}', 'project', 32, '', 0, 0),
(656, '2018-05-08 15:10:36', 23, 'updated', 'task', 'UI/UX LKD Dekan', 129, 'a:3:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-22\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-23\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"16\";}}', 'project', 32, '', 0, 0),
(657, '2018-05-08 15:11:47', 23, 'updated', 'task', 'UI/UX LKD Dekan', 129, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-03-22\";s:2:\"to\";s:10:\"2018-03-23\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-03-23\";s:2:\"to\";s:10:\"2018-03-24\";}}', 'project', 32, '', 0, 0),
(658, '2018-05-08 15:12:25', 23, 'updated', 'task', 'UI/UX LKD Rektor', 130, 'a:3:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-25\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-26\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"16\";}}', 'project', 32, '', 0, 0),
(659, '2018-05-08 15:13:00', 23, 'updated', 'task', 'LKD Dosen', 131, 'a:3:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-27\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-28\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"8\";}}', 'project', 32, '', 0, 0),
(660, '2018-05-08 15:14:02', 23, 'updated', 'task', 'LKD Dekan', 132, 'a:3:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-29\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-30\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"8\";}}', 'project', 32, '', 0, 0),
(661, '2018-05-08 15:14:43', 23, 'updated', 'task', 'LKD Rektor', 133, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-03-31\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-01\";}}', 'project', 32, '', 0, 0),
(662, '2018-05-08 15:15:53', 23, 'updated', 'task', 'Design UI/UX', 100, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-03-06\";s:2:\"to\";s:10:\"2018-03-04\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-03-07\";s:2:\"to\";s:10:\"2018-03-05\";}}', 'project', 32, '', 0, 0),
(663, '2018-05-08 15:17:06', 23, 'updated', 'task', 'UI/UX LKD Dosen', 128, 'a:1:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-03-21\";s:2:\"to\";s:10:\"2018-03-22\";}}', 'project', 32, '', 0, 0),
(664, '2018-05-08 15:19:20', 23, 'deleted', 'task', 'Perancangan UI/UX PMB', 122, NULL, 'project', 32, NULL, NULL, 0),
(665, '2018-05-08 15:19:34', 23, 'deleted', 'task', 'View Notification ', 127, NULL, 'project', 32, NULL, NULL, 0),
(666, '2018-05-08 15:19:45', 23, 'deleted', 'task', 'Create Notification ', 126, NULL, 'project', 32, NULL, NULL, 0),
(667, '2018-05-08 15:19:59', 23, 'deleted', 'task', 'Desain Database PMB', 121, NULL, 'project', 32, NULL, NULL, 0),
(668, '2018-05-08 15:20:10', 23, 'deleted', 'task', 'Form Registrasi Mahasiswa Baru', 124, NULL, 'project', 32, NULL, NULL, 0),
(669, '2018-05-08 15:20:11', 23, 'deleted', 'task', 'Login Page', 123, NULL, 'project', 32, NULL, NULL, 0),
(670, '2018-05-08 15:20:37', 23, 'deleted', 'task', 'Input Form dan File Registrasi Mahasiswa  Baru', 125, NULL, 'project', 32, NULL, NULL, 0),
(671, '2018-05-08 15:27:45', 23, 'deleted', 'task', 'Data Prodi', 146, NULL, 'project', 32, NULL, NULL, 0),
(672, '2018-05-08 15:28:48', 23, 'deleted', 'task', 'Data Prodi ', 137, NULL, 'project', 32, NULL, NULL, 0),
(673, '2018-05-08 15:29:38', 23, 'created', 'task', 'Data Prodi', 147, NULL, 'project', 32, '', 0, 0),
(674, '2018-05-08 15:31:34', 23, 'deleted', 'task', 'Konfigurasi DNS dan Server', 111, NULL, 'project', 32, NULL, NULL, 0),
(675, '2018-05-08 15:31:36', 23, 'deleted', 'task', 'Platform Website', 109, NULL, 'project', 32, NULL, NULL, 0),
(676, '2018-05-08 15:31:41', 23, 'deleted', 'task', 'Penentuan Nama Domain & Hosting', 110, NULL, 'project', 32, NULL, NULL, 0),
(677, '2018-05-08 15:31:44', 23, 'deleted', 'task', 'Instalasi Website', 112, NULL, 'project', 32, NULL, NULL, 0),
(678, '2018-05-08 15:31:59', 23, 'deleted', 'task', 'Optimasi Website', 113, NULL, 'project', 32, NULL, NULL, 0),
(679, '2018-05-08 15:32:52', 23, 'deleted', 'task', 'Desain UI/UX Website', 115, NULL, 'project', 32, NULL, NULL, 0),
(680, '2018-05-08 15:33:34', 23, 'deleted', 'task', 'Desain Database Website', 114, NULL, 'project', 32, NULL, NULL, 0),
(681, '2018-05-08 15:35:07', 23, 'updated', 'task', 'Data Prodi', 147, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"23\";s:2:\"to\";s:2:\"16\";}}', 'project', 32, '', 0, 0),
(682, '2018-05-09 14:55:56', 46, 'created', 'customer_feedback_reply', 'BRI sama dev. app nya sedang mengkoneksikan server mas', 36, NULL, 'project', 32, 'customer_feedback', 32, 0),
(683, '2018-05-09 15:32:34', 46, 'created', 'customer_feedback', 'ini link data dosen 2018\nhttps://drive.google.com/a/uin-antasari.ac.id/file/d/1xF8oIOUQdh8H34WM9PLeZqqzlgyr8Nqf/view?usp=drivesdk', 37, NULL, 'project', 32, 'customer_feedback', 32, 0),
(684, '2018-05-09 15:34:58', 46, 'created', 'customer_feedback', 'ini data file ijazah dosen dll\nhttps://drive.google.com/folderview?id=1ZY9901lsDRdVX-HFiPJq6_bF3FEBxli9', 38, NULL, 'project', 32, 'customer_feedback', 32, 0),
(685, '2018-05-09 15:36:34', 46, 'created', 'customer_feedback', 'ini data mahasiswa, aktifitas kegiatan mhs dan yudisium\nhttps://drive.google.com/folderview?id=1qCrrpotQ84i1QGNeNtLa1OtwpfGHhRpE', 39, NULL, 'project', 32, 'customer_feedback', 32, 0),
(686, '2018-05-14 13:24:13', 23, 'updated', 'task', 'Data Prodi', 147, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10200000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(687, '2018-05-14 13:24:40', 23, 'updated', 'task', 'Data Pegawai', 142, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(688, '2018-05-14 13:28:15', 23, 'updated', 'milestone', 'SIAKAD : MASTER DATA', 15, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-14\";s:2:\"to\";s:10:\"2018-05-27\";}}', 'project', 32, '', 0, 0),
(689, '2018-05-14 13:28:56', 23, 'updated', 'milestone', 'SIAKAD : MASTER DATA', 15, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:21:\"Penyesuaian data baru\";}}', 'project', 32, '', 0, 0),
(690, '2018-05-14 13:30:24', 23, 'updated', 'milestone', 'SIAKAD : TUGAS AKHIR', 16, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-26\";s:2:\"to\";s:10:\"2018-06-03\";}}', 'project', 32, '', 0, 0),
(691, '2018-05-14 13:31:10', 23, 'updated', 'milestone', 'SIAKAD : PROFIL', 17, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-02\";s:2:\"to\";s:10:\"2018-06-10\";}}', 'project', 32, '', 0, 0),
(692, '2018-05-14 13:31:35', 23, 'updated', 'milestone', 'SIAKAD : BEASISWA', 18, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-11\";s:2:\"to\";s:10:\"2018-06-24\";}}', 'project', 32, '', 0, 0),
(693, '2018-05-14 13:37:15', 23, 'updated', 'task', 'Data Pegawai', 142, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-27\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-28\";}}', 'project', 32, '', 0, 0),
(694, '2018-05-14 13:37:49', 23, 'updated', 'task', 'Data Prodi', 147, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-29\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-04-30\";}}', 'project', 32, '', 0, 0),
(695, '2018-05-14 13:38:19', 23, 'updated', 'task', 'Data Pimpinan', 138, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-01\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-02\";}}', 'project', 32, '', 0, 0),
(696, '2018-05-14 13:38:43', 23, 'updated', 'task', 'Data Matakuliah', 139, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-03\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-04\";}}', 'project', 32, '', 0, 0),
(697, '2018-05-14 13:39:04', 23, 'updated', 'task', 'Data Tahun Ajaran', 140, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-05\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-06\";}}', 'project', 32, '', 0, 0),
(698, '2018-05-14 13:39:22', 23, 'updated', 'task', 'Data Kelas', 141, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-07\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-08\";}}', 'project', 32, '', 0, 0),
(699, '2018-05-14 13:41:43', 23, 'updated', 'task', 'Data Pegawai', 142, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-04-27\";s:2:\"to\";s:10:\"2018-05-09\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-04-28\";s:2:\"to\";s:10:\"2018-05-10\";}}', 'project', 32, '', 0, 0),
(700, '2018-05-14 13:42:03', 23, 'updated', 'task', 'Civitas : Data Dosen', 143, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-11\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-12\";}}', 'project', 32, '', 0, 0),
(701, '2018-05-14 13:42:33', 23, 'updated', 'task', 'Civitas : Data Mahasiswa', 144, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-13\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-14\";}}', 'project', 32, '', 0, 0),
(702, '2018-05-14 13:43:05', 23, 'updated', 'task', 'Civitas : Data Staff', 145, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-16\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-16\";}}', 'project', 32, '', 0, 0),
(703, '2018-05-14 13:43:43', 23, 'updated', 'task', 'Civitas : Data Staff', 145, 'a:1:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-05-16\";s:2:\"to\";s:10:\"2018-05-15\";}}', 'project', 32, '', 0, 0),
(704, '2018-05-14 13:44:51', 23, 'updated', 'task', 'Data Prodi', 147, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-04-29\";s:2:\"to\";s:10:\"2018-04-21\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-04-30\";s:2:\"to\";s:10:\"2018-04-22\";}}', 'project', 32, '', 0, 0),
(705, '2018-05-14 13:48:39', 23, 'updated', 'milestone', 'SIAKAD : KRS', 20, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-23\";s:2:\"to\";s:10:\"2018-06-01\";}}', 'project', 32, '', 0, 0),
(706, '2018-05-14 14:25:33', 23, 'updated', 'milestone', 'SIAKAD : KHS', 21, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-08-04\";s:2:\"to\";s:10:\"2018-06-06\";}}', 'project', 32, '', 0, 0),
(707, '2018-05-14 14:48:13', 23, 'updated', 'milestone', 'SIAKAD : PROFIL', 17, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-10\";s:2:\"to\";s:10:\"2018-05-29\";}}', 'project', 32, '', 0, 0),
(708, '2018-05-14 14:48:59', 23, 'updated', 'milestone', 'SIAKAD : JADWAL PERKULIAHAN', 22, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-08-15\";s:2:\"to\";s:10:\"2018-06-01\";}}', 'project', 32, '', 0, 0),
(709, '2018-05-14 14:50:16', 23, 'updated', 'milestone', 'SIAKAD : KEUANGAN', 26, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-09-25\";s:2:\"to\";s:10:\"2018-06-04\";}}', 'project', 32, '', 0, 0),
(710, '2018-05-14 14:51:25', 23, 'updated', 'milestone', 'SIAKAD : PERMOHONAN CUTI', 24, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-09-02\";s:2:\"to\";s:10:\"2018-06-07\";}}', 'project', 32, '', 0, 0),
(711, '2018-05-14 14:51:39', 23, 'deleted', 'milestone', 'SIAKAD : KHS', 21, NULL, 'project', 32, NULL, NULL, 0),
(712, '2018-05-14 14:51:45', 23, 'deleted', 'milestone', 'SIAKAD : WISUDA', 19, NULL, 'project', 32, NULL, NULL, 0),
(713, '2018-05-14 14:51:46', 23, 'deleted', 'milestone', 'SIAKAD : BEASISWA', 18, NULL, 'project', 32, NULL, NULL, 0),
(714, '2018-05-14 14:51:50', 23, 'deleted', 'milestone', 'SIAKAD : PRESENSI', 23, NULL, 'project', 32, NULL, NULL, 0),
(715, '2018-05-14 14:51:51', 23, 'deleted', 'milestone', 'SIAKAD : FEEDER DIKTI', 25, NULL, 'project', 32, NULL, NULL, 0),
(716, '2018-05-14 14:51:53', 23, 'deleted', 'milestone', 'WEBSITE INFORMASI', 27, NULL, 'project', 32, NULL, NULL, 0),
(717, '2018-05-14 14:51:55', 23, 'deleted', 'milestone', 'TESTING APLIKASI', 28, NULL, 'project', 32, NULL, NULL, 0),
(718, '2018-05-14 14:52:01', 23, 'deleted', 'milestone', 'IMPLEMENTASI & DOKUMENTASI', 29, NULL, 'project', 32, NULL, NULL, 0),
(719, '2018-05-14 14:52:16', 23, 'deleted', 'milestone', 'SIAKAD : TUGAS AKHIR', 16, NULL, 'project', 32, NULL, NULL, 0),
(720, '2018-05-14 14:52:28', 23, 'deleted', 'milestone', 'SIAKAD : KRS', 20, NULL, 'project', 32, NULL, NULL, 0),
(721, '2018-05-14 14:54:37', 23, 'created', 'milestone', 'SIAKAD : KRS', 30, NULL, 'project', 32, '', 0, 0),
(722, '2018-05-14 14:55:18', 23, 'created', 'milestone', 'SIAKAD : PRESENSI', 31, NULL, 'project', 32, '', 0, 0),
(723, '2018-05-14 14:56:21', 23, 'created', 'milestone', 'SIAKAD : KHS', 32, NULL, 'project', 32, '', 0, 0),
(724, '2018-05-14 14:57:05', 23, 'created', 'milestone', 'SIAKAD : BEASISWA', 33, NULL, 'project', 32, '', 0, 0),
(725, '2018-05-14 14:57:35', 23, 'created', 'milestone', 'SIAKAD : TUGAS AKHIR', 34, NULL, 'project', 32, '', 0, 0),
(726, '2018-05-14 14:58:18', 23, 'created', 'milestone', 'SIAKAD : WISUDA', 35, NULL, 'project', 32, '', 0, 0),
(727, '2018-05-14 14:59:08', 23, 'created', 'milestone', 'WEBSITE INFORMASI', 36, NULL, 'project', 32, '', 0, 0),
(728, '2018-05-14 15:01:21', 23, 'created', 'milestone', 'SIAKAD : FEEDER DIKTI', 37, NULL, 'project', 32, '', 0, 0),
(729, '2018-05-14 15:02:14', 23, 'created', 'milestone', 'SISTEM PMB', 38, NULL, 'project', 32, '', 0, 0),
(730, '2018-05-14 15:04:06', 23, 'updated', 'milestone', 'SIAKAD : PROFIL', 17, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-05-29\";s:2:\"to\";s:10:\"2018-06-03\";}}', 'project', 32, '', 0, 0),
(731, '2018-05-14 15:04:59', 23, 'updated', 'milestone', 'SIAKAD : JADWAL PERKULIAHAN', 22, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-01\";s:2:\"to\";s:10:\"2018-06-14\";}}', 'project', 32, '', 0, 0),
(732, '2018-05-14 15:07:56', 23, 'updated', 'milestone', 'SIAKAD : KEUANGAN', 26, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-04\";s:2:\"to\";s:10:\"2018-06-29\";}}', 'project', 32, '', 0, 0),
(733, '2018-05-14 15:08:51', 23, 'updated', 'milestone', 'SIAKAD : PERMOHONAN CUTI', 24, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-07\";s:2:\"to\";s:10:\"2018-07-07\";}}', 'project', 32, '', 0, 0),
(734, '2018-05-14 15:10:20', 23, 'updated', 'milestone', 'SIAKAD : KRS', 30, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-12\";s:2:\"to\";s:10:\"2018-07-30\";}}', 'project', 32, '', 0, 0),
(735, '2018-05-14 15:11:09', 23, 'updated', 'milestone', 'SIAKAD : PRESENSI', 31, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-15\";s:2:\"to\";s:10:\"2018-08-09\";}}', 'project', 32, '', 0, 0),
(736, '2018-05-14 15:13:27', 23, 'updated', 'milestone', 'SIAKAD : KHS', 32, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-19\";s:2:\"to\";s:10:\"2018-08-21\";}}', 'project', 32, '', 0, 0),
(737, '2018-05-14 15:14:22', 23, 'updated', 'milestone', 'SIAKAD : BEASISWA', 33, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-21\";s:2:\"to\";s:10:\"2018-08-30\";}}', 'project', 32, '', 0, 0),
(738, '2018-05-14 15:15:23', 23, 'updated', 'milestone', 'SIAKAD : TUGAS AKHIR', 34, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-24\";s:2:\"to\";s:10:\"2018-09-11\";}}', 'project', 32, '', 0, 0),
(739, '2018-05-14 15:16:47', 23, 'updated', 'milestone', 'SIAKAD : WISUDA', 35, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-26\";s:2:\"to\";s:10:\"2018-09-18\";}}', 'project', 32, '', 0, 0),
(740, '2018-05-14 15:17:29', 23, 'updated', 'milestone', 'WEBSITE INFORMASI', 36, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-28\";s:2:\"to\";s:10:\"2018-06-23\";}}', 'project', 32, '', 0, 0),
(741, '2018-05-14 15:17:50', 23, 'updated', 'milestone', 'WEBSITE INFORMASI', 36, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-23\";s:2:\"to\";s:10:\"2018-09-23\";}}', 'project', 32, '', 0, 0),
(742, '2018-05-14 15:19:49', 23, 'updated', 'milestone', 'SISTEM PMB', 38, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-10\";s:2:\"to\";s:10:\"2018-11-02\";}}', 'project', 32, '', 0, 0),
(743, '2018-05-14 15:20:44', 23, 'updated', 'milestone', 'SIAKAD : FEEDER DIKTI', 37, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-01\";s:2:\"to\";s:10:\"2018-11-12\";}}', 'project', 32, '', 0, 0),
(744, '2018-05-14 15:21:26', 23, 'created', 'milestone', 'PENGUJIAN DAN EVALUASI SISTEM', 39, NULL, 'project', 32, '', 0, 0),
(745, '2018-05-14 15:22:07', 23, 'created', 'milestone', 'DOKUMENTASI & CLOSING', 40, NULL, 'project', 32, '', 0, 0),
(746, '2018-05-15 05:51:55', 8, 'created', 'task', 'Introductions UI/UX & CD', 148, NULL, 'project', 36, '', 0, 0),
(747, '2018-05-15 05:55:58', 8, 'created', 'project_comment', 'File Materi Pertemuan 1 (Intro)\n\n', 40, NULL, 'project', 36, '', 0, 0),
(748, '2018-05-15 06:10:41', 54, 'created', 'project_file', '_file5afa79de88c39-Home.png', 22, NULL, 'project', 36, '', 0, 0),
(749, '2018-05-15 06:10:43', 54, 'created', 'project_file', '_file5afa79e2b0cd1-Login.png', 23, NULL, 'project', 36, '', 0, 0),
(750, '2018-05-15 06:10:44', 54, 'created', 'project_file', '_file5afa79e3cfbc7-Home--1-.png', 24, NULL, 'project', 36, '', 0, 0),
(751, '2018-05-15 06:12:19', 54, 'created', 'project_comment', 'Link Project: https://www.figma.com/file/fHngR9t1eeSrhccwvrHtbVfX/Untitled', 41, NULL, 'project', 36, '', 0, 0),
(752, '2018-05-15 07:53:31', 55, 'created', 'project_comment', 'Poster ', 42, NULL, 'project', 36, '', 0, 0),
(753, '2018-05-15 07:59:04', 55, 'deleted', 'project_comment', 'Poster ', 42, NULL, 'project', 36, NULL, NULL, 0),
(754, '2018-05-15 08:01:18', 55, 'created', 'project_comment', 'Poster ', 43, NULL, 'project', 36, '', 0, 0),
(755, '2018-05-15 09:09:28', 55, 'created', 'project_comment', 'Poster', 44, NULL, 'project', 36, '', 0, 0),
(756, '2018-05-15 09:10:10', 55, 'deleted', 'project_comment', 'Poster ', 43, NULL, 'project', 36, NULL, NULL, 0),
(757, '2018-05-15 09:10:14', 55, 'deleted', 'project_comment', 'Poster', 44, NULL, 'project', 36, NULL, NULL, 0),
(758, '2018-05-15 15:51:33', 14, 'created', 'task', 'Introduction', 149, NULL, 'project', 37, '', 0, 0),
(759, '2018-05-15 15:53:23', 14, 'created', 'task', 'Studi Kasus I', 150, NULL, 'project', 37, '', 0, 0),
(760, '2018-05-15 15:53:56', 14, 'created', 'task', 'Studi Kasus II', 151, NULL, 'project', 37, '', 0, 0),
(761, '2018-05-16 03:59:04', 8, 'created', 'project_comment', 'Bellanofi Onepage Poster1 (Mountain Climbing)\n', 45, NULL, 'project', 36, '', 0, 0),
(762, '2018-05-16 04:26:50', 8, 'created', 'project_comment', 'https://www.figma.com/file/JTEgS8o2ia5t8zc2ClOSyEBN/Mywallet (Link Mockup Figma)', 46, NULL, 'project', 36, '', 0, 0),
(763, '2018-05-16 04:29:05', 8, 'created', 'task', 'MyWallet', 152, NULL, 'project', 36, '', 0, 0),
(764, '2018-05-16 06:25:50', 8, 'updated', 'task', 'MyWallet', 152, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 36, '', 0, 0),
(765, '2018-05-16 06:35:21', 54, 'created', 'project_comment', 'Sketching Android Apps', 47, NULL, 'project', 36, '', 0, 0),
(766, '2018-05-16 06:38:03', 8, 'created', 'task', 'Poster dan Logo', 153, NULL, 'project', 36, '', 0, 0),
(767, '2018-05-16 06:38:28', 8, 'updated', 'task', 'Introductions UI/UX & CD', 148, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 36, '', 0, 0),
(768, '2018-05-16 06:38:30', 8, 'updated', 'task', 'Introductions UI/UX & CD', 148, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 36, '', 0, 0),
(769, '2018-05-16 06:38:32', 8, 'updated', 'task', 'Poster dan Logo', 153, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 36, '', 0, 0),
(770, '2018-05-16 06:38:36', 8, 'updated', 'task', 'Introductions UI/UX & CD', 148, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 36, '', 0, 0),
(771, '2018-05-16 06:50:39', 8, 'created', 'task', 'Testing App', 154, NULL, 'project', 36, '', 0, 0),
(772, '2018-05-16 06:52:56', 55, 'created', 'project_comment', 'Sample model Logo Android Apps', 48, NULL, 'project', 36, '', 0, 0),
(773, '2018-05-16 06:57:24', 8, 'created', 'project_comment_reply', 'Nice work  (y)', 49, NULL, 'project', 36, '', 0, 0),
(774, '2018-05-16 06:57:35', 8, 'created', 'project_comment_reply', 'Good work (y)', 50, NULL, 'project', 36, '', 0, 0),
(775, '2018-05-16 06:58:57', 3, 'created', 'project_comment_reply', 'good\n\n', 51, NULL, 'project', 36, '', 0, 0),
(776, '2018-05-16 06:58:58', 3, 'created', 'project_comment_reply', 'good\n\n', 52, NULL, 'project', 36, '', 0, 0),
(777, '2018-05-16 06:59:04', 3, 'created', 'project_comment_reply', 'good\n\n', 53, NULL, 'project', 36, '', 0, 0),
(778, '2018-05-16 06:59:11', 3, 'created', 'project_comment_reply', 'good', 54, NULL, 'project', 36, '', 0, 0),
(779, '2018-05-16 06:59:58', 3, 'deleted', 'project_comment', 'good', 54, NULL, 'project', 36, NULL, NULL, 0),
(780, '2018-05-16 07:00:08', 3, 'deleted', 'project_comment', 'good\n\n', 53, NULL, 'project', 36, NULL, NULL, 0),
(781, '2018-05-16 07:00:09', 3, 'deleted', 'project_comment', 'good\n\n', 52, NULL, 'project', 36, NULL, NULL, 0),
(782, '2018-05-16 17:31:34', 56, 'created', 'project_comment', 'Project 1 (Recipes On Hand)', 55, NULL, 'project', 36, '', 0, 0),
(783, '2018-05-16 17:31:53', 56, 'deleted', 'project_comment', 'Project 1 (Recipes On Hand)', 55, NULL, 'project', 36, NULL, NULL, 0),
(784, '2018-05-16 17:40:53', 56, 'created', 'project_comment', 'Project 1 (Recipes On Hand)', 56, NULL, 'project', 36, '', 0, 0),
(785, '2018-05-17 15:07:50', 54, 'created', 'project_comment', 'Mock Up Result', 57, NULL, 'project', 36, '', 0, 0),
(786, '2018-05-17 15:11:01', 54, 'created', 'project_comment', 'User Test Result', 58, NULL, 'project', 36, '', 0, 0),
(787, '2018-05-17 15:12:31', 54, 'created', 'project_file', '_file5afd9bdf3befe-319646.jpg', 25, NULL, 'project', 36, '', 0, 0),
(788, '2018-05-17 15:12:31', 54, 'created', 'project_file', '_file5afd9bdf995b9-319647.jpg', 26, NULL, 'project', 36, '', 0, 0),
(789, '2018-05-17 15:13:29', 54, 'created', 'project_file', '_file5afd9c197a0df-Calendar.png', 27, NULL, 'project', 36, '', 0, 0),
(790, '2018-05-17 15:13:29', 54, 'created', 'project_file', '_file5afd9c19d7580-Details-Income.png', 28, NULL, 'project', 36, '', 0, 0),
(791, '2018-05-17 15:13:30', 54, 'created', 'project_file', '_file5afd9c1a9e489-Details-Job-Vacancy.png', 29, NULL, 'project', 36, '', 0, 0),
(792, '2018-05-17 15:13:31', 54, 'created', 'project_file', '_file5afd9c1b1344c-Fill-Income.png', 30, NULL, 'project', 36, '', 0, 0),
(793, '2018-05-17 15:13:31', 54, 'created', 'project_file', '_file5afd9c1b6d7c7-Fill-Reminder.png', 31, NULL, 'project', 36, '', 0, 0),
(794, '2018-05-17 15:13:33', 54, 'created', 'project_file', '_file5afd9c1d11662-Graph-Income.png', 32, NULL, 'project', 36, '', 0, 0),
(795, '2018-05-17 15:13:33', 54, 'created', 'project_file', '_file5afd9c1d69666-home.png', 33, NULL, 'project', 36, '', 0, 0),
(796, '2018-05-17 15:13:34', 54, 'created', 'project_file', '_file5afd9c1dcc6e3-income.png', 34, NULL, 'project', 36, '', 0, 0),
(797, '2018-05-17 15:13:35', 54, 'created', 'project_file', '_file5afd9c1ee8d66-job-vacancy.png', 35, NULL, 'project', 36, '', 0, 0),
(798, '2018-05-17 15:13:35', 54, 'created', 'project_file', '_file5afd9c1f82f4f-List-Reminder.png', 36, NULL, 'project', 36, '', 0, 0),
(799, '2018-05-17 15:13:48', 54, 'created', 'project_file', '_file5afd9c2c4e6c8-USER-TEST.xlsx', 37, NULL, 'project', 36, '', 0, 0),
(800, '2018-05-17 21:13:17', 1, 'created', 'task', 'Konten Halaman Utama Website', 155, NULL, 'project', 38, '', 0, 0),
(801, '2018-05-17 21:14:14', 1, 'created', 'task', 'Konten Halaman Detail Service', 156, NULL, 'project', 38, '', 0, 0),
(802, '2018-05-17 21:15:48', 1, 'created', 'task', 'Strategi Marketing SOSMED ', 157, NULL, 'project', 38, '', 0, 0),
(803, '2018-05-17 21:16:34', 1, 'created', 'task', 'Update Blog 4nesia', 158, NULL, 'project', 38, '', 0, 0),
(804, '2018-05-17 21:18:26', 1, 'created', 'task', 'Konten Halaman Service ', 159, NULL, 'project', 38, '', 0, 0),
(805, '2018-05-17 21:19:26', 1, 'created', 'task', 'Video Animasi 4nesia', 160, NULL, 'project', 38, '', 0, 0),
(806, '2018-05-17 21:20:40', 1, 'updated', 'task', 'Menyusun Visi 3 tahun perusahaan', 83, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 23, '', 0, 0),
(807, '2018-05-17 21:20:51', 1, 'updated', 'task', 'Membuat pembukuan', 82, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 20, '', 0, 0),
(808, '2018-05-17 21:20:54', 1, 'updated', 'task', 'Mengkordinasikan rencana project siakad UIN & UMPAR Palu', 97, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 23, '', 0, 0),
(809, '2018-05-17 21:20:55', 1, 'updated', 'task', 'mengkordinasikan project PPDB', 98, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 23, '', 0, 0),
(810, '2018-05-18 03:32:53', 8, 'updated', 'task', 'Testing App', 154, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 36, '', 0, 0),
(811, '2018-05-18 03:32:56', 8, 'updated', 'task', 'MyWallet', 152, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 36, '', 0, 0),
(812, '2018-05-18 03:33:38', 8, 'updated', 'task', 'Testing App', 154, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 36, '', 0, 0),
(813, '2018-05-18 03:52:41', 3, 'updated', 'task', 'Poster dan Logo', 153, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 36, '', 0, 0),
(814, '2018-05-18 04:06:34', 55, 'created', 'project_comment', 'Poster MyWallet', 59, NULL, 'project', 36, '', 0, 0),
(815, '2018-05-21 04:45:31', 46, 'created', 'customer_feedback', 'ini update koneksi server ke app h2h Mas Andi', 60, NULL, 'project', 32, 'customer_feedback', 32, 0),
(816, '2018-05-21 04:45:31', 46, 'created', 'customer_feedback', 'ini update koneksi server ke app h2h Mas Andi', 61, NULL, 'project', 32, 'customer_feedback', 32, 0),
(817, '2018-05-21 04:50:57', 46, 'created', 'customer_feedback', 'ini format yg akan dikirimkan ke siakad', 62, NULL, 'project', 32, 'customer_feedback', 32, 0),
(818, '2018-05-21 14:14:41', 1, 'created', 'task', 'Menambahkan Baca Berita Lainnya', 161, NULL, 'project', 39, '', 0, 0);
INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(819, '2018-05-21 14:15:29', 1, 'created', 'task', 'Menampilkan Berita berdasarkan bulan', 162, NULL, 'project', 39, '', 0, 0),
(820, '2018-05-21 14:16:21', 1, 'created', 'task', 'Menambahkan pada editor paragraf pos rata kanan kiri', 163, NULL, 'project', 39, '', 0, 0),
(821, '2018-05-21 14:17:07', 1, 'created', 'task', 'Memasukkan berita2 lama kemaren minta tolong carikan solusinya', 164, NULL, 'project', 39, '', 0, 0),
(822, '2018-05-21 14:17:47', 1, 'created', 'task', 'Sub header terbaru dan background nya dihilangkan', 165, NULL, 'project', 39, '', 0, 0),
(823, '2018-05-21 14:20:59', 1, 'created', 'project_comment', 'reference http://www.uinjkt.ac.id/', 63, NULL, 'project', 39, '', 0, 0),
(824, '2018-05-21 14:41:31', 1, 'updated', 'task', 'Sub header terbaru dan background nya dihilangkan', 165, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(825, '2018-05-21 15:21:00', 1, 'created', 'task', 'Fixed layer slide video', 166, NULL, 'project', 39, '', 0, 0),
(826, '2018-05-21 15:21:11', 1, 'updated', 'task', 'Sub header terbaru dan background nya dihilangkan', 165, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(827, '2018-05-21 15:24:52', 1, 'updated', 'task', 'Menambahkan pada editor paragraf pos rata kanan kiri', 163, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(828, '2018-05-21 15:40:46', 1, 'updated', 'task', 'Menambahkan Baca Berita Lainnya', 161, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(829, '2018-05-21 15:40:53', 1, 'updated', 'task', 'Menampilkan Berita berdasarkan bulan', 162, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(830, '2018-05-21 15:46:09', 1, 'updated', 'task', 'Menambahkan pada editor paragraf pos rata kanan kiri', 163, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(831, '2018-05-21 15:46:11', 1, 'updated', 'task', 'Menambahkan Baca Berita Lainnya', 161, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(832, '2018-05-21 15:46:29', 1, 'updated', 'task', 'Memasukkan berita2 lama kemaren minta tolong carikan solusinya', 164, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(833, '2018-05-21 15:46:51', 1, 'created', 'customer_feedback', 'silahkan di cek mas', 64, NULL, 'project', 39, 'customer_feedback', 39, 0),
(834, '2018-05-21 15:47:53', 1, 'updated', 'task', 'Menambahkan Baca Berita Lainnya', 161, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(835, '2018-05-21 16:17:19', 1, 'created', 'task', 'Oprek Logo', 167, NULL, 'project', 39, '', 0, 0),
(836, '2018-05-21 16:26:47', 1, 'created', 'task', 'Buatkan halaman donwload logo resmi uin', 168, NULL, 'project', 39, '', 0, 0),
(837, '2018-05-28 00:25:41', 8, 'created', 'project_comment', 'Role Users:\n1. Mahasiswa\n2. Dosen (Dosen Wali, Dosen Tetap, Dosen LB)\n3. Kaprodi\n4. Dekan\n5. Pimpinan Kampus (Rektor, Warek I-IV) ', 65, NULL, 'project', 41, '', 0, 0),
(838, '2018-05-28 00:31:32', 8, 'created', 'project_comment', 'Khusus buat tim UI Designer:\n1.Untuk design UI android App wajib menggunakan material design\n2. Gunakan konsep2 design yg sdh diberikan saat pembekalan (e.g. Konsistensi, balance, layered ux, dll). \n3. Disaranin menggunakan tool figma saat design mockup dan prototype', 66, NULL, 'project', 41, '', 0, 0),
(839, '2018-05-29 09:33:00', 59, 'created', 'task', 'Membuat Usecase', 169, NULL, 'project', 40, '', 0, 0),
(840, '2018-05-29 09:33:17', 59, 'updated', 'task', 'Membuat Usecase', 169, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 40, '', 0, 0),
(841, '2018-05-29 09:33:31', 59, 'updated', 'task', 'Membuat Usecase', 169, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 40, '', 0, 0),
(842, '2018-05-29 09:33:39', 59, 'updated', 'task', 'Membuat Usecase', 169, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 40, '', 0, 0),
(843, '2018-05-29 09:34:19', 59, 'updated', 'task', 'Membuat Usecase', 169, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 40, '', 0, 0),
(844, '2018-05-29 09:34:24', 59, 'deleted', 'task', 'Membuat Usecase', 169, NULL, 'project', 40, NULL, NULL, 0),
(845, '2018-05-29 09:34:47', 59, 'updated', 'task', 'Membuat Usecase', 169, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 40, '', 0, 0),
(846, '2018-06-02 19:13:04', 1, 'created', 'task', 'Gambar Post dimunculkan saat di share', 170, NULL, 'project', 39, '', 0, 0),
(847, '2018-06-02 19:14:10', 1, 'updated', 'task', 'Gambar Post dimunculkan saat di share', 170, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(848, '2018-06-02 19:22:02', 1, 'updated', 'task', 'Buatkan halaman donwload logo resmi uin', 168, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9998500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(849, '2018-06-02 19:22:06', 1, 'updated', 'task', 'Oprek Logo', 167, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9998000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(850, '2018-06-02 19:28:55', 1, 'updated', 'task', 'Menampilkan Berita berdasarkan bulan', 162, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(851, '2018-06-02 19:31:52', 1, 'updated', 'task', 'Menambahkan Baca Berita Lainnya', 161, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(852, '2018-06-02 19:32:01', 1, 'updated', 'task', 'Gambar Post dimunculkan saat di share', 170, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(853, '2018-06-02 19:45:28', 1, 'updated', 'task', 'Buatkan halaman donwload logo resmi uin', 168, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9998500\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(854, '2018-06-02 19:45:37', 1, 'updated', 'task', 'Buatkan halaman donwload logo resmi uin', 168, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999000\";s:2:\"to\";s:7:\"9997500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 39, '', 0, 0),
(855, '2018-06-02 19:58:00', 1, 'updated', 'task', 'Buatkan halaman donwload logo resmi uin', 168, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9997500\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(856, '2018-06-04 21:29:46', 46, 'created', 'customer_feedback', 'Assalamualaikum rekan2, karena jadwal  KRS an dimulai 1 juli saya mohon aplikasi kita sudah dapat dipakai pada masa tersebut. Sekaligis saya minta modul panduan prosedur KRS untuk user (mahasiswa dan admin fakultas) Terimakasih ', 67, NULL, 'project', 32, 'customer_feedback', 32, 0),
(857, '2018-06-05 08:09:04', 53, 'created', 'project_comment', 'Ini Use Case Diagram HalloNesia..', 68, NULL, 'project', 40, '', 0, 0),
(858, '2018-06-05 08:13:02', 53, 'created', 'project_comment_reply', 'Versi I', 69, NULL, 'project', 40, '', 0, 0),
(859, '2018-06-05 08:51:18', 59, 'created', 'milestone', 'Develop Aplikasi', 41, NULL, 'project', 40, '', 0, 0),
(860, '2018-06-05 17:04:57', 3, 'updated', 'task', 'idCard Crew', 93, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 29, '', 0, 0),
(861, '2018-06-05 17:05:10', 3, 'updated', 'task', 'idCard Crew', 93, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 29, '', 0, 0),
(862, '2018-06-05 17:05:26', 3, 'updated', 'task', 'Poster Internship', 89, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 29, '', 0, 0),
(863, '2018-06-10 09:07:28', 1, 'created', 'customer_feedback_reply', 'work in progress. semoga kekejar mas.', 70, NULL, 'project', 32, 'customer_feedback', 32, 0),
(864, '2018-06-10 13:53:08', 1, 'updated', 'task', 'Memasukkan berita2 lama kemaren minta tolong carikan solusinya', 164, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 39, '', 0, 0),
(865, '2018-06-13 05:27:08', 46, 'created', 'customer_feedback', 'Mohon web UIN Antasari dipindahkan ke server fisik di puskom UIN sebelum tgl 20 an, biar terbebas dari biaya hosting ????\nUser dan password OS server user : utipd password : utipd2018#77x\nUser dan password mysql : user : root password : dbutipd2018#\nopen port 22 dan 80\nhttp://202.150.174.151/phpmyadmin', 71, NULL, 'project', 39, 'customer_feedback', 39, 0),
(866, '2018-06-13 13:37:02', 1, 'created', 'customer_feedback_reply', 'oke mas', 72, NULL, 'project', 39, 'customer_feedback', 39, 0),
(867, '2018-06-13 18:18:04', 1, 'created', 'customer_feedback', 'uploading to server uin banjarmasin', 73, NULL, 'project', 39, 'customer_feedback', 39, 0),
(868, '2018-06-13 18:22:03', 1, 'created', 'customer_feedback_reply', 'mas mohon di tambah batas maksimal upload db nya, krn db webnya ada 59MB lebih', 74, NULL, 'project', 39, 'customer_feedback', 39, 0),
(869, '2018-06-22 09:14:37', 1, 'created', 'customer_feedback', 'Report Progress Project.\n22/06/2018\nin Progress Modul KRS\n\n', 75, NULL, 'project', 32, 'customer_feedback', 32, 0),
(870, '2018-06-22 09:14:39', 1, 'created', 'customer_feedback', 'Report Progress Project.\n22/06/2018\nin Progress Modul KRS\n\n', 76, NULL, 'project', 32, 'customer_feedback', 32, 0),
(871, '2018-06-22 09:14:44', 1, 'deleted', 'project_comment', 'Report Progress Project.\n22/06/2018\nin Progress Modul KRS\n\n', 76, NULL, 'project', 32, NULL, NULL, 0),
(872, '2018-06-26 03:33:57', 54, 'created', 'project_comment', 'Sketching HaloNesia', 77, NULL, 'project', 40, '', 0, 0),
(873, '2018-06-27 06:19:36', 1, 'deleted', 'project_comment', 'aa', 26, NULL, 'project', 2, NULL, NULL, 0),
(874, '2018-06-27 06:19:40', 1, 'deleted', 'project_comment', 'aa', 25, NULL, 'project', 2, NULL, NULL, 0),
(875, '2018-06-27 06:29:10', 1, 'created', 'task', 'Perubahan Data Lapangan dan gedung Olahraga', 171, NULL, 'project', 44, '', 0, 0),
(876, '2018-06-27 06:31:00', 1, 'created', 'task', 'ubah password', 172, NULL, 'project', 44, '', 0, 0),
(877, '2018-06-27 06:31:56', 1, 'created', 'task', 'non aktifkan new tab di landing page', 173, NULL, 'project', 44, '', 0, 0),
(878, '2018-06-27 06:32:34', 1, 'created', 'task', 'Update Landing page', 174, NULL, 'project', 44, '', 0, 0),
(879, '2018-07-04 13:35:48', 23, 'created', 'task', 'Organizing Job Description', 175, NULL, 'project', 45, '', 0, 0),
(880, '2018-07-04 13:39:12', 23, 'created', 'task', 'Organizing Payroll Format System', 176, NULL, 'project', 45, '', 0, 0),
(881, '2018-07-04 13:39:26', 23, 'updated', 'task', 'Organizing Job Description', 175, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:12:\"3,16,14,23,1\";s:2:\"to\";s:15:\"3,16,14,23,1,21\";}}', 'project', 45, '', 0, 0),
(882, '2018-07-04 13:39:43', 23, 'updated', 'task', 'Organizing Payroll Format System', 176, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:17:\"1,8,16,14,23,21,3\";s:2:\"to\";s:20:\"1,8,16,14,23,21,3,20\";}}', 'project', 45, '', 0, 0),
(883, '2018-07-04 13:39:52', 23, 'updated', 'task', 'Organizing Job Description', 175, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:15:\"3,16,14,23,1,21\";s:2:\"to\";s:18:\"3,16,14,23,1,21,20\";}}', 'project', 45, '', 0, 0),
(884, '2018-07-04 13:40:19', 23, 'updated', 'task', 'Organizing Job Description', 175, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:26:\"Organizing Job Description\";s:2:\"to\";s:41:\"Identyfied and Organizing Job Description\";}}', 'project', 45, '', 0, 0),
(885, '2018-07-04 13:43:27', 23, 'updated', 'task', 'Organizing Payroll Format System', 176, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:86:\"Mengidetifikasi sistem penggajian pada karyawan sesuai dengan jabatan, dan beban kerja\";s:2:\"to\";s:113:\"Mengidetifikasi sistem penggajian pada karyawan sesuai dengan jabatan, dan beban kerja, tunjangan dan gaji bersih\";}}', 'project', 45, '', 0, 0),
(886, '2018-07-04 13:44:23', 23, 'updated', 'task', 'Identyfied and Organizing Job Description', 175, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:18:\"3,16,14,23,1,21,20\";s:2:\"to\";s:20:\"3,16,14,23,1,21,20,8\";}}', 'project', 45, '', 0, 0),
(887, '2018-07-04 14:14:23', 23, 'created', 'task', 'Archieve and Document Maintenance', 177, NULL, 'project', 45, '', 0, 0),
(888, '2018-07-04 14:29:54', 23, 'updated', 'task', 'Identyfied and Organizing Job Description', 175, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:50:\"Membuat format Job Descripton masing-masing divisi\";s:2:\"to\";s:198:\"Membuat format Job Descripton masing-masing divisi\nContoh Template : di https://www.slideshare.net/Shobrie/contoh-job-description-lengkap-70-posisi-jabatan-dalam-perusahaan-not-full-version-45569047\";}}', 'project', 45, '', 0, 0),
(889, '2018-07-04 15:04:11', 23, 'updated', 'task', 'Identyfied and Organizing Job Description', 175, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:198:\"Membuat format Job Descripton masing-masing divisi\nContoh Template : di https://www.slideshare.net/Shobrie/contoh-job-description-lengkap-70-posisi-jabatan-dalam-perusahaan-not-full-version-45569047\";s:2:\"to\";s:265:\"Membuat format Job Descripton masing-masing divisi\nContoh Template : di https://www.slideshare.net/Shobrie/contoh-job-description-lengkap-70-posisi-jabatan-dalam-perusahaan-not-full-version-45569047 dan di sini https://sleekr.co/resources/job-description-templates/\";}}', 'project', 45, '', 0, 0),
(890, '2018-07-04 15:52:47', 23, 'created', 'project_file', '_file5b3ced4f99daf-Untitled-document--4-.docx', 38, NULL, 'project', 45, '', 0, 0),
(891, '2018-07-04 16:13:16', 1, 'created', 'task_comment', 'https://id.techinasia.com/struktur-dan-fungsi-jabatan-pada-sebuah-startup', 78, NULL, 'project', 45, 'task', 175, 0),
(892, '2018-07-04 16:28:34', 1, 'updated', 'task', 'Identyfied and Organizing Job Description', 175, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 45, '', 0, 0),
(893, '2018-07-04 16:31:11', 1, 'created', 'project_file', '_file5b3cf64f97642-CEO--Chief-Executive-Officer--Job-Description.docx', 39, NULL, 'project', 45, '', 0, 0),
(894, '2018-07-04 16:55:29', 1, 'created', 'task_comment', 'https://resources.workable.com/ceo-job-description', 79, NULL, 'project', 45, 'task', 175, 0),
(895, '2018-07-04 16:56:45', 1, 'created', 'task_comment', 'https://resources.workable.com/ceo-job-description', 80, NULL, 'project', 45, 'task', 175, 0),
(896, '2018-07-04 16:57:42', 1, 'created', 'task_comment', 'https://www.steverrobbins.com/articles/ceojob/', 81, NULL, 'project', 45, 'task', 175, 0),
(897, '2018-07-04 16:58:02', 1, 'created', 'task_comment', 'https://www.totaljobs.com/careers-advice/job-profile/executive-jobs/ceo-job-description', 82, NULL, 'project', 45, 'task', 175, 0),
(898, '2018-07-04 16:58:25', 1, 'created', 'task_comment', 'https://www.apaitu.net/2013/2489/tugas-ceo-atau-general-manager/', 83, NULL, 'project', 45, 'task', 175, 0),
(899, '2018-07-04 16:58:46', 1, 'created', 'task_comment', 'https://kumparan.com/tiwi-top/tugas-umum-chief-executive-officer-ceo', 84, NULL, 'project', 45, 'task', 175, 0),
(900, '2018-07-07 14:19:27', 1, 'created', 'project_comment', 'List Project yang penawaran :\n2018\n1.Aplikasi Pengaduan PIP =  85jt\n2.Aplikasi Pengaduan dan Survey kepuasan pelanggan BP2IP Barombong = 170jt\n3.Aplikasi SIAKAD UNISMUH = 141 jt\n4.Aplikasi Pangkalan Data DISDIK Wajo = 300-600jt\n\n2019:\n1.SIKO TEMPE = 120jt\n2.COMMAND CENTER DLH = 200jt\n\n', 85, NULL, 'project', 45, '', 0, 0),
(901, '2018-07-08 15:18:25', 54, 'created', 'project_comment', 'Update Sketch HaloNesia', 86, NULL, 'project', 40, '', 0, 0),
(902, '2018-07-08 16:03:35', 48, 'created', 'project_comment', 'skecth fitur', 87, NULL, 'project', 41, '', 0, 0),
(903, '2018-07-08 16:04:08', 48, 'created', 'project_comment', 'Use case ', 88, NULL, 'project', 41, '', 0, 0),
(904, '2018-07-08 16:04:09', 48, 'created', 'project_comment', 'Use case ', 89, NULL, 'project', 41, '', 0, 0),
(905, '2018-07-08 16:04:55', 48, 'created', 'project_comment', 'design figma oleh tim Content & Design', 90, NULL, 'project', 41, '', 0, 0),
(906, '2018-07-08 16:05:14', 48, 'deleted', 'project_comment', 'Use case ', 89, NULL, 'project', 41, NULL, NULL, 0),
(907, '2018-07-09 07:41:56', 54, 'created', 'project_comment', 'Link Desain Interface HaloNesia : https://www.figma.com/file/YTwgO8p3LVvjSodU1p7RGdJn/HaloNesia', 91, NULL, 'project', 40, '', 0, 0),
(908, '2018-07-09 07:45:29', 54, 'created', 'milestone', 'UI/UX Design', 42, NULL, 'project', 40, '', 0, 0),
(909, '2018-07-09 07:46:56', 54, 'created', 'task', 'UI/UX Design', 178, NULL, 'project', 40, '', 0, 0),
(910, '2018-07-09 07:48:29', 54, 'created', 'task_comment', 'Skecthing', 92, NULL, 'project', 40, 'task', 178, 0),
(911, '2018-07-09 07:48:42', 54, 'updated', 'task', 'UI/UX Design', 178, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 40, '', 0, 0),
(912, '2018-07-09 07:49:17', 54, 'updated', 'task', 'UI/UX Design', 178, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:12:\"UI/UX Design\";s:2:\"to\";s:22:\"UI/UX Design Sketching\";}}', 'project', 40, '', 0, 0),
(913, '2018-07-09 07:50:58', 54, 'created', 'task', 'UI/UX Design Visual on Figma', 179, NULL, 'project', 40, '', 0, 0),
(914, '2018-07-09 07:51:51', 54, 'created', 'task_comment', 'Implementasi Sketsa dengan menggunakan Figma ', 93, NULL, 'project', 40, 'task', 179, 0),
(915, '2018-07-09 07:52:26', 54, 'created', 'task_comment', 'Link Desain Interface Figma : https://www.figma.com/file/YTwgO8p3LVvjSodU1p7RGdJn/HaloNesia', 94, NULL, 'project', 40, 'task', 179, 0),
(916, '2018-07-09 07:52:37', 54, 'updated', 'task', 'UI/UX Design Visual on Figma', 179, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 40, '', 0, 0),
(917, '2018-07-09 07:52:45', 54, 'updated', 'task', 'UI/UX Design Visual on Figma', 179, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 40, '', 0, 0),
(918, '2018-07-13 12:20:34', 1, 'created', 'project_file', '_file5b4899118a464-BP2IP-Barombong.pdf', 40, NULL, 'project', 47, '', 0, 0),
(919, '2018-07-17 17:52:44', 14, 'created', 'task', 'Business Development', 180, NULL, 'project', 45, '', 0, 0),
(920, '2018-07-17 17:52:58', 14, 'updated', 'task', 'Business Development', 180, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"14\";}}', 'project', 45, '', 0, 0),
(921, '2018-07-17 17:54:07', 14, 'updated', 'task', 'Business Development', 180, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:20:\"Business Development\";s:2:\"to\";s:28:\"Business Process Improvement\";}s:11:\"description\";a:2:{s:4:\"from\";s:30:\"Master plan Growth Hack 4nesia\";s:2:\"to\";s:24:\"Membuat BPI untuk 4nesia\";}}', 'project', 45, '', 0, 0),
(922, '2018-07-20 07:53:29', 1, 'created', 'task_comment', 'mantap @[Hansa Mustada :14] ', 95, NULL, 'project', 45, 'task', 180, 0),
(923, '2018-07-20 08:16:49', 1, 'created', 'milestone', 'PMB', 43, NULL, 'project', 43, '', 0, 0),
(924, '2018-07-20 08:34:14', 1, 'created', 'task', 'Analisis Fitur', 181, NULL, 'project', 43, '', 0, 0),
(925, '2018-07-20 08:34:51', 1, 'created', 'task', 'Presentasi Project', 182, NULL, 'project', 43, '', 0, 0),
(926, '2018-07-20 08:35:24', 1, 'created', 'task', 'PMB', 183, NULL, 'project', 43, '', 0, 0),
(927, '2018-07-20 08:35:49', 1, 'created', 'task', 'Master Data', 184, NULL, 'project', 43, '', 0, 0),
(928, '2018-07-20 08:36:03', 1, 'created', 'task', 'Modul KRS', 185, NULL, 'project', 43, '', 0, 0),
(929, '2018-07-20 08:36:20', 1, 'created', 'task', 'Modul KHS', 186, NULL, 'project', 43, '', 0, 0),
(930, '2018-07-20 08:36:38', 1, 'created', 'task', 'Modul Absensi', 187, NULL, 'project', 43, '', 0, 0),
(931, '2018-07-20 08:37:12', 1, 'created', 'task', 'Modul Keuangan', 188, NULL, 'project', 43, '', 0, 0),
(932, '2018-07-20 08:37:46', 1, 'created', 'task', 'Modul Wisuda', 189, NULL, 'project', 43, '', 0, 0),
(933, '2018-08-22 15:49:32', 23, 'created', 'milestone', 'SIAKAD : MASTER DATA', 44, NULL, 'project', 48, '', 0, 1),
(934, '2018-08-22 15:53:03', 23, 'created', 'milestone', 'Requirement Gathering', 45, NULL, 'project', 43, '', 0, 0),
(935, '2018-08-22 15:53:40', 23, 'created', 'milestone', 'Perencanaan Konsep', 46, NULL, 'project', 43, '', 0, 0),
(936, '2018-08-22 15:54:07', 23, 'updated', 'milestone', 'Requirement Gathering', 45, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-06-01\";s:2:\"to\";s:10:\"2018-07-23\";}}', 'project', 43, '', 0, 0),
(937, '2018-08-22 15:54:34', 23, 'updated', 'milestone', 'Perencanaan Konsep', 46, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-01\";s:2:\"to\";s:10:\"2018-07-09\";}}', 'project', 43, '', 0, 0),
(938, '2018-08-22 15:55:08', 23, 'created', 'milestone', 'SIAKAD : MASTER DATA', 47, NULL, 'project', 43, '', 0, 0),
(939, '2018-08-22 15:56:07', 23, 'updated', 'milestone', 'SIAKAD : MASTER DATA', 47, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-08-01\";s:2:\"to\";s:10:\"2018-11-01\";}}', 'project', 43, '', 0, 0),
(940, '2018-08-22 15:56:26', 23, 'created', 'milestone', 'SIAKAD : KRS ', 48, NULL, 'project', 43, '', 0, 0),
(941, '2018-08-22 15:56:51', 23, 'created', 'milestone', 'SIAKAD : KHS', 49, NULL, 'project', 43, '', 0, 0),
(942, '2018-08-22 15:57:40', 23, 'created', 'milestone', 'SIAKAD : PROFIL', 50, NULL, 'project', 43, '', 0, 0),
(943, '2018-08-22 15:58:08', 23, 'created', 'milestone', 'SIAKAD : PRESENSI', 51, NULL, 'project', 43, '', 0, 0),
(944, '2018-08-22 15:58:47', 23, 'created', 'milestone', 'SIAKAD : TUGAS AKHIR ', 52, NULL, 'project', 43, '', 0, 0),
(945, '2018-08-22 15:59:13', 23, 'created', 'milestone', 'SIAKAD : WISUDA ', 53, NULL, 'project', 43, '', 0, 0),
(946, '2018-08-22 15:59:47', 23, 'created', 'milestone', 'SIAKAD : BEASISWA', 54, NULL, 'project', 43, '', 0, 0),
(947, '2018-08-22 16:02:34', 23, 'created', 'milestone', 'SIAKAD : JADWAL PERKULIAHAN', 55, NULL, 'project', 43, '', 0, 0),
(948, '2018-08-22 16:04:19', 23, 'created', 'milestone', 'SIAKAD : PENGAJUAN CUTI', 56, NULL, 'project', 43, '', 0, 0),
(949, '2018-08-22 16:05:32', 23, 'created', 'milestone', 'SIAKAD : DISPENSASI', 57, NULL, 'project', 43, '', 0, 0),
(950, '2018-08-22 16:06:57', 23, 'created', 'milestone', 'SIAKAD : KEUANGAN ', 58, NULL, 'project', 43, '', 0, 0),
(951, '2018-08-22 16:07:07', 23, 'updated', 'milestone', 'SIAKAD : KEUANGAN ', 58, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2019-07-28\";s:2:\"to\";s:10:\"2019-08-18\";}}', 'project', 43, '', 0, 0),
(952, '2018-08-22 16:07:39', 23, 'created', 'milestone', 'Lembar Kerja Dosen ', 59, NULL, 'project', 43, '', 0, 0),
(953, '2018-08-22 16:08:24', 23, 'created', 'milestone', 'Website Informasi ', 60, NULL, 'project', 43, '', 0, 0),
(954, '2018-08-22 16:12:12', 23, 'created', 'task', 'Requirement Gathering', 190, NULL, 'project', 43, '', 0, 0),
(955, '2018-08-22 16:13:17', 23, 'created', 'task', 'Perencanaan Konsep', 191, NULL, 'project', 43, '', 0, 0),
(956, '2018-08-22 16:13:29', 23, 'updated', 'task', 'Perencanaan Konsep', 191, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 43, '', 0, 0),
(957, '2018-08-22 16:13:37', 23, 'updated', 'task', 'Requirement Gathering', 190, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 43, '', 0, 0),
(958, '2018-08-22 16:14:33', 23, 'updated', 'milestone', 'Perencanaan Konsep', 46, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-09\";s:2:\"to\";s:10:\"2018-07-23\";}}', 'project', 43, '', 0, 0),
(959, '2018-08-22 16:14:44', 23, 'updated', 'milestone', 'Requirement Gathering', 45, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-07-23\";s:2:\"to\";s:10:\"2018-07-09\";}}', 'project', 43, '', 0, 0),
(960, '2018-08-22 16:15:04', 23, 'updated', 'task', 'Requirement Gathering', 190, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-07-16\";s:2:\"to\";s:10:\"2018-07-05\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-07-23\";s:2:\"to\";s:10:\"2018-07-09\";}}', 'project', 43, '', 0, 0),
(961, '2018-08-22 16:15:17', 23, 'updated', 'task', 'Perencanaan Konsep', 191, 'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-07-05\";s:2:\"to\";s:10:\"2018-07-16\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-07-09\";s:2:\"to\";s:10:\"2018-07-23\";}}', 'project', 43, '', 0, 0),
(962, '2018-08-22 16:17:12', 23, 'created', 'task', 'SIAKAD : MASTER DATA', 192, NULL, 'project', 43, '', 0, 0),
(963, '2018-08-22 16:18:43', 23, 'created', 'task', 'SIAKAD : KRS ', 193, NULL, 'project', 43, '', 0, 0),
(964, '2018-08-22 16:19:27', 23, 'updated', 'task', 'SIAKAD : KRS ', 193, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:1:\"8\";s:2:\"to\";s:4:\"8,14\";}}', 'project', 43, '', 0, 0),
(965, '2018-08-22 16:21:34', 23, 'created', 'task', 'SIAKAD : KHS', 194, NULL, 'project', 43, '', 0, 0),
(966, '2018-08-22 16:23:17', 23, 'created', 'task', 'SIAKAD : PROFIL', 195, NULL, 'project', 43, '', 0, 0),
(967, '2018-08-22 16:30:53', 23, 'created', 'task', 'SIAKAD : PRESENSI', 196, NULL, 'project', 43, '', 0, 0),
(968, '2018-08-22 16:32:22', 23, 'updated', 'task', 'Perencanaan Konsep', 191, 'a:1:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-07-16\";s:2:\"to\";s:10:\"2018-07-10\";}}', 'project', 43, '', 0, 0),
(969, '2018-08-22 16:34:08', 23, 'created', 'task', 'SIAKAD : TUGAS AKHIR ', 197, NULL, 'project', 43, '', 0, 0),
(970, '2018-08-22 16:35:51', 23, 'created', 'task', 'SIAKAD : WISUDA ', 198, NULL, 'project', 43, '', 0, 0),
(971, '2018-08-22 16:38:52', 23, 'created', 'task', 'SIAKAD : JADWAL PERKULIAHAN', 199, NULL, 'project', 43, '', 0, 0),
(972, '2018-08-22 16:40:21', 23, 'created', 'task', 'SIAKAD : PENGAJUAN CUTI', 200, NULL, 'project', 43, '', 0, 0),
(973, '2018-08-22 16:43:35', 23, 'created', 'task', 'SIAKAD : DISPENSASI', 201, NULL, 'project', 43, '', 0, 0),
(974, '2018-08-22 16:45:24', 23, 'created', 'task', 'SIAKAD : KEUANGAN ', 202, NULL, 'project', 43, '', 0, 0),
(975, '2018-08-22 16:46:39', 23, 'created', 'task', 'Lembar Kerja Dosen ', 203, NULL, 'project', 43, '', 0, 0),
(976, '2018-08-22 16:47:46', 23, 'created', 'task', 'Website Informasi ', 204, NULL, 'project', 43, '', 0, 0),
(977, '2018-08-22 16:49:29', 23, 'updated', 'task', 'Civitas : Data Dosen', 143, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10300000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(978, '2018-08-22 16:49:33', 23, 'updated', 'task', 'Civitas : Data Dosen', 143, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10300000\";s:2:\"to\";s:8:\"10150000\";}}', 'project', 32, '', 0, 0),
(979, '2018-08-22 16:50:35', 23, 'created', 'milestone', 'PENGUJIAN & EVALUASI SISTEM', 61, NULL, 'project', 43, '', 0, 0),
(980, '2018-08-22 16:50:52', 23, 'updated', 'milestone', 'PENGUJIAN & EVALUASI SISTEM', 61, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2019-10-27\";s:2:\"to\";s:10:\"2019-09-22\";}}', 'project', 43, '', 0, 0),
(981, '2018-08-22 16:51:23', 23, 'created', 'milestone', 'DOKUMENTASI & CLOSING', 62, NULL, 'project', 43, '', 0, 0),
(982, '2018-08-22 16:53:07', 23, 'created', 'task', 'PENGUJIAN & EVALUASI SISTEM', 205, NULL, 'project', 43, '', 0, 0),
(983, '2018-08-22 16:53:56', 23, 'created', 'task', 'DOKUMENTASI & CLOSING', 206, NULL, 'project', 43, '', 0, 0),
(984, '2018-08-22 16:55:53', 23, 'created', 'task', 'SIAKAD : BEASISWA', 207, NULL, 'project', 43, '', 0, 0),
(985, '2018-08-22 16:59:25', 23, 'created', 'milestone', 'Analisis Fitur', 63, NULL, 'project', 43, '', 0, 0),
(986, '2018-08-22 17:00:10', 23, 'created', 'milestone', 'Presentasi Project', 64, NULL, 'project', 43, '', 0, 0),
(987, '2018-08-22 17:00:53', 23, 'created', 'task', 'Presentasi Project', 208, NULL, 'project', 43, '', 0, 0),
(988, '2018-08-22 17:01:11', 23, 'updated', 'task', 'Presentasi Project', 208, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 43, '', 0, 0),
(989, '2018-08-22 17:02:54', 23, 'created', 'task', 'Analisis Fitur', 209, NULL, 'project', 43, '', 0, 0),
(990, '2018-08-22 17:03:28', 23, 'updated', 'task', 'Analisis Fitur', 209, 'a:3:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-07-14\";s:2:\"to\";s:10:\"2018-07-07\";}s:8:\"deadline\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2018-07-14\";}}', 'project', 43, '', 0, 0),
(991, '2018-08-22 17:04:59', 23, 'created', 'task', 'Presentasi Project', 210, NULL, 'project', 43, '', 0, 0),
(992, '2018-08-22 17:07:40', 23, 'created', 'task', 'Perencanaan Konsep', 211, NULL, 'project', 43, '', 0, 0),
(993, '2018-08-22 17:08:48', 23, 'created', 'task', 'Requirement Gathering', 212, NULL, 'project', 43, '', 0, 0),
(994, '2018-08-22 17:09:53', 23, 'updated', 'task', 'Perencanaan Konsep', 211, 'a:1:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-07-17\";s:2:\"to\";s:10:\"2018-07-10\";}}', 'project', 43, '', 0, 0),
(995, '2018-08-22 17:10:35', 23, 'updated', 'task', 'Requirement Gathering', 212, 'a:1:{s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-08-09\";s:2:\"to\";s:10:\"2018-07-09\";}}', 'project', 43, '', 0, 0),
(996, '2018-08-25 11:47:00', 1, 'deleted', 'task', 'Lembar Kerja Dosen ', 203, NULL, 'project', 43, NULL, NULL, 0),
(997, '2018-08-25 11:47:03', 1, 'deleted', 'task', 'Website Informasi ', 204, NULL, 'project', 43, NULL, NULL, 0),
(998, '2018-08-25 11:47:32', 1, 'deleted', 'milestone', 'Website Informasi ', 60, NULL, 'project', 43, NULL, NULL, 0),
(999, '2018-08-25 11:47:42', 1, 'deleted', 'milestone', 'Lembar Kerja Dosen ', 59, NULL, 'project', 43, NULL, NULL, 0),
(1000, '2018-08-25 11:47:50', 1, 'deleted', 'milestone', 'SIAKAD : DISPENSASI', 57, NULL, 'project', 43, NULL, NULL, 0),
(1001, '2018-08-25 11:47:53', 1, 'deleted', 'milestone', 'SIAKAD : BEASISWA', 54, NULL, 'project', 43, NULL, NULL, 0),
(1002, '2018-08-25 11:48:32', 1, 'deleted', 'task', 'SIAKAD : BEASISWA', 207, NULL, 'project', 43, NULL, NULL, 0),
(1003, '2018-09-02 06:01:07', 8, 'updated', 'task', 'Data Pimpinan', 138, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1004, '2018-09-02 06:01:14', 8, 'updated', 'task', 'Data Matakuliah', 139, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1005, '2018-09-02 06:01:19', 8, 'updated', 'task', 'Data Tahun Ajaran', 140, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10050000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1006, '2018-09-02 06:01:21', 8, 'updated', 'task', 'Data Kelas', 141, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10025000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1007, '2018-09-02 06:01:23', 8, 'updated', 'task', 'Civitas : Data Mahasiswa', 144, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10012500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1008, '2018-09-02 06:01:57', 8, 'updated', 'task', 'Design UI/UX', 100, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:12:\"Design UI/UX\";s:2:\"to\";s:23:\"Design UI/UX LKD Online\";}}', 'project', 32, '', 0, 0),
(1009, '2018-09-02 06:06:54', 8, 'created', 'task', 'Status KRS', 213, NULL, 'project', 32, '', 0, 0),
(1010, '2018-09-02 06:07:17', 8, 'updated', 'task', 'Status KRS', 213, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:10:\"Status KRS\";s:2:\"to\";s:15:\"KRS: Status KRS\";}}', 'project', 32, '', 0, 0),
(1011, '2018-09-02 06:07:45', 8, 'created', 'task', 'KRS: ACC KRS', 214, NULL, 'project', 32, '', 0, 0),
(1012, '2018-09-02 06:08:12', 8, 'created', 'task', 'KRS: Jadwal KRS', 215, NULL, 'project', 32, '', 0, 0),
(1013, '2018-09-02 06:08:40', 8, 'created', 'task', 'KRS: Master KRS - Data Matkul', 216, NULL, 'project', 32, '', 0, 0),
(1014, '2018-09-02 06:08:51', 8, 'updated', 'task', 'KRS: Master KRS - Data Matkul', 216, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:6:\"100215\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1015, '2018-09-02 06:09:10', 8, 'created', 'task', 'KRS: Master KRS - Registrasi Matkul', 217, NULL, 'project', 32, '', 0, 0),
(1016, '2018-09-02 06:09:34', 8, 'created', 'task', 'KRS: Kelas Matkul', 218, NULL, 'project', 32, '', 0, 0),
(1017, '2018-09-02 06:11:55', 8, 'updated', 'task', 'KRS: Status KRS', 213, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1018, '2018-09-02 06:13:07', 8, 'updated', 'task', 'Design UI/UX LKD Online', 100, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:23:\"admin,dekan,dosen,prodi\";}}', 'project', 32, '', 0, 0),
(1019, '2018-09-02 06:13:49', 8, 'updated', 'task', 'Input Data LKD', 102, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"dosen\";}}', 'project', 32, '', 0, 0),
(1020, '2018-09-02 06:16:32', 8, 'updated', 'task', 'KRS: ACC KRS', 214, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"admin,dosen\";}}', 'project', 32, '', 0, 0),
(1021, '2018-09-02 06:16:50', 8, 'updated', 'task', 'KRS: Kelas Matkul', 218, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1022, '2018-09-02 06:17:10', 8, 'updated', 'task', 'Delete Data LKD', 103, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"admin,dosen\";}}', 'project', 32, '', 0, 0),
(1023, '2018-09-02 06:18:35', 8, 'created', 'task', 'Perkuliahan: Presensi Dosen', 219, NULL, 'project', 32, '', 0, 0),
(1024, '2018-09-02 06:21:28', 8, 'updated', 'task', 'Perkuliahan: Presensi Dosen', 219, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:4:\"-355\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1025, '2018-09-02 06:21:57', 8, 'updated', 'task', 'List Data LKD', 104, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"admin,dosen\";}}', 'project', 32, '', 0, 0),
(1026, '2018-09-02 06:22:22', 8, 'updated', 'task', 'Export Data LKD', 105, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"dosen,admin\";}}', 'project', 32, '', 0, 0),
(1027, '2018-09-02 06:23:02', 8, 'updated', 'task', 'Save Data LKD', 106, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:13:\"Save Data LKD\";s:2:\"to\";s:18:\"LKD: Save Data LKD\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"dosen\";}}', 'project', 32, '', 0, 0),
(1028, '2018-09-02 06:23:18', 8, 'updated', 'task', 'Input Data LKD', 102, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:14:\"Input Data LKD\";s:2:\"to\";s:19:\"LKD: Input Data LKD\";}}', 'project', 32, '', 0, 0),
(1029, '2018-09-02 06:23:34', 8, 'updated', 'task', 'Delete Data LKD', 103, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"Delete Data LKD\";s:2:\"to\";s:20:\"LKD: Delete Data LKD\";}}', 'project', 32, '', 0, 0),
(1030, '2018-09-02 06:23:48', 8, 'updated', 'task', 'List Data LKD', 104, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:13:\"List Data LKD\";s:2:\"to\";s:18:\"LKD: List Data LKD\";}}', 'project', 32, '', 0, 0),
(1031, '2018-09-02 06:24:07', 8, 'updated', 'task', 'Export Data LKD', 105, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"Export Data LKD\";s:2:\"to\";s:20:\"LKD: Export Data LKD\";}}', 'project', 32, '', 0, 0),
(1032, '2018-09-02 06:24:47', 8, 'updated', 'task', 'Online Signature', 107, 'a:3:{s:5:\"title\";a:2:{s:4:\"from\";s:16:\"Online Signature\";s:2:\"to\";s:21:\"LKD: Online Signature\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:18:\"dekan,prodi,rektor\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"8\";}}', 'project', 32, '', 0, 0),
(1033, '2018-09-02 06:25:23', 8, 'updated', 'task', 'View LKD ', 108, 'a:3:{s:5:\"title\";a:2:{s:4:\"from\";s:9:\"View LKD \";s:2:\"to\";s:14:\"LKD: View LKD \";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:17:\"dekan,prodi,dosen\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"8\";}}', 'project', 32, '', 0, 0),
(1034, '2018-09-02 06:27:40', 8, 'updated', 'task', 'LKD Rektor', 133, 'a:3:{s:5:\"title\";a:2:{s:4:\"from\";s:10:\"LKD Rektor\";s:2:\"to\";s:15:\"LKD: LKD Rektor\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:6:\"rektor\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"8\";}}', 'project', 32, '', 0, 0),
(1035, '2018-09-02 06:28:55', 8, 'updated', 'task', 'Master Pusat Perguruan Tinggi', 134, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:29:\"Master Pusat Perguruan Tinggi\";s:2:\"to\";s:42:\"Master Data: Master Pusat Perguruan Tinggi\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1036, '2018-09-02 06:29:24', 8, 'updated', 'task', 'Data Gedung & Ruangan `', 135, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:23:\"Data Gedung & Ruangan `\";s:2:\"to\";s:36:\"Master Data: Data Gedung & Ruangan `\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1037, '2018-09-02 06:30:12', 8, 'updated', 'task', 'Civitas : Data Mahasiswa', 144, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:24:\"Civitas : Data Mahasiswa\";s:2:\"to\";s:38:\"Master Data : Civitas - Data Mahasiswa\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1038, '2018-09-02 06:31:47', 23, 'updated', 'task', 'Desain Database LKD', 101, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1039, '2018-09-02 06:32:12', 23, 'updated', 'task', 'Data Kelas', 141, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1040, '2018-09-02 06:32:33', 8, 'updated', 'task', 'Data Kelas', 141, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:10:\"Data Kelas\";s:2:\"to\";s:34:\"Master Data: Akademik - Data Kelas\";}}', 'project', 32, '', 0, 0),
(1041, '2018-09-02 06:32:45', 23, 'updated', 'task', 'Data Tahun Ajaran', 140, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"admin,prodi\";}}', 'project', 32, '', 0, 0),
(1042, '2018-09-02 06:33:16', 8, 'updated', 'task', 'Data Tahun Ajaran', 140, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:17:\"Data Tahun Ajaran\";s:2:\"to\";s:39:\"Master Data: Akademik-Data Tahun Ajaran\";}}', 'project', 32, '', 0, 0),
(1043, '2018-09-02 06:33:17', 23, 'updated', 'task', 'LKD Dosen', 131, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1044, '2018-09-02 06:33:47', 23, 'updated', 'task', 'Data Pimpinan', 138, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1045, '2018-09-02 06:33:56', 8, 'updated', 'task', 'LKD Dosen', 131, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:9:\"LKD Dosen\";s:2:\"to\";s:14:\"LKD: LKD Dosen\";}s:6:\"labels\";a:2:{s:4:\"from\";s:5:\"admin\";s:2:\"to\";s:5:\"dosen\";}}', 'project', 32, '', 0, 0),
(1046, '2018-09-02 06:34:16', 23, 'updated', 'task', 'Data Prodi', 147, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"admin,prodi\";}}', 'project', 32, '', 0, 0),
(1047, '2018-09-02 06:34:26', 8, 'updated', 'task', 'LKD Dekan', 132, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:9:\"LKD Dekan\";s:2:\"to\";s:14:\"LKD: LKD Dekan\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"dekan\";}}', 'project', 32, '', 0, 0),
(1048, '2018-09-02 06:34:54', 23, 'updated', 'task', 'Civitas : Data Dosen', 143, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"admin,prodi\";}}', 'project', 32, '', 0, 0),
(1049, '2018-09-02 06:35:20', 23, 'updated', 'task', 'Data Fakultas', 136, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1050, '2018-09-02 06:35:46', 23, 'updated', 'task', 'Data Pegawai', 142, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:11:\"admin,prodi\";}}', 'project', 32, '', 0, 0),
(1051, '2018-09-02 06:36:52', 8, 'updated', 'task', 'Data Pimpinan', 138, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:13:\"Data Pimpinan\";s:2:\"to\";s:36:\"Master Data: Civitas - Data Pimpinan\";}}', 'project', 32, '', 0, 0),
(1052, '2018-09-02 06:37:26', 23, 'updated', 'task', 'KRS: Master KRS - Registrasi Matkul', 217, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1053, '2018-09-02 06:37:42', 23, 'updated', 'task', 'Civitas : Data Staff', 145, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1054, '2018-09-02 06:38:05', 23, 'updated', 'task', 'Civitas : Data Staff', 145, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:5:\"admin\";s:2:\"to\";s:11:\"admin,prodi\";}}', 'project', 32, '', 0, 0),
(1055, '2018-09-02 06:38:26', 8, 'updated', 'task', 'Data Matakuliah', 139, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"Data Matakuliah\";s:2:\"to\";s:42:\"Master Data: Mata Kuliah - Data Matakuliah\";}s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1056, '2018-09-02 06:38:37', 23, 'updated', 'task', 'KRS: Jadwal KRS', 215, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:21:\"admin,prodi,mahasiswa\";}}', 'project', 32, '', 0, 0),
(1057, '2018-09-02 06:39:17', 8, 'updated', 'task', 'Data Pegawai', 142, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:12:\"Data Pegawai\";s:2:\"to\";s:40:\"Master Data: Civitas- Data Pegawai/Staff\";}s:6:\"labels\";a:2:{s:4:\"from\";s:11:\"admin,prodi\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1058, '2018-09-02 06:39:17', 23, 'updated', 'task', 'KRS: Master KRS - Data Matkul', 216, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1059, '2018-09-02 06:41:57', 23, 'updated', 'task', 'Civitas : Data Dosen', 143, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:20:\"Civitas : Data Dosen\";s:2:\"to\";s:33:\"Master Data- Civitas : Data Dosen\";}}', 'project', 32, '', 0, 0),
(1060, '2018-09-02 06:41:57', 8, 'updated', 'task', 'Civitas : Data Dosen', 143, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:20:\"Civitas : Data Dosen\";s:2:\"to\";s:33:\"Master Data: Civitas - Data Dosen\";}}', 'project', 32, '', 0, 0),
(1061, '2018-09-02 06:42:34', 8, 'updated', 'task', 'Data Prodi', 147, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:10:\"Data Prodi\";s:2:\"to\";s:38:\"Master Data: Master Pusat - Data Prodi\";}s:6:\"labels\";a:2:{s:4:\"from\";s:11:\"admin,prodi\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1062, '2018-09-02 06:43:00', 8, 'updated', 'task', 'Master Data- Civitas : Data Dosen', 143, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:33:\"Master Data- Civitas : Data Dosen\";s:2:\"to\";s:33:\"Master Data: Civitas - Data Dosen\";}}', 'project', 32, '', 0, 0),
(1063, '2018-09-02 06:45:51', 8, 'updated', 'task', 'Master Data: Civitas- Data Pegawai/Staff', 142, 'a:2:{s:5:\"title\";a:2:{s:4:\"from\";s:40:\"Master Data: Civitas- Data Pegawai/Staff\";s:2:\"to\";s:39:\"Master Data: Civitas- Data Akun Pegawai\";}s:11:\"description\";a:2:{s:4:\"from\";s:71:\"1. Tambah Data Pegawai\n2. Kelola List Data Pegawai (Edit, Hapus, Save)\n\";s:2:\"to\";s:94:\"1. Tambah Data Akun Pegawai\n2. Kelola List Data Pegawai (Edit, Hapus, Save)\n3. Edit Role User\n\";}}', 'project', 32, '', 0, 0),
(1064, '2018-09-02 06:46:21', 23, 'updated', 'task', 'Civitas : Data Staff', 145, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:20:\"Civitas : Data Staff\";s:2:\"to\";s:33:\"Master Data: Civitas - Data Staff\";}}', 'project', 32, '', 0, 0),
(1065, '2018-09-02 06:49:24', 8, 'updated', 'task', 'Master Data: Master Pusat Perguruan Tinggi', 134, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:42:\"Master Data: Master Pusat Perguruan Tinggi\";s:2:\"to\";s:44:\"Master Data: Master Pusat - Perguruan Tinggi\";}}', 'project', 32, '', 0, 0),
(1066, '2018-09-02 06:50:03', 23, 'created', 'task', 'Master Data: Master Pusat Perguruan Tinggi - Data Fakultas ', 220, NULL, 'project', 32, '', 0, 0),
(1067, '2018-09-02 06:50:45', 23, 'updated', 'task', 'Master Data: Master Pusat Perguruan Tinggi - Data Fakultas ', 220, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(1068, '2018-09-02 06:51:18', 8, 'updated', 'task', 'Master Data: Data Gedung & Ruangan `', 135, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:36:\"Master Data: Data Gedung & Ruangan `\";s:2:\"to\";s:47:\"Master Data: Akademik - Data Gedung & Ruangan `\";}}', 'project', 32, '', 0, 0),
(1069, '2018-09-02 06:52:41', 23, 'created', 'task', 'Master Data: Master Pusat - Pimpinan ', 221, NULL, 'project', 32, '', 0, 0),
(1070, '2018-09-02 06:54:49', 23, 'updated', 'task', 'Master Data: Master Pusat Perguruan Tinggi - Data Fakultas ', 220, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:59:\"Master Data: Master Pusat Perguruan Tinggi - Data Fakultas \";s:2:\"to\";s:42:\"Master Data: Master Pusat - Data Fakultas \";}}', 'project', 32, '', 0, 0),
(1071, '2018-09-02 06:54:50', 8, 'updated', 'task', 'Master Data: Master Pusat - Data Fakultas ', 220, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:42:\"Master Data: Master Pusat - Data Fakultas \";s:2:\"to\";s:44:\"Master Data: Master Pusat - Perguruan Tinggi\";}}', 'project', 32, '', 0, 0),
(1072, '2018-09-02 06:55:45', 23, 'updated', 'task', 'Master Data: Master Pusat - Data Prodi', 147, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10200000\";s:2:\"to\";s:7:\"9999000\";}}', 'project', 32, '', 0, 0),
(1073, '2018-09-02 06:55:45', 8, 'updated', 'task', 'LKD: LKD Dosen', 131, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:8:\"10000000\";}}', 'project', 32, '', 0, 0),
(1074, '2018-09-02 06:55:56', 23, 'updated', 'task', 'Master Data: Master Pusat - Perguruan Tinggi', 220, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9998500\";}}', 'project', 32, '', 0, 0),
(1075, '2018-09-02 06:56:11', 23, 'updated', 'task', 'Master Data: Master Pusat - Perguruan Tinggi', 134, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9998750\";}}', 'project', 32, '', 0, 0),
(1076, '2018-09-02 06:56:23', 8, 'updated', 'task', 'Master Data: Master Pusat - Data Prodi', 147, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:38:\"Master Data: Master Pusat - Data Prodi\";s:2:\"to\";s:41:\"Master Data: Master Pusat - Program Studi\";}}', 'project', 32, '', 0, 0),
(1077, '2018-09-02 06:56:51', 23, 'deleted', 'task', 'Master Data: Master Pusat - Perguruan Tinggi', 220, NULL, 'project', 32, NULL, NULL, 0),
(1078, '2018-09-02 06:59:26', 23, 'updated', 'task', 'Data Fakultas', 136, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:13:\"Data Fakultas\";s:2:\"to\";s:41:\"Master Data: Master Pusat - Data Fakultas\";}}', 'project', 32, '', 0, 0),
(1079, '2018-09-02 06:59:46', 23, 'updated', 'task', 'Design UI/UX LKD Online', 100, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999500\";s:2:\"to\";s:7:\"9999750\";}}', 'project', 32, '', 0, 0),
(1080, '2018-09-02 07:00:08', 23, 'updated', 'task', 'Master Data: Master Pusat - Data Fakultas', 136, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999250\";}}', 'project', 32, '', 0, 0),
(1081, '2018-09-02 07:00:29', 23, 'updated', 'task', 'Master Data: Akademik - Data Gedung & Ruangan `', 135, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10000000\";s:2:\"to\";s:7:\"9999375\";}}', 'project', 32, '', 0, 0),
(1082, '2018-09-02 07:01:46', 23, 'updated', 'task', 'Master Data: Akademik - Data Kelas', 141, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10025000\";s:2:\"to\";s:9:\"9999437.5\";}}', 'project', 32, '', 0, 0),
(1083, '2018-09-02 07:02:13', 23, 'updated', 'task', 'Master Data: Akademik-Data Tahun Ajaran', 140, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10050000\";s:2:\"to\";s:10:\"9999406.25\";}}', 'project', 32, '', 0, 0),
(1084, '2018-09-02 07:02:38', 23, 'updated', 'task', 'Master Data: Mata Kuliah - Data Matakuliah', 139, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:42:\"Master Data: Mata Kuliah - Data Matakuliah\";s:2:\"to\";s:39:\"Master Data: Akademik - Data Matakuliah\";}}', 'project', 32, '', 0, 0);
INSERT INTO `activity_logs` (`id`, `created_at`, `created_by`, `action`, `log_type`, `log_type_title`, `log_type_id`, `changes`, `log_for`, `log_for_id`, `log_for2`, `log_for_id2`, `deleted`) VALUES
(1085, '2018-09-02 07:03:09', 23, 'updated', 'task', 'Master Data: Akademik - Data Matakuliah', 139, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:7:\"9999625\";}}', 'project', 32, '', 0, 0),
(1086, '2018-09-02 07:05:46', 23, 'updated', 'task', 'Master Data: Akademik - Data Matakuliah', 139, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:7:\"9999625\";s:2:\"to\";s:10:\"9999468.75\";}}', 'project', 32, '', 0, 0),
(1087, '2018-09-02 07:07:42', 23, 'updated', 'task', 'Master Data : Civitas - Data Mahasiswa', 144, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10012500\";s:2:\"to\";s:11:\"9999484.375\";}}', 'project', 32, '', 0, 0),
(1088, '2018-09-02 07:08:11', 23, 'updated', 'task', 'Master Data: Civitas - Data Pimpinan', 138, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:12:\"9999492.1875\";}}', 'project', 32, '', 0, 0),
(1089, '2018-09-02 07:08:49', 23, 'updated', 'task', 'Master Data: Civitas- Data Akun Pegawai', 142, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10100000\";s:2:\"to\";s:13:\"9999496.09375\";}}', 'project', 32, '', 0, 0),
(1090, '2018-09-02 07:10:28', 23, 'updated', 'task', 'Master Data: Civitas - Data Dosen', 143, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:8:\"10150000\";s:2:\"to\";s:14:\"9999498.046875\";}}', 'project', 32, '', 0, 0),
(1091, '2018-09-02 07:11:09', 23, 'updated', 'task', 'Master Data: Civitas - Data Staff', 145, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:11:\"admin,prodi\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1092, '2018-09-02 07:12:22', 23, 'updated', 'task', 'KRS: Status KRS', 213, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:5:\"admin\";s:2:\"to\";s:15:\"admin,mahasiswa\";}}', 'project', 32, '', 0, 0),
(1093, '2018-09-02 07:14:37', 23, 'updated', 'task', 'KRS: Status KRS', 213, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"KRS: Status KRS\";s:2:\"to\";s:25:\"Akademik: KRS: Status KRS\";}}', 'project', 32, '', 0, 0),
(1094, '2018-09-02 07:14:57', 23, 'updated', 'task', 'KRS: ACC KRS', 214, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:12:\"KRS: ACC KRS\";s:2:\"to\";s:22:\"Akademik: KRS: ACC KRS\";}}', 'project', 32, '', 0, 0),
(1095, '2018-09-02 07:15:26', 23, 'updated', 'task', 'KRS: Jadwal KRS', 215, 'a:3:{s:5:\"title\";a:2:{s:4:\"from\";s:15:\"KRS: Jadwal KRS\";s:2:\"to\";s:25:\"Akademik: KRS: Jadwal KRS\";}s:6:\"points\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}s:6:\"labels\";a:2:{s:4:\"from\";s:21:\"admin,prodi,mahasiswa\";s:2:\"to\";s:15:\"admin,mahasiswa\";}}', 'project', 32, '', 0, 0),
(1096, '2018-09-02 07:16:17', 23, 'updated', 'task', 'KRS: Master KRS - Data Matkul', 216, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:29:\"KRS: Master KRS - Data Matkul\";s:2:\"to\";s:39:\"Akademik: KRS: Master KRS - Data Matkul\";}}', 'project', 32, '', 0, 0),
(1097, '2018-09-02 07:16:39', 23, 'updated', 'task', 'Akademik: KRS: Status KRS', 213, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:25:\"Akademik: KRS: Status KRS\";s:2:\"to\";s:26:\"Akademika: KRS: Status KRS\";}}', 'project', 32, '', 0, 0),
(1098, '2018-09-02 07:16:49', 23, 'updated', 'task', 'Akademik: KRS: ACC KRS', 214, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:22:\"Akademik: KRS: ACC KRS\";s:2:\"to\";s:23:\"Akademika: KRS: ACC KRS\";}}', 'project', 32, '', 0, 0),
(1099, '2018-09-02 07:17:02', 23, 'updated', 'task', 'Akademik: KRS: Jadwal KRS', 215, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:25:\"Akademik: KRS: Jadwal KRS\";s:2:\"to\";s:26:\"Akademika: KRS: Jadwal KRS\";}}', 'project', 32, '', 0, 0),
(1100, '2018-09-02 07:17:17', 23, 'updated', 'task', 'Akademik: KRS: Master KRS - Data Matkul', 216, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:39:\"Akademik: KRS: Master KRS - Data Matkul\";s:2:\"to\";s:40:\"Akademika: KRS: Master KRS - Data Matkul\";}}', 'project', 32, '', 0, 0),
(1101, '2018-09-02 07:17:39', 23, 'updated', 'task', 'KRS: Master KRS - Registrasi Matkul', 217, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:35:\"KRS: Master KRS - Registrasi Matkul\";s:2:\"to\";s:46:\"Akademika: KRS: Master KRS - Registrasi Matkul\";}}', 'project', 32, '', 0, 0),
(1102, '2018-09-02 07:18:25', 23, 'updated', 'task', 'KRS: Kelas Matkul', 218, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:17:\"KRS: Kelas Matkul\";s:2:\"to\";s:28:\"Akademika: KRS: Kelas Matkul\";}}', 'project', 32, '', 0, 0),
(1103, '2018-09-02 07:18:51', 23, 'updated', 'task', 'Akademika: KRS: ACC KRS', 214, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:23:\"Akademika: KRS: ACC KRS\";s:2:\"to\";s:24:\"Akademika: KRS - ACC KRS\";}}', 'project', 32, '', 0, 0),
(1104, '2018-09-02 07:19:06', 23, 'updated', 'task', 'Akademika: KRS: Status KRS', 213, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:26:\"Akademika: KRS: Status KRS\";s:2:\"to\";s:27:\"Akademika: KRS - Status KRS\";}}', 'project', 32, '', 0, 0),
(1105, '2018-09-02 07:19:21', 23, 'updated', 'task', 'Akademika: KRS: Jadwal KRS', 215, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:26:\"Akademika: KRS: Jadwal KRS\";s:2:\"to\";s:27:\"Akademika: KRS - Jadwal KRS\";}}', 'project', 32, '', 0, 0),
(1106, '2018-09-02 07:19:53', 23, 'updated', 'task', 'Akademika: KRS: Master KRS - Data Matkul', 216, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:40:\"Akademika: KRS: Master KRS - Data Matkul\";s:2:\"to\";s:41:\"Akademika: KRS - Master KRS > Data Matkul\";}}', 'project', 32, '', 0, 0),
(1107, '2018-09-02 07:20:13', 23, 'updated', 'task', 'Akademika: KRS: Master KRS - Registrasi Matkul', 217, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:46:\"Akademika: KRS: Master KRS - Registrasi Matkul\";s:2:\"to\";s:47:\"Akademika: KRS - Master KRS > Registrasi Matkul\";}}', 'project', 32, '', 0, 0),
(1108, '2018-09-02 07:20:34', 23, 'updated', 'task', 'Akademika: KRS: Kelas Matkul', 218, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:28:\"Akademika: KRS: Kelas Matkul\";s:2:\"to\";s:29:\"Akademika: KRS - Kelas Matkul\";}}', 'project', 32, '', 0, 0),
(1109, '2018-09-02 07:30:31', 23, 'created', 'task', 'Akun: Ubah Password ', 222, NULL, 'project', 32, '', 0, 0),
(1110, '2018-09-02 07:31:47', 23, 'created', 'task', 'Akun: Riwayat Login', 223, NULL, 'project', 32, '', 0, 0),
(1111, '2018-09-02 07:34:31', 23, 'created', 'task', 'Akun: Edit Profil', 224, NULL, 'project', 32, '', 0, 0),
(1112, '2018-09-02 07:37:05', 23, 'created', 'task', 'Akun: Unduh Berkas', 225, NULL, 'project', 32, '', 0, 0),
(1113, '2018-09-02 07:39:21', 23, 'created', 'task', 'Akun: Form TTD', 226, NULL, 'project', 32, '', 0, 0),
(1114, '2018-09-02 07:43:16', 23, 'created', 'task', 'Akademika: Perkuliahan - Pertemuan ', 227, NULL, 'project', 32, '', 0, 0),
(1115, '2018-09-02 07:45:09', 23, 'created', 'task', 'Akademika: Perkuliahan - Aspek Nilai', 228, NULL, 'project', 32, '', 0, 0),
(1116, '2018-09-02 07:47:00', 23, 'created', 'task', 'Akademika: Perkuliahan - Jadwal Kuliah', 229, NULL, 'project', 32, '', 0, 0),
(1117, '2018-09-02 07:49:16', 23, 'created', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, NULL, 'project', 32, '', 0, 0),
(1118, '2018-09-02 07:50:03', 23, 'updated', 'task', 'Perkuliahan: Presensi Dosen', 219, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1119, '2018-09-02 07:50:08', 23, 'deleted', 'task', 'Perkuliahan: Presensi Dosen', 219, NULL, 'project', 32, NULL, NULL, 0),
(1120, '2018-09-02 07:52:10', 23, 'created', 'task', 'Akademika: Perkuliahan -  Presensi Mahasiswa', 231, NULL, 'project', 32, '', 0, 0),
(1121, '2018-09-02 07:52:22', 23, 'updated', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1122, '2018-09-02 07:52:27', 23, 'updated', 'task', 'Akademika: Perkuliahan - Jadwal Kuliah', 229, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1123, '2018-09-02 07:52:37', 23, 'updated', 'task', 'Akademika: Perkuliahan - Aspek Nilai', 228, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1124, '2018-09-02 07:53:38', 23, 'created', 'task', 'Akademika: Perkuliahan - Perkuliahan Aktif', 232, NULL, 'project', 32, '', 0, 0),
(1125, '2018-09-02 07:55:44', 23, 'created', 'task', 'Perkuliahan: Jadwal - Jadwal Kuliah', 233, NULL, 'project', 32, '', 0, 0),
(1126, '2018-09-02 07:56:42', 23, 'created', 'task', 'Perkuliahan: Jadwal - Jadwal Ujian', 234, NULL, 'project', 32, '', 0, 0),
(1127, '2018-09-02 08:00:46', 23, 'created', 'task', 'Akademika: Status Mahasiswa - Pengajuan Cuti', 235, NULL, 'project', 32, '', 0, 0),
(1128, '2018-09-02 08:01:57', 23, 'created', 'task', 'Akademika: Status Mahasiswa - Mahasiswa Cuti', 236, NULL, 'project', 32, '', 0, 0),
(1129, '2018-09-02 08:05:16', 23, 'created', 'task', 'Akademika: Status Mahasiswa - Lulus Semester', 237, NULL, 'project', 32, '', 0, 0),
(1130, '2018-09-02 08:06:09', 23, 'created', 'task', 'Akademika: Status Mahasiswa - Lulus Akademik', 238, NULL, 'project', 32, '', 0, 0),
(1131, '2018-09-02 08:08:49', 23, 'created', 'task', 'KRS: Registrasi MataKuliah', 239, NULL, 'project', 32, '', 0, 0),
(1132, '2018-09-02 08:11:30', 23, 'created', 'task', 'KRS: Data Matakuliah', 240, NULL, 'project', 32, '', 0, 0),
(1133, '2018-09-02 08:12:50', 23, 'created', 'task', 'KRS: Dosen Matakuliah', 241, NULL, 'project', 32, '', 0, 0),
(1134, '2018-09-02 08:13:50', 23, 'created', 'task', 'KRS: Cetak KRS', 242, NULL, 'project', 32, '', 0, 0),
(1135, '2018-09-02 08:14:45', 23, 'created', 'task', 'KRS: Arsip KRS', 243, NULL, 'project', 32, '', 0, 0),
(1136, '2018-09-02 08:16:12', 23, 'created', 'task', 'Akademika: KHS - Nilai Semester', 244, NULL, 'project', 32, '', 0, 0),
(1137, '2018-09-02 08:16:27', 23, 'updated', 'task', 'Akademika: KHS - Nilai Semester', 244, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:5:\"admin\";s:2:\"to\";s:15:\"admin,mahasiswa\";}}', 'project', 32, '', 0, 0),
(1138, '2018-09-02 08:17:28', 23, 'created', 'task', 'Akademika: KHS - Transkrip Nilai', 245, NULL, 'project', 32, '', 0, 0),
(1139, '2018-09-02 08:18:35', 23, 'created', 'task', 'Akademika: KHS - Laporan Nilai', 246, NULL, 'project', 32, '', 0, 0),
(1140, '2018-09-02 10:33:55', 8, 'updated', 'task', 'Akademika: KRS - Master KRS > Data Matkul', 216, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:6:\"100215\";s:2:\"to\";s:3:\"233\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1141, '2018-09-02 10:34:02', 8, 'updated', 'task', 'Akademika: KHS - Laporan Nilai', 246, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1142, '2018-09-02 10:34:09', 8, 'updated', 'task', 'Akademika: KHS - Transkrip Nilai', 245, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1143, '2018-09-02 10:34:12', 8, 'updated', 'task', 'Akademika: KHS - Nilai Semester', 244, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1144, '2018-09-02 10:34:26', 8, 'updated', 'task', 'Akademika: Status Mahasiswa - Lulus Akademik', 238, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9998500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1145, '2018-09-02 10:34:29', 8, 'updated', 'task', 'Akademika: Status Mahasiswa - Lulus Semester', 237, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9998000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1146, '2018-09-02 10:34:33', 8, 'updated', 'task', 'Akademika: Status Mahasiswa - Mahasiswa Cuti', 236, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9997500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1147, '2018-09-02 10:34:37', 8, 'updated', 'task', 'Akademika: Status Mahasiswa - Pengajuan Cuti', 235, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9997000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1148, '2018-09-05 09:55:35', 8, 'updated', 'task', 'Perkuliahan: Jadwal - Jadwal Ujian', 234, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:34:\"Perkuliahan: Jadwal - Jadwal Ujian\";s:2:\"to\";s:46:\"AKademika: Perkuliahan - Jadwal > Jadwal Ujian\";}}', 'project', 32, '', 0, 0),
(1149, '2018-09-05 09:55:51', 8, 'updated', 'task', 'Perkuliahan: Jadwal - Jadwal Kuliah', 233, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:35:\"Perkuliahan: Jadwal - Jadwal Kuliah\";s:2:\"to\";s:47:\"Akademika: Perkuliahan - Jadwal > Jadwal Kuliah\";}}', 'project', 32, '', 0, 0),
(1150, '2018-09-05 09:56:37', 8, 'updated', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1151, '2018-09-05 09:56:39', 8, 'updated', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1152, '2018-09-05 09:56:49', 8, 'updated', 'task', 'Akun: Unduh Berkas', 225, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1153, '2018-09-05 09:56:53', 8, 'updated', 'task', 'Akun: Unduh Berkas', 225, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1154, '2018-09-05 09:57:17', 8, 'updated', 'task', 'Akun: Unduh Berkas', 225, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1155, '2018-09-05 09:57:18', 8, 'updated', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1156, '2018-09-05 09:57:20', 8, 'updated', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1157, '2018-09-05 09:57:24', 8, 'updated', 'task', 'Akun: Unduh Berkas', 225, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1158, '2018-09-05 09:57:30', 8, 'updated', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1159, '2018-09-05 09:57:41', 8, 'updated', 'task', 'Akun: Unduh Berkas', 225, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1160, '2018-09-05 09:58:15', 8, 'updated', 'task', 'Master Data: Master Pusat - Pimpinan ', 221, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1161, '2018-09-05 09:58:19', 8, 'updated', 'task', 'Master Data: Master Pusat - Pimpinan ', 221, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1162, '2018-09-05 10:17:18', 8, 'updated', 'task', 'AKademika: Perkuliahan - Jadwal > Jadwal Ujian', 234, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:46:\"AKademika: Perkuliahan - Jadwal > Jadwal Ujian\";s:2:\"to\";s:34:\"Perkuliahan: Jadwal - Jadwal Ujian\";}}', 'project', 32, '', 0, 0),
(1163, '2018-09-05 10:17:39', 8, 'updated', 'task', 'Akademika: Perkuliahan - Jadwal > Jadwal Kuliah', 233, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:47:\"Akademika: Perkuliahan - Jadwal > Jadwal Kuliah\";s:2:\"to\";s:35:\"Perkuliahan: Jadwal - Jadwal Kuliah\";}}', 'project', 32, '', 0, 0),
(1164, '2018-09-05 10:17:59', 8, 'updated', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1165, '2018-09-05 10:18:02', 8, 'deleted', 'task', 'Akademika: Perkuliahan - Presensi Dosen', 230, NULL, 'project', 32, NULL, NULL, 0),
(1166, '2018-09-05 15:59:42', 8, 'created', 'task', 'Berita dan Pengumuman', 247, NULL, 'project', 32, '', 0, 0),
(1167, '2018-09-05 16:08:09', 8, 'created', 'task_comment', 'Done pending, edit data tidak berhasil memuat gambar yang telah diupload', 96, NULL, 'project', 32, 'task', 247, 0),
(1168, '2018-09-05 16:08:16', 8, 'updated', 'task', 'Berita dan Pengumuman', 247, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1169, '2018-09-07 02:55:19', 14, 'created', 'task', 'Mobile App--All Tampilan', 248, NULL, 'project', 47, '', 0, 0),
(1170, '2018-09-07 02:57:01', 14, 'created', 'task', 'Mobile App - Login', 249, NULL, 'project', 47, '', 0, 0),
(1171, '2018-09-07 03:06:38', 14, 'created', 'task', 'Mobile App - Home ', 250, NULL, 'project', 47, '', 0, 0),
(1172, '2018-09-07 03:07:28', 14, 'updated', 'task', 'Mobile App - Login', 249, 'a:2:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"21\";}}', 'project', 47, '', 0, 0),
(1173, '2018-09-07 03:07:53', 14, 'updated', 'task', 'Mobile App - Home ', 250, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"21\";}}', 'project', 47, '', 0, 0),
(1174, '2018-09-07 03:08:27', 14, 'created', 'task', 'Mobile App - Login', 251, NULL, 'project', 47, '', 0, 0),
(1175, '2018-09-07 03:09:16', 14, 'updated', 'task', 'Mobile App - Login', 251, 'a:3:{s:5:\"title\";a:2:{s:4:\"from\";s:18:\"Mobile App - Login\";s:2:\"to\";s:19:\"Mobile App - Survey\";}s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:76:\"1.1.9.1 chooseSurveyType\n1.1.9.2 view&fillingoutSurvey\n1.1.9.3 submitSurvey\n\";}s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 47, '', 0, 0),
(1176, '2018-09-07 03:09:47', 14, 'updated', 'task', 'Mobile App - Survey', 251, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"21\";}}', 'project', 47, '', 0, 0),
(1177, '2018-09-07 03:13:48', 14, 'created', 'task', 'Mobile App - Berita', 252, NULL, 'project', 47, '', 0, 0),
(1178, '2018-09-07 03:14:56', 14, 'created', 'task', 'Mobile App - Profile', 253, NULL, 'project', 47, '', 0, 0),
(1179, '2018-09-07 03:15:45', 14, 'created', 'task', 'Mobile App - Pengaduan', 254, NULL, 'project', 47, '', 0, 0),
(1180, '2018-09-07 03:15:59', 14, 'updated', 'task', 'Mobile App - Pengaduan', 254, 'a:2:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"21\";}}', 'project', 47, '', 0, 0),
(1181, '2018-09-07 03:29:44', 14, 'updated', 'task', 'Mobile App - Pengaduan', 254, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:79:\"1.1.12.1 viewMyPengaduanList\n1.1.12.2 createPengaduan \n1.1.12.3 sendPengaduan \n\";s:2:\"to\";s:81:\"1.1.12.1 viewMyPengaduanList\n1.1.12.2 createPengaduan \n1.1.12.3 submitPengaduan \n\";}}', 'project', 47, '', 0, 0),
(1182, '2018-09-07 03:30:27', 14, 'updated', 'task', 'Mobile App - Pengaduan', 254, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:22:\"Mobile App - Pengaduan\";s:2:\"to\";s:30:\"Mobile App Activity- Pengaduan\";}}', 'project', 47, '', 0, 0),
(1183, '2018-09-07 03:30:39', 14, 'updated', 'task', 'Mobile App - Profile', 253, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:20:\"Mobile App - Profile\";s:2:\"to\";s:29:\"Mobile App Activity - Profile\";}}', 'project', 47, '', 0, 0),
(1184, '2018-09-07 03:31:02', 14, 'updated', 'task', 'Mobile App - Berita', 252, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:19:\"Mobile App - Berita\";s:2:\"to\";s:28:\"Mobile App Activity - Berita\";}}', 'project', 47, '', 0, 0),
(1185, '2018-09-07 03:31:56', 14, 'updated', 'task', 'Mobile App - Survey', 251, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:19:\"Mobile App - Survey\";s:2:\"to\";s:28:\"Mobile App Activity - Survey\";}}', 'project', 47, '', 0, 0),
(1186, '2018-09-07 03:32:16', 14, 'updated', 'task', 'Mobile App - Home ', 250, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:18:\"Mobile App - Home \";s:2:\"to\";s:27:\"Mobile App Activity - Home \";}}', 'project', 47, '', 0, 0),
(1187, '2018-09-07 03:32:28', 14, 'updated', 'task', 'Mobile App - Login', 249, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:18:\"Mobile App - Login\";s:2:\"to\";s:27:\"Mobile App Activity - Login\";}}', 'project', 47, '', 0, 0),
(1188, '2018-09-07 03:32:50', 14, 'updated', 'task', 'Mobile App--All Tampilan', 248, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:24:\"Mobile App--All Tampilan\";s:2:\"to\";s:25:\"Mobile App Tampilan - All\";}}', 'project', 47, '', 0, 0),
(1189, '2018-09-07 03:35:52', 14, 'created', 'task', 'Web App Tampilan - Login', 255, NULL, 'project', 47, '', 0, 0),
(1190, '2018-09-07 03:36:59', 14, 'created', 'task', 'Web App Tampilan - Home', 256, NULL, 'project', 47, '', 0, 0),
(1191, '2018-09-07 03:39:52', 14, 'created', 'task', 'Web App Tampilan - Survey', 257, NULL, 'project', 47, '', 0, 0),
(1192, '2018-09-07 03:41:35', 14, 'updated', 'task', 'Web App Tampilan - Survey', 257, 'a:2:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"4\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:1:\"8\";}}', 'project', 47, '', 0, 0),
(1193, '2018-09-07 03:42:45', 14, 'created', 'task', 'Web App Tampilan - Berita', 258, NULL, 'project', 47, '', 0, 0),
(1194, '2018-09-07 03:46:35', 14, 'created', 'task', 'Web App Tampilan - List akun', 259, NULL, 'project', 47, '', 0, 0),
(1195, '2018-09-07 03:46:58', 14, 'updated', 'task', 'Web App Tampilan - Berita', 258, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:44:\"1.1.16.1 Berita_List\n1.1.16.2 Berita_Editor\n\";s:2:\"to\";s:56:\"1.1.16.1 Berita_List (buat Crud)\n1.1.16.2 Berita_Editor\n\";}}', 'project', 47, '', 0, 0),
(1196, '2018-09-07 03:47:49', 14, 'updated', 'task', 'Web App Tampilan - List akun', 259, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:1:\"8\";}}', 'project', 47, '', 0, 0),
(1197, '2018-09-07 03:48:29', 14, 'created', 'task', 'Web App Tampilan - Pengaduan', 260, NULL, 'project', 47, '', 0, 0),
(1198, '2018-09-07 03:48:47', 14, 'updated', 'task', 'Web App Tampilan - Pengaduan', 260, 'a:2:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:1:\"8\";}}', 'project', 47, '', 0, 0),
(1199, '2018-09-07 03:49:41', 14, 'updated', 'task', 'Web App Tampilan - Pengaduan', 260, 'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:66:\"1.1.18.1 ALLPengaduan_List (Crud)\n1.1.18.2 Reply_Pengaduan Screen\n\";}}', 'project', 47, '', 0, 0),
(1200, '2018-09-07 03:51:29', 14, 'updated', 'task', 'Web App Tampilan - List akun', 259, 'a:1:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:5:\"257.5\";}}', 'project', 47, '', 0, 0),
(1201, '2018-09-07 03:56:05', 14, 'created', 'task', 'Web App Activity - Login', 261, NULL, 'project', 47, '', 0, 0),
(1202, '2018-09-07 03:58:39', 14, 'updated', 'task', 'Web App Activity - Login', 261, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"6\";s:2:\"to\";s:2:\"13\";}}', 'project', 47, '', 0, 0),
(1203, '2018-09-07 04:01:07', 14, 'created', 'task', 'Web App Activity - Survey', 262, NULL, 'project', 47, '', 0, 0),
(1204, '2018-09-07 04:03:50', 14, 'created', 'task', 'Web App Activity - Berita', 263, NULL, 'project', 47, '', 0, 0),
(1205, '2018-09-07 04:04:41', 14, 'updated', 'task', 'Web App Activity - Berita', 263, 'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:2:\"14\";s:2:\"to\";s:2:\"13\";}}', 'project', 47, '', 0, 0),
(1206, '2018-09-07 04:05:07', 14, 'updated', 'task', 'Web App Activity - Berita', 263, 'a:1:{s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 47, '', 0, 0),
(1207, '2018-09-07 04:07:11', 14, 'created', 'task', 'Web App Activity - Pengaduan', 264, NULL, 'project', 47, '', 0, 0),
(1208, '2018-09-07 04:16:54', 14, 'created', 'task', 'Web App Activity - CrUD User Account', 265, NULL, 'project', 47, '', 0, 0),
(1209, '2018-09-07 10:12:16', 8, 'updated', 'task', 'Web App Tampilan - Login', 255, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10000000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 47, '', 0, 0),
(1210, '2018-09-07 10:12:18', 8, 'updated', 'task', 'Web App Tampilan - Home', 256, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:8:\"10100000\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 47, '', 0, 0),
(1211, '2018-09-07 10:41:01', 8, 'updated', 'task', 'Web App Tampilan - Login', 255, 'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"25\";}}', 'project', 47, '', 0, 0),
(1212, '2018-09-07 14:57:27', 1, 'created', 'project_comment', 'cek file untuk sekilas tentang aplikasi dan link https://drive.google.com/drive/folders/1CnGcQkoi6ofa_FJ1bz23FJUuSn4cnTZY?usp=sharing \nuntuk bahan2nya', 97, NULL, 'project', 47, '', 0, 0),
(1213, '2018-09-07 15:08:35', 1, 'created', 'project_comment', 'Usecase dan Activity Diagram', 98, NULL, 'project', 47, '', 0, 0),
(1214, '2018-09-07 15:10:06', 1, 'created', 'project_comment', 'Mockup Mobile https://www.figma.com/file/ajBESTMvncCcquTE1tFhyYMR/BP2IP-Barombong?node-id=0:1', 99, NULL, 'project', 47, '', 0, 0),
(1215, '2018-09-07 17:26:05', 8, 'updated', 'task', 'Web App Tampilan - Survey', 257, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:7:\"9999500\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 47, '', 0, 0),
(1216, '2018-09-08 00:49:41', 1, 'created', 'project_comment', 'referensi untuk tampilan pengaduan user android', 100, NULL, 'project', 47, '', 0, 0),
(1217, '2018-09-08 00:51:23', 1, 'created', 'project_comment_reply', '@[Muhammad Yusuf Matra :25] @[Radhiansyah . :21]  @[Muhamad Ikhsan Laisa :6] ', 101, NULL, 'project', 47, '', 0, 0),
(1218, '2018-09-08 01:27:37', 1, 'created', 'milestone', 'Analisis dan Perancangan', 65, NULL, 'project', 47, '', 0, 0),
(1219, '2018-09-08 01:29:03', 1, 'created', 'milestone', 'Development aplikasi android', 66, NULL, 'project', 47, '', 0, 0),
(1220, '2018-09-08 01:29:30', 1, 'created', 'milestone', 'Development web admin', 67, NULL, 'project', 47, '', 0, 0),
(1221, '2018-09-08 01:29:53', 1, 'created', 'milestone', 'Development API', 68, NULL, 'project', 47, '', 0, 0),
(1222, '2018-09-08 01:30:43', 1, 'created', 'milestone', 'Deploy aplikasi pada server', 69, NULL, 'project', 47, '', 0, 0),
(1223, '2018-09-08 01:31:07', 1, 'created', 'milestone', 'Testing', 70, NULL, 'project', 47, '', 0, 0),
(1224, '2018-09-08 01:31:35', 1, 'created', 'milestone', 'Pelatihan dan Transfer Ilmu', 71, NULL, 'project', 47, '', 0, 0),
(1225, '2018-09-08 01:32:24', 1, 'created', 'milestone', 'Rilis Aplikasi ', 72, NULL, 'project', 47, '', 0, 0),
(1226, '2018-09-08 01:32:49', 1, 'updated', 'milestone', 'Pelatihan dan Transfer Ilmu', 71, 'a:1:{s:8:\"due_date\";a:2:{s:4:\"from\";s:10:\"2018-10-06\";s:2:\"to\";s:10:\"2018-10-02\";}}', 'project', 47, '', 0, 0),
(1227, '2018-09-08 01:33:47', 1, 'created', 'milestone', 'Dokumentasi dan Administrasi', 73, NULL, 'project', 47, '', 0, 0),
(1228, '2018-09-08 01:40:34', 1, 'updated', 'task', 'Web App Activity - CrUD User Account', 265, 'a:2:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}s:10:\"start_date\";a:2:{s:4:\"from\";N;s:2:\"to\";s:10:\"2018-09-09\";}}', 'project', 47, '', 0, 0),
(1229, '2018-09-08 01:40:53', 1, 'updated', 'task', 'Web App Activity - Pengaduan', 264, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1230, '2018-09-08 01:41:19', 1, 'updated', 'task', 'Web App Activity - Berita', 263, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1231, '2018-09-08 01:41:41', 1, 'updated', 'task', 'Web App Activity - Survey', 262, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1232, '2018-09-08 01:42:11', 1, 'updated', 'task', 'Web App Activity - Login', 261, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1233, '2018-09-08 01:42:37', 1, 'updated', 'task', 'Web App Tampilan - Pengaduan', 260, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1234, '2018-09-08 01:43:20', 1, 'updated', 'task', 'Web App Tampilan - List akun', 259, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1235, '2018-09-08 01:43:36', 1, 'updated', 'task', 'Web App Tampilan - Berita', 258, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1236, '2018-09-08 01:43:48', 1, 'updated', 'task', 'Web App Tampilan - Survey', 257, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1237, '2018-09-08 01:44:01', 1, 'updated', 'task', 'Web App Tampilan - Home', 256, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1238, '2018-09-08 01:44:23', 1, 'updated', 'task', 'Web App Tampilan - Login', 255, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"67\";}}', 'project', 47, '', 0, 0),
(1239, '2018-09-08 01:44:35', 1, 'updated', 'task', 'Mobile App Activity- Pengaduan', 254, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"66\";}}', 'project', 47, '', 0, 0),
(1240, '2018-09-08 01:45:11', 1, 'updated', 'task', 'Mobile App Activity - Profile', 253, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"66\";}}', 'project', 47, '', 0, 0),
(1241, '2018-09-08 01:45:20', 1, 'updated', 'task', 'Mobile App Activity - Berita', 252, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"66\";}}', 'project', 47, '', 0, 0),
(1242, '2018-09-08 01:45:32', 1, 'updated', 'task', 'Mobile App Activity - Survey', 251, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"66\";}}', 'project', 47, '', 0, 0),
(1243, '2018-09-08 01:45:46', 1, 'updated', 'task', 'Mobile App Activity - Home ', 250, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"66\";}}', 'project', 47, '', 0, 0),
(1244, '2018-09-08 01:45:55', 1, 'updated', 'task', 'Mobile App Activity - Login', 249, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"66\";}}', 'project', 47, '', 0, 0),
(1245, '2018-09-08 01:46:06', 1, 'updated', 'task', 'Mobile App Tampilan - All', 248, 'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"66\";}}', 'project', 47, '', 0, 0),
(1246, '2018-09-08 01:46:54', 1, 'created', 'task', 'API Login', 266, NULL, 'project', 47, '', 0, 0),
(1247, '2018-09-08 01:47:23', 1, 'updated', 'task', 'API Login', 266, 'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:17:\"username\npassword\";}s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 47, '', 0, 0),
(1248, '2018-09-08 01:48:17', 1, 'created', 'task', 'API Berita', 267, NULL, 'project', 47, '', 0, 0),
(1249, '2018-09-08 01:49:57', 1, 'created', 'task', 'API Pengaduan', 268, NULL, 'project', 47, '', 0, 0),
(1250, '2018-09-08 01:51:03', 1, 'created', 'task', 'API Survey', 269, NULL, 'project', 47, '', 0, 0),
(1251, '2018-09-08 01:52:13', 1, 'created', 'task', 'API Profil', 270, NULL, 'project', 47, '', 0, 0),
(1252, '2018-09-08 14:48:13', 1, 'created', 'customer_feedback', '1.Apa Survey sub diklat semua sama didalam satu siklat atau beda2 lagi2?\n2.Pada jenis diklat apakah berbeda berdasarkan tingkat pasisnya?\n3.Apa pada satu periode / semester hanya satu kuisioner untuk setiap pasis dan jenis diklat', 102, NULL, 'project', 47, 'customer_feedback', 47, 0),
(1253, '2018-09-10 05:47:29', 8, 'created', 'task_comment', 'fixed problem upload foto profil', 103, NULL, 'project', 32, 'task', 224, 0),
(1254, '2018-09-10 06:06:19', 8, 'created', 'task_comment', '[PROBLEM 01]\ndefault row (Pilih Kelas Matkul terlebih dahulu) tab presensi kuliah tidak muncul', 104, NULL, 'project', 32, 'task', 231, 0),
(1255, '2018-09-10 06:09:30', 8, 'created', 'task_comment', '[SOLVED]\nEdit data , load image done', 105, NULL, 'project', 32, 'task', 247, 0),
(1256, '2018-09-10 06:09:41', 8, 'updated', 'task', 'Berita dan Pengumuman', 247, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:4:\"-278\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1257, '2018-09-10 06:11:41', 8, 'updated', 'task', 'KRS: Registrasi MataKuliah', 239, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:26:\"KRS: Registrasi MataKuliah\";s:2:\"to\";s:51:\"Akademika: KRS - Master KRS > Registrasi MataKuliah\";}}', 'project', 32, '', 0, 0),
(1258, '2018-09-10 06:12:30', 8, 'updated', 'task', 'Akademika: KRS - Master KRS > Registrasi Matkul', 217, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:47:\"Akademika: KRS - Master KRS > Registrasi Matkul\";s:2:\"to\";s:23:\"KRS : Registrasi Matkul\";}}', 'project', 32, '', 0, 0),
(1259, '2018-09-10 06:17:49', 8, 'updated', 'task', 'Akademika: KRS - Status KRS', 213, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1260, '2018-09-10 06:32:58', 8, 'updated', 'task', 'Akademika: KRS - Status KRS', 213, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:15:\"admin,mahasiswa\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1261, '2018-09-10 06:33:55', 8, 'updated', 'task', 'KRS : Registrasi Matkul', 217, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:5:\"admin\";s:2:\"to\";s:15:\"mahasiswa,admin\";}}', 'project', 32, '', 0, 0),
(1262, '2018-09-10 06:35:16', 8, 'updated', 'task', 'KRS : Registrasi Matkul', 217, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:15:\"mahasiswa,admin\";s:2:\"to\";s:9:\"mahasiswa\";}}', 'project', 32, '', 0, 0),
(1263, '2018-09-10 06:35:52', 8, 'updated', 'task', 'Akademika: KRS - Master KRS > Registrasi MataKuliah', 239, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:21:\"prodi,dosen,mahasiswa\";s:2:\"to\";s:11:\"prodi,dosen\";}}', 'project', 32, '', 0, 0),
(1264, '2018-09-10 06:36:13', 8, 'updated', 'task', 'Akademika: KRS - Master KRS > Registrasi MataKuliah', 239, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:11:\"prodi,dosen\";s:2:\"to\";s:17:\"prodi,dosen,admin\";}}', 'project', 32, '', 0, 0),
(1265, '2018-09-10 06:57:41', 8, 'updated', 'task', 'Akademika: KRS - ACC KRS', 214, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1266, '2018-09-10 06:58:03', 8, 'updated', 'task', 'Akademika: KRS - Jadwal KRS', 215, 'a:1:{s:6:\"labels\";a:2:{s:4:\"from\";s:15:\"admin,mahasiswa\";s:2:\"to\";s:5:\"admin\";}}', 'project', 32, '', 0, 0),
(1267, '2018-09-10 07:02:20', 8, 'updated', 'task', 'Akademika: KRS - Jadwal KRS', 215, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1268, '2018-09-10 07:25:17', 8, 'updated', 'task', 'Akademika: KRS - Kelas Matkul', 218, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1269, '2018-09-10 08:29:22', 8, 'updated', 'task', 'KRS: Cetak KRS', 242, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1270, '2018-09-10 08:30:22', 8, 'updated', 'task', 'KRS : Registrasi Matkul', 217, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:23:\"KRS : Registrasi Matkul\";s:2:\"to\";s:22:\"KRS: Registrasi Matkul\";}}', 'project', 32, '', 0, 0),
(1271, '2018-09-10 08:37:15', 8, 'updated', 'task', 'KRS: Registrasi Matkul', 217, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:22:\"KRS: Registrasi Matkul\";s:2:\"to\";s:27:\"KRS: Registrasi Mata Kuliah\";}}', 'project', 32, '', 0, 0),
(1272, '2018-09-10 08:37:40', 8, 'updated', 'task', 'KRS: Registrasi Mata Kuliah', 217, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1273, '2018-09-10 08:39:37', 8, 'created', 'task', 'Perwalian: ACC KRS PA', 271, NULL, 'project', 32, '', 0, 0),
(1274, '2018-09-10 08:45:08', 8, 'updated', 'task', 'Perwalian: ACC KRS PA', 271, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1275, '2018-09-10 08:45:35', 8, 'created', 'task', 'Perwalian: Presensi Mahasiswa', 272, NULL, 'project', 32, '', 0, 0),
(1276, '2018-09-10 08:48:03', 8, 'updated', 'task', 'Perwalian: Presensi Mahasiswa', 272, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1277, '2018-09-10 08:53:46', 8, 'deleted', 'task', 'KRS: Cetak KRS', 242, NULL, 'project', 32, NULL, NULL, 0),
(1278, '2018-09-10 08:54:41', 8, 'created', 'task', 'Akademika: KHS - KHS Mahasiswa', 273, NULL, 'project', 32, '', 0, 0),
(1279, '2018-09-10 08:55:49', 8, 'updated', 'task', 'Akademika: KHS - Nilai Semester', 244, 'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:31:\"Akademika: KHS - Nilai Semester\";s:2:\"to\";s:34:\"Akademika: KHS - Nilai Mata Kuliah\";}}', 'project', 32, '', 0, 0),
(1280, '2018-09-10 08:58:35', 8, 'created', 'task', 'Perkuliahan: Presensi Kuliah', 274, NULL, 'project', 32, '', 0, 0),
(1281, '2018-09-10 09:00:38', 8, 'updated', 'task', 'Perkuliahan: Presensi Kuliah', 274, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1282, '2018-09-10 09:01:53', 8, 'updated', 'task', 'Perkuliahan: Presensi Kuliah', 274, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1283, '2018-09-10 09:02:13', 8, 'deleted', 'task', 'Akademika: Status Mahasiswa - Lulus Akademik', 238, NULL, 'project', 32, NULL, NULL, 0),
(1284, '2018-09-10 09:02:16', 8, 'deleted', 'task', 'Akademika: Status Mahasiswa - Lulus Semester', 237, NULL, 'project', 32, NULL, NULL, 0),
(1285, '2018-09-10 09:02:18', 8, 'deleted', 'task', 'Akademika: Status Mahasiswa - Mahasiswa Cuti', 236, NULL, 'project', 32, NULL, NULL, 0),
(1286, '2018-09-10 09:02:19', 8, 'deleted', 'task', 'Akademika: Status Mahasiswa - Pengajuan Cuti', 235, NULL, 'project', 32, NULL, NULL, 0),
(1287, '2018-09-10 09:08:10', 8, 'created', 'task', 'Nilai: Nilai Mata Kuliah', 275, NULL, 'project', 32, '', 0, 0),
(1288, '2018-09-10 09:09:57', 8, 'updated', 'task', 'Akun: Unduh Berkas', 225, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1289, '2018-09-10 09:10:02', 8, 'updated', 'task', 'Master Data: Master Pusat - Pimpinan ', 221, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1290, '2018-09-10 09:10:07', 8, 'updated', 'task', 'Master Data: Civitas - Data Staff', 145, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1291, '2018-09-10 09:10:22', 8, 'deleted', 'task', 'Akademika: Perkuliahan - Perkuliahan Aktif', 232, NULL, 'project', 32, NULL, NULL, 0),
(1292, '2018-09-10 09:10:36', 8, 'updated', 'task', 'Akademika: KHS - Nilai Mata Kuliah', 244, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"3\";}}', 'project', 32, '', 0, 0),
(1293, '2018-09-10 09:10:38', 8, 'updated', 'task', 'Akademika: KHS - Nilai Mata Kuliah', 244, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"1\";}}', 'project', 32, '', 0, 0),
(1294, '2018-09-10 09:10:43', 8, 'updated', 'task', 'Akademika: KHS - Nilai Mata Kuliah', 244, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1295, '2018-09-10 09:10:48', 8, 'updated', 'task', 'Nilai: Nilai Mata Kuliah', 275, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 32, '', 0, 0),
(1296, '2018-09-10 12:16:33', 1, 'created', 'customer_feedback', '1.Apa Survey sub diklat semua sama didalam satu diklat atau beda2 lagi2?\n2.Pada jenis diklat apakah berbeda berdasarkan tingkat pasisnya?\n3.Apa pada satu periode / semester hanya satu kuisioner untuk setiap pasis dan jenis diklat', 106, NULL, 'project', 47, 'customer_feedback', 47, 0),
(1297, '2018-09-10 12:22:34', 1, 'deleted', 'project_comment', '1.Apa Survey sub diklat semua sama didalam satu siklat atau beda2 lagi2?\n2.Pada jenis diklat apakah berbeda berdasarkan tingkat pasisnya?\n3.Apa pada satu periode / semester hanya satu kuisioner untuk setiap pasis dan jenis diklat', 102, NULL, 'project', 47, NULL, NULL, 0),
(1298, '2018-09-13 08:48:38', 8, 'updated', 'task', 'Web App Tampilan - Login', 255, 'a:1:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}}', 'project', 47, '', 0, 0),
(1299, '2018-09-13 09:28:13', 8, 'updated', 'task', 'Web App Tampilan - List akun', 259, 'a:2:{s:4:\"sort\";a:2:{s:4:\"from\";s:5:\"257.5\";s:2:\"to\";s:8:\"10049750\";}s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"2\";}}', 'project', 47, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `description`, `start_date`, `end_date`, `created_by`, `share_with`, `created_at`, `files`, `read_by`, `deleted`) VALUES
(1, 'test', '<p>test</p>', '2017-10-07', '2017-10-15', 1, 'all_members', '2017-10-07 15:23:11', 'a:0:{}', '0,1,4,5,23,56', 1),
(2, '[PENGUMUMAN] Ramadhan 2018 M', '<p>Kegiatan rapat &amp; malam produktif 4nesia selama bulan ramadhan di lakukan setelah taraweh.<br></p><p>Bagi peserta Intern, tidak ada kegiatan 4nesia di malam hari.</p><p><br></p><p>Terimakasih.</p><p>CEO 4nesia</p>', '2018-05-18', '2018-06-17', 1, 'all_members', '2018-05-17 21:29:34', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:49:\"announcement_file5afdf40ccc305-ramadhan-karem.jpg\";s:9:\"file_size\";s:6:\"259568\";}}', '0,1,8,3,55,54,57,59,56,50,52,53,48,51,7,60,6,5', 0),
(3, '4nesia Internship Program 2018- Project KP', '<p>Pembagian Team Project KP :</p><p>1. HaloNesia&nbsp;</p><p>Team Project Member :&nbsp;</p><p>a. Developer : Arya Wirasandi</p><p>b. UI/UX Designer : M. Yuzar Haspani</p><p>c. Analyst : Leo Dikkardo Sagala&nbsp;</p><p>Briefing : </p><p>Hari : Minggu, 27 Mei 2018</p><p>Tempat : 4nesia Basecamp</p><p>Waktu : Pukul 13.00 WIB</p><p><br></p><p>2. Prototype SIAKAD Mobile&nbsp;</p><p>Team Project Member :&nbsp;</p><p>a. Developer : Roger Alexsander, Fakhri Ramadhan, Zayed Iffat</p><p>b. UI/UX Designer : Bellanofi Budiyawati, Qatrun Nada</p><p>c, Analyst : Sajidah Rachmawati</p><p>Briefing :&nbsp;</p><p>a. Hari/Tanggal : Minggu, 27 Mei 2018</p><p>b. Tempat : 4nesia Basecamp</p><p>c. Waktu : Pukul 14.00 WIB</p><p><br></p><p>3. 4nesia Strategy Bussiness</p><p>Team Project Member :&nbsp; Regina Yusticia, Dina, Agita Oktavia, Irham Fakhri</p><p>Briefing :</p><p>a. Hari/Tanggal : Minggu, 27 Mei 2018</p><p>b. Tempat : 4nesia BAsecamp</p><p>c. Waktu : Pukul 15.00 WIB&nbsp;</p><p><br></p>', '2018-05-28', '2018-08-01', 23, 'all_members', '2018-05-26 17:20:10', 'a:0:{}', '0,23,59,53,16,52,60,55,49,57,58,51,48,7,54,56,1,3,8,5,14', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`id`, `status`, `user_id`, `in_time`, `out_time`, `checked_by`, `note`, `checked_at`, `reject_reason`, `deleted`) VALUES
(1, 'pending', 1, '2017-05-13 16:51:25', '2017-05-13 16:51:37', NULL, NULL, NULL, NULL, 0),
(2, 'pending', 1, '2017-05-13 16:52:35', '2017-05-13 16:52:42', NULL, NULL, NULL, NULL, 0),
(3, 'pending', 1, '2017-05-13 16:53:12', '2017-05-13 17:24:41', NULL, NULL, NULL, NULL, 0),
(4, 'pending', 4, '2017-05-13 17:18:30', '2017-05-13 17:18:32', NULL, NULL, NULL, NULL, 0),
(5, 'pending', 1, '2017-05-13 17:24:42', '2017-05-13 17:24:54', NULL, NULL, NULL, NULL, 0),
(6, 'pending', 4, '2017-05-13 17:24:53', '2017-05-13 17:25:06', NULL, NULL, NULL, NULL, 0),
(7, 'pending', 1, '2017-05-13 17:25:16', '2017-05-13 17:25:26', NULL, NULL, NULL, NULL, 0),
(8, 'pending', 2, '2017-05-13 17:47:22', '2017-05-16 09:53:42', NULL, NULL, NULL, NULL, 0),
(9, 'pending', 2, '2017-05-16 09:53:44', '2017-05-16 09:53:51', NULL, NULL, NULL, NULL, 0),
(10, 'pending', 1, '2017-05-16 12:37:34', '2017-05-17 13:03:52', NULL, NULL, NULL, NULL, 0),
(11, 'pending', 10, '2017-05-17 12:20:00', '2017-05-17 15:20:52', NULL, NULL, NULL, NULL, 0),
(12, 'pending', 15, '2017-05-17 12:20:27', '2017-05-17 15:20:56', NULL, NULL, NULL, NULL, 0),
(13, 'pending', 3, '2017-05-17 12:22:01', '2017-05-17 15:48:28', NULL, NULL, NULL, NULL, 0),
(14, 'pending', 1, '2017-05-17 13:03:53', '2017-05-20 14:34:16', NULL, NULL, NULL, NULL, 0),
(15, 'pending', 15, '2017-05-18 09:25:46', '2017-05-18 10:11:32', NULL, NULL, NULL, NULL, 0),
(16, 'pending', 10, '2017-05-18 09:25:51', '2017-05-18 10:11:24', NULL, NULL, NULL, NULL, 0),
(17, 'pending', 10, '2017-05-20 05:17:40', '2017-05-20 05:52:58', NULL, NULL, NULL, NULL, 0),
(18, 'pending', 15, '2017-05-20 05:53:42', '2017-05-20 07:02:30', NULL, NULL, NULL, NULL, 0),
(19, 'pending', 9, '2017-05-20 07:11:45', '2017-05-20 09:38:08', NULL, NULL, NULL, NULL, 0),
(20, 'pending', 17, '2017-05-20 07:19:41', '2017-05-20 10:28:53', NULL, NULL, NULL, NULL, 0),
(21, 'pending', 16, '2017-05-20 07:37:50', '2018-05-08 04:50:46', NULL, '', NULL, NULL, 0),
(22, 'pending', 19, '2017-05-20 07:51:42', '2017-05-20 09:04:20', NULL, NULL, NULL, NULL, 0),
(23, 'pending', 14, '2017-05-20 07:53:53', '2017-11-08 22:36:40', NULL, '', NULL, NULL, 0),
(24, 'pending', 17, '2017-05-20 19:48:42', '2017-05-20 19:48:55', NULL, NULL, NULL, NULL, 0),
(25, 'pending', 3, '2017-05-21 15:54:44', '2017-05-21 16:16:21', NULL, NULL, NULL, NULL, 0),
(26, 'pending', 17, '2017-05-22 15:10:40', '2017-05-22 16:02:11', NULL, NULL, NULL, NULL, 0),
(27, 'pending', 13, '2017-05-23 02:06:59', '2017-05-23 02:30:20', NULL, NULL, NULL, NULL, 0),
(28, 'pending', 9, '2017-05-23 06:35:03', '2017-05-27 23:40:46', NULL, NULL, NULL, NULL, 0),
(29, 'pending', 1, '2017-05-23 14:05:17', '2017-05-27 04:08:59', NULL, NULL, NULL, NULL, 0),
(30, 'pending', 17, '2017-05-23 14:06:41', '2017-05-23 14:09:22', NULL, NULL, NULL, NULL, 0),
(31, 'pending', 3, '2017-05-24 06:15:56', '2017-05-24 06:56:36', NULL, NULL, NULL, NULL, 0),
(32, 'pending', 15, '2017-05-24 06:44:50', '2017-05-24 09:15:29', NULL, NULL, NULL, NULL, 0),
(33, 'pending', 10, '2017-05-24 06:47:27', '2017-05-24 09:15:56', NULL, NULL, NULL, NULL, 0),
(34, 'pending', 17, '2017-05-24 08:39:49', '2017-05-29 15:40:34', NULL, NULL, NULL, NULL, 0),
(35, 'pending', 19, '2017-05-24 08:40:03', '2017-05-24 08:43:05', NULL, NULL, NULL, NULL, 0),
(36, 'pending', 12, '2017-05-24 08:43:28', '2017-05-24 08:50:37', NULL, NULL, NULL, NULL, 0),
(37, 'pending', 3, '2017-05-27 04:07:49', '2017-05-27 07:41:43', NULL, NULL, NULL, NULL, 0),
(38, 'pending', 1, '2017-05-27 05:25:26', '2017-05-27 14:09:39', NULL, NULL, NULL, NULL, 0),
(39, 'pending', 10, '2017-05-27 07:25:23', '2017-05-27 07:42:44', NULL, NULL, NULL, NULL, 0),
(40, 'pending', 15, '2017-05-27 07:28:15', '2017-05-27 07:45:02', NULL, NULL, NULL, NULL, 0),
(41, 'pending', 10, '2017-05-29 15:33:21', '2017-05-29 18:00:11', NULL, NULL, NULL, NULL, 0),
(42, 'pending', 17, '2017-05-29 15:40:40', '2017-05-29 15:42:18', NULL, NULL, NULL, NULL, 0),
(43, 'pending', 19, '2017-05-30 06:23:08', '2017-05-30 10:55:25', NULL, NULL, NULL, NULL, 0),
(44, 'pending', 9, '2017-05-30 08:22:00', '2017-05-30 11:56:02', NULL, NULL, NULL, NULL, 0),
(45, 'pending', 3, '2017-06-01 09:22:24', '2017-06-03 08:34:20', NULL, NULL, NULL, NULL, 0),
(46, 'pending', 13, '2017-06-01 11:47:53', '2017-06-04 10:55:56', NULL, NULL, NULL, NULL, 0),
(47, 'pending', 15, '2017-06-03 22:16:52', '2017-06-04 21:52:33', NULL, NULL, NULL, NULL, 0),
(48, 'pending', 13, '2017-06-04 10:56:17', '2017-06-04 12:28:41', NULL, NULL, NULL, NULL, 0),
(49, 'pending', 17, '2017-06-05 05:31:20', '2017-06-05 06:17:48', NULL, NULL, NULL, NULL, 0),
(50, 'pending', 10, '2017-06-05 05:56:05', '2017-06-05 12:54:52', NULL, NULL, NULL, NULL, 0),
(51, 'pending', 3, '2017-06-06 15:00:10', '2017-06-06 15:41:18', NULL, NULL, NULL, NULL, 0),
(52, 'pending', 15, '2017-06-07 04:16:41', '2017-06-08 03:08:48', NULL, NULL, NULL, NULL, 0),
(53, 'pending', 3, '2017-06-10 15:59:18', '2017-06-10 16:58:53', NULL, NULL, NULL, NULL, 0),
(54, 'pending', 15, '2017-06-12 19:04:29', '2017-06-13 11:59:55', NULL, 'Progres video editing tinggal durasi menit terakhir ', NULL, NULL, 0),
(55, 'pending', 10, '2017-06-13 10:09:07', '2017-06-13 10:37:10', NULL, '', NULL, NULL, 0),
(56, 'pending', 15, '2017-06-13 22:40:50', '2017-06-13 22:53:32', NULL, 'Nanti malam saya akan melanjutkan video profile company, kak\nTerima kasih', NULL, NULL, 0),
(57, 'pending', 1, '2017-06-15 15:05:42', '2017-06-17 14:58:46', NULL, 'Updating Task All Project', NULL, NULL, 0),
(58, 'pending', 15, '2017-06-16 22:20:53', '2017-06-16 22:33:44', NULL, '', NULL, NULL, 0),
(59, 'pending', 1, '2017-06-17 17:11:19', '2017-06-29 08:46:10', NULL, '', NULL, NULL, 0),
(60, 'pending', 3, '2017-06-22 08:30:40', '2017-06-22 15:07:56', NULL, '', NULL, NULL, 0),
(61, 'pending', 15, '2017-06-23 15:24:19', '2017-06-23 16:14:23', NULL, '', NULL, NULL, 0),
(62, 'pending', 15, '2017-07-01 13:51:19', '2017-07-02 05:38:03', NULL, '', NULL, NULL, 0),
(63, 'pending', 10, '2017-07-01 17:12:09', '2017-07-01 18:38:49', NULL, '', NULL, NULL, 0),
(64, 'pending', 1, '2017-07-02 04:32:11', '2017-07-02 05:29:17', NULL, 'Controling Project Lapor Maros & BPBD Wajo', NULL, NULL, 0),
(65, 'pending', 10, '2017-07-03 18:39:00', '2017-07-04 13:10:15', NULL, '', NULL, NULL, 0),
(66, 'pending', 1, '2017-07-04 12:51:42', '2017-09-11 16:17:35', NULL, '', NULL, NULL, 0),
(67, 'incomplete', 10, '2017-07-05 07:02:01', NULL, NULL, NULL, NULL, NULL, 0),
(68, 'pending', 1, '2017-09-11 18:18:55', '2017-09-12 03:43:02', NULL, '', NULL, NULL, 0),
(69, 'pending', 2, '2017-09-12 04:58:27', '2017-09-12 14:53:29', NULL, 'thank you for today\n', NULL, NULL, 0),
(70, 'pending', 1, '2017-09-12 06:52:42', '2017-09-12 10:41:08', NULL, 'shift hari selasa', NULL, NULL, 0),
(71, 'pending', 1, '2017-09-12 11:59:46', '2017-09-12 16:23:07', NULL, 'pelatihan wordpress', NULL, NULL, 0),
(72, 'pending', 8, '2017-09-12 14:51:50', '2017-09-12 16:23:43', NULL, 'unch', NULL, NULL, 0),
(73, 'pending', 3, '2017-09-12 14:51:51', '2017-09-12 16:39:07', NULL, 'Goodnight Aye!!!', NULL, NULL, 0),
(74, 'pending', 5, '2017-09-12 14:52:33', '2017-09-12 14:53:03', NULL, 'close', NULL, NULL, 0),
(75, 'pending', 5, '2017-09-12 14:56:14', '2017-09-12 15:22:41', NULL, '', NULL, NULL, 0),
(76, 'pending', 23, '2017-09-12 16:24:36', '2017-09-12 16:24:47', NULL, '', NULL, NULL, 0),
(77, 'pending', 23, '2017-09-12 16:26:58', '2017-09-12 16:40:07', NULL, '', NULL, NULL, 0),
(78, 'pending', 1, '2017-09-12 16:32:42', '2017-09-12 18:44:59', NULL, '', NULL, NULL, 0),
(79, 'pending', 5, '2017-09-13 09:31:43', '2017-09-13 11:42:18', NULL, 'rabu sore', NULL, NULL, 0),
(80, 'pending', 1, '2017-09-14 05:18:37', '2017-09-14 15:28:08', NULL, '', NULL, NULL, 0),
(81, 'pending', 1, '2017-09-16 13:15:36', '2017-09-19 06:51:56', NULL, '', NULL, NULL, 0),
(82, 'pending', 2, '2017-09-16 13:15:47', '2017-09-20 12:54:53', NULL, 'terima kasih\n', NULL, NULL, 0),
(83, 'pending', 23, '2017-09-16 13:16:03', '2017-09-16 16:28:05', NULL, '', NULL, NULL, 0),
(84, 'pending', 8, '2017-09-16 13:16:28', '2017-09-16 15:16:09', NULL, '', NULL, NULL, 0),
(85, 'pending', 3, '2017-09-16 13:18:02', '2017-09-16 19:25:26', NULL, '', NULL, NULL, 0),
(86, 'pending', 3, '2017-09-16 19:25:47', '2017-09-27 15:54:03', NULL, '', NULL, NULL, 0),
(87, 'pending', 1, '2017-09-19 13:31:36', '2017-09-20 15:54:44', NULL, '', NULL, NULL, 0),
(88, 'pending', 2, '2017-09-25 11:57:48', '2017-09-27 15:53:45', NULL, '', NULL, NULL, 0),
(89, 'incomplete', 25, '2017-09-25 11:58:18', NULL, NULL, NULL, NULL, NULL, 0),
(90, 'pending', 26, '2017-09-25 12:01:58', '2017-09-25 13:35:36', NULL, 'Pengenalan KP 4nesia', NULL, NULL, 0),
(91, 'pending', 1, '2017-09-25 12:40:04', '2017-09-25 16:51:26', NULL, 'briefing KP Design ( DKV - Telkom University ) at Office room 4nesia', NULL, NULL, 0),
(92, 'pending', 26, '2017-09-26 12:29:40', '2017-09-26 15:02:36', NULL, 'Pencarian referensi roll banner ', NULL, NULL, 0),
(93, 'pending', 26, '2017-09-27 05:03:51', '2017-09-27 10:52:18', NULL, 'Perancangan Desain Roll Banner 4nesia ukuran 80x200', NULL, NULL, 0),
(94, 'pending', 23, '2017-09-27 15:53:08', '2017-09-27 15:56:22', NULL, '', NULL, NULL, 0),
(95, 'pending', 26, '2017-09-27 15:53:41', '2017-09-29 06:08:36', NULL, 'workshop android studio', NULL, NULL, 0),
(96, 'pending', 8, '2017-09-27 15:54:16', '2017-10-01 06:28:41', NULL, 'lupa CO', NULL, NULL, 0),
(97, 'pending', 26, '2017-09-29 06:08:41', '2017-10-11 14:23:07', NULL, '', NULL, NULL, 0),
(98, 'pending', 1, '2017-09-30 15:51:10', '2017-10-02 17:31:04', NULL, '', NULL, NULL, 0),
(99, 'pending', 1, '2017-10-04 15:04:33', '2017-10-07 04:52:33', NULL, '', NULL, NULL, 0),
(100, 'pending', 3, '2017-10-07 11:57:06', '2017-10-08 07:33:16', NULL, '', NULL, NULL, 0),
(101, 'pending', 5, '2017-10-07 12:13:52', '2017-10-08 05:38:48', NULL, 'Workshop Laravel by Kak Fian', NULL, NULL, 0),
(102, 'pending', 1, '2017-10-07 15:08:31', '2017-10-11 15:00:15', NULL, '', NULL, NULL, 0),
(103, 'pending', 26, '2017-10-11 14:23:10', '2017-10-12 01:42:46', NULL, 'Magang melanjutkan roll banner', NULL, NULL, 0),
(104, 'incomplete', 26, '2017-10-13 13:24:05', NULL, NULL, NULL, NULL, NULL, 0),
(105, 'pending', 1, '2017-10-15 07:45:46', '2017-10-16 12:35:09', NULL, '', NULL, NULL, 0),
(106, 'pending', 2, '2017-10-16 12:34:37', '2017-10-17 08:54:17', NULL, '', NULL, NULL, 0),
(107, 'pending', 1, '2017-10-16 12:35:30', '2017-10-17 18:44:50', NULL, '', NULL, NULL, 0),
(108, 'pending', 23, '2017-10-16 12:55:03', '2017-10-28 13:04:14', NULL, '', NULL, NULL, 0),
(109, 'pending', 5, '2017-10-16 13:01:46', '2017-10-16 21:13:08', NULL, 'Rapat', NULL, NULL, 0),
(110, 'pending', 2, '2017-10-18 14:01:17', '2017-11-04 13:24:21', NULL, '', NULL, NULL, 0),
(111, 'pending', 5, '2017-10-21 13:04:37', '2017-10-23 22:31:08', NULL, 'Rapat', NULL, NULL, 0),
(112, 'pending', 3, '2017-10-22 13:46:26', '2017-10-27 05:25:51', NULL, '', NULL, NULL, 0),
(113, 'pending', 23, '2017-10-28 13:04:20', '2017-11-04 13:32:32', NULL, '', NULL, NULL, 0),
(114, 'pending', 1, '2017-11-04 13:21:09', '2017-11-04 16:12:30', NULL, 'Rapat Mingguan', NULL, NULL, 0),
(115, 'pending', 3, '2017-11-04 13:31:48', '2017-12-02 14:04:05', NULL, '', NULL, NULL, 0),
(116, 'pending', 5, '2017-11-04 13:32:00', '2017-11-04 13:46:51', NULL, '', NULL, NULL, 0),
(117, 'pending', 8, '2017-11-04 13:32:16', '2017-11-11 12:59:55', NULL, '', NULL, NULL, 0),
(118, 'pending', 23, '2017-11-04 13:32:37', '2017-11-11 13:00:32', NULL, '', NULL, NULL, 0),
(119, 'pending', 1, '2017-11-06 04:11:47', '2017-11-10 15:40:22', NULL, '', NULL, NULL, 0),
(120, 'pending', 14, '2017-11-08 23:26:53', '2018-07-05 06:58:01', NULL, 'wew', NULL, NULL, 0),
(121, 'pending', 8, '2017-11-11 13:00:02', '2017-11-11 15:45:17', NULL, 'done\n', NULL, NULL, 0),
(122, 'pending', 23, '2017-11-11 13:01:15', '2017-11-11 15:58:22', NULL, '', NULL, NULL, 0),
(123, 'pending', 1, '2017-11-13 23:44:17', '2017-11-15 06:55:53', NULL, '', NULL, NULL, 0),
(124, 'pending', 8, '2017-11-18 13:26:36', '2017-12-02 13:50:57', NULL, '', NULL, NULL, 0),
(125, 'pending', 23, '2017-11-18 13:38:40', '2017-11-25 15:20:22', NULL, '', NULL, NULL, 0),
(126, 'pending', 23, '2017-11-25 15:20:29', '2018-01-31 15:19:53', NULL, '', NULL, NULL, 0),
(127, 'pending', 8, '2017-12-02 13:50:59', '2017-12-02 14:38:59', NULL, 'rapat', NULL, NULL, 0),
(128, 'pending', 3, '2017-12-02 14:13:32', '2017-12-02 16:31:49', NULL, '', NULL, NULL, 0),
(129, 'pending', 3, '2018-02-07 16:06:22', '2018-02-10 14:22:45', NULL, '', NULL, NULL, 0),
(130, 'pending', 8, '2018-02-10 13:38:56', '2018-02-14 14:57:02', NULL, 'done\n', NULL, NULL, 0),
(131, 'pending', 3, '2018-02-14 13:23:13', '2018-02-14 17:53:48', NULL, '', NULL, NULL, 0),
(132, 'pending', 8, '2018-02-14 14:57:05', '2018-02-17 13:26:21', NULL, '', NULL, NULL, 0),
(133, 'pending', 3, '2018-02-17 13:25:02', '2018-02-17 19:30:58', NULL, '', NULL, NULL, 0),
(134, 'pending', 8, '2018-02-17 13:26:29', '2018-02-17 15:22:09', NULL, 'rapat rutin (development)', NULL, NULL, 0),
(135, 'pending', 1, '2018-02-17 13:28:12', '2018-02-17 13:54:36', NULL, 'rapat malam minggu 17 Februari', NULL, NULL, 0),
(136, 'pending', 1, '2018-03-05 18:09:02', '2018-05-05 14:35:23', NULL, '', NULL, NULL, 0),
(137, 'pending', 8, '2018-03-31 14:07:06', '2018-05-05 10:24:49', NULL, '', NULL, NULL, 0),
(138, 'pending', 5, '2018-04-04 10:00:06', '2018-04-04 12:01:08', NULL, '', NULL, NULL, 0),
(139, 'pending', 5, '2018-04-04 12:40:12', '2018-04-05 02:51:36', NULL, '', NULL, NULL, 0),
(140, 'pending', 5, '2018-04-05 03:07:12', '2018-04-05 03:07:22', NULL, '', NULL, NULL, 0),
(141, 'pending', 5, '2018-04-22 14:10:59', '2018-04-22 14:11:18', NULL, '', NULL, NULL, 0),
(142, 'pending', 2, '2018-05-04 10:50:12', '2018-05-04 10:50:34', NULL, '', NULL, NULL, 0),
(143, 'pending', 8, '2018-05-05 13:25:05', '2018-05-05 14:22:33', NULL, 'rapat rutin 4nesia\nMembahas project kedepannya, anggaran, dan motivasi anggota', NULL, NULL, 0),
(144, 'pending', 3, '2018-05-05 13:30:51', '2018-05-07 15:55:36', NULL, '', NULL, NULL, 0),
(145, 'pending', 23, '2018-05-08 15:22:02', '2018-05-08 15:37:35', NULL, '', NULL, NULL, 0),
(146, 'pending', 1, '2018-05-13 09:40:12', '2018-05-13 09:40:23', NULL, '', NULL, NULL, 0),
(147, 'incomplete', 2, '2018-05-14 09:53:07', NULL, NULL, NULL, NULL, NULL, 0),
(148, 'pending', 52, '2018-05-14 14:56:37', '2018-05-14 14:56:42', NULL, '', NULL, NULL, 0),
(149, 'pending', 56, '2018-05-14 16:40:30', '2018-05-14 16:53:10', NULL, 'UI?UX Theory, figma practice', NULL, NULL, 0),
(150, 'pending', 8, '2018-05-15 03:59:23', '2018-05-15 07:49:19', NULL, 'Trainer Design Thinking', NULL, NULL, 0),
(151, 'pending', 56, '2018-05-15 04:01:20', '2018-05-15 07:48:56', NULL, 'Design Thinking', NULL, NULL, 0),
(152, 'pending', 55, '2018-05-15 04:11:53', '2018-05-16 03:25:49', NULL, '', NULL, NULL, 0),
(153, 'pending', 3, '2018-05-15 04:12:39', '2018-05-15 07:49:40', NULL, 'pembekalan KP mengenai Design Thinking', NULL, NULL, 0),
(154, 'pending', 54, '2018-05-15 05:40:35', '2018-05-15 07:49:32', NULL, 'Melakukan Design Thinking', NULL, NULL, 0),
(155, 'pending', 49, '2018-05-15 07:26:46', '2018-05-15 09:28:23', NULL, 'mempelajari untuk menyelesaikan study case mengenai tokopedia', NULL, NULL, 0),
(156, 'pending', 50, '2018-05-15 07:27:11', '2018-05-15 09:26:39', NULL, 'StudyCase Tokopedia ', NULL, NULL, 0),
(157, 'pending', 51, '2018-05-15 07:27:15', '2018-05-15 09:23:32', NULL, 'Hari ini kita membahas :\n1. cara menarik pelanggan\n2. Cara mempertahankan kepercayaan pelanggan\n3. Mengembangkan fitur\n\nPada perusahaan Tokopedia', NULL, NULL, 0),
(158, 'pending', 53, '2018-05-15 07:27:42', '2018-05-15 09:54:05', NULL, 'Kanban_Tutorial', NULL, NULL, 0),
(159, 'pending', 48, '2018-05-15 07:27:43', '2018-05-15 14:26:41', NULL, '', NULL, NULL, 0),
(160, 'pending', 1, '2018-05-15 12:29:00', '2018-05-15 12:29:04', NULL, '', NULL, NULL, 0),
(161, 'pending', 56, '2018-05-16 03:25:08', '2018-05-16 06:49:00', NULL, 'Prototyping', NULL, NULL, 0),
(162, 'pending', 54, '2018-05-16 03:25:50', '2018-05-16 06:48:52', NULL, 'Sketching Apps Android', NULL, NULL, 0),
(163, 'pending', 8, '2018-05-16 03:25:50', '2018-05-16 03:25:50', NULL, NULL, NULL, NULL, 0),
(164, 'pending', 8, '2018-05-16 03:25:52', '2018-05-16 06:48:46', NULL, 'Design Thinking cont. (Trainer DT)', NULL, NULL, 0),
(165, 'pending', 55, '2018-05-16 03:25:52', '2018-05-16 06:48:00', NULL, '', NULL, NULL, 0),
(166, 'pending', 3, '2018-05-16 03:27:27', '2018-05-17 04:08:15', NULL, 'hari 3 KP membuat mockup ', NULL, NULL, 0),
(167, 'pending', 51, '2018-05-16 07:51:01', '2018-05-16 09:11:40', NULL, 'Hari ini kami meneruskan :\nMenganalisa lanjutan pada Tokopedia', NULL, NULL, 0),
(168, 'pending', 49, '2018-05-16 07:57:32', '2018-05-16 09:11:38', NULL, 'strategic plan menggunakan salah satu tools yang ada (SWOT)', NULL, NULL, 0),
(169, 'pending', 50, '2018-05-16 08:01:08', '2018-05-16 09:11:37', NULL, 'SWOT Analysis', NULL, NULL, 0),
(170, 'pending', 52, '2018-05-16 08:10:53', '2018-05-16 09:10:34', NULL, '', NULL, NULL, 0),
(171, 'pending', 8, '2018-05-17 03:24:33', '2018-05-17 05:48:53', NULL, 'DT (Prototyping phase (cont.) & Validation Testing)', NULL, NULL, 0),
(172, 'pending', 56, '2018-05-17 03:30:00', '2018-05-17 05:51:02', NULL, 'Validating, test case', NULL, NULL, 0),
(173, 'pending', 54, '2018-05-17 03:30:51', '2018-05-17 05:50:30', NULL, 'Simulasi User Testing/Validation', NULL, NULL, 0),
(174, 'pending', 55, '2018-05-17 03:32:16', '2018-05-17 03:32:16', NULL, NULL, NULL, NULL, 0),
(175, 'pending', 55, '2018-05-17 03:32:17', '2018-05-17 05:48:00', NULL, '', NULL, NULL, 0),
(176, 'pending', 3, '2018-05-17 05:48:14', '2018-05-17 05:48:41', NULL, 'hari 4 KP, membuat poster dan log mywallet\n', NULL, NULL, 0),
(177, 'pending', 58, '2018-05-17 06:24:45', '2018-05-17 10:12:59', NULL, '', NULL, NULL, 0),
(178, 'pending', 60, '2018-05-17 06:25:08', '2018-05-18 06:39:57', NULL, 'Pembuatan layout WhatsApp', NULL, NULL, 0),
(179, 'pending', 57, '2018-05-17 06:27:25', '2018-05-17 10:53:07', NULL, 'Belajar frontend', NULL, NULL, 0),
(180, 'pending', 48, '2018-05-17 07:01:44', '2018-05-17 09:01:04', NULL, 'Studi kasus analisis sistem', NULL, NULL, 0),
(181, 'pending', 50, '2018-05-17 07:04:33', '2018-05-18 07:03:04', NULL, 'Analysis Business Course', NULL, NULL, 0),
(182, 'pending', 53, '2018-05-17 07:09:49', '2018-05-17 08:57:37', NULL, 'Studi kasus analisis sistem', NULL, NULL, 0),
(183, 'pending', 51, '2018-05-17 07:20:50', '2018-05-17 18:10:46', NULL, '', NULL, NULL, 0),
(184, 'pending', 52, '2018-05-17 07:25:07', '2018-05-17 13:55:47', NULL, 'Belajar business idea', NULL, NULL, 0),
(185, 'pending', 49, '2018-05-17 07:55:15', '2018-05-17 18:05:18', NULL, 'Business ideas using a platform', NULL, NULL, 0),
(186, 'pending', 16, '2018-05-17 14:16:21', '2018-05-17 14:17:44', NULL, 'Membuat aplikasi dengan layout seperti WhatsApp', NULL, NULL, 0),
(187, 'pending', 1, '2018-05-17 21:03:05', '2018-05-17 21:20:13', NULL, 'Monitoring Kegiatan Intern', NULL, NULL, 0),
(188, 'pending', 54, '2018-05-18 03:30:04', '2018-05-18 04:46:35', NULL, 'Review and Sharing UI', NULL, NULL, 0),
(189, 'pending', 8, '2018-05-18 03:31:21', '2018-05-18 04:30:18', NULL, 'Sharing Portfolio', NULL, NULL, 0),
(190, 'pending', 55, '2018-05-18 03:34:27', '2018-05-18 06:01:01', NULL, '', NULL, NULL, 0),
(191, 'pending', 3, '2018-05-18 03:42:21', '2018-05-18 06:55:22', NULL, 'Basic After Effect Tutorial', NULL, NULL, 0),
(192, 'pending', 56, '2018-05-18 03:42:27', '2018-05-18 06:11:18', NULL, '', NULL, NULL, 0),
(193, 'pending', 8, '2018-05-18 04:37:11', '2018-05-18 04:37:14', NULL, '', NULL, NULL, 1),
(194, 'pending', 58, '2018-05-18 06:32:54', '2018-05-18 09:13:38', NULL, '', NULL, NULL, 0),
(195, 'pending', 57, '2018-05-18 06:39:14', '2018-05-18 09:06:07', NULL, 'Backend whatsapp clone', NULL, NULL, 0),
(196, 'pending', 60, '2018-05-18 06:40:00', '2018-05-18 09:03:35', NULL, 'Mengetahui apa itu API atau github\n', NULL, NULL, 0),
(197, 'pending', 50, '2018-05-18 07:03:08', '2018-05-27 01:29:02', NULL, '', NULL, NULL, 0),
(198, 'pending', 53, '2018-05-18 07:23:14', '2018-05-19 07:34:40', NULL, 'Pembagian Tugas', NULL, NULL, 0),
(199, 'pending', 48, '2018-05-18 07:24:18', '2018-05-18 11:35:14', NULL, 'info tugas ', NULL, NULL, 0),
(200, 'pending', 59, '2018-05-18 09:19:43', '2018-05-18 09:21:13', NULL, 'Melanjutkan kegiatan apa yang sudah di lakukan yaitu pembuatan kloningan aplikasi whatsapp, pada kesempatan kali ini membuat bagaimana mendapatkan data dan membuat fitur baru yaitu login', NULL, NULL, 0),
(201, 'pending', 16, '2018-05-18 11:27:42', '2018-05-18 11:28:06', NULL, 'API sederhana, login aplikasi', NULL, NULL, 0),
(202, 'pending', 1, '2018-05-18 13:03:32', '2018-05-18 17:18:34', NULL, '', NULL, NULL, 0),
(203, 'pending', 58, '2018-05-19 06:47:05', '2018-05-19 09:37:09', NULL, '', NULL, NULL, 0),
(204, 'pending', 57, '2018-05-19 06:47:20', '2018-05-19 09:38:13', NULL, 'Belajar backend WhatsappClone', NULL, NULL, 0),
(205, 'pending', 59, '2018-05-19 06:48:13', '2018-05-19 09:42:03', NULL, 'Melanjutkan pembuatan aplikasi clone whatsapp, dimana pada pertemuan hari ini membuat tampilan untuk pencarian tamu dan edit nama user', NULL, NULL, 0),
(206, 'pending', 60, '2018-05-19 07:56:29', '2018-05-19 15:54:39', NULL, '', NULL, NULL, 0),
(207, 'pending', 57, '2018-05-20 04:26:55', '2018-05-20 08:22:21', NULL, 'membuat database WhatsAppClone', NULL, NULL, 0),
(208, 'pending', 59, '2018-05-20 04:32:37', '2018-05-20 08:22:32', NULL, 'Hari ini belajar bangun api, dimana api tersebut teridiri dari pembuatan data kontak dan data user untuk menambah teman ', NULL, NULL, 0),
(209, 'pending', 60, '2018-05-20 04:37:56', '2018-05-20 08:23:08', NULL, 'hari ini kita belajar php', NULL, NULL, 0),
(210, 'pending', 58, '2018-05-20 04:40:40', '2018-05-20 08:22:09', NULL, '', NULL, NULL, 0),
(211, 'pending', 16, '2018-05-20 08:20:42', '2018-05-20 08:20:49', NULL, 'Membuat API', NULL, NULL, 0),
(212, 'pending', 49, '2018-05-20 11:15:19', '2018-05-22 09:15:59', NULL, 'Course', NULL, NULL, 0),
(213, 'pending', 1, '2018-05-21 14:07:02', '2018-05-21 14:21:52', NULL, 'Menambahkan project maintenance website uin antasari', NULL, NULL, 0),
(214, 'pending', 54, '2018-05-22 04:21:12', '2018-05-22 07:00:08', NULL, 'Finalisasi Design', NULL, NULL, 0),
(215, 'incomplete', 7, '2018-05-22 07:01:07', NULL, NULL, NULL, NULL, NULL, 0),
(216, 'pending', 54, '2018-05-22 08:32:58', '2018-05-22 10:14:49', NULL, 'Final Design', NULL, NULL, 0),
(217, 'pending', 54, '2018-05-23 06:43:55', '2018-05-23 09:00:58', NULL, 'Validasi User', NULL, NULL, 0),
(218, 'pending', 54, '2018-05-24 06:03:38', '2018-05-24 09:25:31', NULL, 'User Testing', NULL, NULL, 0),
(219, 'pending', 3, '2018-05-24 13:46:22', '2018-05-24 14:43:17', NULL, 'Cek keadaan', NULL, NULL, 0),
(220, 'pending', 54, '2018-05-25 06:03:04', '2018-05-26 03:49:17', NULL, '', NULL, NULL, 0),
(221, 'incomplete', 48, '2018-05-27 04:57:08', NULL, NULL, NULL, NULL, NULL, 0),
(222, 'pending', 59, '2018-05-27 06:10:24', '2018-05-27 07:21:15', NULL, 'Briefing dari project halonesia', NULL, NULL, 0),
(223, 'pending', 58, '2018-05-27 07:22:34', '2018-07-19 04:38:45', NULL, '', NULL, NULL, 0),
(224, 'pending', 55, '2018-05-27 07:22:42', '2018-05-27 07:56:19', NULL, '', NULL, NULL, 0),
(225, 'pending', 57, '2018-05-27 07:22:43', '2018-05-27 07:54:47', NULL, 'Briefing project siakad', NULL, NULL, 0),
(226, 'pending', 8, '2018-05-27 07:22:53', '2018-05-28 00:20:37', NULL, 'Meeting', NULL, NULL, 0),
(227, 'pending', 60, '2018-05-27 07:23:22', '2018-05-27 07:54:26', NULL, 'Breafing SIAKAD mobile', NULL, NULL, 0),
(228, 'pending', 53, '2018-05-29 08:01:10', '2018-05-29 09:54:10', NULL, 'Menentukan fitur aplikasi hallonesia ', NULL, NULL, 0),
(229, 'pending', 54, '2018-05-29 08:01:17', '2018-05-29 10:51:23', NULL, 'Briefing Project HaloNesia', NULL, NULL, 0),
(230, 'pending', 59, '2018-05-29 08:01:38', '2018-05-29 09:55:25', NULL, 'Rapat bahas fitur aplikasi hainesia', NULL, NULL, 0),
(231, 'pending', 54, '2018-05-30 09:00:14', '2018-05-30 11:13:54', NULL, 'Sketching UI HaloNesia', NULL, NULL, 0),
(232, 'pending', 1, '2018-06-02 19:09:32', '2018-07-04 13:23:53', NULL, '', NULL, NULL, 0),
(233, 'pending', 59, '2018-06-05 07:28:52', '2018-06-05 09:27:36', NULL, 'Diskusi fitur dan menambahkan milestone serta mengvalidasi fitur melalui UML', NULL, NULL, 0),
(234, 'pending', 53, '2018-06-05 08:05:08', '2018-06-05 09:21:37', NULL, 'Diskusi tentang fitur, menambahkan milestone, dan validasi UML (Use case Diagram HaloNesia)', NULL, NULL, 0),
(235, 'pending', 55, '2018-06-08 02:46:56', '2018-06-08 07:03:07', NULL, '', NULL, NULL, 0),
(236, 'pending', 54, '2018-06-23 05:58:15', '2018-06-23 10:31:26', NULL, '', NULL, NULL, 0),
(237, 'pending', 60, '2018-06-24 14:12:51', '2018-06-24 14:13:01', NULL, '', NULL, NULL, 0),
(238, 'pending', 54, '2018-06-25 04:40:59', '2018-06-25 10:46:08', NULL, '', NULL, NULL, 0),
(239, 'pending', 54, '2018-06-26 03:58:44', '2018-06-26 10:47:04', NULL, '', NULL, NULL, 0),
(240, 'pending', 54, '2018-07-02 03:36:36', '2018-07-02 09:44:09', NULL, '', NULL, NULL, 0),
(241, 'pending', 54, '2018-07-03 05:47:24', '2018-07-03 11:46:44', NULL, '', NULL, NULL, 0),
(242, 'pending', 3, '2018-07-04 13:25:14', '2018-07-06 10:09:30', NULL, '', NULL, NULL, 0),
(243, 'pending', 23, '2018-07-04 13:27:08', '2018-07-04 16:08:09', NULL, '', NULL, NULL, 0),
(244, 'pending', 1, '2018-07-04 17:03:27', '2018-07-04 17:03:32', NULL, '', NULL, NULL, 0),
(245, 'pending', 21, '2018-07-04 17:03:35', '2018-07-05 08:36:30', NULL, 'fokus', NULL, NULL, 0),
(246, 'pending', 54, '2018-07-05 06:30:45', '2018-07-05 10:04:11', NULL, '', NULL, NULL, 0),
(247, 'pending', 1, '2018-07-05 16:33:05', '2018-07-06 10:01:10', NULL, '', NULL, NULL, 0),
(248, 'pending', 54, '2018-07-09 07:38:11', '2018-07-09 11:08:32', NULL, '', NULL, NULL, 0),
(249, 'pending', 14, '2018-07-11 05:16:16', '2018-07-17 17:50:01', NULL, 'masih berusaha', NULL, NULL, 0),
(250, 'pending', 1, '2018-07-13 12:51:17', '2018-08-25 11:50:13', NULL, '', NULL, NULL, 0),
(251, 'pending', 54, '2018-07-16 05:33:51', '2018-07-16 15:19:51', NULL, '', NULL, NULL, 0),
(252, 'pending', 54, '2018-07-17 07:45:53', '2018-07-17 10:37:17', NULL, '', NULL, NULL, 0),
(253, 'pending', 58, '2018-07-19 04:39:13', '2018-07-19 13:04:13', NULL, '', NULL, NULL, 0),
(254, 'incomplete', 58, '2018-07-20 05:10:23', NULL, NULL, NULL, NULL, NULL, 0),
(255, 'incomplete', 56, '2018-08-04 17:48:19', NULL, NULL, NULL, NULL, NULL, 0),
(256, 'incomplete', 1, '2018-08-25 11:50:17', NULL, NULL, NULL, NULL, NULL, 0),
(257, 'pending', 14, '2018-08-27 08:59:31', '2018-08-28 04:04:59', NULL, 'update data mahsiswa SIAKAD UIN', NULL, NULL, 0),
(258, 'pending', 14, '2018-09-05 04:18:28', '2018-09-05 13:04:06', NULL, 'SOP akademik UIN\n', NULL, NULL, 0),
(259, 'pending', 14, '2018-09-07 02:49:52', '2018-09-07 02:49:52', NULL, NULL, NULL, NULL, 0),
(260, 'pending', 14, '2018-09-07 02:50:01', '2018-09-10 12:30:23', NULL, 'bikin list task', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `checklist_items`
--

CREATE TABLE `checklist_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `is_checked` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `checklist_items`
--

INSERT INTO `checklist_items` (`id`, `title`, `is_checked`, `task_id`, `deleted`) VALUES
(1, 'Home', 1, 152, 0),
(2, 'Income', 1, 152, 0),
(3, 'Job Vacancy', 1, 152, 0),
(4, 'Calendar', 1, 152, 0),
(5, 'Detail Income', 0, 152, 1),
(6, 'Details Job Vacancy', 1, 152, 0),
(7, 'Pembuatan Poster Aplikasi', 0, 153, 0),
(8, 'Pembuatan Logo Aplikasi ', 1, 153, 0),
(9, 'Income Graph', 1, 152, 0),
(10, 'Reminder List', 1, 152, 0),
(11, 'Income Detail', 0, 152, 1),
(12, 'Fill Reminder', 1, 152, 0),
(13, 'Income Details', 1, 152, 0),
(14, 'Income Outcome Fill', 1, 152, 0),
(15, 'Income List', 0, 152, 1),
(16, 'Validation Testing', 1, 154, 0),
(17, 'Jabatan', 0, 176, 0),
(18, 'Input data perguruan tinggi', 1, 134, 0),
(19, 'Menyimpan data perguruan tinggi', 1, 134, 0),
(20, 'Input form password dan confrim password', 1, 222, 0),
(21, 'Menyimpan ubah password', 1, 222, 0),
(22, 'Upload TTD (png/jpg/jpeg)', 1, 226, 0),
(23, 'Menyimpan file TTD', 1, 226, 0),
(24, 'View Data KRS Mahasiswa', 1, 242, 0),
(25, 'Print data KRS Mahasiswa', 1, 242, 0),
(26, 'Print data KRS Mahasiswa', 0, 242, 1),
(27, 'Admin: Filter Data KRS Mahasiswa', 1, 242, 0),
(28, 'Dosen: Filter Data KRS Mahasiswa', 0, 242, 0),
(29, 'Admin: Edit data KRS Mahasiswa', 0, 242, 0),
(30, 'View data TTD ', 1, 226, 0),
(31, 'Filter Data Arsip KRS berdasarkan Semester ', 1, 243, 0),
(32, 'View Data Arsip KRS Mahasiswa ', 1, 243, 0),
(33, 'Cetak/Print Arsip KRS Mahasiswa', 1, 243, 0),
(34, 'Filter Data Dosen Matakuliah berdasarkan Program Studi', 1, 241, 0),
(35, 'Search Data Dosen Matakuliah', 1, 241, 0),
(36, 'View Data Matakuliah Program Studi', 0, 240, 1),
(37, 'Search Data Matakuliah Program Studi', 1, 240, 0),
(38, 'Filter Data Matakuliah berdasarkan Program Studi', 1, 240, 0),
(39, 'View Data Matakuliah (Universitas, Fakultas, Program Studi)', 1, 240, 0),
(40, 'Filter Data Progrma Studi', 1, 239, 0),
(41, 'Filter Data Tahun Ajaran/Semester', 1, 239, 0),
(42, 'Search Data Matakuliah yang dipilih', 1, 239, 0),
(43, 'View Data Matakuliah yang Dipilih', 1, 239, 0),
(44, 'Tambahkan Matakuliah yang dipilih ', 1, 239, 0),
(45, 'Kembalikan/Hapus Matakuliah yang dipilih', 1, 239, 0),
(46, 'Import List Data Matakuliah yang telah dipilih', 1, 239, 0),
(47, 'Filter Data Pertemuan Matakulaih berdasarkan Prodi', 0, 227, 1),
(48, 'Filter Data Pertemuan Matakuliah berdasarkan Prodi', 1, 227, 0),
(49, 'Filter Data Pertemuan Matakuliah berdasarkan Kelas', 1, 227, 0),
(50, 'Filter Data Pertemuan Matakuliah berdasarkan Matakuliah', 1, 227, 0),
(51, 'Tambah Data PErtemuan Matakuliah', 0, 227, 1),
(52, 'Tambah Data Pertemuan Matakuliah ', 1, 227, 0),
(53, 'Cari Data Pertemuan Matakuliah', 1, 227, 0),
(54, 'Tampilkan Data Pertemuan Matakuliah (Absensi, ', 0, 227, 1),
(55, 'Tampilkan Data Pertemuan Matakuliah', 1, 227, 0),
(56, 'Absensi', 1, 227, 0),
(57, 'Input Judul Materi', 1, 227, 0),
(58, 'Input Catatan Pertemuan', 1, 227, 0),
(59, 'Pilih Jenis Pertemuan', 1, 227, 0),
(60, 'Tampilkan List Data Absensi', 1, 227, 0),
(61, 'Tampilkan List Data Absensi', 0, 227, 1),
(62, 'Input Status/Keterangan Absensi (Hadir,Alfa, Sakit, Izin, Dispensasi)  ', 1, 227, 0),
(63, 'Submit List Data Absensi ', 1, 227, 0),
(64, 'Tampilkan Modal Tambah Data Pertemuan Baru ', 1, 227, 0),
(65, 'Input Form dalam Modal Tambah Data Pertemuan Baru', 1, 227, 0),
(66, 'Input Form dalam Modal Tambah Data Pertemuan Baru', 0, 227, 1),
(67, 'Input/Cek Ruangan dalam Modal Tambah Data Pertemuan Baru', 1, 227, 0),
(68, 'Tampilkan Data Profil ', 0, 224, 1),
(69, 'Input Data Profil Mahasiswa & Dosen', 1, 224, 0),
(70, 'Tampilkan Data Profil Mahasiswa & Dosen', 1, 224, 0),
(71, 'Upload Foto Profil Mahasiswa & Dosen', 1, 224, 0),
(72, 'Input Data Akademik Mahasiswa', 1, 224, 0),
(73, 'Input Data Pribadi Mahasiswa', 1, 224, 0),
(74, 'Input Data Orangtua/Wali Mahasiswa', 1, 224, 0),
(75, 'Input Data Pendidikan Mahasiswa', 1, 224, 0),
(76, 'Input Data Akun Mahasiswa', 1, 224, 0),
(77, 'Input Data Prestasi Mahasiswa', 1, 224, 0),
(78, 'Simpan Data Profil Mahasiswa', 1, 224, 0),
(79, 'Batalkan Data Profil Mahasiswa  ', 0, 224, 1),
(80, 'Kembali Data Profil Mahasiswa', 1, 224, 0),
(81, 'Input Data Induk Dosen', 1, 224, 0),
(82, 'Input Data Pribadi Dosen', 1, 224, 0),
(83, 'Input SK Pengangkatan Dosen', 1, 224, 0),
(84, 'Input Data Akun Dosen', 1, 224, 0),
(85, 'Simpan Data Profil Dosen', 1, 224, 0),
(86, 'Kembali Data Profil Dosen', 1, 224, 0),
(87, 'Input Data Profil Pimpinan Fakultas', 1, 224, 0),
(88, 'Simpan Data Pimpinan Fakultas', 1, 224, 0),
(89, 'Tampilkan List Data Riwayat Login ', 1, 223, 0),
(90, 'Cari Data Riwayat Login', 1, 223, 0),
(91, 'Filter Data Matakuliah berdasarkan Program Studi', 1, 216, 0),
(92, 'Cari Data Matakuliah ', 1, 216, 0),
(93, 'Tampilkan List Data Matakuliah', 0, 216, 1),
(94, 'Tampilkan List Data Matakuliah Prodi', 1, 216, 0),
(95, 'Filter Data Prodi berdasarkan Fakultas ', 1, 147, 0),
(96, 'Cari Data Program Studi', 1, 147, 0),
(97, 'Tampilkan Data Program Studi', 0, 147, 1),
(98, 'Tambahkan Data Program Studi', 0, 147, 1),
(99, 'Tambahkan Data Program Studi Baru', 0, 147, 1),
(100, 'Tambahkan Data Program Studi Baru', 1, 147, 0),
(101, 'Input Data Prodi Baru', 1, 147, 0),
(102, 'Submit Data Prodi Baru', 1, 147, 0),
(103, 'Detail Action List Data Prodi ', 1, 147, 0),
(104, 'Detail Data Kelas ', 1, 147, 0),
(105, 'Tambahkan Data Ruangan Kelas Prodi', 1, 147, 0),
(106, 'Simpan Data Ruangan Kelas Prodi', 1, 147, 0),
(107, 'Detail Edit Kelas', 1, 147, 0),
(108, 'Edit Data Prodi', 1, 147, 0),
(109, 'Submit Data Prodi ', 1, 147, 0),
(110, 'Filter Data Mahasiswa berdasarkan Prodi', 1, 144, 0),
(111, 'Filter Data Mahasiswa berdasarkan Angkatan', 1, 144, 0),
(112, 'Filter Data Mahasiswa berdasarkan Gender', 1, 144, 0),
(113, 'Filter Data Mahasiswa berdasarkan Gender', 1, 144, 0),
(114, 'Cari Data Mahasiswa', 1, 144, 0),
(115, 'Tampilkan List Data Mahasiswa ', 1, 144, 0),
(116, 'Detail List Data Mahasiswa', 1, 144, 0),
(117, 'Detail List Data Mahasiswa', 1, 144, 0),
(118, 'Tambah Data Mahasiswa', 1, 144, 0),
(119, 'Import Data Mahasiswa', 1, 144, 0),
(120, 'Export Data Mahasiswa', 1, 144, 0),
(121, 'Tampilkan List Data Dosen', 1, 143, 0),
(122, 'Filter Data Dosen berdasarkan Fakultas', 1, 143, 0),
(123, 'Filter Data Dosen berdasarkan Status Pegawai', 1, 143, 0),
(124, 'Filter Data Dosen berdasarkan Gender', 1, 143, 0),
(125, 'Import Data Dosen', 1, 143, 0),
(126, 'Export Data Dosen', 1, 143, 0),
(127, 'Tambah Data Dosen Baru', 1, 143, 0),
(128, 'Input Data Dosen Baru', 1, 143, 0),
(129, 'Simpan Data Dosen Baru', 1, 143, 0),
(130, 'Cari Data Dosen', 1, 143, 0),
(131, 'Detail Data Dosen (Edit, Detail, View) ', 1, 143, 0),
(132, 'Edit Data Dosen ', 1, 143, 0),
(133, 'Simpan Data Dosen', 1, 143, 0),
(134, 'Tampilkan List Mahasiswa Dosen', 1, 143, 0),
(135, 'Tampilkan List Mahasiswa Dosen', 1, 143, 0),
(136, 'Tampilkan List Data Pegawai', 1, 142, 0),
(137, 'Cari Data Pegawai', 1, 142, 0),
(138, 'Tambah Data Pegawai', 1, 142, 0),
(139, 'Input Data Akun Pegawai Baru', 1, 142, 0),
(140, 'Submit Data Pegawai Baru ', 1, 142, 0),
(141, 'Detail List Data Akun Pegawai', 0, 142, 1),
(142, 'Detail List Data Akun Pegawai( Edit Role, Edit Akun, Hapus Akun)', 1, 142, 0),
(143, 'Tampilkan Edit Role', 1, 142, 0),
(144, 'Tambahkan Role Pegawai', 1, 142, 0),
(145, 'Hapus Role Pegawai', 1, 142, 0),
(146, 'Edit Akun Pegawai', 1, 142, 0),
(147, 'Input Data Akun Pegawai', 1, 142, 0),
(148, 'Submit Akun Pegawai', 1, 142, 0),
(149, 'Hapus Akun Pegawai', 1, 142, 0),
(150, 'Filter Data Kelas berdasarkan Prodi', 1, 141, 0),
(151, 'Filter Data Kelas berdasarkan Angkatan', 1, 141, 0),
(152, 'Tampilkan List Data Kelas', 1, 141, 0),
(153, 'Cari Data Kelas', 1, 141, 0),
(154, 'Tambah Data Kelas', 1, 141, 0),
(155, 'Input Data Kelas Baru', 1, 141, 0),
(156, 'Submit Data Kelas', 1, 141, 0),
(157, 'Detail List Data Kelas(Edit, Tampilkan, Hapus)', 1, 141, 0),
(158, 'Edit Data Kelas', 1, 141, 0),
(159, 'Submit Data Kelas', 1, 141, 0),
(160, 'Tampilkan List Data Kelas', 1, 141, 0),
(161, 'Hapus Data Kelas', 1, 141, 0),
(162, 'Tampilkan Data Tahun Akademik', 1, 140, 0),
(163, 'Cari Data Tahun AKademik', 1, 140, 0),
(164, 'Detail List Data Tahun Akademik', 0, 140, 1),
(165, 'Detail List Data Tahun Akademik ( Set Aktif, Edit Periode, Hapus Semester)', 1, 140, 0),
(166, 'Edit Periode', 1, 140, 0),
(167, 'Simpan Periode Semester', 1, 140, 0),
(168, 'Hapus Semester', 1, 140, 0),
(169, 'Tambah Data Semester', 1, 140, 0),
(170, 'Input Data Tahun Akademik', 1, 140, 0),
(171, 'Simpan Data Tahun Akademik', 1, 140, 0),
(172, 'Tampilkan List Data Matakuliah', 1, 139, 0),
(173, 'Tampilkan List Data Matakuliah berdasarkan Prodi', 1, 139, 0),
(174, 'Detail List Data Matakuliah (Edit Data)', 1, 139, 0),
(175, 'Detail List Data Matakuliah (Edit Data)', 0, 139, 1),
(176, 'Edit Mata Kuliah', 1, 139, 0),
(177, 'Submit Data Matakuliah', 1, 139, 0),
(178, 'Tambah Data', 0, 139, 1),
(179, 'Tambah Data Matakuliah Baru', 1, 139, 0),
(180, 'Input Data Matakuliah', 1, 139, 0),
(181, 'Submit Data Matakuliah', 1, 139, 0),
(182, 'List Data Rektor', 1, 138, 0),
(183, 'Filter Data Dekan berdasarkan Fakultas', 1, 138, 0),
(184, 'Cari Data Dekan', 1, 138, 0),
(185, 'Tampilkan Data KaProdi', 1, 138, 0),
(186, 'Filter Data KaProdi berdasarkan Fakultas', 1, 138, 0),
(187, 'Cari Data KaProdi ', 1, 138, 0),
(188, 'Cari Data Rektor', 1, 138, 0),
(189, 'Tampilkan Data Fakultas', 1, 136, 0),
(190, 'Cari Data Fakultas ', 1, 136, 0),
(191, 'Detail List Data Fakultas(Edit)', 1, 136, 0),
(192, 'Edit Data Fakultas', 1, 136, 0),
(193, 'Save Data Fakultas', 1, 136, 0),
(194, 'Tambah Fakultas Baru ', 1, 136, 0),
(195, 'Input Data Fakultas', 1, 136, 0),
(196, 'Submit Data ', 1, 136, 0),
(197, 'Tampilkan Data Gedung ', 1, 135, 0),
(198, 'Cari Data Gedung', 1, 135, 0),
(199, 'Detail List Data Gedung (Edit, Hapus) ', 1, 135, 0),
(200, 'Edit Gedung', 1, 135, 0),
(201, 'Edit Gedung', 1, 135, 0),
(202, ' Input Data Gedung Baru ', 1, 135, 0),
(203, 'Simpan Data', 1, 135, 0),
(204, 'Hapus Gedung', 1, 135, 0),
(205, 'Tampilkan Data Ruangan', 1, 135, 0),
(206, 'Cari Data Ruangan', 1, 135, 0),
(207, 'Filter Data Ruangan berdasarkan Gedung', 1, 135, 0),
(208, 'Detail Data Gedung dan Ruangan (Edit, Hapus)', 1, 135, 0),
(209, 'Edit Data Ruangan', 1, 135, 0),
(210, 'Simpan Data Ruangan', 1, 135, 0),
(211, 'Hapus Data Ruangan', 1, 135, 0),
(212, 'Tambah Data Ruangan Baru', 1, 135, 0),
(213, 'Simpan Data', 1, 135, 0),
(214, 'Tampilkan List Data LKD Dosen', 1, 133, 0),
(215, 'Filter Data LKD berdasarkan bulan', 1, 133, 0),
(216, 'Filter Data LKD berdasarkan periode', 1, 133, 0),
(217, 'Filter Data LKD berdasarkan status pengajuan', 1, 133, 0),
(218, 'Cari Data LKD', 1, 133, 0),
(219, 'Export Data LKD Bulanan', 1, 133, 0),
(220, 'ACC Semua Data LKD', 1, 133, 0),
(221, 'Input Form LKD', 1, 131, 0),
(222, 'Tambah Kegiatan pada Form LKD', 1, 131, 0),
(223, 'Submit Form LKD', 1, 131, 0),
(224, 'Tampilkan  Data Laporan LKD', 1, 131, 0),
(225, 'Filter Laporan Lembar Kerja Dosen berdasarkan bulan', 1, 131, 0),
(226, 'Filter Laporan Lembar Kerja Dosen berdasarkan periode', 1, 131, 0),
(227, 'Ajukan ACC Laporan LKD', 1, 131, 0),
(228, 'Filter Pengajuan Rekapitulasi Kehadiran berdasarkan bulan', 1, 131, 0),
(229, 'Ajukan ACC', 1, 131, 0),
(230, 'Tampilkan data dosen matakuliah', 1, 241, 0),
(231, 'Filter data dosen matakuliah berdasarkan prodi', 0, 241, 0),
(232, 'Cari data dosen matakuliah', 1, 241, 0),
(233, 'Tampilkan data jadwal kuliah mahasiswa', 0, 233, 0),
(234, 'Tampilkan data jadwal kuliah mahasiswa', 0, 229, 0),
(235, 'Filter data jadwal kuliah berdasarkan prodi', 0, 229, 0),
(236, 'Filter data jadwal kuliah berdasarkan kelas', 0, 229, 0),
(237, 'Filter data jadwal kuliah berdasarkan hari', 0, 229, 0),
(238, 'Search data jadwal kuliah', 0, 229, 0),
(239, 'Tamplikan data aspek nilai', 1, 228, 0),
(240, 'FIlter data berdasarkan program studi', 1, 228, 0),
(241, 'Import data aspek nilai dari semester sebelumnya', 0, 228, 0),
(242, 'Simpan data aspek nilai', 0, 228, 0),
(243, 'Input komponen nilai dalam tabel', 1, 228, 0),
(244, 'Tampilkan data presensi mahasiswa', 1, 231, 0),
(245, 'Filter data program studi presensi mahasiswa', 1, 231, 0),
(246, 'FIlter data nama mahasiswa', 1, 231, 0),
(247, 'Tampilkan modal detail kehadiran mahasiswa', 1, 231, 0),
(248, 'Tampilkan data berita dan pengumuman', 1, 247, 0),
(249, 'Filter tujuan berita dan pengumuman', 1, 247, 0),
(250, 'Tambah data berita dan pengumuman', 1, 247, 0),
(251, 'Tampilkan halaman tambah berita dan pengumuman', 1, 247, 0),
(252, 'Input form berita dan pengumuman', 1, 247, 0),
(253, 'Submit berita dan pengumuman', 1, 247, 0),
(254, 'Update data berita dan pengumuman', 1, 247, 0),
(255, 'Hapus data berita dan pengumuman', 1, 247, 0),
(256, 'viewMyPengaduanList', 0, 254, 0),
(257, 'createPengaduan ', 0, 254, 0),
(258, 'sendPengaduan ', 0, 254, 1),
(259, ' changeUsername', 0, 253, 0),
(260, 'changePhotoProfile', 0, 253, 0),
(261, 'Authentification', 0, 249, 0),
(262, 'intentHomescreen', 0, 249, 0),
(263, 'SubmitPengaduan ', 0, 254, 0),
(264, 'viewBeritalist', 0, 252, 0),
(265, 'viewBeritaDetail', 0, 252, 0),
(266, 'Survey_List', 0, 257, 0),
(267, 'Survey_List', 0, 257, 1),
(268, 'Survey_Editor', 1, 257, 0),
(269, 'Survey_SubmissionList', 1, 257, 0),
(270, 'Survey_Results', 1, 257, 0),
(271, 'Berita_List', 0, 258, 0),
(272, 'Berita_Editor', 0, 258, 0),
(273, 'ALLPengaduan_List', 0, 260, 0),
(274, ' Reply_Pengaduan Screen', 0, 260, 0),
(275, 'CrUD Survey', 0, 262, 0),
(276, 'CrUD Survey', 0, 262, 1),
(277, 'Save/Draft Survey', 0, 262, 0),
(278, 'Publish(time Set) Survey', 0, 262, 0),
(279, 'Submission_list', 0, 262, 0),
(280, 'ViewResults', 0, 262, 0),
(281, 'CrUD Berita', 0, 263, 0),
(282, 'Save/Draft Berita', 0, 263, 0),
(283, 'Publish Berita', 0, 263, 0),
(284, 'updateDeletePengaduanList', 0, 264, 0),
(285, 'replyPengaduan', 0, 264, 0),
(286, 'Tampilan form login', 1, 255, 0),
(287, 'Desain background form login', 1, 255, 0),
(288, 'Akses user admin ke dashboard (submit username & password)', 1, 255, 0),
(289, 'Tampilkan data presensi kuliah', 0, 231, 0),
(290, 'Filter data program studi presensi kuliah', 1, 231, 0),
(291, 'Filter data kelas presensi kuliah', 1, 231, 0),
(292, 'Filter data mata kuliah presensi kuliah', 1, 231, 0),
(293, 'Tampilkan modal detail kehadiran mahasiswa (tab presensi kuliah)', 1, 231, 0),
(294, 'Tampilkan data status KRS mahasiswa', 1, 213, 0),
(295, 'Filter data status KRS berdasarkan program studi', 1, 213, 0),
(296, 'FIlter data status KRS berdasarkan semester', 1, 213, 0),
(297, 'Action button edit status KRS mahasiswa', 1, 213, 0),
(298, 'Tampilkan modal ubah statu KRS mahasiswa', 0, 213, 1),
(299, 'Tampilkan modal ubah status KRS mahasiswa', 1, 213, 0),
(300, 'Simpan data modal ubah status KRS mahasiswa', 1, 213, 0),
(301, 'Tampilkan data acc KRS mahasiswa', 1, 214, 0),
(302, 'Admin: filter data acc KRS berdasarkan program studi', 1, 214, 0),
(303, 'Admin: Filter data acc KRS berdasarkan angkatan', 1, 214, 0),
(304, 'Filter data acc KRS berdasarkan status', 1, 214, 0),
(305, 'Tombol ACC semua ', 1, 214, 0),
(306, 'Action button detail KRS mahasiswa', 1, 214, 0),
(307, 'Tampilkan modal data detaik KRS mahasiswa', 0, 214, 1),
(308, 'Tampilkan modal data detail KRS mahasiswa', 1, 214, 0),
(309, 'Tombol ACC/Reset KRS mahasiswa pada modal detal', 0, 214, 1),
(310, 'Tombol ACC/Reset KRS mahasiswa pada modal detail', 1, 214, 0),
(311, 'Action button registrasi mata kuliah mahasiswa', 1, 214, 0),
(312, 'Tampilkan data halaman registrasi mata kuliah mahasiswa', 1, 214, 0),
(313, 'Reg. matkul mhs: Tambah item mata kuliah ', 1, 214, 0),
(314, 'Reg. matkul mhs: Kembalikan item mata kuliah ', 1, 214, 0),
(315, 'Reg. matkul mhs: Lihat jadwal mata kuliah ', 1, 214, 0),
(316, 'Reg. matkul mhs: Print KRS mahasiswa', 1, 214, 0),
(317, 'Reg. matkul mhs: Print jadwal kuliah mahasiswa', 1, 214, 0),
(318, 'Reg. matkul mhs: Print jadwal kuliah mahasiswa', 1, 214, 0),
(319, 'Tampilkan data jadwal KRS mahasiswa', 1, 215, 0),
(320, 'Filter data jadwal KRS berdasarkan semester', 1, 215, 0),
(321, 'Set data jadwal KRS dengan memilih program studi', 1, 215, 0),
(322, 'Set data jadwal KRS dengan memilih fakultas', 1, 215, 0),
(323, 'Set data jadwal KRS dengan memilih tanggal mulai', 1, 215, 0),
(324, 'Set data jadwal KRS dengan memilih tanggal selesai', 1, 215, 0),
(325, 'Tombol set jadwal KRS mahasiswa', 1, 215, 0),
(326, 'Tampilkan data kelas mata kuliah', 1, 218, 0),
(327, 'Filter data kelas mata kuliah berdasarkan program studi', 1, 218, 0),
(328, 'Filter data kelas mata kuliah berdasarkan kelas', 1, 218, 0),
(329, 'Action button lihat data kelas', 1, 218, 0),
(330, 'Action button set jadwal kelas', 1, 218, 0),
(331, 'Tampilkan modal data lihat data kelas', 1, 218, 0),
(332, 'Input form modal data kelas (daftar mahasiswa)', 1, 218, 0),
(333, 'Tampilkan data halaman set jadwal kelas', 1, 218, 0),
(334, 'Input form set jadwal kelas', 1, 218, 0),
(335, 'Tombol cek ruangan', 0, 218, 1),
(336, 'Tampilkan modal data cek ruangan', 0, 218, 1),
(337, 'Tampilkan modal data cek ruangan setelah klik tombol cek ruangan', 1, 218, 0),
(338, 'Menambah form tambah pertemuan setelah klik tombol tambah pertemuan', 1, 218, 0),
(339, 'Submit set jadwal', 1, 218, 0),
(340, 'Tampilkan data registrasi mata kuliah mahasiswa', 1, 217, 0),
(341, 'Pilih dan tambahkan data mata kuliah', 1, 217, 0),
(342, 'Pilih dan kembalikan data mata kuliah', 1, 217, 0),
(343, 'Lihat jadwal mata kuliah yang dipilih', 1, 217, 0),
(344, 'Tombol ajukan KRS', 1, 217, 0),
(345, 'Tampilkan halaman kartu rencana studi mahasiswa', 1, 217, 0),
(346, 'Print KRS mahasiswa', 1, 217, 0),
(347, 'Print jadwal kuliah', 1, 217, 0),
(348, 'Tampilkan data acc krs mahasiswa', 1, 271, 0),
(349, 'Filter data acc krs berdasarkan status', 1, 271, 0),
(350, 'Tombol Acc semua', 1, 271, 0),
(351, 'Action button detail KRS mahasiswa', 1, 271, 0),
(352, 'Tampilkan modal detail KRS mahasiswa', 0, 271, 1),
(353, 'Tampilkan modal data detail KRS mahasiswa', 1, 271, 0),
(354, 'Tombol acc/reset status acc krs mahasiswa', 1, 271, 0),
(355, 'Tampilkan data presensi mahasiswa', 1, 272, 0),
(356, 'FIlter data presensi berdasarkan mahasiswa', 1, 272, 0),
(357, 'Action button detail presensi mahasiswa', 1, 272, 0),
(358, 'Tampilkan modal data detail presensi mahasiswa', 1, 272, 0),
(359, 'Tampilkan data presensi perkuliahan mahasiswa', 1, 274, 0),
(360, 'Filter data presensi kuliah berdasarkan mata kuliah', 1, 274, 0),
(361, 'Action button detail presensi', 1, 274, 0),
(362, 'Tampilkan modal data detail presensi', 1, 274, 0),
(363, 'Link menu sidebar home ke tampilan halaman', 1, 256, 0),
(364, 'Konten halaman', 0, 256, 0),
(365, 'Konten halaman data akun', 0, 259, 0),
(366, 'Modal edit akun', 0, 259, 0),
(367, 'Link menu sidebar data akun', 0, 259, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `vat_number` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `address`, `city`, `state`, `zip`, `country`, `created_date`, `website`, `phone`, `currency_symbol`, `starred_by`, `group_ids`, `deleted`, `vat_number`, `currency`, `disable_online_payment`) VALUES
(26, 'UIN Antasari', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '', '', 0, NULL, NULL, 0),
(27, '4nesia', 'Jl.Sukabirus F14\nDayeuhkolot', 'Bandung', 'West Java', '40257', 'Indonesia', '2018-04-28', '4nesia.com', '081355147878', '', '', '', 0, '', '', 0),
(28, 'Polres Wajo', 'Jl.Rusa', 'Sengkang', 'Sulawesi Selatan', '90911', 'Indonesia', '2018-05-01', 'polreswajo.id', '085255520546', '', '', '', 0, '', '', 0),
(29, 'Kejaksaan Negeri Sengkang', 'Jl. Kejaksaan No.1', 'Sengkang', 'Sulawesi Selatan', '90911', 'Indonesia', '2018-05-14', '', '', '', '', '', 0, '', '', 0),
(30, 'UNISMUH PALU', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '', '', 0, NULL, NULL, 0),
(31, 'House AG', NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL, '', '', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `client_groups`
--

CREATE TABLE `client_groups` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_estimate` tinyint(1) NOT NULL DEFAULT 0,
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT 0,
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `title`, `placeholder`, `options`, `field_type`, `related_to`, `sort`, `required`, `show_in_table`, `show_in_invoice`, `show_in_estimate`, `visible_to_admins_only`, `hide_from_clients`, `deleted`) VALUES
(1, 'Berapa Biayanya', '', '', 'text', 'estimate_form-1', 1, 0, 0, 0, 0, 0, 0, 0),
(2, 'Berapa Anggarannya', '', '', 'text', 'estimate_form-2', 1, 0, 0, 0, 0, 0, 0, 0),
(3, 'Durasi Pembuatan Aplikasi', '', '', 'text', 'estimate_form-2', 2, 0, 0, 0, 0, 0, 0, 0),
(4, 'Fitur yang di inginkan', '', '', 'text', 'estimate_form-2', 3, 0, 0, 0, 0, 0, 0, 0),
(5, 'Berapa Anggaran yang disiapkan', '', '', 'text', 'estimate_form-3', 1, 1, 0, 0, 0, 0, 0, 0),
(6, 'Fitur yang di inginkan', '', '', 'text', 'estimate_form-3', 2, 1, 0, 0, 0, 0, 0, 0),
(7, 'Durasi Pembuatan Aplikasi yang di inginkan', '', '3 bulan,4 bulan,5 bulan,6 bulan', 'multi_select', 'estimate_form-3', 3, 1, 0, 0, 0, 0, 0, 0),
(8, 'Berapa Anggaran yang disiapkan', '', '', 'text', 'estimate_form-4', 1, 1, 0, 0, 0, 0, 0, 0),
(9, 'Fitur yang di inginkan', '', '', 'text', 'estimate_form-4', 2, 1, 0, 0, 0, 0, 0, 0),
(10, 'Durasi Pembuatan Aplikasi yang di inginkan', '', '3 bulan,6 bulan', 'multi_select', 'estimate_form-4', 3, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `email_subject`, `default_message`, `custom_message`, `deleted`) VALUES
(1, 'login_info', 'Login details', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(2, 'reset_password', 'Reset password', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>', '', 0),
(3, 'team_member_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(4, 'send_invoice', 'New invoice', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>', '', 0),
(5, 'signature', 'Signature', 'Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>', '<span style=\"background-color: rgb(255, 255, 0);\">Powered By: CV.4nesia</span>', 0),
(6, 'client_contact_invitation', 'You are invited', '<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>', '', 0),
(7, 'ticket_created', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>', '', 0),
(8, 'ticket_commented', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>', '', 0),
(9, 'ticket_closed', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>', '', 0),
(10, 'ticket_reopened', 'Ticket  #{TICKET_ID} - {TICKET_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>', '', 0),
(11, 'general_notification', '{EVENT_TITLE}', '<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>', '', 0),
(12, 'invoice_payment_confirmation', 'Payment received', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\">\r\n                                        <tbody><tr>\r\n                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Payment Confirmation</h2>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                        </tbody>\r\n                                                                    </table>\r\n                                                                </td>\r\n                                                            </tr>\r\n                                                        </tbody>\r\n                                                    </table>\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    Hello,<br>\r\n                                                                                    We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_ID} <br>\r\n                                                                                    Thank you for your business cooperation.\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                        <tbody>\r\n                                                                                            <tr>\r\n                                                                                                <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                        <tbody>\r\n                                                                                                            <tr>\r\n                                                                                                                <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                                    <a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a>\r\n                                                                                                                </td>\r\n                                                                                                            </tr>\r\n                                                                                                        </tbody>\r\n                                                                                                    </table>\r\n                                                                                                </td>\r\n                                                                                            </tr>\r\n                                                                                        </tbody>\r\n                                                                                    </table>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n                                                                                    \r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n  {SIGNATURE}\r\n  </td>\r\n </tr>\r\n </tbody>\r\n  </table>\r\n  </td>\r\n  </tr>\r\n  </tbody>\r\n </table>\r\n  </td>\r\n </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n </tr>\r\n </tbody>\r\n </table>\r\n </td>\r\n </tr>\r\n </tbody>\r\n  </table>', NULL, 0),
(13, 'message_received', '{SUBJECT}', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(14, 'invoice_due_reminder_before_due_date', 'Invoice due reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Due Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that invoice {INVOICE_ID} is due on {DUE_DATE}. Please pay the invoice within due date.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(15, 'invoice_overdue_reminder', 'Invoice overdue reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Overdue Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that you have an unpaid invoice {INVOICE_ID}. We kindly request you to pay the invoice as soon as possible.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0),
(16, 'recurring_invoice_creation_reminder', 'Recurring invoice creation reminder', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Cration Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that a recurring invoice will be created on {NEXT_RECURRING_DATE}.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">View Invoice</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `estimates`
--

CREATE TABLE `estimates` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT 0,
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `estimates`
--

INSERT INTO `estimates` (`id`, `client_id`, `estimate_request_id`, `estimate_date`, `valid_until`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `deleted`) VALUES
(1, 28, 0, '2018-05-01', '2018-05-08', '', NULL, 'draft', 1, 0, 0),
(2, 29, 0, '2018-05-14', '2018-05-21', '', NULL, 'draft', 1, 0, 0),
(3, 27, 0, '2018-07-24', '2018-07-24', '', NULL, 'draft', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `estimate_forms`
--

CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `enable_attachment` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `estimate_forms`
--

INSERT INTO `estimate_forms` (`id`, `title`, `description`, `status`, `public`, `enable_attachment`, `deleted`) VALUES
(1, 'Website Portal Berita', '', 'active', 0, 0, 0),
(2, 'Website Dinas', '', 'active', 1, 1, 0),
(3, 'Aplikasi Android', '', 'active', 1, 1, 0),
(4, 'Aplikasi IOS', '', 'active', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `estimate_items`
--

INSERT INTO `estimate_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `estimate_id`, `deleted`) VALUES
(1, 'Subdomain & Server', 'lantas.polreswajo.id', 1, 'days', 0, 0, 1, 1),
(2, 'pembuatan website', 'Fitur :\n1.Tentang Kami\n2.Lakalantas\n3.Troublespot\n4.Info sim\n5.Pengaduan', 7, 'days', 500000, 3500000, 1, 0),
(3, 'Konfigurasi dan Update Website', 'pembuatan subdomain & alokasi server web lantas.polreswajo.id serta mengintegrasikan kesutra.polreswajo.id ', 1, 'days', 500000, 500000, 1, 0),
(4, 'pembuatan website', 'Kejaksaan Negeri Sengkang', 12, 'days', 1000000, 12000000, 2, 0),
(5, 'pembuatan aplikasi android', 'kejaksaan negeri sengkang', 20, 'days', 1000000, 20000000, 2, 0),
(6, 'pembuatan aplikasi iOS', 'Kejaksaan Negeri Sengkang', 20, 'days', 1000000, 20000000, 2, 0),
(7, 'Submit to Google Playstore', 'Aplikasi Android Kejaksaan Negeri Sengkang', 3, 'days', 500000, 1500000, 2, 0),
(8, 'Submit to Apple Store', 'Aplikasi iOS Kejaksaan Negeri Sengkang', 7, 'days', 500000, 3500000, 2, 0),
(9, 'Aplikasi Sistem Informasi Persuratan berbasis Website', 'Dinas Pemberdayaan Masyarakat dan Pemerintah Desa Jawa Barat: \n1.Surat Masuk\n2.Surat Keluar \n3.Kelola Pengguna\n4.Print Surat\n5.Disposi Surat\n6.Data Aset', 6, 'fitur', 5000000, 30000000, 3, 0),
(10, 'Sewa VPS Server', '30GB SSD Cloud Server Dual Core 1 tahun', 1, 'tahun', 3500000, 3500000, 3, 0),
(11, 'UI/UX Develop', 'Pembuatan interface yang simple dan clean', 6, 'pages', 2000000, 12000000, 3, 0),
(12, 'Pelatihan Penggunaan Aplikasi', '', 1, 'kegiatan', 3500000, 3500000, 3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `estimate_requests`
--

CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `estimate_requests`
--

INSERT INTO `estimate_requests` (`id`, `estimate_form_id`, `created_by`, `created_at`, `client_id`, `lead_id`, `assigned_to`, `status`, `files`, `deleted`) VALUES
(1, 1, 24, '2017-09-14 06:15:43', 9, 0, 0, 'new', 'a:0:{}', 0),
(2, 1, 28, '2017-11-06 04:06:04', 11, 0, 0, 'new', 'a:0:{}', 0),
(3, 1, 45, '2018-04-21 08:34:54', 25, 0, 0, 'new', 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `last_start_date` date DEFAULT NULL,
  `recurring_dates` longtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_by` text COLLATE utf8_unicode_ci NOT NULL,
  `rejected_by` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `created_by`, `location`, `client_id`, `labels`, `share_with`, `deleted`, `color`, `recurring`, `repeat_every`, `repeat_type`, `no_of_cycles`, `last_start_date`, `recurring_dates`, `confirmed_by`, `rejected_by`) VALUES
(1, 'Photo Team', 'Foto ulang', '2017-05-14', '2017-05-14', '08:00:00', '11:00:00', 1, 'Kantor 4NESIA', 0, '', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(2, 'Hansa, Fikri, Agus Shift', 'Piket', '2017-09-12', '2017-09-13', '08:00:00', '00:00:00', 2, '4nesia', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(3, 'Dian, Baso Shift', 'Piket', '2017-09-13', '2017-09-14', '06:00:00', '00:00:00', 2, '4nesia Basecamp', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(4, 'Hansa, FIkri, Baso Shift', 'Piket', '2017-09-14', '2017-09-15', '06:00:00', '00:00:00', 2, '4nesia Basecamp', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(5, 'Hendri, Amar, Dian, Ridwan Shift', 'Piket', '2017-09-15', '2017-09-16', '06:00:00', '00:00:00', 2, '4nesia Basecamp', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(6, 'Hendri, Arian, Amar Shift', 'Piket', '2017-09-16', '2017-09-16', '06:00:00', '11:00:00', 2, '4nesia Basecamp', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(7, 'Ridwan Shift', 'Piket', '2017-09-17', '2017-09-18', '06:00:00', '00:00:00', 2, '4nesia Basecamp', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(8, 'Agus Shift', 'Piket', '2017-09-18', '2017-09-19', '06:00:00', '00:01:00', 2, '4nesia Basecamp', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(9, 'Hansa, Fikri, Agus Shift', 'Piket', '2017-09-19', '2017-09-19', '06:00:00', '00:00:00', 2, '4nesia Basecamp', 7, 'Piket', 'all', 0, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(10, 'halo', 'makan', '2017-09-13', '2017-09-13', '00:00:00', '01:00:00', 1, '', 0, '', '', 1, '#83c340', 0, 0, NULL, 0, NULL, '', '', ''),
(11, 'Workshop Creative', 'Yang dilaksanakan oleh divisi creative ', '2017-09-20', '2017-09-20', '20:00:00', '23:00:00', 2, '4nesia Basecamp', 7, 'Worknesia', 'all', 0, '#e74c3c', 0, 0, NULL, 0, NULL, '', '', ''),
(12, 'Internship', 'Internship Program 2018', '2018-05-15', '2018-06-15', '01:00:00', '01:00:00', 1, 'Bandung', 27, '', 'all', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '', ''),
(13, '4nesia Internship Program 2018- Project KP', 'Briefing Project KP', '2018-05-27', '2018-05-27', '13:00:00', '16:00:00', 23, '4nesia Basecamp', 27, 'Briefing', 'member:1,member:3,member:2,member:23,member:14,member:8,member:16,member:21,member:59,member:54,member:53,member:60,member:57,member:58,member:48,member:56,member:55,member:49,member:50,member:52,member:51', 0, '#83c340', 0, 1, 'months', 0, '0000-00-00', '', '', ''),
(14, 'Kordinasi Tim Uin ', 'tim project', '2018-07-10', '2018-07-12', '22:00:00', '16:00:00', 1, 'Basecamp', 26, '', 'member:14,member:8,member:16,member:23', 0, '#29c2c2', 1, 1, 'months', 0, '2028-07-10', '2018-08-10,2018-09-10,2018-10-10,2018-11-10,2018-12-10,2019-01-10,2019-02-10,2019-03-10,2019-04-10,2019-05-10,2019-06-10,2019-07-10,2019-08-10,2019-09-10,2019-10-10,2019-11-10,2019-12-10,2020-01-10,2020-02-10,2020-03-10,2020-04-10,2020-05-10,2020-06-10,2020-07-10,2020-08-10,2020-09-10,2020-10-10,2020-11-10,2020-12-10,2021-01-10,2021-02-10,2021-03-10,2021-04-10,2021-05-10,2021-06-10,2021-07-10,2021-08-10,2021-09-10,2021-10-10,2021-11-10,2021-12-10,2022-01-10,2022-02-10,2022-03-10,2022-04-10,2022-05-10,2022-06-10,2022-07-10,2022-08-10,2022-09-10,2022-10-10,2022-11-10,2022-12-10,2023-01-10,2023-02-10,2023-03-10,2023-04-10,2023-05-10,2023-06-10,2023-07-10,2023-08-10,2023-09-10,2023-10-10,2023-11-10,2023-12-10,2024-01-10,2024-02-10,2024-03-10,2024-04-10,2024-05-10,2024-06-10,2024-07-10,2024-08-10,2024-09-10,2024-10-10,2024-11-10,2024-12-10,2025-01-10,2025-02-10,2025-03-10,2025-04-10,2025-05-10,2025-06-10,2025-07-10,2025-08-10,2025-09-10,2025-10-10,2025-11-10,2025-12-10,2026-01-10,2026-02-10,2026-03-10,2026-04-10,2026-05-10,2026-06-10,2026-07-10,2026-08-10,2026-09-10,2026-10-10,2026-11-10,2026-12-10,2027-01-10,2027-02-10,2027-03-10,2027-04-10,2027-05-10,2027-06-10,2027-07-10,2027-08-10,2027-09-10,2027-10-10,2027-11-10,2027-12-10,2028-01-10,2028-02-10,2028-03-10,2028-04-10,2028-05-10,2028-06-10,2028-07-10,', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `expenses`
--

INSERT INTO `expenses` (`id`, `expense_date`, `category_id`, `description`, `amount`, `files`, `title`, `project_id`, `user_id`, `deleted`) VALUES
(1, '2017-06-15', 2, '', 1000000, 'a:0:{}', '', 1, 6, 0),
(2, '2017-09-13', 2, 'untuk 2017-2018', 797500, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:43:\"expense_file59b9221d0c78a-Invoice-30112.pdf\";s:9:\"file_size\";s:5:\"12523\";}}', 'Bayar Hosting 4nesia.com', 9, 1, 0),
(3, '2017-09-10', 3, 'Syukuran dan Meetup', 350000, 'a:0:{}', 'Nasi Tumpeng', 0, 0, 0),
(4, '2017-09-10', 3, 'Untuk acara Syukuran', 20000, 'a:0:{}', 'Air Gelas', 0, 0, 0),
(5, '2017-09-14', 3, '', 80000, 'a:0:{}', 'Laundry Karpet', 0, 0, 0),
(6, '2017-09-14', 4, '', 550000, 'a:0:{}', 'UI/UX', 2, 8, 0),
(7, '2017-09-14', 4, '', 550000, 'a:0:{}', 'Backend Aplikasi', 2, 6, 0),
(8, '2017-09-14', 3, 'Hand Over Project\nPP Sengkang - Parepare\nBahan Bakar Mobil\nMakan malam di warung', 300000, 'a:0:{}', 'Operasional Parepare', 2, 0, 0),
(9, '2017-09-14', 6, '', 400000, 'a:0:{}', 'PPN 10%', 2, 0, 0),
(10, '2018-05-05', 4, '', 4992000, 'a:0:{}', 'Programmer', 32, 16, 0),
(11, '2018-05-05', 4, '', 3016000, 'a:0:{}', 'UI/Ux Designer', 32, 8, 0),
(12, '2018-05-05', 4, '', 1040000, 'a:0:{}', 'Marketing', 32, 38, 0),
(13, '2018-05-05', 4, '', 1144000, 'a:0:{}', 'Business Analyst ', 32, 14, 0),
(14, '2018-05-05', 4, '', 1144000, 'a:0:{}', 'Finance', 32, 23, 0),
(15, '2018-05-05', 4, '', 520000, 'a:0:{}', 'Graphic Designer', 32, 3, 0),
(16, '2018-05-05', 5, '', 5800000, 'a:0:{}', 'Pengadaan Asset', 32, 0, 0),
(17, '2018-05-05', 1, '', 2178000, 'a:0:{}', 'Pengadaan Uniform ', 32, 0, 0),
(18, '2018-05-05', 3, '', 160000, 'a:0:{}', 'Konsumsi`', 32, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `title`, `deleted`) VALUES
(1, 'Miscellaneous expense', 0),
(2, 'Develop', 0),
(3, 'Operasional', 0),
(4, 'Gaji', 0),
(5, 'Belanja Modal', 0),
(6, 'Pajak', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `general_files`
--

CREATE TABLE `general_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `general_files`
--

INSERT INTO `general_files` (`id`, `file_name`, `description`, `file_size`, `created_at`, `client_id`, `user_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file5a9d7fe360188-LKD-UIN-ANTASARI-project-charter.docx', 'Draft Project Charter', 195202, '2018-03-05 17:35:31', 21, 0, 1, 0),
(2, '_file5a9d86b1132f0-KTP--3-.jpeg', '', 230635, '2018-03-05 18:04:33', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `help_articles`
--

CREATE TABLE `help_articles` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `total_views` int(11) NOT NULL DEFAULT 0,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `help_articles`
--

INSERT INTO `help_articles` (`id`, `title`, `description`, `category_id`, `created_by`, `created_at`, `status`, `total_views`, `files`, `deleted`) VALUES
(1, 'NPWP & PKP CV.4NESIA', '<blockquote><span style=\"font-size:36.0pt;font-family:&quot;Roboto Light&quot;;\r\nmso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:&quot;Spica Neue Light&quot;;\r\nmso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:\r\nminor-fareast;color:#78C1D4;mso-color-index:8;mso-font-kerning:12.0pt;\r\nlanguage:en-US;vertical-align:baseline;mso-text-raise:0%;mso-style-textfill-type:\r\nsolid;mso-style-textfill-fill-themecolor:accent5;mso-style-textfill-fill-color:\r\n#78C1D4;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:\r\n&quot;lumm=75000 lumo=25000&quot;\">81.520.590.1-808.000&nbsp;</span></blockquote>', 2, 1, '2018-03-06 01:13:04', 'active', 6, 'a:0:{}', 0),
(2, 'Akta Notaris', '<p>\r\n\r\n\r\n\r\n\r\n\r\n<!--StartFragment--><span style=\"font-size:36.0pt;font-family:&quot;Roboto Light&quot;;\r\nmso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:&quot;Spica Neue Light&quot;;\r\nmso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:\r\nminor-fareast;color:#78C1D4;mso-color-index:8;mso-font-kerning:12.0pt;\r\nlanguage:en-US;vertical-align:baseline;mso-text-raise:0%;mso-style-textfill-type:\r\nsolid;mso-style-textfill-fill-themecolor:accent5;mso-style-textfill-fill-color:\r\n#78C1D4;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:\r\n&quot;lumm=75000 lumo=25000&quot;\">02/07-01-2017 Erin </span><span style=\"font-size:36.0pt;\r\nfont-family:&quot;Roboto Light&quot;;mso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:\r\n&quot;Spica Neue Light&quot;;mso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-theme-font:minor-fareast;color:#78C1D4;mso-color-index:8;\r\nmso-font-kerning:12.0pt;language:en-US;vertical-align:baseline;mso-text-raise:\r\n0%;mso-style-textfill-type:solid;mso-style-textfill-fill-themecolor:accent5;\r\nmso-style-textfill-fill-color:#78C1D4;mso-style-textfill-fill-alpha:100.0%;\r\nmso-style-textfill-fill-colortransforms:&quot;lumm=75000 lumo=25000&quot;\">Daryansyah</span><span style=\"font-size:36.0pt;font-family:&quot;Roboto Light&quot;;mso-ascii-font-family:&quot;Roboto Light&quot;;\r\nmso-fareast-font-family:&quot;Spica Neue Light&quot;;mso-bidi-font-family:Arial;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;\r\ncolor:#78C1D4;mso-color-index:8;mso-font-kerning:12.0pt;language:en-US;\r\nvertical-align:baseline;mso-text-raise:0%;mso-style-textfill-type:solid;\r\nmso-style-textfill-fill-themecolor:accent5;mso-style-textfill-fill-color:#78C1D4;\r\nmso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:\r\n&quot;lumm=75000 lumo=25000&quot;\">, S.H., </span><span style=\"font-size:36.0pt;\r\nfont-family:&quot;Roboto Light&quot;;mso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:\r\n&quot;Spica Neue Light&quot;;mso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-theme-font:minor-fareast;color:#78C1D4;mso-color-index:8;\r\nmso-font-kerning:12.0pt;language:en-US;vertical-align:baseline;mso-text-raise:\r\n0%;mso-style-textfill-type:solid;mso-style-textfill-fill-themecolor:accent5;\r\nmso-style-textfill-fill-color:#78C1D4;mso-style-textfill-fill-alpha:100.0%;\r\nmso-style-textfill-fill-colortransforms:&quot;lumm=75000 lumo=25000&quot;\">M.Kn</span><span style=\"font-size:36.0pt;font-family:&quot;Roboto Light&quot;;mso-ascii-font-family:&quot;Roboto Light&quot;;\r\nmso-fareast-font-family:&quot;Spica Neue Light&quot;;mso-bidi-font-family:Arial;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;\r\ncolor:#78C1D4;mso-color-index:8;mso-font-kerning:12.0pt;language:en-US;\r\nvertical-align:baseline;mso-text-raise:0%;mso-style-textfill-type:solid;\r\nmso-style-textfill-fill-themecolor:accent5;mso-style-textfill-fill-color:#78C1D4;\r\nmso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:\r\n&quot;lumm=75000 lumo=25000&quot;\">.</span><br></p>', 2, 1, '2018-03-06 01:13:49', 'active', 3, 'a:0:{}', 0),
(3, 'TDP', '<p>\r\n\r\n\r\n\r\n\r\n\r\n<!--StartFragment--><span style=\"font-size:36.0pt;font-family:&quot;Roboto Light&quot;;\r\nmso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:&quot;Spica Neue Light&quot;;\r\nmso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:\r\nminor-fareast;color:#78C1D4;mso-color-index:8;mso-font-kerning:12.0pt;\r\nlanguage:en-US;vertical-align:baseline;mso-text-raise:0%;mso-style-textfill-type:\r\nsolid;mso-style-textfill-fill-themecolor:accent5;mso-style-textfill-fill-color:\r\n#78C1D4;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:\r\n&quot;lumm=75000 lumo=25000&quot;\">TDP-20-19-3-61-00145</span><!--EndFragment-->&nbsp; &nbsp;&nbsp;<br></p>', 2, 1, '2018-03-06 01:14:39', 'active', 2, 'a:0:{}', 0),
(4, 'SIUP', '<p>\r\n\r\n\r\n\r\n\r\n\r\n<!--StartFragment--><span style=\"font-size:36.0pt;font-family:&quot;Roboto Light&quot;;\r\nmso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:&quot;Spica Neue Light&quot;;\r\nmso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:\r\nminor-fareast;color:#78C1D4;mso-color-index:8;mso-font-kerning:12.0pt;\r\nlanguage:en-US;vertical-align:baseline;mso-text-raise:0%;mso-style-textfill-type:\r\nsolid;mso-style-textfill-fill-themecolor:accent5;mso-style-textfill-fill-color:\r\n#78C1D4;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:\r\n&quot;lumm=75000 lumo=25000&quot;\">SIUP </span><span style=\"font-size:36.0pt;font-family:\r\n&quot;Roboto Light&quot;;mso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:\r\n&quot;Spica Neue Light&quot;;mso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-theme-font:minor-fareast;color:#78C1D4;mso-color-index:8;\r\nmso-font-kerning:12.0pt;language:en-US;vertical-align:baseline;mso-text-raise:\r\n0%;mso-style-textfill-type:solid;mso-style-textfill-fill-themecolor:accent5;\r\nmso-style-textfill-fill-color:#78C1D4;mso-style-textfill-fill-alpha:100.0%;\r\nmso-style-textfill-fill-colortransforms:&quot;lumm=75000 lumo=25000&quot;\">0149/PK-CV/SIUP/DPMPTSP/III/2017</span><!--EndFragment-->&nbsp; &nbsp;&nbsp;<br></p>', 2, 1, '2018-03-06 01:15:25', 'active', 1, 'a:0:{}', 0),
(5, 'SITU', '<p>\r\n\r\n\r\n\r\n\r\n\r\n<!--StartFragment-->\r\n\r\n\r\n\r\n<!--EndFragment--></p><p style=\"text-align: left; line-height: normal; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; text-indent: 0in; direction: ltr; unicode-bidi: embed; vertical-align: baseline; word-break: normal;\"><span style=\"font-size:36.0pt;font-family:&quot;Roboto Light&quot;;\r\nmso-ascii-font-family:&quot;Roboto Light&quot;;mso-fareast-font-family:&quot;Spica Neue Light&quot;;\r\nmso-bidi-font-family:Arial;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:\r\nminor-fareast;color:#78C1D4;mso-color-index:8;mso-font-kerning:12.0pt;\r\nlanguage:en-US;vertical-align:baseline;mso-text-raise:0%;mso-style-textfill-type:\r\nsolid;mso-style-textfill-fill-themecolor:accent5;mso-style-textfill-fill-color:\r\n#78C1D4;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:\r\n&quot;lumm=75000 lumo=25000&quot;\">SITU 0175/SITU/DPMPTSP/2017</span></p>', 2, 1, '2018-03-06 01:15:48', 'active', 1, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `help_categories`
--

CREATE TABLE `help_categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `help_categories`
--

INSERT INTO `help_categories` (`id`, `title`, `description`, `type`, `sort`, `status`, `deleted`) VALUES
(1, 'Technical', 'Berisi Informasi Technial', 'knowledge_base', 0, 'active', 0),
(2, 'Legal CV.4nesia', 'Berisi Informasi Dokumen Legalitas', 'knowledge_base', 0, 'active', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `tax_id2` int(11) NOT NULL DEFAULT 0,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recurring_invoice_id` int(11) NOT NULL DEFAULT 0,
  `repeat_every` int(11) NOT NULL DEFAULT 0,
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT 0,
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT 0,
  `due_reminder_date` date DEFAULT NULL,
  `recurring_reminder_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `invoices`
--

INSERT INTO `invoices` (`id`, `client_id`, `project_id`, `bill_date`, `due_date`, `note`, `last_email_sent_date`, `status`, `tax_id`, `tax_id2`, `recurring`, `recurring_invoice_id`, `repeat_every`, `repeat_type`, `no_of_cycles`, `next_recurring_date`, `no_of_cycles_completed`, `due_reminder_date`, `recurring_reminder_date`, `deleted`) VALUES
(1, 1, 2, '2017-05-15', '2017-05-25', '', NULL, 'not_paid', 1, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0),
(2, 26, 32, '2018-05-02', '2018-05-24', 'Bayar Cepat', '2018-05-02', 'not_paid', 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0),
(3, 26, 39, '2018-06-10', '2018-06-17', '', '2018-06-10', 'not_paid', 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0),
(4, 30, 43, '2018-07-20', '2018-08-03', 'No Rekening BNI 1708964443 a.n CV.4NESIA', '2018-08-24', 'not_paid', 0, 0, 0, 0, 1, 'months', 0, NULL, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `title`, `description`, `quantity`, `unit_type`, `rate`, `total`, `invoice_id`, `deleted`) VALUES
(1, 'SIDORA Parepare', 'Sistem Informasi Data Keolahragaan Parepare', 1, 'Application', 3636363, 3636363, 1, 0),
(2, 'Project Portal Sistem Informasi UIN Antasari', 'Down Payment', 1, 'Aplikasi', 20000000, 20000000, 2, 0),
(3, 'Menambahkan tombol baca berita lainnya', '', 2, 'hours', 150000, 300000, 3, 0),
(4, 'Menampilkan berita berdasarkan bulan', '', 2, 'hours', 150000, 300000, 3, 0),
(5, 'Menambahkan pada editor paragraf pos rata kanan kiri', '', 2, 'hours', 150000, 300000, 3, 0),
(6, 'Memasukkan berita2 lama', '', 9, 'hours', 150000, 1350000, 3, 0),
(7, 'Sub header terbaru dan background nya dihilangkan', '', 2, 'hours', 150000, 300000, 3, 0),
(8, 'Fixed layer slide video', '', 1, 'hours', 150000, 150000, 3, 0),
(9, 'Buatkan halaman donwload logo resmi uin', '', 1, 'hours', 150000, 150000, 3, 0),
(10, 'Gambar Post dimunculkan saat di share', '', 3, 'hours', 150000, 450000, 3, 0),
(11, 'Down Payment', 'Sistem Informasi Akademik dan Pegawai Universitas Muhammadiyah Palu', 1, 'kegiatan', 28362000, 28362000, 4, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `amount`, `payment_date`, `payment_method_id`, `note`, `invoice_id`, `deleted`, `transaction_id`, `created_by`, `created_at`) VALUES
(1, 2000000, '2017-05-16', 1, '', 1, 0, NULL, 1, '2017-05-14 14:08:21'),
(2, 3500000, '2017-06-01', 1, '', 1, 1, NULL, 1, '2017-06-12 01:26:41'),
(3, 3500000, '2017-06-01', 1, '', 1, 1, NULL, 1, '2017-06-12 01:30:28'),
(4, 2000000, '2017-08-11', 1, 'Pelunasan, nilai project berkurang dikarenakan overdue', 1, 0, NULL, 1, '2017-09-14 05:48:14'),
(5, 20000000, '2018-05-04', 1, 'Melalui Rekening BNI', 2, 0, NULL, 23, '2018-05-05 15:49:21'),
(6, 3300000, '2018-06-12', 1, '', 3, 0, NULL, 1, '2018-06-13 13:36:49'),
(7, 28362000, '2018-07-30', 1, 'via BNI 4NESIA', 4, 0, NULL, 1, '2018-09-10 11:36:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `unit_type`, `rate`, `deleted`) VALUES
(1, 'SIDORA Parepare', 'Sistem Informasi Data Keolahragaan Parepare', 'Application', 5000000, 0),
(2, 'Samsung LED 32', 'TV Kantor', '1', 2400000, 0),
(3, 'Meja Kantor', '', '2', 200000, 0),
(4, 'Karpet', 'Kantor', '1', 450000, 0),
(5, 'Dispenser', 'Dispenser Miyako', '1', 100000, 0),
(6, 'Galon', 'Galon Aqua', '1', 30000, 0),
(7, 'Subdomain', 'Gratis', 'hours', 0, 0),
(8, 'pembuatan website', 'lantas polres wajo', 'days', 2000000, 0),
(9, 'Konfigurasi dan Update Website', 'mengintegrasikan sutra.polreswajo.id dengan lantas.polreswajo.id', 'days', 500000, 0),
(10, 'LKD UIN', 'Aplikasi Lembar Kerja Dosen', 'App', 15000000, 0),
(11, 'pembuatan aplikasi android', 'kejaksaan negeri sengkang', 'days', 1000000, 0),
(12, 'pembuatan aplikasi iOS', 'kejaksaan negeri sengkang', 'days', 1000000, 0),
(13, 'Upload to Playstore', 'Aplikasi Android Kejaksaan Negeri Sengkang', 'days', 500000, 0),
(14, 'Submit to Apple Store', 'Aplikasi iOS Kejaksaan Negeri Sengkang', 'days', 500000, 0),
(15, 'Menambahkan tombol baca berita lainnya', '', 'hours', 150000, 0),
(16, 'Menampilkan berita berdasarkan bulan', '', 'hours', 150000, 0),
(17, 'Menambahkan pada editor paragraf pos rata kanan kiri', '', 'hours', 150000, 0),
(18, 'Memasukkan berita2 lama', '', 'hours', 150000, 0),
(19, 'Sub header terbaru dan background nya dihilangkan', '', 'hours', 150000, 0),
(20, 'Fixed layer slide video', '', 'hours', 150000, 0),
(21, 'Buatkan halaman donwload logo resmi uin', '', 'hours', 150000, 0),
(22, 'Gambar Post dimunculkan saat di share', '', 'hours', 150000, 0),
(23, 'Down Payment', 'Sistem Informasi Akademik dan Pegawai Universitas Muhammadiyah Palu', 'kegiatan', 28362000, 0),
(24, 'Aplikasi Sistem Informasi Persuratan berbasis Website', 'Dinas Pemberdayaan Masyarakat dan Pemerintah Desa Jawa Barat: \n1.Surat Masuk\n2.Surat Keluar \n3.Kelola Pengguna\n4.Print Surat\n5.Disposi Surat\n6.Data Aset', 'fitur', 3000000, 0),
(25, 'Sewa VPS Server', 'SSD Server - 1 tahun', 'tahun', 3500000, 0),
(26, 'UI/UX Develop', 'Pembuatan interface yang simple dan clean', 'pages', 1000000, 0),
(27, 'Pelatihan Penggunaan Aplikasi', '', 'kegiatan', 3500000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `leave_type_id`, `start_date`, `end_date`, `total_hours`, `total_days`, `applicant_id`, `reason`, `status`, `created_at`, `created_by`, `checked_at`, `checked_by`, `deleted`) VALUES
(1, 2, '2017-09-30', '2017-09-30', '8.00', '1.00', 6, 'kegiatan genesis', 'approved', '2017-09-30 07:54:21', 0, '2017-09-30 15:52:00', 1, 0),
(2, 2, '2017-10-16', '2017-10-16', '8.00', '1.00', 6, 'Rapat Koor Genesis dengan HMSI', 'approved', '2017-10-18 06:56:20', 0, '2017-11-04 13:25:12', 2, 0),
(3, 3, '2017-10-25', '2017-10-25', '8.00', '1.00', 16, 'Masih di sengkang', 'approved', '2017-10-25 05:26:15', 0, '2017-11-04 13:24:18', 1, 0),
(4, 4, '2017-10-25', '2017-10-25', '8.00', '1.00', 14, '-Penanggung Jawab Acara Pro Talks.', 'approved', '2017-10-25 11:26:35', 0, '2017-11-04 13:25:01', 2, 0),
(5, 2, '2017-10-25', '2017-11-28', '280.00', '35.00', 7, 'SEDANG BERADA DILUAR KOTA', 'approved', '2017-10-25 11:59:24', 0, '2017-11-04 13:24:02', 1, 0),
(6, 1, '2017-11-08', '2017-11-08', '8.00', '1.00', 14, 'Badan Kurang tidur', 'approved', '2017-11-08 22:37:32', 0, '2018-02-14 15:06:27', 1, 0),
(7, 4, '2017-11-11', '2017-11-11', '8.00', '1.00', 6, 'PJ rekrutasi, harus urus rekrutasi', 'approved', '2017-11-11 11:25:57', 0, '2018-02-14 15:06:22', 1, 0),
(8, 1, '2017-11-19', '2017-11-19', '8.00', '1.00', 14, 'Rapat Mentor MCA', 'canceled', '2017-11-19 00:13:17', 0, '2017-11-19 00:13:33', 14, 0),
(9, 4, '2017-11-19', '2017-11-19', '8.00', '1.00', 14, 'Rapat Mentor MCA', 'approved', '2017-11-19 00:13:53', 0, '2018-02-14 15:06:34', 1, 0),
(10, 3, '2017-11-22', '2017-11-26', '40.00', '5.00', 23, 'Wisuda', 'approved', '2017-11-22 09:58:41', 0, '2018-02-14 15:06:39', 1, 0),
(11, 2, '2017-11-25', '2017-11-25', '8.00', '1.00', 5, 'sedang tidak berada di Bandung', 'approved', '2017-11-25 13:05:54', 0, '2018-02-14 15:06:46', 1, 0),
(12, 4, '2018-02-10', '2018-02-10', '8.00', '1.00', 6, 'izin telat, habis jaga praktikum sambung simulasi untuk modul 2 basdat', 'approved', '2018-02-10 12:20:32', 0, '2018-02-14 15:06:11', 1, 0),
(13, 2, '2018-02-14', '2018-02-14', '8.00', '1.00', 6, 'Lagi di acara geekhunter', 'approved', '2018-02-14 12:24:49', 0, '2018-02-14 15:04:55', 1, 0),
(14, 1, '2018-05-15', '2018-05-15', '8.00', '1.00', 52, 'Demam dan muntaber, mungkin bsk sudah bisa beraktifitas lgi', 'approved', '2018-05-15 15:11:43', 0, '2018-05-17 21:05:20', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `status`, `color`, `description`, `deleted`) VALUES
(1, 'Sakit', 'active', '#83c340', '', 0),
(2, 'Alasan Lainnya', 'active', '#29c2c2', '', 0),
(3, 'Urusan Keluarga', 'active', '#2d9cdb', '', 0),
(4, 'Urusan Kuliah/Kampus', 'active', '#34495e', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `subject`, `message`, `created_at`, `from_user_id`, `to_user_id`, `status`, `message_id`, `deleted`, `files`, `deleted_by_users`) VALUES
(1, 'halo', 'halo', '2017-05-13 17:11:55', 1, 2, 'read', 0, 0, 'a:0:{}', ''),
(2, 'halo', 'halo', '2017-05-13 17:28:14', 1, 4, 'read', 0, 0, 'a:0:{}', ''),
(3, 'Job Title', 'Salah job title mu fikri, kurang e\nDesign & Creative', '2017-05-13 17:28:53', 4, 5, 'read', 0, 0, 'a:0:{}', ''),
(4, '', 'halo bro', '2017-05-13 17:29:15', 4, 1, 'read', 2, 0, 'a:0:{}', ''),
(5, 'halo', 'halo', '2017-05-16 09:58:54', 2, 9, 'read', 0, 0, 'a:0:{}', ''),
(6, 'Video', 'bagaimana perkembangan video nya?', '2017-05-21 15:58:14', 3, 10, 'read', 0, 0, 'a:0:{}', ''),
(7, 'video', 'bagaimana perkembangan videonya?', '2017-05-21 15:59:25', 3, 15, 'read', 0, 0, 'a:0:{}', ''),
(8, '', 'ini hari ke tiga pengambilan video, untuk hari pertama dan kedua (kamis 18/05 dan sabtu 20/05) di open library bersama peserta KP dan CEO\nhari ketiga pengambilan video berada di basecamp bersama tim develop', '2017-05-24 08:45:40', 15, 3, 'read', 7, 0, 'a:0:{}', ''),
(9, '', 'berikut adalah foto lokasi pengambilan video di basecamp 4nesia, kak', '2017-05-24 08:47:15', 15, 3, 'read', 7, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:35:\"message_file59254891c60fc-image.jpg\";s:9:\"file_size\";s:7:\"1464458\";}}', ''),
(10, '', 'berikut adalah foto lokasi pengambilan video di basecamp 4nesia, kak', '2017-05-24 08:47:15', 15, 3, 'read', 7, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"1464458\";}}', ''),
(11, 'Deadline ', 'Bagaimana kabar video nya?  Udah rampung? ', '2017-06-01 09:31:28', 3, 15, 'read', 0, 0, 'a:0:{}', ''),
(12, 'Deadline', 'Bagaimana kabar video nya?  Udah rampung? ', '2017-06-01 09:31:44', 3, 10, 'read', 0, 0, 'a:0:{}', ''),
(13, 'Video Testimoni', 'Selamat pagi kak, \n\nAdapun video testimoni peserta KP sudah rampung. Tetapi hasil editan saya masih jauh dari kata bagus. Correct me if I\'m wrong(cmiiw). Dan untuk mengirim file videonya ke mana ya kak ? soalnya via web admin tidak berhasil. \n\nTerima kasih,\n\nBR// Finka Amalia', '2017-06-13 22:50:16', 15, 3, 'read', 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:32:\"message_file59406c2816ea0-kp.PNG\";s:9:\"file_size\";s:6:\"227722\";}}', ''),
(14, 'Upload Youtube - Ask', 'Selamat pagi, kak\n\nSebelum upload ke youtube, apakah sudah dicek dahulu video yang saya kirim sebelumnya via google drive. Jika tidak ada revisi, akan saya upload di account youtube saya. \nBerikut link google drive video testimoni yang telah saya upload.\nTerima kasih, \nBest Regards, Finka', '2017-06-16 22:25:40', 15, 3, 'read', 0, 0, 'a:0:{}', ''),
(15, '', 'dari 3 video yg dikirim finka, itu video apa saja?', '2017-06-22 01:52:25', 3, 15, 'read', 14, 0, 'a:0:{}', ''),
(16, '', 'Video testimoni kak, selebihnya itu video sewaktu take video ', '2017-06-23 15:24:14', 15, 3, 'read', 14, 0, 'a:0:{}', ''),
(17, 'tes admin', 'hi tes', '2017-09-12 10:40:26', 1, 7, 'read', 0, 0, 'a:0:{}', ''),
(18, 'halo', 'halo', '2017-09-12 16:26:28', 1, 14, 'read', 0, 0, 'a:0:{}', ''),
(19, 'Halo', 'Mabar Kuy', '2017-09-12 16:26:39', 8, 23, 'read', 0, 0, 'a:0:{}', ''),
(20, '', 'Halo juga', '2017-09-12 16:27:25', 23, 8, 'read', 19, 0, 'a:0:{}', ''),
(21, '', 'Mabar ', '2017-09-12 16:27:41', 8, 23, 'read', 19, 0, 'a:0:{}', ''),
(22, '5-0', 'habis bang', '2017-09-12 16:27:43', 3, 8, 'read', 0, 0, 'a:0:{}', ''),
(23, '', 'hai mas', '2017-09-12 16:33:08', 14, 1, 'read', 18, 0, 'a:0:{}', ''),
(24, '', 'hai mas', '2017-09-12 16:33:12', 14, 1, 'read', 18, 0, 'a:0:{}', ''),
(25, 'Assalamualaikum', 'Ka mau tanya,  kunci kantor ada di kaka?  Aku coba line kaka tpi blm di read hehehehe', '2017-09-26 14:12:49', 26, 2, 'read', 0, 0, 'a:0:{}', ''),
(26, '[REQUEST]', 'Request new project + tasks about SIDORA mobile app', '2017-11-18 04:01:54', 8, 1, 'read', 0, 0, 'a:0:{}', ''),
(27, 'Akses Cpanel 4nesia', 'Username: nesiacom\nPassword: xt9792flEY\n\nControl Panel URL: http://139.162.17.143:2082/\nKetika domain sudah aktif, anda dapat mengaksesnya dengan http://www.4nesia.com:2082/', '2018-03-18 13:32:13', 1, 16, 'read', 0, 0, 'a:0:{}', ''),
(28, 'SKPL & Project Charter', 'terlampir', '2018-03-18 13:33:54', 1, 23, 'read', 0, 0, 'a:2:{i:0;a:2:{s:9:\"file_name\";s:52:\"message_file5aae6ac2c9bdc-Project-Charter-Draft.docx\";s:9:\"file_size\";s:6:\"175497\";}i:1;a:2:{s:9:\"file_name\";s:51:\"message_file5aae6ac2c9ed5-SKPL-SI-UIN-Antasari.docx\";s:9:\"file_size\";s:5:\"66093\";}}', ''),
(29, '', 'halo', '2018-03-30 10:31:34', 1, 8, 'read', 26, 0, 'a:0:{}', ''),
(30, '', 'tes fitur chat', '2018-03-30 10:31:45', 1, 8, 'read', 26, 0, 'a:0:{}', ''),
(31, '', 'tes', '2018-03-31 13:08:50', 1, 23, 'read', 28, 0, 'a:0:{}', ''),
(32, '', 'halo', '2018-03-31 13:24:22', 1, 23, 'read', 28, 0, 'a:0:{}', ''),
(33, 'Ome', 'Ayo main Ome TV', '2018-03-31 14:39:24', 8, 2, 'read', 0, 0, 'a:0:{}', ''),
(34, '', '(y)', '2018-03-31 14:39:41', 8, 1, 'read', 26, 0, 'a:0:{}', ''),
(35, '', 'oke', '2018-03-31 14:39:55', 1, 8, 'read', 26, 0, 'a:0:{}', ''),
(36, 'wkwk', 'wkwkw\n', '2018-03-31 14:40:10', 16, 8, 'read', 0, 0, 'a:0:{}', ''),
(37, 'tes', 'tes', '2018-04-23 09:01:10', 1, 24, 'unread', 0, 0, 'a:0:{}', ',1'),
(38, 'hai', 'hai', '2018-05-14 16:42:46', 56, 48, 'read', 0, 0, 'a:0:{}', ''),
(39, '', 'halo', '2018-05-15 07:27:26', 48, 56, 'read', 38, 0, 'a:0:{}', ''),
(40, '', 'lagi apa', '2018-05-15 07:43:17', 56, 48, 'read', 38, 0, 'a:0:{}', ''),
(41, '', '?', '2018-05-15 07:43:21', 56, 48, 'read', 38, 0, 'a:0:{}', ''),
(42, '', 'lg internship nad\n', '2018-05-15 07:48:13', 48, 56, 'read', 38, 0, 'a:0:{}', ''),
(43, '', 'lg internship nad\n', '2018-05-15 07:48:14', 48, 56, 'read', 38, 0, 'a:0:{}', ''),
(44, '', 'cek line', '2018-05-15 07:48:29', 48, 56, 'read', 38, 0, 'a:0:{}', ''),
(45, '', 'gue jadiin dp awkkwakwa', '2018-05-15 07:52:45', 56, 48, 'read', 38, 0, 'a:0:{}', ''),
(46, '', 'yeee\n\n', '2018-05-15 07:56:23', 48, 56, 'read', 38, 0, 'a:0:{}', ''),
(47, 'check out', 'halo leo, hari ini belum check out ya', '2018-05-18 12:58:23', 1, 53, 'read', 0, 0, 'a:0:{}', ',1'),
(48, 'KP', 'Halo dina, hari ini belum check out ya?', '2018-05-18 13:00:16', 1, 50, 'read', 0, 0, 'a:0:{}', ''),
(49, 'Check In & Cehck out', 'hari ini tidak mengikuti kegiatan training KP ya?', '2018-05-18 13:02:26', 1, 51, 'read', 0, 0, 'a:0:{}', ''),
(50, 'Check In & Cehck out', 'hari ini tidak mengikuti kegiatan training KP ya?', '2018-05-18 13:02:59', 1, 49, 'read', 0, 0, 'a:0:{}', ''),
(51, 'Check In & Cehck out', 'hari ini tidak mengikuti kegiatan training KP ya?', '2018-05-18 13:03:26', 1, 52, 'read', 0, 0, 'a:0:{}', ''),
(52, '', 'iyaaa bang, maaf lupa wkwk\nini sudah di clock out bang', '2018-05-19 07:35:37', 53, 1, 'read', 47, 0, 'a:0:{}', ',1'),
(53, 'Heii...', 'Heyyy..\n', '2018-05-20 14:14:48', 53, 48, 'read', 0, 0, 'a:0:{}', ''),
(54, '', 'sipp leo', '2018-05-20 18:17:08', 1, 53, 'unread', 47, 0, 'a:0:{}', ',1'),
(55, '', 'sipp leo', '2018-05-20 18:17:17', 1, 53, 'unread', 47, 0, 'a:0:{}', ',1'),
(56, '', 'sipp leo', '2018-05-20 18:17:19', 1, 53, 'unread', 47, 0, 'a:0:{}', ',1'),
(57, '', 'ah iya kak aku lupaa', '2018-05-27 01:29:55', 50, 1, 'read', 48, 0, 'a:0:{}', ''),
(58, '', 'Halo bang, maaf waktu itu lupa buat leave ijin sakit bang', '2018-05-27 03:01:40', 49, 1, 'read', 50, 0, 'a:0:{}', ''),
(59, '', 'Yuhuuuuu', '2018-05-27 04:57:02', 48, 53, 'read', 53, 0, 'a:0:{}', ''),
(60, '', 'Iya bang berhalangan hadir harus pulang mengantar adik berobat', '2018-05-27 06:51:55', 51, 1, 'read', 49, 0, 'a:0:{}', ''),
(61, '', 'arian siap mi UI untuk modul KRS?', '2018-06-04 21:18:01', 1, 8, 'read', 26, 0, 'a:0:{}', ''),
(62, '', 'bro sdh selesai master data siakad uin?\nada permintaan mas surya untuk modul  KRS, detailnya nanti ada di halaman projectnya', '2018-06-04 21:19:33', 1, 16, 'read', 27, 0, 'a:0:{}', ''),
(63, 'Heii...', 'heii..\n', '2018-06-05 08:56:54', 53, 55, 'read', 0, 0, 'a:0:{}', ''),
(64, 'Heii...', 'heii..', '2018-06-05 08:57:27', 53, 58, 'read', 0, 0, 'a:0:{}', ''),
(65, '', 'oke bro, working on it', '2018-06-06 01:48:38', 16, 1, 'read', 27, 0, 'a:0:{}', ''),
(66, '', 'UI modulnya blm selesai 100% kak', '2018-06-06 08:21:37', 8, 1, 'read', 26, 0, 'a:0:{}', ''),
(67, '', 'msh on progress', '2018-06-06 08:27:04', 8, 1, 'read', 26, 0, 'a:0:{}', ''),
(68, '', 'hoii', '2018-06-08 02:45:52', 55, 53, 'unread', 63, 0, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `milestones`
--

INSERT INTO `milestones` (`id`, `title`, `project_id`, `due_date`, `description`, `deleted`) VALUES
(1, 'Video Profile', 4, '2017-06-04', '', 0),
(2, 'Website Content', 4, '2017-07-06', 'install wp\ninstall plugin\ninstall template\ncontent home \ncontent page', 0),
(3, '[WEEK 1]Analisis dan Perancangan', 16, '2017-11-11', 'Usecase\nERD\nClass Diagram\nActivity Diagram', 0),
(4, '[WEEK 2]Mock up', 16, '2017-11-18', 'Mock up Berwarna, Material Design Based.\ndan Scope Fix\nRemember, Target User : Bpk/Ibu > 30tahun', 0),
(5, '[WEEK 3]UX/UI Testing', 16, '2017-11-25', 'Pake Marvel aja, \nTarget\n-bapak/ibu umur > 30 tahun\n-minimal 5 orang', 0),
(6, '[WEEK 4] Mock Up Part 2', 16, '2017-12-02', '', 0),
(7, '[WEEK 5] Prototyping I', 16, '2017-12-09', '', 0),
(8, '[WEEK 6]Prototyping II', 16, '2017-12-16', '', 0),
(9, 'Januari', 20, '2018-01-31', '', 0),
(10, 'Pebruari', 20, '2018-02-01', '', 0),
(11, 'LKD ONLINE', 32, '2018-03-19', '', 0),
(12, 'Requirement Gathering', 32, '2018-03-03', '', 0),
(13, 'Perencanaan Konsep', 32, '2018-03-04', '', 0),
(14, 'PMB', 32, '2018-03-29', '', 1),
(15, 'SIAKAD : MASTER DATA', 32, '2018-05-27', 'Penyesuaian data baru', 0),
(16, 'SIAKAD : TUGAS AKHIR', 32, '2018-06-03', '', 1),
(17, 'SIAKAD : PROFIL', 32, '2018-06-03', '', 0),
(18, 'SIAKAD : BEASISWA', 32, '2018-06-24', '', 1),
(19, 'SIAKAD : WISUDA', 32, '2018-06-18', '', 1),
(20, 'SIAKAD : KRS', 32, '2018-06-01', '', 1),
(21, 'SIAKAD : KHS', 32, '2018-06-06', '', 1),
(22, 'SIAKAD : JADWAL PERKULIAHAN', 32, '2018-06-14', '', 0),
(23, 'SIAKAD : PRESENSI', 32, '2018-08-25', '', 1),
(24, 'SIAKAD : PERMOHONAN CUTI', 32, '2018-07-07', '', 0),
(25, 'SIAKAD : FEEDER DIKTI', 32, '2018-09-10', '', 1),
(26, 'SIAKAD : KEUANGAN', 32, '2018-06-29', '', 0),
(27, 'WEBSITE INFORMASI', 32, '2018-09-30', '', 1),
(28, 'TESTING APLIKASI', 32, '2018-10-01', '', 1),
(29, 'IMPLEMENTASI & DOKUMENTASI', 32, '2018-10-06', '', 1),
(30, 'SIAKAD : KRS', 32, '2018-07-30', '', 0),
(31, 'SIAKAD : PRESENSI', 32, '2018-08-09', '', 0),
(32, 'SIAKAD : KHS', 32, '2018-08-21', '', 0),
(33, 'SIAKAD : BEASISWA', 32, '2018-08-30', '', 0),
(34, 'SIAKAD : TUGAS AKHIR', 32, '2018-09-11', '', 0),
(35, 'SIAKAD : WISUDA', 32, '2018-09-18', '', 0),
(36, 'WEBSITE INFORMASI', 32, '2018-09-23', '', 0),
(37, 'SIAKAD : FEEDER DIKTI', 32, '2018-11-12', '', 0),
(38, 'SISTEM PMB', 32, '2018-11-02', '', 0),
(39, 'PENGUJIAN DAN EVALUASI SISTEM', 32, '2018-11-14', '', 0),
(40, 'DOKUMENTASI & CLOSING', 32, '2018-11-19', '', 0),
(41, 'Develop Aplikasi', 40, '2018-08-01', 'Pengembangan Aplikasi android', 0),
(42, 'UI/UX Design', 40, '2018-07-10', '', 0),
(43, 'PMB', 43, '2018-08-24', 'Aplikasi PMB', 0),
(44, 'SIAKAD : MASTER DATA', 48, '2018-12-01', '', 1),
(45, 'Requirement Gathering', 43, '2018-07-09', '', 0),
(46, 'Perencanaan Konsep', 43, '2018-07-23', '', 0),
(47, 'SIAKAD : MASTER DATA', 43, '2018-11-01', '', 0),
(48, 'SIAKAD : KRS ', 43, '2019-01-31', '', 0),
(49, 'SIAKAD : KHS', 43, '2019-02-28', '', 0),
(50, 'SIAKAD : PROFIL', 43, '2019-03-17', '', 0),
(51, 'SIAKAD : PRESENSI', 43, '2019-04-01', '', 0),
(52, 'SIAKAD : TUGAS AKHIR ', 43, '2019-04-15', '', 0),
(53, 'SIAKAD : WISUDA ', 43, '2019-05-06', '', 0),
(54, 'SIAKAD : BEASISWA', 43, '2019-05-20', '', 1),
(55, 'SIAKAD : JADWAL PERKULIAHAN', 43, '2019-06-10', '', 0),
(56, 'SIAKAD : PENGAJUAN CUTI', 43, '2019-06-30', '', 0),
(57, 'SIAKAD : DISPENSASI', 43, '2019-07-14', '', 1),
(58, 'SIAKAD : KEUANGAN ', 43, '2019-08-18', '', 0),
(59, 'Lembar Kerja Dosen ', 43, '2019-09-08', '', 1),
(60, 'Website Informasi ', 43, '2019-09-15', '', 1),
(61, 'PENGUJIAN & EVALUASI SISTEM', 43, '2019-09-22', '', 0),
(62, 'DOKUMENTASI & CLOSING', 43, '2019-09-30', '', 0),
(63, 'Analisis Fitur', 43, '2018-07-14', '', 0),
(64, 'Presentasi Project', 43, '2018-07-09', '', 0),
(65, 'Analisis dan Perancangan', 47, '2018-09-09', '', 0),
(66, 'Development aplikasi android', 47, '2018-09-22', '', 0),
(67, 'Development web admin', 47, '2018-09-22', '', 0),
(68, 'Development API', 47, '2018-09-15', '', 0),
(69, 'Deploy aplikasi pada server', 47, '2018-09-29', '', 0),
(70, 'Testing', 47, '2018-09-29', '', 0),
(71, 'Pelatihan dan Transfer Ilmu', 47, '2018-10-02', '', 0),
(72, 'Rilis Aplikasi ', 47, '2018-10-09', '', 0),
(73, 'Dokumentasi dan Administrasi', 47, '2018-10-09', 'Hand over aplikasi', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `created_by`, `created_at`, `title`, `description`, `project_id`, `client_id`, `user_id`, `labels`, `files`, `deleted`) VALUES
(1, 4, '2017-05-20 07:57:27', 'Link Perancangan ERD HaloNesia', 'https://drive.google.com/file/d/0ByR9KIaeoerUSTJMbHl3MUxRWnM/view?usp=sharing', 6, 0, 0, 'ERD,Link', '', 0),
(2, 1, '2017-05-23 14:59:46', 'Nomor Seri Faktur Pajak', 'Sebanyak 30:\n018.17.66765766-018.17.66765795\n\nyang sudah di pakai\n018.17.66765766\n018.17.66765767\n018.17.66765768', 0, 0, 0, '', '', 0),
(3, 1, '2017-05-23 15:06:00', 'Kode Aktivasi PKP CV.4NESIA', 'NPWP 81.520.590.1-808.000\nKode Aktivasi : 5WRP-FYHB-0WSR-4Z0G\nUsername : 815205901808000\nPassword : 1N9G1Z0D\n\nAplikasi\nEfaktur:\nusername : 4nesia\npassword : agusagus17\n\nebiling\nhttps://sse3.pajak.go.id/\nusername : npwp cv\npin :123456\n\n', 0, 0, 0, '', '', 0),
(4, 17, '2017-05-29 15:41:52', 'Repo api-hellonesia (gitlab)', 'https://gitlab.com/imamfa/api-hellonesia', 6, 0, 0, '', '', 0),
(5, 1, '2017-07-04 12:49:43', 'DATA FTP WEB ', 'FTP Username: 4nesia@beta.4nesia.com\nFTP server: ftp.4nesia.com\nFTP & explicit FTPS port:  21\nFTP Password : kp2017bandung', 4, 0, 0, '', '', 0),
(6, 14, '2017-09-14 07:58:09', 'LIVE STREAMING PARE TV', 'List Kebutuhan:\nProvider live Streaming XPLIT\nBroadband/ISP MyFi/Andromax\nKabel kabelan\n-HMDI Female\n-Converter USB\n\nReport kamis:\nHARI\nBUDGET\nTIM\n-Yusran (Lapangan)\n-Andi (software Engineer)\n-Hansa (PM)', 0, 0, 0, 'Important', '', 0),
(7, 14, '2017-09-14 08:00:09', 'PMI Website', 'LIST KEBUTUHAN:\nWordpress\nTheme Premium\nContent\n\nTIM:', 0, 0, 0, '', '', 0),
(8, 14, '2017-09-14 08:01:34', 'SISFO KELURAHAN 2018', 'CINA\nPADUPA\nTEMPE\n\nLIST KEBUTUHAN:\nSKPL\nPrototype', 0, 0, 0, '', '', 0),
(9, 1, '2018-03-05 18:38:19', 'Akses Prototipe', 'https://siakad.4nesia.com/\n\nAkses Mahasiswa : \nusername : mhs\npassword : mhs\n\n\nAkses Dosen : \nusername : dosen\npassword : dosen\n*baru input LKD saja\n\nAkses Super Admin : \nusername : admin\npassword : admin\n*Master Pusat\n*Civitas\n*PMB Konfigurasi\n', 0, 21, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(1, 2, '', '2017-05-13 17:33:00', '4', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, '', '2017-05-16 09:56:21', '4,9', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 2, '', '2017-05-16 09:57:33', '4,9', '', 'project_task_created', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 3, '', '2017-05-18 14:12:51', '10,15', ',15', 'project_member_added', 4, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 3, '', '2017-05-18 14:28:15', '', '', 'project_task_updated', 4, 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 3, '', '2017-05-18 14:29:52', '10,15', '', 'project_task_created', 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 3, '', '2017-05-18 14:31:12', '', '', 'project_task_updated', 4, 2, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 4, '', '2017-05-20 07:49:13', '12', '', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 4, '', '2017-05-20 07:49:26', '12,17', '', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 4, '', '2017-05-20 07:49:34', '12,14,17', '', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 4, '', '2017-05-20 07:49:42', '9,12,14,17', '', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 4, '', '2017-05-20 07:49:50', '9,12,13,14,17', '', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 4, '', '2017-05-20 07:49:59', '9,12,13,14,16,17', '', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 4, '', '2017-05-20 07:52:53', '9,12,13,14,16,17', '', 'project_task_created', 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 4, '', '2017-05-20 07:53:22', '9,12,13,14,16,17,19', '', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 4, '', '2017-05-20 07:53:27', '1,9,12,13,14,16,17,19', ',1', 'project_member_added', 6, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 4, '', '2017-05-20 07:54:46', '', '', 'project_task_updated', 6, 5, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 4, '', '2017-05-20 07:58:39', '', '', 'project_task_updated', 6, 5, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 4, '', '2017-05-20 08:01:30', '', '', 'project_task_updated', 6, 5, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 1, '', '2017-05-20 14:32:52', '2,4', '', 'project_member_deleted', 2, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 1, '', '2017-05-20 14:32:59', '2,4,8', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 1, '', '2017-05-20 14:33:08', '2,4,6,8', '', 'project_member_added', 2, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 16, '', '2017-05-24 08:39:28', '4', '', 'project_task_updated', 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 1, '', '2017-05-27 13:54:43', '20', '', 'project_member_added', 7, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 16, '', '2017-05-29 14:56:43', '1,4,9,12,13,14,17,19', '', 'project_task_created', 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 16, '', '2017-05-29 15:01:36', '1,4,9,12,13,14,17,19', '', 'project_task_created', 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 16, '', '2017-05-29 15:06:47', '4', '', 'project_task_updated', 6, 7, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 16, '', '2017-05-29 15:06:59', '4', '', 'project_task_updated', 6, 6, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 16, '', '2017-05-29 15:10:51', '1,4,9,12,13,14,17,19', '', 'project_task_created', 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 16, '', '2017-05-29 15:11:30', '4', '', 'project_task_updated', 6, 6, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 16, '', '2017-05-29 15:13:19', '1,4,9,12,13,14,17,19', '', 'project_task_created', 6, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 16, '', '2017-05-29 15:23:40', '1,4,9,12,13,14,17,19', '', 'project_task_created', 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 16, '', '2017-05-29 15:28:56', '1,4,9,12,13,14,17,19', ',13', 'project_task_created', 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 16, '', '2017-05-29 15:30:57', '', '', 'project_task_updated', 6, 9, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 9, '', '2017-05-30 08:58:07', '1,4,12,13,14,16,17,19', ',19,17', 'project_comment_added', 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 17, '', '2017-06-03 08:11:02', '1,4,9,12,13,14,16,19', ',13,14,9,1', 'project_comment_added', 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 3, '', '2017-06-03 08:35:49', '', '', 'project_task_updated', 4, 4, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 3, '', '2017-06-03 08:36:10', '', '', 'project_task_updated', 4, 3, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 1, '', '2017-06-12 01:37:07', '4,9,12,13,14,16,17,19', '', 'project_comment_replied', 6, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 1, '', '2017-06-17 14:43:39', '2,4,6,8', '', 'project_task_created', 2, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 1, '', '2017-06-17 14:44:36', '2,4,6,8', '', 'project_task_created', 2, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 1, '', '2017-06-17 14:45:34', '2,4,6,8', '', 'project_task_created', 2, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 1, '', '2017-06-17 14:47:59', '2,4,6,8', '', 'project_task_created', 2, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 1, '', '2017-06-17 14:48:29', '2,4,6,8', '', 'project_task_created', 2, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 1, '', '2017-06-17 14:48:48', '6', '', 'project_task_updated', 2, 12, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 1, '', '2017-06-17 14:49:33', '2,8', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 1, '', '2017-06-17 14:49:42', '2,8,16', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 1, '', '2017-06-17 14:49:53', '2,7,8,16', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 1, '', '2017-06-17 14:50:04', '2,4,7,8,16', '', 'project_member_added', 3, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 1, '', '2017-06-17 14:52:18', '4,5,6', ',5', 'project_task_created', 1, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 1, '', '2017-06-17 14:52:47', '4,5,6', '', 'project_task_created', 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 1, '', '2017-06-17 14:54:04', '4,5,6', '', 'project_task_created', 1, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 1, '', '2017-06-17 14:54:28', '4', '', 'project_task_updated', 1, 18, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 1, '', '2017-06-17 14:54:37', '4', '', 'project_task_updated', 1, 17, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 1, '', '2017-06-17 14:55:34', '4', '', 'project_task_updated', 1, 19, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 1, '', '2017-06-17 14:56:00', '4,5,6', '', 'project_task_created', 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 1, '', '2017-06-17 14:56:30', '4,5,6', '', 'project_task_created', 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 1, '', '2017-06-17 14:57:08', '4,5,6', ',6', 'project_task_created', 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 1, '', '2017-06-17 14:57:21', '4', '', 'project_task_updated', 1, 21, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 1, '', '2017-06-17 17:07:50', '4', '', 'project_member_added', 8, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 1, '', '2017-06-17 17:08:00', '4,21', '', 'project_member_added', 8, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 1, '', '2017-06-18 16:05:51', '4,8,21', '', 'project_member_added', 8, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 1, '', '2017-06-18 16:06:01', '4,5,8,21', '', 'project_member_added', 8, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 4, '', '2017-06-24 16:45:56', '', '', 'project_task_commented', 1, 20, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 5, '', '2017-06-24 20:38:23', '4,6', ',4', 'project_file_added', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 3, '', '2017-06-28 13:40:51', '10,15', '', 'project_task_created', 4, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 3, '', '2017-06-28 13:41:12', '10,15', '', 'project_task_created', 4, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 3, '', '2017-06-28 13:41:35', '10,15', '', 'project_task_created', 4, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 3, '', '2017-06-28 13:42:09', '10,15', '', 'project_task_created', 4, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 3, '', '2017-06-28 13:42:43', '10,15', '', 'project_task_created', 4, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 1, '', '2017-07-04 12:50:48', '3,10,15', '', 'project_comment_added', 4, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 3, '', '2017-07-04 13:00:03', '10', '', 'project_task_assigned', 4, 23, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 3, '', '2017-07-04 13:00:18', '15', '', 'project_task_assigned', 4, 25, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 3, '', '2017-07-04 13:00:42', '10', '', 'project_task_assigned', 4, 24, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 3, '', '2017-07-04 13:00:53', '15', '', 'project_task_assigned', 4, 26, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 3, '', '2017-07-04 13:01:06', '10', ',10', 'project_task_assigned', 4, 27, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 1, '', '2017-07-05 13:29:35', '4,5,6', '', 'project_task_created', 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 1, '', '2017-07-05 13:31:26', '4,5,6', ',6', 'project_task_created', 1, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 1, '', '2017-07-05 13:32:18', '4,5,6', ',6', 'project_task_created', 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 1, '', '2017-07-05 13:34:09', '4,5,6', ',6', 'project_task_created', 1, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 1, '', '2017-09-11 17:48:25', '2', '', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 1, '', '2017-09-11 17:48:33', '2,3', '', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 1, '', '2017-09-11 17:48:43', '2,3,5', '', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 1, '', '2017-09-11 17:48:58', '2,3,5,14', '', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 1, '', '2017-09-11 17:49:14', '2,3,4,5,14', '', 'project_member_added', 9, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 1, '', '2017-09-11 17:50:26', '2,3,4,5,14', '', 'project_task_created', 9, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 1, '', '2017-09-11 17:51:10', '2,3,4,5,14', '', 'project_task_created', 9, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 1, '', '2017-09-11 18:07:09', '2,3,4,5,14', '', 'project_task_created', 9, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 1, '', '2017-09-11 18:07:58', '2,3,4,5,14', '', 'project_task_created', 9, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 1, '', '2017-09-11 18:16:00', '2,3,4,5,14', '', 'project_task_created', 9, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 1, '', '2017-09-11 18:16:47', '2,3,4,5,14', '', 'project_task_created', 9, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 1, '', '2017-09-12 03:10:16', '2,4,6,8', '', 'project_task_created', 2, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 1, '', '2017-09-12 03:10:30', '2,4,6,8', '', 'project_comment_added', 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 1, '', '2017-09-12 03:11:40', '2,4,6,8', '', 'project_task_created', 2, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 1, '', '2017-09-12 03:24:02', '2,4,6,8', '', 'project_task_created', 2, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 1, '', '2017-09-12 03:24:32', '6', '', 'project_task_updated', 2, 40, 0, 0, 0, 0, 0, 0, 0, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 1, '', '2017-09-12 03:25:07', '2,4,6,8', '', 'project_task_created', 2, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 1, '', '2017-09-12 03:27:12', '2,4,6,8', ',6', 'project_task_created', 2, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 1, '', '2017-09-12 03:35:33', '2,4,6,8', ',8,6', 'project_comment_added', 2, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 1, '', '2017-09-12 03:42:40', '6', '', 'project_task_updated', 2, 38, 0, 0, 0, 0, 0, 0, 0, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 1, '', '2017-09-12 14:32:32', '8', '', 'project_member_added', 11, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 1, '', '2017-09-12 14:32:39', '3,8', '', 'project_member_added', 11, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 1, '', '2017-09-12 14:32:52', '3,8,21', '', 'project_member_added', 11, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 1, '', '2017-09-12 14:36:34', '3,5,8,21', ',8', 'project_member_added', 11, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 8, '', '2017-09-12 14:44:25', '1,3,5,21', '', 'project_comment_added', 11, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 1, '', '2017-09-12 14:50:50', '3,5,8,21,23', ',8,23', 'project_member_added', 11, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 1, '', '2017-09-14 05:18:58', '2,3,4,5,14', '', 'project_comment_added', 9, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 0, '', '2017-09-14 05:48:14', '', '', 'invoice_payment_confirmation', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0),
(109, 24, '', '2017-09-14 06:10:53', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 1, '', '2017-09-14 06:12:56', '24', ',24', 'ticket_commented', 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 24, '', '2017-09-14 06:15:46', '', '', 'estimate_request_received', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(112, 1, '', '2017-09-14 06:31:36', '2,3,4,5,14', '', 'project_task_finished', 9, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 1, '', '2017-09-15 15:23:54', '2,3,4,5,14', '', 'project_task_finished', 9, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 1, '', '2017-09-15 15:24:01', '2,3,4,5,14', '', 'project_task_finished', 9, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 1, '', '2017-09-15 15:24:21', '2,3,4,5,14', '', 'project_task_finished', 9, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 1, '', '2017-09-15 15:24:42', '2,3,4,5,14', '', 'project_task_finished', 9, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 1, '', '2017-09-16 04:09:34', '4,5,8,21', '', 'project_task_created', 8, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 1, '', '2017-09-16 04:10:07', '4,5,8,21', '', 'project_task_created', 8, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 1, '', '2017-09-16 04:10:16', '21', '', 'project_task_assigned', 8, 44, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 1, '', '2017-09-16 04:10:32', '4,5,8,21', '', 'project_task_created', 8, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 2, '', '2017-09-16 13:07:59', '', '', 'new_event_added_in_calendar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0),
(122, 2, '', '2017-09-16 13:47:16', '3,4,5,7,14', '', 'project_created', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 1, '', '2017-09-19 06:52:40', '4,14,16', '', 'project_comment_added', 6, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 1, '', '2017-09-20 15:55:05', '2,3', '', 'project_member_added', 12, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 1, '', '2017-09-20 15:55:20', '2,3,5', '', 'project_member_added', 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 2, '', '2017-09-25 12:20:46', '3,4,5,7,14', '', 'project_created', 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 2, '', '2017-09-25 12:21:27', '26', '', 'project_member_added', 13, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 2, '', '2017-09-25 12:23:12', '3,4,5,7,14', '', 'project_created', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 2, '', '2017-09-25 12:24:03', '26', '', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 2, '', '2017-09-25 12:24:46', '26', '', 'project_task_created', 14, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 2, '', '2017-09-25 12:25:08', '26', '', 'project_task_assigned', 14, 46, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 2, '', '2017-09-25 12:26:42', '26', '', 'project_task_finished', 14, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 2, '', '2017-09-25 12:35:16', '26', '', 'project_task_created', 14, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 2, '', '2017-09-25 12:35:25', '26', '', 'project_task_deleted', 14, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 2, '', '2017-09-25 12:36:28', '25,26', '', 'project_member_added', 14, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 2, '', '2017-09-25 12:38:59', '25,26', '', 'project_task_created', 14, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 2, '', '2017-09-25 12:45:22', '25,26', '', 'project_task_created', 14, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 2, '', '2017-09-25 12:45:51', '26', '', 'project_task_assigned', 14, 49, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 2, '', '2017-09-25 12:46:36', '25,26', '', 'project_task_created', 14, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 2, '', '2017-09-25 12:48:21', '26', '', 'project_task_updated', 14, 47, 0, 0, 0, 0, 0, 0, 0, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 2, '', '2017-09-25 12:49:10', '26', '', 'project_task_updated', 14, 48, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 2, '', '2017-09-25 12:51:16', '26', '', 'project_task_updated', 14, 50, 0, 0, 0, 0, 0, 0, 0, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 26, '', '2017-09-26 14:12:50', '2', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0),
(144, 26, '', '2017-09-27 10:54:04', '2,25', '', 'project_task_started', 14, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 26, '', '2017-09-29 06:09:08', '2,25', '', 'project_task_finished', 14, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 26, '', '2017-09-29 06:09:15', '2,25', ',2', 'project_task_started', 14, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 1, '', '2017-09-30 15:52:00', '6', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 1, '', '2017-10-04 15:04:23', '26', '', 'project_task_commented', 14, 47, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 1, '', '2017-10-07 04:54:26', '14', '', 'project_task_updated', 9, 35, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 1, '', '2017-10-07 04:54:27', '14', '', 'project_task_updated', 9, 35, 0, 0, 0, 0, 0, 0, 0, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 1, '', '2017-10-07 15:07:57', '16', '', 'ticket_closed', 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 1, '', '2017-10-07 15:09:01', '3,4,5,7,14', ',7', 'project_created', 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 1, '', '2017-10-07 15:09:11', '2', '', 'project_member_added', 15, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 1, '', '2017-10-07 15:09:19', '2,5', '', 'project_member_added', 15, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 1, '', '2017-10-07 15:09:29', '2,4,5', '', 'project_member_added', 15, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(156, 1, '', '2017-10-07 15:09:45', '2,4,5,16', '', 'project_member_added', 15, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 1, '', '2017-10-07 15:09:58', '2,4,5,16,21', '', 'project_member_added', 15, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 1, '', '2017-10-07 15:13:53', '2,4,5,16,21', ',4', 'project_task_created', 15, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 1, '', '2017-10-07 15:14:15', '', '', 'project_task_assigned', 15, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 1, '', '2017-10-07 15:14:21', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 1, '', '2017-10-07 15:14:22', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 1, '', '2017-10-07 15:14:23', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 1, '', '2017-10-07 15:14:26', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 1, '', '2017-10-07 15:14:26', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 1, '', '2017-10-07 15:16:24', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 1, '', '2017-10-07 15:16:25', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 1, '', '2017-10-07 15:16:27', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 1, '', '2017-10-07 15:16:30', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 1, '', '2017-10-07 15:16:30', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 1, '', '2017-10-07 15:16:36', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 1, '', '2017-10-07 15:16:38', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 1, '', '2017-10-07 15:16:39', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 1, '', '2017-10-07 15:16:40', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 1, '', '2017-10-07 15:16:51', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 1, '', '2017-10-07 15:16:52', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 1, '', '2017-10-07 15:16:55', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 1, '', '2017-10-07 15:17:00', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 1, '', '2017-10-07 15:17:02', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 1, '', '2017-10-07 15:18:21', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 1, '', '2017-10-07 15:18:27', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 1, '', '2017-10-07 15:18:28', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 1, '', '2017-10-07 15:18:33', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 1, '', '2017-10-07 15:18:39', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 1, '', '2017-10-07 15:18:50', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 1, '', '2017-10-07 15:18:52', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 1, '', '2017-10-07 15:18:54', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 1, '', '2017-10-07 17:04:07', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 1, '', '2017-10-07 17:04:13', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 1, '', '2017-10-07 17:04:14', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 1, '', '2017-10-07 17:04:16', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 1, '', '2017-10-07 17:04:18', '', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 4, '', '2017-10-07 17:07:33', '1', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 4, '', '2017-10-07 17:07:37', '1', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 4, '', '2017-10-07 17:07:39', '1', '', 'project_task_updated', 15, 51, 0, 0, 0, 0, 0, 0, 0, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 1, '', '2017-10-28 12:21:47', '6', '', 'project_task_updated', 2, 41, 0, 0, 0, 0, 0, 0, 0, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(196, 1, '', '2017-10-28 12:21:48', '6', '', 'project_task_updated', 2, 41, 0, 0, 0, 0, 0, 0, 0, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 1, '', '2017-10-28 12:21:49', '6', '', 'project_task_updated', 2, 38, 0, 0, 0, 0, 0, 0, 0, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 1, '', '2017-10-28 12:21:53', '6', '', 'project_task_updated', 2, 40, 0, 0, 0, 0, 0, 0, 0, 195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 1, '', '2017-10-28 14:32:01', '6', '', 'project_task_updated', 2, 40, 0, 0, 0, 0, 0, 0, 0, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(200, 1, '', '2017-10-28 14:32:04', '6', '', 'project_task_updated', 2, 12, 0, 0, 0, 0, 0, 0, 0, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(201, 1, '', '2017-10-28 14:32:04', '6', '', 'project_task_updated', 2, 41, 0, 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 1, '', '2017-10-28 14:32:05', '6', '', 'project_task_updated', 2, 13, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 1, '', '2017-10-28 14:32:07', '6', '', 'project_task_updated', 2, 38, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 1, '', '2017-10-28 14:32:10', '6', '', 'project_task_updated', 2, 15, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 1, '', '2017-10-28 14:32:11', '6', '', 'project_task_updated', 2, 15, 0, 0, 0, 0, 0, 0, 0, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 1, '', '2017-10-28 14:32:13', '6', '', 'project_task_updated', 2, 42, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(207, 1, '', '2017-10-28 14:32:14', '6', '', 'project_task_updated', 2, 42, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 1, '', '2017-10-28 14:32:15', '', '', 'project_task_updated', 2, 16, 0, 0, 0, 0, 0, 0, 0, 205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(209, 1, '', '2017-10-28 14:32:16', '6', '', 'project_task_updated', 2, 14, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(210, 1, '', '2017-10-28 14:32:20', '6', '', 'project_task_updated', 2, 14, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 1, '', '2017-10-28 14:32:22', '', '', 'project_task_updated', 2, 16, 0, 0, 0, 0, 0, 0, 0, 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 1, '', '2017-10-28 14:32:22', '6', '', 'project_task_updated', 2, 40, 0, 0, 0, 0, 0, 0, 0, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(213, 1, '', '2017-10-28 14:32:23', '6', '', 'project_task_updated', 2, 12, 0, 0, 0, 0, 0, 0, 0, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(214, 1, '', '2017-10-28 14:32:23', '6', '', 'project_task_updated', 2, 38, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(215, 1, '', '2017-10-28 14:32:25', '6', '', 'project_task_updated', 2, 41, 0, 0, 0, 0, 0, 0, 0, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 1, '', '2017-10-28 14:32:26', '6', '', 'project_task_updated', 2, 39, 0, 0, 0, 0, 0, 0, 0, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(217, 1, '', '2017-10-28 14:32:27', '6', '', 'project_task_updated', 2, 13, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(218, 1, '', '2017-10-28 14:32:28', '6', '', 'project_task_updated', 2, 42, 0, 0, 0, 0, 0, 0, 0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 1, '', '2017-10-28 14:32:29', '6', '', 'project_task_updated', 2, 15, 0, 0, 0, 0, 0, 0, 0, 216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(220, 6, '', '2017-10-29 19:02:10', '', '', 'project_task_updated', 2, 42, 0, 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(221, 6, '', '2017-10-30 13:08:35', '', '', 'project_task_updated', 2, 39, 0, 0, 0, 0, 0, 0, 0, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 1, '', '2017-10-30 14:44:05', '6', '', 'project_task_updated', 2, 13, 0, 0, 0, 0, 0, 0, 0, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 1, '', '2017-10-30 14:44:09', '6', '', 'project_task_deleted', 2, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(224, 1, '', '2017-10-30 14:44:12', '6', '', 'project_task_deleted', 2, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 1, '', '2017-10-30 15:49:08', '2,4,6,8', '', 'project_task_created', 2, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 1, '', '2017-10-30 15:49:21', '6', '', 'project_task_assigned', 2, 52, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 1, '', '2017-10-30 15:50:28', '2,4,6,8', '', 'project_task_created', 2, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 1, '', '2017-10-30 15:51:08', '2,4,6,8', '', 'project_task_created', 2, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 1, '', '2017-10-30 15:51:24', '6', '', 'project_task_updated', 2, 54, 0, 0, 0, 0, 0, 0, 0, 226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 1, '', '2017-10-30 15:54:14', '2,4,6,8', '', 'project_task_created', 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 1, '', '2017-10-30 15:57:09', '6', '', 'project_task_commented', 2, 55, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 1, '', '2017-10-30 15:58:27', '2,4,6,8', '', 'project_task_created', 2, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 1, '', '2017-10-30 15:58:59', '6', '', 'project_task_commented', 2, 56, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 6, '', '2017-10-30 16:57:58', '', '', 'project_task_updated', 2, 56, 0, 0, 0, 0, 0, 0, 0, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 6, '', '2017-10-30 16:58:02', '', '', 'project_task_updated', 2, 55, 0, 0, 0, 0, 0, 0, 0, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 6, '', '2017-10-31 19:23:14', '', '', 'project_task_updated', 2, 53, 0, 0, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 1, '', '2017-11-03 12:18:17', '2,4,6,8', '', 'project_task_created', 2, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 27, '', '2017-11-04 01:54:13', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 1, '', '2017-11-04 13:24:02', '7', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 5, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 1, '', '2017-11-04 13:24:18', '16', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 3, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 2, '', '2017-11-04 13:25:06', '14', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 4, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 2, '', '2017-11-04 13:25:13', '6', ',6', 'leave_approved', 0, 0, 0, 0, 0, 0, 2, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 2, '', '2017-11-04 14:37:20', '', '', 'ticket_commented', 0, 0, 0, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 14, '', '2017-11-04 15:08:45', '', '', 'project_task_updated', 9, 35, 0, 0, 0, 0, 0, 0, 0, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 14, '', '2017-11-05 11:56:28', '3,4,5,7', '', 'project_created', 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 14, '', '2017-11-05 11:57:57', '8', '', 'project_member_added', 16, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 14, '', '2017-11-05 11:58:03', '8,16', '', 'project_member_added', 16, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 14, '', '2017-11-05 12:02:20', '5,8,16', '', 'project_task_created', 16, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 14, '', '2017-11-05 12:03:04', '', '', 'project_task_updated', 16, 58, 0, 0, 0, 0, 0, 0, 0, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 14, '', '2017-11-05 12:03:58', '5,8,16', '', 'project_task_created', 16, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 14, '', '2017-11-05 12:04:57', '', '', 'project_task_updated', 16, 59, 0, 0, 0, 0, 0, 0, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 14, '', '2017-11-05 12:13:06', '5,8,16', '', 'project_task_created', 16, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 14, '', '2017-11-05 12:13:34', '16', '', 'project_task_updated', 16, 60, 0, 0, 0, 0, 0, 0, 0, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 14, '', '2017-11-05 12:14:42', '', '', 'project_task_updated', 16, 59, 0, 0, 0, 0, 0, 0, 0, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 14, '', '2017-11-05 12:15:09', '', '', 'project_task_updated', 16, 58, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 14, '', '2017-11-05 12:15:42', '16', '', 'project_task_updated', 16, 60, 0, 0, 0, 0, 0, 0, 0, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 14, '', '2017-11-05 12:17:10', '5,8,16', '', 'project_task_created', 16, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 14, '', '2017-11-05 12:17:38', '8', '', 'project_task_updated', 16, 61, 0, 0, 0, 0, 0, 0, 0, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 14, '', '2017-11-05 12:19:29', '5,8,16', '', 'project_task_created', 16, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 14, '', '2017-11-05 12:20:12', '8', '', 'project_task_updated', 16, 61, 0, 0, 0, 0, 0, 0, 0, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 14, '', '2017-11-05 12:21:02', '', '', 'project_task_updated', 16, 60, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 14, '', '2017-11-05 12:22:06', '8', '', 'project_task_updated', 16, 61, 0, 0, 0, 0, 0, 0, 0, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 14, '', '2017-11-05 12:23:13', '', '', 'project_task_updated', 16, 59, 0, 0, 0, 0, 0, 0, 0, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 14, '', '2017-11-05 12:23:26', '', '', 'project_task_updated', 16, 58, 0, 0, 0, 0, 0, 0, 0, 253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 14, '', '2017-11-05 12:27:27', '', '', 'project_task_updated', 16, 59, 0, 0, 0, 0, 0, 0, 0, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 14, '', '2017-11-05 12:31:49', '', '', 'project_task_updated', 16, 58, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 14, '', '2017-11-05 12:31:57', '', '', 'project_task_updated', 16, 59, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 28, '', '2017-11-06 01:48:36', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 28, '', '2017-11-06 04:06:04', '', '', 'estimate_request_received', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0),
(270, 14, '', '2017-11-07 06:35:09', '', '', 'ticket_commented', 0, 0, 0, 9, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 14, '', '2017-11-07 06:35:12', '', '', 'ticket_commented', 0, 0, 0, 9, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 14, '', '2017-11-08 22:38:33', '', '', 'project_task_updated', 16, 58, 0, 0, 0, 0, 0, 0, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 14, '', '2017-11-08 22:39:09', '', '', 'project_task_commented', 16, 58, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 14, '', '2017-11-08 23:27:15', '', '', 'project_task_updated', 16, 59, 0, 0, 0, 0, 0, 0, 0, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 14, '', '2017-11-08 23:29:44', '', '', 'project_task_commented', 16, 59, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 14, '', '2017-11-08 23:30:33', '', '', 'project_task_commented', 16, 58, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 14, '', '2017-11-08 23:31:35', '16', '', 'project_task_updated', 16, 60, 0, 0, 0, 0, 0, 0, 0, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 14, '', '2017-11-08 23:42:05', '5,8,16', '', 'project_task_created', 16, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 14, '', '2017-11-09 00:03:11', '', '', 'project_task_updated', 16, 62, 0, 0, 0, 0, 0, 0, 0, 284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 14, '', '2017-11-09 00:03:43', '8', '', 'project_task_updated', 16, 61, 0, 0, 0, 0, 0, 0, 0, 285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 14, '', '2017-11-09 00:03:57', '16', '', 'project_task_updated', 16, 60, 0, 0, 0, 0, 0, 0, 0, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 14, '', '2017-11-09 00:04:13', '', '', 'project_task_updated', 16, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 14, '', '2017-11-09 00:05:41', '', '', 'project_task_updated', 16, 63, 0, 0, 0, 0, 0, 0, 0, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 14, '', '2017-11-09 00:06:07', '8', '', 'project_task_updated', 16, 61, 0, 0, 0, 0, 0, 0, 0, 288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 29, '', '2017-11-09 02:48:13', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 6, '', '2017-11-10 09:17:41', '', '', 'project_task_updated', 2, 57, 0, 0, 0, 0, 0, 0, 0, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 1, '', '2017-11-10 15:40:52', '6', '', 'project_task_updated', 2, 52, 0, 0, 0, 0, 0, 0, 0, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 1, '', '2017-11-10 15:40:54', '6', '', 'project_task_updated', 2, 52, 0, 0, 0, 0, 0, 0, 0, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 1, '', '2017-11-10 15:41:19', '6', '', 'project_task_updated', 2, 54, 0, 0, 0, 0, 0, 0, 0, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(290, 16, '', '2017-11-11 02:07:51', '5,8,14', '', 'project_task_created', 16, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 1, '', '2017-11-13 23:45:18', '2,4,6,8', '', 'project_task_created', 2, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(292, 1, '', '2017-11-13 23:46:10', '2,4,6,8', '', 'project_task_created', 2, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(293, 1, '', '2017-11-13 23:48:29', '6', '', 'project_task_assigned', 2, 66, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(294, 1, '', '2017-11-13 23:49:04', '2,4,6,8', '', 'project_task_created', 2, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295, 1, '', '2017-11-13 23:49:51', '6', '', 'project_task_updated', 2, 65, 0, 0, 0, 0, 0, 0, 0, 298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 1, '', '2017-11-13 23:50:10', '6', '', 'project_task_updated', 2, 66, 0, 0, 0, 0, 0, 0, 0, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(297, 1, '', '2017-11-13 23:55:39', '2,4,6,8', '', 'project_task_created', 2, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298, 1, '', '2017-11-14 15:31:04', '6', '', 'project_task_updated', 2, 67, 0, 0, 0, 0, 0, 0, 0, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 30, '', '2017-11-14 19:20:19', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 31, '', '2017-11-14 20:21:37', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 1, '', '2017-11-15 06:58:01', '6', '', 'project_task_updated', 2, 68, 0, 0, 0, 0, 0, 0, 0, 302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 1, '', '2017-11-15 06:58:07', '6', '', 'project_task_updated', 2, 66, 0, 0, 0, 0, 0, 0, 0, 303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 1, '', '2017-11-15 06:58:36', '6', '', 'project_task_updated', 2, 65, 0, 0, 0, 0, 0, 0, 0, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(304, 1, '', '2017-11-15 06:59:11', '6', '', 'project_task_updated', 2, 65, 0, 0, 0, 0, 0, 0, 0, 305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 1, '', '2017-11-15 06:59:20', '6', '', 'project_task_updated', 2, 65, 0, 0, 0, 0, 0, 0, 0, 306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 1, '', '2017-11-15 06:59:23', '6', '', 'project_task_updated', 2, 68, 0, 0, 0, 0, 0, 0, 0, 307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 1, '', '2017-11-15 06:59:27', '6', '', 'project_task_updated', 2, 66, 0, 0, 0, 0, 0, 0, 0, 308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(308, 1, '', '2017-11-15 06:59:29', '6', '', 'project_task_updated', 2, 68, 0, 0, 0, 0, 0, 0, 0, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(309, 1, '', '2017-11-15 06:59:34', '6', '', 'project_task_updated', 2, 66, 0, 0, 0, 0, 0, 0, 0, 310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 1, '', '2017-11-16 03:43:52', '2,4,6,8', ',8', 'project_task_created', 2, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 1, '', '2017-11-16 15:10:33', '', '', 'project_task_updated', 2, 69, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(312, 24, '', '2017-11-17 16:57:29', '21', '', 'ticket_commented', 0, 0, 0, 8, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(313, 8, '', '2017-11-18 03:23:25', '', '', 'project_task_updated', 16, 61, 0, 0, 0, 0, 0, 0, 0, 313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(314, 8, '', '2017-11-18 04:01:54', '1', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0),
(315, 8, '', '2017-11-18 13:27:14', '', '', 'project_task_commented', 16, 61, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(316, 1, '', '2017-11-18 13:34:08', '3,4,5,7,14', '', 'project_created', 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(317, 1, '', '2017-11-18 13:34:31', '8', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(318, 1, '', '2017-11-18 13:35:24', '8,16', '', 'project_member_added', 17, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(319, 2, '', '2017-11-18 15:10:17', '3,4,5,6,7,8,14', '', 'project_created', 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(320, 2, '', '2017-11-18 15:13:44', '1', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(321, 2, '', '2017-11-18 15:13:53', '1,3', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(322, 2, '', '2017-11-18 15:14:04', '1,3,5', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(323, 2, '', '2017-11-18 15:14:15', '1,3,5,8', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(324, 2, '', '2017-11-18 15:14:40', '1,3,5,8,23', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(325, 2, '', '2017-11-18 15:14:51', '1,3,5,8,16,23', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(326, 8, '', '2017-11-18 15:46:50', '1,2,3,5,16,23', '', 'project_task_created', 18, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(327, 8, '', '2017-11-18 15:47:19', '1,2,3,5,16,23', '', 'project_task_created', 18, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(328, 8, '', '2017-11-18 15:48:02', '1,2,3,5,16,23', '', 'project_task_created', 18, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(329, 8, '', '2017-11-18 15:48:56', '1,2,3,5,16,23', '', 'project_task_created', 18, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(330, 8, '', '2017-11-18 15:50:33', '1,2,3,5,16,23', '', 'project_task_created', 18, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(331, 8, '', '2017-11-18 15:51:04', '1,2,3,5,16,23', '', 'project_task_created', 18, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(332, 8, '', '2017-11-18 15:52:08', '1', ',1', 'project_task_assigned', 18, 73, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(333, 8, '', '2017-11-18 15:52:15', '2', '', 'project_task_assigned', 18, 75, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(334, 1, '', '2017-11-18 15:55:59', '', '', 'project_task_updated', 18, 73, 0, 0, 0, 0, 0, 0, 0, 324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(335, 8, '', '2017-11-18 15:57:31', '2', '', 'project_task_updated', 18, 75, 0, 0, 0, 0, 0, 0, 0, 325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(336, 1, '', '2017-11-18 15:57:58', '2,3,5,6,8,16,23', '', 'project_member_added', 18, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(337, 8, '', '2017-11-18 15:58:17', '23', '', 'project_task_updated', 18, 74, 0, 0, 0, 0, 0, 0, 0, 326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(338, 1, '', '2017-11-18 15:58:36', '2,3,5,6,8,16,23', ',2,8', 'project_task_created', 18, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(339, 1, '', '2017-11-18 15:59:19', '6', '', 'project_task_assigned', 18, 76, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(340, 1, '', '2017-11-18 15:59:29', '23', '', 'project_task_updated', 18, 74, 0, 0, 0, 0, 0, 0, 0, 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(341, 1, '', '2017-11-18 15:59:45', '6', '', 'project_task_updated', 18, 76, 0, 0, 0, 0, 0, 0, 0, 330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 2, '', '2017-11-18 16:00:47', '', '', 'project_task_updated', 18, 75, 0, 0, 0, 0, 0, 0, 0, 332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(343, 2, '', '2017-11-18 19:11:36', '', '', 'project_task_updated', 18, 75, 0, 0, 0, 0, 0, 0, 0, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 14, '', '2017-11-19 00:13:34', '', '', 'leave_canceled', 0, 0, 0, 0, 0, 0, 8, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 6, '', '2017-11-19 15:57:22', '', '', 'project_task_updated', 18, 76, 0, 0, 0, 0, 0, 0, 0, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(346, 8, '', '2017-11-20 03:17:17', '', '', 'project_task_updated', 18, 71, 0, 0, 0, 0, 0, 0, 0, 335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(347, 8, '', '2017-11-26 14:14:05', '', '', 'project_task_updated', 16, 61, 0, 0, 0, 0, 0, 0, 0, 336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(348, 8, '', '2017-11-26 14:15:15', '', '', 'project_task_commented', 16, 61, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(349, 8, '', '2017-11-26 14:15:36', '', '', 'project_task_commented', 16, 61, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(350, 8, '', '2017-11-26 14:20:14', '', '', 'project_task_commented', 16, 61, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(351, 8, '', '2017-11-26 14:24:38', '', '', 'project_task_updated', 18, 71, 0, 0, 0, 0, 0, 0, 0, 342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(352, 8, '', '2017-11-26 14:26:45', '1,16', '', 'project_task_created', 17, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(353, 8, '', '2017-11-26 14:27:26', '1,16', '', 'project_task_created', 17, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(354, 8, '', '2017-11-26 14:28:09', '1,16', '', 'project_task_created', 17, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(355, 8, '', '2017-11-26 14:28:53', '1', '', 'project_task_updated', 18, 73, 0, 0, 0, 0, 0, 0, 0, 347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(356, 8, '', '2017-11-26 14:28:57', '16', '', 'project_task_updated', 18, 70, 0, 0, 0, 0, 0, 0, 0, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(357, 8, '', '2017-11-26 14:29:01', '3', '', 'project_task_updated', 18, 72, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(358, 8, '', '2017-11-26 14:29:04', '23', '', 'project_task_updated', 18, 74, 0, 0, 0, 0, 0, 0, 0, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(359, 8, '', '2017-11-26 14:29:07', '16', '', 'project_task_updated', 18, 70, 0, 0, 0, 0, 0, 0, 0, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(360, 8, '', '2017-11-26 14:29:10', '23', '', 'project_task_updated', 18, 74, 0, 0, 0, 0, 0, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(361, 8, '', '2017-11-26 14:29:17', '3', '', 'project_task_updated', 18, 72, 0, 0, 0, 0, 0, 0, 0, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(362, 32, '', '2017-11-30 10:07:27', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(363, 1, '', '2017-11-30 10:13:28', '3,4,5,6,7,8,14', ',8,7,6', 'project_created', 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(364, 8, '', '2017-12-02 13:51:53', '', '', 'project_task_updated', 17, 77, 0, 0, 0, 0, 0, 0, 0, 354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(365, 8, '', '2017-12-02 13:51:54', '', '', 'project_task_updated', 17, 78, 0, 0, 0, 0, 0, 0, 0, 355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(366, 8, '', '2017-12-02 13:51:55', '', '', 'project_task_updated', 17, 79, 0, 0, 0, 0, 0, 0, 0, 356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(367, 8, '', '2017-12-02 13:52:18', '', '', 'project_task_updated', 17, 78, 0, 0, 0, 0, 0, 0, 0, 357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(368, 8, '', '2017-12-02 13:52:31', '', '', 'project_task_updated', 17, 79, 0, 0, 0, 0, 0, 0, 0, 358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(369, 8, '', '2017-12-02 13:53:42', '1,16', '', 'project_task_created', 17, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(370, 8, '', '2017-12-02 13:53:46', '', '', 'project_task_updated', 17, 80, 0, 0, 0, 0, 0, 0, 0, 360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(371, 8, '', '2017-12-02 13:54:16', '1,16', '', 'project_task_created', 17, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(372, 8, '', '2017-12-02 13:54:21', '', '', 'project_task_updated', 17, 81, 0, 0, 0, 0, 0, 0, 0, 362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(373, 1, '', '2017-12-09 15:23:03', '16', '', 'project_task_updated', 16, 64, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(374, 1, '', '2017-12-09 15:23:40', '16', '', 'project_task_updated', 16, 64, 0, 0, 0, 0, 0, 0, 0, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(375, 33, '', '2018-01-02 11:37:54', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(376, 34, '', '2018-01-22 04:05:06', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(377, 35, '', '2018-01-25 13:13:07', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(378, 1, '', '2018-01-31 15:16:23', '3,4,5,6,7,8,14', ',6', 'project_created', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(379, 1, '', '2018-01-31 15:17:27', '', '', 'project_task_created', 20, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(380, 1, '', '2018-01-31 15:18:22', '', '', 'project_task_updated', 20, 82, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(381, 1, '', '2018-02-07 10:08:33', '3,4,5,6,7,8,14', '', 'project_created', 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(382, 1, '', '2018-02-07 14:02:19', '', '', 'project_file_added', 21, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(383, 1, '', '2018-02-07 14:32:00', '', '', 'project_file_added', 21, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(384, 3, '', '2018-02-07 16:08:35', '4,5,6,7,8,14', '', 'project_created', 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(385, 1, '', '2018-02-07 16:09:44', '3,4,5,6,7,8,14', '', 'project_created', 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(386, 21, '', '2018-02-07 16:11:28', '3,4,5,6,7,8,14', '', 'project_created', 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(387, 1, '', '2018-02-07 16:14:42', '', '', 'project_task_created', 23, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(388, 23, '', '2018-02-07 16:15:31', '3,4,5,6,7,8,14', ',8', 'project_created', 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(389, 2, '', '2018-02-07 16:16:20', '3,4,5,6,7,8,14', ',6,8', 'project_created', 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(390, 3, '', '2018-02-07 16:55:51', '', '', 'project_task_created', 22, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(391, 3, '', '2018-02-07 16:56:19', '', '', 'project_task_created', 22, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(392, 8, '', '2018-02-10 13:40:21', '', '', 'project_task_updated', 17, 77, 0, 0, 0, 0, 0, 0, 0, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(393, 8, '', '2018-02-10 13:40:22', '', '', 'project_task_updated', 17, 80, 0, 0, 0, 0, 0, 0, 0, 376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(394, 8, '', '2018-02-10 13:40:23', '', '', 'project_task_updated', 17, 81, 0, 0, 0, 0, 0, 0, 0, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(395, 8, '', '2018-02-10 13:40:24', '', '', 'project_task_updated', 17, 78, 0, 0, 0, 0, 0, 0, 0, 378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(396, 8, '', '2018-02-10 13:40:26', '', '', 'project_task_updated', 17, 79, 0, 0, 0, 0, 0, 0, 0, 379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(397, 16, '', '2018-02-10 13:45:48', '3,4,5,6,7,8,14', ',8', 'project_created', 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(398, 16, '', '2018-02-10 13:47:39', '', '', 'project_task_created', 27, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(399, 8, '', '2018-02-10 13:49:10', '3,4,5,6,7,14', ',6', 'project_created', 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(400, 1, '', '2018-02-10 13:50:37', '23', '', 'project_task_created', 25, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(401, 1, '', '2018-02-10 13:50:43', '', '', 'project_task_updated', 25, 87, 0, 0, 0, 0, 0, 0, 0, 382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(402, 1, '', '2018-02-10 13:50:46', '', '', 'project_task_updated', 25, 87, 0, 0, 0, 0, 0, 0, 0, 383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(403, 1, '', '2018-02-10 13:51:23', '', '', 'project_task_updated', 25, 87, 0, 0, 0, 0, 0, 0, 0, 384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(404, 1, '', '2018-02-10 13:51:24', '', '', 'project_task_updated', 25, 87, 0, 0, 0, 0, 0, 0, 0, 385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(405, 1, '', '2018-02-10 13:51:24', '', '', 'project_task_updated', 25, 87, 0, 0, 0, 0, 0, 0, 0, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(406, 1, '', '2018-02-10 13:51:27', '', '', 'project_task_updated', 25, 87, 0, 0, 0, 0, 0, 0, 0, 387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(407, 2, '', '2018-02-10 13:57:50', '', '', 'project_task_created', 26, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(408, 3, '', '2018-02-12 07:38:42', '', '', 'project_task_updated', 22, 84, 0, 0, 0, 0, 0, 0, 0, 389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(409, 3, '', '2018-02-12 07:38:48', '', '', 'project_task_updated', 22, 85, 0, 0, 0, 0, 0, 0, 0, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(410, 3, '', '2018-02-12 07:41:15', '4,5,6,7,8,14', '', 'project_created', 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(411, 3, '', '2018-02-12 07:44:56', '', '', 'project_task_created', 29, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(412, 3, '', '2018-02-12 07:45:19', '', '', 'project_task_created', 29, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(413, 3, '', '2018-02-12 07:45:46', '', '', 'project_task_created', 29, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(414, 3, '', '2018-02-12 07:47:27', '', '', 'project_task_created', 29, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(415, 3, '', '2018-02-12 07:47:42', '', '', 'project_task_created', 29, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(416, 3, '', '2018-02-12 07:48:12', '', '', 'project_task_created', 29, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(417, 14, '', '2018-02-14 13:30:10', '1', '', 'project_task_created', 21, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(418, 14, '', '2018-02-14 13:30:58', '1', '', 'project_task_created', 21, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(419, 1, '', '2018-02-14 15:04:55', '6', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 13, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(420, 1, '', '2018-02-14 15:06:11', '6', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 12, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(421, 1, '', '2018-02-14 15:06:23', '6', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 7, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(422, 1, '', '2018-02-14 15:06:27', '14', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 6, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(423, 1, '', '2018-02-14 15:06:34', '14', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 9, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(424, 1, '', '2018-02-14 15:06:39', '23', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 10, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(425, 1, '', '2018-02-14 15:06:49', '5', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 11, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(426, 1, '', '2018-02-14 15:08:00', '', '', 'project_task_created', 23, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(427, 1, '', '2018-02-14 15:09:21', '', '', 'project_task_created', 23, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(428, 3, '', '2018-02-14 15:09:46', '4,5,6,7,8,14', '', 'project_created', 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(429, 3, '', '2018-02-14 15:14:26', '', '', 'project_task_created', 30, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(430, 8, '', '2018-02-17 13:27:52', '3,4,5,6,7,14', '', 'project_created', 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(431, 1, '', '2018-02-17 19:21:05', '3,4,5,6,7,8,14', '', 'project_created', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(432, 23, '', '2018-02-21 15:13:21', '1', ',1', 'project_file_added', 32, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(433, 1, '', '2018-02-22 07:10:58', '2,4,6,8', '', 'project_customer_feedback_added', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(434, 1, '', '2018-02-22 07:10:59', '2,4,6,8', ',2', 'project_customer_feedback_added', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(435, 36, '', '2018-02-25 21:25:00', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(436, 1, '', '2018-02-26 08:46:25', '', '', 'project_file_added', 32, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(437, 2, '', '2018-02-26 14:56:55', '1', ',1', 'project_file_added', 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(438, 2, '', '2018-02-26 15:36:56', '1', '', 'project_file_deleted', 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(439, 2, '', '2018-02-26 15:37:35', '1', '', 'project_file_added', 32, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(440, 2, '', '2018-02-26 15:37:36', '1', '', 'project_file_added', 32, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(441, 37, '', '2018-03-05 15:06:15', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(442, 1, '', '2018-03-05 15:09:03', '16', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(443, 1, '', '2018-03-05 15:09:10', '14,16', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(444, 1, '', '2018-03-05 15:09:18', '8,14,16', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(445, 1, '', '2018-03-05 15:09:25', '8,14,16,23', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(446, 1, '', '2018-03-05 15:09:33', '3,8,14,16,23', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(447, 1, '', '2018-03-05 15:09:59', '3,8,14,16,23', '', 'project_file_deleted', 32, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(448, 1, '', '2018-03-05 15:10:06', '3,8,14,16,23', '', 'project_file_deleted', 32, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(449, 1, '', '2018-03-05 15:10:47', '3,8,14,16,23', '', 'project_file_deleted', 32, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(450, 1, '', '2018-03-05 15:10:55', '3,8,14,16,23', '', 'project_file_deleted', 32, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(451, 1, '', '2018-03-05 15:12:25', '3,8,14,16,23', '', 'project_file_added', 32, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(452, 1, '', '2018-03-05 15:13:58', '3,8,14,16,23', '', 'project_comment_added', 32, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(453, 1, '', '2018-03-05 15:26:12', '3,8,14,16,23', '', 'project_file_added', 32, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(454, 1, '', '2018-03-05 15:26:12', '3,8,14,16,23', '', 'project_file_added', 32, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(455, 1, '', '2018-03-05 15:26:12', '3,8,14,16,23', '', 'project_file_added', 32, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(456, 1, '', '2018-03-05 15:26:13', '3,8,14,16,23', ',23', 'project_file_added', 32, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(457, 1, '', '2018-03-05 15:58:56', '3,8,14,16,23', ',23', 'project_task_created', 32, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(458, 23, '', '2018-03-05 16:02:27', '1,3,8,14,16', '', 'project_task_created', 32, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(459, 1, '', '2018-03-05 16:08:17', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(460, 1, '', '2018-03-05 16:09:03', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(461, 1, '', '2018-03-05 16:09:09', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(462, 1, '', '2018-03-05 16:09:12', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(463, 23, '', '2018-03-05 16:11:47', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(464, 1, '', '2018-03-05 16:49:40', '3,8,14,16,23', '', 'project_task_created', 32, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(465, 1, '', '2018-03-05 16:53:18', '16', '', 'project_task_updated', 32, 102, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(466, 23, '', '2018-03-05 16:56:09', '1,3,8,14,16', '', 'project_task_created', 32, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(467, 23, '', '2018-03-05 16:56:53', '16', '', 'project_task_updated', 32, 103, 0, 0, 0, 0, 0, 0, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(468, 23, '', '2018-03-05 17:01:42', '1,3,8,14,16', '', 'project_task_created', 32, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(469, 23, '', '2018-03-05 17:02:14', '16', '', 'project_task_updated', 32, 103, 0, 0, 0, 0, 0, 0, 0, 436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(470, 23, '', '2018-03-05 17:02:33', '16', '', 'project_task_updated', 32, 104, 0, 0, 0, 0, 0, 0, 0, 437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(471, 23, '', '2018-03-05 17:04:29', '1,3,8,14,16', '', 'project_task_created', 32, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(472, 23, '', '2018-03-05 17:05:42', '1,3,8,14,16', '', 'project_task_created', 32, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(473, 23, '', '2018-03-05 17:09:15', '1,3,8,14,16', '', 'project_task_created', 32, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(474, 23, '', '2018-03-05 17:09:59', '1,3,8,14,16', '', 'project_task_created', 32, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(475, 23, '', '2018-03-05 17:11:42', '8', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(476, 1, '', '2018-03-05 17:28:06', '3,8,14,16,23', '', 'project_file_added', 32, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(477, 1, '', '2018-03-05 17:28:25', '3,8,14,16,23', '', 'project_file_added', 32, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(478, 1, '', '2018-03-05 17:31:58', '3,8,14,16,23', ',23', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(479, 23, '', '2018-03-05 17:38:54', '1,3,8,14,16', '', 'project_task_created', 32, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(480, 23, '', '2018-03-05 17:40:35', '16', '', 'project_task_updated', 32, 109, 0, 0, 0, 0, 0, 0, 0, 448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(481, 23, '', '2018-03-05 17:41:38', '1,3,8,14,16', '', 'project_task_created', 32, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(482, 23, '', '2018-03-05 17:42:54', '1,3,8,14,16', '', 'project_task_created', 32, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(483, 23, '', '2018-03-05 17:44:09', '1,3,8,14,16', '', 'project_task_created', 32, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(484, 23, '', '2018-03-05 17:44:51', '16', '', 'project_task_updated', 32, 110, 0, 0, 0, 0, 0, 0, 0, 452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(485, 23, '', '2018-03-05 17:45:57', '1,3,8,14,16', '', 'project_task_created', 32, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(486, 23, '', '2018-03-05 17:47:11', '1,3,8,14,16', '', 'project_task_created', 32, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(487, 23, '', '2018-03-05 17:47:39', '16', '', 'project_task_updated', 32, 114, 0, 0, 0, 0, 0, 0, 0, 455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(488, 23, '', '2018-03-05 17:48:33', '1,3,8,14,16', '', 'project_task_created', 32, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(489, 23, '', '2018-03-05 17:49:27', '1,3,8,14,16', '', 'project_task_created', 32, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(490, 23, '', '2018-03-05 17:51:58', '1,3,8,14,16', ',1', 'project_task_created', 32, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(491, 23, '', '2018-03-05 17:53:21', '1,3,8,14,16', '', 'project_task_created', 32, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(492, 23, '', '2018-03-05 17:54:33', '1,3,8,14,16', '', 'project_task_created', 32, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(493, 23, '', '2018-03-05 17:55:20', '1,3,8,14,16', '', 'project_task_created', 32, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(494, 23, '', '2018-03-05 17:56:38', '1,3,8,14,16', '', 'project_task_created', 32, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(495, 1, '', '2018-03-05 17:58:24', '3,8,14,16,23,38', '', 'project_member_added', 32, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(496, 1, '', '2018-03-05 17:59:02', '8', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(497, 1, '', '2018-03-05 17:59:08', '16', '', 'project_task_updated', 32, 102, 0, 0, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(498, 23, '', '2018-03-05 18:19:48', '16', '', 'project_task_updated', 32, 121, 0, 0, 0, 0, 0, 0, 0, 465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(499, 23, '', '2018-03-05 18:20:43', '16', '', 'project_task_deleted', 32, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(500, 23, '', '2018-03-05 18:21:06', '16', '', 'project_task_deleted', 32, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(501, 23, '', '2018-03-05 18:21:13', '16', '', 'project_task_deleted', 32, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(502, 23, '', '2018-03-05 18:21:23', '16', '', 'project_task_deleted', 32, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(503, 23, '', '2018-03-05 18:21:39', '16', '', 'project_task_deleted', 32, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(504, 23, '', '2018-03-05 18:23:00', '1,3,8,14,16,38', '', 'project_task_created', 32, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(505, 23, '', '2018-03-05 18:24:03', '1,3,8,14,16,38', '', 'project_task_created', 32, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(506, 23, '', '2018-03-05 18:25:56', '1,3,8,14,16,38', '', 'project_task_created', 32, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(507, 23, '', '2018-03-05 18:27:20', '1,3,8,14,16,38', '', 'project_task_created', 32, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(508, 23, '', '2018-03-05 18:27:43', '16', '', 'project_task_updated', 32, 124, 0, 0, 0, 0, 0, 0, 0, 475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(509, 23, '', '2018-03-05 18:28:31', '1,3,8,14,16,38', '', 'project_task_created', 32, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(510, 23, '', '2018-03-05 18:29:36', '1,3,8,14,16,38', '', 'project_task_created', 32, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(511, 1, '', '2018-03-05 18:43:24', '3,8,14,16,23,38', '', 'project_comment_added', 32, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(512, 23, '', '2018-03-05 19:09:47', '1,3,8,14,16,38', '', 'project_file_added', 32, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(513, 1, '', '2018-03-14 13:56:43', '3,8,14,16,23,38', '', 'project_task_created', 32, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(514, 1, '', '2018-03-14 13:57:29', '3,8,14,16,23,38', '', 'project_task_created', 32, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(515, 1, '', '2018-03-14 13:58:02', '3,8,14,16,23,38', '', 'project_task_created', 32, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(516, 1, '', '2018-03-14 14:00:28', '3,8,14,16,23,38', '', 'project_task_created', 32, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(517, 1, '', '2018-03-14 14:01:06', '3,8,14,16,23,38', '', 'project_task_created', 32, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(518, 1, '', '2018-03-14 14:06:09', '3,8,14,16,23,38', '', 'project_task_created', 32, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(519, 1, '', '2018-03-14 14:06:35', '16', '', 'project_task_updated', 32, 133, 0, 0, 0, 0, 0, 0, 0, 487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(520, 1, '', '2018-03-14 14:06:56', '16', '', 'project_task_updated', 32, 132, 0, 0, 0, 0, 0, 0, 0, 488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(521, 1, '', '2018-03-14 14:07:12', '16', '', 'project_task_updated', 32, 131, 0, 0, 0, 0, 0, 0, 0, 489, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(522, 1, '', '2018-03-14 14:07:48', '8', '', 'project_task_updated', 32, 130, 0, 0, 0, 0, 0, 0, 0, 490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(523, 1, '', '2018-03-14 14:07:59', '8', '', 'project_task_updated', 32, 129, 0, 0, 0, 0, 0, 0, 0, 491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(524, 1, '', '2018-03-14 14:08:12', '8', '', 'project_task_updated', 32, 128, 0, 0, 0, 0, 0, 0, 0, 492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(525, 1, '', '2018-03-18 13:32:14', '16', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0),
(526, 1, '', '2018-03-18 13:33:54', '23', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0),
(527, 39, '', '2018-03-19 10:57:35', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(528, 8, '', '2018-03-22 15:43:14', '16', '', 'project_task_updated', 32, 103, 0, 0, 0, 0, 0, 0, 0, 496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(529, 8, '', '2018-03-22 15:43:15', '16', '', 'project_task_updated', 32, 104, 0, 0, 0, 0, 0, 0, 0, 497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(530, 8, '', '2018-03-22 15:43:23', '16', '', 'project_task_updated', 32, 105, 0, 0, 0, 0, 0, 0, 0, 498, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(531, 8, '', '2018-03-22 15:43:28', '16', '', 'project_task_updated', 32, 106, 0, 0, 0, 0, 0, 0, 0, 499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(532, 8, '', '2018-03-22 15:43:30', '16', '', 'project_task_updated', 32, 107, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(533, 8, '', '2018-03-22 15:43:32', '16', '', 'project_task_updated', 32, 108, 0, 0, 0, 0, 0, 0, 0, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(534, 8, '', '2018-03-22 15:43:35', '16', '', 'project_task_updated', 32, 109, 0, 0, 0, 0, 0, 0, 0, 502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(535, 8, '', '2018-03-22 15:43:36', '16', '', 'project_task_updated', 32, 110, 0, 0, 0, 0, 0, 0, 0, 503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(536, 8, '', '2018-03-22 15:43:38', '16', '', 'project_task_updated', 32, 111, 0, 0, 0, 0, 0, 0, 0, 504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(537, 8, '', '2018-03-22 15:43:41', '', '', 'project_task_updated', 32, 122, 0, 0, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(538, 8, '', '2018-03-22 15:43:45', '16', '', 'project_task_updated', 32, 112, 0, 0, 0, 0, 0, 0, 0, 506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(539, 8, '', '2018-03-22 15:43:47', '16', '', 'project_task_updated', 32, 114, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(540, 8, '', '2018-03-22 15:43:49', '16', '', 'project_task_updated', 32, 113, 0, 0, 0, 0, 0, 0, 0, 508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(541, 8, '', '2018-03-22 15:43:50', '', '', 'project_task_updated', 32, 115, 0, 0, 0, 0, 0, 0, 0, 509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(542, 8, '', '2018-03-22 15:43:51', '16', '', 'project_task_updated', 32, 121, 0, 0, 0, 0, 0, 0, 0, 510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(543, 8, '', '2018-03-22 15:43:52', '16', '', 'project_task_updated', 32, 123, 0, 0, 0, 0, 0, 0, 0, 511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(544, 8, '', '2018-03-22 15:43:54', '16', '', 'project_task_updated', 32, 124, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(545, 8, '', '2018-03-22 15:43:56', '16', '', 'project_task_updated', 32, 126, 0, 0, 0, 0, 0, 0, 0, 514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(546, 8, '', '2018-03-22 15:43:57', '16', '', 'project_task_updated', 32, 127, 0, 0, 0, 0, 0, 0, 0, 515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(547, 8, '', '2018-03-22 15:43:58', '', '', 'project_task_updated', 32, 128, 0, 0, 0, 0, 0, 0, 0, 516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(548, 8, '', '2018-03-22 15:44:11', '', '', 'project_task_updated', 32, 130, 0, 0, 0, 0, 0, 0, 0, 517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(549, 8, '', '2018-03-22 15:44:11', '16', '', 'project_task_updated', 32, 131, 0, 0, 0, 0, 0, 0, 0, 518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(550, 8, '', '2018-03-22 15:44:12', '', '', 'project_task_updated', 32, 129, 0, 0, 0, 0, 0, 0, 0, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(551, 8, '', '2018-03-22 15:44:13', '16', '', 'project_task_updated', 32, 133, 0, 0, 0, 0, 0, 0, 0, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(552, 8, '', '2018-03-22 15:44:13', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(553, 8, '', '2018-03-22 15:44:14', '16', '', 'project_task_updated', 32, 125, 0, 0, 0, 0, 0, 0, 0, 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(554, 8, '', '2018-03-22 15:44:15', '16', '', 'project_task_updated', 32, 102, 0, 0, 0, 0, 0, 0, 0, 523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(555, 8, '', '2018-03-22 15:44:18', '16', '', 'project_task_updated', 32, 106, 0, 0, 0, 0, 0, 0, 0, 524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(556, 8, '', '2018-03-22 15:44:21', '16', '', 'project_task_updated', 32, 132, 0, 0, 0, 0, 0, 0, 0, 525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(557, 8, '', '2018-03-22 15:44:22', '16', '', 'project_task_updated', 32, 103, 0, 0, 0, 0, 0, 0, 0, 526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(558, 8, '', '2018-03-22 15:44:25', '16', '', 'project_task_updated', 32, 107, 0, 0, 0, 0, 0, 0, 0, 527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(559, 8, '', '2018-03-22 15:44:26', '16', '', 'project_task_updated', 32, 108, 0, 0, 0, 0, 0, 0, 0, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(560, 8, '', '2018-03-22 15:44:28', '16', '', 'project_task_updated', 32, 105, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(561, 8, '', '2018-03-22 15:44:31', '16', '', 'project_task_updated', 32, 110, 0, 0, 0, 0, 0, 0, 0, 530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(562, 8, '', '2018-03-22 15:44:49', '16', '', 'project_task_updated', 32, 132, 0, 0, 0, 0, 0, 0, 0, 531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(563, 8, '', '2018-03-22 15:44:50', '16', '', 'project_task_updated', 32, 133, 0, 0, 0, 0, 0, 0, 0, 532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(564, 8, '', '2018-03-22 15:44:54', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(565, 8, '', '2018-03-22 15:44:55', '', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(566, 8, '', '2018-03-22 15:45:01', '', '', 'project_task_updated', 32, 130, 0, 0, 0, 0, 0, 0, 0, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(567, 8, '', '2018-03-22 15:45:02', '', '', 'project_task_updated', 32, 129, 0, 0, 0, 0, 0, 0, 0, 536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(568, 8, '', '2018-03-22 15:45:06', '', '', 'project_task_updated', 32, 128, 0, 0, 0, 0, 0, 0, 0, 537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(569, 8, '', '2018-03-22 15:45:08', '16', '', 'project_task_updated', 32, 131, 0, 0, 0, 0, 0, 0, 0, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(570, 8, '', '2018-03-22 15:45:19', '16', '', 'project_task_updated', 32, 125, 0, 0, 0, 0, 0, 0, 0, 539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(571, 8, '', '2018-03-22 15:45:44', '16', '', 'project_task_updated', 32, 124, 0, 0, 0, 0, 0, 0, 0, 540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(572, 8, '', '2018-03-22 15:46:00', '16', '', 'project_task_updated', 32, 104, 0, 0, 0, 0, 0, 0, 0, 541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(573, 8, '', '2018-03-22 15:46:11', '16', '', 'project_task_updated', 32, 114, 0, 0, 0, 0, 0, 0, 0, 542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(574, 8, '', '2018-03-22 15:46:13', '16', '', 'project_task_updated', 32, 114, 0, 0, 0, 0, 0, 0, 0, 543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(575, 40, '', '2018-03-25 17:53:14', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(576, 1, '', '2018-03-30 10:31:34', '8', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 26, 0, 0, 0),
(577, 1, '', '2018-03-30 10:31:45', '8', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 26, 0, 0, 0),
(578, 1, '', '2018-03-30 10:38:05', '16', '', 'project_task_updated', 32, 112, 0, 0, 0, 0, 0, 0, 0, 544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(579, 1, '', '2018-03-31 13:08:50', '23', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 28, 0, 0, 0),
(580, 1, '', '2018-03-31 13:24:23', '23', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 28, 0, 0, 0),
(581, 8, '', '2018-03-31 14:39:25', '2', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0),
(582, 16, '', '2018-03-31 14:40:10', '8', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0),
(583, 23, '', '2018-04-03 06:04:28', '', '', 'project_file_added', 33, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(584, 23, '', '2018-04-03 06:04:28', '', '', 'project_file_added', 33, 0, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(585, 23, '', '2018-04-07 14:29:26', '', '', 'project_file_added', 33, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(586, 41, '', '2018-04-11 02:42:15', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(587, 42, '', '2018-04-13 10:47:22', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(588, 43, '', '2018-04-14 05:40:27', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(589, 44, '', '2018-04-19 15:18:16', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(590, 1, '', '2018-04-21 04:21:26', '16', '', 'project_task_updated', 32, 125, 0, 0, 0, 0, 0, 0, 0, 548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(591, 1, '', '2018-04-21 04:21:28', '16', '', 'project_task_updated', 32, 125, 0, 0, 0, 0, 0, 0, 0, 549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(592, 45, '', '2018-04-21 08:32:57', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(593, 45, '', '2018-04-21 08:34:55', '', '', 'estimate_request_received', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0),
(594, 2, '', '2018-04-21 13:39:59', '1,3,8,14,16,23,38', '', 'project_file_added', 32, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(595, 1, '', '2018-04-23 09:01:11', '24', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0),
(596, 46, '', '2018-04-24 13:50:41', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(597, 1, '', '2018-04-28 14:42:56', '3,4,5,6,7,8,14', '', 'project_created', 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(598, 1, '', '2018-04-28 14:44:05', '3,4,5,6,7,8,14', '', 'project_created', 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(599, 1, '', '2018-04-28 14:47:57', '7', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(600, 1, '', '2018-04-28 14:48:14', '3,7', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(601, 1, '', '2018-04-28 14:48:21', '3,4,7', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(602, 1, '', '2018-04-28 14:48:32', '3,4,7,8', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(603, 1, '', '2018-04-28 14:48:40', '3,4,7,8,16', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(604, 1, '', '2018-04-28 14:48:47', '3,4,7,8,14,16', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(605, 1, '', '2018-04-28 14:48:56', '3,4,7,8,14,16,23', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(606, 1, '', '2018-04-28 14:49:06', '3,4,6,7,8,14,16,23', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(607, 1, '', '2018-04-28 14:49:15', '3,4,6,7,8,14,16,20,23', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(608, 1, '', '2018-04-28 14:49:24', '3,4,6,7,8,14,16,20,21,23', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(609, 1, '', '2018-04-28 14:49:31', '3,4,5,6,7,8,14,16,20,21,23', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(610, 1, '', '2018-04-28 14:49:38', '2,3,4,5,6,7,8,14,16,20,21,23', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(611, 1, '', '2018-04-28 14:50:38', '2,3,4,5,6,7,8,14,16,21,23', '', 'project_member_deleted', 35, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(612, 1, '', '2018-04-28 14:50:53', '2,3,4,5,6,7,8,14,16,20,21,23', '', 'project_member_added', 35, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(613, 1, '', '2018-04-28 14:56:44', '2,3,4,5,6,7,8,14,16,20,21,23', '', 'project_comment_added', 35, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(614, 1, '', '2018-04-28 15:03:12', '2,3,4,5,6,7,8,14,16,20,21,23', '', 'project_comment_replied', 35, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(615, 1, '', '2018-04-28 15:31:30', '7', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(616, 1, '', '2018-04-28 15:31:35', '3,7', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(617, 1, '', '2018-04-28 15:31:43', '3,4,7', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(618, 1, '', '2018-04-28 15:31:53', '3,4,7,8', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(619, 1, '', '2018-04-28 15:32:01', '3,4,7,8,16', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(620, 1, '', '2018-04-28 15:32:09', '3,4,7,8,14,16', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(621, 1, '', '2018-04-28 15:32:19', '3,4,7,8,14,16,23', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(622, 1, '', '2018-04-28 15:32:28', '3,4,7,8,14,16,20,23', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(623, 1, '', '2018-04-28 15:32:37', '3,4,6,7,8,14,16,20,23', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(624, 1, '', '2018-04-28 15:32:49', '2,3,4,6,7,8,14,16,20,23', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(625, 1, '', '2018-04-28 15:32:55', '2,3,4,5,6,7,8,14,16,20,23', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(626, 1, '', '2018-04-28 15:33:05', '2,3,4,5,6,7,8,14,16,20,21,23', '', 'project_member_added', 34, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(627, 1, '', '2018-04-28 15:42:14', '2,3,4,5,6,7,8,14,16,20,21,23', ',5,16,8', 'project_comment_added', 34, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(628, 1, '', '2018-05-02 13:41:24', '16', '', 'project_task_updated', 32, 124, 0, 0, 0, 0, 0, 0, 0, 554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(629, 1, '', '2018-05-02 13:41:26', '16', '', 'project_task_updated', 32, 109, 0, 0, 0, 0, 0, 0, 0, 555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(630, 1, '', '2018-05-02 13:41:27', '16', '', 'project_task_updated', 32, 111, 0, 0, 0, 0, 0, 0, 0, 556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(631, 1, '', '2018-05-05 14:35:08', '2,3,4,5,6,7,8,14,16,20,21,23', '', 'project_comment_added', 35, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(632, 0, '', '2018-05-05 15:49:22', '', '', 'invoice_payment_confirmation', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 0, 0, 0, 0, 0, 0, 0),
(633, 46, '', '2018-05-08 04:35:20', '1,3,8,14,16,23,38', ',1', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(634, 1, '', '2018-05-08 12:54:37', '3,8,14,16,23,38,46', '', 'project_customer_feedback_replied', 32, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(635, 23, '', '2018-05-08 14:19:53', '1,3,8,14,16,38', '', 'project_task_created', 32, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(636, 23, '', '2018-05-08 14:21:07', '1,3,8,14,16,38', '', 'project_task_created', 32, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(637, 23, '', '2018-05-08 14:21:49', '1,3,8,14,16,38', '', 'project_task_created', 32, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(638, 23, '', '2018-05-08 14:22:08', '16', '', 'project_task_updated', 32, 134, 0, 0, 0, 0, 0, 0, 0, 612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(639, 23, '', '2018-05-08 14:25:58', '1,3,8,14,16,38', '', 'project_task_created', 32, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(640, 23, '', '2018-05-08 14:28:12', '16', '', 'project_task_updated', 32, 137, 0, 0, 0, 0, 0, 0, 0, 614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(641, 23, '', '2018-05-08 14:28:15', '16', '', 'project_task_updated', 32, 136, 0, 0, 0, 0, 0, 0, 0, 615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(642, 23, '', '2018-05-08 14:28:17', '16', '', 'project_task_updated', 32, 134, 0, 0, 0, 0, 0, 0, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(643, 23, '', '2018-05-08 14:32:25', '16', '', 'project_task_updated', 32, 134, 0, 0, 0, 0, 0, 0, 0, 617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(644, 23, '', '2018-05-08 14:36:46', '1,3,8,14,16,38', '', 'project_task_created', 32, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(645, 23, '', '2018-05-08 14:37:12', '16', '', 'project_task_updated', 32, 138, 0, 0, 0, 0, 0, 0, 0, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(646, 23, '', '2018-05-08 14:38:13', '1,3,8,14,16,38', '', 'project_task_created', 32, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(647, 23, '', '2018-05-08 14:39:17', '1,3,8,14,16,38', '', 'project_task_created', 32, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(648, 23, '', '2018-05-08 14:39:36', '16', '', 'project_task_updated', 32, 139, 0, 0, 0, 0, 0, 0, 0, 626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(649, 23, '', '2018-05-08 14:40:24', '1,3,8,14,16,38', '', 'project_task_created', 32, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(650, 23, '', '2018-05-08 14:41:21', '8', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(651, 23, '', '2018-05-08 14:41:27', '8', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(652, 23, '', '2018-05-08 14:41:36', '16', '', 'project_task_updated', 32, 124, 0, 0, 0, 0, 0, 0, 0, 633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(653, 23, '', '2018-05-08 14:41:38', '16', '', 'project_task_updated', 32, 125, 0, 0, 0, 0, 0, 0, 0, 634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(654, 23, '', '2018-05-08 14:44:08', '1,3,8,14,16,38', '', 'project_task_created', 32, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(655, 23, '', '2018-05-08 14:45:34', '1,3,8,14,16,38', '', 'project_task_created', 32, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(656, 23, '', '2018-05-08 14:47:09', '1,3,8,14,16,38', '', 'project_task_created', 32, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(657, 23, '', '2018-05-08 14:48:57', '1,3,8,14,16,38', '', 'project_task_created', 32, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(658, 23, '', '2018-05-08 14:55:18', '1,3,8,14,16,38', '', 'project_task_created', 32, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(659, 23, '', '2018-05-08 14:57:01', '16', '', 'project_task_updated', 32, 113, 0, 0, 0, 0, 0, 0, 0, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(660, 23, '', '2018-05-08 14:57:04', '16', '', 'project_task_updated', 32, 114, 0, 0, 0, 0, 0, 0, 0, 647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(661, 23, '', '2018-05-08 14:57:19', '8', '', 'project_task_updated', 32, 115, 0, 0, 0, 0, 0, 0, 0, 648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(662, 23, '', '2018-05-08 15:00:36', '16', '', 'project_task_updated', 32, 146, 0, 0, 0, 0, 0, 0, 0, 649, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(663, 23, '', '2018-05-08 15:00:38', '16', '', 'project_task_updated', 32, 146, 0, 0, 0, 0, 0, 0, 0, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(664, 23, '', '2018-05-08 15:00:48', '16', '', 'project_task_updated', 32, 146, 0, 0, 0, 0, 0, 0, 0, 651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(665, 23, '', '2018-05-08 15:03:18', '16', '', 'project_task_updated', 32, 134, 0, 0, 0, 0, 0, 0, 0, 652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(666, 23, '', '2018-05-08 15:04:06', '16', '', 'project_task_updated', 32, 136, 0, 0, 0, 0, 0, 0, 0, 653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(667, 23, '', '2018-05-08 15:05:46', '16', '', 'project_task_updated', 32, 135, 0, 0, 0, 0, 0, 0, 0, 654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(668, 23, '', '2018-05-08 15:10:07', '8', '', 'project_task_updated', 32, 128, 0, 0, 0, 0, 0, 0, 0, 655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(669, 23, '', '2018-05-08 15:10:36', '8', '', 'project_task_updated', 32, 129, 0, 0, 0, 0, 0, 0, 0, 656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(670, 23, '', '2018-05-08 15:11:47', '8', '', 'project_task_updated', 32, 129, 0, 0, 0, 0, 0, 0, 0, 657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(671, 23, '', '2018-05-08 15:12:25', '8', '', 'project_task_updated', 32, 130, 0, 0, 0, 0, 0, 0, 0, 658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(672, 23, '', '2018-05-08 15:13:00', '16', '', 'project_task_updated', 32, 131, 0, 0, 0, 0, 0, 0, 0, 659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(673, 23, '', '2018-05-08 15:14:03', '16', '', 'project_task_updated', 32, 132, 0, 0, 0, 0, 0, 0, 0, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(674, 23, '', '2018-05-08 15:14:43', '16', '', 'project_task_updated', 32, 133, 0, 0, 0, 0, 0, 0, 0, 661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(675, 23, '', '2018-05-08 15:15:54', '8', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(676, 23, '', '2018-05-08 15:17:06', '8', '', 'project_task_updated', 32, 128, 0, 0, 0, 0, 0, 0, 0, 663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(677, 23, '', '2018-05-08 15:19:21', '8', '', 'project_task_deleted', 32, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(678, 23, '', '2018-05-08 15:19:34', '16', '', 'project_task_deleted', 32, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(679, 23, '', '2018-05-08 15:19:45', '16', '', 'project_task_deleted', 32, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(680, 23, '', '2018-05-08 15:19:59', '16', '', 'project_task_deleted', 32, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(681, 23, '', '2018-05-08 15:20:11', '16', '', 'project_task_deleted', 32, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(682, 23, '', '2018-05-08 15:20:11', '16', '', 'project_task_deleted', 32, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(683, 23, '', '2018-05-08 15:20:37', '16', '', 'project_task_deleted', 32, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(684, 23, '', '2018-05-08 15:27:45', '16', '', 'project_task_deleted', 32, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(685, 23, '', '2018-05-08 15:28:54', '16', '', 'project_task_deleted', 32, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(686, 23, '', '2018-05-08 15:29:38', '1,3,8,14,16,38', '', 'project_task_created', 32, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(687, 23, '', '2018-05-08 15:31:35', '16', '', 'project_task_deleted', 32, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(688, 23, '', '2018-05-08 15:31:36', '16', '', 'project_task_deleted', 32, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(689, 23, '', '2018-05-08 15:31:42', '16', '', 'project_task_deleted', 32, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(690, 23, '', '2018-05-08 15:31:44', '16', '', 'project_task_deleted', 32, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(691, 23, '', '2018-05-08 15:31:59', '16', '', 'project_task_deleted', 32, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(692, 23, '', '2018-05-08 15:32:52', '8', '', 'project_task_deleted', 32, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(693, 23, '', '2018-05-08 15:33:34', '16', '', 'project_task_deleted', 32, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(694, 23, '', '2018-05-08 15:35:08', '16', '', 'project_task_assigned', 32, 147, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(695, 46, '', '2018-05-09 14:55:56', '1,3,8,14,16,23,38', '', 'project_customer_feedback_replied', 32, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(696, 46, '', '2018-05-09 15:32:34', '1,3,8,14,16,23,38', '', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(697, 46, '', '2018-05-09 15:35:00', '1,3,8,14,16,23,38', '', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(698, 46, '', '2018-05-09 15:36:34', '1,3,8,14,16,23,38', ',8,16', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(699, 23, '', '2018-05-14 13:24:14', '16', '', 'project_task_updated', 32, 147, 0, 0, 0, 0, 0, 0, 0, 686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(700, 23, '', '2018-05-14 13:24:40', '16', '', 'project_task_updated', 32, 142, 0, 0, 0, 0, 0, 0, 0, 687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(701, 23, '', '2018-05-14 13:37:15', '16', '', 'project_task_updated', 32, 142, 0, 0, 0, 0, 0, 0, 0, 693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(702, 23, '', '2018-05-14 13:37:49', '16', '', 'project_task_updated', 32, 147, 0, 0, 0, 0, 0, 0, 0, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(703, 23, '', '2018-05-14 13:38:19', '16', '', 'project_task_updated', 32, 138, 0, 0, 0, 0, 0, 0, 0, 695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(704, 23, '', '2018-05-14 13:38:43', '16', '', 'project_task_updated', 32, 139, 0, 0, 0, 0, 0, 0, 0, 696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(705, 23, '', '2018-05-14 13:39:04', '16', '', 'project_task_updated', 32, 140, 0, 0, 0, 0, 0, 0, 0, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(706, 23, '', '2018-05-14 13:39:22', '16', '', 'project_task_updated', 32, 141, 0, 0, 0, 0, 0, 0, 0, 698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(707, 23, '', '2018-05-14 13:41:43', '16', '', 'project_task_updated', 32, 142, 0, 0, 0, 0, 0, 0, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(708, 23, '', '2018-05-14 13:42:03', '16', '', 'project_task_updated', 32, 143, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(709, 23, '', '2018-05-14 13:42:34', '16', '', 'project_task_updated', 32, 144, 0, 0, 0, 0, 0, 0, 0, 701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(710, 23, '', '2018-05-14 13:43:05', '16', '', 'project_task_updated', 32, 145, 0, 0, 0, 0, 0, 0, 0, 702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(711, 23, '', '2018-05-14 13:43:43', '16', '', 'project_task_updated', 32, 145, 0, 0, 0, 0, 0, 0, 0, 703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(712, 23, '', '2018-05-14 13:44:51', '16', '', 'project_task_updated', 32, 147, 0, 0, 0, 0, 0, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(713, 56, '', '2018-05-14 16:42:46', '48', ',48', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0),
(714, 8, '', '2018-05-15 05:49:34', '3,4,5,6,7,14', ',7', 'project_created', 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(715, 8, '', '2018-05-15 05:51:55', '', '', 'project_task_created', 36, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(716, 8, '', '2018-05-15 05:52:12', '54', '', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(717, 8, '', '2018-05-15 05:52:22', '3,54', '', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(718, 8, '', '2018-05-15 05:52:46', '3,54,55', '', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(719, 8, '', '2018-05-15 05:52:54', '3,54,55,56', '', 'project_member_added', 36, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(720, 8, '', '2018-05-15 05:55:58', '3,54,55,56', '', 'project_comment_added', 36, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(721, 54, '', '2018-05-15 06:10:42', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(722, 54, '', '2018-05-15 06:10:43', '3,8,55,56', ',56', 'project_file_added', 36, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(723, 54, '', '2018-05-15 06:10:44', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(724, 54, '', '2018-05-15 06:12:20', '3,8,55,56', ',8,56', 'project_comment_added', 36, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(725, 48, '', '2018-05-15 07:27:26', '56', ',56', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 38, 0, 0, 0),
(726, 48, '', '2018-05-15 07:48:13', '56', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 38, 0, 0, 0),
(727, 48, '', '2018-05-15 07:48:14', '56', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 38, 0, 0, 0),
(728, 48, '', '2018-05-15 07:48:30', '56', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 38, 0, 0, 0),
(729, 55, '', '2018-05-15 07:53:32', '3,8,54,56', ',8', 'project_comment_added', 36, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(730, 48, '', '2018-05-15 07:56:23', '56', ',56', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 38, 0, 0, 0),
(731, 55, '', '2018-05-15 08:01:18', '3,8,54,56', '', 'project_comment_added', 36, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(732, 55, '', '2018-05-15 09:09:28', '3,8,54,56', '', 'project_comment_added', 36, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(733, 1, '', '2018-05-15 10:00:14', '21', '', 'ticket_closed', 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(734, 1, '', '2018-05-15 10:00:28', '', '', 'ticket_closed', 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(735, 1, '', '2018-05-15 10:00:40', '23', '', 'ticket_closed', 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(736, 1, '', '2018-05-15 10:00:50', '21', '', 'ticket_closed', 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(737, 1, '', '2018-05-15 10:00:59', '16', '', 'ticket_closed', 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(738, 1, '', '2018-05-15 10:01:11', '8', ',8', 'ticket_closed', 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(739, 1, '', '2018-05-15 10:01:20', '2', '', 'ticket_closed', 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(740, 1, '', '2018-05-15 10:01:32', '3', ',3', 'ticket_closed', 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(741, 14, '', '2018-05-15 15:47:45', '3,4,5,6,7,8', '', 'project_created', 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(742, 14, '', '2018-05-15 15:51:33', '', '', 'project_task_created', 37, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(743, 14, '', '2018-05-15 15:53:23', '', '', 'project_task_created', 37, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(744, 14, '', '2018-05-15 15:53:56', '', '', 'project_task_created', 37, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(745, 8, '', '2018-05-16 03:59:04', '3,54,55,56', ',54', 'project_comment_added', 36, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(746, 8, '', '2018-05-16 04:26:50', '3,54,55,56', ',56', 'project_comment_added', 36, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(747, 8, '', '2018-05-16 04:29:05', '3,54,55,56', ',54', 'project_task_created', 36, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(748, 8, '', '2018-05-16 06:25:50', '', '', 'project_task_updated', 36, 152, 0, 0, 0, 0, 0, 0, 0, 764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(749, 54, '', '2018-05-16 06:35:22', '3,8,55,56', ',56,8', 'project_comment_added', 36, 0, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(750, 8, '', '2018-05-16 06:38:04', '3,54,55,56', ',54', 'project_task_created', 36, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(751, 8, '', '2018-05-16 06:38:28', '', '', 'project_task_updated', 36, 148, 0, 0, 0, 0, 0, 0, 0, 767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(752, 8, '', '2018-05-16 06:38:30', '', '', 'project_task_updated', 36, 148, 0, 0, 0, 0, 0, 0, 0, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(753, 8, '', '2018-05-16 06:38:32', '3', '', 'project_task_updated', 36, 153, 0, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(754, 8, '', '2018-05-16 06:38:36', '', '', 'project_task_updated', 36, 148, 0, 0, 0, 0, 0, 0, 0, 770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(755, 3, '', '2018-05-16 06:39:18', '', '', 'project_task_updated', 36, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(756, 8, '', '2018-05-16 06:50:39', '3,54,55,56', '', 'project_task_created', 36, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(757, 55, '', '2018-05-16 06:52:56', '3,8,54,56', ',8', 'project_comment_added', 36, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(758, 8, '', '2018-05-16 06:57:24', '3,54,55,56', ',54', 'project_comment_replied', 36, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(759, 8, '', '2018-05-16 06:57:35', '3,54,55,56', '', 'project_comment_replied', 36, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(760, 3, '', '2018-05-16 06:58:57', '8,54,55,56', '', 'project_comment_replied', 36, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(761, 3, '', '2018-05-16 06:58:58', '8,54,55,56', ',56', 'project_comment_replied', 36, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(762, 3, '', '2018-05-16 06:59:10', '8,54,55,56', '', 'project_comment_replied', 36, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(763, 3, '', '2018-05-16 06:59:15', '8,54,55,56', ',56', 'project_comment_replied', 36, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(764, 56, '', '2018-05-16 17:31:34', '3,8,54,55', '', 'project_comment_added', 36, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(765, 56, '', '2018-05-16 17:40:53', '3,8,54,55', ',54,55', 'project_comment_added', 36, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(766, 54, '', '2018-05-17 15:07:50', '3,8,55,56', ',56', 'project_comment_added', 36, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(767, 54, '', '2018-05-17 15:11:02', '3,8,55,56', '', 'project_comment_added', 36, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(768, 54, '', '2018-05-17 15:12:31', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(769, 54, '', '2018-05-17 15:12:31', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(770, 54, '', '2018-05-17 15:13:29', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(771, 54, '', '2018-05-17 15:13:30', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(772, 54, '', '2018-05-17 15:13:31', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(773, 54, '', '2018-05-17 15:13:31', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(774, 54, '', '2018-05-17 15:13:32', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(775, 54, '', '2018-05-17 15:13:33', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(776, 54, '', '2018-05-17 15:13:33', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(777, 54, '', '2018-05-17 15:13:34', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(778, 54, '', '2018-05-17 15:13:35', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(779, 54, '', '2018-05-17 15:13:35', '3,8,55,56', '', 'project_file_added', 36, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(780, 54, '', '2018-05-17 15:13:48', '3,8,55,56', ',55,56', 'project_file_added', 36, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(781, 1, '', '2018-05-17 21:01:28', '', '', 'new_event_added_in_calendar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0),
(782, 1, '', '2018-05-17 21:05:22', '52', '', 'leave_approved', 0, 0, 0, 0, 0, 0, 14, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(783, 1, '', '2018-05-17 21:10:04', '14', '', 'ticket_closed', 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(784, 1, '', '2018-05-17 21:11:29', '3,4,5,6,7,8,14', '', 'project_created', 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(785, 1, '', '2018-05-17 21:12:11', '2', '', 'project_member_added', 38, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(786, 1, '', '2018-05-17 21:13:17', '2', '', 'project_task_created', 38, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(787, 1, '', '2018-05-17 21:14:14', '2', '', 'project_task_created', 38, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(788, 1, '', '2018-05-17 21:15:49', '2', '', 'project_task_created', 38, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(789, 1, '', '2018-05-17 21:16:34', '2', '', 'project_task_created', 38, 158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(790, 1, '', '2018-05-17 21:18:27', '2', '', 'project_task_created', 38, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(791, 1, '', '2018-05-17 21:19:27', '2', '', 'project_task_created', 38, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(792, 1, '', '2018-05-17 21:20:41', '', '', 'project_task_updated', 23, 83, 0, 0, 0, 0, 0, 0, 0, 806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(793, 1, '', '2018-05-17 21:20:52', '', '', 'project_task_updated', 20, 82, 0, 0, 0, 0, 0, 0, 0, 807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(794, 1, '', '2018-05-17 21:20:55', '', '', 'project_task_updated', 23, 97, 0, 0, 0, 0, 0, 0, 0, 808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(795, 1, '', '2018-05-17 21:20:56', '', '', 'project_task_updated', 23, 98, 0, 0, 0, 0, 0, 0, 0, 809, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(796, 8, '', '2018-05-18 03:32:53', '', '', 'project_task_updated', 36, 154, 0, 0, 0, 0, 0, 0, 0, 810, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(797, 8, '', '2018-05-18 03:32:56', '', '', 'project_task_updated', 36, 152, 0, 0, 0, 0, 0, 0, 0, 811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(798, 8, '', '2018-05-18 03:33:38', '', '', 'project_task_updated', 36, 154, 0, 0, 0, 0, 0, 0, 0, 812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(799, 3, '', '2018-05-18 03:52:41', '', '', 'project_task_updated', 36, 153, 0, 0, 0, 0, 0, 0, 0, 813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(800, 55, '', '2018-05-18 04:06:34', '3,8,54,56', ',8,54,3', 'project_comment_added', 36, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(801, 1, '', '2018-05-18 12:58:24', '53', ',53', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0),
(802, 1, '', '2018-05-18 13:00:17', '50', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0),
(803, 1, '', '2018-05-18 13:02:27', '51', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0),
(804, 1, '', '2018-05-18 13:02:59', '49', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0),
(805, 1, '', '2018-05-18 13:03:26', '52', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0),
(806, 53, '', '2018-05-19 07:35:38', '1', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 0, 0, 0),
(807, 53, '', '2018-05-20 14:14:49', '48', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0),
(808, 1, '', '2018-05-20 18:17:12', '53', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 47, 0, 0, 0),
(809, 1, '', '2018-05-20 18:17:18', '53', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 47, 0, 0, 0),
(810, 1, '', '2018-05-20 18:17:19', '53', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 0, 0, 0),
(811, 46, '', '2018-05-21 04:45:31', '1,3,8,14,16,23,38', '', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(812, 46, '', '2018-05-21 04:45:32', '1,3,8,14,16,23,38', ',16', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(813, 46, '', '2018-05-21 04:50:57', '1,3,8,14,16,23,38', ',1', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(814, 1, '', '2018-05-21 14:11:42', '3,4,5,6,7,8,14', ',7', 'project_created', 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(815, 1, '', '2018-05-21 14:12:23', '2', '', 'project_member_added', 39, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(816, 1, '', '2018-05-21 14:12:56', '2,5', '', 'project_member_added', 39, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(817, 1, '', '2018-05-21 14:14:42', '2,5', '', 'project_task_created', 39, 161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(818, 1, '', '2018-05-21 14:15:29', '2,5', '', 'project_task_created', 39, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(819, 1, '', '2018-05-21 14:16:21', '2,5', '', 'project_task_created', 39, 163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(820, 1, '', '2018-05-21 14:17:08', '2,5', '', 'project_task_created', 39, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(821, 1, '', '2018-05-21 14:17:47', '2,5', '', 'project_task_created', 39, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(822, 1, '', '2018-05-21 14:21:00', '2,5', '', 'project_comment_added', 39, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(823, 1, '', '2018-05-21 14:41:32', '', '', 'project_task_updated', 39, 165, 0, 0, 0, 0, 0, 0, 0, 824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(824, 1, '', '2018-05-21 15:21:01', '2,5', '', 'project_task_created', 39, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(825, 1, '', '2018-05-21 15:21:11', '', '', 'project_task_updated', 39, 165, 0, 0, 0, 0, 0, 0, 0, 826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(826, 1, '', '2018-05-21 15:24:52', '2', '', 'project_task_updated', 39, 163, 0, 0, 0, 0, 0, 0, 0, 827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(827, 1, '', '2018-05-21 15:40:46', '2', '', 'project_task_updated', 39, 161, 0, 0, 0, 0, 0, 0, 0, 828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(828, 1, '', '2018-05-21 15:40:53', '2', '', 'project_task_updated', 39, 162, 0, 0, 0, 0, 0, 0, 0, 829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(829, 1, '', '2018-05-21 15:40:55', '2', '', 'project_member_deleted', 39, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(830, 1, '', '2018-05-21 15:46:09', '2', '', 'project_task_updated', 39, 163, 0, 0, 0, 0, 0, 0, 0, 830, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(831, 1, '', '2018-05-21 15:46:11', '2', '', 'project_task_updated', 39, 161, 0, 0, 0, 0, 0, 0, 0, 831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(832, 1, '', '2018-05-21 15:46:29', '2', '', 'project_task_updated', 39, 164, 0, 0, 0, 0, 0, 0, 0, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(833, 1, '', '2018-05-21 15:46:51', '2', '', 'project_customer_feedback_added', 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(834, 1, '', '2018-05-21 15:47:53', '2', '', 'project_task_updated', 39, 161, 0, 0, 0, 0, 0, 0, 0, 834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(835, 1, '', '2018-05-21 16:17:19', '2', '', 'project_task_created', 39, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(836, 1, '', '2018-05-21 16:26:47', '2', '', 'project_task_created', 39, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(837, 23, '', '2018-05-26 17:21:54', '3,4,5,6,7,8,14', ',8', 'project_created', 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(838, 23, '', '2018-05-26 17:23:25', '59', '', 'project_member_added', 40, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(839, 23, '', '2018-05-26 17:23:38', '53,59', ',59,53', 'project_member_added', 40, 0, 0, 0, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(840, 23, '', '2018-05-26 17:23:54', '53,54,59', ',54,59', 'project_member_added', 40, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(841, 23, '', '2018-05-26 17:25:55', '16,53,54,59', ',59,53', 'project_member_added', 40, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(842, 23, '', '2018-05-26 17:26:01', '16,21,53,54,59', ',54,59,53', 'project_member_added', 40, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(843, 23, '', '2018-05-26 17:29:22', '3,4,5,6,7,8,14', '', 'project_created', 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(844, 23, '', '2018-05-26 17:31:37', '60', ',60', 'project_member_added', 41, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(845, 23, '', '2018-05-26 17:31:46', '57,60', ',60', 'project_member_added', 41, 0, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(846, 23, '', '2018-05-26 17:31:56', '57,58,60', ',60,58', 'project_member_added', 41, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(847, 23, '', '2018-05-26 17:32:07', '8,57,58,60', ',60,58', 'project_member_added', 41, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(848, 23, '', '2018-05-26 17:34:59', '3,4,5,6,7,8,14', ',7', 'project_created', 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(849, 23, '', '2018-05-26 17:35:57', '52', '', 'project_member_added', 42, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(850, 23, '', '2018-05-26 17:36:28', '49,52', ',49', 'project_member_added', 42, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(851, 23, '', '2018-05-26 17:36:37', '49,50,52', '', 'project_member_added', 42, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(852, 23, '', '2018-05-26 17:37:13', '49,50,51,52', '', 'project_member_added', 42, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(853, 23, '', '2018-05-26 17:37:20', '1,49,50,51,52', '', 'project_member_added', 42, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(854, 23, '', '2018-05-26 17:37:28', '1,14,49,50,51,52', ',50,51', 'project_member_added', 42, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(855, 23, '', '2018-05-26 17:38:24', '8,48,57,58,60', ',60', 'project_member_added', 41, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(856, 23, '', '2018-05-26 17:39:25', '8,48,56,57,58,60', ',60', 'project_member_added', 41, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(857, 23, '', '2018-05-26 17:39:32', '8,48,55,56,57,58,60', ',60,57,55,58,56', 'project_member_added', 41, 0, 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(858, 23, '', '2018-05-26 17:46:40', '', '', 'new_event_added_in_calendar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0),
(859, 50, '', '2018-05-27 01:29:56', '1', ',1', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 48, 0, 0, 0),
(860, 49, '', '2018-05-27 03:01:40', '1', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 50, 0, 0, 0),
(861, 48, '', '2018-05-27 04:57:03', '53', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 53, 0, 0, 0),
(862, 51, '', '2018-05-27 06:51:55', '1', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 49, 0, 0, 0),
(863, 8, '', '2018-05-28 00:25:41', '23,48,55,56,57,58,60', '', 'project_comment_added', 41, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(864, 8, '', '2018-05-28 00:31:32', '23,48,55,56,57,58,60', ',60,55,56', 'project_comment_added', 41, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(865, 59, '', '2018-05-29 09:33:01', '16,21,23,53,54', ',53', 'project_task_created', 40, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(866, 59, '', '2018-05-29 09:33:17', '', '', 'project_task_updated', 40, 169, 0, 0, 0, 0, 0, 0, 0, 840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(867, 59, '', '2018-05-29 09:33:31', '', '', 'project_task_updated', 40, 169, 0, 0, 0, 0, 0, 0, 0, 841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(868, 59, '', '2018-05-29 09:33:39', '', '', 'project_task_updated', 40, 169, 0, 0, 0, 0, 0, 0, 0, 842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(869, 59, '', '2018-05-29 09:34:04', '', '', 'project_task_updated', 40, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(870, 59, '', '2018-05-29 09:34:19', '', '', 'project_task_updated', 40, 169, 0, 0, 0, 0, 0, 0, 0, 843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(871, 59, '', '2018-05-29 09:34:25', '', '', 'project_task_deleted', 40, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(872, 59, '', '2018-05-29 09:34:52', '', '', 'project_task_updated', 40, 169, 0, 0, 0, 0, 0, 0, 0, 845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(873, 1, '', '2018-06-02 19:13:05', '2', '', 'project_task_created', 39, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(874, 1, '', '2018-06-02 19:14:11', '', '', 'project_task_updated', 39, 170, 0, 0, 0, 0, 0, 0, 0, 847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(875, 1, '', '2018-06-02 19:22:03', '2', '', 'project_task_updated', 39, 168, 0, 0, 0, 0, 0, 0, 0, 848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(876, 1, '', '2018-06-02 19:22:06', '', '', 'project_task_updated', 39, 167, 0, 0, 0, 0, 0, 0, 0, 849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(877, 1, '', '2018-06-02 19:28:56', '2', '', 'project_task_updated', 39, 162, 0, 0, 0, 0, 0, 0, 0, 850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(878, 1, '', '2018-06-02 19:31:53', '2', '', 'project_task_updated', 39, 161, 0, 0, 0, 0, 0, 0, 0, 851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(879, 1, '', '2018-06-02 19:32:03', '', '', 'project_task_updated', 39, 170, 0, 0, 0, 0, 0, 0, 0, 852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(880, 1, '', '2018-06-02 19:45:29', '2', '', 'project_task_updated', 39, 168, 0, 0, 0, 0, 0, 0, 0, 853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(881, 1, '', '2018-06-02 19:45:39', '2', '', 'project_task_updated', 39, 168, 0, 0, 0, 0, 0, 0, 0, 854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(882, 1, '', '2018-06-02 19:58:01', '2', '', 'project_task_updated', 39, 168, 0, 0, 0, 0, 0, 0, 0, 855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(883, 1, '', '2018-06-04 21:18:03', '8', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 26, 0, 0, 0),
(884, 1, '', '2018-06-04 21:19:33', '16', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 27, 0, 0, 0),
(885, 46, '', '2018-06-04 21:29:47', '1,3,8,14,16,23,38', ',8', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(886, 53, '', '2018-06-05 08:09:05', '16,21,23,54,59', '', 'project_comment_added', 40, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(887, 53, '', '2018-06-05 08:13:02', '16,21,23,54,59', '', 'project_comment_replied', 40, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(888, 53, '', '2018-06-05 08:56:54', '55', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0),
(889, 53, '', '2018-06-05 08:57:27', '58', '', 'new_message_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0),
(890, 3, '', '2018-06-05 17:04:58', '', '', 'project_task_updated', 29, 93, 0, 0, 0, 0, 0, 0, 0, 860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(891, 3, '', '2018-06-05 17:05:11', '', '', 'project_task_updated', 29, 93, 0, 0, 0, 0, 0, 0, 0, 861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(892, 3, '', '2018-06-05 17:05:26', '', '', 'project_task_updated', 29, 89, 0, 0, 0, 0, 0, 0, 0, 862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(893, 16, '', '2018-06-06 01:48:39', '1', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 27, 0, 0, 0),
(894, 8, '', '2018-06-06 08:21:37', '1', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 26, 0, 0, 0),
(895, 8, '', '2018-06-06 08:27:04', '1', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 26, 0, 0, 0),
(896, 55, '', '2018-06-08 02:45:54', '53', '', 'message_reply_sent', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 63, 0, 0, 0),
(897, 1, '', '2018-06-10 09:07:28', '3,8,14,16,23,38,46', ',16', 'project_customer_feedback_replied', 32, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(898, 1, '', '2018-06-10 09:24:57', '3,4,5,6,7,8,14', ',6,5', 'project_created', 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(899, 1, '', '2018-06-10 13:53:08', '2', '', 'project_task_updated', 39, 164, 0, 0, 0, 0, 0, 0, 0, 864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(900, 46, '', '2018-06-13 05:27:08', '1,2', ',1', 'project_customer_feedback_added', 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(901, 0, '', '2018-06-13 13:36:49', '', '', 'invoice_payment_confirmation', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 0, 0, 0, 0, 0, 0, 0),
(902, 1, '', '2018-06-13 13:37:03', '2,46', '', 'project_customer_feedback_replied', 39, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(903, 1, '', '2018-06-13 18:18:05', '2', '', 'project_customer_feedback_added', 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(904, 1, '', '2018-06-13 18:22:03', '2,46', '', 'project_customer_feedback_replied', 39, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(905, 1, '', '2018-06-22 09:14:39', '3,8,14,16,23,38', '', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(906, 1, '', '2018-06-22 09:14:39', '3,8,14,16,23,38', '', 'project_customer_feedback_added', 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(907, 54, '', '2018-06-26 03:33:58', '16,21,23,53,59', '', 'project_comment_added', 40, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(908, 1, '', '2018-06-27 06:28:37', '8', '', 'project_member_added', 44, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(909, 1, '', '2018-06-27 06:29:10', '8', '', 'project_task_created', 44, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(910, 1, '', '2018-06-27 06:31:01', '8', '', 'project_task_created', 44, 172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(911, 1, '', '2018-06-27 06:31:56', '8', '', 'project_task_created', 44, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(912, 1, '', '2018-06-27 06:32:35', '8', '', 'project_task_created', 44, 174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(913, 1, '', '2018-07-04 13:28:49', '3,4,5,6,7,8,14', ',6,5', 'project_created', 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(914, 1, '', '2018-07-04 13:29:01', '7', '', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(915, 1, '', '2018-07-04 13:29:10', '3,7', '', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(916, 1, '', '2018-07-04 13:29:19', '3,4,7', '', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(917, 1, '', '2018-07-04 13:29:28', '3,4,7,8', '', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(918, 1, '', '2018-07-04 13:29:40', '3,4,7,8,16', ',16', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(919, 1, '', '2018-07-04 13:29:56', '3,4,7,8,14,16', '', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(920, 1, '', '2018-07-04 13:30:23', '3,4,7,8,14,16,23', ',23', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(921, 1, '', '2018-07-04 13:30:36', '3,4,7,8,14,16,20,23', '', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(922, 1, '', '2018-07-04 13:35:38', '3,4,7,8,14,16,20,21,23', '', 'project_member_added', 45, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(923, 23, '', '2018-07-04 13:35:49', '1,3,4,7,8,14,16,20,21', ',21', 'project_task_created', 45, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(924, 23, '', '2018-07-04 13:39:12', '1,3,4,7,8,14,16,20,21', ',16', 'project_task_created', 45, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(925, 23, '', '2018-07-04 13:39:26', '8', '', 'project_task_updated', 45, 175, 0, 0, 0, 0, 0, 0, 0, 881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(926, 23, '', '2018-07-04 13:39:43', '', '', 'project_task_updated', 45, 176, 0, 0, 0, 0, 0, 0, 0, 882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(927, 23, '', '2018-07-04 13:39:52', '8', '', 'project_task_updated', 45, 175, 0, 0, 0, 0, 0, 0, 0, 883, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(928, 23, '', '2018-07-04 13:40:19', '8', '', 'project_task_updated', 45, 175, 0, 0, 0, 0, 0, 0, 0, 884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(929, 23, '', '2018-07-04 13:43:27', '', '', 'project_task_updated', 45, 176, 0, 0, 0, 0, 0, 0, 0, 885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(930, 23, '', '2018-07-04 13:44:24', '8', '', 'project_task_updated', 45, 175, 0, 0, 0, 0, 0, 0, 0, 886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(931, 23, '', '2018-07-04 14:14:23', '1,3,4,7,8,14,16,20,21', ',21', 'project_task_created', 45, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(932, 23, '', '2018-07-04 14:29:54', '8', '', 'project_task_updated', 45, 175, 0, 0, 0, 0, 0, 0, 0, 888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(933, 23, '', '2018-07-04 15:04:11', '8', '', 'project_task_updated', 45, 175, 0, 0, 0, 0, 0, 0, 0, 889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(934, 23, '', '2018-07-04 15:52:48', '1,3,4,7,8,14,16,20,21', ',21', 'project_file_added', 45, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(935, 1, '', '2018-07-04 16:13:16', '8', '', 'project_task_commented', 45, 175, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(936, 1, '', '2018-07-04 16:28:34', '8', '', 'project_task_updated', 45, 175, 0, 0, 0, 0, 0, 0, 0, 892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(937, 1, '', '2018-07-04 16:31:11', '3,4,7,8,14,16,20,21,23', '', 'project_file_added', 45, 0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(938, 1, '', '2018-07-04 16:55:29', '8', '', 'project_task_commented', 45, 175, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(939, 1, '', '2018-07-04 16:56:45', '8', '', 'project_task_commented', 45, 175, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(940, 1, '', '2018-07-04 16:57:42', '8', '', 'project_task_commented', 45, 175, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(941, 1, '', '2018-07-04 16:58:02', '8', '', 'project_task_commented', 45, 175, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(942, 1, '', '2018-07-04 16:58:25', '8', '', 'project_task_commented', 45, 175, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(943, 1, '', '2018-07-04 16:58:46', '8', '', 'project_task_commented', 45, 175, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(944, 1, '', '2018-07-07 14:05:43', '', '', 'new_event_added_in_calendar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0),
(945, 1, '', '2018-07-07 14:19:27', '3,4,7,8,14,16,20,21,23', '', 'project_comment_added', 45, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(946, 54, '', '2018-07-08 15:18:25', '16,21,23,53,59', '', 'project_comment_added', 40, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(947, 48, '', '2018-07-08 16:03:36', '8,23,55,56,57,58,60', '', 'project_comment_added', 41, 0, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(948, 48, '', '2018-07-08 16:04:09', '8,23,55,56,57,58,60', '', 'project_comment_added', 41, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(949, 48, '', '2018-07-08 16:04:09', '8,23,55,56,57,58,60', '', 'project_comment_added', 41, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(950, 48, '', '2018-07-08 16:04:55', '8,23,55,56,57,58,60', '', 'project_comment_added', 41, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(951, 54, '', '2018-07-09 07:41:56', '16,21,23,53,59', '', 'project_comment_added', 40, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(952, 54, '', '2018-07-09 07:46:56', '16,21,23,53,59', '', 'project_task_created', 40, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(953, 54, '', '2018-07-09 07:48:29', '', '', 'project_task_commented', 40, 178, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(954, 54, '', '2018-07-09 07:48:42', '', '', 'project_task_updated', 40, 178, 0, 0, 0, 0, 0, 0, 0, 911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(955, 54, '', '2018-07-09 07:49:17', '', '', 'project_task_updated', 40, 178, 0, 0, 0, 0, 0, 0, 0, 912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(956, 54, '', '2018-07-09 07:50:58', '16,21,23,53,59', '', 'project_task_created', 40, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(957, 54, '', '2018-07-09 07:51:51', '', '', 'project_task_commented', 40, 179, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(958, 54, '', '2018-07-09 07:52:27', '', '', 'project_task_commented', 40, 179, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(959, 54, '', '2018-07-09 07:52:38', '', '', 'project_task_updated', 40, 179, 0, 0, 0, 0, 0, 0, 0, 916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(960, 54, '', '2018-07-09 07:52:45', '', '', 'project_task_updated', 40, 179, 0, 0, 0, 0, 0, 0, 0, 917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(961, 1, '', '2018-07-09 13:54:34', '3,4,5,6,7,8,14', '', 'project_created', 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(962, 1, '', '2018-07-09 13:54:55', '14', '', 'project_member_added', 46, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(963, 1, '', '2018-07-09 13:55:08', '3,14', '', 'project_member_added', 46, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(964, 1, '', '2018-07-09 13:55:19', '3,5,14', ',5', 'project_member_added', 46, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(965, 1, '', '2018-07-09 13:55:28', '3,5,14,23', ',5', 'project_member_added', 46, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(966, 1, '', '2018-07-13 12:09:28', '3,4,5,6,7,8,14', '', 'project_created', 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(967, 1, '', '2018-07-13 12:14:44', '25', ',25', 'project_member_added', 47, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(968, 1, '', '2018-07-13 12:20:34', '25', '', 'project_file_added', 47, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(969, 1, '', '2018-07-13 12:23:05', '8,25', ',25', 'project_member_added', 47, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(970, 14, '', '2018-07-17 17:52:44', '1,3,4,7,8,16,20,21,23', ',1', 'project_task_created', 45, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(971, 14, '', '2018-07-17 17:52:59', '', '', 'project_task_assigned', 45, 180, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(972, 14, '', '2018-07-17 17:54:07', '', '', 'project_task_updated', 45, 180, 0, 0, 0, 0, 0, 0, 0, 921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(973, 1, '', '2018-07-20 07:53:30', '14', '', 'project_task_commented', 45, 180, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(974, 61, '', '2018-07-20 08:10:52', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(975, 1, '', '2018-07-20 08:15:45', '8', '', 'project_member_added', 43, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(976, 1, '', '2018-07-20 08:15:46', '8,16', '', 'project_member_added', 43, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(977, 1, '', '2018-07-20 08:15:47', '8,16,23', '', 'project_member_added', 43, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(978, 1, '', '2018-07-20 08:15:47', '8,14,16,23', '', 'project_member_added', 43, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(979, 1, '', '2018-07-20 08:34:14', '8,14,16,23', '', 'project_task_created', 43, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(980, 1, '', '2018-07-20 08:34:51', '8,14,16,23', '', 'project_task_created', 43, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(981, 1, '', '2018-07-20 08:35:24', '8,14,16,23', '', 'project_task_created', 43, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(982, 1, '', '2018-07-20 08:35:49', '8,14,16,23', '', 'project_task_created', 43, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(983, 1, '', '2018-07-20 08:36:03', '8,14,16,23', '', 'project_task_created', 43, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(984, 1, '', '2018-07-20 08:36:20', '8,14,16,23', '', 'project_task_created', 43, 186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(985, 1, '', '2018-07-20 08:36:38', '8,14,16,23', '', 'project_task_created', 43, 187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(986, 1, '', '2018-07-20 08:37:13', '8,14,16,23', ',23', 'project_task_created', 43, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(987, 1, '', '2018-07-20 08:37:47', '8,14,16,23', '', 'project_task_created', 43, 189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(988, 62, '', '2018-07-23 15:52:25', '', '', 'client_signup', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(989, 23, '', '2018-08-22 15:47:07', '3,4,5,6,7,8,14', '', 'project_created', 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(990, 23, '', '2018-08-22 16:12:13', '1,8,14,16', '', 'project_task_created', 43, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(991, 23, '', '2018-08-22 16:13:17', '1,8,14,16', '', 'project_task_created', 43, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(992, 23, '', '2018-08-22 16:13:29', '1', '', 'project_task_updated', 43, 191, 0, 0, 0, 0, 0, 0, 0, 956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(993, 23, '', '2018-08-22 16:13:37', '1', '', 'project_task_updated', 43, 190, 0, 0, 0, 0, 0, 0, 0, 957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(994, 23, '', '2018-08-22 16:15:05', '1', '', 'project_task_updated', 43, 190, 0, 0, 0, 0, 0, 0, 0, 960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(995, 23, '', '2018-08-22 16:15:17', '1', '', 'project_task_updated', 43, 191, 0, 0, 0, 0, 0, 0, 0, 961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(996, 23, '', '2018-08-22 16:17:12', '1,8,14,16', '', 'project_task_created', 43, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(997, 23, '', '2018-08-22 16:18:43', '1,8,14,16', '', 'project_task_created', 43, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(998, 23, '', '2018-08-22 16:19:27', '16', '', 'project_task_updated', 43, 193, 0, 0, 0, 0, 0, 0, 0, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(999, 23, '', '2018-08-22 16:21:34', '1,8,14,16', '', 'project_task_created', 43, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000, 23, '', '2018-08-22 16:23:17', '1,8,14,16', '', 'project_task_created', 43, 195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1001, 23, '', '2018-08-22 16:30:54', '1,8,14,16', '', 'project_task_created', 43, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1002, 23, '', '2018-08-22 16:32:22', '1', '', 'project_task_updated', 43, 191, 0, 0, 0, 0, 0, 0, 0, 968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1003, 23, '', '2018-08-22 16:34:08', '1,8,14,16', '', 'project_task_created', 43, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1004, 23, '', '2018-08-22 16:35:53', '1,8,14,16', '', 'project_task_created', 43, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1005, 23, '', '2018-08-22 16:38:52', '1,8,14,16', '', 'project_task_created', 43, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1006, 23, '', '2018-08-22 16:40:22', '1,8,14,16', '', 'project_task_created', 43, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1007, 23, '', '2018-08-22 16:43:35', '1,8,14,16', '', 'project_task_created', 43, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1008, 23, '', '2018-08-22 16:45:25', '1,8,14,16', '', 'project_task_created', 43, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1009, 23, '', '2018-08-22 16:46:40', '1,8,14,16', '', 'project_task_created', 43, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1010, 23, '', '2018-08-22 16:47:46', '1,8,14,16', '', 'project_task_created', 43, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1011, 23, '', '2018-08-22 16:49:29', '16', '', 'project_task_updated', 32, 143, 0, 0, 0, 0, 0, 0, 0, 977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1012, 23, '', '2018-08-22 16:53:07', '1,8,14,16', '', 'project_task_created', 43, 205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1013, 23, '', '2018-08-22 16:53:56', '1,8,14,16', '', 'project_task_created', 43, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1014, 23, '', '2018-08-22 16:55:53', '1,8,14,16', '', 'project_task_created', 43, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1015, 23, '', '2018-08-22 17:00:54', '1,8,14,16', '', 'project_task_created', 43, 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1016, 23, '', '2018-08-22 17:01:11', '8', ',8', 'project_task_updated', 43, 208, 0, 0, 0, 0, 0, 0, 0, 988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1017, 23, '', '2018-08-22 17:02:54', '1,8,14,16', '', 'project_task_created', 43, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1018, 23, '', '2018-08-22 17:03:28', '14', '', 'project_task_updated', 43, 209, 0, 0, 0, 0, 0, 0, 0, 990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1019, 23, '', '2018-08-22 17:04:59', '1,8,14,16', '', 'project_task_created', 43, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1020, 23, '', '2018-08-22 17:06:40', '14', '', 'project_task_updated', 43, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1021, 23, '', '2018-08-22 17:07:40', '1,8,14,16', '', 'project_task_created', 43, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1022, 23, '', '2018-08-22 17:08:48', '1,8,14,16', '', 'project_task_created', 43, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1023, 23, '', '2018-08-22 17:09:53', '1', '', 'project_task_updated', 43, 211, 0, 0, 0, 0, 0, 0, 0, 994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1024, 23, '', '2018-08-22 17:10:36', '1', '', 'project_task_updated', 43, 212, 0, 0, 0, 0, 0, 0, 0, 995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1025, 1, '', '2018-08-25 11:47:00', '16', '', 'project_task_deleted', 43, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1026, 1, '', '2018-08-25 11:47:03', '16', '', 'project_task_deleted', 43, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1027, 1, '', '2018-08-25 11:48:32', '16', '', 'project_task_deleted', 43, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1028, 8, '', '2018-09-02 06:01:09', '16', '', 'project_task_updated', 32, 138, 0, 0, 0, 0, 0, 0, 0, 1003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1029, 8, '', '2018-09-02 06:01:14', '16', '', 'project_task_updated', 32, 139, 0, 0, 0, 0, 0, 0, 0, 1004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1030, 8, '', '2018-09-02 06:01:22', '16', '', 'project_task_updated', 32, 141, 0, 0, 0, 0, 0, 0, 0, 1006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1031, 8, '', '2018-09-02 06:01:25', '16', '', 'project_task_updated', 32, 144, 0, 0, 0, 0, 0, 0, 0, 1007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1032, 8, '', '2018-09-02 06:01:57', '', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 1008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1033, 8, '', '2018-09-02 06:06:54', '1,3,14,16,23,38', '', 'project_task_created', 32, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1034, 8, '', '2018-09-02 06:07:17', '', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1035, 8, '', '2018-09-02 06:07:45', '1,3,14,16,23,38', '', 'project_task_created', 32, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1036, 8, '', '2018-09-02 06:08:13', '1,3,14,16,23,38', '', 'project_task_created', 32, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1037, 8, '', '2018-09-02 06:08:43', '1,3,14,16,23,38', '', 'project_task_created', 32, 216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1038, 8, '', '2018-09-02 06:08:54', '', '', 'project_task_updated', 32, 216, 0, 0, 0, 0, 0, 0, 0, 1014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1039, 8, '', '2018-09-02 06:09:10', '1,3,14,16,23,38', '', 'project_task_created', 32, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1040, 8, '', '2018-09-02 06:09:38', '1,3,14,16,23,38', '', 'project_task_created', 32, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1041, 8, '', '2018-09-02 06:11:56', '', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1042, 8, '', '2018-09-02 06:13:07', '', '', 'project_task_updated', 32, 100, 0, 0, 0, 0, 0, 0, 0, 1018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1043, 8, '', '2018-09-02 06:13:50', '16', '', 'project_task_updated', 32, 102, 0, 0, 0, 0, 0, 0, 0, 1019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1044, 8, '', '2018-09-02 06:16:33', '', '', 'project_task_updated', 32, 214, 0, 0, 0, 0, 0, 0, 0, 1020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1045, 8, '', '2018-09-02 06:16:50', '', '', 'project_task_updated', 32, 218, 0, 0, 0, 0, 0, 0, 0, 1021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1046, 8, '', '2018-09-02 06:17:12', '16', '', 'project_task_updated', 32, 103, 0, 0, 0, 0, 0, 0, 0, 1022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1047, 8, '', '2018-09-02 06:18:37', '1,3,14,16,23,38', '', 'project_task_created', 32, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1048, 8, '', '2018-09-02 06:21:28', '', '', 'project_task_updated', 32, 219, 0, 0, 0, 0, 0, 0, 0, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1049, 8, '', '2018-09-02 06:21:57', '16', '', 'project_task_updated', 32, 104, 0, 0, 0, 0, 0, 0, 0, 1025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1050, 8, '', '2018-09-02 06:22:23', '16', '', 'project_task_updated', 32, 105, 0, 0, 0, 0, 0, 0, 0, 1026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1051, 8, '', '2018-09-02 06:23:03', '16', '', 'project_task_updated', 32, 106, 0, 0, 0, 0, 0, 0, 0, 1027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1052, 8, '', '2018-09-02 06:23:18', '16', '', 'project_task_updated', 32, 102, 0, 0, 0, 0, 0, 0, 0, 1028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1053, 8, '', '2018-09-02 06:23:36', '16', '', 'project_task_updated', 32, 103, 0, 0, 0, 0, 0, 0, 0, 1029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1054, 8, '', '2018-09-02 06:23:49', '16', '', 'project_task_updated', 32, 104, 0, 0, 0, 0, 0, 0, 0, 1030, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1055, 8, '', '2018-09-02 06:24:08', '16', '', 'project_task_updated', 32, 105, 0, 0, 0, 0, 0, 0, 0, 1031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1056, 8, '', '2018-09-02 06:24:49', '16', '', 'project_task_updated', 32, 107, 0, 0, 0, 0, 0, 0, 0, 1032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1057, 8, '', '2018-09-02 06:25:24', '16', '', 'project_task_updated', 32, 108, 0, 0, 0, 0, 0, 0, 0, 1033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1058, 8, '', '2018-09-02 06:27:40', '16', '', 'project_task_updated', 32, 133, 0, 0, 0, 0, 0, 0, 0, 1034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1059, 8, '', '2018-09-02 06:28:56', '16', '', 'project_task_updated', 32, 134, 0, 0, 0, 0, 0, 0, 0, 1035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1060, 8, '', '2018-09-02 06:29:25', '16', '', 'project_task_updated', 32, 135, 0, 0, 0, 0, 0, 0, 0, 1036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1061, 8, '', '2018-09-02 06:30:12', '16', '', 'project_task_updated', 32, 144, 0, 0, 0, 0, 0, 0, 0, 1037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1062, 23, '', '2018-09-02 06:31:48', '16', '', 'project_task_updated', 32, 101, 0, 0, 0, 0, 0, 0, 0, 1038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1063, 23, '', '2018-09-02 06:32:13', '16', '', 'project_task_updated', 32, 141, 0, 0, 0, 0, 0, 0, 0, 1039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1064, 8, '', '2018-09-02 06:32:34', '16', '', 'project_task_updated', 32, 141, 0, 0, 0, 0, 0, 0, 0, 1040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1065, 23, '', '2018-09-02 06:32:46', '16', '', 'project_task_updated', 32, 140, 0, 0, 0, 0, 0, 0, 0, 1041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1066, 8, '', '2018-09-02 06:33:16', '16', '', 'project_task_updated', 32, 140, 0, 0, 0, 0, 0, 0, 0, 1042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1067, 23, '', '2018-09-02 06:33:18', '16', '', 'project_task_updated', 32, 131, 0, 0, 0, 0, 0, 0, 0, 1043, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1068, 23, '', '2018-09-02 06:33:48', '16', '', 'project_task_updated', 32, 138, 0, 0, 0, 0, 0, 0, 0, 1044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1069, 8, '', '2018-09-02 06:33:57', '16', '', 'project_task_updated', 32, 131, 0, 0, 0, 0, 0, 0, 0, 1045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1070, 23, '', '2018-09-02 06:34:16', '16', '', 'project_task_updated', 32, 147, 0, 0, 0, 0, 0, 0, 0, 1046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1071, 8, '', '2018-09-02 06:34:26', '16', '', 'project_task_updated', 32, 132, 0, 0, 0, 0, 0, 0, 0, 1047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1072, 23, '', '2018-09-02 06:34:54', '16', '', 'project_task_updated', 32, 143, 0, 0, 0, 0, 0, 0, 0, 1048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1073, 23, '', '2018-09-02 06:35:22', '16', '', 'project_task_updated', 32, 136, 0, 0, 0, 0, 0, 0, 0, 1049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1074, 8, '', '2018-09-02 06:35:35', '16', '', 'project_task_updated', 32, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1075, 23, '', '2018-09-02 06:35:47', '16', '', 'project_task_updated', 32, 142, 0, 0, 0, 0, 0, 0, 0, 1050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1076, 8, '', '2018-09-02 06:36:52', '16', '', 'project_task_updated', 32, 138, 0, 0, 0, 0, 0, 0, 0, 1051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1077, 23, '', '2018-09-02 06:37:27', '8', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1078, 23, '', '2018-09-02 06:37:43', '16', '', 'project_task_updated', 32, 145, 0, 0, 0, 0, 0, 0, 0, 1053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1079, 23, '', '2018-09-02 06:38:06', '16', '', 'project_task_updated', 32, 145, 0, 0, 0, 0, 0, 0, 0, 1054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1080, 8, '', '2018-09-02 06:38:27', '16', '', 'project_task_updated', 32, 139, 0, 0, 0, 0, 0, 0, 0, 1055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1081, 23, '', '2018-09-02 06:38:38', '8', '', 'project_task_updated', 32, 215, 0, 0, 0, 0, 0, 0, 0, 1056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1082, 8, '', '2018-09-02 06:39:19', '16', '', 'project_task_updated', 32, 142, 0, 0, 0, 0, 0, 0, 0, 1057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1083, 23, '', '2018-09-02 06:39:19', '8', ',8', 'project_task_updated', 32, 216, 0, 0, 0, 0, 0, 0, 0, 1058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1084, 23, '', '2018-09-02 06:41:57', '16', '', 'project_task_updated', 32, 143, 0, 0, 0, 0, 0, 0, 0, 1059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1085, 8, '', '2018-09-02 06:41:57', '16', '', 'project_task_updated', 32, 143, 0, 0, 0, 0, 0, 0, 0, 1060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1086, 8, '', '2018-09-02 06:42:35', '16', '', 'project_task_updated', 32, 147, 0, 0, 0, 0, 0, 0, 0, 1061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1087, 8, '', '2018-09-02 06:43:00', '16', '', 'project_task_updated', 32, 143, 0, 0, 0, 0, 0, 0, 0, 1062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1088, 8, '', '2018-09-02 06:45:52', '16', '', 'project_task_updated', 32, 142, 0, 0, 0, 0, 0, 0, 0, 1063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1089, 23, '', '2018-09-02 06:46:22', '16', '', 'project_task_updated', 32, 145, 0, 0, 0, 0, 0, 0, 0, 1064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1090, 8, '', '2018-09-02 06:49:25', '16', '', 'project_task_updated', 32, 134, 0, 0, 0, 0, 0, 0, 0, 1065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1091, 23, '', '2018-09-02 06:50:05', '1,3,8,14,16,38', '', 'project_task_created', 32, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1092, 8, '', '2018-09-02 06:51:18', '16', '', 'project_task_updated', 32, 135, 0, 0, 0, 0, 0, 0, 0, 1068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1093, 23, '', '2018-09-02 06:52:41', '1,3,8,14,16,38', '', 'project_task_created', 32, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1094, 23, '', '2018-09-02 06:54:50', '16', '', 'project_task_updated', 32, 220, 0, 0, 0, 0, 0, 0, 0, 1070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1095, 8, '', '2018-09-02 06:54:50', '16', '', 'project_task_updated', 32, 220, 0, 0, 0, 0, 0, 0, 0, 1071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1096, 8, '', '2018-09-02 06:56:24', '16', '', 'project_task_updated', 32, 147, 0, 0, 0, 0, 0, 0, 0, 1076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1097, 23, '', '2018-09-02 06:56:52', '16', '', 'project_task_deleted', 32, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1098, 23, '', '2018-09-02 06:59:27', '16', '', 'project_task_updated', 32, 136, 0, 0, 0, 0, 0, 0, 0, 1078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `read_by`, `event`, `project_id`, `task_id`, `project_comment_id`, `ticket_id`, `ticket_comment_id`, `project_file_id`, `leave_id`, `post_id`, `to_user_id`, `activity_log_id`, `client_id`, `invoice_payment_id`, `invoice_id`, `estimate_id`, `estimate_request_id`, `actual_message_id`, `parent_message_id`, `event_id`, `announcement_id`, `deleted`) VALUES
(1099, 23, '', '2018-09-02 07:02:39', '16', '', 'project_task_updated', 32, 139, 0, 0, 0, 0, 0, 0, 0, 1084, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1100, 23, '', '2018-09-02 07:11:10', '16', '', 'project_task_updated', 32, 145, 0, 0, 0, 0, 0, 0, 0, 1091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1101, 23, '', '2018-09-02 07:12:22', '8', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1102, 23, '', '2018-09-02 07:14:38', '8', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1103, 23, '', '2018-09-02 07:14:58', '8', '', 'project_task_updated', 32, 214, 0, 0, 0, 0, 0, 0, 0, 1094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1104, 23, '', '2018-09-02 07:15:27', '8', '', 'project_task_updated', 32, 215, 0, 0, 0, 0, 0, 0, 0, 1095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1105, 23, '', '2018-09-02 07:16:18', '8', '', 'project_task_updated', 32, 216, 0, 0, 0, 0, 0, 0, 0, 1096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1106, 23, '', '2018-09-02 07:16:39', '8', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1107, 23, '', '2018-09-02 07:16:50', '8', '', 'project_task_updated', 32, 214, 0, 0, 0, 0, 0, 0, 0, 1098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1108, 23, '', '2018-09-02 07:17:04', '8', '', 'project_task_updated', 32, 215, 0, 0, 0, 0, 0, 0, 0, 1099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1109, 23, '', '2018-09-02 07:17:18', '8', '', 'project_task_updated', 32, 216, 0, 0, 0, 0, 0, 0, 0, 1100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1110, 23, '', '2018-09-02 07:17:40', '8', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1111, 23, '', '2018-09-02 07:18:26', '8', '', 'project_task_updated', 32, 218, 0, 0, 0, 0, 0, 0, 0, 1102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1112, 23, '', '2018-09-02 07:18:52', '8', '', 'project_task_updated', 32, 214, 0, 0, 0, 0, 0, 0, 0, 1103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1113, 23, '', '2018-09-02 07:19:06', '8', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1114, 23, '', '2018-09-02 07:19:22', '8', '', 'project_task_updated', 32, 215, 0, 0, 0, 0, 0, 0, 0, 1105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1115, 23, '', '2018-09-02 07:19:55', '8', '', 'project_task_updated', 32, 216, 0, 0, 0, 0, 0, 0, 0, 1106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1116, 23, '', '2018-09-02 07:20:13', '8', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1117, 23, '', '2018-09-02 07:20:36', '8', '', 'project_task_updated', 32, 218, 0, 0, 0, 0, 0, 0, 0, 1108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1118, 23, '', '2018-09-02 07:30:33', '1,3,8,14,16,38', '', 'project_task_created', 32, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1119, 23, '', '2018-09-02 07:31:49', '1,3,8,14,16,38', '', 'project_task_created', 32, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1120, 23, '', '2018-09-02 07:34:33', '1,3,8,14,16,38', '', 'project_task_created', 32, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1121, 23, '', '2018-09-02 07:37:09', '1,3,8,14,16,38', '', 'project_task_created', 32, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1122, 23, '', '2018-09-02 07:39:22', '1,3,8,14,16,38', '', 'project_task_created', 32, 226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1123, 23, '', '2018-09-02 07:43:17', '1,3,8,14,16,38', '', 'project_task_created', 32, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1124, 23, '', '2018-09-02 07:45:11', '1,3,8,14,16,38', '', 'project_task_created', 32, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1125, 23, '', '2018-09-02 07:47:01', '1,3,8,14,16,38', '', 'project_task_created', 32, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1126, 23, '', '2018-09-02 07:49:17', '1,3,8,14,16,38', '', 'project_task_created', 32, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1127, 23, '', '2018-09-02 07:50:03', '8', '', 'project_task_updated', 32, 219, 0, 0, 0, 0, 0, 0, 0, 1118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1128, 23, '', '2018-09-02 07:50:10', '8', '', 'project_task_deleted', 32, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1129, 23, '', '2018-09-02 07:52:10', '1,3,8,14,16,38', '', 'project_task_created', 32, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1130, 23, '', '2018-09-02 07:52:25', '16', '', 'project_task_updated', 32, 230, 0, 0, 0, 0, 0, 0, 0, 1121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1131, 23, '', '2018-09-02 07:52:28', '16', '', 'project_task_updated', 32, 229, 0, 0, 0, 0, 0, 0, 0, 1122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1132, 23, '', '2018-09-02 07:52:37', '16', '', 'project_task_updated', 32, 228, 0, 0, 0, 0, 0, 0, 0, 1123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1133, 23, '', '2018-09-02 07:53:38', '1,3,8,14,16,38', '', 'project_task_created', 32, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1134, 23, '', '2018-09-02 07:55:45', '1,3,8,14,16,38', '', 'project_task_created', 32, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1135, 23, '', '2018-09-02 07:56:42', '1,3,8,14,16,38', '', 'project_task_created', 32, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1136, 23, '', '2018-09-02 08:00:46', '1,3,8,14,16,38', '', 'project_task_created', 32, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1137, 23, '', '2018-09-02 08:01:57', '1,3,8,14,16,38', '', 'project_task_created', 32, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1138, 23, '', '2018-09-02 08:05:16', '1,3,8,14,16,38', '', 'project_task_created', 32, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1139, 23, '', '2018-09-02 08:06:10', '1,3,8,14,16,38', '', 'project_task_created', 32, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1140, 23, '', '2018-09-02 08:08:49', '1,3,8,14,16,38', '', 'project_task_created', 32, 239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1141, 23, '', '2018-09-02 08:11:31', '1,3,8,14,16,38', '', 'project_task_created', 32, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1142, 23, '', '2018-09-02 08:12:50', '1,3,8,14,16,38', '', 'project_task_created', 32, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1143, 23, '', '2018-09-02 08:13:51', '1,3,8,14,16,38', '', 'project_task_created', 32, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1144, 23, '', '2018-09-02 08:14:46', '1,3,8,14,16,38', '', 'project_task_created', 32, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1145, 23, '', '2018-09-02 08:16:12', '1,3,8,14,16,38', '', 'project_task_created', 32, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1146, 23, '', '2018-09-02 08:16:28', '16', '', 'project_task_updated', 32, 244, 0, 0, 0, 0, 0, 0, 0, 1137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1147, 23, '', '2018-09-02 08:17:28', '1,3,8,14,16,38', '', 'project_task_created', 32, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1148, 23, '', '2018-09-02 08:18:35', '1,3,8,14,16,38', '', 'project_task_created', 32, 246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1149, 8, '', '2018-09-02 10:33:58', '', '', 'project_task_updated', 32, 216, 0, 0, 0, 0, 0, 0, 0, 1140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1150, 8, '', '2018-09-02 10:34:04', '16', '', 'project_task_updated', 32, 246, 0, 0, 0, 0, 0, 0, 0, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1151, 8, '', '2018-09-02 10:34:11', '16', '', 'project_task_updated', 32, 245, 0, 0, 0, 0, 0, 0, 0, 1142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1152, 8, '', '2018-09-02 10:34:12', '16', '', 'project_task_updated', 32, 244, 0, 0, 0, 0, 0, 0, 0, 1143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1153, 8, '', '2018-09-02 10:34:27', '16', '', 'project_task_updated', 32, 238, 0, 0, 0, 0, 0, 0, 0, 1144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1154, 8, '', '2018-09-02 10:34:31', '16', '', 'project_task_updated', 32, 237, 0, 0, 0, 0, 0, 0, 0, 1145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1155, 8, '', '2018-09-02 10:34:34', '16', '', 'project_task_updated', 32, 236, 0, 0, 0, 0, 0, 0, 0, 1146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1156, 8, '', '2018-09-02 10:34:38', '16', '', 'project_task_updated', 32, 235, 0, 0, 0, 0, 0, 0, 0, 1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1157, 8, '', '2018-09-05 09:55:35', '16', '', 'project_task_updated', 32, 234, 0, 0, 0, 0, 0, 0, 0, 1148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1158, 8, '', '2018-09-05 09:55:54', '16', '', 'project_task_updated', 32, 233, 0, 0, 0, 0, 0, 0, 0, 1149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1159, 8, '', '2018-09-05 09:56:37', '16', '', 'project_task_updated', 32, 230, 0, 0, 0, 0, 0, 0, 0, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1160, 8, '', '2018-09-05 09:56:39', '16', '', 'project_task_updated', 32, 230, 0, 0, 0, 0, 0, 0, 0, 1151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1161, 8, '', '2018-09-05 09:56:49', '', '', 'project_task_updated', 32, 225, 0, 0, 0, 0, 0, 0, 0, 1152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1162, 8, '', '2018-09-05 09:56:53', '', '', 'project_task_updated', 32, 225, 0, 0, 0, 0, 0, 0, 0, 1153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1163, 8, '', '2018-09-05 09:57:17', '', '', 'project_task_updated', 32, 225, 0, 0, 0, 0, 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1164, 8, '', '2018-09-05 09:57:18', '16', '', 'project_task_updated', 32, 230, 0, 0, 0, 0, 0, 0, 0, 1155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1165, 8, '', '2018-09-05 09:57:20', '16', '', 'project_task_updated', 32, 230, 0, 0, 0, 0, 0, 0, 0, 1156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1166, 8, '', '2018-09-05 09:57:24', '', '', 'project_task_updated', 32, 225, 0, 0, 0, 0, 0, 0, 0, 1157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1167, 8, '', '2018-09-05 09:57:30', '16', '', 'project_task_updated', 32, 230, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1168, 8, '', '2018-09-05 09:57:41', '', '', 'project_task_updated', 32, 225, 0, 0, 0, 0, 0, 0, 0, 1159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1169, 8, '', '2018-09-05 09:58:16', '16', '', 'project_task_updated', 32, 221, 0, 0, 0, 0, 0, 0, 0, 1160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1170, 8, '', '2018-09-05 09:58:20', '16', '', 'project_task_updated', 32, 221, 0, 0, 0, 0, 0, 0, 0, 1161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1171, 8, '', '2018-09-05 10:17:19', '16', '', 'project_task_updated', 32, 234, 0, 0, 0, 0, 0, 0, 0, 1162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1172, 8, '', '2018-09-05 10:17:41', '16', '', 'project_task_updated', 32, 233, 0, 0, 0, 0, 0, 0, 0, 1163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1173, 8, '', '2018-09-05 10:18:02', '16', '', 'project_task_deleted', 32, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1174, 8, '', '2018-09-05 15:59:42', '1,3,14,16,23,38', '', 'project_task_created', 32, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1175, 8, '', '2018-09-05 16:08:09', '', '', 'project_task_commented', 32, 247, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1176, 8, '', '2018-09-05 16:08:16', '', '', 'project_task_updated', 32, 247, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1177, 14, '', '2018-09-06 15:04:02', '1,6,8,25', '', 'project_member_added', 47, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1178, 14, '', '2018-09-06 15:04:03', '1,6,8,16,25', '', 'project_member_added', 47, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1179, 14, '', '2018-09-06 15:04:04', '1,6,8,16,21,25', '', 'project_member_added', 47, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1180, 14, '', '2018-09-06 15:04:04', '1,6,8,16,21,25', '', 'project_member_added', 47, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1181, 14, '', '2018-09-07 02:55:19', '1,6,8,16,21,25', '', 'project_task_created', 47, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1182, 14, '', '2018-09-07 02:57:02', '1,6,8,16,21,25', '', 'project_task_created', 47, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1183, 14, '', '2018-09-07 03:06:38', '1,6,8,16,21,25', '', 'project_task_created', 47, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1184, 14, '', '2018-09-07 03:07:29', '21', '', 'project_task_updated', 47, 249, 0, 0, 0, 0, 0, 0, 0, 1172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1185, 14, '', '2018-09-07 03:07:54', '21', '', 'project_task_assigned', 47, 250, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1186, 14, '', '2018-09-07 03:08:27', '1,6,8,16,21,25', '', 'project_task_created', 47, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1187, 14, '', '2018-09-07 03:09:16', '', '', 'project_task_updated', 47, 251, 0, 0, 0, 0, 0, 0, 0, 1175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1188, 14, '', '2018-09-07 03:09:48', '21', '', 'project_task_assigned', 47, 251, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1189, 14, '', '2018-09-07 03:13:48', '1,6,8,16,21,25', '', 'project_task_created', 47, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1190, 14, '', '2018-09-07 03:14:56', '1,6,8,16,21,25', '', 'project_task_created', 47, 253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1191, 14, '', '2018-09-07 03:15:45', '1,6,8,16,21,25', '', 'project_task_created', 47, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1192, 14, '', '2018-09-07 03:16:00', '21', '', 'project_task_updated', 47, 254, 0, 0, 0, 0, 0, 0, 0, 1180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1193, 14, '', '2018-09-07 03:29:44', '21', '', 'project_task_updated', 47, 254, 0, 0, 0, 0, 0, 0, 0, 1181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1194, 14, '', '2018-09-07 03:30:28', '21', '', 'project_task_updated', 47, 254, 0, 0, 0, 0, 0, 0, 0, 1182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1195, 14, '', '2018-09-07 03:30:39', '21', '', 'project_task_updated', 47, 253, 0, 0, 0, 0, 0, 0, 0, 1183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1196, 14, '', '2018-09-07 03:31:02', '21', '', 'project_task_updated', 47, 252, 0, 0, 0, 0, 0, 0, 0, 1184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1197, 14, '', '2018-09-07 03:31:57', '21', '', 'project_task_updated', 47, 251, 0, 0, 0, 0, 0, 0, 0, 1185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1198, 14, '', '2018-09-07 03:32:16', '21', '', 'project_task_updated', 47, 250, 0, 0, 0, 0, 0, 0, 0, 1186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1199, 14, '', '2018-09-07 03:32:29', '21', '', 'project_task_updated', 47, 249, 0, 0, 0, 0, 0, 0, 0, 1187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1200, 14, '', '2018-09-07 03:32:50', '21', '', 'project_task_updated', 47, 248, 0, 0, 0, 0, 0, 0, 0, 1188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1201, 14, '', '2018-09-07 03:35:52', '1,6,8,16,21,25', '', 'project_task_created', 47, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1202, 14, '', '2018-09-07 03:37:00', '1,6,8,16,21,25', '', 'project_task_created', 47, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1203, 14, '', '2018-09-07 03:39:53', '1,6,8,16,21,25', '', 'project_task_created', 47, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1204, 14, '', '2018-09-07 03:41:36', '8', '', 'project_task_updated', 47, 257, 0, 0, 0, 0, 0, 0, 0, 1192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1205, 14, '', '2018-09-07 03:42:45', '1,6,8,16,21,25', '', 'project_task_created', 47, 258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1206, 14, '', '2018-09-07 03:46:35', '1,6,8,16,21,25', '', 'project_task_created', 47, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1207, 14, '', '2018-09-07 03:46:58', '8', '', 'project_task_updated', 47, 258, 0, 0, 0, 0, 0, 0, 0, 1195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1208, 14, '', '2018-09-07 03:47:50', '8', '', 'project_task_assigned', 47, 259, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1209, 14, '', '2018-09-07 03:48:29', '1,6,8,16,21,25', '', 'project_task_created', 47, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1210, 14, '', '2018-09-07 03:48:47', '8', '', 'project_task_updated', 47, 260, 0, 0, 0, 0, 0, 0, 0, 1198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1211, 14, '', '2018-09-07 03:49:42', '8', '', 'project_task_updated', 47, 260, 0, 0, 0, 0, 0, 0, 0, 1199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1212, 14, '', '2018-09-07 03:56:06', '1,6,8,16,21,25', '', 'project_task_created', 47, 261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1213, 14, '', '2018-09-07 03:58:16', '1,6,8,13,16,21,25', '', 'project_member_added', 47, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1214, 14, '', '2018-09-07 03:58:40', '13', '', 'project_task_assigned', 47, 261, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1215, 14, '', '2018-09-07 04:01:07', '1,6,8,13,16,21,25', '', 'project_task_created', 47, 262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1216, 14, '', '2018-09-07 04:03:50', '1,6,8,13,16,21,25', '', 'project_task_created', 47, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1217, 14, '', '2018-09-07 04:04:41', '13', '', 'project_task_assigned', 47, 263, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1218, 14, '', '2018-09-07 04:05:10', '13', '', 'project_task_updated', 47, 263, 0, 0, 0, 0, 0, 0, 0, 1206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1219, 14, '', '2018-09-07 04:07:11', '1,6,8,13,16,21,25', '', 'project_task_created', 47, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1220, 14, '', '2018-09-07 04:16:55', '1,6,8,13,16,21,25', ',8', 'project_task_created', 47, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1221, 8, '', '2018-09-07 10:12:16', '', '', 'project_task_updated', 47, 255, 0, 0, 0, 0, 0, 0, 0, 1209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1222, 8, '', '2018-09-07 10:12:18', '', '', 'project_task_updated', 47, 256, 0, 0, 0, 0, 0, 0, 0, 1210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1223, 8, '', '2018-09-07 10:41:02', '', '', 'project_task_updated', 47, 255, 0, 0, 0, 0, 0, 0, 0, 1211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1224, 1, '', '2018-09-07 14:57:27', '6,8,13,14,16,21,25', '', 'project_comment_added', 47, 0, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1225, 1, '', '2018-09-07 15:08:35', '6,8,13,14,16,21,25', '', 'project_comment_added', 47, 0, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1226, 1, '', '2018-09-07 15:10:06', '6,8,13,14,16,21,25', '', 'project_comment_added', 47, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1227, 8, '', '2018-09-07 17:26:05', '', '', 'project_task_updated', 47, 257, 0, 0, 0, 0, 0, 0, 0, 1215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1228, 1, '', '2018-09-08 00:49:41', '6,8,13,14,16,21,25', '', 'project_comment_added', 47, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1229, 1, '', '2018-09-08 00:51:24', '6,8,13,14,16,21,25', '', 'project_comment_replied', 47, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1230, 1, '', '2018-09-08 01:40:34', '13', '', 'project_task_updated', 47, 265, 0, 0, 0, 0, 0, 0, 0, 1228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1231, 1, '', '2018-09-08 01:40:53', '13', '', 'project_task_updated', 47, 264, 0, 0, 0, 0, 0, 0, 0, 1229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1232, 1, '', '2018-09-08 01:41:19', '13', '', 'project_task_updated', 47, 263, 0, 0, 0, 0, 0, 0, 0, 1230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1233, 1, '', '2018-09-08 01:41:41', '13', '', 'project_task_updated', 47, 262, 0, 0, 0, 0, 0, 0, 0, 1231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1234, 1, '', '2018-09-08 01:42:11', '13', '', 'project_task_updated', 47, 261, 0, 0, 0, 0, 0, 0, 0, 1232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1235, 1, '', '2018-09-08 01:42:37', '8', '', 'project_task_updated', 47, 260, 0, 0, 0, 0, 0, 0, 0, 1233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1236, 1, '', '2018-09-08 01:43:20', '8', '', 'project_task_updated', 47, 259, 0, 0, 0, 0, 0, 0, 0, 1234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1237, 1, '', '2018-09-08 01:43:36', '8', '', 'project_task_updated', 47, 258, 0, 0, 0, 0, 0, 0, 0, 1235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1238, 1, '', '2018-09-08 01:43:48', '8', '', 'project_task_updated', 47, 257, 0, 0, 0, 0, 0, 0, 0, 1236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1239, 1, '', '2018-09-08 01:44:01', '8', '', 'project_task_updated', 47, 256, 0, 0, 0, 0, 0, 0, 0, 1237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1240, 1, '', '2018-09-08 01:44:23', '8', '', 'project_task_updated', 47, 255, 0, 0, 0, 0, 0, 0, 0, 1238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1241, 1, '', '2018-09-08 01:44:35', '21', '', 'project_task_updated', 47, 254, 0, 0, 0, 0, 0, 0, 0, 1239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1242, 1, '', '2018-09-08 01:45:11', '21', '', 'project_task_updated', 47, 253, 0, 0, 0, 0, 0, 0, 0, 1240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1243, 1, '', '2018-09-08 01:45:21', '21', '', 'project_task_updated', 47, 252, 0, 0, 0, 0, 0, 0, 0, 1241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1244, 1, '', '2018-09-08 01:45:32', '21', '', 'project_task_updated', 47, 251, 0, 0, 0, 0, 0, 0, 0, 1242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1245, 1, '', '2018-09-08 01:45:46', '21', '', 'project_task_updated', 47, 250, 0, 0, 0, 0, 0, 0, 0, 1243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1246, 1, '', '2018-09-08 01:45:56', '21', '', 'project_task_updated', 47, 249, 0, 0, 0, 0, 0, 0, 0, 1244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1247, 1, '', '2018-09-08 01:46:06', '21', '', 'project_task_updated', 47, 248, 0, 0, 0, 0, 0, 0, 0, 1245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1248, 1, '', '2018-09-08 01:46:54', '6,8,13,14,16,21,25', '', 'project_task_created', 47, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1249, 1, '', '2018-09-08 01:47:23', '6', '', 'project_task_updated', 47, 266, 0, 0, 0, 0, 0, 0, 0, 1247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1250, 1, '', '2018-09-08 01:48:17', '6,8,13,14,16,21,25', '', 'project_task_created', 47, 267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1251, 1, '', '2018-09-08 01:49:57', '6,8,13,14,16,21,25', '', 'project_task_created', 47, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1252, 1, '', '2018-09-08 01:51:03', '6,8,13,14,16,21,25', '', 'project_task_created', 47, 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1253, 1, '', '2018-09-08 01:52:14', '6,8,13,14,16,21,25', '', 'project_task_created', 47, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1254, 8, '', '2018-09-08 05:25:36', '', '', 'project_task_updated', 47, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1255, 8, '', '2018-09-08 05:25:39', '', '', 'project_task_updated', 47, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1256, 8, '', '2018-09-08 05:25:49', '', '', 'project_task_updated', 47, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1257, 1, '', '2018-09-08 14:48:16', '6,8,13,14,16,21,25', ',8', 'project_customer_feedback_added', 47, 0, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1258, 8, '', '2018-09-10 05:47:29', '16', '', 'project_task_commented', 32, 224, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1259, 8, '', '2018-09-10 06:06:19', '16', '', 'project_task_commented', 32, 231, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1260, 8, '', '2018-09-10 06:09:31', '', '', 'project_task_commented', 32, 247, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1261, 8, '', '2018-09-10 06:09:41', '', '', 'project_task_updated', 32, 247, 0, 0, 0, 0, 0, 0, 0, 1256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1262, 8, '', '2018-09-10 06:11:41', '16', '', 'project_task_updated', 32, 239, 0, 0, 0, 0, 0, 0, 0, 1257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1263, 8, '', '2018-09-10 06:12:30', '', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1264, 8, '', '2018-09-10 06:17:49', '', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1265, 8, '', '2018-09-10 06:33:01', '', '', 'project_task_updated', 32, 213, 0, 0, 0, 0, 0, 0, 0, 1260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1266, 8, '', '2018-09-10 06:33:55', '', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1267, 8, '', '2018-09-10 06:35:16', '', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1268, 8, '', '2018-09-10 06:35:52', '16', '', 'project_task_updated', 32, 239, 0, 0, 0, 0, 0, 0, 0, 1263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1269, 8, '', '2018-09-10 06:36:13', '16', '', 'project_task_updated', 32, 239, 0, 0, 0, 0, 0, 0, 0, 1264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1270, 8, '', '2018-09-10 06:57:41', '', '', 'project_task_updated', 32, 214, 0, 0, 0, 0, 0, 0, 0, 1265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1271, 8, '', '2018-09-10 06:58:04', '', '', 'project_task_updated', 32, 215, 0, 0, 0, 0, 0, 0, 0, 1266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1272, 8, '', '2018-09-10 07:02:20', '', '', 'project_task_updated', 32, 215, 0, 0, 0, 0, 0, 0, 0, 1267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1273, 8, '', '2018-09-10 07:25:17', '', '', 'project_task_updated', 32, 218, 0, 0, 0, 0, 0, 0, 0, 1268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1274, 8, '', '2018-09-10 08:29:23', '16', '', 'project_task_updated', 32, 242, 0, 0, 0, 0, 0, 0, 0, 1269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1275, 8, '', '2018-09-10 08:30:23', '', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1276, 8, '', '2018-09-10 08:37:15', '', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1277, 8, '', '2018-09-10 08:37:41', '', '', 'project_task_updated', 32, 217, 0, 0, 0, 0, 0, 0, 0, 1272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1278, 8, '', '2018-09-10 08:39:37', '1,3,14,16,23,38', '', 'project_task_created', 32, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1279, 8, '', '2018-09-10 08:45:08', '16', '', 'project_task_updated', 32, 271, 0, 0, 0, 0, 0, 0, 0, 1274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1280, 8, '', '2018-09-10 08:45:36', '1,3,14,16,23,38', '', 'project_task_created', 32, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1281, 8, '', '2018-09-10 08:48:06', '16', '', 'project_task_updated', 32, 272, 0, 0, 0, 0, 0, 0, 0, 1276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1282, 8, '', '2018-09-10 08:53:46', '16', '', 'project_task_deleted', 32, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1283, 8, '', '2018-09-10 08:54:41', '1,3,14,16,23,38', '', 'project_task_created', 32, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1284, 8, '', '2018-09-10 08:55:49', '16', '', 'project_task_updated', 32, 244, 0, 0, 0, 0, 0, 0, 0, 1279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1285, 8, '', '2018-09-10 08:58:35', '1,3,14,16,23,38', '', 'project_task_created', 32, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1286, 8, '', '2018-09-10 09:00:38', '', '', 'project_task_updated', 32, 274, 0, 0, 0, 0, 0, 0, 0, 1281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1287, 8, '', '2018-09-10 09:01:54', '', '', 'project_task_updated', 32, 274, 0, 0, 0, 0, 0, 0, 0, 1282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1288, 8, '', '2018-09-10 09:02:14', '16', '', 'project_task_deleted', 32, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1289, 8, '', '2018-09-10 09:02:16', '16', '', 'project_task_deleted', 32, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1290, 8, '', '2018-09-10 09:02:18', '16', '', 'project_task_deleted', 32, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1291, 8, '', '2018-09-10 09:02:19', '16', '', 'project_task_deleted', 32, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1292, 8, '', '2018-09-10 09:08:11', '1,3,14,16,23,38', '', 'project_task_created', 32, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1293, 8, '', '2018-09-10 09:09:57', '', '', 'project_task_updated', 32, 225, 0, 0, 0, 0, 0, 0, 0, 1288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1294, 8, '', '2018-09-10 09:10:02', '16', '', 'project_task_updated', 32, 221, 0, 0, 0, 0, 0, 0, 0, 1289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1295, 8, '', '2018-09-10 09:10:08', '16', '', 'project_task_updated', 32, 145, 0, 0, 0, 0, 0, 0, 0, 1290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1296, 8, '', '2018-09-10 09:10:23', '16', '', 'project_task_deleted', 32, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1297, 8, '', '2018-09-10 09:10:36', '16', '', 'project_task_updated', 32, 244, 0, 0, 0, 0, 0, 0, 0, 1292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1298, 8, '', '2018-09-10 09:10:38', '16', '', 'project_task_updated', 32, 244, 0, 0, 0, 0, 0, 0, 0, 1293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1299, 8, '', '2018-09-10 09:10:44', '16', '', 'project_task_updated', 32, 244, 0, 0, 0, 0, 0, 0, 0, 1294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1300, 8, '', '2018-09-10 09:10:49', '', '', 'project_task_updated', 32, 275, 0, 0, 0, 0, 0, 0, 0, 1295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1301, 0, '', '2018-09-10 11:36:32', '', '', 'invoice_payment_confirmation', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0),
(1302, 1, '', '2018-09-10 12:16:33', '6,8,13,14,16,21,25', '', 'project_customer_feedback_added', 47, 0, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1303, 8, '', '2018-09-13 08:48:39', '', '', 'project_task_updated', 47, 255, 0, 0, 0, 0, 0, 0, 0, 1298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1304, 8, '', '2018-09-13 09:28:13', '', '', 'project_task_updated', 47, 259, 0, 0, 0, 0, 0, 0, 0, 1299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT 0,
  `enable_web` int(1) NOT NULL DEFAULT 0,
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `event`, `category`, `enable_email`, `enable_web`, `notify_to_team`, `notify_to_team_members`, `notify_to_terms`, `sort`, `deleted`) VALUES
(1, 'project_created', 'project', 1, 1, '1,2,4', '', '', 1, 0),
(2, 'project_deleted', 'project', 0, 0, '', '', '', 2, 0),
(3, 'project_task_created', 'project', 1, 1, '', '', 'project_members,task_assignee', 3, 0),
(4, 'project_task_updated', 'project', 1, 1, '', '', 'task_assignee', 4, 0),
(5, 'project_task_assigned', 'project', 0, 1, '', '', 'task_assignee', 5, 0),
(7, 'project_task_started', 'project', 1, 1, '', '', 'project_members', 7, 0),
(8, 'project_task_finished', 'project', 1, 1, '', '', 'project_members', 8, 0),
(9, 'project_task_reopened', 'project', 0, 0, '', '', '', 9, 0),
(10, 'project_task_deleted', 'project', 0, 1, '', '', 'task_assignee', 10, 0),
(11, 'project_task_commented', 'project', 0, 1, '', '', 'task_assignee', 11, 0),
(12, 'project_member_added', 'project', 0, 1, '', '', 'project_members', 12, 0),
(13, 'project_member_deleted', 'project', 0, 1, '', '', 'project_members', 13, 0),
(14, 'project_file_added', 'project', 0, 1, '', '', 'project_members', 14, 0),
(15, 'project_file_deleted', 'project', 0, 1, '', '', 'project_members', 15, 0),
(16, 'project_file_commented', 'project', 0, 1, '', '', 'project_members', 16, 0),
(17, 'project_comment_added', 'project', 0, 1, '', '', 'project_members', 17, 0),
(18, 'project_comment_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 18, 0),
(19, 'project_customer_feedback_added', 'project', 0, 1, '', '', 'project_members', 19, 0),
(20, 'project_customer_feedback_replied', 'project', 0, 1, '', '', 'project_members,comment_creator', 20, 0),
(21, 'client_signup', 'client', 1, 1, '', '', '', 21, 0),
(22, 'invoice_online_payment_received', 'invoice', 1, 1, '', '', '', 22, 0),
(23, 'leave_application_submitted', 'leave', 0, 0, '', '', '', 23, 0),
(24, 'leave_approved', 'leave', 1, 1, '', '', 'leave_applicant', 24, 0),
(25, 'leave_assigned', 'leave', 0, 1, '', '', 'leave_applicant', 25, 0),
(26, 'leave_rejected', 'leave', 0, 1, '', '', 'leave_applicant', 26, 0),
(27, 'leave_canceled', 'leave', 1, 1, '', '', '', 27, 0),
(28, 'ticket_created', 'ticket', 0, 0, '', '', '', 28, 0),
(29, 'ticket_commented', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 29, 0),
(30, 'ticket_closed', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 30, 0),
(31, 'ticket_reopened', 'ticket', 0, 1, '', '', 'client_primary_contact,ticket_creator', 31, 0),
(32, 'estimate_request_received', 'estimate', 1, 1, '', '', '', 32, 0),
(33, 'estimate_sent', 'estimate', 0, 0, '', '', '', 33, 0),
(34, 'estimate_accepted', 'estimate', 1, 1, '', '', '', 34, 0),
(35, 'estimate_rejected', 'estimate', 0, 0, '', '', '', 35, 0),
(36, 'new_message_sent', 'message', 0, 1, '', '', 'recipient', 36, 0),
(37, 'message_reply_sent', 'message', 1, 1, '', '', 'recipient', 37, 0),
(38, 'invoice_payment_confirmation', 'invoice', 1, 1, '', '', '', 22, 0),
(39, 'new_event_added_in_calendar', 'event', 1, 1, '', '', '', 39, 0),
(40, 'new_event_added_in_calendar', 'event', 1, 1, '', '', 'recipient', 39, 0),
(41, 'new_announcement_created', 'announcement', 0, 0, '', '', '', 41, 0),
(42, 'invoice_due_reminder_before_due_date', 'invoice', 0, 0, '', '', '', 22, 0),
(43, 'invoice_overdue_reminder', 'invoice', 0, 0, '', '', '', 22, 0),
(44, 'recurring_invoice_creation_reminder', 'invoice', 0, 0, '', '', '', 22, 0),
(45, 'recurring_invoice_created_vai_cron_job', 'invoice', 0, 0, '', '', '', 22, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT 0,
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_payment_amount` double NOT NULL DEFAULT 0,
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `type`, `description`, `online_payable`, `available_on_invoice`, `minimum_payment_amount`, `settings`, `deleted`) VALUES
(1, 'Cash', 'custom', 'Cash payments', 0, 0, 0, '', 0),
(2, 'Stripe', 'stripe', 'Stripe online payments', 1, 0, 0, 'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}', 0),
(3, 'PayPal Payments Standard', 'paypal_payments_standard', 'PayPal Payments Standard Online Payments', 1, 0, 0, 'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `transaction_id` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `created_by`, `created_at`, `description`, `post_id`, `share_with`, `files`, `deleted`) VALUES
(1, 1, '2017-05-13 17:11:12', 'test', 0, '', 'a:0:{}', 1),
(2, 2, '2017-05-13 17:11:40', 'galau ya?\n', 1, '', 'a:0:{}', 0),
(3, 1, '2017-05-13 17:27:21', 'tidak bang', 1, '', 'a:0:{}', 0),
(4, 4, '2017-05-13 17:27:22', 'lol', 1, '', 'a:0:{}', 0),
(5, 1, '2017-05-13 17:27:35', 'halo', 1, '', 'a:0:{}', 0),
(6, 2, '2017-05-13 17:27:48', 'lagi apa bro?\n', 1, '', 'a:0:{}', 0),
(7, 2, '2017-05-13 17:35:34', 'malam minggu pada dimana?\n', 0, '', 'a:0:{}', 1),
(8, 1, '2017-05-13 17:35:47', 'dikosan aja', 7, '', 'a:0:{}', 0),
(9, 3, '2017-05-13 17:35:57', 'di samping kamu', 7, '', 'a:0:{}', 0),
(10, 8, '2017-05-14 10:01:19', 'Laper niih :(', 0, '', 'a:0:{}', 1),
(11, 1, '2017-05-14 12:59:58', 'makan sate', 10, '', 'a:0:{}', 0),
(12, 1, '2017-09-12 03:45:00', 'syukuran', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:56:\"timeline_post_file59b7583b103c6-Syukuran_170912_0013.jpg\";s:9:\"file_size\";s:7:\"1085590\";}}', 0),
(13, 1, '2017-09-12 03:45:03', 'syukuran', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"1085590\";}}', 1),
(14, 5, '2017-09-12 14:50:37', 'lapar bang', 12, '', 'a:0:{}', 0),
(15, 8, '2017-09-12 16:25:08', 'unch unch', 12, '', 'a:0:{}', 0),
(16, 23, '2017-09-12 16:25:33', 'Makan Bang', 12, '', 'a:0:{}', 0),
(17, 3, '2017-09-12 16:42:06', 'Dulu', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:44:\"timeline_post_file59b80e5a371ae-IMG_7090.JPG\";s:9:\"file_size\";s:7:\"6582061\";}}', 0),
(18, 1, '2017-09-12 18:46:24', 'sekarang? hehehe', 17, '', 'a:0:{}', 0),
(19, 5, '2017-09-13 09:32:37', 'lirik kka ee', 17, '', 'a:0:{}', 0),
(20, 3, '2017-09-16 13:22:02', 'Rapat mingguan 4nesia', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:59:\"timeline_post_file59bd257a324b6-IMG_20170916_202021_HDR.jpg\";s:9:\"file_size\";s:7:\"1108970\";}}', 0),
(21, 1, '2017-10-07 15:31:08', 'LARAVEL 101', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:52:\"timeline_post_file59d8f33ccb78e-workshop-laravel.jpg\";s:9:\"file_size\";s:6:\"140365\";}}', 0),
(22, 14, '2017-11-07 06:53:13', 'Kursus Online Gratis : Udemy\n\nTeam Management\nhttps://www.udemy.com/operations-management/\nhttps://www.udemy.com/growth-team/\nhttps://www.udemy.com/project-management/\n\nBasic Finance and acounting\nhttps://www.udemy.com/finance-101/\nhttps://www.udemy.com/accounting-in-60-minutes-a-brief-introduction/\nhttps://www.udemy.com/start-up-financial-modeling-for-non-finance-professionals/\n\nMarketing\nhttps://www.udemy.com/digital-marketing-foundation/\n\nSegini dulu, \nRencana mau bikin List Course Gratis lebih banyak\n\nGLHF', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:52:\"timeline_post_file5a0158597ad32-Screenshot--171-.png\";s:9:\"file_size\";s:6:\"551039\";}}', 0),
(23, 2, '2017-12-09 15:32:50', 'Hasil Rapat Mingguan 4nesia 9/12/2017\n\n1. Evaluasi Aplikasi Sidora\n2. Evaluasi Project Antriki\n3. Rancangan Web Breakdown Structure Antriki\n4. Desain Jaket Terbaru 4nesia\n5. Rencana Agenda Akhir Tahun 4nesia (Makan-Makan atau Menginap di Villa)\n6. Evaluasi kinerja anggota 4nesia', 0, '', 'a:7:{i:0;a:2:{s:9:\"file_name\";s:41:\"timeline_post_file5a2c022263a06-88340.jpg\";s:9:\"file_size\";s:6:\"106894\";}i:1;a:2:{s:9:\"file_name\";s:41:\"timeline_post_file5a2c022263b31-88341.jpg\";s:9:\"file_size\";s:6:\"105917\";}i:2;a:2:{s:9:\"file_name\";s:41:\"timeline_post_file5a2c022263c07-88342.jpg\";s:9:\"file_size\";s:6:\"119949\";}i:3;a:2:{s:9:\"file_name\";s:41:\"timeline_post_file5a2c022263cf2-88343.jpg\";s:9:\"file_size\";s:5:\"94794\";}i:4;a:2:{s:9:\"file_name\";s:41:\"timeline_post_file5a2c022263dba-88344.jpg\";s:9:\"file_size\";s:6:\"105164\";}i:5;a:2:{s:9:\"file_name\";s:41:\"timeline_post_file5a2c022263ea2-88345.jpg\";s:9:\"file_size\";s:6:\"102793\";}i:6;a:2:{s:9:\"file_name\";s:41:\"timeline_post_file5a2c022263f93-88346.jpg\";s:9:\"file_size\";s:6:\"124976\";}}', 0),
(24, 1, '2018-02-17 13:55:23', 'siap, mantap', 22, '', 'a:0:{}', 0),
(25, 1, '2018-03-05 18:01:10', 'Basecamp', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:44:\"timeline_post_file5a9d85e633d43-IMG_1408.JPG\";s:9:\"file_size\";s:7:\"7415890\";}}', 0),
(26, 3, '2018-05-16 06:41:21', 'Peserta Internship 2018', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:8:\"16812786\";}}', 1),
(27, 3, '2018-05-17 05:14:29', 'Peserta Intership Program 4nesia 2018', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:37:\"timeline_post_file5afd0fb54455b-7.jpg\";s:9:\"file_size\";s:7:\"1873465\";}}', 1),
(28, 3, '2018-05-17 05:16:31', 'Peserta Internship Program 4nesia 2018', 0, '', 'a:1:{i:0;a:2:{s:9:\"file_name\";s:37:\"timeline_post_file5afd102f6b744-7.jpg\";s:9:\"file_size\";s:7:\"1873465\";}}', 0),
(29, 1, '2018-05-17 21:01:58', 'mantap', 28, '', 'a:0:{}', 0),
(30, 1, '2018-05-17 21:02:59', '1st internship 4nesia', 17, '', 'a:0:{}', 0),
(31, 2, '2018-09-08 14:20:28', '[Hasil Rapat Mingguan 8 September 2018]\nAdapun yang dibicarakan dalam rapat sebagai berikut:\n\n1. Barombong estimasi 1 bulan versi alpha sebelum registrasi pencairan dana.\n2. UNISMUH Palu dokumennya harus lengkap sebelum proses development.\n3. PIP perlu dikontak ulang mengenai teknis administrasi\n4. Kinerja 4nesia harus ditingkatkan lagi mulai Sprint Mingguan pertama dimulai lagi.\n', 0, '', 'a:3:{i:0;a:2:{s:9:\"file_name\";s:37:\"timeline_post_file5b93daaca515c-1.jpg\";s:9:\"file_size\";s:6:\"145758\";}i:1;a:2:{s:9:\"file_name\";s:37:\"timeline_post_file5b93daaca5462-6.jpg\";s:9:\"file_size\";s:6:\"165783\";}i:2;a:2:{s:9:\"file_name\";s:37:\"timeline_post_file5b93daaca5740-4.jpg\";s:9:\"file_size\";s:6:\"115432\";}}', 0),
(32, 2, '2018-09-08 14:48:39', 'NIP 4nesia\nAndi Agus Salim : 9608011001\nMuh. Ridwan : 9408012002\nMuammar : 9310013003\nBaso : 9707014004\nHansa : 9511015005\nHendri : 9604016006\nDhian : 9606017007\nArian : 9805018008\nFikri : 9801019009', 0, '', 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `status` enum('open','completed','hold','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `deadline`, `client_id`, `created_date`, `created_by`, `status`, `labels`, `price`, `starred_by`, `deleted`) VALUES
(1, 'Lapor Maros v1', 'Aplikasi Pelaporan masyarakat tentang kejadian atau kesulitan masyarakat kepada pemerintah kabupaten maros', '2017-02-19', '2017-06-30', 2, '2017-05-13', 4, 'completed', 'Android', 5000000, '', 0),
(2, 'SIDORA Parepare', 'Sistem Informasi Data Olahraga DKOP Parepare', '2017-04-14', '2017-05-21', 15, '2017-05-13', 2, 'open', 'Sistem Informasi', 4000000, '', 0),
(3, 'Aplikasi Kerja Praktek FRI', 'Sistem KP Mahasiswa Fakultas Rekayasa Industri', '2017-02-19', '2017-06-30', 3, '2017-05-13', 2, 'open', 'Website', 0, '', 0),
(4, 'KP Creative & Design', 'Program Kerja:\n1. Video Profile 4nesia\n2. Remake web content 4nesia\n3. Membuat mockup aplikasi\n4. Analisis mengenai kantor & basecamp 4nesia', '2017-05-17', '2017-07-17', 5, '2017-05-17', 3, 'open', '', 0, '', 0),
(5, 'KP Creative & Design', '', '2017-05-17', '2017-07-17', 5, '2017-05-18', 3, 'canceled', '', 0, '', 0),
(6, 'HaloNesia', 'HaloNesia', '2017-05-18', '2017-07-18', 7, '2017-05-20', 4, 'open', 'Website', 0, '', 0),
(7, 'File Proposal', 'Proposal Final v.1', '2017-05-27', NULL, 7, '2017-05-27', 1, 'open', '', 0, '', 0),
(8, 'BPBD WAJO Mobile', '', '2017-01-18', '2017-06-30', 8, '2017-06-17', 1, 'open', '', 0, '', 0),
(9, 'web 4nesia.com V2', 'Upgraded web dan data', '2017-09-12', '2017-09-17', 7, '2017-09-11', 1, 'open', 'Website', 0, '', 0),
(10, 'Live Streaming PareTV', '', '2017-09-12', '2017-11-12', 7, '2017-09-12', 1, 'open', '', 0, '', 0),
(11, 'Wordpress', '', NULL, NULL, 7, '2017-09-12', 1, 'completed', '', 0, '', 0),
(12, 'Workshop Desain dan Kreatif', 'Pelaksanaan kegiatan rutin workshop', '2017-09-16', '2017-09-16', 7, '2017-09-16', 2, 'open', 'Workshop', 0, '', 0),
(13, 'Pengembangan Website 4nesia', '', '2017-09-25', '2017-09-30', 5, '2017-09-25', 2, 'open', '', 0, '', 0),
(14, 'KP 4nesia', '', '2017-09-25', '2017-11-06', 7, '2017-09-25', 2, 'open', '', 0, '', 0),
(15, 'Workshop Laravel', '', '2017-10-07', '2017-10-07', 7, '2017-10-07', 1, 'open', '', 0, '', 0),
(16, 'App Ngantri', 'Sebuah Project Internal 4nesia ', '2017-11-06', '2017-12-23', 7, '2017-11-05', 14, 'open', '', 0, '', 0),
(17, 'SIDORA Mobile', '', NULL, NULL, 1, '2017-11-18', 1, 'open', '', 0, '', 0),
(18, 'Manual Book KPFRI', 'Membuat Panduan Manual Book Aplikasi FRI Telkom University', '2017-11-18', '2017-11-20', 3, '2017-11-18', 2, 'completed', 'Sistem Informasi', 0, '', 0),
(19, 'SIDORA Mobile', '', NULL, NULL, 15, '2017-11-30', 1, 'open', '', 0, '', 0),
(20, 'Divisi Management', '', '2018-01-01', '2018-12-30', 7, '2018-01-31', 1, 'open', '', 0, '', 0),
(21, 'Business Plan', '', NULL, NULL, 7, '2018-02-07', 1, 'open', '', 0, '', 0),
(22, 'Marketing & Sales', '', '2018-02-07', '2018-02-08', 7, '2018-02-07', 3, 'open', '', 0, '', 1),
(23, 'CEO', '', NULL, NULL, 7, '2018-02-07', 1, 'open', '', 0, '', 0),
(24, 'PR', 'Mempelajari Seluk beluk Public Relation', '2018-02-07', '2018-02-11', 7, '2018-02-07', 21, 'open', 'Sistem Informasi', 0, '', 0),
(25, 'Accounting and Finance', 'Department Planning :\n1. Merencanakan dan mengorganisir Keuangan perusahaan\n2. Mengatur Keadaan keuangan salam perusahaan\n3. Merencanakan anggaran income dan expense dalam perusahaan \n4. Membuat laporan dan feedback mengenai keuangan dalam perusahaan\n5. Evaluasi  dan melakuka report mengenai kinerja selama satu periode ', '2018-02-07', '2018-12-31', 7, '2018-02-07', 23, 'open', '', 0, '', 0),
(26, 'Operasional', 'Tugas Operasional:\n - Mengelola dan meningkatkan efektifitas dan efisiensi operasi perusahaan\n - Memangkas habis biaya-biaya operasi yang sama sekali tidak menguntungkan \n   perusahaan\n - Meneliti teknologi baru dan metode alternatif efisiensi\n - Mengawasi produksi barang atau penyediaan jasa\n - Mengawasi tata letak operasional , persediaan dan distribusi barang\n - Membuat atau merencanakan pengembangan operasi dalam jangka pendek \n    maupun panjang\n - Meningkatkan sistem operasional, proses dan kebijakan dalam mendukung visi \n   dan misi perusahaan\n - Melakukan pertemuan rutin dengan direktur eksekutif secara berkala\n - Melakukan pencairan cek untuk biaya agen\n - Mengatur anggaran dan mengelola biaya\n - Mengelola program jaminan kualitas', '2018-02-07', '2018-02-08', 7, '2018-02-07', 2, 'open', '', 0, '', 0),
(27, 'Web Developer', 'Target progress mingguan.', '2018-02-10', '2018-05-01', 7, '2018-02-10', 16, 'open', '', 0, '', 0),
(28, 'UI/UX Designer', 'UI Design and Research', '2018-02-11', '2018-02-28', 7, '2018-02-10', 8, 'open', 'Android', 0, '', 0),
(29, 'Marketing & Sales', '', '2018-02-08', '2018-03-11', 7, '2018-02-12', 3, 'open', '', 0, '', 0),
(30, 'Proposal PPDB', 'Dinas Pendidikan Kabupaten Wajo', '2018-02-14', '2018-02-15', 7, '2018-02-14', 3, 'open', '', 0, '', 0),
(31, 'Prototype SIAKAD UIN Antasari', 'Prototype SIAKAD UIN Antasari', '2018-02-21', '2018-02-06', 2, '2018-02-17', 8, 'open', 'Sistem Informasi', 0, '', 0),
(32, 'Portal Sistem Informasi UIN ANTASARI', 'Fitur :\nLKD UIN Antasari\nSIAKAD\nLPM Dashboard', '2018-03-05', '2018-10-20', 26, '2018-02-17', 1, 'open', '', 0, ',:1:,:23:', 0),
(33, '4nesia Internship Program', 'Program Pelaksanaan Kerja Praktek Bagi Mahasiswa di 4nesia', '2018-05-22', '2018-06-05', 7, '2018-04-03', 23, 'open', 'Kerja Praktek', 0, '', 0),
(34, 'Progress Mingguan', 'Laporan Kerjaan Mingguan', '2018-04-28', '2018-12-31', 27, '2018-04-28', 1, 'open', '', 0, ',:1:', 0),
(35, 'Hasil Rapat Mingguan', 'Hasil Rapat Setiap malam minggu', '2018-04-28', '2018-12-31', 27, '2018-04-28', 1, 'open', '', 0, '', 0),
(36, 'KP UI/UX & Content Design', 'Kerja Praktek divisi UI/UX dan Content Design', '2018-05-14', '2018-07-10', 27, '2018-05-15', 8, 'open', 'Kerja Praktek', 0, '', 0),
(37, 'Pembekalan Analyst', 'Belajar Belajar Belajar', '2018-05-14', '2018-05-19', 27, '2018-05-15', 14, 'open', 'Workshop', 0, '', 0),
(38, 'Project COO', 'Project Internal', '2018-05-15', '2018-06-15', 27, '2018-05-17', 1, 'open', '', 0, '', 0),
(39, 'Maintenance Website UIN Antasari', '1.Untuk tampilan berita, kalo bisa dapat dilihat berita lainnya. dan bisa dilihat sesuai bulan.\n\n2.Untuk layout berita belum ada pengaturan paragraf pos rata kanan kiri.\n\n3.Ditambahkan baca lainnya dan berita lainnya.(home &post).\n\n4.Memasukkan berita2 lama kemaren minta tolong carikan solusinya.\n\n5.Sub header terbaru dan background nya dihilangkan.\n', '2018-05-29', '2018-06-05', 26, '2018-05-21', 1, 'open', '', 0, '', 0),
(40, '4nesia Internship Program 2018-Project KP ( HaloNesia)', '4nesia Product Development ', '2018-05-27', '2018-08-01', 27, '2018-05-26', 23, 'open', '', 0, '', 0),
(41, '4nesia Internship Program 2018-Project KP (Prototype SIAKAD Mobile)', 'Layout & Prototyping SIAKAD Mobile', '2018-05-27', '2018-08-01', 27, '2018-05-26', 23, 'open', '', 0, '', 0),
(42, '4nesia Internship Program 2018-Project KP (4nesia Strategy Bussiness)', 'Rancangan dan Analisis Strategi Bisnis di 4nesia', '2018-05-27', '2018-08-01', 27, '2018-05-26', 23, 'open', 'Kerja Praktek', 0, '', 0),
(43, 'SIAKAD & SIMPEG Unismuh Palu', 'Sistem informasi akademik & pegawai UNISMUH PALU', '2018-07-09', '2019-05-07', 30, '2018-06-10', 1, 'open', 'Sistem Informasi', 141810000, ',:1:', 0),
(44, 'SIDORA Maintenance 2018', '', '2018-06-27', '2018-07-04', 27, '2018-06-27', 1, 'open', '', 0, '', 0),
(45, 'UPGRADE 4NESIA 2018', 'Project Internal', '2018-07-04', '2018-08-04', 27, '2018-07-04', 1, 'open', '', 0, '', 0),
(46, 'Aplikasi Survey dan Pengaduan BP2IP', 'Aplikasi mobile dan android', '2018-07-16', '2018-10-29', 27, '2018-07-09', 1, 'open', '', 170000000, '', 0),
(47, 'bp2ip barombong', '', '2018-07-13', '2018-08-13', 27, '2018-07-13', 1, 'open', '', 0, '', 0),
(48, 'PORTAL SISTEM INFORMASI AKADEMIK UNIVERSITAS MUHAMMADIYAH PALU', '', '2018-12-01', '2019-06-30', 30, '2018-08-22', 23, 'open', '', 140000000, '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_comments`
--

CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `comment_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `customer_feedback_id` int(11) NOT NULL DEFAULT 0,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `project_comments`
--

INSERT INTO `project_comments` (`id`, `created_by`, `created_at`, `description`, `project_id`, `comment_id`, `task_id`, `file_id`, `customer_feedback_id`, `files`, `deleted`) VALUES
(1, 9, '2017-05-30 08:58:07', 'https://github.com/megaseptian/Web-Admin-HaloNesia.git', 6, 0, 0, 0, 0, 'a:0:{}', 0),
(2, 13, '2017-06-01 11:43:24', 'Invit ka dlu ke project githubnya sodara, akun github ku harydj', 6, 1, 0, 0, 0, 'a:0:{}', 0),
(3, 17, '2017-06-03 08:11:01', 'https://gitlab.com/imamfa/api-hellonesia', 6, 0, 0, 0, 0, 'a:0:{}', 0),
(4, 1, '2017-06-12 01:37:07', 'mantap', 6, 3, 0, 0, 0, 'a:0:{}', 0),
(5, 1, '2017-06-12 01:37:28', 'invite ka juga nah :D', 6, 1, 0, 0, 0, 'a:0:{}', 0),
(6, 1, '2017-06-15 15:06:29', 'apa sdh di upload di youtube?', 4, 0, 4, 0, 0, 'a:0:{}', 0),
(7, 1, '2017-06-15 15:06:29', 'apa sdh di upload di youtube?', 4, 0, 4, 0, 0, 'a:0:{}', 1),
(8, 4, '2017-06-24 16:45:56', 'ada status dmn ? ', 1, 0, 20, 0, 0, 'a:0:{}', 0),
(9, 1, '2017-07-04 12:50:48', 'FTP Username: 4nesia@beta.4nesia.com\nFTP server: ftp.4nesia.com\nFTP & explicit FTPS port:  21\nFTP Password : kp2017bandung', 4, 0, 0, 0, 0, 'a:0:{}', 0),
(10, 1, '2017-09-12 03:10:29', 'Username: sidorapa\nPassword: nGrJe73f30\n\nControl Panel URL: http://139.99.7.208:2082/\nKetika domain sudah aktif, anda dapat mengaksesnya dengan http://www.sidora.pareparekota.go.id:2082/', 2, 0, 0, 0, 0, 'a:0:{}', 0),
(11, 1, '2017-09-12 03:35:32', 'referensi \nhttp://dispora.jabarprov.go.id/webdb/', 2, 0, 0, 0, 0, 'a:0:{}', 0),
(12, 8, '2017-09-12 14:44:25', 'Akun CPanel 4nesia\n\nUsername: nesiacom\nPassword: xt9792flEY', 11, 0, 0, 0, 0, 'a:0:{}', 0),
(13, 1, '2017-09-14 05:18:57', 'bagaimana progress?', 9, 0, 0, 0, 0, 'a:0:{}', 0),
(14, 1, '2017-09-19 06:52:39', 'KP done ya', 6, 0, 0, 0, 0, 'a:0:{}', 0),
(15, 1, '2017-10-04 15:04:22', 'upload Screenshotnya ya', 14, 0, 47, 0, 0, 'a:0:{}', 0),
(16, 1, '2017-10-30 15:57:07', 'gambar', 2, 0, 55, 0, 0, 'a:2:{i:0;a:2:{s:9:\"file_name\";s:72:\"project_comment_file59f74bd2cbbc7-Screen-Shot-2017-10-30-at-22.53.13.png\";s:9:\"file_size\";s:6:\"631853\";}i:1;a:2:{s:9:\"file_name\";s:72:\"project_comment_file59f74bd31201d-Screen-Shot-2017-10-30-at-22.53.21.png\";s:9:\"file_size\";s:6:\"659555\";}}', 0),
(17, 1, '2017-10-30 15:58:59', 'gambar', 2, 0, 56, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:72:\"project_comment_file59f74c43303b6-Screen-Shot-2017-10-30-at-22.52.52.png\";s:9:\"file_size\";s:6:\"638086\";}}', 0),
(18, 14, '2017-11-08 22:39:09', 'http://bit.ly/usecaseAntri', 16, 0, 58, 0, 0, 'a:0:{}', 1),
(19, 14, '2017-11-08 23:29:44', 'http://bit.ly/ERDantri', 16, 0, 59, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:48:\"project_comment_file5a03936875128-erdNGANTRI.PNG\";s:9:\"file_size\";s:5:\"34832\";}}', 0),
(20, 14, '2017-11-08 23:30:33', 'http://bit.ly/usecaseAntri', 16, 0, 58, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:45:\"project_comment_file5a039399cc744-usecase.PNG\";s:9:\"file_size\";s:5:\"65110\";}}', 0),
(21, 8, '2017-11-18 13:27:13', 'https://www.figma.com/file/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri', 16, 0, 61, 0, 0, 'a:0:{}', 0),
(22, 8, '2017-11-26 14:15:13', 'Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=61:87', 16, 0, 61, 0, 0, 'a:0:{}', 1),
(23, 8, '2017-11-26 14:15:35', 'Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=61:87', 16, 0, 61, 0, 0, 'a:0:{}', 1),
(24, 8, '2017-11-26 14:20:14', 'Updated Link Prototype: https://www.figma.com/proto/a9pgocTVMXy8L6VUuRy4QHi6/Ngantri?scaling=contain&node-id=53:24', 16, 0, 61, 0, 0, 'a:0:{}', 0),
(25, 1, '2018-02-22 07:10:56', 'aa', 2, 0, 0, 0, 2, 'a:0:{}', 1),
(26, 1, '2018-02-22 07:10:58', 'aa', 2, 0, 0, 0, 2, 'a:0:{}', 1),
(27, 1, '2018-03-05 15:13:58', 'Ini username sama password database siakad\nUsername : root \npasswrd : k1kic4k', 32, 0, 0, 0, 0, 'a:0:{}', 0),
(28, 1, '2018-03-05 17:31:58', 'Draft Project Charter ', 32, 0, 0, 0, 32, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:71:\"project_comment_file5a9d7f0e3cb6b-LKD-UIN-ANTASARI-project-charter.docx\";s:9:\"file_size\";s:6:\"195202\";}}', 0),
(29, 1, '2018-03-05 18:43:23', 'https://siakad.4nesia.com/\n\nAkses Mahasiswa : \nusername : mhs\npassword : mhs\n\n\nAkses Dosen : \nusername : dosen\npassword : dosen\n*baru input LKD saja\n\nAkses Super Admin : \nusername : admin\npassword : admin\n*Master Pusat\n*Civitas\n*PMB Konfigurasi\n', 32, 0, 0, 0, 0, 'a:0:{}', 0),
(30, 1, '2018-04-28 14:56:44', 'Hasil Rapat Mingguan 28/04/2018\n\n1.Internship Program:\n* Firts Meet (BCH atau Makrab)\n* Wawancara Peserta tambahan (Fakhry & Zayeed)\n* Baju Intern 2018 \n\n2.Status Project UIN Antasari\n3. Follow up UNISMUH PALU\n4. Peningkatan Kinerja Personel 4nesia sesuai fashion/jobdesk\n\ntambahan : \n130k beli template SOP IT\n150k 1 bulan Langganan Jurnal (laporan akun)\nLaporan 1 tahun pph done\n\n\n', 35, 0, 0, 0, 0, 'a:0:{}', 0),
(31, 1, '2018-04-28 15:03:06', 'Foto', 35, 30, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"5771875\";}}', 0),
(32, 1, '2018-04-28 15:42:13', 'LAPOR Minggu ini yang dikerjakan 28/04/2018\n\n1.template SOP 4nesia\n2.Lapor pajak bulanan dan tahunan 4nesia\n3. clean reset hosting 4nesia\n4. Laporan akun untuk pajak', 34, 0, 0, 0, 0, 'a:0:{}', 0),
(33, 1, '2018-05-05 14:35:07', 'Hasil Rapat 05/05/2018\n\nPeserta : \nBaso\nRidwan\nAmar\nArian\nDian\nHendri\nHansa\nFikri\n\n\nKP :\nHendri urus tempat meeting BCH\nBaju KP \n\nProject UIN:\nGaji\n\nInternal :\nPeningkatan Kinerja dan perusahaan\n', 35, 0, 0, 0, 0, 'a:0:{}', 0),
(34, 46, '2018-05-08 04:35:20', 'Halo Mas Andi,\ntadi baru rapat mengenai host to host,\n\nmereka minta yang didahulukan mengenai pembayaran ukt dan krs mahasiswa\n\nsaya sertakan screenshoot pembicaraan dari bank BRI untuk mengkoneksikan servernya ke aplikasi ukt.\nlink UKT dan pasword sudah saya sertakan di gambar, mohon di lihat.\n\nTerimakasih', 32, 0, 0, 0, 32, 'a:5:{i:0;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5af1290815e5a-bris-1.jpg\";s:9:\"file_size\";s:6:\"172755\";}i:1;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5af129081603f-bris-2.jpg\";s:9:\"file_size\";s:6:\"179042\";}i:2;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5af1290816172-bris-3.jpg\";s:9:\"file_size\";s:6:\"156146\";}i:3;a:2:{s:9:\"file_name\";s:76:\"project_comment_file5af1290816286-WhatsApp-Image-2018-05-08-at-11.52.42.jpeg\";s:9:\"file_size\";s:6:\"123956\";}i:4;a:2:{s:9:\"file_name\";s:76:\"project_comment_file5af1290816382-WhatsApp-Image-2018-05-08-at-10.44.32.jpeg\";s:9:\"file_size\";s:5:\"43947\";}}', 0),
(35, 1, '2018-05-08 12:54:36', 'siap mas, langsung di follwup', 32, 34, 0, 0, 32, 'a:0:{}', 0),
(36, 46, '2018-05-09 14:55:55', 'BRI sama dev. app nya sedang mengkoneksikan server mas', 32, 34, 0, 0, 32, 'a:3:{i:0;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5af30bfbac876-Screenmemo_2018-05-09-22-49-07.png\";s:9:\"file_size\";s:6:\"789358\";}i:1;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5af30bfbe9207-Screenmemo_2018-05-09-22-50-01.png\";s:9:\"file_size\";s:6:\"962755\";}i:2;a:2:{s:9:\"file_name\";s:57:\"project_comment_file5af30bfbe9691-IMG-20180508-WA0012.jpg\";s:9:\"file_size\";s:6:\"173959\";}}', 0),
(37, 46, '2018-05-09 15:32:34', 'ini link data dosen 2018\nhttps://drive.google.com/a/uin-antasari.ac.id/file/d/1xF8oIOUQdh8H34WM9PLeZqqzlgyr8Nqf/view?usp=drivesdk', 32, 0, 0, 0, 32, 'a:0:{}', 0),
(38, 46, '2018-05-09 15:34:55', 'ini data file ijazah dosen dll\nhttps://drive.google.com/folderview?id=1ZY9901lsDRdVX-HFiPJq6_bF3FEBxli9', 32, 0, 0, 0, 32, 'a:0:{}', 0),
(39, 46, '2018-05-09 15:36:34', 'ini data mahasiswa, aktifitas kegiatan mhs dan yudisium\nhttps://drive.google.com/folderview?id=1qCrrpotQ84i1QGNeNtLa1OtwpfGHhRpE', 32, 0, 0, 0, 32, 'a:0:{}', 0),
(40, 8, '2018-05-15 05:55:57', 'File Materi Pertemuan 1 (Intro)\n\n', 36, 0, 0, 0, 0, 'a:3:{i:0;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5afa766db0bf9-Color-Theory.pdf\";s:9:\"file_size\";s:6:\"913869\";}i:1;a:2:{s:9:\"file_name\";s:42:\"project_comment_file5afa766dee225-Grid.pdf\";s:9:\"file_size\";s:7:\"1452811\";}i:2;a:2:{s:9:\"file_name\";s:52:\"project_comment_file5afa766dee837-UI-Fundamental.pdf\";s:9:\"file_size\";s:6:\"378953\";}}', 0),
(41, 54, '2018-05-15 06:12:18', 'Link Project: https://www.figma.com/file/fHngR9t1eeSrhccwvrHtbVfX/Untitled', 36, 0, 0, 0, 0, 'a:3:{i:0;a:2:{s:9:\"file_name\";s:46:\"project_comment_file5afa7a421441b-Home--1-.png\";s:9:\"file_size\";s:5:\"11287\";}i:1;a:2:{s:9:\"file_name\";s:42:\"project_comment_file5afa7a42144f7-Home.png\";s:9:\"file_size\";s:6:\"184863\";}i:2;a:2:{s:9:\"file_name\";s:43:\"project_comment_file5afa7a4214651-Login.png\";s:9:\"file_size\";s:6:\"192956\";}}', 0),
(42, 55, '2018-05-15 07:53:30', 'Poster ', 36, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:8:\"20759408\";}}', 1),
(43, 55, '2018-05-15 08:01:18', 'Poster ', 36, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"4227617\";}}', 1),
(44, 55, '2018-05-15 09:09:28', 'Poster', 36, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"4227617\";}}', 1),
(45, 8, '2018-05-16 03:59:03', 'Bellanofi Onepage Poster1 (Mountain Climbing)\n', 36, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:47:\"project_comment_file5afbac87e8d0d-posterfix.png\";s:9:\"file_size\";s:6:\"970342\";}}', 0),
(46, 8, '2018-05-16 04:26:49', 'https://www.figma.com/file/JTEgS8o2ia5t8zc2ClOSyEBN/Mywallet (Link Mockup Figma)', 36, 0, 0, 0, 0, 'a:0:{}', 0),
(47, 54, '2018-05-16 06:35:21', 'Sketching Android Apps', 36, 0, 0, 0, 0, 'a:2:{i:0;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5afbd129ca279-319646.jpg\";s:9:\"file_size\";s:6:\"109769\";}i:1;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5afbd129ca3ba-319647.jpg\";s:9:\"file_size\";s:5:\"80702\";}}', 0),
(48, 55, '2018-05-16 06:52:56', 'Sample model Logo Android Apps', 36, 0, 0, 0, 0, 'a:4:{i:0;a:2:{s:9:\"file_name\";s:39:\"project_comment_file5afbd5485ba28-4.jpg\";s:9:\"file_size\";s:5:\"32206\";}i:1;a:2:{s:9:\"file_name\";s:39:\"project_comment_file5afbd5485bb11-1.jpg\";s:9:\"file_size\";s:5:\"51547\";}i:2;a:2:{s:9:\"file_name\";s:39:\"project_comment_file5afbd5485bbd2-2.jpg\";s:9:\"file_size\";s:5:\"41171\";}i:3;a:2:{s:9:\"file_name\";s:39:\"project_comment_file5afbd5485bc52-3.jpg\";s:9:\"file_size\";s:5:\"55753\";}}', 0),
(49, 8, '2018-05-16 06:57:24', 'Nice work  (y)', 36, 48, 0, 0, 0, 'a:0:{}', 0),
(50, 8, '2018-05-16 06:57:34', 'Good work (y)', 36, 47, 0, 0, 0, 'a:0:{}', 0),
(51, 3, '2018-05-16 06:58:57', 'good\n\n', 36, 48, 0, 0, 0, 'a:0:{}', 0),
(52, 3, '2018-05-16 06:58:58', 'good\n\n', 36, 48, 0, 0, 0, 'a:0:{}', 1),
(53, 3, '2018-05-16 06:59:01', 'good\n\n', 36, 48, 0, 0, 0, 'a:0:{}', 1),
(54, 3, '2018-05-16 06:59:11', 'good', 36, 48, 0, 0, 0, 'a:0:{}', 1),
(55, 56, '2018-05-16 17:31:34', 'Project 1 (Recipes On Hand)', 36, 0, 0, 0, 0, 'a:3:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:8:\"17952800\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"3493830\";}i:2;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"2441190\";}}', 1),
(56, 56, '2018-05-16 17:40:53', 'Project 1 (Recipes On Hand)', 36, 0, 0, 0, 0, 'a:3:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:8:\"17952800\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"3493830\";}i:2;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"2441190\";}}', 0),
(57, 54, '2018-05-17 15:07:50', 'Mock Up Result', 36, 0, 0, 0, 0, 'a:10:{i:0;a:2:{s:9:\"file_name\";s:46:\"project_comment_file5afd9ac5d1768-Calendar.png\";s:9:\"file_size\";s:5:\"16030\";}i:1;a:2:{s:9:\"file_name\";s:52:\"project_comment_file5afd9ac5d1849-Details-Income.png\";s:9:\"file_size\";s:5:\"23181\";}i:2;a:2:{s:9:\"file_name\";s:57:\"project_comment_file5afd9ac5d1913-Details-Job-Vacancy.png\";s:9:\"file_size\";s:6:\"133717\";}i:3;a:2:{s:9:\"file_name\";s:49:\"project_comment_file5afd9ac602dd6-Fill-Income.png\";s:9:\"file_size\";s:5:\"16338\";}i:4;a:2:{s:9:\"file_name\";s:51:\"project_comment_file5afd9ac602e96-Fill-Reminder.png\";s:9:\"file_size\";s:5:\"10965\";}i:5;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5afd9ac602f2d-Graph-Income.png\";s:9:\"file_size\";s:5:\"53378\";}i:6;a:2:{s:9:\"file_name\";s:42:\"project_comment_file5afd9ac602fea-home.png\";s:9:\"file_size\";s:5:\"25182\";}i:7;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5afd9ac60308a-income.png\";s:9:\"file_size\";s:5:\"35679\";}i:8;a:2:{s:9:\"file_name\";s:49:\"project_comment_file5afd9ac603186-job-vacancy.png\";s:9:\"file_size\";s:5:\"62296\";}i:9;a:2:{s:9:\"file_name\";s:51:\"project_comment_file5afd9ac603252-List-Reminder.png\";s:9:\"file_size\";s:5:\"25138\";}}', 0),
(58, 54, '2018-05-17 15:10:58', 'User Test Result', 36, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:48:\"project_comment_file5afd9b8224f57-USER-TEST.xlsx\";s:9:\"file_size\";s:4:\"9456\";}}', 0),
(59, 55, '2018-05-18 04:06:34', 'Poster MyWallet', 36, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:52:\"project_comment_file5afe514a5b213-posterMywalle2.png\";s:9:\"file_size\";s:7:\"2040296\";}}', 0),
(60, 46, '2018-05-21 04:45:31', 'ini update koneksi server ke app h2h Mas Andi', 32, 0, 0, 0, 32, 'a:9:{i:0;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee3383e4-Screenmemo_2018-05-21-12-42-08.png\";s:9:\"file_size\";s:6:\"968233\";}i:1;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee37cb94-Screenmemo_2018-05-21-12-41-57.png\";s:9:\"file_size\";s:7:\"1057601\";}i:2;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee37d6a2-Screenmemo_2018-05-21-12-41-46.png\";s:9:\"file_size\";s:7:\"1149992\";}i:3;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee37ddd0-Screenmemo_2018-05-21-12-41-28.png\";s:9:\"file_size\";s:7:\"1107117\";}i:4;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee8d77f3-Screenmemo_2018-05-21-12-40-47.png\";s:9:\"file_size\";s:6:\"870226\";}i:5;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee8d7bc8-Screenmemo_2018-05-21-12-40-33.png\";s:9:\"file_size\";s:6:\"876348\";}i:6;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee8d8011-Screenmemo_2018-05-21-12-40-13.png\";s:9:\"file_size\";s:6:\"853677\";}i:7;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024ee8d857d-Screenmemo_2018-05-21-12-40-01.png\";s:9:\"file_size\";s:6:\"998823\";}i:8;a:2:{s:9:\"file_name\";s:68:\"project_comment_file5b024eeb7fe3b-Screenmemo_2018-05-21-12-35-30.png\";s:9:\"file_size\";s:7:\"1030745\";}}', 0),
(61, 46, '2018-05-21 04:45:31', 'ini update koneksi server ke app h2h Mas Andi', 32, 0, 0, 0, 32, 'a:9:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"968233\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"1057601\";}i:2;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"1149992\";}i:3;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"1107117\";}i:4;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"870226\";}i:5;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"876348\";}i:6;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"853677\";}i:7;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"998823\";}i:8;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"1030745\";}}', 0),
(62, 46, '2018-05-21 04:50:57', 'ini format yg akan dikirimkan ke siakad', 32, 0, 0, 0, 32, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:52:\"project_comment_file5b0250319843f-format-va-uin.xlsx\";s:9:\"file_size\";s:5:\"11016\";}}', 0),
(63, 1, '2018-05-21 14:20:59', 'reference http://www.uinjkt.ac.id/', 39, 0, 0, 0, 0, 'a:4:{i:0;a:2:{s:9:\"file_name\";s:78:\"project_comment_file5b02d5cbc528f-WhatsApp-Image-2018-05-21-at-8.33.27-PM.jpeg\";s:9:\"file_size\";s:5:\"58841\";}i:1;a:2:{s:9:\"file_name\";s:78:\"project_comment_file5b02d5cbc53a8-WhatsApp-Image-2018-05-21-at-8.41.50-AM.jpeg\";s:9:\"file_size\";s:5:\"43846\";}i:2;a:2:{s:9:\"file_name\";s:78:\"project_comment_file5b02d5cbc5479-WhatsApp-Image-2018-05-21-at-8.42.59-AM.jpeg\";s:9:\"file_size\";s:5:\"46314\";}i:3;a:2:{s:9:\"file_name\";s:78:\"project_comment_file5b02d5cbc5531-WhatsApp-Image-2018-05-21-at-8.47.52-AM.jpeg\";s:9:\"file_size\";s:5:\"29245\";}}', 0),
(64, 1, '2018-05-21 15:46:51', 'silahkan di cek mas', 39, 0, 0, 0, 39, 'a:0:{}', 0),
(65, 8, '2018-05-28 00:25:41', 'Role Users:\n1. Mahasiswa\n2. Dosen (Dosen Wali, Dosen Tetap, Dosen LB)\n3. Kaprodi\n4. Dekan\n5. Pimpinan Kampus (Rektor, Warek I-IV) ', 41, 0, 0, 0, 0, 'a:0:{}', 0),
(66, 8, '2018-05-28 00:31:32', 'Khusus buat tim UI Designer:\n1.Untuk design UI android App wajib menggunakan material design\n2. Gunakan konsep2 design yg sdh diberikan saat pembekalan (e.g. Konsistensi, balance, layered ux, dll). \n3. Disaranin menggunakan tool figma saat design mockup dan prototype', 41, 0, 0, 0, 0, 'a:0:{}', 0),
(67, 46, '2018-06-04 21:29:46', 'Assalamualaikum rekan2, karena jadwal  KRS an dimulai 1 juli saya mohon aplikasi kita sudah dapat dipakai pada masa tersebut. Sekaligis saya minta modul panduan prosedur KRS untuk user (mahasiswa dan admin fakultas) Terimakasih ', 32, 0, 0, 0, 32, 'a:0:{}', 0),
(68, 53, '2018-06-05 08:09:03', 'Ini Use Case Diagram HalloNesia..', 40, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:65:\"project_comment_file5b16451fe6bda-Use-Case-Diagram-HalloNesia.pdf\";s:9:\"file_size\";s:6:\"215909\";}}', 0),
(69, 53, '2018-06-05 08:13:01', 'Versi I', 40, 68, 0, 0, 0, 'a:0:{}', 0),
(70, 1, '2018-06-10 09:07:28', 'work in progress. semoga kekejar mas.', 32, 67, 0, 0, 32, 'a:0:{}', 0),
(71, 46, '2018-06-13 05:27:08', 'Mohon web UIN Antasari dipindahkan ke server fisik di puskom UIN sebelum tgl 20 an, biar terbebas dari biaya hosting ????\nUser dan password OS server user : utipd password : utipd2018#77x\nUser dan password mysql : user : root password : dbutipd2018#\nopen port 22 dan 80\nhttp://202.150.174.151/phpmyadmin', 39, 0, 0, 0, 39, 'a:0:{}', 0),
(72, 1, '2018-06-13 13:37:02', 'oke mas', 39, 71, 0, 0, 39, 'a:0:{}', 0),
(73, 1, '2018-06-13 18:18:03', 'uploading to server uin banjarmasin', 39, 0, 0, 0, 39, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:72:\"project_comment_file5b215fdb9c294-Screen-Shot-2018-06-14-at-02.16.51.png\";s:9:\"file_size\";s:7:\"1797074\";}}', 0),
(74, 1, '2018-06-13 18:22:03', 'mas mohon di tambah batas maksimal upload db nya, krn db webnya ada 59MB lebih', 39, 71, 0, 0, 39, 'a:0:{}', 0),
(75, 1, '2018-06-22 09:14:36', 'Report Progress Project.\n22/06/2018\nin Progress Modul KRS\n\n', 32, 0, 0, 0, 32, 'a:0:{}', 0),
(76, 1, '2018-06-22 09:14:39', 'Report Progress Project.\n22/06/2018\nin Progress Modul KRS\n\n', 32, 0, 0, 0, 32, 'a:0:{}', 1),
(77, 54, '2018-06-26 03:33:57', 'Sketching HaloNesia', 40, 0, 0, 0, 0, 'a:2:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"4058805\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"4263212\";}}', 0),
(78, 1, '2018-07-04 16:13:16', 'https://id.techinasia.com/struktur-dan-fungsi-jabatan-pada-sebuah-startup', 45, 0, 175, 0, 0, 'a:0:{}', 0),
(79, 1, '2018-07-04 16:55:29', 'https://resources.workable.com/ceo-job-description', 45, 0, 175, 0, 0, 'a:0:{}', 0),
(80, 1, '2018-07-04 16:56:45', 'https://resources.workable.com/ceo-job-description', 45, 0, 175, 0, 0, 'a:0:{}', 0),
(81, 1, '2018-07-04 16:57:42', 'https://www.steverrobbins.com/articles/ceojob/', 45, 0, 175, 0, 0, 'a:0:{}', 0),
(82, 1, '2018-07-04 16:58:01', 'https://www.totaljobs.com/careers-advice/job-profile/executive-jobs/ceo-job-description', 45, 0, 175, 0, 0, 'a:0:{}', 0),
(83, 1, '2018-07-04 16:58:25', 'https://www.apaitu.net/2013/2489/tugas-ceo-atau-general-manager/', 45, 0, 175, 0, 0, 'a:0:{}', 0),
(84, 1, '2018-07-04 16:58:46', 'https://kumparan.com/tiwi-top/tugas-umum-chief-executive-officer-ceo', 45, 0, 175, 0, 0, 'a:0:{}', 0),
(85, 1, '2018-07-07 14:19:27', 'List Project yang penawaran :\n2018\n1.Aplikasi Pengaduan PIP =  85jt\n2.Aplikasi Pengaduan dan Survey kepuasan pelanggan BP2IP Barombong = 170jt\n3.Aplikasi SIAKAD UNISMUH = 141 jt\n4.Aplikasi Pangkalan Data DISDIK Wajo = 300-600jt\n\n2019:\n1.SIKO TEMPE = 120jt\n2.COMMAND CENTER DLH = 200jt\n\n', 45, 0, 0, 0, 0, 'a:0:{}', 0),
(86, 54, '2018-07-08 15:18:25', 'Update Sketch HaloNesia', 40, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"4569712\";}}', 0),
(87, 48, '2018-07-08 16:03:35', 'skecth fitur', 41, 0, 0, 0, 0, 'a:3:{i:0;a:2:{s:9:\"file_name\";s:43:\"project_comment_file5b4235d75ae6c-80522.jpg\";s:9:\"file_size\";s:6:\"187888\";}i:1;a:2:{s:9:\"file_name\";s:43:\"project_comment_file5b4235d75b0d8-80523.jpg\";s:9:\"file_size\";s:6:\"226572\";}i:2;a:2:{s:9:\"file_name\";s:43:\"project_comment_file5b4235d75b372-80524.jpg\";s:9:\"file_size\";s:5:\"88810\";}}', 0),
(88, 48, '2018-07-08 16:04:07', 'Use case ', 41, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:46:\"project_comment_file5b4235f794dc5-revisi_3.jpg\";s:9:\"file_size\";s:5:\"64423\";}}', 0),
(89, 48, '2018-07-08 16:04:09', 'Use case ', 41, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"64423\";}}', 1),
(90, 48, '2018-07-08 16:04:54', 'design figma oleh tim Content & Design', 41, 0, 0, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5b423626e0316-siakad.png\";s:9:\"file_size\";s:6:\"969034\";}}', 0),
(91, 54, '2018-07-09 07:41:55', 'Link Desain Interface HaloNesia : https://www.figma.com/file/YTwgO8p3LVvjSodU1p7RGdJn/HaloNesia', 40, 0, 0, 0, 0, 'a:13:{i:0;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5b4311c3a3934-Edit-Profile.png\";s:9:\"file_size\";s:5:\"27498\";}i:1;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5b4311c3a3d2f-Home-1.png\";s:9:\"file_size\";s:5:\"22374\";}i:2;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5b4311c3a3e55-Home-2.png\";s:9:\"file_size\";s:5:\"22358\";}i:3;a:2:{s:9:\"file_name\";s:54:\"project_comment_file5b4311c3a3f5d-Location-Details.png\";s:9:\"file_size\";s:6:\"191303\";}i:4;a:2:{s:9:\"file_name\";s:51:\"project_comment_file5b4311c3d5c6a-Location-Menu.png\";s:9:\"file_size\";s:5:\"31483\";}i:5;a:2:{s:9:\"file_name\";s:46:\"project_comment_file5b4311c3d5dc8-Location.png\";s:9:\"file_size\";s:6:\"134152\";}i:6;a:2:{s:9:\"file_name\";s:43:\"project_comment_file5b4311c3d5f95-Login.png\";s:9:\"file_size\";s:5:\"12214\";}i:7;a:2:{s:9:\"file_name\";s:42:\"project_comment_file5b4311c3d608a-Maps.png\";s:9:\"file_size\";s:6:\"131058\";}i:8;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5b4311c3d6249-Post-Details.png\";s:9:\"file_size\";s:6:\"190975\";}i:9;a:2:{s:9:\"file_name\";s:42:\"project_comment_file5b4311c3d6453-Post.png\";s:9:\"file_size\";s:6:\"140226\";}i:10;a:2:{s:9:\"file_name\";s:45:\"project_comment_file5b4311c3d660a-Profile.png\";s:9:\"file_size\";s:5:\"49764\";}i:11;a:2:{s:9:\"file_name\";s:45:\"project_comment_file5b4311c3d674c-Sign-Up.png\";s:9:\"file_size\";s:5:\"14494\";}i:12;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5b4311c3d6860-SplashScreen.png\";s:9:\"file_size\";s:4:\"9925\";}}', 0),
(92, 54, '2018-07-09 07:48:28', 'Skecthing', 40, 0, 178, 0, 0, 'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:7:\"4569712\";}}', 0),
(93, 54, '2018-07-09 07:51:51', 'Implementasi Sketsa dengan menggunakan Figma ', 40, 0, 179, 0, 0, 'a:13:{i:0;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5b431417c5bcd-Edit-Profile.png\";s:9:\"file_size\";s:5:\"27498\";}i:1;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5b431417c5d39-Home-1.png\";s:9:\"file_size\";s:5:\"22374\";}i:2;a:2:{s:9:\"file_name\";s:44:\"project_comment_file5b431417c5e3e-Home-2.png\";s:9:\"file_size\";s:5:\"22358\";}i:3;a:2:{s:9:\"file_name\";s:54:\"project_comment_file5b431417c5f3c-Location-Details.png\";s:9:\"file_size\";s:6:\"191303\";}i:4;a:2:{s:9:\"file_name\";s:51:\"project_comment_file5b431417c6144-Location-Menu.png\";s:9:\"file_size\";s:5:\"31483\";}i:5;a:2:{s:9:\"file_name\";s:46:\"project_comment_file5b431417c624e-Location.png\";s:9:\"file_size\";s:6:\"134152\";}i:6;a:2:{s:9:\"file_name\";s:43:\"project_comment_file5b431417c63e3-Login.png\";s:9:\"file_size\";s:5:\"12214\";}i:7;a:2:{s:9:\"file_name\";s:42:\"project_comment_file5b431417c64e4-Maps.png\";s:9:\"file_size\";s:6:\"131058\";}i:8;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5b431417c667e-Post-Details.png\";s:9:\"file_size\";s:6:\"190975\";}i:9;a:2:{s:9:\"file_name\";s:42:\"project_comment_file5b431417c6859-Post.png\";s:9:\"file_size\";s:6:\"140226\";}i:10;a:2:{s:9:\"file_name\";s:45:\"project_comment_file5b431417c6a02-Profile.png\";s:9:\"file_size\";s:5:\"49764\";}i:11;a:2:{s:9:\"file_name\";s:45:\"project_comment_file5b431417c6b28-Sign-Up.png\";s:9:\"file_size\";s:5:\"14494\";}i:12;a:2:{s:9:\"file_name\";s:50:\"project_comment_file5b431417c6c15-SplashScreen.png\";s:9:\"file_size\";s:4:\"9925\";}}', 0),
(94, 54, '2018-07-09 07:52:26', 'Link Desain Interface Figma : https://www.figma.com/file/YTwgO8p3LVvjSodU1p7RGdJn/HaloNesia', 40, 0, 179, 0, 0, 'a:0:{}', 0),
(95, 1, '2018-07-20 07:53:29', 'mantap @[Hansa Mustada :14] ', 45, 0, 180, 0, 0, 'a:0:{}', 0),
(96, 8, '2018-09-05 16:08:09', 'Done pending, edit data tidak berhasil memuat gambar yang telah diupload', 32, 0, 247, 0, 0, 'a:0:{}', 0),
(97, 1, '2018-09-07 14:57:26', 'cek file untuk sekilas tentang aplikasi dan link https://drive.google.com/drive/folders/1CnGcQkoi6ofa_FJ1bz23FJUuSn4cnTZY?usp=sharing \nuntuk bahan2nya', 47, 0, 0, 0, 0, 'a:0:{}', 0),
(98, 1, '2018-09-07 15:08:35', 'Usecase dan Activity Diagram', 47, 0, 0, 0, 0, 'a:5:{i:0;a:2:{s:9:\"file_name\";s:66:\"project_comment_file5b929473162c5-activity-diagram-admin--web-.jpg\";s:9:\"file_size\";s:5:\"84604\";}i:1;a:2:{s:9:\"file_name\";s:69:\"project_comment_file5b929473307fe-Activity-diagram-user--android-.jpg\";s:9:\"file_size\";s:5:\"71193\";}i:2;a:2:{s:9:\"file_name\";s:57:\"project_comment_file5b929473309d1-usecase-admin--web-.jpg\";s:9:\"file_size\";s:6:\"154169\";}i:3;a:2:{s:9:\"file_name\";s:60:\"project_comment_file5b92947330dba-usecase-user--android-.jpg\";s:9:\"file_size\";s:6:\"119739\";}i:4;a:2:{s:9:\"file_name\";s:45:\"project_comment_file5b92947331012-usecase.jpg\";s:9:\"file_size\";s:6:\"148828\";}}', 0),
(99, 1, '2018-09-07 15:10:05', 'Mockup Mobile https://www.figma.com/file/ajBESTMvncCcquTE1tFhyYMR/BP2IP-Barombong?node-id=0:1', 47, 0, 0, 0, 0, 'a:0:{}', 0),
(100, 1, '2018-09-08 00:49:41', 'referensi untuk tampilan pengaduan user android', 47, 0, 0, 0, 0, 'a:2:{i:0;a:2:{s:9:\"file_name\";s:55:\"project_comment_file5b931ca5809fd-daftar-pengaduan.jpeg\";s:9:\"file_size\";s:5:\"56984\";}i:1;a:2:{s:9:\"file_name\";s:54:\"project_comment_file5b931ca580c36-kirim-pengaduan.jpeg\";s:9:\"file_size\";s:5:\"42759\";}}', 0),
(101, 1, '2018-09-08 00:51:23', '@[Muhammad Yusuf Matra :25] @[Radhiansyah . :21]  @[Muhamad Ikhsan Laisa :6] ', 47, 100, 0, 0, 0, 'a:0:{}', 0),
(102, 1, '2018-09-08 14:48:12', '1.Apa Survey sub diklat semua sama didalam satu siklat atau beda2 lagi2?\n2.Pada jenis diklat apakah berbeda berdasarkan tingkat pasisnya?\n3.Apa pada satu periode / semester hanya satu kuisioner untuk setiap pasis dan jenis diklat', 47, 0, 0, 0, 47, 'a:0:{}', 1),
(103, 8, '2018-09-10 05:47:29', 'fixed problem upload foto profil', 32, 0, 224, 0, 0, 'a:0:{}', 0),
(104, 8, '2018-09-10 06:06:19', '[PROBLEM 01]\ndefault row (Pilih Kelas Matkul terlebih dahulu) tab presensi kuliah tidak muncul', 32, 0, 231, 0, 0, 'a:0:{}', 0),
(105, 8, '2018-09-10 06:09:29', '[SOLVED]\nEdit data , load image done', 32, 0, 247, 0, 0, 'a:0:{}', 0),
(106, 1, '2018-09-10 12:16:33', '1.Apa Survey sub diklat semua sama didalam satu diklat atau beda2 lagi2?\n2.Pada jenis diklat apakah berbeda berdasarkan tingkat pasisnya?\n3.Apa pada satu periode / semester hanya satu kuisioner untuk setiap pasis dan jenis diklat', 47, 0, 0, 0, 47, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_files`
--

CREATE TABLE `project_files` (
  `id` int(11) NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `project_files`
--

INSERT INTO `project_files` (`id`, `file_name`, `description`, `file_size`, `created_at`, `project_id`, `uploaded_by`, `deleted`) VALUES
(1, '_file594ecdbf4c1f3-Logo.png', 'update lago ', 79668, '2017-06-24 20:38:23', 1, 5, 0),
(2, '_file59e39fb84c858-RollBanner4nesia.jpg', '', 950521, '2017-10-15 17:49:44', 14, 26, 0),
(3, '_file5a7b06eae51f8-3-Day-Entrepreneur-1-Page-12-Month-Strategic-Plan.docx', '', 25674, '2018-02-07 14:02:18', 21, 1, 0),
(4, '_file5a7b0de0a3409-persenan-4nesia.pdf', '', 101246, '2018-02-07 14:32:00', 21, 1, 0),
(5, '_file5a8d8c90deb23-Doc1.docx', 'Rancangan Fitur SIAKAD', 18262, '2018-02-21 15:13:20', 32, 23, 1),
(6, '_file5a93c9611937c-Rancangan-Proposal-SIAKADnesia.pptx', '', 3215645, '2018-02-26 08:46:25', 32, 1, 1),
(7, '_file5a94202fd7607-Rancangan-Proposal-SIAKADnesia.pptx', '', 5586158, '2018-02-26 14:56:47', 32, 2, 1),
(8, '_file5a9429bf9a3df-Rancangan-Proposal-SIAKADnesia.pdf', '', 1379808, '2018-02-26 15:37:35', 32, 2, 1),
(9, '_file5a9429bfd6cf5-Rancangan-Proposal-SIAKADnesia.pptx', '', 5586167, '2018-02-26 15:37:35', 32, 2, 1),
(10, '_file5a9d5e55b10aa-Proposal-SIAKADnesia.pdf', '', 18485183, '2018-03-05 15:12:21', 32, 1, 0),
(11, '_file5a9d619492217-list-portal-dan-lembar-kerja-dosen.pdf', '', 657094, '2018-03-05 15:26:12', 32, 1, 0),
(12, '_file5a9d6194b41dd-PMB-bidik-misi.pdf', '', 1443078, '2018-03-05 15:26:12', 32, 1, 0),
(13, '_file5a9d6194d0a5e-PMB-penjaringan-siswa-berprestasi--PSB-.pdf', '', 1030594, '2018-03-05 15:26:12', 32, 1, 0),
(14, '_file5a9d61950ddb8-PMB-UJIAN-MASUK-MANDIRI.pdf', '', 143469, '2018-03-05 15:26:12', 32, 1, 0),
(15, '_file5a9d7e2623daf-SIAKAD-4nesia-Three-Point-Estimation--1-.xlsx', '', 35458, '2018-03-05 17:28:06', 32, 1, 0),
(16, '_file5a9d7e396703d-LKD-UIN-ANTASARI-project-charter.docx', '', 195202, '2018-03-05 17:28:25', 32, 1, 0),
(17, '_file5a9d95fac298f-SIAKAD-4nesia-Three-Point-Estimation.xlsx', '', 35531, '2018-03-05 19:09:46', 32, 23, 0),
(18, '_file5ac3196c6f81b-RAB.docx', '', 486819, '2018-04-03 06:04:28', 33, 23, 0),
(19, '_file5ac3196cbbd07-Template-panggilan-interview.docx', '', 485089, '2018-04-03 06:04:28', 33, 23, 0),
(20, '_file5ac8d5c34a26e-PAKTA-INTERGITAS--KP-.docx', '', 447125, '2018-04-07 14:29:23', 33, 23, 0),
(21, '_file5adb3f2eacd61-Prioritas-Modul-Sistem-Informasi-UIN-Antasari.docx', '', 13374, '2018-04-21 13:39:58', 32, 2, 0),
(22, '_file5afa79de88c39-Home.png', '', 184863, '2018-05-15 06:10:38', 36, 54, 0),
(23, '_file5afa79e2b0cd1-Login.png', '', 192956, '2018-05-15 06:10:38', 36, 54, 0),
(24, '_file5afa79e3cfbc7-Home--1-.png', '', 11287, '2018-05-15 06:10:38', 36, 54, 0),
(25, '_file5afd9bdf3befe-319646.jpg', '', 109769, '2018-05-17 15:12:31', 36, 54, 0),
(26, '_file5afd9bdf995b9-319647.jpg', '', 80702, '2018-05-17 15:12:31', 36, 54, 0),
(27, '_file5afd9c197a0df-Calendar.png', '', 16030, '2018-05-17 15:13:29', 36, 54, 0),
(28, '_file5afd9c19d7580-Details-Income.png', '', 23181, '2018-05-17 15:13:29', 36, 54, 0),
(29, '_file5afd9c1a9e489-Details-Job-Vacancy.png', '', 133717, '2018-05-17 15:13:29', 36, 54, 0),
(30, '_file5afd9c1b1344c-Fill-Income.png', '', 16338, '2018-05-17 15:13:29', 36, 54, 0),
(31, '_file5afd9c1b6d7c7-Fill-Reminder.png', '', 10965, '2018-05-17 15:13:29', 36, 54, 0),
(32, '_file5afd9c1d11662-Graph-Income.png', '', 53378, '2018-05-17 15:13:29', 36, 54, 0),
(33, '_file5afd9c1d69666-home.png', '', 25182, '2018-05-17 15:13:29', 36, 54, 0),
(34, '_file5afd9c1dcc6e3-income.png', '', 35679, '2018-05-17 15:13:29', 36, 54, 0),
(35, '_file5afd9c1ee8d66-job-vacancy.png', '', 62296, '2018-05-17 15:13:29', 36, 54, 0),
(36, '_file5afd9c1f82f4f-List-Reminder.png', '', 25138, '2018-05-17 15:13:29', 36, 54, 0),
(37, '_file5afd9c2c4e6c8-USER-TEST.xlsx', '', 9456, '2018-05-17 15:13:48', 36, 54, 0),
(38, '_file5b3ced4f99daf-Untitled-document--4-.docx', '', 9055, '2018-07-04 15:52:47', 45, 23, 0),
(39, '_file5b3cf64f97642-CEO--Chief-Executive-Officer--Job-Description.docx', '', 18473, '2018-07-04 16:31:11', 45, 1, 0),
(40, '_file5b4899118a464-BP2IP-Barombong.pdf', 'file', 910154, '2018-07-13 12:20:33', 47, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_members`
--

CREATE TABLE `project_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `project_members`
--

INSERT INTO `project_members` (`id`, `user_id`, `project_id`, `is_leader`, `deleted`) VALUES
(1, 4, 1, 1, 0),
(2, 2, 2, 1, 0),
(3, 4, 2, 0, 0),
(4, 2, 3, 1, 0),
(5, 9, 2, 0, 1),
(6, 3, 4, 1, 0),
(7, 10, 4, 0, 0),
(8, 15, 4, 0, 0),
(9, 3, 5, 1, 0),
(10, 4, 6, 1, 0),
(11, 12, 6, 0, 0),
(12, 17, 6, 0, 0),
(13, 14, 6, 0, 0),
(14, 9, 6, 0, 0),
(15, 13, 6, 0, 0),
(16, 16, 6, 0, 0),
(17, 19, 6, 0, 0),
(18, 1, 6, 0, 0),
(19, 8, 2, 0, 0),
(20, 6, 2, 0, 0),
(21, 5, 1, 0, 0),
(22, 6, 1, 0, 0),
(23, 1, 7, 1, 0),
(24, 20, 7, 0, 0),
(25, 8, 3, 0, 0),
(26, 16, 3, 0, 0),
(27, 7, 3, 0, 0),
(28, 4, 3, 0, 0),
(29, 1, 8, 1, 0),
(30, 4, 8, 0, 0),
(31, 21, 8, 0, 0),
(32, 8, 8, 0, 0),
(33, 5, 8, 0, 0),
(34, 1, 9, 1, 0),
(35, 2, 9, 0, 0),
(36, 3, 9, 0, 0),
(37, 5, 9, 0, 0),
(38, 14, 9, 0, 0),
(39, 4, 9, 0, 0),
(40, 1, 10, 1, 0),
(41, 1, 11, 1, 0),
(42, 8, 11, 0, 0),
(43, 3, 11, 0, 0),
(44, 21, 11, 0, 0),
(45, 5, 11, 0, 0),
(46, 23, 11, 0, 0),
(47, 2, 12, 1, 0),
(48, 3, 12, 0, 0),
(49, 5, 12, 0, 0),
(50, 2, 13, 1, 0),
(51, 26, 13, 0, 0),
(52, 2, 14, 1, 0),
(53, 26, 14, 0, 0),
(54, 25, 14, 0, 0),
(55, 1, 15, 1, 0),
(56, 2, 15, 0, 0),
(57, 5, 15, 0, 0),
(58, 4, 15, 0, 0),
(59, 16, 15, 0, 0),
(60, 21, 15, 0, 0),
(61, 14, 16, 1, 0),
(62, 8, 16, 0, 0),
(63, 16, 16, 0, 0),
(64, 5, 16, 0, 0),
(65, 1, 17, 1, 0),
(66, 8, 17, 0, 0),
(67, 16, 17, 0, 0),
(68, 2, 18, 1, 0),
(69, 1, 18, 0, 0),
(70, 3, 18, 0, 0),
(71, 5, 18, 0, 0),
(72, 8, 18, 0, 0),
(73, 23, 18, 0, 0),
(74, 16, 18, 0, 0),
(75, 6, 18, 0, 0),
(76, 1, 19, 1, 0),
(77, 1, 20, 1, 0),
(78, 1, 21, 1, 0),
(79, 3, 22, 1, 0),
(80, 1, 23, 1, 0),
(81, 21, 24, 1, 0),
(82, 23, 25, 1, 0),
(83, 2, 26, 1, 0),
(84, 16, 27, 1, 0),
(85, 8, 28, 1, 0),
(86, 3, 29, 1, 0),
(87, 3, 30, 1, 0),
(88, 8, 31, 1, 0),
(89, 1, 32, 1, 0),
(90, 16, 32, 0, 0),
(91, 14, 32, 0, 0),
(92, 8, 32, 0, 0),
(93, 23, 32, 0, 0),
(94, 3, 32, 0, 0),
(95, 38, 32, 0, 0),
(96, 23, 33, 1, 0),
(97, 1, 34, 1, 0),
(98, 1, 35, 1, 0),
(99, 7, 35, 0, 0),
(100, 3, 35, 0, 0),
(101, 4, 35, 0, 0),
(102, 8, 35, 0, 0),
(103, 16, 35, 0, 0),
(104, 14, 35, 0, 0),
(105, 23, 35, 0, 0),
(106, 6, 35, 0, 0),
(107, 20, 35, 0, 0),
(108, 21, 35, 0, 0),
(109, 5, 35, 0, 0),
(110, 2, 35, 0, 0),
(111, 7, 34, 0, 0),
(112, 3, 34, 0, 0),
(113, 4, 34, 0, 0),
(114, 8, 34, 0, 0),
(115, 16, 34, 0, 0),
(116, 14, 34, 0, 0),
(117, 23, 34, 0, 0),
(118, 20, 34, 0, 0),
(119, 6, 34, 0, 0),
(120, 2, 34, 0, 0),
(121, 5, 34, 0, 0),
(122, 21, 34, 0, 0),
(123, 8, 36, 1, 0),
(124, 54, 36, 0, 0),
(125, 3, 36, 0, 0),
(126, 55, 36, 0, 0),
(127, 56, 36, 0, 0),
(128, 14, 37, 1, 0),
(129, 1, 38, 1, 0),
(130, 2, 38, 0, 0),
(131, 1, 39, 1, 0),
(132, 2, 39, 0, 0),
(133, 5, 39, 0, 1),
(134, 23, 40, 1, 0),
(135, 59, 40, 0, 0),
(136, 53, 40, 0, 0),
(137, 54, 40, 0, 0),
(138, 16, 40, 0, 0),
(139, 21, 40, 0, 0),
(140, 23, 41, 1, 0),
(141, 60, 41, 0, 0),
(142, 57, 41, 0, 0),
(143, 58, 41, 0, 0),
(144, 8, 41, 0, 0),
(145, 23, 42, 1, 0),
(146, 52, 42, 0, 0),
(147, 49, 42, 0, 0),
(148, 50, 42, 0, 0),
(149, 51, 42, 0, 0),
(150, 1, 42, 0, 0),
(151, 14, 42, 0, 0),
(152, 48, 41, 0, 0),
(153, 56, 41, 0, 0),
(154, 55, 41, 0, 0),
(155, 1, 43, 1, 0),
(156, 1, 44, 1, 0),
(157, 8, 44, 0, 0),
(158, 1, 45, 1, 0),
(159, 7, 45, 0, 0),
(160, 3, 45, 0, 0),
(161, 4, 45, 0, 0),
(162, 8, 45, 0, 0),
(163, 16, 45, 0, 0),
(164, 14, 45, 0, 0),
(165, 23, 45, 0, 0),
(166, 20, 45, 0, 0),
(167, 21, 45, 0, 0),
(168, 1, 46, 1, 0),
(169, 14, 46, 0, 0),
(170, 3, 46, 0, 0),
(171, 5, 46, 0, 0),
(172, 23, 46, 0, 0),
(173, 1, 47, 1, 0),
(174, 25, 47, 0, 0),
(175, 8, 47, 0, 0),
(176, 8, 43, 0, 0),
(177, 16, 43, 0, 0),
(178, 23, 43, 0, 0),
(179, 14, 43, 0, 0),
(180, 23, 48, 1, 0),
(181, 6, 47, 0, 0),
(182, 16, 47, 0, 0),
(183, 21, 47, 0, 0),
(184, 14, 47, 0, 0),
(185, 13, 47, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_settings`
--

CREATE TABLE `project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_time`
--

CREATE TABLE `project_time` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `project_time`
--

INSERT INTO `project_time` (`id`, `project_id`, `user_id`, `start_time`, `end_time`, `status`, `note`, `task_id`, `deleted`) VALUES
(1, 4, 3, '2017-05-18 14:33:06', '2017-05-18 14:33:50', 'logged', '', 0, 0),
(2, 6, 4, '2017-05-20 08:12:39', NULL, 'open', NULL, 0, 0),
(3, 6, 16, '2017-05-24 08:40:13', '2017-05-24 08:40:29', 'logged', '', 0, 0),
(4, 6, 19, '2017-05-24 08:40:24', '2017-05-24 08:40:42', 'logged', 'done\n', 5, 0),
(5, 6, 9, '2017-05-30 08:34:01', '2017-05-30 11:55:48', 'logged', '', 6, 0),
(6, 4, 15, '2017-06-16 22:22:02', '2017-06-16 22:22:28', 'logged', 'maaf hanya coba', 0, 1),
(7, 9, 1, '2017-09-14 06:33:04', '2017-09-14 15:27:47', 'logged', '', 34, 0),
(8, 14, 2, '2017-09-25 12:36:56', '2018-02-07 16:07:14', 'logged', '', 0, 0),
(9, 15, 1, '2017-10-07 15:15:49', '2017-10-07 17:02:58', 'logged', 'selesai', 0, 0),
(10, 16, 14, '2017-11-05 12:05:57', '2017-11-05 14:10:12', 'logged', '', 58, 0),
(11, 16, 14, '2017-11-08 23:27:05', '2017-11-08 23:38:26', 'logged', 'Masih Galau', 59, 0),
(12, 16, 14, '2017-11-08 23:48:58', '2017-11-09 00:02:41', 'logged', '', 58, 0),
(13, 18, 2, '2017-11-18 15:15:27', '2017-11-18 19:12:16', 'logged', 'selesai bos', 0, 0),
(14, 18, 1, '2017-11-18 15:15:31', '2017-11-26 14:54:09', 'logged', '', 0, 0),
(15, 17, 8, '2017-11-26 14:25:02', '2017-11-26 14:25:24', 'logged', '', 0, 0),
(16, 16, 1, '2017-12-09 15:22:42', '2018-01-27 17:18:55', 'logged', '', 0, 0),
(17, 3, 7, '2017-12-11 09:50:09', '2017-12-11 09:50:33', 'logged', '', 0, 0),
(18, 20, 1, '2018-01-31 15:18:58', '2018-01-31 15:19:15', 'logged', 'menyelesaikan', 82, 0),
(19, 21, 14, '2018-02-14 13:31:02', '2018-02-14 13:31:09', 'logged', '', 0, 0),
(20, 30, 3, '2018-02-14 15:14:28', '2018-05-18 03:55:09', 'logged', '', 0, 0),
(21, 32, 23, '2018-03-05 15:57:18', '2018-03-05 15:57:40', 'logged', '', 0, 0),
(22, 32, 1, '2018-03-05 16:07:39', '2018-03-05 16:51:42', 'logged', '', 0, 0),
(23, 32, 8, '2018-03-22 17:18:54', '2018-03-22 17:19:25', 'logged', '', 0, 0),
(24, 2, 2, '2018-04-18 02:51:23', '2018-05-04 10:51:04', 'logged', 'Sudah selesai', 0, 0),
(25, 34, 1, '2018-05-02 13:27:29', '2018-05-02 13:27:42', 'logged', 'petunjuk saja', 0, 0),
(26, 34, 16, '2018-05-02 13:27:38', '2018-05-02 13:27:45', 'logged', '', 0, 1),
(27, 39, 1, '2018-05-21 14:41:12', '2018-05-21 15:21:28', 'logged', 'fixed', 165, 0),
(28, 39, 1, '2018-05-21 15:21:36', '2018-05-21 15:45:45', 'logged', 'ok', 161, 0),
(29, 39, 1, '2018-06-02 19:13:41', '2018-06-02 19:40:47', 'logged', 'done', 170, 0),
(30, 41, 8, '2018-06-03 08:43:03', '2018-06-03 08:43:09', 'logged', '', 0, 0),
(31, 40, 59, '2018-06-05 09:15:08', '2018-06-05 09:15:26', 'logged', ' ', 0, 0),
(32, 45, 1, '2018-07-04 13:35:47', '2018-07-04 17:02:46', 'logged', 'jobdesk ceo', 175, 0),
(33, 41, 48, '2018-07-05 07:25:41', '2018-07-08 16:01:55', 'logged', 'dalam proses mendevelop oleh tim coder', 0, 0),
(34, 41, 58, '2018-07-20 05:10:53', NULL, 'open', NULL, 0, 0),
(35, 47, 14, '2018-09-07 02:52:27', '2018-09-10 12:30:42', 'logged', 'bikin list task', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `title`, `permissions`, `deleted`) VALUES
(1, 'Management', 'a:33:{s:5:\"leave\";s:8:\"specific\";s:14:\"leave_specific\";s:6:\"team:4\";s:10:\"attendance\";s:8:\"specific\";s:19:\"attendance_specific\";s:6:\"team:4\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:7:\"expense\";N;s:6:\"client\";N;s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:8:\"specific\";s:36:\"timesheet_manage_permission_specific\";s:6:\"team:4\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;}', 0),
(2, 'Developer', 'a:33:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;}', 0),
(3, 'Design & Creative', 'a:33:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:8:\"estimate\";N;s:7:\"expense\";N;s:6:\"client\";N;s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";N;s:23:\"help_and_knowledge_base\";N;s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";N;s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;}', 0),
(4, 'Intern', 'a:33:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:0:\"\";s:6:\"ticket\";s:8:\"specific\";s:15:\"ticket_specific\";s:3:\"2,1\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;}', 0),
(5, 'Project Manajer KP', 'a:33:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;}', 0),
(6, 'Direksi', 'a:33:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:8:\"estimate\";N;s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:3:\"all\";s:23:\"help_and_knowledge_base\";s:3:\"all\";s:23:\"can_manage_all_projects\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:3:\"all\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";N;s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;}', 0),
(7, 'Outsource', 'a:33:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:8:\"estimate\";s:0:\"\";s:7:\"expense\";s:0:\"\";s:6:\"client\";s:0:\"\";s:6:\"ticket\";s:0:\"\";s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";s:0:\"\";s:23:\"help_and_knowledge_base\";s:0:\"\";s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";s:1:\"1\";s:29:\"team_member_update_permission\";s:0:\"\";s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";s:0:\"\";s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";s:1:\"1\";s:22:\"hide_team_members_list\";s:1:\"1\";}', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('accepted_file_formats', 'png,jpg,jpeg,docx,pdf,pptx,xlsx', 'app', 0),
('allow_partial_invoice_payment_from_clients', '1', 'app', 0),
('allowed_ip_addresses', '', 'app', 0),
('app_title', '4NESIA ADMIN', 'app', 0),
('client_can_add_project_files', '1', 'app', 0),
('client_can_comment_on_files', '1', 'app', 0),
('client_can_comment_on_tasks', '1', 'app', 0),
('client_can_create_projects', '', 'app', 0),
('client_can_create_tasks', '', 'app', 0),
('client_can_edit_tasks', '', 'app', 0),
('client_can_view_gantt', '1', 'app', 0),
('client_can_view_milestones', '', 'app', 0),
('client_can_view_overview', '1', 'app', 0),
('client_can_view_project_files', '1', 'app', 0),
('client_can_view_tasks', '', 'app', 0),
('client_message_users', '1', 'app', 0),
('company_address', 'Jl.Beringin No.99, Sengkang', 'app', 0),
('company_email', 'hi@4nesia.com', 'app', 0),
('company_name', 'CV.4NESIA', 'app', 0),
('company_phone', '081355147878', 'app', 0),
('company_vat_number', '81.520.590.1-808.000', 'app', 0),
('company_website', 'www.4nesia.com', 'app', 0),
('currency_position', 'left', 'app', 0),
('currency_symbol', 'Rp.', 'app', 0),
('date_format', 'Y-m-d', 'app', 0),
('decimal_separator', '.', 'app', 0),
('default_currency', 'IDR', 'app', 0),
('disable_client_login', '', 'app', 0),
('disable_client_signup', '1', 'app', 0),
('email_protocol', '', 'app', 0),
('email_sent_from_address', 'hi@4nesia.com', 'app', 0),
('email_sent_from_name', 'Admin 4nesia', 'app', 0),
('email_smtp_host', '', 'app', 0),
('email_smtp_pass', 'agusagus', 'app', 0),
('email_smtp_port', '', 'app', 0),
('email_smtp_security_type', 'tls', 'app', 0),
('email_smtp_user', 'gus@4nesia.com', 'app', 0),
('first_day_of_week', '1', 'app', 0),
('hidden_client_menus', '', 'app', 0),
('invoice_color', '#2196F3', 'app', 0);
INSERT INTO `settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('invoice_footer', '<p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"IN\" style=\"font-size:\n11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;\">Best\nRegards,<o:p></o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"IN\" style=\"font-size:\n3.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><b style=\"mso-bidi-font-weight:\nnormal\"><span style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:\nArial;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">CV</span></b><b style=\"mso-bidi-font-weight:normal\"><span lang=\"IN\" style=\"font-size:11.0pt;\nmso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;\">.\n</span></b><b style=\"mso-bidi-font-weight:normal\"><i style=\"mso-bidi-font-style:\nnormal\"><span style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:\nArial;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">4NESIA</span></i></b><b style=\"mso-bidi-font-weight:normal\"><span lang=\"IN\" style=\"font-size:11.0pt;\nmso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></b></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"EN-ID\" style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-ID;mso-no-proof:yes\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"EN-ID\" style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-ID;mso-no-proof:yes\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"EN-ID\" style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-ID;mso-no-proof:yes\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"EN-ID\" style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-ID;mso-no-proof:yes\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"EN-ID\" style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-ID;mso-no-proof:yes\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span lang=\"IN\" style=\"font-size:\n11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><b style=\"mso-bidi-font-weight:\nnormal\"><u><span style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:\nArial;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">Andi Agus\nSalim.<o:p></o:p></span></u></b></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\"><span style=\"font-size:11.0pt;\nmso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:&quot;Times New Roman&quot;;\nmso-ansi-language:EN-US\">Direktur Utama</span><span lang=\"IN\" style=\"font-size:\n9.5pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-fareast-font-family:Arial;\nmso-bidi-font-family:&quot;Times New Roman&quot;;color:#61686D\">.</span><span lang=\"IN\" style=\"font-size:11.0pt;mso-bidi-font-size:10.0pt;font-family:Arial;mso-bidi-font-family:\n&quot;Times New Roman&quot;\"><o:p></o:p></span></p><p class=\"MsoBodyText\"><span style=\"font-size:10.0pt;mso-bidi-font-size:9.5pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoBodyText\"><span style=\"font-size:10.0pt;mso-bidi-font-size:9.5pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoBodyText\"><span style=\"font-size:10.0pt;mso-bidi-font-size:9.5pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoBodyText\"><span style=\"font-size:10.0pt;mso-bidi-font-size:9.5pt\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoPlainText\" style=\"margin-left:6.5in\">\n\n\n\n\n\n\n\n<!--[if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves></w:TrackMoves>\n  <w:TrackFormatting></w:TrackFormatting>\n  <w:PunctuationKerning></w:PunctuationKerning>\n  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF></w:DoNotPromoteQF>\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:BreakWrappedTables></w:BreakWrappedTables>\n   <w:SnapToGridInCell></w:SnapToGridInCell>\n   <w:WrapTextWithPunct></w:WrapTextWithPunct>\n   <w:UseAsianBreakRules></w:UseAsianBreakRules>\n   <w:DontGrowAutofit></w:DontGrowAutofit>\n   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>\n   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>\n   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>\n   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"></m:mathFont>\n   <m:brkBin m:val=\"before\"></m:brkBin>\n   <m:brkBinSub m:val=\"&#45;-\"></m:brkBinSub>\n   <m:smallFrac m:val=\"off\"></m:smallFrac>\n   <m:dispDef></m:dispDef>\n   <m:lMargin m:val=\"0\"></m:lMargin>\n   <m:rMargin m:val=\"0\"></m:rMargin>\n   <m:defJc m:val=\"centerGroup\"></m:defJc>\n   <m:wrapIndent m:val=\"1440\"></m:wrapIndent>\n   <m:intLim m:val=\"subSup\"></m:intLim>\n   <m:naryLim m:val=\"undOvr\"></m:naryLim>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!--[if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"382\">\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"Normal\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"Body Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Plain Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Acronym\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Cite\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Code\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Definition\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Keyboard\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Preformatted\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Sample\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Typewriter\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Variable\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Table\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation subject\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"No List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Contemporary\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Elegant\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Professional\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Balloon Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Theme\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\n   Name=\"List Paragraph\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\n   Name=\"Intense Quote\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\n   Name=\"Subtle Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\n   Name=\"Intense Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\n   Name=\"Subtle Reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\n   Name=\"Intense Reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Mention\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Smart Hyperlink\"></w:LsdException>\n </w:LatentStyles>\n</xml><![endif]-->\n<style>\n<!--\n /* Font Definitions */\n@font-face\n	{font-family:Arial;\n	panose-1:2 11 6 4 2 2 2 2 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:-536859905 -1073711037 9 0 511 0;}\n@font-face\n	{font-family:\"Courier New\";\n	panose-1:2 7 3 9 2 2 5 2 4 4;\n	mso-font-charset:0;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:-536859905 -1073711037 9 0 511 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n /* Style Definitions */\np.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-priority:1;\n	mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0in;\n	margin-bottom:.0001pt;\n	mso-pagination:none;\n	font-size:11.0pt;\n	font-family:Arial;\n	mso-fareast-font-family:Arial;}\np.MsoBodyText, li.MsoBodyText, div.MsoBodyText\n	{mso-style-priority:1;\n	mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-link:\"Body Text Char\";\n	margin:0in;\n	margin-bottom:.0001pt;\n	mso-pagination:none;\n	font-size:9.5pt;\n	font-family:Arial;\n	mso-fareast-font-family:Arial;}\np.MsoPlainText, li.MsoPlainText, div.MsoPlainText\n	{mso-style-unhide:no;\n	mso-style-link:\"Plain Text Char\";\n	margin:0in;\n	margin-bottom:.0001pt;\n	mso-pagination:widow-orphan;\n	font-size:10.0pt;\n	font-family:\"Courier New\";\n	mso-fareast-font-family:\"Times New Roman\";\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-ansi-language:IN;\n	mso-fareast-language:JA;}\nspan.BodyTextChar\n	{mso-style-name:\"Body Text Char\";\n	mso-style-priority:1;\n	mso-style-unhide:no;\n	mso-style-locked:yes;\n	mso-style-link:\"Body Text\";\n	mso-ansi-font-size:9.5pt;\n	mso-bidi-font-size:9.5pt;\n	font-family:Arial;\n	mso-ascii-font-family:Arial;\n	mso-fareast-font-family:Arial;\n	mso-hansi-font-family:Arial;\n	mso-bidi-font-family:Arial;}\nspan.PlainTextChar\n	{mso-style-name:\"Plain Text Char\";\n	mso-style-unhide:no;\n	mso-style-locked:yes;\n	mso-style-link:\"Plain Text\";\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	font-family:\"Courier New\";\n	mso-ascii-font-family:\"Courier New\";\n	mso-fareast-font-family:\"Times New Roman\";\n	mso-hansi-font-family:\"Courier New\";\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-ansi-language:IN;\n	mso-fareast-language:JA;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:11.0pt;\n	mso-ansi-font-size:11.0pt;\n	mso-bidi-font-size:11.0pt;\n	font-family:Calibri;\n	mso-ascii-font-family:Calibri;\n	mso-ascii-theme-font:minor-latin;\n	mso-fareast-font-family:Calibri;\n	mso-fareast-theme-font:minor-latin;\n	mso-hansi-font-family:Calibri;\n	mso-hansi-theme-font:minor-latin;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-bidi-theme-font:minor-bidi;}\n.MsoPapDefault\n	{mso-style-type:export-only;\n	mso-pagination:none;}\n@page WordSection1\n	{size:8.5in 11.0in;\n	margin:1.0in 1.0in 1.0in 1.0in;\n	mso-header-margin:.5in;\n	mso-footer-margin:.5in;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style>\n<!--[if gte mso 10]>\n<style>\n /* Style Definitions */\ntable.MsoNormalTable\n	{mso-style-name:\"Table Normal\";\n	mso-tstyle-rowband-size:0;\n	mso-tstyle-colband-size:0;\n	mso-style-noshow:yes;\n	mso-style-priority:99;\n	mso-style-parent:\"\";\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\n	mso-para-margin:0in;\n	mso-para-margin-bottom:.0001pt;\n	mso-pagination:none;\n	font-size:11.0pt;\n	font-family:Calibri;\n	mso-ascii-font-family:Calibri;\n	mso-ascii-theme-font:minor-latin;\n	mso-hansi-font-family:Calibri;\n	mso-hansi-theme-font:minor-latin;}\n</style>\n<![endif]-->\n\n\n\n<!--StartFragment-->\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n<!--EndFragment--></p><p class=\"MsoBodyText\"><span style=\"font-size:10.0pt;mso-bidi-font-size:9.5pt\"><o:p>&nbsp;</o:p></span></p><style>\n<!--\n /* Font Definitions */\n@font-face\n	{font-family:Arial;\n	panose-1:2 11 6 4 2 2 2 2 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:-536859905 -1073711037 9 0 511 0;}\n@font-face\n	{font-family:\"Courier New\";\n	panose-1:2 7 3 9 2 2 5 2 4 4;\n	mso-font-charset:0;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:-536859905 -1073711037 9 0 511 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n /* Style Definitions */\np.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-priority:1;\n	mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0in;\n	margin-bottom:.0001pt;\n	mso-pagination:none;\n	font-size:11.0pt;\n	font-family:Arial;\n	mso-fareast-font-family:Arial;}\np.MsoBodyText, li.MsoBodyText, div.MsoBodyText\n	{mso-style-priority:1;\n	mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-link:\"Body Text Char\";\n	margin:0in;\n	margin-bottom:.0001pt;\n	mso-pagination:none;\n	font-size:9.5pt;\n	font-family:Arial;\n	mso-fareast-font-family:Arial;}\np.MsoPlainText, li.MsoPlainText, div.MsoPlainText\n	{mso-style-unhide:no;\n	mso-style-link:\"Plain Text Char\";\n	margin:0in;\n	margin-bottom:.0001pt;\n	mso-pagination:widow-orphan;\n	font-size:10.0pt;\n	font-family:\"Courier New\";\n	mso-fareast-font-family:\"Times New Roman\";\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-ansi-language:IN;\n	mso-fareast-language:JA;}\nspan.BodyTextChar\n	{mso-style-name:\"Body Text Char\";\n	mso-style-priority:1;\n	mso-style-unhide:no;\n	mso-style-locked:yes;\n	mso-style-link:\"Body Text\";\n	mso-ansi-font-size:9.5pt;\n	mso-bidi-font-size:9.5pt;\n	font-family:Arial;\n	mso-ascii-font-family:Arial;\n	mso-fareast-font-family:Arial;\n	mso-hansi-font-family:Arial;\n	mso-bidi-font-family:Arial;}\nspan.PlainTextChar\n	{mso-style-name:\"Plain Text Char\";\n	mso-style-unhide:no;\n	mso-style-locked:yes;\n	mso-style-link:\"Plain Text\";\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	font-family:\"Courier New\";\n	mso-ascii-font-family:\"Courier New\";\n	mso-fareast-font-family:\"Times New Roman\";\n	mso-hansi-font-family:\"Courier New\";\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-ansi-language:IN;\n	mso-fareast-language:JA;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:11.0pt;\n	mso-ansi-font-size:11.0pt;\n	mso-bidi-font-size:11.0pt;\n	font-family:Calibri;\n	mso-ascii-font-family:Calibri;\n	mso-ascii-theme-font:minor-latin;\n	mso-fareast-font-family:Calibri;\n	mso-fareast-theme-font:minor-latin;\n	mso-hansi-font-family:Calibri;\n	mso-hansi-theme-font:minor-latin;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-bidi-theme-font:minor-bidi;}\n.MsoPapDefault\n	{mso-style-type:export-only;\n	mso-pagination:none;}\n@page WordSection1\n	{size:8.5in 11.0in;\n	margin:1.0in 1.0in 1.0in 1.0in;\n	mso-header-margin:.5in;\n	mso-footer-margin:.5in;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style>', 'app', 0);
INSERT INTO `settings` (`setting_name`, `setting_value`, `type`, `deleted`) VALUES
('invoice_logo', '_file5ae75d1ac20aa-invoice-logo.png', 'app', 0),
('invoice_prefix', 'INVOICE #44430', 'app', 0),
('invoice_style', 'style_1', 'app', 0),
('item_purchase_code', 'ec72d7cd-8b2a-4857-8ac1-f2a954f9b304', 'app', 0),
('language', 'english', 'app', 0),
('last_cron_job_time', '1509951136', 'app', 0),
('module_announcement', '1', 'app', 0),
('module_attendance', '1', 'app', 0),
('module_chat', '1', 'app', 0),
('module_estimate', '1', 'app', 0),
('module_estimate_request', '1', 'app', 0),
('module_event', '1', 'app', 0),
('module_expense', '1', 'app', 0),
('module_help', '1', 'app', 0),
('module_invoice', '1', 'app', 0),
('module_knowledge_base', '1', 'app', 0),
('module_leave', '1', 'app', 0),
('module_message', '1', 'app', 0),
('module_note', '1', 'app', 0),
('module_project_timesheet', '1', 'app', 0),
('module_ticket', '1', 'app', 0),
('module_timeline', '1', 'app', 0),
('module_todo', '1', 'app', 0),
('no_of_decimals', '0', 'app', 0),
('re_captcha_secret_key', '', 'app', 0),
('re_captcha_site_key', '', 'app', 0),
('rows_per_page', '10', 'app', 0),
('scrollbar', 'native', 'app', 0),
('send_bcc_to', 'gus@4nesia.com', 'app', 0),
('send_invoice_due_after_reminder', '', 'app', 0),
('send_invoice_due_pre_reminder', '30', 'app', 0),
('send_recurring_invoice_reminder_before_creation', '', 'app', 0),
('show_background_image_in_signin_page', 'yes', 'app', 0),
('show_logo_in_signin_page', 'yes', 'app', 0),
('site_logo', '_file5adc9dcddf1e4-site-logo.png', 'app', 0),
('time_format', 'small', 'app', 0),
('timezone', 'Asia/Jakarta', 'app', 0),
('user_1_notification_sound_volume', '4', 'user', 0),
('user_43_notification_sound_volume', '0', 'user', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `digg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `github` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tumblr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `vine` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `facebook`, `twitter`, `linkedin`, `googleplus`, `digg`, `youtube`, `pinterest`, `instagram`, `github`, `tumblr`, `vine`, `deleted`) VALUES
(1, 1, 'https://www.facebook.com/pelajarpro', '#', '#', '', '', '#', '', '#', '', '', '', 0),
(2, 2, 'https://www.facebook.com/adam.raider88', 'https://twitter.com/adam_raider', 'https://www.linkedin.com/in/mridwan88/', 'https://plus.google.com/+RidwanMuhammad', '', 'https://www.youtube.com/channel/UCQOEyjytP2VvbqEJUymw2Gg', 'https://id.pinterest.com/adamthesky/', 'https://www.instagram.com/ridwanmcr', 'https://github.com/rdwn8', '', '', 0),
(3, 3, '', '', '', '', '', '', '', '', '', '', '', 0),
(4, 4, 'alfianh.ah', 'fiaanh', 'alfianhidayat', '', '', '', '', 'fiaanh', 'alfianhidayat', '', '', 0),
(5, 5, 'https://www.facebook.com/Fikriimr', 'https://twitter.com/fikriimr', 'https://www.linkedin.com/in/muhammad-fikri-518179141/', 'https://www.youtube.com/channel/UC8w6YQ9yGY4VA593nKIF4Hg?view_as=subscriber', '', 'https://www.youtube.com/channel/UC8w6YQ9yGY4VA593nKIF4Hg?view_as=subscriber', '', 'https://www.instagram.com/fikriimr/', '', '', '', 0),
(6, 6, '', '', 'https://www.linkedin.com/in/m-ikhsan-laisa-739692137/', '', '', '', '', 'https://www.instagram.com/ikhsanlaisa/', 'https://github.com/ikhsanlaisa', '', '', 0),
(7, 7, '', '', 'Abdul Aziz Gade', 'adjies wigade', '', 'AAzizgade', '', 'bedolaziz', '', '', '', 0),
(23, 23, 'https://www.facebook.com/henry.cahjuron', '', 'https://www.linkedin.com/in/hendri-gunawan-486499b6/', '', '', '', '', 'https://www.instagram.com/hndri.gnwn/', '', '', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT 0,
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` tinyint(4) NOT NULL DEFAULT 1,
  `status` enum('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `status_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` double NOT NULL DEFAULT 0,
  `deleted` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `milestone_id`, `assigned_to`, `deadline`, `labels`, `points`, `status`, `status_id`, `start_date`, `collaborators`, `sort`, `deleted`) VALUES
(1, 'Video Aplikasi', '', 2, 0, 9, '2017-05-26', '', 1, 'in_progress', 2, '2017-05-17', '', 100000, 1),
(2, 'Taking gambar', 'Take video profile & video testimoni KP (semua peserta KP wajib untuk video testimoni) \n', 4, 0, 3, '2017-05-24', '', 3, 'done', 3, '2017-05-17', '10,15', 200000, 0),
(3, 'Video teaser', '', 4, 0, 3, '2017-06-04', '', 2, 'done', 3, '2017-05-24', '10,15', 300000, 0),
(4, 'Editing Video', '', 4, 0, 3, '2017-06-04', '', 3, 'done', 3, '2017-05-22', '10,15', 400000, 0),
(5, 'Merancang ERD', 'ERD HaloNesia\nhttps://drive.google.com/file/d/0ByR9KIaeoerUSTJMbHl3MUxRWnM/view?usp=sharing\n\nhttp://bit.ly/2qE3BIU', 6, 0, 4, '2017-05-23', 'ERD', 5, 'done', 3, '2017-05-20', '9,12,14,17,13,19', 500000, 0),
(6, 'Create Repository', 'Init project dan buat repository di github untuk API (koordinasi jgn sampai bikin 2 repo)', 6, 0, 4, '2017-05-31', '', 3, 'done', 3, '2017-05-29', '17,14', 600000, 0),
(7, 'Create Model Class', 'buat model class berdasarkan erd, bagi 2. silahkan berkoordinasi bagi tugas', 6, 0, 4, '2017-06-05', '', 1, 'to_do', 1, '2017-05-29', '14,17', 700000, 0),
(8, 'Create repository', 'Install codeigniter dan buat repository di github untuk web admin', 6, 0, 16, '2017-05-31', '', 3, 'done', 3, '2017-05-29', '9', 800000, 0),
(9, 'Create model class', 'buat model class berdasarkan ERD, masing2 ada fungsi CRUD. dan buat sebuah folder SQL yang berisi file SQL yang sudah dibuat', 6, 0, 16, '2017-06-05', 'MODEL', 1, 'done', 3, '2017-05-29', '19', 900000, 0),
(10, 'CRUD SUPER ADMIN', 'Buat CRUD untuk super admin yaitu category dan region. gunakan jQuery AJAX dan untuk menampilkan data menggunakan datatables server side dan gunakan library ignited datatables untuk memudahkan develop\n\npelajari :\nhttp://harviacode.com/2016/11/26/cara-membuat-datatable-serverside-pada-codeigniter-dengan-join-table/\n', 6, 0, 16, '2017-06-05', 'CONTROLLER', 3, 'done', 3, '2017-05-29', '9,13', 1000000, 0),
(11, 'Create front end layout', 'Integrasikan project yang telah diinit dengan front end bootstrap, cukup gunakan template AdminLTE, buat halaman login dan dashboard untuk super admin, berisi sub menu Region dan Category yang masing-masing submenu datanya akan ditampilkan dalam bentuk datatables, untuk menambahkan data akan ditampilkan form input dalam bootstrap modal.', 6, 0, 16, '2017-06-05', '', 3, 'to_do', 1, '2017-05-29', '12', 1100000, 0),
(12, 'Revisi tombol aksi admin cabor & sidora', 'delete, detail, ubah', 2, 0, 6, '2017-06-20', '', 3, 'done', 3, '2017-06-14', '', 9999000, 0),
(13, 'Route login admin cabor dan admin sidora', 'bug di ./home', 2, 0, 6, '2017-06-20', '', 1, 'done', 3, '2017-06-13', '', 10100000, 1),
(14, 'Detail data Cabor di admin', 'Menampilkan data detail per cabor di dashboard admin sdiora', 2, 0, 6, '2017-06-21', '', 3, 'done', 3, '2017-06-15', '', 10000000, 0),
(15, 'Detail Data Cabor', 'Tab Data Organisasi di Super Admin belum ada (di detail data cabor)', 2, 0, 6, '2017-06-21', '', 1, 'done', 2, '2017-06-17', '', 10000000, 1),
(16, 'Style Foto', 'Foto dibuat bentuk modal di klik tombol dan pop up', 2, 0, 0, '2017-06-21', '', 1, 'done', 3, '2017-06-17', '6', 10100000, 0),
(17, 'Perubahan Logo Lapor Maros', 'Menggunakan Logo Yusuf', 1, 0, 4, '2017-06-26', '', 1, 'done', 3, NULL, '', 1700000, 0),
(18, 'Scroll Image dan title (Tampilan Details News)', '', 1, 0, 4, '2017-06-26', '', 1, 'done', 3, NULL, '', 1800000, 0),
(19, 'Menampilkan History Laporan (Laporan Saya) ', 'API (get by id) dan Apk di menu Profil', 1, 0, 4, '2017-06-26', '', 2, 'done', 3, NULL, '6', 1900000, 0),
(20, 'klo sdh kirim laporan ada status', 'API dan Android', 1, 0, 4, '2017-06-26', '', 2, 'done', 3, NULL, '6', 2000000, 0),
(21, 'profil bisa tambah foto, tambah alamat rumah dan t4 kerja', 'API dan APK', 1, 0, 4, '2017-06-26', '', 2, 'done', 3, NULL, '6', 2100000, 0),
(22, 'push notif dari web', 'dari wordpress menggunakan fcm', 1, 0, 4, '2017-06-26', '', 1, 'done', 3, NULL, '', 2200000, 0),
(23, 'Install WP', '', 4, 0, 10, NULL, '', 1, 'to_do', 1, NULL, '', 2300000, 0),
(24, 'install plugin', '', 4, 0, 10, NULL, '', 1, 'to_do', 1, NULL, '', 2400000, 0),
(25, 'install template', '', 4, 0, 15, NULL, '', 1, 'to_do', 1, NULL, '', 2500000, 0),
(26, 'content home', '', 4, 0, 15, NULL, '', 1, 'to_do', 1, NULL, '', 2600000, 0),
(27, 'content page', '', 4, 0, 10, NULL, '', 1, 'to_do', 1, NULL, '', 2700000, 0),
(28, 'Bug Fitur Lapor', 'Waktu Pilih Gambar Force to close, dan laporan tdk mau masuk ke server (tdk terkirim)', 1, 0, 4, NULL, '', 1, 'done', 3, NULL, '', 2800000, 0),
(29, 'Gambar Profil', 'Gambar di Profile Belum muncul dan belum bisa diganti foto profilnya', 1, 0, 4, NULL, '', 1, 'done', 3, NULL, '', 2900000, 0),
(30, 'Tampilan Hystory Laporan', 'font status/ posisi status laporan', 1, 0, 4, NULL, '', 1, 'done', 3, NULL, '', 3000000, 0),
(31, 'Revisi/ Feedback dari Maros', '-OTP tdk jadi\n-Verifikasi NIK dihilangkan dan diganti dengan :\n1. saat register pendaftar memasukkan no hp dan NIK\n\nbisakah laporan yang sdh di proses ada halaman sendirinya di samping news?\n\nitu bro feedback dari maros', 1, 0, 4, NULL, '', 1, 'done', 3, NULL, '', 3100000, 0),
(32, 'Backup Konten WEB', 'About\nPortofolio\nProfile Member', 9, 0, 2, NULL, '', 1, 'done', 3, NULL, '', 3200000, 0),
(33, 'Pemilihan Theme', '', 9, 0, 1, NULL, '', 1, 'done', 3, NULL, '2,3,4,5,14', 3300000, 0),
(34, 'Penentuan Konsep WEB', '', 9, 0, 2, NULL, '', 1, 'done', 3, NULL, '', 3400000, 0),
(35, 'Konten Update', '', 9, 0, 14, NULL, '', 1, 'to_do', 3, NULL, '5', 3199500, 0),
(36, 'Deleting / WIPE Wordpress 4nesia', '', 9, 0, 1, NULL, '', 1, 'done', 3, NULL, '', 3600000, 0),
(37, 'Installing Theme baru', '', 9, 0, 1, NULL, '', 1, 'done', 3, NULL, '', 3700000, 0),
(38, 'Super Admin Terhapus sendiri', 'users super admin ikut terhapus jika cabor dihapus', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 9998500, 0),
(39, 'Mengatasi Double data Guru', '', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '4', 10000000, 0),
(40, 'Fitur Delete CABORS', 'Delete data cabor melalui superadmin', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '4', 9999500, 0),
(41, 'Fitur Delete Data Guru', '', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '4', 9998000, 0),
(42, 'Fitur Unduh/Export to excel/pdf data guru di super admin', '', 2, 0, 6, NULL, '', 1, 'done', 3, NULL, '4', 10200000, 0),
(43, 'Fitur Lapor', '', 8, 0, 21, NULL, '', 1, 'to_do', 1, NULL, '', 4300000, 0),
(44, 'Fitur News', '', 8, 0, 21, NULL, '', 1, 'to_do', 1, NULL, '', 4400000, 0),
(45, 'Menu Profil', '', 8, 0, 21, NULL, '', 1, 'to_do', 1, NULL, '', 4500000, 0),
(46, 'Pengembangan Website 4nesia', '', 14, 0, 26, NULL, '', 5, 'done', 3, NULL, '2', 4600000, 1),
(47, 'Role Banner 4nesia', '', 14, 0, 26, '2017-09-27', '', 3, 'done', 3, '2017-09-25', '', 4700000, 0),
(48, 'Video Profile 4nesia', '', 14, 0, 26, '2017-12-06', '', 5, 'to_do', 1, '2017-10-01', '25', 4800000, 0),
(49, 'Format Surat 4nesia', '', 14, 0, 26, '2017-10-20', '', 1, 'in_progress', 2, '2017-09-25', '25', 4900000, 0),
(50, 'Desain Website 4nesia', '', 14, 0, 26, '2017-11-06', '', 5, 'to_do', 1, '2017-09-28', '2,25', 5000000, 0),
(51, 'Install Composer', '', 15, 0, 1, NULL, '', 1, 'to_do', 1, NULL, '', 10000000, 0),
(52, 'Show Profil Cabor ', 'di action daftar cabor (admin sidora) pop-up', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0),
(53, 'increment nomor', '', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(54, 'edit data guru', 'foto opsional\nfoto lama tidak usah di tampilkan di form edit', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 9999500, 0),
(55, 'datapublic atlet tidak muncul', 'sudah ada di daftar atlet cabor', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(56, 'foto prasarana tidak muncul (public)', 'foto di daftar prasarana muncul (akun cabor)', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(57, 'tampilan public view data cabor', '', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(58, '[Kasar]Usecase Diagram', '', 16, 0, 14, '2017-11-08', 'Analisis dan Perancangan', 1, 'to_do', 3, '2017-11-06', '5', 10000000, 0),
(59, '[Kasar] Tabel ERD', '', 16, 0, 14, '2017-11-08', 'Analisis dan Perancangan', 3, 'to_do', 3, '2017-11-06', '5', 10100000, 0),
(60, 'Class Diagram', '', 16, 3, 16, '2017-11-11', 'Analisis dan Perancangan', 3, 'to_do', 1, '2017-11-08', '14,5,8', 0, 0),
(61, 'Wireframe App', '', 16, 3, 8, '2017-11-11', 'UI/UX', 3, 'to_do', 3, '2017-11-09', '5', 9999500, 0),
(62, '[Final] Use Case & Tabel ERD', '', 16, 3, 14, '2017-11-11', 'Analisis dan Perancangan', 3, 'to_do', 1, '2017-11-08', '8,16,5', 10000000, 0),
(63, 'Actvity Diagram', '', 16, 3, 14, '2017-11-11', 'Analisis dan Perancangan', 3, 'to_do', 1, '2017-11-04', '5', 0, 0),
(64, 'Firebase Database & Push Notification', '', 16, 0, 16, NULL, '', 3, 'to_do', 1, NULL, '', 0, 0),
(65, 'Data Atlet & Pelatih', 'SCHOOL HOCKEY CLUB (SHC), sdh di edit masih sama', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0),
(66, 'Pas edit Data Atlet', '[06:31, 14/11/2017] Pak Adi Dkop Parepare: sy sdh coba update data atlet, kalo sy pilih edit atlet no. urut 2 trus ubah nama klub dan organisasinya.. dia langsung timpa data atlet no. urut 1', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 9999500, 0),
(67, 'Data Organisasi (Public)', 'Nama Organisasinya tidak muncul', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0),
(68, 'Periksa Semua Edit Data Cabor', 'mungkin ada yang tertimpa , atau yg di edit id 1 tapi yg berubah id 2', 2, 0, 6, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0),
(69, 'Count Atlet Perempuan', 'di data public cabor --&gt; Organisasi', 2, 0, 0, NULL, '', 1, 'to_do', 3, NULL, '4,6,8', 10000000, 0),
(70, 'Layanan Akademik (LAK)', '', 18, 0, 16, '2017-11-20', '', 3, 'to_do', 3, '2017-11-18', '', 10000000, 0),
(71, 'Kelompok Keahlian', '-', 18, 0, 8, '2017-11-20', '', 3, 'to_do', 3, '2017-11-18', '', 9999000, 0),
(72, 'Mahasiswa', '-', 18, 0, 3, '2017-11-20', '', 2, 'to_do', 3, '2017-11-18', '', 9999500, 0),
(73, 'Dosen Akademik', '-', 18, 0, 1, '2017-11-20', '', 2, 'to_do', 3, '2017-11-18', '', 10100000, 0),
(74, 'Perusahaan', 'perusahaan\nusr:telkom\npass:telkom\n\npemb\nusr:abdazis\npass:abdazis', 18, 0, 23, '2017-11-20', '', 2, 'to_do', 3, '2017-11-18', '', 9999000, 0),
(75, 'Program Studi', 'usr: prodisi\npass: prodisi', 18, 0, 2, '2017-11-20', '', 1, 'to_do', 3, '2017-11-18', '', 10000000, 0),
(76, 'Pembimbing Lapangan', '', 18, 0, 6, '2017-11-19', '', 1, 'to_do', 3, '2017-11-18', '', 0, 0),
(77, 'Splash Screen', 'Splash screen (Screen pembuka)', 17, 0, 8, '2017-12-10', '', 1, 'to_do', 3, '2017-11-26', '16', 9998500, 0),
(78, 'Home Screen Kepemudaan', 'Tampilan login', 17, 0, 8, '2017-12-10', '', 2, 'to_do', 3, '2017-11-27', '16', 9997000, 0),
(79, 'Home screen Keolahragaan', 'Home screen tampilan publik', 17, 0, 8, '2017-12-12', '', 3, 'to_do', 3, '2017-11-27', '16,1', 9996500, 0),
(80, 'Screen List Data', 'Contoh List data atlet', 17, 0, 8, NULL, '', 2, 'to_do', 3, NULL, '', 9998000, 0),
(81, 'Screen Detail List Data', 'Contoh Detail list data atlet', 17, 0, 8, NULL, '', 2, 'to_do', 3, NULL, '', 9997500, 0),
(82, 'Membuat pembukuan', '', 20, 10, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(83, 'Menyusun Visi 3 tahun perusahaan', '', 23, 0, 1, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(84, 'Structure Organization', '', 22, 0, 3, NULL, '', 1, 'to_do', 2, NULL, '', 0, 1),
(85, 'Poster Internship', '', 22, 0, 3, NULL, '', 1, 'to_do', 2, NULL, '', 0, 1),
(86, 'Finishing Aplikasi KP', 'Mengerjakan revisi', 27, 0, 16, NULL, '', 1, 'to_do', 1, '2018-02-10', '', 0, 0),
(87, 'membuat  format', '', 25, 0, 0, NULL, '', 1, 'to_do', 3, NULL, '23', 10000000, 0),
(88, 'Maintainance Blog Article', '', 26, 0, 2, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(89, 'Poster Internship', '', 29, 0, 3, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(90, 'Struktur Organisasi', '', 29, 0, 3, NULL, '', 1, 'to_do', 2, NULL, '', 0, 0),
(91, 'Jaket crew', '', 29, 0, 3, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(92, 'Kartu Nama 4nesia', '', 29, 0, 3, NULL, '', 1, 'to_do', 2, NULL, '', 0, 0),
(93, 'idCard Crew', '', 29, 0, 3, NULL, '', 1, 'to_do', 2, NULL, '', 0, 0),
(94, 'Video Profile 4nesia', '', 29, 0, 3, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(95, 'Business Strategic Plan', '', 21, 0, 0, NULL, '', 3, 'to_do', 2, NULL, '', 0, 0),
(96, 'Presentasi Business Strategic Plan', '', 21, 0, 0, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(97, 'Mengkordinasikan rencana project siakad UIN & UMPAR Palu', '', 23, 0, 1, '2018-02-28', '', 1, 'to_do', 3, '2018-02-14', '', 0, 0),
(98, 'mengkordinasikan project PPDB', '', 23, 0, 1, '2018-02-28', '', 1, 'to_do', 3, '2018-02-14', '', 0, 0),
(99, 'Bikin Proposal', '', 30, 0, 3, NULL, '', 1, 'to_do', 2, NULL, 'Radhiansyah', 0, 0),
(100, 'Design UI/UX LKD Online', '10 jam', 32, 11, 8, '2018-03-05', 'admin,dekan,dosen,prodi', 2, 'to_do', 3, '2018-03-04', '', 9999750, 0),
(101, 'Desain Database LKD', '8 Jam kerja', 32, 11, 16, '2018-03-07', 'admin', 1, 'to_do', 3, '2018-03-06', '', 9999500, 0),
(102, 'LKD: Input Data LKD', '', 32, 11, 16, '2018-03-09', 'dosen', 1, 'to_do', 3, '2018-03-08', '', 10000000, 0),
(103, 'LKD: Delete Data LKD', '10 Jam', 32, 11, 16, '2018-03-11', 'admin,dosen', 1, 'to_do', 3, '2018-03-10', '', 10000000, 0),
(104, 'LKD: List Data LKD', '10 jam', 32, 11, 16, '2018-03-13', 'admin,dosen', 1, 'to_do', 3, '2018-03-12', '', 10000000, 0),
(105, 'LKD: Export Data LKD', '10 Jam', 32, 11, 16, '2018-03-15', 'dosen,admin', 1, 'to_do', 3, '2018-03-14', '', 10000000, 0),
(106, 'LKD: Save Data LKD', '10 jam ', 32, 11, 16, '2018-03-17', 'dosen', 1, 'to_do', 3, '2018-03-16', '', 10000000, 0),
(107, 'LKD: Online Signature', '10 Jam', 32, 11, 16, '2018-03-19', 'dekan,prodi,rektor', 1, 'to_do', 3, '2018-03-18', '8', 10000000, 0),
(108, 'LKD: View LKD ', '10 Jam', 32, 11, 16, '2018-03-21', 'dekan,prodi,dosen', 1, 'to_do', 3, '2018-03-20', '8', 10000000, 0),
(109, 'Platform Website', '12 Jam', 32, 14, 16, '2018-03-23', '', 1, 'to_do', 3, '2018-03-22', '1', 10000000, 1),
(110, 'Penentuan Nama Domain & Hosting', '12 Jam', 32, 14, 16, '2018-03-25', '', 1, 'to_do', 3, '2018-03-24', '1', 10000000, 1),
(111, 'Konfigurasi DNS dan Server', '12 Jam', 32, 14, 16, '2018-03-27', '', 1, 'to_do', 3, '2018-03-26', '1', 10000000, 1),
(112, 'Instalasi Website', '8 Jam', 32, 14, 16, '2018-03-29', '', 1, 'to_do', 3, '2018-03-28', '1', 10000000, 1),
(113, 'Optimasi Website', '8 Jam', 32, 14, 16, '2018-03-31', '', 1, 'to_do', 3, '2018-03-30', '', 10000000, 1),
(114, 'Desain Database Website', '12 Jam', 32, 14, 16, '2018-04-02', '', 1, 'to_do', 3, '2018-04-01', '', 10000000, 1),
(115, 'Desain UI/UX Website', '12 Jam', 32, 14, 8, '2018-04-04', '', 1, 'to_do', 3, '2018-04-03', '16', 10000000, 1),
(116, 'Login Page', '8 Jam', 32, 14, 16, '2018-04-06', '', 1, 'to_do', 1, '2018-04-05', '', 0, 1),
(117, 'Form Registrasi Mahasiswa Baru', '8 Jam', 32, 14, 16, '2018-04-08', '', 1, 'to_do', 1, '2018-04-07', '', 0, 1),
(118, 'Form dan File Registrasi Mahasiswa  Baru', '8 Jam', 32, 14, 16, '2018-04-10', '', 1, 'to_do', 1, '2018-04-09', '', 0, 1),
(119, 'Create Notification ', '8 Jam', 32, 14, 16, '2018-04-12', '', 1, 'to_do', 1, '2018-04-11', '', 0, 1),
(120, 'View Notification', '8 Jam', 32, 14, 16, '2018-04-14', '', 1, 'to_do', 1, '2018-04-13', '', 0, 1),
(121, 'Desain Database PMB', '8 Jam', 32, 14, 16, '2018-04-06', '', 1, 'to_do', 2, '2018-04-05', '', 10000000, 1),
(122, 'Perancangan UI/UX PMB', '8 Jam', 32, 14, 8, '2018-04-08', '', 1, 'to_do', 2, '2018-04-07', '16', 10000000, 1),
(123, 'Login Page', '8 Jam', 32, 14, 16, '2018-04-10', '', 1, 'to_do', 2, '2018-04-09', '', 10000000, 1),
(124, 'Form Registrasi Mahasiswa Baru', '6 Jam ', 32, 14, 16, '2018-04-12', '', 1, 'to_do', 2, '2018-04-11', '', 10000000, 1),
(125, 'Input Form dan File Registrasi Mahasiswa  Baru', '6 Jam ', 32, 14, 16, '2018-04-14', '', 1, 'to_do', 2, '2018-04-13', '', 9999500, 1),
(126, 'Create Notification ', '6 Jam ', 32, 14, 16, '2018-04-16', '', 1, 'to_do', 2, '2018-04-15', '', 10000000, 1),
(127, 'View Notification ', '6 Jam ', 32, 14, 16, '2018-04-18', '', 1, 'to_do', 2, '2018-04-17', '', 10000000, 1),
(128, 'UI/UX LKD Dosen', '', 32, 11, 8, '2018-03-22', '', 1, 'to_do', 3, '2018-03-22', '16', 10100000, 0),
(129, 'UI/UX LKD Dekan', 'dekan melakukan approve LKD mingguan', 32, 11, 8, '2018-03-24', '', 1, 'to_do', 3, '2018-03-23', '16', 10100000, 0),
(130, 'UI/UX LKD Rektor', '', 32, 11, 8, '2018-03-26', '', 1, 'to_do', 3, '2018-03-25', '16', 10100000, 0),
(131, 'LKD: LKD Dosen', '- Input Kegiatan harian LKD\n- Mengajukan Approve LKD Mingguan ke dekan\n- Mengajukan Approve LKD Bulanan ke Rektor\n', 32, 11, 16, '2018-03-28', 'dosen', 1, 'to_do', 3, '2018-03-27', '8', 10000000, 0),
(132, 'LKD: LKD Dekan', '- Melakukan Approve LKD mingguan dosen', 32, 11, 16, '2018-03-30', 'dekan', 1, 'to_do', 3, '2018-03-29', '8', 10100000, 0),
(133, 'LKD: LKD Rektor', 'Melakukan approve LKD bulanan', 32, 11, 16, '2018-04-01', 'rektor', 1, 'to_do', 3, '2018-03-31', '8', 10000000, 0),
(134, 'Master Data: Master Pusat - Perguruan Tinggi', '1. Input Data Profil Perguruan Tinggi( Identitas & Akta Terakhir)\n2. Input Alamat, Kontak & Pengesahan (Edit, Save, Delete)\n', 32, 15, 16, '2018-04-24', 'admin', 5, 'to_do', 3, '2018-04-23', '8', 9998750, 0),
(135, 'Master Data: Akademik - Data Gedung & Ruangan `', '', 32, 15, 16, '2018-04-28', 'admin', 3, 'to_do', 3, '2018-04-27', '8', 9999375, 0),
(136, 'Master Data: Master Pusat - Data Fakultas', '', 32, 15, 16, '2018-04-26', 'admin', 4, 'to_do', 3, '2018-04-25', '8', 9999250, 0),
(137, 'Data Prodi ', '', 32, 0, 16, NULL, '', 4, 'to_do', 3, NULL, '8', 10200000, 1),
(138, 'Master Data: Civitas - Data Pimpinan', '1. Tambah Data Prodi\n2. Kelola Data Profil (Save, Edit, Delete)\n', 32, 15, 16, '2018-05-02', 'admin', 4, 'to_do', 3, '2018-05-01', '8', 9999492.1875, 0),
(139, 'Master Data: Akademik - Data Matakuliah', '1. Tambah Data Matakuliah\n2. Kelola Data Matakuliah (Edit, Hapus, Save)\n3. List Data Entry Mata Kuliah\n4. Kelola List Data Matakuliah (Edit, Hapus, Save)\n', 32, 15, 16, '2018-05-04', 'admin', 4, 'to_do', 3, '2018-05-03', '8', 9999468.75, 0),
(140, 'Master Data: Akademik-Data Tahun Ajaran', '1. Tambah Data Tahun Ajaran\n2. Kelola List Data Tahun Ajaran (Edit, Hapus, Save)\n', 32, 15, 16, '2018-05-06', 'admin,prodi', 2, 'to_do', 3, '2018-05-05', '8', 9999406.25, 0),
(141, 'Master Data: Akademik - Data Kelas', '1. Tambah Data Kelas\n2. Kelola List Data Kelas (Edit, Hapus, Save)\n', 32, 15, 16, '2018-05-08', 'admin', 2, 'to_do', 3, '2018-05-07', '8', 9999437.5, 0),
(142, 'Master Data: Civitas- Data Akun Pegawai', '1. Tambah Data Akun Pegawai\n2. Kelola List Data Pegawai (Edit, Hapus, Save)\n3. Edit Role User\n', 32, 15, 16, '2018-05-10', 'admin', 3, 'to_do', 3, '2018-05-09', '8', 9999496.09375, 0),
(143, 'Master Data: Civitas - Data Dosen', '1. Tambah Data Dosen\n2. Kelola List Data Dosen (Edit, Hapus, Save)\n', 32, 15, 16, '2018-05-12', 'admin,prodi', 3, 'to_do', 3, '2018-05-11', '8', 9999498.046875, 0),
(144, 'Master Data : Civitas - Data Mahasiswa', '', 32, 15, 16, '2018-05-14', 'admin', 3, 'to_do', 3, '2018-05-13', '8', 9999484.375, 0),
(145, 'Master Data: Civitas - Data Staff', '1. Tambah Data Staff\n2. Kelola List Data Staff (Edit, Hapus, Save)\n', 32, 15, 16, '2018-05-16', 'admin', 3, 'to_do', 1, '2018-05-15', '8', 0, 0),
(146, 'Data Prodi', '1. Tambah Data Prodi\n2. Kelola Data Profil (Save, Edit, Delete)\n', 32, 15, 16, NULL, '', 3, 'to_do', 2, NULL, '8', 0, 1),
(147, 'Master Data: Master Pusat - Program Studi', '', 32, 15, 16, '2018-04-22', 'admin', 3, 'to_do', 3, '2018-04-21', '8', 9999000, 0),
(148, 'Introductions UI/UX & CD', 'UI/UX - Pengenalan UI dan UX, Tools, dan Design UI menggunakan figma.  CD - Pengenalan tools corel draw', 36, 0, 8, NULL, '', 1, 'to_do', 3, NULL, '', 10000000, 0),
(149, 'Introduction', 'Belajar Strategic Mnagement dan business analyst', 37, 0, 14, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(150, 'Studi Kasus I', 'Belajar Tokoprdia dan Kanban', 37, 0, 14, NULL, '', 1, 'to_do', 3, NULL, '', 0, 0),
(151, 'Studi Kasus II', 'Tokopedia ', 37, 0, 14, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(152, 'MyWallet', 'Aplikasi manajemen keuangan', 36, 0, 8, '2018-05-17', 'Prototype', 3, 'to_do', 3, '2018-05-16', '54,56', 10100000, 0),
(153, 'Poster dan Logo', 'Poster dan Logo', 36, 0, 3, '2018-05-17', 'Content', 3, 'to_do', 3, '2018-05-16', '55', 9999500, 0),
(154, 'Testing App', 'Pengujian Acceptance Testing ke User (Simulasi)', 36, 0, 8, '2018-05-18', 'Prototype,Content', 3, 'to_do', 3, '2018-05-16', '54,56,55', 9999500, 0),
(155, 'Konten Halaman Utama Website', 'Website 4nesia', 38, 0, 2, '2018-05-22', '', 1, 'to_do', 1, '2018-05-15', '1', 0, 0),
(156, 'Konten Halaman Detail Service', 'Website 4nesia.com', 38, 0, 2, '2018-05-24', '', 1, 'to_do', 1, '2018-05-22', '1', 0, 0),
(157, 'Strategi Marketing SOSMED ', '4nesia', 38, 0, 2, '2018-05-20', '', 1, 'to_do', 1, '2018-05-25', '1', 0, 0),
(158, 'Update Blog 4nesia', 'Website 4nesia', 38, 0, 2, '2018-06-05', '', 1, 'to_do', 1, '2018-05-29', '1', 0, 0),
(159, 'Konten Halaman Service ', 'Website 4nesia', 38, 0, 2, '2018-06-15', '', 1, 'to_do', 1, '2018-06-06', '1', 0, 0),
(160, 'Video Animasi 4nesia', '4nesia', 38, 0, 1, '2018-06-30', '', 1, 'to_do', 1, '2018-06-16', '', 0, 0),
(161, 'Menambahkan Baca Berita Lainnya', 'di homepage/post', 39, 0, 2, NULL, '', 1, 'to_do', 3, '2018-05-29', '5', 9999500, 0),
(162, 'Menampilkan Berita berdasarkan bulan', '', 39, 0, 2, NULL, '', 1, 'to_do', 3, '2018-05-30', '5', 9999500, 0),
(163, 'Menambahkan pada editor paragraf pos rata kanan kiri', '', 39, 0, 2, NULL, '', 1, 'to_do', 3, '2018-05-31', '5', 9999500, 0),
(164, 'Memasukkan berita2 lama kemaren minta tolong carikan solusinya', '', 39, 0, 2, NULL, '', 1, 'to_do', 3, '2018-06-01', '5', 10000000, 0),
(165, 'Sub header terbaru dan background nya dihilangkan', '', 39, 0, 1, NULL, '', 1, 'to_do', 3, '2018-06-02', '', 10000000, 0),
(166, 'Fixed layer slide video', '', 39, 0, 1, NULL, '', 1, 'to_do', 3, '2018-05-21', '', 0, 0),
(167, 'Oprek Logo', '', 39, 0, 1, NULL, '', 1, 'to_do', 2, NULL, '', 9998000, 0),
(168, 'Buatkan halaman donwload logo resmi uin', '', 39, 0, 2, NULL, '', 1, 'to_do', 3, '2018-05-29', '', 10000000, 0),
(169, 'Membuat Usecase', 'Usecase diagrama untuk aplikasi halonesia', 40, 0, 59, NULL, '', 1, 'to_do', 1, NULL, '', 10000000, 1),
(170, 'Gambar Post dimunculkan saat di share', '', 39, 0, 1, NULL, '', 2, 'to_do', 3, NULL, '', 9999500, 0),
(171, 'Perubahan Data Lapangan dan gedung Olahraga', '', 44, 0, 1, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(172, 'ubah password', 'admin, data cabor dicantumkan biar password bisa di ubah', 44, 0, 1, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(173, 'non aktifkan new tab di landing page', 'klik admin/public page tanpa new tab', 44, 0, 8, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(174, 'Update Landing page', 'mengubah penjelasan public page', 44, 0, 8, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(175, 'Identyfied and Organizing Job Description', 'Membuat format Job Descripton masing-masing divisi\nContoh Template : di https://www.slideshare.net/Shobrie/contoh-job-description-lengkap-70-posisi-jabatan-dalam-perusahaan-not-full-version-45569047 dan di sini https://sleekr.co/resources/job-description-templates/', 45, 0, 8, NULL, '', 1, 'to_do', 2, NULL, '3,16,14,23,1,21,20,8', 10000000, 0),
(176, 'Organizing Payroll Format System', 'Mengidetifikasi sistem penggajian pada karyawan sesuai dengan jabatan, dan beban kerja, tunjangan dan gaji bersih', 45, 0, 23, NULL, '', 5, 'to_do', 1, NULL, '1,8,16,14,23,21,3,20', 0, 0),
(177, 'Archieve and Document Maintenance', '', 45, 0, 23, NULL, '', 5, 'to_do', 1, NULL, '', 0, 0),
(178, 'UI/UX Design Sketching', 'Sketsa Desain', 40, 0, 54, '2018-07-03', '', 1, 'to_do', 3, '2018-07-01', '', 10000000, 0),
(179, 'UI/UX Design Visual on Figma', 'Digitalisasi tampilan Interface Aplikasi melalui Figma', 40, 0, 54, '2018-07-10', '', 1, 'to_do', 3, '2018-07-03', '', 9999500, 0),
(180, 'Business Process Improvement', 'Membuat BPI untuk 4nesia', 45, 0, 14, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(181, 'Analisis Fitur', '', 43, 0, 14, '2018-07-14', '', 1, 'to_do', 3, '2018-07-07', '', 0, 0),
(182, 'Presentasi Project', '', 43, 0, 8, '2018-07-09', '', 3, 'to_do', 3, '2018-07-09', '', 0, 0),
(183, 'PMB', '', 43, 0, 16, NULL, '', 1, 'to_do', 1, NULL, '8', 0, 0),
(184, 'Master Data', '', 43, 0, 16, NULL, '', 3, 'to_do', 1, NULL, '8', 0, 0),
(185, 'Modul KRS', '', 43, 0, 16, NULL, '', 1, 'to_do', 1, NULL, '8', 0, 0),
(186, 'Modul KHS', '', 43, 0, 16, NULL, '', 3, 'to_do', 1, NULL, '8', 0, 0),
(187, 'Modul Absensi', '', 43, 0, 16, NULL, '', 1, 'to_do', 1, NULL, '8', 0, 0),
(188, 'Modul Keuangan', '', 43, 0, 16, NULL, '', 3, 'to_do', 1, NULL, '8', 0, 0),
(189, 'Modul Wisuda', '', 43, 0, 16, NULL, '', 3, 'to_do', 1, NULL, '8', 0, 0),
(190, 'Requirement Gathering', '', 43, 0, 1, '2018-07-09', '', 1, 'to_do', 3, '2018-07-05', '8,14,16,23', 0, 0),
(191, 'Perencanaan Konsep', '', 43, 0, 1, '2018-07-23', '', 1, 'to_do', 3, '2018-07-10', '8,16,14,23', 0, 0),
(192, 'SIAKAD : MASTER DATA', '', 43, 47, 16, '2018-11-01', '', 5, 'to_do', 2, '2018-09-01', '8,14', 0, 0),
(193, 'SIAKAD : KRS ', '', 43, 48, 16, '2019-01-31', '', 5, 'to_do', 1, '2018-11-02', '8,14', 0, 0),
(194, 'SIAKAD : KHS', '', 43, 49, 16, '2019-02-28', '', 3, 'to_do', 1, '2019-02-01', '8,14', 0, 0),
(195, 'SIAKAD : PROFIL', '', 43, 50, 16, '2019-03-17', '', 2, 'to_do', 1, '2019-03-01', '8', 0, 0),
(196, 'SIAKAD : PRESENSI', '', 43, 51, 16, '2019-04-01', '', 3, 'to_do', 1, '2019-03-18', '8,14', 0, 0),
(197, 'SIAKAD : TUGAS AKHIR ', '', 43, 52, 16, '2019-04-15', '', 3, 'to_do', 1, '2019-04-02', '8,14', 0, 0),
(198, 'SIAKAD : WISUDA ', '', 43, 53, 16, '2019-05-06', '', 4, 'to_do', 1, '2019-04-16', '8', 0, 0),
(199, 'SIAKAD : JADWAL PERKULIAHAN', '', 43, 55, 16, '2019-06-10', '', 4, 'to_do', 1, '2019-05-21', '8,14', 0, 0),
(200, 'SIAKAD : PENGAJUAN CUTI', '', 43, 56, 16, '2019-06-30', '', 1, 'to_do', 1, '2019-06-11', '8', 0, 0),
(201, 'SIAKAD : DISPENSASI', '', 43, 57, 16, '2019-07-14', '', 2, 'to_do', 1, '2019-07-01', '8,14', 0, 0),
(202, 'SIAKAD : KEUANGAN ', '', 43, 58, 16, '2019-08-18', '', 5, 'to_do', 1, '2019-07-15', '8', 0, 0),
(203, 'Lembar Kerja Dosen ', '', 43, 59, 16, '2019-09-08', '', 4, 'to_do', 1, '2019-08-19', '8,14', 0, 1),
(204, 'Website Informasi ', '', 43, 60, 16, '2019-09-15', '', 1, 'to_do', 1, '2019-09-09', '8,14', 0, 1),
(205, 'PENGUJIAN & EVALUASI SISTEM', '', 43, 61, 1, '2019-09-22', '', 4, 'to_do', 1, '2019-09-16', '14,8,16', 0, 0),
(206, 'DOKUMENTASI & CLOSING', '', 43, 62, 1, '2019-09-30', '', 4, 'to_do', 1, '2019-09-23', '14,23', 0, 0),
(207, 'SIAKAD : BEASISWA', '', 43, 54, 16, '2019-05-20', '', 3, 'to_do', 1, '2019-05-07', '8,14', 0, 1),
(208, 'Presentasi Project', '', 43, 64, 8, '2018-07-09', '', 4, 'to_do', 3, '2018-07-09', '', 0, 0),
(209, 'Analisis Fitur', '', 43, 63, 14, '2018-07-14', '', 4, 'to_do', 3, '2018-07-07', '', 0, 0),
(210, 'Presentasi Project', '', 43, 64, 8, '2018-07-09', '', 3, 'to_do', 3, '2018-07-09', '', 0, 0),
(211, 'Perencanaan Konsep', '', 43, 46, 1, '2018-07-23', '', 4, 'to_do', 3, '2018-07-10', '16,14,23', 0, 0),
(212, 'Requirement Gathering', '', 43, 45, 1, '2018-07-09', '', 4, 'to_do', 3, '2018-07-05', '14,16,8,23', 0, 0),
(213, 'Akademika: KRS - Status KRS', '', 32, 30, 8, NULL, 'admin', 2, 'to_do', 3, NULL, '16', 0, 0),
(214, 'Akademika: KRS - ACC KRS', '', 32, 30, 8, NULL, 'admin,dosen', 2, 'to_do', 3, NULL, '16', 0, 0),
(215, 'Akademika: KRS - Jadwal KRS', '', 32, 30, 8, NULL, 'admin', 3, 'to_do', 3, NULL, '16', 0, 0),
(216, 'Akademika: KRS - Master KRS > Data Matkul', '', 32, 30, 8, NULL, 'admin', 2, 'to_do', 3, NULL, '16', 233, 0),
(217, 'KRS: Registrasi Mata Kuliah', '', 32, 30, 8, NULL, 'mahasiswa', 2, 'to_do', 3, NULL, '16', 0, 0),
(218, 'Akademika: KRS - Kelas Matkul', '', 32, 30, 8, NULL, 'admin', 2, 'to_do', 3, NULL, '16', 0, 0),
(219, 'Perkuliahan: Presensi Dosen', '', 32, 31, 8, NULL, 'admin', 2, 'to_do', 3, NULL, '16', -355, 1),
(220, 'Master Data: Master Pusat - Perguruan Tinggi', '', 32, 15, 16, NULL, 'admin,prodi', 3, 'to_do', 3, NULL, '8', 9998500, 1),
(221, 'Master Data: Master Pusat - Pimpinan ', '', 32, 15, 16, NULL, 'admin', 3, 'to_do', 1, NULL, '8', 0, 0),
(222, 'Akun: Ubah Password ', '', 32, 17, 8, NULL, 'admin,rektor,dekan,prodi,dosen,mahasiswa', 2, 'to_do', 3, NULL, '16', 0, 0),
(223, 'Akun: Riwayat Login', '', 32, 17, 16, NULL, 'admin,rektor,dekan,prodi,dosen,mahasiswa', 2, 'to_do', 3, NULL, '8', 0, 0),
(224, 'Akun: Edit Profil', '', 32, 0, 16, NULL, 'rektor,dekan,prodi,dosen,mahasiswa', 2, 'to_do', 3, NULL, '8', 0, 0),
(225, 'Akun: Unduh Berkas', '', 32, 17, 8, NULL, 'rektor,dekan,prodi,dosen,mahasiswa', 2, 'to_do', 1, NULL, '16', 0, 0),
(226, 'Akun: Form TTD', '', 32, 17, 8, NULL, 'rektor,dekan,prodi,dosen', 3, 'to_do', 3, NULL, '16', 0, 0),
(227, 'Akademika: Perkuliahan - Pertemuan ', '', 32, 15, 16, NULL, 'admin,rektor,dekan,dosen', 3, 'to_do', 3, NULL, '8', 0, 0),
(228, 'Akademika: Perkuliahan - Aspek Nilai', '', 32, 32, 16, NULL, 'admin', 3, 'to_do', 2, NULL, '8', 0, 0),
(229, 'Akademika: Perkuliahan - Jadwal Kuliah', '', 32, 22, 16, NULL, 'admin', 3, 'to_do', 2, NULL, '8', 0, 0),
(230, 'Akademika: Perkuliahan - Presensi Dosen', '', 32, 31, 16, NULL, 'admin', 3, 'to_do', 3, NULL, '8', 0, 1),
(231, 'Akademika: Perkuliahan -  Presensi Mahasiswa', '', 32, 31, 16, NULL, 'admin', 3, 'to_do', 2, NULL, '8', 0, 0),
(232, 'Akademika: Perkuliahan - Perkuliahan Aktif', '', 32, 31, 16, NULL, 'admin', 3, 'to_do', 2, NULL, '8', 0, 1),
(233, 'Perkuliahan: Jadwal - Jadwal Kuliah', '', 32, 22, 16, NULL, 'dekan,prodi,dosen,mahasiswa', 4, 'to_do', 2, NULL, '8', 0, 0),
(234, 'Perkuliahan: Jadwal - Jadwal Ujian', '', 32, 22, 16, NULL, 'dekan,prodi,dosen,mahasiswa', 4, 'to_do', 2, NULL, '8', 0, 0),
(235, 'Akademika: Status Mahasiswa - Pengajuan Cuti', '', 32, 24, 16, NULL, 'admin', 3, 'to_do', 1, NULL, '8', 9997000, 1),
(236, 'Akademika: Status Mahasiswa - Mahasiswa Cuti', '', 32, 24, 16, NULL, 'admin', 3, 'to_do', 1, NULL, '8', 9997500, 1),
(237, 'Akademika: Status Mahasiswa - Lulus Semester', '', 32, 32, 16, NULL, 'admin', 3, 'to_do', 1, NULL, '8', 9998000, 1),
(238, 'Akademika: Status Mahasiswa - Lulus Akademik', '', 32, 32, 16, NULL, 'admin', 3, 'to_do', 1, NULL, '8', 9998500, 1),
(239, 'Akademika: KRS - Master KRS > Registrasi MataKuliah', '', 32, 30, 16, NULL, 'prodi,dosen,admin', 3, 'to_do', 3, NULL, '8', 0, 0),
(240, 'KRS: Data Matakuliah', '', 32, 30, 16, NULL, 'admin,dekan,prodi', 4, 'to_do', 3, NULL, '8', 0, 0),
(241, 'KRS: Dosen Matakuliah', '', 32, 30, 16, NULL, 'admin,dekan,prodi,dosen', 3, 'to_do', 3, NULL, '8', 0, 0),
(242, 'KRS: Cetak KRS', '', 32, 30, 16, NULL, 'admin,dosen,mahasiswa', 3, 'to_do', 1, NULL, '8', 0, 1),
(243, 'KRS: Arsip KRS', '', 32, 30, 16, NULL, 'mahasiswa', 3, 'to_do', 3, NULL, '8', 0, 0),
(244, 'Akademika: KHS - Nilai Mata Kuliah', '', 32, 32, 16, NULL, 'admin,mahasiswa', 3, 'to_do', 2, NULL, '8', 9999000, 0),
(245, 'Akademika: KHS - Transkrip Nilai', '', 32, 32, 16, NULL, 'admin,mahasiswa', 3, 'to_do', 1, NULL, '8', 9999500, 0),
(246, 'Akademika: KHS - Laporan Nilai', '', 32, 32, 16, NULL, 'admin,dosen,mahasiswa', 3, 'to_do', 1, NULL, '8', 10000000, 0),
(247, 'Berita dan Pengumuman', '', 32, 0, 8, NULL, 'admin', 3, 'to_do', 3, NULL, '16', -278, 0),
(248, 'Mobile App Tampilan - All', '1.1.1 Login Screen\n\n1.1.2 Home Screen \n\n1.1.3 Survey Screen\n1.1.3.1 screenChooseSurveyType\n1.1.3.2 screenView&FillingOutSurveyAndSubmit\n\n1.1.4 Berita Screen\n1.1.4.1 screenBeritalist\n1.1.4.2 screenBeritaDetail\n\n1.1.5 Profil Screen \n\n1.1.6 Pengaduan Screen\n1.1.6.1 screenViewMyPengaduanList\n1.1.6.2 screenCreatePengaduan ', 47, 66, 21, NULL, '', 5, 'to_do', 1, NULL, '', 0, 0),
(249, 'Mobile App Activity - Login', '1.1.7.1 Authentification\n1.1.7.2 intentHomescreen', 47, 66, 21, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(250, 'Mobile App Activity - Home ', '1.1.8.1 intentSurvey\n1.1.8.2 intentProfil\n1.1.8.3 intentBeritalist\n1.1.8.4 intentMyPengaduanList\n', 47, 66, 21, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(251, 'Mobile App Activity - Survey', '1.1.9.1 chooseSurveyType\n1.1.9.2 view&fillingoutSurvey\n1.1.9.3 submitSurvey\n', 47, 66, 21, NULL, '', 3, 'to_do', 1, NULL, '', 0, 0),
(252, 'Mobile App Activity - Berita', '1.1.10 Berita Activity\n1.1.10.1 viewBeritalist\n1.1.10.2 viewBeritaDetail\n', 47, 66, 21, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(253, 'Mobile App Activity - Profile', '1.1.11.1 changeUsername\n1.1.11.2 changePhotoProfile\n', 47, 66, 21, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(254, 'Mobile App Activity- Pengaduan', '1.1.12.1 viewMyPengaduanList\n1.1.12.2 createPengaduan \n1.1.12.3 submitPengaduan \n', 47, 66, 21, NULL, '', 3, 'to_do', 1, NULL, '', 0, 0),
(255, 'Web App Tampilan - Login', '', 47, 67, 8, NULL, '', 1, 'to_do', 3, NULL, '25', 10000000, 0),
(256, 'Web App Tampilan - Home', '', 47, 67, 8, NULL, '', 2, 'to_do', 2, NULL, '', 10100000, 0),
(257, 'Web App Tampilan - Survey', '1.1.15.1 Survey_List\n1.1.15.2 Survey_Editor\n1.1.15.3 Survey_Submissionlist\n1.1.15.4 Survey_Results(Diagram kah?)', 47, 67, 8, NULL, '', 4, 'to_do', 2, NULL, '', 9999500, 0),
(258, 'Web App Tampilan - Berita', '1.1.16.1 Berita_List (buat Crud)\n1.1.16.2 Berita_Editor\n', 47, 67, 8, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(259, 'Web App Tampilan - List akun', 'Buat Crud', 47, 67, 8, NULL, '', 1, 'to_do', 2, NULL, '', 10049750, 0),
(260, 'Web App Tampilan - Pengaduan', '1.1.18.1 ALLPengaduan_List (Crud)\n1.1.18.2 Reply_Pengaduan Screen\n', 47, 67, 8, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(261, 'Web App Activity - Login', 'Auth\ndirect to home', 47, 67, 13, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(262, 'Web App Activity - Survey', 'CrUD Survey\nSave/Draft Survey\nPublish(time Set) Survey\nSubmission_list\nViewResults\n', 47, 67, 13, NULL, '', 5, 'to_do', 1, NULL, '', 0, 0),
(263, 'Web App Activity - Berita', 'CrUD Berita\nSave/Draft Berita\nPublish Berita\n', 47, 67, 13, NULL, '', 3, 'to_do', 1, NULL, '', 0, 0),
(264, 'Web App Activity - Pengaduan', 'updateDeletePengaduanList\nreplyPengaduan\n', 47, 67, 13, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(265, 'Web App Activity - CrUD User Account', '', 47, 67, 13, NULL, '', 1, 'to_do', 1, '2018-09-09', '', 0, 0),
(266, 'API Login', 'username\npassword', 47, 68, 6, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(267, 'API Berita', 'Get:\nJudul\nfoto\ndate\nisi\n', 47, 68, 6, NULL, '', 4, 'to_do', 1, NULL, '', 0, 0),
(268, 'API Pengaduan', 'Post:\n1.kategori\n2.isi\n3.foto (opsional di isi)\n\nget :\n1.kategori\n2.isi\n3.foto (opsional di isi)\n4.status', 47, 68, 6, NULL, '', 1, 'to_do', 1, NULL, '', 0, 0),
(269, 'API Survey', 'Get:\n1.Pertanyaan survey berdasarkan jenis diklat.\n\nPost:\n1.jawaban survey', 47, 68, 6, NULL, '', 2, 'to_do', 1, NULL, '', 0, 0),
(270, 'API Profil', 'POS & GET\n1.Nama\n2.Jurusan Diklat\n3.Foto\n4.Kontak', 47, 68, 6, NULL, '', 4, 'to_do', 1, NULL, '', 0, 0),
(271, 'Perwalian: ACC KRS PA', '', 32, 0, 16, NULL, 'dosen', 2, 'to_do', 3, NULL, '8', 0, 0),
(272, 'Perwalian: Presensi Mahasiswa', '', 32, 0, 16, NULL, 'dosen', 1, 'to_do', 3, NULL, '8', 0, 0),
(273, 'Akademika: KHS - KHS Mahasiswa', '', 32, 0, 8, NULL, 'admin', 2, 'to_do', 1, NULL, '16', 0, 0),
(274, 'Perkuliahan: Presensi Kuliah', '', 32, 0, 8, NULL, 'dosen', 3, 'to_do', 3, NULL, '16', 0, 0),
(275, 'Nilai: Nilai Mata Kuliah', '', 32, 0, 8, NULL, 'dosen,dekan,prodi', 3, 'to_do', 2, NULL, '16', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `task_status`
--

CREATE TABLE `task_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `task_status`
--

INSERT INTO `task_status` (`id`, `title`, `key_name`, `color`, `sort`, `deleted`) VALUES
(1, 'To Do', 'to_do', '#F9A52D', 0, 0),
(2, 'In progress', 'in_progress', '#1672B9', 1, 0),
(3, 'Done', 'done', '#00B393', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `deleted`) VALUES
(1, 'PPN (10%)', 10, 0),
(2, 'PPH 23', 2, 0),
(3, 'PPH Final', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `team`
--

INSERT INTO `team` (`id`, `title`, `members`, `deleted`) VALUES
(1, 'Developer', '4,5,6,8', 0),
(2, 'Design & Creative', '5,3', 0),
(3, 'KP(Develop)', '9,12,14,17,4,16,13', 0),
(4, 'Management', '14,7', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_member_job_info`
--

CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `salary` double NOT NULL DEFAULT 0,
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `team_member_job_info`
--

INSERT INTO `team_member_job_info` (`id`, `user_id`, `date_of_hire`, `deleted`, `salary`, `salary_term`) VALUES
(1, 2, NULL, 0, 0, '0'),
(2, 1, '2015-10-01', 0, 0, ''),
(3, 3, NULL, 0, 0, '0'),
(4, 4, NULL, 0, 0, '0'),
(5, 5, NULL, 0, 0, '0'),
(6, 6, NULL, 0, 0, '0'),
(7, 7, NULL, 0, 0, '0'),
(8, 8, NULL, 0, 0, '0'),
(9, 9, NULL, 0, 0, '0'),
(10, 10, NULL, 0, 0, '0'),
(11, 12, NULL, 0, 0, '0'),
(12, 13, NULL, 0, 0, '0'),
(13, 14, NULL, 0, 0, '0'),
(14, 15, NULL, 0, 0, '0'),
(15, 16, NULL, 0, 0, '0'),
(16, 17, NULL, 0, 0, '0'),
(17, 19, NULL, 0, 0, '0'),
(18, 20, NULL, 0, 0, '0'),
(19, 21, NULL, 0, 0, '0'),
(20, 22, NULL, 0, 0, ''),
(21, 23, NULL, 0, 0, '0'),
(22, 25, NULL, 0, 0, '0'),
(23, 26, NULL, 0, 0, '0'),
(24, 38, NULL, 0, 0, '0'),
(25, 47, '2018-05-13', 0, 0, ''),
(26, 48, '2018-05-13', 0, 0, ''),
(27, 49, '2018-05-13', 0, 0, ''),
(28, 50, '2018-05-13', 0, 0, ''),
(29, 51, '2018-05-13', 0, 0, ''),
(30, 52, '2018-05-13', 0, 0, ''),
(31, 53, '2018-05-13', 0, 0, ''),
(32, 54, '2018-05-13', 0, 0, ''),
(33, 55, '2018-05-13', 0, 0, ''),
(34, 56, '2018-05-13', 0, 0, ''),
(35, 57, '2018-05-13', 0, 0, ''),
(36, 58, '2018-05-13', 0, 0, ''),
(37, 59, '2018-05-13', 0, 0, ''),
(38, 60, '2018-05-13', 0, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tickets`
--

INSERT INTO `tickets` (`id`, `client_id`, `project_id`, `ticket_type_id`, `title`, `created_by`, `created_at`, `status`, `last_activity_at`, `assigned_to`, `labels`, `deleted`) VALUES
(1, 9, 0, 3, 'Request Budget Project Live Streaming', 24, '2017-09-14 06:12:24', 'open', '2017-09-14 06:12:55', 0, NULL, 1),
(2, 7, 0, 1, 'Rapat', 16, '2017-10-07 08:44:10', 'closed', '2017-10-07 08:44:10', 0, '', 0),
(3, 7, 0, 1, 'MyJobdesk', 3, '2017-11-04 13:44:50', 'new', '2017-11-04 13:44:50', 0, '', 1),
(4, 7, 0, 1, 'Jobdesk COO', 2, '2017-11-04 14:35:14', 'closed', '2017-11-04 14:37:20', 2, '', 0),
(5, 7, 0, 1, 'CCD Jobdesk', 3, '2017-11-04 14:55:31', 'closed', '2017-11-04 14:55:31', 0, '', 0),
(6, 7, 0, 1, 'Developer', 16, '2017-11-04 15:00:27', 'closed', '2017-11-04 15:00:27', 16, 'Job Desk', 0),
(7, 7, 0, 2, 'UI/UX Designer', 8, '2017-11-04 15:03:43', 'closed', '2017-11-04 15:03:43', 8, '', 0),
(8, 9, 0, 2, 'Developer', 21, '2017-11-04 15:04:25', 'closed', '2017-11-17 16:57:28', 21, 'Job Desk', 0),
(9, 7, 0, 1, 'Business Analyst', 14, '2017-11-04 15:05:30', 'closed', '2017-11-07 06:35:09', 14, '', 0),
(10, 7, 0, 2, 'Developer', 21, '2017-11-04 15:05:34', 'closed', '2017-11-04 15:05:34', 21, 'Job Desk', 0),
(11, 7, 0, 1, 'Accounting ', 23, '2017-11-04 15:08:50', 'closed', '2017-11-04 15:08:50', 0, 'Job Desk', 0),
(12, 7, 0, 4, 'Content Designer', 5, '2017-11-04 22:07:10', 'closed', '2017-11-04 22:07:10', 3, 'Job Desk', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `ticket_comments`
--

INSERT INTO `ticket_comments` (`id`, `created_by`, `created_at`, `description`, `ticket_id`, `files`, `deleted`) VALUES
(1, 24, '2017-09-14 06:12:24', 'tolong dikirimkan proposal pembuatan website', 1, 'a:0:{}', 1),
(2, 1, '2017-09-14 06:12:55', 'baik akan segera kami proses', 1, 'a:0:{}', 1),
(3, 16, '2017-10-07 08:44:10', 'Tidak bisa ikut rapat hari ini krn ada kuliah sampai jam 6', 2, 'a:0:{}', 0),
(4, 3, '2017-11-04 13:44:50', '1. Futsal rutin\n2. Video promosi produk\n3. Media Sosial \n4. ', 3, 'a:0:{}', 1),
(5, 2, '2017-11-04 14:35:14', '- Mengatur setiap event di 4nesia\n- Manajemen Persuratan\n- Mengatur PIket tiap hari', 4, 'a:0:{}', 0),
(6, 2, '2017-11-04 14:37:20', '- Manajemen Sumber Daya Manusia', 4, 'a:0:{}', 0),
(7, 3, '2017-11-04 14:55:31', '1.  Video Promosi Produk\n2.  Futsal Rutin\n3.  Pengadaan Jaket Anggota\n4.  Media Sosial', 5, 'a:0:{}', 0),
(8, 16, '2017-11-04 15:00:27', 'Fokus ke pengembangan produk 4Nesia', 6, 'a:0:{}', 0),
(9, 8, '2017-11-04 15:03:43', 'UI/UX merupakan bidang yang berfokus pada desain antarmuka hingga analisis user experience', 7, 'a:0:{}', 0),
(10, 21, '2017-11-04 15:04:25', 'Developer', 8, 'a:0:{}', 0),
(11, 14, '2017-11-04 15:05:30', 'Yang senang Duit', 9, 'a:0:{}', 0),
(12, 21, '2017-11-04 15:05:34', 'Developer', 10, 'a:0:{}', 0),
(13, 23, '2017-11-04 15:08:50', 'Job Description:\n1.Pencatatan Arus Kas terhadap Project\n2.Pengorganisiran mengenai Perkembangan Project dalam hal pencatatan keuangan\n3.Pembuatan Laporan mengenai Perubahan Modal \n4.Pencatatan dan Laporan mengenai Laba/Rugi selama Project atau Product berjalan\n5.Pencatatan dan pelaporan akhir setelah project atau product selesai dikejakan.', 11, 'a:0:{}', 0),
(14, 5, '2017-11-04 22:07:10', '1. Desain Mockup \n2. Web\n3. Android\n4. Konten Website', 12, 'a:0:{}', 0),
(15, 14, '2017-11-07 06:35:05', 'What a BA is Expected to Deliver?\nA Business Analyst serves as the bridge between the business users and the technical IT\npeople. Their presence will contribute significantly to the success of IT projects. There are\nmany benefits of having a dedicated business analyst. \n\nA dedicated business analyst can:\n Delivers a clear project scope from a business point of view.\n\n Develop sound business cases and more realistic estimation of resources and\nbusiness benefits.\n\n Prepares better reports on project scoping, planning and management in terms of\ncosts and schedule, especially for large-scale IT projects.\n\n Produces clear and concise requirements, which in turn, helps provide clearer and\nmore accurate requirements, if the IT project is outsourced\n\n Elicit the real business needs from users and effectively manage user expectations.\n\n Improves the quality of design for the proposed IT system so that it meets the user\nrequirements.\n\n Ensures the quality of the system developed before passing on to end-users for\nreview and acceptance.\n\n Arranges comprehensive quality test on the delivered systems and provide\nfeedback to the technical IT people.', 9, 'a:0:{}', 0),
(16, 14, '2017-11-07 06:35:09', 'What a BA is Expected to Deliver?\nA Business Analyst serves as the bridge between the business users and the technical IT\npeople. Their presence will contribute significantly to the success of IT projects. There are\nmany benefits of having a dedicated business analyst. \n\nA dedicated business analyst can:\n Delivers a clear project scope from a business point of view.\n\n Develop sound business cases and more realistic estimation of resources and\nbusiness benefits.\n\n Prepares better reports on project scoping, planning and management in terms of\ncosts and schedule, especially for large-scale IT projects.\n\n Produces clear and concise requirements, which in turn, helps provide clearer and\nmore accurate requirements, if the IT project is outsourced\n\n Elicit the real business needs from users and effectively manage user expectations.\n\n Improves the quality of design for the proposed IT system so that it meets the user\nrequirements.\n\n Ensures the quality of the system developed before passing on to end-users for\nreview and acceptance.\n\n Arranges comprehensive quality test on the delivered systems and provide\nfeedback to the technical IT people.', 9, 'a:0:{}', 0),
(17, 24, '2017-11-17 16:57:28', 'halo', 8, 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `title`, `deleted`) VALUES
(1, 'General Support', 0),
(2, 'Technical', 0),
(3, 'Management', 0),
(4, 'Design & Creative', 0),
(5, 'Biling', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_do`
--

CREATE TABLE `to_do` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('to_do','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `start_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `to_do`
--

INSERT INTO `to_do` (`id`, `created_by`, `created_at`, `title`, `description`, `labels`, `status`, `start_date`, `deleted`) VALUES
(1, 3, '2017-10-22 13:52:17', 'Pengadaan Jaket anggota', '', '', 'to_do', NULL, 0),
(2, 3, '2017-10-22 13:52:37', 'aktifkan media sosial', '', '', 'to_do', NULL, 0),
(3, 3, '2017-10-22 13:52:56', 'fun futsal rutin', '', '', 'to_do', NULL, 0),
(4, 7, '2017-10-25 03:16:48', 'Membangun Relasi 4NESIA dengan PT. Taspen', 'menyelaraskan VisMis 4nesia dengan VisMis dan Langkah Strategy PT.TASPEN ', 'Important', 'to_do', '2017-10-25', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `notification_checked_at` datetime DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT 0,
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT 0,
  `note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `sticky_note` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT 1,
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_type`, `is_admin`, `role_id`, `email`, `password`, `image`, `status`, `message_checked_at`, `client_id`, `notification_checked_at`, `is_primary_contact`, `job_title`, `disable_login`, `note`, `address`, `alternative_address`, `phone`, `alternative_phone`, `dob`, `ssn`, `gender`, `sticky_note`, `skype`, `enable_web_notification`, `enable_email_notification`, `created_at`, `last_online`, `deleted`) VALUES
(1, 'Andi Agus', 'Salim', 'staff', 1, 0, 'gus@4nesia.com', '6408d82d4e511e57b35ba1399ca069e2', '_file5b12ebcb4399e-avatar.png', 'active', '2018-06-04 21:19:50', 0, '2018-09-10 11:35:31', 0, 'Chief Executive Officer', 0, NULL, 'gus@4nesia.com', '', '081355147878', '', '1996-08-17', '', 'male', 'Untuk Cpanel Bkpsdm sudah bisa diakses \nUser : s3datab3kd\nPass : $Ezy*56*2G', 'pelajarpro', 1, 1, '2017-05-13 16:44:56', '2018-09-10 13:47:58', 0),
(2, 'Muhammad', 'Ridwan', 'staff', 1, 0, 'ridwan@4nesia.com', 'e93a7758ed3a45d7eae20e48821ccd9f', '_file59b7685361596-avatar.png', 'active', '2018-05-18 07:07:22', 0, '2018-07-05 07:12:58', 0, 'Chief Operating Officer', 0, NULL, 'Jl. Sukabirus F14 Kecamatan Dayeuhkolot, Kabupaten Bandung  Jawa Barat Indonesia', 'Jl. Andi Macca Amirullah Kecamatan Tempe Kabupaten Wajo Sulawesi Selatan Indonesia', '08112248894', '', '1994-08-08', '', 'male', '', 'adamthesky@hotmail.com', 1, 1, '2017-05-13 16:53:30', '2018-09-08 15:26:06', 0),
(3, 'Ahmad Muammar', 'A.', 'staff', 0, 6, 'marrzhin@4nesia.com', 'd47f031bd9c6dd179ab1dfcded014e12', '_file59b7f0d9c8136-avatar.png', 'active', '2017-09-12 16:27:08', 0, '2018-07-06 10:09:54', 0, 'Chief Creative Officer', 0, NULL, 'marrzhin@4nesia.com', '', '082394707711', '', '1993-10-03', '', 'male', 'KP 2018\noutput SIAKAD Mobile\nproject Unismuh palu : Slide, Logo, BG\n\ningat :\nbuat template MOU\ndesain kartu nama 4nesia\nfoto dan id card\n\n//jobdesk october 2017\n1. design jaket (pengadaan jaket)\n2. progres produk \n3. futsal rutin anggota\n\n4. Instagram buat infografis mengenai perusahaan \n\nkontrol kegiatan peserta kp\n\nKEEP ON FOCUS\n\ninstall wp\ninstall plugin\ninstall template\ncontent home \ncontent page\n', '', 1, 1, '2017-05-13 17:07:20', '2018-07-06 10:09:26', 0),
(4, 'Alfian', 'Hidayat', 'staff', 0, 6, 'alfianh@4nesia.com', '9057e9b58d643ae614660246e49449b9', '_file59d9095ba29c1-avatar.png', 'active', '2017-06-24 16:37:05', 0, '2017-10-07 17:07:00', 0, 'Chief Technology Officer', 0, NULL, 'alfianh@4nesia.com', 'alfian08.ah@gmail.com', '08981886670', '08112414033', '1996-08-28', '', 'male', NULL, '', 1, 1, '2017-05-13 17:09:18', NULL, 0),
(5, 'Muhammad Fikri', 'Makmur', 'staff', 0, 2, 'fik@4nesia.com', 'cb541395ab0448e88ac2461dfbdc1d40', '_file59b7f4935244d-avatar.png', 'active', '2018-04-04 10:00:35', 0, '2018-07-20 05:00:46', 0, 'Design & Creative', 0, NULL, 'fik@4nesia.com', 'muhammadfikrimakmur@gmail.com', '085241098708', '', '1998-01-09', '9801019009', 'male', '7/11/2017\nwawancara PPB\nbrefeing PKM\n8/11/2017\nUTS OOP\n', '', 1, 1, '2017-05-13 17:17:04', '2018-09-08 06:40:04', 0),
(6, 'Muhamad Ikhsan', 'Laisa', 'staff', 0, 0, 'ikhsanlaisa@4nesia.com', '394c9b7a86fec11badce8b7899dfec4f', NULL, 'active', '2017-09-11 15:05:47', 0, '2018-09-08 14:42:29', 0, 'Developer', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-05-13 17:51:00', '2018-09-08 15:04:07', 0),
(7, 'Abdul', 'Aziz', 'staff', 0, 0, 'abd.aziz@4nesia.com', 'f90b2b6ba6fce2888ad2094d5848192b', '_file5a2e46a769eb0-avatar.png', 'active', '2018-05-22 07:08:51', 0, '2018-05-28 00:24:22', 0, 'Chief Management Officer', 0, NULL, 'abd.aziz@4nesia.com', 'abdulazizgade@gmail.com', '082368738501', '', '1995-06-19', '', 'male', NULL, '', 1, 1, '2017-05-14 05:57:25', '2018-05-28 02:51:17', 0),
(8, 'Arian', 'Nurrifqhi', 'staff', 1, 0, 'arian@4nesia.com', '28141538f0724afb9d87e499409ec730', '_file59b7f27f17728-avatar.png', 'active', '2018-09-08 13:11:55', 0, '2018-09-13 08:48:15', 0, 'UI/UX Developer', 0, NULL, 'arian@4nesia.com', '', '085399055225', '', '0000-11-30', '', 'male', '1. Wireframe/ mockup ngantri app (80 %)\n2. Wireframe/ mockup SIDORA mobile app (done)\n3. Manual book KP FRI (done) \n4. UI Design Siakad UIN Antasari (on progres)\n5. PMB Siakad Palu\n6. UI Siakad Palu', '', 1, 1, '2017-05-14 09:54:36', '2018-09-13 13:23:25', 0),
(9, 'Megananda', 'Septianto', 'staff', 0, 4, 'septianto.mega@gmail.com', '2cbeabed74b6550cf738374a6328d798', '_file592d2e6802b2e-avatar.png', 'inactive', '2017-05-20 07:12:01', 0, '2017-06-10 07:56:55', 0, 'Intern (Developer)', 1, NULL, '', '', '', '', NULL, '', 'male', NULL, '', 1, 1, '2017-05-16 09:51:15', NULL, 0),
(10, 'Muhamad Unsurna', 'Mauris', 'staff', 0, 4, 'Maurisunsurna@gmail.com', '3c8069caaa194018ef0491f3314fe8a8', NULL, 'inactive', '2017-07-03 18:37:55', 0, '2017-07-05 07:02:55', 0, 'Intern (Design and Cretive)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-05-16 09:52:51', NULL, 0),
(11, 'abu dzar', 'al ghiffari', 'client', 0, 0, 'dzaralfari@gmail.com', 'a392861f6dcee9c7b8446fe0572b2ed7', NULL, 'active', NULL, 4, '2017-05-20 07:39:01', 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-05-16 09:55:02', NULL, 0),
(12, 'Yukiyoshi', 'Adhiyat Machdar', 'staff', 0, 4, 'gxyukiyoshi@gmail.com', '83953804391a586bb6b7e68219c8bf19', NULL, 'inactive', NULL, 0, '2017-05-30 08:09:55', 0, 'Intern (Web Developer)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-05-16 10:01:25', NULL, 0),
(13, 'Hariyanto', 'Djalil', 'staff', 0, 4, 'hariyantodjz@gmail.com', '302a6b296c264c3ea75c97471036d58b', '_file592d0a93513d7-avatar.png', 'active', NULL, 0, '2017-06-27 13:28:16', 0, 'Intern (Developer)', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-05-16 10:02:42', '2018-09-12 16:32:18', 0),
(14, 'Hansa', 'Mustada', 'staff', 0, 6, 'hansa@4nesia.com', '044df182983d9d59079f9b0c84c53f04', '_file59b80c00dd731-avatar.png', 'active', '2018-07-11 05:16:55', 0, '2018-09-05 04:18:33', 0, 'Business Analyst ', 0, NULL, '', '', '08216285278', '', NULL, '', 'male', NULL, '', 1, 1, '2017-05-16 10:04:16', '2018-09-10 13:57:44', 0),
(15, 'Finka', 'Amalia', 'staff', 0, 4, 'Amaliafinka@gmail.com', '56ff9e052494747d708c6c68fa536c32', NULL, 'inactive', '2017-06-23 15:23:08', 0, '2017-07-01 13:51:38', 0, 'Intern (Creative &  Design)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'female', 'To do :\n1. Video Profile 4nesia\n2. Remake web content 4nesia\n3. Membuat mockup aplikasi\n4. Analisis mengenai kantor & basecamp 4nesia\n\nTask :\n1. Video Testimoni\n2. Video teaser (30 detik)\n3. Video profile ( 90 detik )\n\n', NULL, 1, 1, '2017-05-16 10:07:12', NULL, 0),
(16, 'Baso Ahmad', 'Muflih Y', 'staff', 1, 0, 'baso@4nesia.com', 'eb7574c301d2a0f9b3ad6a4059be2196', '_file5a7ef71f17eac-avatar.png', 'active', '2018-07-27 02:44:20', 0, '2018-09-08 13:35:06', 0, 'Web Developer', 0, NULL, '', '', '', '', NULL, 'BNI 0583024958', 'male', NULL, '', 1, 1, '2017-05-16 10:07:21', '2018-09-08 13:35:02', 0),
(17, 'Imam', 'Fahrurrozi', 'staff', 0, 0, 'imamfa@outlook.com', '5f4dcc3b5aa765d61d8327deb882cf99', '_file591afbe33d7a0-avatar.png', 'inactive', NULL, 0, '2017-06-03 08:10:25', 0, 'Intern (Develover)', 1, NULL, '', '', '', '', NULL, '', 'male', '', '', 1, 1, '2017-05-16 13:06:12', NULL, 0),
(19, 'Abu Dzar', 'Al-Ghiffari', 'staff', 0, 0, 'zottagifar@gmail.com', 'a392861f6dcee9c7b8446fe0572b2ed7', '_file592d100666c61-avatar.png', 'inactive', '2017-05-20 07:54:53', 0, '2017-06-16 12:37:21', 0, 'KP(Develop)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-05-20 07:51:25', NULL, 0),
(20, 'Lukmanul', 'Idris', 'staff', 0, 0, 'lukman@4nesia.com', 'b5bbc8cf472072baffe920e4e28ee29c', '_file5929866a46434-avatar.png', 'active', NULL, 0, NULL, 0, 'Production Owner', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-05-27 13:54:12', NULL, 0),
(21, 'Radhiansyah', '.', 'staff', 0, 6, 'adhia@4nesia.com', '8b945b7403e1cf8deb6bd483e022c753', NULL, 'active', NULL, 0, '2018-07-05 08:36:47', 0, 'IoT Developer', 0, NULL, '', '', '', '', NULL, '', 'male', NULL, '', 1, 1, '2017-06-17 16:43:15', '2018-07-05 08:36:22', 0),
(22, 'Hansa', 'Mustada', 'staff', 0, 1, 'hansa@4nesia.com', '368c14175edf9865df1c01eda5af6f70', NULL, 'active', NULL, 0, NULL, 0, 'Management', 0, NULL, 'hansa@4nesia.com', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-09-12 07:12:54', NULL, 1),
(23, 'Hendri', 'Gunawan', 'staff', 0, 6, 'hendri@4nesia.com', '10e743bad1aa7bb2b74e48d59994a515', '_file5a06f7ca5b532-avatar.png', 'active', '2018-04-09 16:19:22', 0, '2018-09-02 10:47:00', 0, 'Management', 0, NULL, 'hendri@4nesia.com', '', '082193550496', '', NULL, '7105085634', 'male', NULL, '', 1, 1, '2017-09-12 14:45:05', '2018-09-02 11:42:50', 0),
(25, 'Muhammad Yusuf', 'Matra', 'staff', 0, 0, 'yusuf@4nesia.com', 'ec0fd7b3d472368ccbfbfb6ddd3fb3d8', '_file59c8f1920a065-avatar.png', 'active', NULL, 0, '2018-09-08 14:03:58', 0, 'Designer', 0, NULL, 'Jl.Sukabirus. Rajawali futsal 12\nNo.12', 'Jl.Sukabirus. Rajawali futsal 12\nNo.12', '82219444898', '082219444898', '1996-06-30', '', 'male', NULL, '', 1, 1, '2017-09-25 11:57:46', '2018-09-08 16:23:47', 0),
(26, 'Alita', 'Nurbaini', 'staff', 0, 0, 'alitanurwid@gmail.com', '8308e5f21867c7f1aeafcd4b36821a8c', '_file59cb83cc71fc4-avatar.png', 'inactive', NULL, 0, '2017-10-13 13:24:02', 0, 'Internship ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2017-09-25 11:58:53', NULL, 0),
(32, 'Ady', 'Suryadi', 'client', 0, 0, 'galaxynote07@gmail.com', '125d0fc37a074732af8464fbbb9d3a07', NULL, 'active', NULL, 15, NULL, 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2017-11-30 10:07:26', NULL, 0),
(38, 'Riza Setyawan', 'Amadhy', 'staff', 0, 7, 'halo@rizasetyawan.com', '23fd316edddf79307348695ccd9c29ea', NULL, 'active', NULL, 0, NULL, 0, 'Business Analyst', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2018-03-05 17:52:28', NULL, 0),
(46, 'Surya', 'Eka', 'client', 0, 0, 'suryaekapriyatna@gmail.com', 'e769439d5e3f9c47ded030994dba4721', NULL, 'active', '2018-05-09 14:54:07', 26, NULL, 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2018-04-24 13:50:40', '2018-07-24 08:33:22', 0),
(47, 'Ridwan', 'rr', 'staff', 0, 4, 'vngnc88@gmail.com', 'a64d7aff00a5a5d2fd4caabee0d323f1', NULL, 'active', NULL, 0, NULL, 0, 'CCO', 0, NULL, 'vngnc88@gmail.com', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2018-05-14 09:43:10', NULL, 1),
(48, 'Sajidah', 'Rachmawati', 'staff', 0, 4, 'sajidahrachmawati@gmail.com', '54179719240e96452e34b31a0dccf92a', '_file5afa8dfc44597-avatar.png', 'active', '2018-07-05 07:25:34', 0, '2018-07-08 16:02:08', 0, 'Business Analyst (KP)', 0, NULL, 'sajidahrachmawati@gmail.com', 'sasapilong2998@gmail.com', '082216649839', '0', '1998-10-29', '', 'female', NULL, '', 1, 1, '2018-05-14 09:51:59', '2018-08-06 14:57:19', 0),
(49, 'Regina', 'Yusticia', 'staff', 0, 4, 'regina.yusticia40@gmail.com', 'd27f826f992008d56214664abce8b472', NULL, 'active', '2018-05-27 03:01:50', 0, '2018-05-27 06:23:20', 0, 'Bussiness Analyst (KP)', 0, NULL, '', NULL, '', NULL, NULL, NULL, 'female', NULL, NULL, 1, 1, '2018-05-14 09:56:46', '2018-05-27 08:05:33', 0),
(50, 'Dina', 'Novalia', 'staff', 0, 4, 'dinanovaliap@gmail.com', 'd27f826f992008d56214664abce8b472', '_file5afa8b738cd97-avatar.png', 'active', '2018-08-19 18:11:51', 0, '2018-05-27 01:30:37', 0, 'Business Analyst (KP)', 0, NULL, 'dinanovaliap@gmail.com', '', '087832539895', '', '1997-11-10', '', 'female', NULL, '', 1, 1, '2018-05-14 10:02:59', '2018-08-19 18:12:02', 0),
(51, 'Irham', 'Fakhri', 'staff', 0, 4, 'irhamfakhri@gmail.com', 'd27f826f992008d56214664abce8b472', '_file5b0a5e6ad363f-avatar.png', 'active', '2018-05-18 09:08:25', 0, '2018-05-27 06:52:04', 0, 'Business Analyst (KP)', 0, NULL, '', '', '', '', NULL, '', 'male', NULL, '', 1, 1, '2018-05-14 10:05:26', '2018-05-27 07:57:44', 0),
(52, 'Agita', 'Oktavian Bangun', 'staff', 0, 4, 'oktavian_agita@yahoo.co.id', 'd27f826f992008d56214664abce8b472', '_file5afd2e9ef33aa-avatar.png', 'active', NULL, 0, '2018-06-08 03:47:15', 0, 'Business Analyst (KP)', 0, NULL, 'Antapani', '', '', '', NULL, '', 'male', NULL, '', 1, 1, '2018-05-14 10:08:00', '2018-08-31 16:33:51', 0),
(53, 'Leo', 'Dikkardo Sagala', 'staff', 0, 4, 'sagalaleo7@gmail.com', 'd27f826f992008d56214664abce8b472', '_file5affd5409679d-avatar.png', 'active', '2018-06-05 08:57:37', 0, '2018-06-05 08:05:16', 0, 'Business Analyst (KP)', 0, NULL, 'sagalaleo7@gmail.com', '', '082295218040', '', '1998-04-01', '', 'male', NULL, '', 1, 1, '2018-05-14 10:11:04', '2018-06-05 09:47:01', 0),
(54, 'M. Yuzar', 'Haspani', 'staff', 0, 4, 'myhaspani@gmail.com', 'd27f826f992008d56214664abce8b472', '_file5af9bc6e3d194-avatar.png', 'active', NULL, 0, '2018-06-05 14:08:55', 0, 'UI/UX Designer (KP)', 0, NULL, '', '', '', '', NULL, '', 'male', NULL, '', 1, 1, '2018-05-14 11:25:42', '2018-08-23 21:58:37', 0),
(55, 'Bellanofi', 'Budiyawati', 'staff', 0, 4, 'benovia998@gmail.com', 'd27f826f992008d56214664abce8b472', NULL, 'active', '2018-06-08 04:30:46', 0, '2018-06-08 02:45:56', 0, 'Content Creator (KP)', 0, NULL, '', '', '', '', NULL, '', 'female', 'buat poster', '', 1, 1, '2018-05-14 11:29:26', '2018-06-08 09:14:12', 0),
(56, 'Qatrun', 'Nada', 'staff', 0, 4, 'qatrunnada098@gmail.com', 'd27f826f992008d56214664abce8b472', '_file5afa91c11cf7d-avatar.png', 'active', '2018-05-20 15:49:38', 0, '2018-08-04 17:48:11', 0, 'UI/UX Designer (KP)', 0, NULL, 'qatrunnada098@gmail.com', '', '089609717789', '', '1998-03-06', '', 'female', 'aksdl;', '', 1, 1, '2018-05-14 11:36:54', '2018-09-11 10:55:05', 0),
(57, 'Fakhri', 'Ramadhan', 'staff', 0, 4, 'fakhrikamar216@gmail.com', 'f3d7bd11eef1ec6de349ce0ab1f5be26', NULL, 'active', NULL, 0, '2018-05-27 07:57:31', 0, 'Programmer (KP)', 0, NULL, 'fakhrikamar216@gmail.com', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2018-05-14 14:01:30', '2018-08-08 05:59:04', 0),
(58, 'Roger Alexsander', 'Siburian', 'staff', 0, 4, 'zrogeru9@gmail.com', 'ad844c942b4e7cd765b577e660ee8255', '_file5afea3698f4f3-avatar.png', 'active', '2018-07-19 04:38:49', 0, '2018-07-19 04:39:03', 0, 'Programmer (KP)', 0, NULL, 'zrogeru9@gmail.com', '', '082276767432', '', '1998-04-23', '', 'male', NULL, '', 1, 1, '2018-05-14 14:06:40', '2018-07-20 10:23:14', 0),
(59, 'Arya', 'Wirasandi', 'staff', 0, 4, 'aryawirasandi7153@gmail.com', 'd27f826f992008d56214664abce8b472', '_file5afa9271e8c1f-avatar.png', 'active', '2018-06-05 09:02:56', 0, '2018-08-27 22:55:57', 0, 'Programmer (KP)', 0, NULL, 'aryawirasandi7153@gmail.com', 'Lingkungan  sukabirus gang demang, kos lingga putra 2 ', '082218341631', '', '1997-09-09', '', 'male', NULL, '', 1, 1, '2018-05-14 14:10:32', '2018-08-27 22:55:52', 0),
(60, 'Zayed Iffat', 'Mahdi', 'staff', 0, 4, 'zayediffatm12@gmail.com', 'd27f826f992008d56214664abce8b472', '_file5b00490cd9d9c-avatar.png', 'active', '2018-05-27 06:19:19', 0, '2018-05-28 02:53:52', 0, 'Programmer (KP)', 0, NULL, 'zayediffatm12@gmail.com', NULL, '', NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2018-05-14 14:21:07', '2018-06-24 15:28:18', 0),
(61, 'Nasrul', 'Hak', 'client', 0, 0, 'arul_8556@yahoo.co.id', '8be5e8efe0575d60d0cf16b61dd6620d', NULL, 'active', NULL, 30, NULL, 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2018-07-20 08:10:50', '2018-07-30 00:14:46', 0),
(62, 'Annmarie', 'Lefroy', 'client', 0, 0, 'doutla@mail.ru', '69088f8bc992f21a061697599cbb6b65', NULL, 'active', NULL, 31, NULL, 1, 'Untitled', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 1, 1, '2018-07-23 15:52:24', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indeks untuk tabel `checklist_items`
--
ALTER TABLE `checklist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `client_groups`
--
ALTER TABLE `client_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `estimate_forms`
--
ALTER TABLE `estimate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `estimate_requests`
--
ALTER TABLE `estimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indeks untuk tabel `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `general_files`
--
ALTER TABLE `general_files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `help_articles`
--
ALTER TABLE `help_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `help_categories`
--
ALTER TABLE `help_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `user_id` (`applicant_id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indeks untuk tabel `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_from` (`from_user_id`),
  ADD KEY `message_to` (`to_user_id`);

--
-- Indeks untuk tabel `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Indeks untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `project_comments`
--
ALTER TABLE `project_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `project_settings`
--
ALTER TABLE `project_settings`
  ADD UNIQUE KEY `unique_index` (`project_id`,`setting_name`);

--
-- Indeks untuk tabel `project_time`
--
ALTER TABLE `project_time`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indeks untuk tabel `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `to_do`
--
ALTER TABLE `to_do`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `email` (`email`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `deleted` (`deleted`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1300;

--
-- AUTO_INCREMENT untuk tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT untuk tabel `checklist_items`
--
ALTER TABLE `checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `client_groups`
--
ALTER TABLE `client_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `estimate_forms`
--
ALTER TABLE `estimate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `estimate_requests`
--
ALTER TABLE `estimate_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `general_files`
--
ALTER TABLE `general_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `help_articles`
--
ALTER TABLE `help_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `help_categories`
--
ALTER TABLE `help_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1305;

--
-- AUTO_INCREMENT untuk tabel `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `project_comments`
--
ALTER TABLE `project_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT untuk tabel `project_time`
--
ALTER TABLE `project_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT untuk tabel `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `team_member_job_info`
--
ALTER TABLE `team_member_job_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `ticket_types`
--
ALTER TABLE `ticket_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
