-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 07:20 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kebun27`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `info_kontak` varchar(50) NOT NULL,
  `foto_admin` varchar(50) NOT NULL,
  `tgl_buat` date NOT NULL,
  `id_level` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `email`, `username`, `password`, `nama_depan`, `nama_belakang`, `alamat`, `info_kontak`, `foto_admin`, `tgl_buat`, `id_level`) VALUES
(3, 'yulinar@gmail.com', 'superadmin', 'yulinar', 'Super', 'Admin', 'Probolinggo', '089322234', '530688.jpg', '2020-12-27', 3),
(4, 'yulinarnurrahma@gmail.com', 'admin12345', 'admin', 'paperplane', 'bookstore', 'Surabaya', '089423411', '202012290519051.PNG', '2020-12-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bank`
--

CREATE TABLE `tb_bank` (
  `id_bank` int(8) NOT NULL,
  `an_bank` varchar(30) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `no_rek` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bank`
--

INSERT INTO `tb_bank` (`id_bank`, `an_bank`, `nama_bank`, `no_rek`) VALUES
(1, 'TOSAN', 'MANDIRI', '459-8551-0241');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama`, `tgl_input`) VALUES
(12, 'Buah', '2020-12-27'),
(13, 'Sayuran', '2020-12-27'),
(14, 'Kacang Kacangan', '2020-12-27'),
(15, 'Biji Bijian', '2020-12-30'),
(16, 'Batang', '2021-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(3) NOT NULL,
  `level` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'admin'),
