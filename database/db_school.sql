-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2025 pada 17.28
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_school`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id`, `photo`) VALUES
(5, '6dff4b4cbcef007e3860d4f446facfe3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `title`, `text`, `photo`) VALUES
(1, 'Selamat Datang', 'Website Resmi SD Negeri Kalikidang', 'a3184c843612b936c74ac9457e22dabc.png'),
(9, 'Tenaga Pengajar Profesional', 'Guru-guru Berkualitas dan Berpengalaman', '217225b0d98a3beec987b9d17ed27e55.png'),
(10, 'PPDB 2025/2026', 'Penerimaan Peserta Didik Baru Tahun Ajaran 2025/2026', '32568f50c3abe03959f2c7be5a0f7261.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bg_majors`
--

CREATE TABLE `bg_majors` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bg_majors`
--

INSERT INTO `bg_majors` (`id`, `photo`) VALUES
(1, '65e0e15f390dbce87e3d434a63789634.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekskul`
--

CREATE TABLE `ekskul` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ekskul`
--

INSERT INTO `ekskul` (`id`, `judul`, `foto`, `created_at`, `updated_at`) VALUES
(3, 'Karawitan', 'karawitan.jpg', '2025-09-08 05:03:01', '2025-09-08 06:27:29'),
(4, 'Pramuka', 'pramuka.jpg', '2025-09-08 05:08:07', '2025-09-08 06:28:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `photo`) VALUES
(3, 'Ruang kelas', 'ruang-kelas-20250906094837.jpg'),
(4, 'Perpustakaan', 'perpustakaan-20250906094847.jpg'),
(5, 'Kantin', 'kantin-20250906094919.jpg'),
(6, 'Lapangan', 'lapangan-20250906094930.jpg'),
(9, 'Musholla', 'musholla-20250906094943.jpg'),
(11, 'Aula', 'aula-20250906095001.jpg'),
(12, 'Ruang Seni Musik', 'ruang-seni-musik-20250906095023.jpg'),
(13, 'Ruang UKS', 'ruang-uks-20250906095039.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `deskripsi`, `tanggal_upload`) VALUES
(5, 'Sekolah_Dasar_Satu_Bangsa_Harmoni_Batam1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dnnan annnna n', '2025-10-19'),
(6, 'SD-Negeri-Terbaik-di-Semarang-Barat-2024.jpg', '\"SD\" dapat merujuk pada beberapa hal tergantung konteksnya, yang paling umum adalah Sekolah Dasar (jenjang pendidikan dasar di Indonesia), Secure Digital (jenis kartu memori), dan Standard Definition (resolusi video). Selain itu, \"SD\" juga bisa berarti Sindrom Down (gangguan genetik) atau Sugar Daddy dalam bahasa gaul. ', '2025-10-19'),
(7, 'Pelajar-Sekolah-Dasar_-Ist-678x381.jpeg', 'lorem ipsum dolor is amet lorem lorem ipsum dolor is amet lorem', '2025-10-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `jabatan` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `nip`, `jabatan`, `foto`, `created_at`) VALUES
(1, 'Andoyo Cakep', '-', 'kepala sekolah', 'question-mark-clipart-transparent-22.jpg', '2025-09-08 11:35:38'),
(3, 'Muhammad Farhan Fakhrudin', '-', 'Kepala Sekolah', 'Muhammad_Farhan_Fakhrudin.JPG', '2025-09-08 11:37:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identity`
--

INSERT INTO `identity` (`id`, `meta_title`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, '', '.', 'SD Negeri Kalikidang', '18efe02e7fcc5c6a4ee8c619e501a7d9.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `maps` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `alamat`, `telepon`, `email`, `maps`, `created_at`) VALUES
(4, 'Jl. Desa Kalikidang, Kalikidang, Kec. Sokaraja, Kab. Banyumas, (53181)', '2147483647', 'sdkalikidang2021@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63299.104478171656!2d108.8670317!3d-7.4437728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e655c655e08b061:0x5766ecb126cdbddf!2sSD Negeri Kalikidang!5e0!3m2!1sid!2sid!4v1757345848942!5m2!1sid!2sid', '2025-09-08 15:37:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi_pelajaran`
--

CREATE TABLE `materi_pelajaran` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deskripsi` text DEFAULT NULL,
  `kelas` tinyint(1) NOT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `materi_pelajaran`
--

INSERT INTO `materi_pelajaran` (`id`, `judul`, `isi`, `created_at`, `deskripsi`, `kelas`, `file`) VALUES
(11, 'sss', NULL, '2025-10-17 07:22:01', 'sss', 3, 'CV_Muhammad_Farhan_Fakhrudin.pdf'),
(16, 'SZS', NULL, '2025-10-17 07:41:00', 'sdcs', 2, 'CV_Muhammad_Farhan_Fakhrudin1.pdf'),
(17, 'BSA', NULL, '2025-10-17 07:41:12', 'sCS', 2, 'CV_Muhammad_Farhan_Fakhrudin2.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Pengaturan Web', '', 'fas fa-fw fa-cog', 'Y'),
(3, 2, 'Manajemen Media', '', 'fas fa-fw fa-school', 'Y'),
(4, 2, 'Struktur Organisasi', 'struktur', 'fas fa-fw fa-sitemap', 'Y'),
(5, 1, 'Manajemen User', 'user', 'fas fa-fw fa-user', 'Y'),
(8, 2, 'Akademik', '#', 'fas fa-fw fa-book', 'Y'),
(9, 1, 'PPDB', 'c_ppdb', 'fas fa-file-alt', 'Y'),
(10, 1, 'Guru', 'c_guru', 'fas fa-chalkboard-teacher', 'Y'),
(11, 1, 'Kontak', 'c_kontak', 'fas fa-fw fa-envelope', 'Y'),
(12, 2, 'Profile', '', 'fas fa-fw fa-home', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `opening`
--

INSERT INTO `opening` (`id`, `content`, `photo`) VALUES
(1, 'Assalamualaikum Warahmatullahi Wabarakatuh,\r\nSekolah Dasar Negeri Kalikidang merupakan salah satu sekolah dasar negeri yang berada di bawah naungan Dinas Pendidikan Kabupaten Banyumas. Sebagai lembaga pendidikan formal, SD Negeri Kalikidang berkomitmen untuk memberikan layanan pendidikan terbaik dengan mengedepankan kualitas, kedisiplinan, serta pembentukan karakter peserta didik. Dengan memadukan Kurikulum Merdeka serta berbagai pembiasaan positif di lingkungan sekolah, kami berupaya mendidik siswa agar memiliki kecerdasan intelektual, berakhlak mulia, serta mampu menghadapi tantangan perkembangan zaman.\r\nKami memahami bahwa pendidikan tidak hanya menekankan pada aspek pengetahuan, tetapi juga pada pembentukan sikap, keterampilan, dan kepribadian. Oleh karena itu, seluruh proses pembelajaran di SD Negeri Kalikidang dirancang agar menyenangkan, interaktif, dan memberi ruang bagi siswa untuk berkreasi serta bereksplorasi. Dengan cara ini, anak-anak dapat tumbuh menjadi pribadi yang percaya diri, bertanggung jawab, dan mampu beradaptasi.\r\nSelain kegiatan belajar mengajar di kelas, SD Negeri Kalikidang juga mendukung pengembangan potensi siswa melalui kegiatan ekstrakurikuler seperti pramuka, seni, olahraga, dan kegiatan keagamaan. Semua ini kami rancang bukan hanya untuk melatih keterampilan, tetapi juga menanamkan nilai kedisiplinan, kerja sama, serta kepedulian sosial yang akan bermanfaat dalam kehidupan mereka kelak.\r\nHarapan kami, lulusan SD Negeri Kalikidang tidak hanya unggul dalam prestasi akademik maupun non-akademik, tetapi juga memiliki karakter yang kuat, sopan santun, dan jiwa kepemimpinan. Dengan sinergi antara sekolah, guru, orang tua, dan masyarakat, kami optimis dapat mencetak generasi yang cerdas, berkarakter, serta membanggakan bagi bangsa dan negara.\r\nWassalamualaikum warahmatullahi wabarakatuh.', 'a9d2334aa2161df1633908905565e27b.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `seo_title`, `content`, `photo`, `is_active`, `date`) VALUES
(1, 'nnn', 'nnn', 'nnnnn', 'nnn-20250912101850.jpeg', 'Y', '2025-09-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppdb`
--

CREATE TABLE `ppdb` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ppdb`
--

INSERT INTO `ppdb` (`id`, `judul`, `deskripsi`, `link`, `foto`, `created_at`) VALUES
(6, 'SISTEM PENERIMAAN MURID BARU SEKOLAH DASAR NEGERI KALIKIDANG TAHUN PELAJARAN 2025/2026', 'Syarat calon peserta didik baru Sekolah Dasar Negeri Kalikidang\r\nPada Tanggal 1 Juli 2025 :\r\n1. Telah berusia 6 (enam) tahun\r\n2. Mengisi Formulir Pendaftaran\r\n3. Menyerahkan fotokopi Akta Kelahiran, Kartu keluarga, Ijazah TK, dan Kartu PKH (Jika memiliki)\r\n\r\nSiapkan NIK siswa/orang tua untuk mengisi form\r\n(Jika belum ada NIK isi dengan angka 0) \r\n\r\nInformasi Pendaftaran lebih lengkap dapat menghubungi:\r\nBu Ice Herna Trisnaningsih, S.Pd    085803428089\r\nBu Katarina Dwi Anggarini, S.Pd     081327433199\r\n\r\nUntuk link pendaftaran silahkan klik tombol dibawah ini', 'https://bit.ly/SPMBSDKalikidang2025', '10a197f264aaf2800abdcf12172dcfd9.jpg', '2025-09-09 05:34:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'Y',
  `diupload` datetime DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id`, `judul`, `deskripsi`, `foto`, `aktif`, `diupload`, `isi`, `created_at`) VALUES
(4, 'Juara 3 Maca lan Nulis Aksara Jawa', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Chitami is\'ro Fadiyah atas prestasinya sebagai Juara 3 Maca lan Nulis Aksara Jawa.', '86c0627554d414f81656222a9f288494.jpg', 'Y', '2025-09-07 13:01:13', NULL, '2025-09-07 11:01:13'),
(5, 'Juara 3 Menulis Cerkak', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Ahmad Faizal Arifin atas prestasinya sebagai Juara 3 Menulis Cerkak.', '19a78bf06073dc611846560668ad4f4e.jpg', 'Y', '2025-09-07 14:54:09', NULL, '2025-09-07 12:54:09'),
(6, 'Juara 3 Menulis Cerkak', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Thiffani Oktaviani atas prestasinya sebagai Juara 3 Menulis Cerkak.', '65139a8153bba5cdc4ffe1e332110afc.jpg', 'Y', '2025-09-07 14:57:07', NULL, '2025-09-07 12:57:07'),
(7, 'Juara 2 Maca lan Nulis Aksara Jawa', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Bahy Yoga Asmoro atas prestasinya sebagai Juara 2 Maca lan Nulis Aksara Jawa.', '3466d752bd887949e829e542246a1f19.jpg', 'Y', '2025-09-07 14:59:01', NULL, '2025-09-07 12:59:01'),
(8, 'Juara 1 Lomba O2SN ATHLETIC KIDS KANGA\'S ESCSPE PUTRI Tingkat Kecamatan', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Zahra Adelia atas prestasinya sebagai Juara 1 Lomba O2SN ATHLETIC KIDS KANGA\'S ESCSPE PUTRI Tingkat Kecamatan.', 'aef7190aef7bc4aa4f027baa02889f43.jpg', 'Y', '2025-09-07 15:08:17', NULL, '2025-09-07 13:08:17'),
(9, 'Juara 1 Lomba FLS2N Tingkat Kecamatan Cabang Gambar Bercerita', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Syarif Maulana Wijaya atas prestasinya sebagai Juara 1 Lomba FLS2N Tingkat Kecamatan Cabang Gambar Bercerita.', '86924ba8dacf7fabe3e6d68631dd6a09.jpg', 'Y', '2025-09-07 15:12:05', NULL, '2025-09-07 13:12:05'),
(10, 'Juara 1 Lomba FLS2N Tingkat Kecamatan Cabang Seni Tari', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Mutiara Dian Nur Alifah, Silvana Syafa Qafkhani, dan Rahma Nur Fadhillah, atas prestasinya sebagai Juara 1 Lomba FLS2N Tingkat Kecamatan Cabang Seni Tari.', 'd52ec1378333be11d8f85e677193434b.jpg', 'Y', '2025-09-07 15:15:31', NULL, '2025-09-07 13:15:31'),
(11, 'Juara 1 Lomba FLS2N Tingkat Kecamatan Cabang Seni Kriya', 'SD Negeri Kalikidang mengucapkan selamat dan sukses kepada Gendis Azzura Nida atas prestasinya sebagai Juara 1 Lomba FLS2N Tingkat Kecamatan Cabang Seni Kriya.', 'cd0814735cbda2d4e8bfa212f16f085b.jpg', 'Y', '2025-09-07 15:17:27', NULL, '2025-09-07 13:17:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `structure`
--

CREATE TABLE `structure` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `structure`
--

INSERT INTO `structure` (`id`, `photo`) VALUES
(1, 'ef7eb549eaa0174951c4ff3b036f8f16.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'identitas', 'Y'),
(2, 1, 'Sambutan', 'sambutan', 'Y'),
(3, 3, 'Banner', 'banner', 'Y'),
(4, 3, 'Fasilitas', 'fasilitas', 'Y'),
(5, 3, 'Berita', 'berita', 'Y'),
(6, 3, 'Background Kelas', 'background', 'Y'),
(7, 8, 'Materi Pelajaran', 'c_materi', 'Y'),
(8, 8, 'Ekstrakurikuler', 'c_ekskul', 'Y'),
(9, 8, 'Prestasi', 'c_prestasi', 'Y'),
(10, 3, 'Galeri', 'c_galeri', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `photo`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$BBPqlWe4MA3eX7ZvYvMLa.FQCcuomF45ayoxuSmiWyGRkYB9rfn6O', 'admin@example.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1760849031, 1, 'Admin', 'SD Negeri Kalikidang', NULL, '2147483647', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(52, 1, 1),
(53, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materi_pelajaran`
--
ALTER TABLE `materi_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ppdb`
--
ALTER TABLE `ppdb`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `structure`
--
ALTER TABLE `structure`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `materi_pelajaran`
--
ALTER TABLE `materi_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ppdb`
--
ALTER TABLE `ppdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `structure`
--
ALTER TABLE `structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `submenus_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
