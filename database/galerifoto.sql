-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2023 pada 07.31
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifoto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(2, 'Irawan', 'irawan', 'adminirawan', '085774137284', 'irawan@gmail.com', 'Jl. Raya Kadu Seungit'),
(3, 'Diana', 'diana', '1234', '085788992919', 'Diana@gmail.com', 'Suka Seneng Cikeusik'),
(4, 'Hazwan', 'hazwan', '123', '085787778811', 'hazwan@gmail.com', 'Cikeusik Pandeglang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(14, 'Perjalanan'),
(15, 'Bawah Air'),
(16, 'Hewan Peliharaan'),
(17, 'Satwa Liar'),
(18, 'Makanan'),
(19, 'Olahraga'),
(20, 'Fashion'),
(21, 'Seni Rupa'),
(22, 'Dokumenter'),
(23, 'Arsitektur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(34, 23, 'Arsitektur', 2, 'Irawan', 'Merancang Kota Modern', '<p>Foto ini menggambarkan kegiatan desain perencanaan membuat kota yang modern berdasarkan ramah lingkungan</p>\r\n', 'foto1701141777.jpg', 1, '2023-11-28 04:58:19'),
(35, 23, 'Arsitektur', 2, 'Irawan', 'Merancang Perumahan Elit', '<p>Foto ini menggambarkan kegiatan desain perencanaan membuat Rumah yang modern, nyaman untuk keluarga</p>\r\n', 'foto1701144257.jpg', 1, '2023-11-28 04:04:17'),
(36, 17, 'Satwa Liar', 3, 'Diana', 'Harimau Sumatra', 'Harimau sumatera (Panthera tigris sumatrae) adalah subspesies harimau yang habitat aslinya di pulau Sumatera. Hidup di hutan hujan tropis Sumatera, harimau ini adalah pemakan daging yang ulung. Dengan kecepatan lari hampir 40 mil per jam, mereka adalah predator yang tangguh di alam liar. Kemampuannya berburu, terutama di malam hari, memungkinkan mereka untuk mengintai mangsa dengan diam-diam sebelum menerkam dengan cepat.', 'foto1701147078.jpg', 1, '2023-11-28 04:51:18'),
(37, 17, 'Satwa Liar', 3, 'Diana', 'Badak Jawa', 'Badak Jawa (Rhinoceros sondaicus) adalah jenis satwa langka yang masuk kedalam 25 spesies prioritas utama konservasi Pemerintah Indonesia. Badak Jawa dapat hidup hingga 30-45 tahun di habitat aslinya. Mereka biasa tinggal di hutan hujan dataran rendah, padang rumput basah, dan dataran banjir yang luas. Badak ini merupakan makhluk yang suka menyendiri, kecuali saat pacaran dan saat membesarkan anak.', 'foto1701147926.jpg', 1, '2023-11-28 05:05:26'),
(38, 16, 'Hewan Peliharaan', 3, 'Diana', 'Kucing Angora', 'Anggora adalah kucing dengan ciri khas berbulu panjang yang indah. Anggora memiliki tubuh yang sedang dengan badan berotot yang panjang, ramping, langsing dan elegan. Anggora memiliki hidung yang panjang, kepala yang berbentuk segitiga, serta telinga yang panjang, lebar, dan berbentuk segitiga.', 'foto1701148582.jpg', 1, '2023-11-28 05:16:22'),
(39, 16, 'Hewan Peliharaan', 3, 'Diana', 'Ayam Kampung', 'Ayam kampung adalah kualitas daging nya yang memang lebih unggul di bandingkan dengan daging ayam lain nya, sehingga tidak heran jika rasa nya juga jauh lebih enak di bandingkan ayam lain.', 'foto1701148797.jpg', 1, '2023-11-28 05:19:57'),
(40, 14, 'Perjalanan', 4, 'Hazwan', 'Pantai Carita', 'Pantai Carita merupakan objek wisata yang terletak di Kabupaten Pandeglang. Fasilitas di Pantai Carita cukup lengkap yaitu Banana boat, snorkling, papan seluncur, diving, dan fasilitas lainnya. Banyak juga penginapan-penginapan sepanjang pesisir pantai dan atau rumah-rumah warga yang difungsikan untuk penginapan.', 'foto1701150076.jpg', 1, '2023-11-28 05:41:16'),
(41, 14, 'Perjalanan', 4, 'Hazwan', 'Curug Putri', 'Curug Putri Carita Pandeglang ini unik banget karena terbentuk dari lava yang membeku dan kemudian menjadi aliran sungai dengan batuan cantik.', 'foto1701150304.jpg', 1, '2023-11-28 05:45:04'),
(42, 17, 'Satwa Liar', 3, 'Diana', 'Singa Afrika', 'Singa adalah binatang yang menakutkan , tubuhnya besar, gesit dan garang, buas dan menyeramkan. Singa memiliki taring yang gampang melumatkan mangsanya, punya kuku yang kuat yang mampu menerkam mangsa hingga tak berdaya, dan mencabik- cabiknya. Singa sering digunakan untuk mewakili kekuatan, kegarangan dan kebuasan.', 'foto1701150517.jpg', 1, '2023-11-28 05:48:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`),
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