(2, 'pelanggan'),
(3, 'super admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ongkir`
--

CREATE TABLE `tb_ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `tarif` int(11) NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ongkir`
--

INSERT INTO `tb_ongkir` (`id_ongkir`, `nama_kota`, `tarif`, `tgl_input`) VALUES
(4, 'probolinggo', 12000, '2020-12-07'),
(5, 'Banyuwangi', 24000, '2020-12-27'),
(6, 'Malang', 27000, '2020-12-27'),
(7, 'Surabaya', 15000, '2021-01-08'),
(8, 'Kraksaan', 17000, '2021-01-08'),
(9, 'Solo', 28000, '2021-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `bukti_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tgl_pembayaran`, `bukti_pembayaran`) VALUES
(11, 88, 'Yulinar', 'Mandiri', 41000, '2021-01-01', '20210103190643struk3242.jpg'),
(12, 90, 'Yulinar Nur Rahmawati', 'Mandiri', 77000, '2021-01-03', '20210103190643struk.jpg'),
(13, 91, 'Itska Muezaa', 'Mandiri', 20000, '2021-01-04', '20210104172301new.jpg'),
(14, 94, 'user yulinar nr', 'BCA', 64000, '2021-01-07', '20210107180101algo.png'),
(15, 93, 'Hilmaya', 'Mandiri', 29000, '2021-01-07', '20210107180515lg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian`
--

CREATE TABLE `tb_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(30) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembelian`
--

INSERT INTO `tb_pembelian` (`id_pembelian`, `id_user`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`) VALUES
(88, 12, 5, '2021-01-01', 41000, 'Banyuwangi', 24000, 'banyu iki', 'SELESAI', 'KS-23129324211'),
(89, 12, 6, '2021-01-01', 51000, 'Malang', 27000, 'malabf', 'Pesanan Dibatalkan', ''),
(90, 12, 6, '2021-01-03', 77000, 'Malang', 27000, 'Jl. Ir Soekarno no 16', 'SELESAI', 'KB-11342343212'),
(91, 12, 4, '2021-01-04', 20000, 'probolinggo', 12000, 'a', 'Sudah Kirim Pembayaran', ''),
(92, 12, 4, '2021-01-07', 26000, 'probolinggo', 12000, 'Jl. Cangkring, Kanigaran', 'Pesanan Dibatalkan', ''),
(93, 12, 5, '2021-01-07', 29000, 'Banyuwangi', 24000, 'Jl. Kawah', 'Sudah Kirim Pembayaran', ''),
(94, 12, 6, '2021-01-07', 64000, 'Malang', 27000, 'Jl. ketaman sari', 'Sudah Kirim Pembayaran', ''),
(95, 12, 5, '2021-01-07', 42000, 'Banyuwangi', 24000, 'Jl. ajdaks', 'Pesanan Dibatalkan', ''),
(96, 12, 5, '2021-01-07', 27000, 'Banyuwangi', 24000, 'sad', 'Pesanan Dibatalkan', ''),
(97, 12, 9, '2021-01-08', 41000, 'Solo', 28000, 'Jl. Mawar', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian_produk`
--

CREATE TABLE `tb_pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subtot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembelian_produk`
--

INSERT INTO `tb_pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subtot`) VALUES
(122, 88, 29, 1, 'Selada', 12000, 1, 1, 12000),
(123, 88, 30, 1, 'Sawi', 5000, 1, 1, 5000),
(124, 89, 29, 2, 'Selada', 12000, 1, 2, 24000),
(125, 90, 29, 2, 'Selada', 8000, 1, 2, 16000),
(126, 90, 32, 1, 'Jeruk', 34000, 2, 2, 34000),
(127, 91, 29, 1, 'Selada', 8000, 1, 1, 8000),
(128, 92, 29, 1, 'Selada', 8000, 1, 1, 8000),
(129, 92, 31, 2, 'Bayam', 3000, 1, 2, 6000),
(130, 93, 30, 1, 'Sawi', 5000, 1, 1, 5000),
(131, 94, 31, 1, 'Bayam', 3000, 1, 1, 3000),
(132, 94, 32, 1, 'Jeruk', 34000, 2, 2, 34000),
(133, 95, 29, 1, 'Selada', 8000, 1, 1, 8000),
(134, 95, 30, 2, 'Sawi', 5000, 1, 2, 10000),
(135, 96, 31, 1, 'Bayam', 3000, 1, 1, 3000),
(136, 97, 29, 1, 'Selada', 8000, 1, 1, 8000),
(137, 97, 30, 1, 'Sawi', 5000, 1, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `stok` int(11) NOT NULL,
  `beratisi_produk` varchar(20) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(25) NOT NULL,
  `info_produk` text NOT NULL,
  `nutrisi_manfaat` text NOT NULL,
  `cara_penyimpanan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `kategori`, `stok`, `beratisi_produk`, `harga_produk`, `foto_produk`, `info_produk`, `nutrisi_manfaat`, `cara_penyimpanan`) VALUES
(29, 'Selada', '13', 5, '1', 8000, 'selada.jpg', 'Selada atau daun sla adalah tumbuhan sayur yang biasa ditanam di daerah beriklim sedang maupun daerah tropika. Kegunaan utama adalah sebagai salad. ', 'Mencegah dehidrasi, Menangkal radikal bebas, Menjaga kesehatan mata, Menjaga kesehatan tulang, Membantu menurunkan tekanan darah dan masih banyak lagi', 'Melansir laman The Spruce, kamu harus memisahkan daun-daun selada terlebih dahulu, cuci bersih, dan keringkan menggunakan salad spinner.\r\nSetelah itu, bungkus menggunakan kertas tipis atau tisu dan letakkan dalam penyimpanan sayur yang ada di lemari pendingin.\r\nDengan metode ini, selada akan awet selama 3-5 hari.'),
(30, 'Sawi', '13', 15, '1', 5000, '530688.jpg', 'xx', 'xx', 'xx'),
(31, 'Bayam', '13', 7, '1', 3000, 'bayam2.jpg', 'xx', 'xx', 'xx'),
(32, 'Jeruk', '12', 21, '2', 34000, 'jeruk.jpg', 'xx', 'xx', 'xx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `info_kontak` varchar(25) NOT NULL,
  `foto_user` varchar(25) NOT NULL,
  `tgl_buat` date NOT NULL,
  `id_level` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `email`, `username`, `password`, `nama_depan`, `nama_belakang`, `alamat`, `info_kontak`, `foto_user`, `tgl_buat`, `id_level`) VALUES
(12, 'yulinar@gmail.com', 'user', 'user', 'Yulinar', ' User', 'Jl. Bringin', '0986987567', '20201227140520529672.jpg', '2020-12-07', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_bank`
--
ALTER TABLE `tb_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_ongkir`
--
ALTER TABLE `tb_ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `tb_pembelian_produk`
--
ALTER TABLE `tb_pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_bank`
--
ALTER TABLE `tb_bank`
  MODIFY `id_bank` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_ongkir`
--
ALTER TABLE `tb_ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_pembelian`
--
ALTER TABLE `tb_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tb_pembelian_produk`
--
ALTER TABLE `tb_pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
