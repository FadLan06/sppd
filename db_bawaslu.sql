-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 03:51 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bawaslu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dasar`
--

CREATE TABLE `tb_dasar` (
  `kd_dasar` int(11) NOT NULL,
  `kd_keg` int(11) NOT NULL,
  `dasar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dasar`
--

INSERT INTO `tb_dasar` (`kd_dasar`, `kd_keg`, `dasar`) VALUES
(7, 7, 'Undang – Undang Nomor 7 Tahun 2017 tentang Pemilihan Umum.'),
(8, 7, 'Peraturan Bawaslu Nomor 7 Tahun 2018 tentang penanganan temuan dan pelanggaran pemilihan umum.'),
(9, 7, 'Peraturan Bawaslu no 21 tahun 2018 tentang pengawasan penyelenggaran pemilhan umum'),
(14, 12, 'Coba'),
(15, 12, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kegiatan`
--

CREATE TABLE `tb_kegiatan` (
  `kd_keg` int(11) NOT NULL,
  `kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kegiatan`
--

INSERT INTO `tb_kegiatan` (`kd_keg`, `kegiatan`) VALUES
(7, 'Klarifikasi Penanganan Pelanggaran'),
(12, 'Monitoring Kampanye');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kwitansi`
--

CREATE TABLE `tb_kwitansi` (
  `kd_kwitansi` int(11) NOT NULL,
  `uang_harian` varchar(128) NOT NULL,
  `transport` varchar(128) NOT NULL,
  `ket` varchar(128) NOT NULL,
  `total` varchar(128) NOT NULL,
  `no_surat` int(11) NOT NULL,
  `kd_nama` int(11) NOT NULL,
  `ttd1` varchar(128) NOT NULL,
  `ttd2` varchar(128) NOT NULL,
  `ttd3` varchar(128) NOT NULL,
  `ttd4` varchar(128) NOT NULL,
  `ttd5` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kwitansi`
--

INSERT INTO `tb_kwitansi` (`kd_kwitansi`, `uang_harian`, `transport`, `ket`, `total`, `no_surat`, `kd_nama`, `ttd1`, `ttd2`, `ttd3`, `ttd4`, `ttd5`) VALUES
(12, '150000', '150000', '', '2700000', 131277, 102, '', '5dbfb4335b99f.png', '5dbfb44739232.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nama`
--

CREATE TABLE `tb_nama` (
  `kd_nama` int(11) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `ttd1` varchar(128) NOT NULL,
  `ttd2` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nama`
--

INSERT INTO `tb_nama` (`kd_nama`, `no_surat`, `nama`, `ttd1`, `ttd2`) VALUES
(101, '131277', '3', '5dbfb4916c3e3.png', ''),
(102, '131277', '4', '5dbfb4978c2de.png', ''),
(103, '131278', '2', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nota`
--

CREATE TABLE `tb_nota` (
  `kd_nota` int(11) NOT NULL,
  `no_surat` int(11) NOT NULL,
  `hasil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nota`
--

INSERT INTO `tb_nota` (`kd_nota`, `no_surat`, `hasil`) VALUES
(1, 131277, 'safasdfsaf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_spt`
--

CREATE TABLE `tb_spt` (
  `kd_spt` int(11) NOT NULL,
  `nomor` varchar(128) NOT NULL,
  `label` varchar(128) NOT NULL,
  `menimbang` varchar(256) NOT NULL,
  `rangka` text NOT NULL,
  `tujuan` text NOT NULL,
  `tgl_angkt` date NOT NULL,
  `tgl_kem` date NOT NULL,
  `transportasi` varchar(25) NOT NULL,
  `tgl` date NOT NULL,
  `ttd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_spt`
--

INSERT INTO `tb_spt` (`kd_spt`, `nomor`, `label`, `menimbang`, `rangka`, `tujuan`, `tgl_angkt`, `tgl_kem`, `transportasi`, `tgl`, `ttd`) VALUES
(131277, '01', '/Bawaslu-Prov.GO.06/SET/ST/XI/2019', 'adhaskj', 'asdads', 'asdsa', '2019-11-05', '2019-11-13', 'Transportasi Darat', '2019-11-04', '5dbfb45a5f6d3.png'),
(131278, '02', '/K.Bawaslu-Prov.GO.06/ST/XI/2019', 'asdasd', 'asdsa', 'asdas', '2019-11-06', '2019-11-13', 'Transportasi Darat', '2019-11-04', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `kd_transaksi` int(11) NOT NULL,
  `no_surat` int(11) NOT NULL,
  `dasar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`kd_transaksi`, `no_surat`, `dasar`) VALUES
(43, 131277, 7),
(44, 131278, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tempat` varchar(128) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `jk` varchar(1) NOT NULL,
  `pendidikan` varchar(5) NOT NULL,
  `jurusan` varchar(128) NOT NULL,
  `status` varchar(15) NOT NULL,
  `bekerja` date NOT NULL,
  `pangkat` varchar(15) NOT NULL,
  `golongan` varchar(15) NOT NULL,
  `jabatan` varchar(128) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nip`, `nama`, `tempat`, `tgl_lhr`, `jk`, `pendidikan`, `jurusan`, `status`, `bekerja`, `pangkat`, `golongan`, `jabatan`, `hp`, `email`, `image`, `username`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(0, '531415007', 'Mohammad Fadhlan Zainuddin', 'Gorontalo', '1997-03-06', 'L', 'SMK', 'TKJ', 'BELUM KAWIN', '2019-10-01', '-', '-', 'STAF', '082189062042', 'fadlan642@gmail.com', 'default.png', 'fadhlan', '$2y$10$T4ehGzyBR/u9lcw/3M/Mee7OvhMGOA.C6FUhwLQ52c8S.w0VMrZL.', 1, 1, 1563016552),
(1, '19860922 201001 1 001', 'Berny Pakaja, SH', 'Gorontalo', '1986-09-22', 'L', 'S1', 'Ilmu Hukum', 'KAWIN', '2017-11-20', 'PENATA', 'III c', 'KOORDINATOR SEKRETARIAT', '085343747088', 'bernypakaja@gmail.com', 'default.png', 'berny', '$2y$10$Kc4R5NbiWV/xlG93c8CzH.B61Zy5n9roRDgGCE55YzBZHRKkkKN2S', 3, 1, 1570266157),
(2, '19810609 201001 1 001', 'Nasution Halada', 'Gorontalo', '1982-06-09', 'L', 'SMA', '-', 'KAWIN', '2017-12-01', 'PENGATUR', 'II c', 'STAF', '085341773311', 'haladanasution4@gmail.com', 'default.png', 'nasution', '$2y$10$4SgHpiufw3zNRYX6HjVM/O3v1hqFoqeRDUtXGMyCd2i.uvPgQ8ZnK', 2, 1, 1570445845),
(3, '19651021 198911 2 001', 'Octavianita Mooduto', 'Gorontalo', '1965-10-21', 'P', 'D3', 'Akuntansi', 'KAWIN', '2017-12-01', 'PENATA', 'III c', 'STAF', '082120600622', 'octavianitamooduto21@gmail.com', 'default.png', 'nita', '$2y$10$rmNjeGMctdFwEmfESNUlMeyN/bk4e8Lr.mnfsyvtlH0gDwluEYxpq', 2, 1, 1570424719),
(4, '19790108 201001 2 002', 'Neneng HastutiI Hidayat, SE', 'Gorontalo', '1979-01-08', 'P', 'S1', 'Ekonomi Manajemen', 'KAWIN', '2017-11-22', 'PENATA MUDA tkt', 'III b', 'BPP', '082193660600', 'nenenghidayat3@gmail.com', 'default.png', 'neneng', '$2y$10$rmNjeGMctdFwEmfESNUlMeyN/bk4e8Lr.mnfsyvtlH0gDwluEYxpq', 4, 1, 1571036925),
(5, '-', 'Lismawaty Ibrahim, S.Pd, M.Pd', 'Gorontalo', '1979-10-01', 'P', 'S2', '-', 'KAWIN', '2019-10-01', '-', '-', 'KETUA', '085240051979', 'lismawaty_ibrahim@yahoo.co.id', 'default.png', 'lismawaty', '$2y$10$0hXVB.11Hr80mlyJPcSRE.O7a3kkogJXFB641FT22cn5dB/RbyJgW', 5, 1, 1572518526),
(6, '-', 'Yusni Mohamad Mamin', 'Gorontalo', '1991-07-05', 'P', 'S1', 'Hukum', 'BELUM KAWIN', '2019-02-15', '-', '-', 'Staf Devisi PHL', '085242974572', 'yusnimamin@gmail.com', 'default.png', 'yusni', '$2y$10$iT7fLlxeRWAMHFuoeQdgf.oY5uTkJ5P9rppemOhN6dztlTrYA7Ed2', 2, 1, 1572845015);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(6, 2, 4),
(7, 1, 4),
(13, 3, 5),
(16, 1, 5),
(17, 5, 7),
(18, 1, 7),
(20, 1, 8),
(21, 2, 8),
(22, 3, 8),
(23, 5, 8),
(24, 1, 6),
(25, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_daftar`
--

CREATE TABLE `user_daftar` (
  `id_daftar` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `shadow` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_daftar`
--

INSERT INTO `user_daftar` (`id_daftar`, `title`, `icon`, `shadow`, `url`) VALUES
(1, 'Input Surat Perintah Tugas', 'fas fa-envelope-open-text', 'shadow-primary', 'Data/SPT'),
(2, 'Total Admin', 'far fa-file-alt', 'shadow-success', 'totalAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Administrator'),
(2, 'User'),
(3, 'Menu'),
(4, 'Data'),
(5, 'Korsek'),
(6, 'BPP'),
(7, 'Ketua'),
(8, 'Profil');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'User'),
(3, 'Korsek'),
(4, 'BPP'),
(5, 'Ketua');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `sub_menu` int(11) DEFAULT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `sub_menu`, `is_active`) VALUES
(1, 1, 'Dashboard', 'Administrator', 'fas fa-fw fa-tachometer-alt', 0, 1),
(2, 1, 'Data Master', '#', 'fas fa-fw fa-fire', 0, 1),
(3, 2, 'Home', 'User', 'fas fa-fw fa-home', 0, 1),
(5, 1, 'Role', 'Administrator/Role', '-', 2, 0),
(6, 3, 'Menu Management', '#', 'fas fa-fw fa-folder', 0, 1),
(7, 3, 'Menu', 'Menu', '-', 6, 1),
(8, 3, 'Sub Menu', 'Menu/Submenu', '-', 6, 1),
(14, 4, 'SPT', 'Data', 'fas fa-fw  fa-book', 0, 1),
(15, 1, 'Data Pegawai', 'Administrator/Pegawai', '-', 2, 1),
(16, 1, 'Data Dasar', 'Administrator/Dasar', '-', 2, 1),
(17, 4, 'SPPD', 'Data/SPPD', 'fas fa-file-alt', 0, 1),
(18, 4, 'KWITANSI', 'Data/KWITANSI', 'fas fa-book-open', 0, 1),
(19, 4, 'Nota Dinas', 'Data/NOTA', 'fas fa-book-reader', 0, 1),
(20, 5, 'Beranda', 'Korsek', 'fas fa-home', 0, 1),
(21, 5, 'Data SPT', 'Korsek/SPT', 'fas fa-fw  fa-book', 0, 1),
(22, 7, 'Beranda', 'Ketua', 'fas fa-home', 0, 1),
(23, 7, 'Data SPT', 'Ketua/SPT', 'fas fa-fw  fa-book', 0, 1),
(24, 8, 'Profile', 'Profil/Profile', 'fas fa-user', 0, 1),
(25, 8, 'Settings', 'Profil/Setting', 'fas fa-cogs', 0, 1),
(26, 5, 'Data SPPD', 'Korsek/SPPD', 'fas fa-file-alt', 0, 1),
(27, 5, 'Data Kwitansi', 'Korsek/Kwitansi', 'fas fa-book-reader', 0, 1),
(28, 6, 'Beranda', 'BPP', 'fas fa-home', 0, 1),
(29, 6, 'Data SPPD', 'BPP/SPPD', 'fas fa-fw  fa-book', 0, 1),
(31, 6, 'Data Kwitansi', 'BPP/Kwitansi', 'fas fa-book-reader', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dasar`
--
ALTER TABLE `tb_dasar`
  ADD PRIMARY KEY (`kd_dasar`);

--
-- Indexes for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  ADD PRIMARY KEY (`kd_keg`);

--
-- Indexes for table `tb_kwitansi`
--
ALTER TABLE `tb_kwitansi`
  ADD PRIMARY KEY (`kd_kwitansi`);

--
-- Indexes for table `tb_nama`
--
ALTER TABLE `tb_nama`
  ADD PRIMARY KEY (`kd_nama`);

--
-- Indexes for table `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD PRIMARY KEY (`kd_nota`);

--
-- Indexes for table `tb_spt`
--
ALTER TABLE `tb_spt`
  ADD PRIMARY KEY (`kd_spt`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`kd_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_daftar`
--
ALTER TABLE `user_daftar`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dasar`
--
ALTER TABLE `tb_dasar`
  MODIFY `kd_dasar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_kegiatan`
--
ALTER TABLE `tb_kegiatan`
  MODIFY `kd_keg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_kwitansi`
--
ALTER TABLE `tb_kwitansi`
  MODIFY `kd_kwitansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_nama`
--
ALTER TABLE `tb_nama`
  MODIFY `kd_nama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `tb_nota`
--
ALTER TABLE `tb_nota`
  MODIFY `kd_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_spt`
--
ALTER TABLE `tb_spt`
  MODIFY `kd_spt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131279;
--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `kd_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `user_daftar`
--
ALTER TABLE `user_daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
