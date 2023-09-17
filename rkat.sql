-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 02:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rkat`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id_aktivitas` int(11) NOT NULL,
  `id_komponen` int(11) NOT NULL,
  `nama_aktivitas` varchar(225) NOT NULL,
  `kode_aktivitas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktivitas`
--

INSERT INTO `aktivitas` (`id_aktivitas`, `id_komponen`, `nama_aktivitas`, `kode_aktivitas`) VALUES
(51, 83, 'Luar Kota (Jabar)', '1'),
(52, 84, 'Jakarta', '1'),
(53, 85, 'Kota Jakarta', '1'),
(54, 86, 'Kota Jakarta', '1'),
(55, 87, 'Kota Tangerang', '1'),
(56, 88, 'JAKARTA', '1'),
(57, 89, 'Jakarta', '1'),
(58, 90, 'JAKARTA', '1'),
(59, 92, 'Aktivitas DI', '4045'),
(60, 93, 'Aktivitas DU', '01'),
(61, 92, 'Aktivitas D', '4045'),
(62, 92, 'Aktivitas B', '4005');

-- --------------------------------------------------------

--
-- Table structure for table `coa`
--

CREATE TABLE `coa` (
  `id_coa` int(11) NOT NULL,
  `kode_coa` varchar(30) NOT NULL,
  `nama_coa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coa`
--

INSERT INTO `coa` (`id_coa`, `kode_coa`, `nama_coa`) VALUES
(1, '52', 'Beban Manajemen Umum'),
(2, '5200', 'Belanja Personel Pegawai'),
(4, '520001', 'Belanja Gaji Pegawai'),
(5, '520002', 'Tunjangan cuti'),
(6, '520003', 'Tunjangan hari raya'),
(7, '520004', 'Tunjangan Karyawan/Lembur'),
(8, '520005', 'Tunjangan Pajak penghasilan'),
(9, '520006', 'Tunjangan Duka'),
(10, '520007', 'Tunjangan Transportasi'),
(11, '520008', 'Tunjangan Lainnya'),
(12, '520009', 'Tunjangan Reward Pegawai'),
(13, '520010', 'Beban imbalan Pekerja'),
(14, '520011', 'BPJS Ketenagakerjaan'),
(15, '520012', 'Iuran Tapera'),
(16, '520013', 'Asuransi Kesehatan'),
(17, '520014', 'Medical Check Up Karyawan'),
(18, '520015', 'Honorarium '),
(19, '5201', 'Belanja  Personel Non Pegawai'),
(20, '5201001', 'Gaji Deputi Komisioner '),
(21, '5201002', 'Tunjangan Perumahan '),
(22, '5201003', 'Asuransi Purna Jabatan '),
(23, '5201004', 'Tunjangan Hari Raya KDK '),
(24, '5201005', 'Tunjangan Pajak Penghasilan KDK '),
(25, '5201006', 'Penggantian Pengobatan KDK '),
(26, '5201007', 'BPJS Ketenagakerjaan KDK '),
(27, '5201008', 'BPJS Kesehatan  KDK '),
(28, '5201009', 'Beban Reward KDK'),
(29, '5201010', 'Medical Check Up Karyawan'),
(30, '5201011', 'Beban Penggantian Pengobatan'),
(31, '5201012', 'Dana Pensiun'),
(32, '5201013', 'Iuran Tapera'),
(33, '5201014', 'Asuransi Kesehatan'),
(34, '5201015', 'Fasilitas Komunikasi '),
(35, '5201016', 'Fasilitas Membership dan Representasi'),
(36, '5201017', 'Honorarium Komite/Sekretariat Komite/TP Setkom'),
(37, ' 5202', 'Belanja Barang'),
(38, '520201', 'Belanja Keperluan Perkantoran'),
(39, '520202', 'Belanja Sponsorship'),
(40, '520203', 'Belanja Representasi'),
(41, '520204', 'Belanja Honorarium'),
(42, '520205', 'Belanja Barang Operasional IT tanpa pembatasan'),
(43, '520206', 'Belanja Operasional IT dengan Pembatasan'),
(44, '520209', 'Belanja Barang Lainnya'),
(45, ' 5203', 'Belanja Langganan Daya dan Jasa '),
(46, '520301', 'Belanja Langganan daya dan jasa'),
(47, '520302', 'Belanja Sewa Gedung dan Bangunan'),
(48, '520303', 'Belanja sewa kendaraan'),
(49, '520304', 'Belanja Sewa untuk Operasional IT tanpa Pembatasan'),
(50, '520305', 'Belanja Sewa untuk Operasional IT dengan Pembatasan'),
(51, '5204', 'Belanja Jasa Konsultan'),
(52, '520401', 'Belanja Konsultan'),
(53, '520402', 'Belanja Konsultan terkait operasional IT tanpa Pembatasan'),
(54, '520403', 'Belanja Konsultan terkait operasional IT dengan Pembatasan'),
(55, '520404', 'Belanja Jasa Profesi'),
(56, '520419', 'Belanja Konsultan Lainnya'),
(57, '5205', 'Belanja Perjalanan Dinas'),
(58, '520501', 'Belanja Perjalanan Dinas Dalam Negeri'),
(59, '520502', 'Belanja Perjalanan Dinas Luar Negeri'),
(61, '520503', 'Belanja Perjalanan Dinas Paket Meeting Dalam Kota'),
(62, '520504', 'Belanja Perjalanan Dinas Paket Meeting Luar Kota'),
(63, ' 5206', 'Belanja Pemeliharaan'),
(64, '520601', 'Belanja Pemeliharaan Gedung dan Banguna'),
(65, '520602', 'Belanja Pemeliharaan Peralatan dan Mesin'),
(66, '520619', 'Belanja Pemeliharaan Peralatan dan Mesin lainnya'),
(67, ' 5207', 'Belanja Asuransi '),
(68, '5207001', 'Belanja Asuransi Gedung dan Bangunan'),
(69, '5207002', 'Belanja Asuransi Peralatan dan Mesin'),
(70, ' 5208', 'Belanja Modal Tanah'),
(71, '5208002', 'Belanja Modal Peralatan dan Mesin'),
(72, '5208003', 'Belanja Penambahan Nilai Modal Peralatan dan Mesin'),
(73, ' 5208004', 'Belanja Modal Gedung dan Bangunan'),
(74, '5208005', 'Belanja Penambahan Nilai Modal Gedung dan Bangunan '),
(75, '5208006', 'Belanja Modal Lainnya'),
(76, '5300', 'Beban Penyusutan Aset Tetap'),
(77, '530002', 'Penyusutan  Bangunan'),
(78, '530003', 'Penyusutan Kendaraan'),
(79, '530004', 'Penyusutan Perangkat Hardware'),
(80, '530005', 'Penyusutan Furniture, Fixture'),
(81, '530006', 'Penyusutan Perangkat Software'),
(82, '530007', 'Peny Aset Hak Guna Bangunan'),
(83, '530008', 'Peny Aset Hak Guna Kendaraan'),
(84, '530009', 'Penyusutan Perangkat Hardware (capex)'),
(85, '540005', 'Rugi Penjualan Aktiva'),
(86, '540007', 'Perantara Afkir Aktiva- Rek perantara');

-- --------------------------------------------------------

--
-- Table structure for table `compile_data`
--

CREATE TABLE `compile_data` (
  `id_compile` int(11) NOT NULL,
  `id_sasaranstrategis` int(11) NOT NULL,
  `id_indikatorutama` int(11) NOT NULL,
  `volume_indikatorutama` int(11) NOT NULL,
  `satuan_indikatorutama` varchar(225) NOT NULL,
  `id_program` int(11) NOT NULL,
  `id_sasaranprogram` int(11) NOT NULL,
  `id_indikatorprogram` int(11) NOT NULL,
  `volume_indikatorprogram` int(11) NOT NULL,
  `satuan_indikatorprogram` varchar(225) NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `id_sasarankegiatan` int(11) NOT NULL,
  `id_indikatorkegiatan` int(11) NOT NULL,
  `volume_indikatorkegiatan` int(11) NOT NULL,
  `satuan_indikatorkegiatan` varchar(225) NOT NULL,
  `id_output` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compile_data`
--

INSERT INTO `compile_data` (`id_compile`, `id_sasaranstrategis`, `id_indikatorutama`, `volume_indikatorutama`, `satuan_indikatorutama`, `id_program`, `id_sasaranprogram`, `id_indikatorprogram`, `volume_indikatorprogram`, `satuan_indikatorprogram`, `id_kegiatan`, `id_sasarankegiatan`, `id_indikatorkegiatan`, `volume_indikatorkegiatan`, `satuan_indikatorkegiatan`, `id_output`) VALUES
(7, 15, 7, 95, '%', 10, 4, 8, 95, 'persen', 6, 7, 17, 95, 'persen', 13),
(8, 15, 10, 4, 'WTM', 10, 4, 9, 4, 'WTM', 6, 7, 18, 4, 'WTM', 14),
(9, 15, 10, 4, 'WTM', 10, 4, 9, 4, 'WTM', 6, 7, 18, 4, 'WTM', 14),
(10, 15, 10, 4, 'WTM', 10, 4, 9, 4, 'WTM', 6, 7, 18, 4, 'WTM', 15),
(11, 15, 10, 4, 'WTM', 10, 4, 9, 4, 'WTM', 6, 7, 18, 4, 'WTM', 16);

-- --------------------------------------------------------

--
-- Table structure for table `direktorat`
--

CREATE TABLE `direktorat` (
  `id_direktorat` int(11) NOT NULL,
  `nama_direktorat` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `direktorat`
--

INSERT INTO `direktorat` (`id_direktorat`, `nama_direktorat`, `username`, `password`, `role`) VALUES
(17, 'DIT.KEU & LOGISTIK', 'keu521@gmail.com', '521', 'User'),
(29, 'DIREKTORAT TI', 'teknologi111@gmail.com', '111', 'User'),
(30, 'DIREKTORAT RENSTRA', 'renstra112@gmail.com', '112', 'User'),
(31, 'OPRPRH211', 'opr211@gmail.com', '211', 'User'),
(35, 'KPSPRH212', 'kps212@gmail.com', '212', 'User'),
(36, 'OPPPMP311', 'opp311@gmail.com', '311', 'User'),
(37, 'TINPMP312', 'tin312@gmail.com', '312', 'User'),
(38, 'PPPMF411', 'pppmf411@gmail.com', '411', 'User'),
(39, 'HCHAD511', 'hc511@gmail.com', '511', 'User'),
(40, 'DIT.RENSTRA', 'renstra@gmail.com', '12345', 'Admin'),
(41, 'MARKOM611', 'markom611@gmail.com', '611', 'User'),
(42, 'SETKOM612', 'setkom612@gmail.com', '612', 'User'),
(43, 'SPI131', 'nur.syamsi@tapera.go.id', '131', 'User'),
(44, 'KEU521', 'uun.arniza@tapera.go.id', '521', 'User'),
(45, 'PPA522', 'ali.surahman@tapera.go.id', '522', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `indikator_kegiatan`
--

CREATE TABLE `indikator_kegiatan` (
  `id_indikatorkegiatan` int(11) NOT NULL,
  `kode_indikatorkegiatan` varchar(30) NOT NULL,
  `nama_indikatorkegiatan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indikator_kegiatan`
--

INSERT INTO `indikator_kegiatan` (`id_indikatorkegiatan`, `kode_indikatorkegiatan`, `nama_indikatorkegiatan`) VALUES
(17, '11.2.1', 'Penyerapan anggaran yang optimal'),
(18, '11.2.2', 'WTM target 4'),
(19, '11.2.3', 'Tersedianya RPBJ'),
(20, '11.2.4', 'Terpenuhinya kebutuan operaisonal kantor'),
(21, '11.2.5', 'Tersedianya Laporan pengelolaan Aset & Arsip');

-- --------------------------------------------------------

--
-- Table structure for table `indikator_program`
--

CREATE TABLE `indikator_program` (
  `id_indikatorprogram` int(11) NOT NULL,
  `kode_indikatorprogram` varchar(30) NOT NULL,
  `nama_indikatorprogram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indikator_program`
--

INSERT INTO `indikator_program` (`id_indikatorprogram`, `kode_indikatorprogram`, `nama_indikatorprogram`) VALUES
(8, '11.1.1', 'Menjaga (BOPO : 95%)'),
(9, '11.1.2', 'Indeks WTM target 4'),
(10, '11.1.3', 'Tersedianya RPBJ'),
(11, '11.1.4', 'Terpenuhinya kebutuan operasonal kantor'),
(12, '11.1.5', 'Tersedianya Laporan pengelolaan Aset & Arsip'),
(13, '8.1', 'Jumlah LHP yang terbit target 5 LHP');

-- --------------------------------------------------------

--
-- Table structure for table `indikator_utama`
--

CREATE TABLE `indikator_utama` (
  `id_indikatorutama` int(11) NOT NULL,
  `nama_indikatorutama` varchar(225) NOT NULL,
  `kode_indikatorutama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indikator_utama`
--

INSERT INTO `indikator_utama` (`id_indikatorutama`, `nama_indikatorutama`, `kode_indikatorutama`) VALUES
(7, 'Menjaga (BOPO : 95%)', '11.1'),
(8, 'Pengadaan barang & Jasa perlu dilakukan diawal tahun sesuai SLA', '11.2'),
(9, 'Kebijakan office management melalui penyediaan ruang kerja dan layanan yang nyaman.', '11.3'),
(10, 'Mempertahankan hasil audit Wajar Tanpa Modifikasian (WTM)', '11.4'),
(11, 'Persentase Imbal Hasil kepada peserta Tapera sebesar ....%', '1.1'),
(12, 'Persentase Imbal hasil pemupukan Aset BP tapera sebesar…%', '1.2'),
(13, 'Imbal Hasil Pengelolaan Dana OIP sebesar …..miliar', '1.3'),
(14, 'Jumlah Efek pembiayaan KPR Tapera yang diterbitkan  sebesar…..efek', '2.1'),
(15, 'Jumlah pembiayaan KPR FLPP yang berhasil disalurkan sebesar 166.000 unit rumah', '2.2'),
(16, 'Pendaftaran Kepesertaan Baru sebanyak ……..peserta', '3.1'),
(17, 'Pengembalian Tabungan Peserta yang berhasil dikembalikan……peserta', '3.2'),
(18, 'Persentase ketepatan sasaran, dan keterhunian KPR KPR FLPP', '4.1'),
(19, 'Persentase Penyaluran FLPP untuk pekerja informal', '4.2'),
(20, 'Terlaksananya kegiatan terkait fasilitasi terbitnya regulasi penyesuaian batas penghasilan MBR berdasarkan basis penghasilan masyarakat perkotaan', '5.1'),
(21, 'Terlaksananya kegiatan terkait fasilitasi terbitnya regulasi  yang mewajibkan pemanfaatan FLPP melalui kepesertaan Tapera', '5.2'),
(22, 'Terlaksananya kegiatan terkait fasilitasi terbitnya regulasi pertanahan terkait konsep alokasi tanah untuk MBR (land allocation policy) dan konsep stabilisasi harga tanah untuk MBR (land freezing policy)', '5.3'),
(23, 'Terlaksananya kegiatan terkait fasilitasi terbitnya instrument enforcement untuk penerapan Bangunan Hijau khususnya rumah Tapera & FLPP.', '5.5'),
(24, 'Efektifitas Strategi Komunikasi Badan', '6.1'),
(25, 'Tingkat implementasi perlindungan konsumen & masyarakat', '6.2'),
(26, 'Indeks Kepuasan pengguna layanan BP Tapera', '6.3'),
(27, 'Efektifitas Edukasi kepada masyarakat', '6.4'),
(28, 'Persentase pelayanan yang sudah terintegrasi dalam e-layanan', '6.5'),
(29, 'Peringkat Hasil Penilaian Tata Kelola Yang Baik dengan target penilaian predikat baik', '7.1'),
(30, 'Peringkat Penilaian tingkat koposit dengan target penilaian predikat baik', '7.2'),
(31, 'Persentase Implementasi Assurance dan konsultansi Internal pengawasan yang diselesaikan', '8.1'),
(33, 'Persentase  bisnis proses layanan BP Tapera yang sudah diintegrasikan dalam Tapera Digital Service', '9.1'),
(34, 'Persentase penyelesaian Pengembangan Phase III Tapera Digital Servis', '9.2'),
(35, 'Tersedianya layanan jaringan dan infrastruktur TIK', '9.3'),
(36, 'Tinkat Implementasi pengembangan SDM berbasis kompetensi berdasarkan roadmap perencanaan SDM', '10.1'),
(37, 'Tingkat implementasi Kebijakan Remunerasi berbasis kinerja', '10.2'),
(38, 'Tingkat Implementasi Budaya kerja berbasis digital yang terintegrasi ', '10.3');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `kode_kegiatan` varchar(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `kode_kegiatan`, `nama_kegiatan`) VALUES
(5, 'HAD510', 'Perencanaan & Pelaksanaan Kegiatan terkait Human Capital dan Hukum'),
(6, 'HAD520', 'Perencanaan & Pelaksanaan Kegiatan terkait Keuangan & Logistik'),
(7, 'KOMTI110', 'Perencanaan & Pengelolaan Infrastruktur & Manajemen Data BP tapera'),
(8, 'KOMREN120', 'Perencanaa Strategis, GRC & Kebijakan Syariah'),
(9, 'KOMSPI130', 'Pengawasan dan Audit Internal BP Tapera'),
(10, 'PRHOPR210', 'Pengelolaan pembayaran pengembalian simpanan Peserta dan Layanan Informasi BP Tapera'),
(11, 'PRHKPS220', 'Pengelolaan Kerjasama dan administrasi Kepesertaan'),
(12, 'PMPTIN310', 'Pengelolaan Trasuri dan Investasi Dana Tapera dan Dana Lainnya'),
(13, 'PMPOPP320', 'Pengelolaan Setlement dan operasi Pemupukan'),
(14, 'PMFPP410', 'Perencanaan & Pelaksanaan Kebijakan terkait dengan Pembiayaan Perumahan'),
(15, 'PMFOPR320', 'Perencanaan & Pelaksanaan Kebijakan terkait Operasi Pemanfaatan Dana');

-- --------------------------------------------------------

--
-- Table structure for table `komponen`
--

CREATE TABLE `komponen` (
  `id_komponen` int(11) NOT NULL,
  `id_output_user` int(11) NOT NULL,
  `nama_komponen` varchar(225) NOT NULL,
  `kode_komponen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komponen`
--

INSERT INTO `komponen` (`id_komponen`, `id_output_user`, `nama_komponen`, `kode_komponen`) VALUES
(83, 70, 'FGD Kinerja Anggaran Semester I dan Proyeksi bulan Juni', 'HAD521-11'),
(84, 71, 'Pengadaan Audit KAP untuk Aset BP Tapera dan FLPP', 'HAD521-21'),
(85, 71, 'Pengadaan Konsultan Aktuaria th 2024', 'HAD521-22'),
(86, 71, 'Dukungan Pengelolaan Perpajakan', 'HAD521-23'),
(87, 71, 'FGD persiapan LK akhir tahun', 'HAD521-24'),
(88, 71, 'Depresiasi Aset Tetap', 'HAD521-25'),
(89, 72, 'Sosialisasi Pengembangan ERP Tahun 2023', 'HAD521-31'),
(90, 72, 'RefresmentTahunan Sistem ERP', 'HAD521-32'),
(91, 91, 'Komponen A', '2021'),
(92, 91, 'Komponen ZI', '01.02.03'),
(93, 93, 'Komponen AO', '2003');

-- --------------------------------------------------------

--
-- Table structure for table `output`
--

CREATE TABLE `output` (
  `id_output` int(11) NOT NULL,
  `kode_output` varchar(11) NOT NULL,
  `nama_output` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `output`
--

INSERT INTO `output` (`id_output`, `kode_output`, `nama_output`) VALUES
(13, 'HAD521-1', 'Laporan Relaisasi Anggaran & Kinerja Semester I'),
(14, 'HAD521-2', 'Laporan Keuangan & Kinerja Akhir Tahun'),
(15, 'HAD521-3', 'Pengelolaan Sistem Keuangan'),
(16, 'HAD521-4', 'Reviu Laporan Keuangan untuk Stakeholder'),
(17, 'HAD521-5', 'Kewajiban Regulator'),
(18, '06', 'Rencana Pengadaan Barang/Jasa.'),
(19, '07', 'Laporan Inventarisasi Aset '),
(20, '07', 'Operasional Perkantoran'),
(21, '06', 'Pengelolaan Arsip'),
(22, '07', 'Kendaraan Hasil Sewa Guna Usaha');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id_program` int(11) NOT NULL,
  `kode_program` longtext NOT NULL,
  `nama_program` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id_program`, `kode_program`, `nama_program`) VALUES
(7, 'KOM120', 'Program Perencanaan Strategis, GRC, Kebijakan Syariah dan Kesekretariatan'),
(8, 'KOM130', 'Program Pengawasan & Audit Internal BP Tapera'),
(9, 'KOM110', 'Program Infrastruktur Teknologi BP Tapera'),
(10, 'HAD500', 'Program Dukungan Manajemen, Hukum, Administrasi dan Pelaksanaan Tugas BP Tapera'),
(11, 'PMF400', 'Program Pengaturan dan Pengawasan Bidang Pemanfaatan Dana Tapera'),
(12, 'PMP300', 'Program Pengaturan dan pengawasan bidang Pemupukan Dana Tapera '),
(13, 'PRH200', 'Program Pengaturan dan Pengawasan Bidang Pengerahan Dana Tapera');

-- --------------------------------------------------------

--
-- Table structure for table `sasaran_kegiatan`
--

CREATE TABLE `sasaran_kegiatan` (
  `id_sasarankegiatan` int(11) NOT NULL,
  `kode_sasarankegiatan` varchar(30) NOT NULL,
  `nama_sasarankegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sasaran_kegiatan`
--

INSERT INTO `sasaran_kegiatan` (`id_sasarankegiatan`, `kode_sasarankegiatan`, `nama_sasarankegiatan`) VALUES
(7, '11.2', 'Terlaksananya dukungan keuangan dan pengelolaan asset yang optimal'),
(8, '8.1.1', 'Terlaksananya proses reviu, evaluasi, audit, dan pemantauan');

-- --------------------------------------------------------

--
-- Table structure for table `sasaran_program`
--

CREATE TABLE `sasaran_program` (
  `id_sasaranprogram` int(11) NOT NULL,
  `kode_sasaranprogram` varchar(30) NOT NULL,
  `nama_sasaranprogram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sasaran_program`
--

INSERT INTO `sasaran_program` (`id_sasaranprogram`, `kode_sasaranprogram`, `nama_sasaranprogram`) VALUES
(4, '11.1', 'Terlaksananya dukungan keuangan dan asset yang optimal'),
(5, '8.1', 'Terlaksananya pengawasan menurut program kerja pengawasan tahuan (PKPT) SPI');

-- --------------------------------------------------------

--
-- Table structure for table `sasaran_strategis`
--

CREATE TABLE `sasaran_strategis` (
  `id_sasaranstrategis` int(11) NOT NULL,
  `nama_sasaranstrategis` varchar(255) NOT NULL,
  `kode_sasaranstrategis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sasaran_strategis`
--

INSERT INTO `sasaran_strategis` (`id_sasaranstrategis`, `nama_sasaranstrategis`, `kode_sasaranstrategis`) VALUES
(4, 'Menjaga Pertumbuhan Yang Berkelanjutan', '1'),
(5, 'Penyaluran Pembiayaan Perumahan  Yang Optimal', '2'),
(6, 'Pelayanan Kepesertaan yang Prima', '3'),
(7, 'Pengelolaan Dana Tapera dan OIP yang Kredible', '4'),
(9, 'Peran Aktif dalam Ekosistem Pembiayaan Perumahan', '5'),
(10, 'Berorientasi pada Layanan Prima', '6'),
(11, 'Penguatan Tata Kelola', '7'),
(12, 'Pengawasan dan Pengendalian Internal yang kredible', '8'),
(13, 'Bisinis Proses yang Seamless. Terintegrasi dan Berbasis Digital', '9'),
(14, 'Peningkatan Kapasitas, Kualitas dan Produktifitas SDM', '10'),
(15, 'Pengelolaan Keuangan dan Aset yang Optimal', '11');

-- --------------------------------------------------------

--
-- Table structure for table `userform`
--

CREATE TABLE `userform` (
  `id_pengadaan` int(11) NOT NULL,
  `id_direktorat` int(11) NOT NULL,
  `nama_pengadaan` text NOT NULL,
  `dibuat_oleh` varchar(225) NOT NULL,
  `dibuat_pada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`);

--
-- Indexes for table `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`id_coa`);

--
-- Indexes for table `compile_data`
--
ALTER TABLE `compile_data`
  ADD PRIMARY KEY (`id_compile`);

--
-- Indexes for table `direktorat`
--
ALTER TABLE `direktorat`
  ADD PRIMARY KEY (`id_direktorat`);

--
-- Indexes for table `indikator_kegiatan`
--
ALTER TABLE `indikator_kegiatan`
  ADD PRIMARY KEY (`id_indikatorkegiatan`);

--
-- Indexes for table `indikator_program`
--
ALTER TABLE `indikator_program`
  ADD PRIMARY KEY (`id_indikatorprogram`);

--
-- Indexes for table `indikator_utama`
--
ALTER TABLE `indikator_utama`
  ADD PRIMARY KEY (`id_indikatorutama`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `komponen`
--
ALTER TABLE `komponen`
  ADD PRIMARY KEY (`id_komponen`);

--
-- Indexes for table `output`
--
ALTER TABLE `output`
  ADD PRIMARY KEY (`id_output`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `sasaran_kegiatan`
--
ALTER TABLE `sasaran_kegiatan`
  ADD PRIMARY KEY (`id_sasarankegiatan`);

--
-- Indexes for table `sasaran_program`
--
ALTER TABLE `sasaran_program`
  ADD PRIMARY KEY (`id_sasaranprogram`);

--
-- Indexes for table `sasaran_strategis`
--
ALTER TABLE `sasaran_strategis`
  ADD PRIMARY KEY (`id_sasaranstrategis`);

--
-- Indexes for table `userform`
--
ALTER TABLE `userform`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id_aktivitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `coa`
--
ALTER TABLE `coa`
  MODIFY `id_coa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `compile_data`
--
ALTER TABLE `compile_data`
  MODIFY `id_compile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `direktorat`
--
ALTER TABLE `direktorat`
  MODIFY `id_direktorat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `indikator_kegiatan`
--
ALTER TABLE `indikator_kegiatan`
  MODIFY `id_indikatorkegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `indikator_program`
--
ALTER TABLE `indikator_program`
  MODIFY `id_indikatorprogram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `indikator_utama`
--
ALTER TABLE `indikator_utama`
  MODIFY `id_indikatorutama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `komponen`
--
ALTER TABLE `komponen`
  MODIFY `id_komponen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `output`
--
ALTER TABLE `output`
  MODIFY `id_output` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sasaran_kegiatan`
--
ALTER TABLE `sasaran_kegiatan`
  MODIFY `id_sasarankegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sasaran_program`
--
ALTER TABLE `sasaran_program`
  MODIFY `id_sasaranprogram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sasaran_strategis`
--
ALTER TABLE `sasaran_strategis`
  MODIFY `id_sasaranstrategis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userform`
--
ALTER TABLE `userform`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
