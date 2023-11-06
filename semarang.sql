-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 08:32 AM
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
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `semarang`
--

CREATE TABLE `semarang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` text DEFAULT NULL,
  `kategori` enum('Bangunan','Wisata Alam','Pantai','Tempat Ibadah','Kebun Binatang','Wisata Modern') NOT NULL,
  `penjelasan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semarang`
--

INSERT INTO `semarang` (`id`, `nama`, `lokasi`, `kategori`, `penjelasan`) VALUES
(1, 'Kota Lama', 'Jalan Letjen Suprapto, Tanjung Mas', 'Bangunan', 'Kawasan Kota Lama Semarang merupalkan pusat perdagangan pada abad 19-20. Di tempat ini ada sekitar 50 bangunan kuno yang masih berdiri dengan kukuh dan mempunyai sejarah Kolonialisme di Semarang. Kota Lama kini menjadi destinasi wisata yang menarik. Bangunan-bangunan khas Eropa di kawasan wisata Kota Lama Semarang masih terawat dengan baik. Kawasan seluas 31 hektare ini menjadi daya tarik wisatawan yang ingin menyusuri sejarah Semarang di masa kolonial. Wisata Kota Lama Semarang menjadi saksi bisu sejarah Indonesia masa kolonial Belanda selama lebih dari 2 abad. Bahkan wisata Kota Lama Semarang kerap disebut sebagai \"Little Netherland\". Meski sudah berusia 200 hingga 300 tahun, bangunan khas Eropa di kawasan wisata Kota Lama Semarang tetap berdiri kokoh dan megah.'),
(2, 'Lawang Sewu', 'Jalan Pemuda', 'Bangunan', 'Lawang Sewu merupakan Gedung megah berarsitektur art deco, yang digunakan Belanda sebagai Kantor Pusat Kereta Api (Trem) atau Nederlandsch Indische Spoorweg Maschaappij (NIS) yang terletak di Komplek Tugu Muda. Bangunan karya arsitek Belanda Prof. Jacob F. Klinkhamer dan B.J. Queendag ini menurut sejarah dibangun tahun 1903, kemudian diresmikan pada tanggal 1 Juli 1907. Masyarakat Semarang lebih mengenal gedung ini dengan sebutan Gedung Lawang Sewu, karena gedung ini memiliki jumlah pintu yang banyak, yang dalam bahasa jawa Lawang Sewu yaitu Lawang berarti Pintu dan Sewu yang berarti Seribu. Sekarang Gedung Lawang Sewu ini digunakan sebagai daya tarik wisata berupa peninggalan sejarah arsitek bangunan kuno dan antik, ruang bawah tanah dan menara informasi, sering pula digunakan sebagai tempat pameran dalam even-even tertentu.'),
(3, 'Pantai Marina', ' Jalan Taman Marina, Tawangsari', 'Pantai', 'Pantai Marina Semarang termasuk kedalam salah satu pantai paling ramai dikunjungi saat liburan. Keindahan pemandangan sore hari dari pantai ini mampu menarik banyak wisatawan bahkan dari luar Semarang. Suasana pantainya yang tenang dan tempat yang nyaman jadi nilai lebih tempat wisata favorit keluarga ini. Anda tidak hanya akan melihat panorama alam tapi juga dapat menikmati berbagai hal menarik lainnya. Pada awalnya pantai ini merupakan kawasan hutan bakau yang tidak terlalu terawat. Namun setelah di reklamasi, pantai ini mulai memperlihatkan keindahan dan daya tariknya ke wisatawan.'),
(4, 'Kelenteng Sam Poo Kong', 'Jalan Simongan No.129, Bongsari', 'Tempat Ibadah', 'Kelenteng Gedung Kuno Sam Poo Kong yaitu bekas tempat persinggahan dan pendaratan pertama seorang Laksamana Tiongkok beragama Islam yang bernama Zheng He/Cheng Ho. Kelenteng ini disebut Gedung Batu karena bentuknya merupakan gua batu besar yang berada di sebuah bukit batu. Untuk mengenang Cheng Ho, masyarakat Indonesia keturunan Tionghoa membangun sebuah kelenteng. Sekarang tempat ini dijadikan tempat peringatan dan pemujaan atau bersembahyang serta tempat untuk berziarah.'),
(5, 'Goa Kreo', 'Jalan Raya Goa Kreo, Kandri', 'Wisata Alam', 'Gua Kreo adalah objek wisata yang terdapat di Kota Semarang. Gua Kreo merupakan Gua yang terbentuk oleh alam dan terletak di tengah-tengah Waduk Jatibarang, sebuah bendungan yang membendung Kali Kreo. Kata \"Kreo\" berasal dari kata Mangreho artinya jagalah atau peliharalah. Gua ini pernah digunakan Sunan Kalijaga untuk bertapa. Di sini terdapat ratusan monyet yang beretnis Macaca fascicularis atau biasa disebut monyet ekor panjang, dan menurut legenda juga terdapat tiga monyet gaib anak buah dari Sunan Kalijaga untuk menjaga hutan tersebut. Masyarakat sekitar juga meyakini bahwa kera ekor panjang tersebut merupakan keturunan dari kera yang setia di zaman Sunan Kalijaga. Pada saat hasil bumi melimpah, masyarakat sekitar Goa Kreo akan mengadakan acara Rewanda, yaitu acara tradisional yang dilakukan sebagai bentuk dari hasil rasa syukur dan mengasihi makhluk hidup, dengan memberikan hasil bumi atau makanan untuk kera ekor panjang yang terdapat dikawasan tersebut.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `semarang`
--
ALTER TABLE `semarang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `semarang`
--
ALTER TABLE `semarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
