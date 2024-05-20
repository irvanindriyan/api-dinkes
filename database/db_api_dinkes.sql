-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2024 at 04:05 AM
-- Server version: 8.0.36
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_api_dinkes`
--

-- --------------------------------------------------------

--
-- Table structure for table `connected_hospitals`
--

CREATE TABLE `connected_hospitals` (
  `id` bigint UNSIGNED NOT NULL,
  `organisasi_id` int NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connected_hospitals`
--

INSERT INTO `connected_hospitals` (`id`, `organisasi_id`, `nama`, `alamat`, `lokasi`, `status`, `created_at`, `updated_at`) VALUES
(1, 1000265715, 'RS UMUM DAERAH KEPULAUAN SERIBU', 'Pulau Pramuka Rt.001 RW.004', 'Kab. Adm. Kep. Seribu, DKI Jakarta', 'terkoneksi', NULL, NULL),
(2, 1000255966, 'RS ANAK DAN BUNDA HARAPAN KITA', 'Jl. Let.Jend. S Parman Kav. 87 Slipi Jakbar', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(3, 1000269503, 'RS GIGI DAN MULUT FKG UNIVERSITAS TRISAKTI', 'Jl. Kyai Tapa No. 260 Grogol Jakarta Barat', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(4, 1000276245, 'RS IBU DAN ANAK METRO HOSPITALS KEBON JERUK', 'Jl. Duri Raya No. 22 Duri Kepa Jakbar', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(5, 1000255954, 'RS JANTUNG DAN PEMBULUH DARAH HARAPAN KITA', 'Jl. S. Parman Kav 87, Slipi', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(6, 1000256049, 'RS JIWA DR. SOEHARTO HEERDJAN', 'Jl. Prof.Dr.Latumeten No. 1 Jakarta Barat', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(7, 1000256099, 'RS KANKER DHARMAIS', 'Jl. S Parman Kav.84-86 Slipi Jakarta Barat', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(8, 1000269486, 'RS KHUSUS MATA JAKARTA EYE CENTER KEDOYA', 'Jl. Terusan Arjuna Utara No.1, Kedoya Sel., Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11520', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(9, 1000278310, 'RS PONDOK INDAH PURI INDAH', 'Jl. Puri Indah Raya,Blok S-2,Kel.Kembangan Selatan,Jakbar', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(10, 1000267402, 'RS UKRIDA', 'Jl. Arjuna Utara No. 6 Kel. Duri Kepa Kec. Kebon Jeruk', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(11, 1000277342, 'RS UMUM  ROYAL TARUMA', 'Jl. Daan Mogot No.34,Jakarta Barat', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(12, 1000277055, 'RS UMUM ANGGREK MAS', 'Jl. Anggrek No. 2B rt.009/02 Kelapa Dua Kebon Jeruk', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(13, 1000284228, 'RS UMUM CINTA KASIH TZU CHI', 'JL. KAMAL RAYA OUTER RING ROAD CENGKARENG', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(14, 1000265430, 'RS UMUM DAERAH  KEMBANGAN', 'Jl. Topaz Raya Blok F 2 No. 3 Rt.15 Rw. 07, Kelurahan Meruya Utara,  Kecamatan Kembangan, Jakarta Barat 11620', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(15, 1000266422, 'RS UMUM DAERAH CENGKARENG', 'Jl.Kamal Raya Bumi Cengkareng Indah Cengkareng Timur', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(16, 1000265777, 'RS UMUM DAERAH KALIDERES', 'Jl. Bedugul Blok NA, RT.008 RW.012, Perumahan Daan Mogot Baru, Kelurahan Kalideres, Kecamatan Kalideres, Kota Jakarta Barat, Provinsi DKI JakartaKode Pos: 11840', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(17, 1000272512, 'RS UMUM DR ABDUL RADJAK CENGKARENG', 'Jl. Daan mogot KM. 17. Komplek Imperial Business Center Blok A No.1-10 Kel. Kalideres Kec. Kalideres', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(18, 1000269759, 'RS UMUM GRHA KEDOYA', 'Jln. Panjang Arteri No. 26 Kedoya Utara, kebon Jeruk', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(19, 1000277902, 'RS UMUM HERMINA DAAN MOGOT', 'Jl. Kintamani Raya No. 2, Komp. Perumahan Daan Mogot Baru', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(20, 1000269838, 'RS UMUM MITRA KELUARGA KALIDERES', 'JL PETA SELATAN NO 1 RT/RW 007/011 KEL KALIDERES KEC KALIDERES JAKARTA BARAT', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(21, 1000255136, 'RS UMUM PELNI PETAMBURAN', 'Jl.Aipda KS Tubun No. 92-94, Desa/Kelurahan Slipi, Kec Palmerah, Kota Adm. Jakarta Barat, Provinsi DKI Jakarta Kode Pos  11410', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(22, 1000279144, 'RS UMUM SILOAM HOSPITALS KEBON JERUK', 'Jl. Perjuangan Raya Kav.8 Jakarta Barat', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(23, 1000284670, 'RS UMUM SUMBER WARAS', 'Jl. Kyai Tapa No.1 Grogol Jakbar', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(24, 1000280507, 'RS GIGI DAN MULUT FKG UNIV. INDONESIA', 'Jl. Salemba Raya No. 4 Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(25, 1000281628, 'RS ISLAM JAKARTA CEMPAKA PUTIH', 'Jl. Cempaka Putih Tengah I / 1 Jakarta Pusat - Indonesia', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(26, 1000269905, 'RS KHUSUS IBU ANAK BUNDA JAKARTA', 'Jl. Teuku Cik Ditiro No. 28 Menteng', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(27, 1000274560, 'RS KHUSUS JEC @MENTENG', 'Jl. Teuku Cik Ditiro No.46 Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(28, 1000273932, 'RS KHUSUS THT BEDAH KL PROKLAMASI', 'Jl. Proklamasi No. 43, Menteng - Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(29, 1000275693, 'RS KHUSUS THT PROF NIZAR', 'Jl. Kesehatan No. 9 Jakpus', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(30, 1000277603, 'RS MENTENG MITRA AFIA', 'Jl. Kalipasir No.9 Kel. Kebon Sirih, Kec. Menteng, Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(31, 1000285882, 'RS PRIMAYA PGI CIKINI', 'Jl. Raden Saleh No. 40 Jakpus', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(32, 1000272706, 'RS SILOAM AGORA', 'Jl. Letjend Suprapto No.1', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(33, 1000264723, 'RS UMUM AL DR. MINTOHARJO', 'Jl. Bendungan Hilir No.17, RT.4/RW.3, Bendungan. Hilir, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10210', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(34, 1000283779, 'RS UMUM BUDI KEMULIAAN', 'Jl. Budi Kemuliaan No.25 Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(35, 1000269137, 'RS UMUM BUNDA JAKARTA', 'Jl. Teuku Cik Ditiro No. 21 Menteng', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(36, 1000266173, 'RS UMUM DAERAH CEMPAKA PUTIH', 'Jl.Rawasari Selatan No1', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(37, 1000266214, 'RS UMUM DAERAH TANAH ABANG', 'Jl. KH. Mas Mansyur No. 30 Kel. Kebon Kacang Kec. Tanah Abang, Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(38, 1000266525, 'RS UMUM DAERAH TARAKAN', 'Jl. Kyai Caringin no. 7 RT 11 / RW 04, Cideng, Kec. Gambir', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(39, 1000284084, 'RS UMUM DR. ABDUL RADJAK SALEMBA', 'Jl. Salemba Tengah 24-28, Paseban, Senen, Jakarta Pusat, DKI Jakarta', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(40, 1000278401, 'RS UMUM HERMINA KEMAYORAN', 'Jl. Selangit Blok B.10 Kav No.4 Kel. Gunung Sahari Selatan Kec. Kemayoran', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(41, 1000275033, 'RS UMUM HUSADA', 'Jl. Raya Mangga Besar No.137/139 Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(42, 1000283377, 'RS UMUM KRAMAT 128', 'Jl. Kramat Raya No.128,Jakpus', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(43, 1000279936, 'RS UMUM MITRA KEMAYORAN', 'Jl. HBR Motik Rt 013 Rw 006 Kel. Kebon Kosong Kec. Kemayoran  Jakarta Pusat 10630', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(44, 1000273865, 'RS UMUM MURNI TEGUH SUDIRMAN JAKARTA', 'Jl. Jend. Sudirman No. 86', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(45, 1000264462, 'RS UMUM PAD GATOT SOEBROTO', 'Jl. Dr. Abdul  Rahman Saleh No. 24  Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(46, 1000255253, 'RS UMUM PERTAMINA JAYA', 'Jl. A. Yani No. 2 By Pass Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(47, 1000283236, 'RS UMUM PRIMAYA EVASARI HOSPITAL', 'Jl. Rawamangun No. 47, Rawasari, Cempaka Putih, Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(48, 1000285650, 'RS UMUM SINT CAROLUS', 'Jl. Salemba Raya No.41 Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(49, 1000269084, 'RS UMUM YARSI', 'Jl. Letjen Suprapto Kelurahan Cempaka Putih Timur Kecamatan Cempaka Putih Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(50, 1000284486, 'RS UMUM YPK MANDIRI', 'Jl. Gereja Theresia No. 22 Menteng Jakpus', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(51, 1000264644, 'RSGM LADOKGI R.E MARTADINATA', 'Jl. Farmasi No.1, Bendungan Hilir, Tanah Abang, Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(52, 1000255942, 'RSUPN DR. CIPTO MANGUNKUSUMO', 'Jl. Diponegoro 71 Jakarta Pusat', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'terkoneksi', NULL, NULL),
(53, 1000269644, 'RS BEDAH SILOAM ASRI', 'Jl. Duren Tiga Raya No. 20, Duren Tiga, Pancoran', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(54, 1000272744, 'RS BRAWIJAYA SAHARJO', 'Jl. Dr. Saharjo No.199, RT.1/RW.1, Tebet Bar., Kec. Tebet, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12810', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(55, 1000284515, 'RS GIGI DAN MULUT UNIV. PROF. MOESTOPO', 'Jl. Bintaro Permai Raya No 3 Jaksel', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(56, 1000275667, 'RS IBU DAN ANAK BRAWIJAYA DURENTIGA', 'Jl. Duren Tiga Raya No.5 Pancoran Jaksel', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(57, 1000269436, 'RS IBU DAN ANAK JWCC ASIH', 'Jl. Panglima Polim III no.34 Melawai Kebayoran Baru', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(58, 1000271063, 'RS KHUSUS BEDAH HALIMUN', 'Jl. Halimun No.9, Guntur Setiabudi, Desa/Kelurahan Guntur, Kec.Setiabudi, Kota Adm. Jakarta Selatan, Provinsi DKI Jakarta,Kode Pos: 12980', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(59, 1000278487, 'RS KHUSUS IBU DAN ANAK BRAWIJAYA', 'Jl..Taman Brawijaya No.1 Kel. Cepete Utara Kec. Kebayoran Baru', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(60, 1000270588, 'RS KHUSUS KANKER MRCCC SILOAM SEMANGGI', 'Jl. Garnisun No. 2 - 3, RT 003, RW 004, Kel. Karet Semanggi, Kec. Setiabudi, Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(61, 1000280882, 'RS MUHAMMADIYAH TAMAN PURING', 'Jl. Gandaria 1 No.20, RT.1/RW.2, Kramat Pela, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12130', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(62, 1000284307, 'RS ORTHOPEDI SIAGA RAYA', 'Jl. Siaga Raya Kav.4-8, Pejaten Barat, Pasar Minggu, Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(63, 1000284632, 'RS UMUM AGUNG', 'Jl. Sultan Agung No.67 RT 1/ RW 8, Kelurahan Ps Manggis, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12970', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(64, 1000264682, 'RS UMUM AL CILANDAK', 'Jl. Raya Cilandak KKO Cilandak Timur, Pasar Minggu Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(65, 1000283341, 'RS UMUM ANDHIKA', 'Jl. Warung Sila No. 8, RT.06/RW.04, Gudang Baru Ciganjur, Jagakarsa Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(66, 1000265789, 'RS UMUM DAERAH JAGAKARSA', 'Jl. Moh. Kahfi  I No.27A, Kecamatan Jagakarsa Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(67, 1000265698, 'RS UMUM DAERAH JATI PADANG', 'Jl. Raya Ragunan No. 16 dan 17, Kelurahan Pasar Minggu, Kecamatan Pasar Minggu, Kota Administrasi Jakarta Selatan, Provinsi DKI Jakarta. Kode pos 12520', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(68, 1000266329, 'RS UMUM DAERAH KEBAYORAN BARU', 'Jl. Abdul Majid No 28, Kelurahan Cipete Utara, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta S', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(69, 1000265404, 'RS UMUM DAERAH PASAR MINGGU', 'JL. TB. SIMATUPANG NO. 1 KELURAHAN RAGUNAN, KECAMATAN PASAR MINGGU - JAKARTA SELATAN', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(70, 1000265600, 'RS UMUM DAERAH PESANGGRAHAN', 'Jalan Cenek I no. 1 Pesanggrahan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(71, 1000265351, 'RS UMUM DAERAH TEBET', 'Jl. Prof. Dr. Soepomo, SH. No. 54, Tebet, Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(72, 1000284395, 'RS UMUM JAKARTA', 'Jl. Garnisun No. 1, Jl. Jend. Sudirman', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(73, 1000278645, 'RS UMUM JAKARTA MEDICAL CENTER (JMC)', 'Jl. Buncit Raya No.15, Kalibata, Pancoran', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(74, 1000279417, 'RS UMUM KARTINI', 'Jl. Ciledug Raya No.94-96 Cipulir, Keabayoran Lama', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(75, 1000270241, 'RS UMUM MAYAPADA', 'Jalan Lebak Bulus I. Kav. 29', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(76, 1000275083, 'RS UMUM MEDISTRA', 'Jl. Jendral Gatot Subroto Kav  59Kelurahan  Kuningan Timur,  Kecamatan  SetiabudiJakarta SelatanDKI Jakarta', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(77, 1000279924, 'RS UMUM PONDOK INDAH', 'Jl. Metro Duta Kav. UE Pondok  Indah,Jaksel', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(78, 1000255083, 'RS UMUM PUSAT PERTAMINA', 'Jl. Kyai Maja No.43 Kebayoran Baru,Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(79, 1000267464, 'RS UMUM SILOAM MAMPANG', 'Jl. Mampang Prpt. Raya No.16, RW.5, Duren Tiga, Kec. Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12760', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(80, 1000271465, 'RS UMUM SILOAM TB SIMATUPANG', 'Jl. RA Kartini No. 8 Cilandak', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(81, 1000283133, 'RS UMUM TEBET', 'Jl. Letjen MT Haryono kav 13 Jakarta Selatan', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(82, 1000273827, 'RS UMUM ZAHIRAH', 'Jl. Sirsak No.21 RT/RW 009/001, Jagakarsa, Jakarta Selatan, DKI JAKARTA, 12620', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(83, 1000270772, 'RS YADIKA KEBAYORAN LAMA', 'Jl. Ciputat Raya No. 5', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(84, 1000255899, 'RSUP FATMAWATI', 'Jl. RS Fatmawati Cilandak,Jaksel', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'terkoneksi', NULL, NULL),
(85, 1000265014, 'RS ANGKATAN UDARA DR. ESNAWAN ANTARIKSA', 'Jl. Merpati No. 2 Halim Perdana Kusuma, Jakarta', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(86, 1000278475, 'RS EMC PULOMAS', 'Jl. Pulomas Barat VI No. 20.', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(87, 1000264931, 'RS GIGI DAN MULUT ANGKATAN UDARA', 'Jl.Puntodewo 1 Dirgantara 2, Halim Perdanakusuma', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(88, 1000271453, 'RS IBU DAN ANAK RESTI MULYA', 'Jl. Pahlawan Komarudin no. 05 penggilingan - Cakung', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(89, 1000270174, 'RS IBU DAN ANAK SAMMARIE BASRA', 'Jl. Basuki Rachmat No. 31 Pondok Bambu, Kota Administrasi Jakarta Timur, Provinsi DKI Jakarta', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(90, 1000279780, 'RS IBU DAN ANAK SAYYIDAH', 'Jl. Taman malaka Selatan No.6 Pondok Kelapa, Jaktim', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(91, 1000281018, 'RS ISLAM JAKARTA PONDOK KOPI', 'Jl. Raya Pondok Kopi Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(92, 1000269979, 'RS JANTUNG JAKARTA', 'Jl. Matraman Raya No. 23, RT 002 RW 001, Jakarta Timur, DKI Jakarta. 13140', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(93, 1000281630, 'RS JIWA ISLAM KLENDER', 'Jl. Bunga Rampai X, Perumnas Klender , Malaka Jaya Kecamatan Duren Sawit Kota Administrasi Jakarta Timur, Provinsi DKI Jakarta', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(94, 1000255851, 'RS KETERGANTUNGAN OBAT', 'Jl. Lapangan Tembak No 75 Kelurahan Cibubur Kecamatan  Ciracas Jakarta Timur 13720', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(95, 1000284137, 'RS KHUSUS BEDAH RAWAMANGUN', 'Jl. Balai Pustaka Raya No. 29 - 31, Rawamangun', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(96, 1000266408, 'RS KHUSUS DAERAH DUREN SAWIT', 'Jl. Duren Sawit Baru Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(97, 1000256166, 'RS PUSAT OTAK NASIONAL PROF DR. DR. MAHAR MARDJONO', 'Jl. MT Haryono Kav. 11 Kel. Cawang Kec. Kramat Jati', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(98, 1000264606, 'RS PUSDIKKES', 'Jl. Raya Bogor Km. 20, Kramat Jati, Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(99, 1000264266, 'RS TK. II M. RIDWAN MEURAKSA', 'Jl. Taman Mini I RT 004 / RW 02 Kel. Pinangranti Kec. Makasar', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(100, 1000264436, 'RS TK. IV CIJANTUNG', 'Jl. Mahoni No. 1 Cijantung II Rt 005/004  Pasar Rebo Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(101, 1000280648, 'RS UMUM ADHYAKSA', 'Jl. Raya Hankam No. 60 Ceger Cipayung', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(102, 1000269046, 'RS UMUM ALIA HOSPITAL', 'Jl. Pahlawan Revolusi No. 100 Pondok Bamabu', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(103, 1000275813, 'RS UMUM ANTAM MEDIKA', 'Jl. Pemuda Raya No. 1A, Kelurahan Jatinegara Kaum, Kecamatan Pulo Gadung, Kota Jakarta Timur, Provinsi DKI Jakarta', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(104, 1000255485, 'RS UMUM BHAYANGKARA TK. I R.SAID SUKANTO', 'Jl. Raya Bogor Kramat Jati,Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(105, 1000266501, 'RS UMUM DAERAH BUDHI ASIH', 'Jl. Dewi Sartika, Cawang III/ 200,Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(106, 1000266068, 'RS UMUM DAERAH CIPAYUNG', 'Jl. Mini III RT 004 RW 003 Kelurahan Bambu Apus, Kecamatan CipayungKota Jakarta TimurDKI Jakarta', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(107, 1000265791, 'RS UMUM DAERAH KRAMAT JATI', 'Jln. Raya Inpres No. 48', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(108, 1000265478, 'RS UMUM DAERAH MATRAMAN', 'Jl. Kebon kelapa raya no. 29 kel. Utan kayu selatan kec. Matraman', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(109, 1000265428, 'RS UMUM DAERAH PASAR REBO', 'Jl. TB Simatupang No.30', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(110, 1000270021, 'RS UMUM HAJI JAKARTA', 'Jl. Raya Pondok Gede', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(111, 1000278396, 'RS UMUM HARAPAN BUNDA', 'Jl. Raya Bogor Km.22 No.44 Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(112, 1000285090, 'RS UMUM HARUM', 'Jl. Tarum Barat, Kalimalang', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(113, 1000273877, 'RS UMUM HERMINA JATINEGARA', 'Jl. Jatinegara Barat 126, Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(114, 1000277287, 'RS UMUM MEDIROS', 'Jl. Perintis Kemerdekaan  Kav.149 Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(115, 1000280557, 'RS UMUM PENGAYOMAN CIPINANG', 'Jl. Raya Bekasi Timur 170 B, Jaktim', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(116, 1000277550, 'RS UMUM PREMIER JATINEGARA', 'Jl. Jatinegara Timur No.85-87,Jaktim', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(117, 1000279015, 'RS UMUM RESTU KASIH', 'Jl. Raya Bogor KM 19 No. 3A Kramat Jati', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(118, 1000285844, 'RS UMUM UNIVERSITAS KRISTEN INDONESIA', 'Jl. May.Jen Soetoyo No.2 Kel.Cawang,Kec. Kramat jati, Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(119, 1000284113, 'RS UMUM YADIKA', 'Jl. Pahlawan Revolusi No.47 Pondok Bambu Jaktim', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(120, 1000256130, 'RSUP PERSAHABATAN', 'Jl. Persahabatan Raya No. 1, Jakarta Timur', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'terkoneksi', NULL, NULL),
(121, 1000276764, 'RS IBU DAN ANAK FAMILY', 'Jl. Pluit Mas I Blok A No 2A - 5A Pejagalan Penjaringan Jakarta Utara', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(122, 1000271477, 'RS IBU DAN ANAK GRAND FAMILY', 'Jl. Pantai Indah Selatan I Komp. Elang Laut Boulevard Kav. I No. 1 Penjaringan Jakarta Utara', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(123, 1000285636, 'RS IBU DAN ANAK ST. YUSUF', 'Jl. Ganggeng Raya No. 9 Kel. Sungai Bambu Tanjung Priok', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(124, 1000283937, 'RS ISLAM JAKARTA SUKAPURA', 'Jl. Tipar Cakung No.5, Kelurahan Sukapura, Kecamatan Cilincing, Kota Jakarta Utara, Provinsi Daerah Khusus Ibukota Jakarta 14140', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(125, 1000255904, 'RS PENYAKIT INFEKSI PROF. DR. SULIANTI SAROSO', 'Jl. Sunter Permai Raya No. 2, Rt 02/Rw 12, Papanggo, Kec. Tanjung Priok, Jakarta Utara, DKI Jakarta', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(126, 1000255150, 'RS UMUM  PELABUHAN TANJUNG PRIOK', 'Jl. Kramat Jaya Tg Priok Jakut', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(127, 1000282622, 'RS UMUM  SATYA NEGARA', 'Jl. Agung Utara Raya No. 1 Jakut', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(128, 1000285569, 'RS UMUM AKADEMIK ATMA JAYA', 'Jl. Pluit Raya Jakarta Utara No. 02', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(129, 1000265985, 'RS UMUM DAERAH  PADEMANGAN', 'Jl. Budi Mulia Raya No.2 Pademangan Barat', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(130, 1000266484, 'RS UMUM DAERAH  TANJUNG PRIOK', 'Jl. Bugis No. 03 Kel. Kebon Bawang Kec. Tanjung Priok', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(131, 1000265662, 'RS UMUM DAERAH CILINCING', 'Jl. Madya Kebantenan Nomor 4, Semper Timur, Cilincing', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(132, 1000266197, 'RS UMUM DAERAH KOJA', 'Jl. Deli No.4 Tanjung Priok,Jakut', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(133, 1000265806, 'RS UMUM DAERAH TUGU KOJA', 'Jl. Walang Permai No 39, RT.008 RW.012, Kel. Tugu Utara, Kec. Koja, Kota Administrasi Jakarta Utara, DKI Jakarta', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(134, 1000277419, 'RS UMUM DUTA INDAH', 'Jl. Teluk Gong Raya No. 12 Kel. Pejagalan Kec. Penjaringan', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(135, 1000268690, 'RS UMUM FIRDAUS', 'Komp. Bea Cukai Jl. Siak J5/14', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(136, 1000278463, 'RS UMUM MITRA KELUARGA KELAPA GADING', 'Jl. Bukit Gading Raya Kav.2', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(137, 1000276099, 'RS UMUM PANTAI INDAH KAPUK', 'Jl. Pantai Indah Utara 3 Pantai Indah Kapuk, Kapuk Muara, Penjaringan', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(138, 1000276116, 'RS UMUM PEKERJA', 'Jl. Raya Cakung Cilincing RT 001 RW 002 Kel. Sukapura Kec. Cilincing Jakarta Utara', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(139, 1000273815, 'RS UMUM PORT MEDICAL CENTER', 'Jl. Enggano No. 10 Tanjung Priok, Jakarta Utara', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(140, 1000275461, 'RS UMUM PURI MEDIKA', 'Jl. Sungai Bambu 5A Tanjung Priok', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(141, 1000284096, 'RS UMUM ROYAL PROGRESS', 'Jl. Danau Sunter Utara, Sunter Paradise I', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL),
(142, 1000279431, 'RS UMUM SUKMUL', 'Jl. Tawes No.18-20 Tanjung Priuk  Jakarta Utara 14310', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'terkoneksi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint UNSIGNED NOT NULL,
  `organisasi_id` int NOT NULL,
  `kode_rs` int NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_rs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `organisasi_id`, `kode_rs`, `nama`, `email`, `kelas_rs`, `kota_kab`, `created_at`, `updated_at`) VALUES
(1, 1000266408, 3172746, 'RS Khusus Daerah Duren Sawit', 'rsjiwadurensawit.developer@dto.kemkes.go.id', 'A', 'Jakarta Timur', NULL, NULL),
(2, 1000266501, 3172024, 'RS Umum Daerah Budhi Asih', 'rsudbudhiasih.developer@dto.kemkes.go.id', 'B', 'Jakarta Timur', NULL, NULL),
(3, 1000266173, 3173700, 'RS Umum Daerah Cempaka Putih', 'rsudcempakaputih.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', NULL, NULL),
(4, 1000266422, 3174074, 'RS Umum Daerah Cengkareng', 'rsudcengkareng.developer@dto.kemkes.go.id', 'B', 'Jakarta Barat', NULL, NULL),
(5, 1000265662, 3175414, 'RS Umum Daerah Cilincing', 'rsudcilincing.developer@dto.kemkes.go.id', 'C', 'Jakarta Utara', NULL, NULL),
(6, 1000266068, 3172771, 'RS Umum Daerah Cipayung', 'rsudcipayung.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', NULL, NULL),
(7, 1000266056, 3172762, 'RS Umum Daerah Ciracas', 'rsudciracas.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', NULL, NULL),
(8, 1000265789, 3171792, 'RS Umum Daerah Jagakarsa', 'rsudjagakarsa.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', NULL, NULL),
(9, 1000265698, 3171800, 'RS Umum Daerah Jati Padang', 'rsudjatipadang.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', NULL, NULL),
(10, 1000266018, 3173701, 'RS Umum Daerah Johar Baru', 'rsudjoharbaru.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', NULL, NULL),
(11, 1000265777, 3174518, 'RS Umum Daerah Kalideres', 'rsudkecamatankalideres.developer@dto.kemkes.go.id', 'D', 'Jakarta Barat', NULL, NULL),
(12, 1000266329, 3171801, 'RS Umum Daerah Kebayoran Baru', 'rsudkebayoranbaru.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', NULL, NULL),
(13, 1000266070, 3171803, 'RS Umum Daerah Kebayoran Lama', 'rsudkebayoranlama.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', NULL, NULL),
(14, 1000265480, 3173699, 'RS Umum Daerah Kemayoran', 'rsudkemayoran.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', NULL, NULL),
(15, 1000265430, 3174517, 'RS Umum Daerah Kembangan', 'rsudkembangan.developer@dto.kemkes.go.id', 'D', 'Jakarta Barat', NULL, NULL),
(16, 1000265715, 3101002, 'RS Umum Daerah Kepulauan Seribu', 'rsudkepulauanseribu.developer@dto.kemkes.go.id', 'D', 'Kepulauan Seribu', NULL, NULL),
(17, 1000266197, 3175016, 'RS Umum Daerah Koja', 'rsudkoja.developer@dto.kemkes.go.id', 'B', 'Jakarta Utara', NULL, NULL),
(18, 1000265791, 3172761, 'RS Umum Daerah Kramat Jati', 'rsudkramatjati.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', NULL, NULL),
(19, 1000266020, 3171793, 'RS Umum Daerah Mampang Prapatan', 'rsudmampangprapatan.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', NULL, NULL),
(20, 1000265478, 3174523, 'RS Umum Daerah Matraman', 'rsudmatraman.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', NULL, NULL),
(21, 1000265985, 3175413, 'RS Umum Daerah Pademangan', 'rsudpademangan.developer@dto.kemkes.go.id', 'D', 'Jakarta Utara', NULL, NULL),
(22, 1000265404, 3171795, 'RS Umum Daerah Pasar Minggu', 'rsudpasarminggu.developer@dto.kemkes.go.id', 'B', 'Jakarta Selatan', NULL, NULL),
(23, 1000265428, 3172126, 'RS Umum Daerah Pasar Rebo', 'rsudpasarrebo.developer@dto.kemkes.go.id', 'B', 'Jakarta Timur', NULL, NULL),
(24, 1000265600, 3171791, 'RS Umum Daerah Pesanggrahan', 'rsudpesanggrahan.developer@dto.kemkes.go.id', 'C', 'Jakarta Selatan', NULL, NULL),
(25, 1000266159, 3173698, 'RS Umum Daerah Sawah Besar', 'rsudsawahbesar.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', NULL, NULL),
(26, 1000266317, 3174525, 'RS Umum Daerah Taman Sari', 'rsudtamansari.developer@dto.kemkes.go.id', 'D', 'Jakarta Barat', NULL, NULL),
(27, 1000266214, 3173705, 'RS Umum Daerah Tanah Abang', 'rsudtanahabang.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', NULL, NULL),
(28, 1000266484, 3175416, 'RS Umum Daerah Tanjung Priok', 'rsudtanjungpriok.developer@dto.kemkes.go.id', 'D', 'Jakarta Utara', NULL, NULL),
(29, 1000266525, 3173521, 'RS Umum Daerah Tarakan', 'rsudtarakanjakarta.developer@dto.kemkes.go.id', 'A', 'Jakarta Pusat', NULL, NULL),
(30, 1000265351, 3171790, 'RS Umum Daerah Tebet', 'rsudtebet.developer@dto.kemkes.go.id', 'C', 'Jakarta Selatan', NULL, NULL),
(31, 1000265806, 3175412, 'RS Umum Daerah Tugu Koja', 'rsudtugukoja.developer@dto.kemkes.go.id', 'C', 'Jakarta Utara', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_transactions`
--

CREATE TABLE `hospital_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `organisasi_id` int NOT NULL,
  `jumlah_pengiriman_data` int NOT NULL,
  `transaction_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_transactions`
--

INSERT INTO `hospital_transactions` (`id`, `organisasi_id`, `jumlah_pengiriman_data`, `transaction_date`, `created_at`, `updated_at`) VALUES
(1, 1000265715, 14, '2024-05-01', NULL, NULL),
(2, 1000255966, 34, '2024-04-12', NULL, NULL),
(3, 1000269503, 34, '2024-05-17', NULL, NULL),
(4, 1000276245, 27, '2024-04-22', NULL, NULL),
(5, 1000255954, 14, '2024-05-01', NULL, NULL),
(6, 1000256049, 33, '2024-04-23', NULL, NULL),
(7, 1000256099, 76, '2024-04-25', NULL, NULL),
(8, 1000269486, 32, '2024-04-30', NULL, NULL),
(9, 1000278310, 34, '2024-04-12', NULL, NULL),
(10, 1000267402, 34, '2024-05-17', NULL, NULL),
(11, 1000277342, 15, '2024-05-19', NULL, NULL),
(12, 1000277055, 33, '2024-04-22', NULL, NULL),
(13, 1000284228, 34, '2024-04-12', NULL, NULL),
(14, 1000265430, 34, '2024-05-17', NULL, NULL),
(15, 1000266422, 15, '2024-05-19', NULL, NULL),
(16, 1000265777, 33, '2024-04-22', NULL, NULL),
(17, 1000272512, 2, '2024-05-14', NULL, NULL),
(18, 1000269759, 24, '2024-04-19', NULL, NULL),
(19, 1000277902, 27, '2024-04-22', NULL, NULL),
(20, 1000269838, 14, '2024-05-01', NULL, NULL),
(21, 1000255136, 34, '2024-04-12', NULL, NULL),
(22, 1000279144, 33, '2024-04-24', NULL, NULL),
(23, 1000284670, 33, '2024-04-22', NULL, NULL),
(24, 1000280507, 34, '2024-04-12', NULL, NULL),
(25, 1000281628, 24, '2024-04-19', NULL, NULL),
(26, 1000269905, 27, '2024-04-22', NULL, NULL),
(27, 1000274560, 14, '2024-05-01', NULL, NULL),
(28, 1000273932, 33, '2024-04-23', NULL, NULL),
(29, 1000275693, 76, '2024-04-25', NULL, NULL),
(30, 1000277603, 27, '2024-04-22', NULL, NULL),
(31, 1000285882, 33, '2024-04-22', NULL, NULL),
(32, 1000272706, 34, '2024-04-12', NULL, NULL),
(33, 1000264723, 34, '2024-05-17', NULL, NULL),
(34, 1000283779, 15, '2024-05-19', NULL, NULL),
(35, 1000269137, 33, '2024-04-22', NULL, NULL),
(36, 1000266173, 34, '2024-04-12', NULL, NULL),
(37, 1000266214, 34, '2024-05-17', NULL, NULL),
(38, 1000266525, 52, '2024-04-19', NULL, NULL),
(39, 1000284084, 42, '2024-04-28', NULL, NULL),
(40, 1000283341, 34, '2024-04-12', NULL, NULL),
(41, 1000265789, 12, '2024-05-12', NULL, NULL),
(42, 1000265698, 33, '2024-04-24', NULL, NULL),
(43, 1000266329, 32, '2024-04-30', NULL, NULL),
(44, 1000265404, 14, '2024-05-01', NULL, NULL),
(45, 1000265600, 2, '2024-05-14', NULL, NULL),
(46, 1000265351, 75, '2024-05-10', NULL, NULL),
(47, 1000284395, 24, '2024-04-19', NULL, NULL),
(48, 1000278645, 52, '2024-04-19', NULL, NULL),
(49, 1000279417, 32, '2024-04-30', NULL, NULL),
(50, 1000275083, 34, '2024-04-21', NULL, NULL),
(51, 1000283133, 34, '2024-04-12', NULL, NULL),
(52, 1000273827, 12, '2024-05-12', NULL, NULL),
(53, 1000280648, 76, '2024-04-25', NULL, NULL),
(54, 1000266501, 15, '2024-05-19', NULL, NULL),
(55, 1000266068, 33, '2024-04-22', NULL, NULL),
(56, 1000265791, 2, '2024-05-14', NULL, NULL),
(57, 1000265478, 75, '2024-05-10', NULL, NULL),
(58, 1000265428, 24, '2024-04-19', NULL, NULL),
(59, 1000265985, 52, '2024-04-19', NULL, NULL),
(60, 1000266484, 42, '2024-04-28', NULL, NULL),
(61, 1000265662, 6, '2024-04-03', NULL, NULL),
(62, 1000266197, 33, '2024-04-23', NULL, NULL),
(63, 1000265806, 34, '2024-05-17', NULL, NULL),
(64, 1000277419, 52, '2024-04-19', NULL, NULL),
(65, 1000268690, 32, '2024-04-30', NULL, NULL),
(66, 1000278463, 14, '2024-05-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_05_20_105312_hospitals', 1),
(2, '2024_05_20_105819_connected_hospitals', 2),
(3, '2024_05_20_105834_hospital_transactions', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connected_hospitals`
--
ALTER TABLE `connected_hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_transactions`
--
ALTER TABLE `hospital_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connected_hospitals`
--
ALTER TABLE `connected_hospitals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hospital_transactions`
--
ALTER TABLE `hospital_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
