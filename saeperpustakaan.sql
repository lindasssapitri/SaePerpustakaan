-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2025 pada 13.56
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
-- Database: `saeperpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_peminjaman`
--

CREATE TABLE `arsip_peminjaman` (
  `id_arsip` int(11) NOT NULL,
  `kode_anggota` varchar(20) DEFAULT NULL,
  `kode_buku` varchar(20) DEFAULT NULL,
  `nip_pegawai` varchar(20) DEFAULT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `total_pinjam` int(11) DEFAULT NULL,
  `kondisi_buku` varchar(50) NOT NULL,
  `total_denda` int(11) NOT NULL,
  `tanggal_input_arsip` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `arsip_peminjaman`
--

INSERT INTO `arsip_peminjaman` (`id_arsip`, `kode_anggota`, `kode_buku`, `nip_pegawai`, `tanggal_pinjam`, `tanggal_kembali`, `tanggal_pengembalian`, `total_pinjam`, `kondisi_buku`, `total_denda`, `tanggal_input_arsip`) VALUES
(32, 'AGT0002', 'BK0006', 'NIP0003', '2025-06-08', '2025-06-08', '2025-06-08', 1, 'Robek', 10000, '2025-06-08'),
(33, 'AGT0001', 'BK0005', 'NIP0001', '2025-06-08', '2025-06-08', '2025-06-08', 1, 'Hilang Halaman', 20000, '2025-06-08'),
(37, 'AGT0014', 'BK0007', 'NIP0003', '2025-06-16', '2025-06-18', '2025-06-18', 1, 'Baik', 0, '2025-06-18'),
(38, 'AGT0017', 'BK0011', 'NIP0011', '2025-06-16', '2025-06-17', '2025-06-18', 1, 'Robek', 12000, '2025-06-18'),
(39, 'AGT0018', 'BK0010', 'NIP0012', '2025-06-16', '2025-06-17', '2025-06-18', 1, 'Baik', 2000, '2025-06-18'),
(40, 'AGT0015', 'BK0009', 'NIP0009', '2025-06-16', '2025-06-18', '2025-06-18', 1, 'Baik', 0, '2025-06-18'),
(41, 'AGT0016', 'BK0009', 'NIP0003', '2025-06-12', '2025-06-15', '2025-06-19', 1, 'Kotor', 13000, '2025-06-19'),
(43, 'AGT0019', 'BK0008', 'NIP0007', '2025-06-17', '2025-06-18', '2025-06-19', 5, 'Kotor', 7000, '2025-06-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` varchar(20) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `id_rak` int(11) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `stok_buku` int(11) DEFAULT NULL,
  `tanggal_input_buku` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul`, `id_rak`, `penulis`, `penerbit`, `tahun_terbit`, `stok_buku`, `tanggal_input_buku`) VALUES
(14, 'BK0005', 'Dasar-Dasar Komputer', 5, 'Budi Santoso', 'Informatika', 2020, 0, '2025-05-31'),
(15, 'BK0006', 'Novel Romantis', 6, 'Ayu Lestari', 'Gramedia', 2018, 7, '2025-06-07'),
(16, 'BK0007', 'Ensiklopedia Dunia', 7, 'John Smith', 'National Press', 2015, 5, '2025-06-07'),
(17, 'BK0008', 'Perang Dunia II', 8, 'David Jones', 'Sejarah Kita', 2017, 5, '2025-06-07'),
(18, 'BK0009', 'Biografi B.J. Habibie', 9, 'Rina Dewi', 'Biografi Nusantara', 2019, 6, '2025-06-07'),
(19, 'BK0010', 'Fisika Dasar', 10, 'Ahmad Fauzi', 'Ilmu Press', 2021, 10, '2025-06-07'),
(20, 'BK0011', 'Islam dan Sains', 11, 'Dr. Yusuf', 'Pustaka Islam', 2020, 10, '2025-06-07'),
(21, 'BK0012', 'Majalah Ilmiah', 12, 'Redaksi', 'Majalah Edu', 2024, 10, '2025-06-07'),
(22, 'BK0013', 'Bahasa Jepang Dasar', 13, 'Hiroshi Tanaka', 'Bahasa Dunia', 2016, 10, '2025-06-07'),
(23, 'BK0014', 'Kimia Organik', 14, 'Dr. Lina', 'Sains Press', 2022, 10, '2025-06-07'),
(24, 'BK0015', 'Biologi Molekuler', 15, 'Siti Nurhaliza', 'BioMedia', 2019, 10, '2025-06-07'),
(25, 'BK0016', 'Ekonomi Mikro', 16, 'Dewi Sartika', 'Ekonomi Cerdas', 2021, 10, '2025-06-07'),
(26, 'BK0017', 'Dasar Sosiologi', 17, 'Ahmad Subandi', 'Sosial Press', 2018, 10, '2025-06-07'),
(27, 'BK0018', 'Politik Global', 18, 'Robby Setiawan', 'Politika', 2020, 10, '2025-06-07'),
(28, 'BK0019', 'Sejarah Nusantara', 19, 'Wahyu Hidayat', 'Sejarah Kita', 2015, 10, '2025-06-07'),
(29, 'BK0020', 'Peradaban Dunia', 20, 'Irfan Maulana', 'Dunia Press', 2016, 10, '2025-06-07'),
(30, 'BK0021', 'Mesin Otomotif', 21, 'Teguh Wibowo', 'Teknik Jaya', 2023, 10, '2025-06-07'),
(31, 'BK0022', 'Jaringan Dasar', 22, 'Andi Kurniawan', 'NetTech', 2022, 6, '2025-06-07'),
(32, 'BK0023', 'Belajar Flutter', 23, 'Sulistiyo', 'MobileDev Press', 2024, 7, '2025-06-07'),
(33, 'BK0024', 'Pemrograman Java', 23, 'Rudi Hartono', 'Informatika', 2020, 8, '2025-06-07'),
(34, 'BK0025', 'Algoritma dan Struktur Data', 23, 'Dian Kurnia', 'TeknoPress', 2019, 5, '2025-06-07'),
(35, 'BK0026', 'Kalkulus Dasar', 10, 'Hendra Saputra', 'Matematika Press', 2017, 6, '2025-06-07'),
(36, 'BK0027', 'Agama dan Masyarakat', 11, 'Ust. Ahmad Zaki', 'Pustaka Iman', 2021, 3, '2025-06-07'),
(37, 'BK0028', 'Bahasa Inggris Menengah', 13, 'Linda Johnson', 'Bahasa Global', 2016, 4, '2025-06-07'),
(38, 'BK0029', 'Ekonomi Makro', 16, 'Bambang Wijaya', 'Cerdas Ekonomi', 2022, 6, '2025-06-07'),
(39, 'BK0030', 'Pengantar Sosiologi', 17, 'Tati Sundari', 'Sosial Nusantara', 2018, 5, '2025-06-07'),
(40, 'BK0031', 'Dasar Politik Indonesia', 18, 'Nugroho Budi', 'Politik Kita', 2023, 2, '2025-06-07'),
(41, 'BK0032', 'Sejarah Kerajaan Majapahit', 19, 'Eko Prasetyo', 'Sejarah Indonesia', 2015, 3, '2025-06-07'),
(42, 'BK0033', 'Tokoh Dunia Berpengaruh', 20, 'Nina Yuliana', 'Dunia Hebat', 2020, 4, '2025-06-07'),
(43, 'BK0034', 'Perawatan Mesin Industri', 21, 'Fadli Ramadhan', 'Teknik Modern', 2021, 3, '2025-06-07'),
(44, 'BK0035', 'Jaringan Komputer Lanjut', 22, 'Imam Fauzi', 'IT Expert', 2023, 4, '2025-06-07'),
(45, 'BK0036', 'Flutter Lanjut', 23, 'Sulistiyo', 'MobileDev Press', 2025, 6, '2025-06-07'),
(46, 'BK0037', 'Majalah Teknologi 2025', 12, 'Redaksi Tekno', 'Majalah Teknologi', 2025, 12, '2025-06-07'),
(47, 'BK0038', 'Fisika Modern', 10, 'Dr. Setiawan', 'IPA Press', 2024, 7, '2025-06-07'),
(48, 'BK0039', 'Kimia Dasar', 14, 'Indra Lesmana', 'Kimia Edu', 2021, 5, '2025-06-07'),
(49, 'BK0040', 'Biologi Hewan', 15, 'Ratna Dewi', 'Bio Press', 2019, 6, '2025-06-07'),
(50, 'BK0041', 'Cerpen Anak', 6, 'Mira Wulandari', 'Gramedia Anak', 2020, 10, '2025-06-07'),
(51, 'BK0042', 'Dongeng ', 7, 'Andi', 'Dct', 2022, 10, '2025-06-07'),
(52, 'BK0043', 'Elektronika Dasar', 24, 'Listiyo', 'DCT Production', 2025, 5, '2025-06-07'),
(53, 'BK0044', 'Kancil yang bijak', 7, 'Anonim', 'Gramedia', 2000, 5, '2025-06-08'),
(54, 'BK0045', 'Cinta monyet', 7, 'dela', 'gramedia', 2090, 10, '2025-06-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_anggota` int(11) NOT NULL,
  `kode_anggota` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nim` varchar(20) NOT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `kontak` varchar(50) DEFAULT NULL,
  `tanggal_input_anggota` date NOT NULL DEFAULT current_timestamp(),
  `foto_anggota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_anggota`, `kode_anggota`, `nama`, `nim`, `jurusan`, `kontak`, `tanggal_input_anggota`, `foto_anggota`) VALUES
(13, 'AGT0001', 'Deri Saputra', 'STI202303338', 'Teknik Informatika', '08122656658', '2025-05-01', 'D:\\Foto Anggota\\Deri Saputra.jpg'),
(14, 'AGT0002', 'Eka Nurul Fauziah', 'STI202303305', 'Teknik Informatika', '0856563256', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\eka nurul.jpg'),
(15, 'AGT0003', 'Eka Saputri', 'STI202303321', 'Teknik  Informatika', '056563256523', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\eka saputri.jpg'),
(22, 'AGT0004', 'Linda Safitri', 'STI202303411', 'Teknik Infromatik', '056325632585', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\linda.jpg'),
(23, 'AGT0005', 'Rifka Arinda Rahma', 'STI202303304', 'Teknik Informatika', '0563325658745', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\rinda.jpg'),
(24, 'AGT0006', 'Sari Nuraini', 'STI20230335', 'Teknik Informatika', '0523325663256', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\sari eni.jpg'),
(25, 'AGT0007', 'Uswatun Khasanah', 'STI202303369', 'Teknik Informatika', '0125545632146', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\uswa.jpg'),
(26, 'AGT0008', 'Tentamena Prima Dela Safira', 'STI202303511', 'Teknik Informatika', '012332144563', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\tenta dela.jpg'),
(27, 'AGT0009', 'Setiyo Filiyandri', 'STI202303483', 'Teknik Informatika', '0235563225632', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\setiyo.jpg'),
(28, 'AGT0010', 'Andrian Firmansyah', 'STI202303476', 'Teknik Informatika', '085665899856', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\dosen1.jpg'),
(29, 'AGT0011', 'Yakub Pratama', 'STI202303709', 'Teknik Informatika', '052336523256', '2025-06-07', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\yakub tama.jpg'),
(34, 'AGT0012', 'Nafisatul Khasanah', '-', '-', '087767876543', '2025-06-18', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\dosen1.jpg'),
(35, 'AGT0013', 'Febri Saputra', '-', '-', '089909876543', '2025-06-18', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\anggota2.jpg'),
(36, 'AGT0014', 'Aisyila Husna Umaya', '-', '-', '06765432312345', '2025-06-18', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\dosen2.jpg'),
(37, 'AGT0015', 'Nur Hasan Maulana', 'STI202303345', 'Teknik Informatika', '087765432123', '2025-06-18', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\dosen2.jpg'),
(38, 'AGT0016', 'Tiara Ramadhani', '-', '-', '087676543212', '2025-06-18', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\dosen1.jpg'),
(39, 'AGT0017', 'Putri Cahaya Fitriyah', '-', '-', '084321234567', '2025-06-18', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\anggota1.jpg'),
(40, 'AGT0018', 'Karimah Mawiyah', 'SSI20245432', 'Sistem Informasi', '089909876543', '2025-06-18', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\anggota1.jpg'),
(41, 'AGT0019', 'Tentamela', '-', '-', '08998765543321', '2025-06-19', 'E:\\LAIN-LAIN\\PAS FOTO ANGGOTA\\anggota1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `tanggal_input_pegawai` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama`, `jabatan`, `email`, `telepon`, `tanggal_input_pegawai`) VALUES
(3, 'NIP0001', 'Deri Saputra', 'Admin', 'deri@gamil.com', '085665899658', '2025-05-01'),
(10, 'NIP0003', 'Andrian', 'Admin', 'andrian@gmail.com', '085569889655', '2025-06-07'),
(25, 'NIP0004', 'Yakub', 'Manager', 'yakub@gmail.com', '086523564413', '2025-06-07'),
(26, 'NIP0005', 'Admin', 'Admin', 'admin@gmail.com', '085665899856', '2025-06-08'),
(28, 'NIP0006', 'Petugas', 'Petugas', 'petugas', '085665899658', '2025-06-08'),
(29, 'NIP0007', 'Eka Nurul Fauziah', 'Admin', 'ekanurul@gmail.com', '089655698896', '2025-06-08'),
(30, 'NIP0008', 'Tentamena Prima Della', 'Admin', 'dela@gmail.com', '087765431234', '2025-06-18'),
(31, 'NIP0009', 'Eka Saputri', 'Admin', 'eka@yaho.co.id', '0852345432123', '2025-06-18'),
(32, 'NIP0010', 'Setiyo Filiandri', 'Admin', 'wati@yahoo.co.id', '088765431234', '2025-06-18'),
(33, 'NIP0011', 'Uswatun Khasanah', 'Admin', 'uswa@yahoo.co.id', '0822345655432', '2025-06-18'),
(34, 'NIP0012', 'Linda Sapitri', 'Admin', 'linda@gmail.com', '081324535678', '2025-06-18'),
(35, 'NIP0013', 'Rifka Arinda Rahma', 'Admin', 'rinda@gmail.com', '08878987654', '2025-06-18'),
(36, 'NIP0014', 'Putri Rahayu', 'Karyawan', 'putri@yahoo.co.id', '087765432123', '2025-06-18'),
(38, 'NIP0015', 'eka', 'manager', 'eka@gmail.com', '087765432123', '2025-06-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `kode_anggota` varchar(20) DEFAULT NULL,
  `kode_buku` varchar(20) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `total_pinjam` int(11) DEFAULT NULL,
  `tanggal_input_peminjaman` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `kode_anggota`, `kode_buku`, `nip`, `tanggal_pinjam`, `tanggal_kembali`, `total_pinjam`, `tanggal_input_peminjaman`) VALUES
(130, 'AGT0001', 'BK0005', 'NIP0001', '2025-06-08', '2025-06-08', 2, '2025-06-08'),
(131, 'AGT0002', 'BK0006', 'NIP0001', '2025-06-08', '2025-06-08', 1, '2025-06-08'),
(132, 'AGT0003', 'BK0005', 'NIP0001', '2025-06-08', '2025-06-08', 1, '2025-06-08'),
(133, 'AGT0004', 'BK0007', 'NIP0001', '2025-06-08', '2025-06-08', 5, '2025-06-08'),
(134, 'AGT0004', 'BK0009', 'NIP0003', '2025-06-08', '2025-06-08', 2, '2025-06-08'),
(135, 'AGT0005', 'BK0005', 'NIP0003', '2025-06-08', '2025-06-08', 2, '2025-06-08'),
(136, 'AGT0006', 'BK0005', 'NIP0001', '2025-06-08', '2025-06-08', 2, '2025-06-08'),
(137, 'AGT0006', 'BK0009', 'NIP0001', '2025-06-08', '2025-06-08', 2, '2025-06-08'),
(138, 'AGT0007', 'BK0008', 'NIP0001', '2025-06-08', '2025-06-08', 3, '2025-06-08'),
(142, 'AGT0008', 'BK0005', 'NIP0003', '2025-06-08', '2025-06-08', 2, '2025-06-08'),
(145, 'AGT0011', 'BK0044', 'NIP0006', '2025-06-08', '2025-06-08', 1, '2025-06-12'),
(146, 'AGT0013', 'BK0008', 'NIP0007', '2025-06-15', '2025-06-17', 2, '2025-06-18'),
(147, 'AGT0014', 'BK0006', 'NIP0008', '2025-06-16', '2025-06-18', 2, '2025-06-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `kode_rak` varchar(20) NOT NULL,
  `nama_rak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `kode_rak`, `nama_rak`) VALUES
(5, 'RAK0001', 'Komputer'),
(6, 'RAK0002', 'Fiksi'),
(7, 'RAK0003', 'Non-Fiksi'),
(8, 'RAK0004', 'Sejarah'),
(9, 'RAK0005', 'Biografi'),
(10, 'RAK0006', 'Ilmu Pengetahuan Alam'),
(11, 'RAK0007', 'Agama'),
(12, 'RAK0008', 'Majalah'),
(13, 'RAK0009', 'Bahasa'),
(14, 'RAK0010', 'Kimia'),
(15, 'RAK0011', 'Biologi'),
(16, 'RAK0012', 'Ekonomi'),
(17, 'RAK0013', 'Sosiologi'),
(18, 'RAK0014', 'Politik'),
(19, 'RAK0015', 'Sejarah Indonesia'),
(20, 'RAK0016', 'Sejarah Dunia'),
(21, 'RAK0017', 'Teknik Mesin'),
(22, 'RAK0018', 'Jaringan Komputer'),
(23, 'RAK0019', 'Pemrograman'),
(24, 'RAK0020', 'Teknik Elektronika'),
(25, 'RAK0021', 'Sosiologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_pegawai`, `username`, `password`, `role`) VALUES
(1, 3, 'derisaputra', 'deri123', 'Admin'),
(8, 10, 'andrian', 'andrian123', 'Admin'),
(23, 25, 'yakub', 'yakub123', 'Petugas'),
(24, 26, 'admin', 'admin', 'Admin'),
(26, 28, 'petugas', 'petugas', 'Petugas'),
(27, 29, 'ekanurulfauziah', '123', 'Admin'),
(28, 30, 'dela', 'dela', 'Admin'),
(29, 31, 'ekas', '123', 'Admin'),
(30, 32, 'setiyo', '123', 'Admin'),
(31, 33, 'uswa', '123', 'Admin'),
(32, 34, 'linda', '123', 'Admin'),
(33, 35, 'rinda', '123', 'Admin'),
(34, 36, 'putri', '123', 'Petugas'),
(36, 38, 'ekaa', '123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsip_peminjaman`
--
ALTER TABLE `arsip_peminjaman`
  ADD PRIMARY KEY (`id_arsip`),
  ADD KEY `kode_anggota` (`kode_anggota`),
  ADD KEY `kode_buku` (`kode_buku`),
  ADD KEY `nip_pegawai` (`nip_pegawai`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `kode_buku` (`kode_buku`),
  ADD KEY `fk_buku_rak` (`id_rak`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `kode_anggota` (`kode_anggota`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `kode_buku` (`kode_buku`),
  ADD KEY `nip` (`nip`),
  ADD KEY `fk_peminjaman_kode_anggota` (`kode_anggota`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`),
  ADD UNIQUE KEY `kode_rak` (`kode_rak`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arsip_peminjaman`
--
ALTER TABLE `arsip_peminjaman`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `rak`
--
ALTER TABLE `rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `arsip_peminjaman`
--
ALTER TABLE `arsip_peminjaman`
  ADD CONSTRAINT `arsip_peminjaman_ibfk_1` FOREIGN KEY (`kode_anggota`) REFERENCES `mahasiswa` (`kode_anggota`),
  ADD CONSTRAINT `arsip_peminjaman_ibfk_2` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`),
  ADD CONSTRAINT `arsip_peminjaman_ibfk_3` FOREIGN KEY (`nip_pegawai`) REFERENCES `pegawai` (`nip`);

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_buku_rak` FOREIGN KEY (`id_rak`) REFERENCES `rak` (`id_rak`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_peminjaman_kode_anggota` FOREIGN KEY (`kode_anggota`) REFERENCES `mahasiswa` (`kode_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
