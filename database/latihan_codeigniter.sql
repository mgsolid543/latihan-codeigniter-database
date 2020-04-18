/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : latihan_codeigniter

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 18/04/2020 14:09:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dosen
-- ----------------------------
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen`  (
  `id_dosen` int(15) NOT NULL,
  `nidn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_dosen` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kelamin` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telp` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_dosen`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dosen
-- ----------------------------
INSERT INTO `dosen` VALUES (1, '0620066031', 'Badiyanto', 'Jl. Raya Janti No. 143 Karangjambe, Yogyakarta', 'laki-laki', 'badi@akakom.ac.id', '-', '0620066031.jpg');
INSERT INTO `dosen` VALUES (2, '0512038101', 'Yosef Murya', 'Gondangan RT.002 RW.044 Sardonoharjo Ngaglik Sleman Yogyakarta', 'laki-laki', 'yosefmurya@gmail.com', '08562555665', '0512038101.jpg');
INSERT INTO `dosen` VALUES (4, '0512345678', 'Daru Dita Wideatni', 'Gondangan No. 48 Sardonoharjo Ngaglik Sleman', 'perempuan', 'darudita@gmail.com', '08567891011', '0512345678.jpg');
INSERT INTO `dosen` VALUES (6, '0612345678', 'Arif Riyadi', 'Jl. Bantul no 13 Yogyakarta', 'laki-laki', 'arifriyadi@ugm.ac.id', '08123456789', '0612345678.jpg');

-- ----------------------------
-- Table structure for jurusan
-- ----------------------------
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan`  (
  `id_jurusan` int(10) NOT NULL AUTO_INCREMENT,
  `kode_jurusan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_jurusan` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_jurusan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurusan
-- ----------------------------
INSERT INTO `jurusan` VALUES (1, 'SI', 'Sistem Informasi');
INSERT INTO `jurusan` VALUES (2, 'IF', 'Teknik Informatika');
INSERT INTO `jurusan` VALUES (3, 'KA', 'Komputerisasi Akuntansi');

-- ----------------------------
-- Table structure for krs
-- ----------------------------
DROP TABLE IF EXISTS `krs`;
CREATE TABLE `krs`  (
  `id_krs` int(10) NOT NULL AUTO_INCREMENT,
  `id_thn_akad` int(10) NOT NULL,
  `nim` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_matakuliah` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilai` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_krs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of krs
-- ----------------------------
INSERT INTO `krs` VALUES (1, 14, '2017010012', 'UPK1002', 'A');
INSERT INTO `krs` VALUES (2, 14, '2017010012', 'FKB3003', 'B');
INSERT INTO `krs` VALUES (3, 14, '2017010012', 'FKB4012', 'B');
INSERT INTO `krs` VALUES (4, 14, '2017010012', 'UPK200X', 'B');
INSERT INTO `krs` VALUES (5, 14, '2017010003', 'FKB3001', 'A');
INSERT INTO `krs` VALUES (6, 14, '2017010003', 'FKB3003', 'A');
INSERT INTO `krs` VALUES (7, 14, '2017010003', 'FKB4004', '');
INSERT INTO `krs` VALUES (8, 14, '2017010003', 'FKB4012', 'B');
INSERT INTO `krs` VALUES (9, 14, '2017010003', 'PKK1003', '');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `nim` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_lengkap` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_panggilan` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `agama` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_prodi` int(10) NOT NULL,
  PRIMARY KEY (`nim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('2017010001', 'Daru Dita', 'Dita', 'Badran JT I/884 Yogyakarta', 'dita@gmail.com', '08562555665', 'Yogyakarta', '1982-09-18', 'P', 'Katholik', '20170100012.jpg', 2);
INSERT INTO `mahasiswa` VALUES ('2017010002', 'Yosef Murya Kusuma Ardhana', 'Yosef', 'Jl. Kaliurang KM 10 Yogyakarta', 'yosefmurya@gmail.com', '08562943232', 'Surabaya', '1981-03-12', 'L', 'Katholik', '', 1);
INSERT INTO `mahasiswa` VALUES ('2017010003', 'Badiyanto', 'Badi', 'Bantul', 'badi@akakom.ac.id', '081223232323', 'Pati', '1965-05-30', 'L', 'Islam', '', 2);
INSERT INTO `mahasiswa` VALUES ('2017010004', 'Eka Bayu Purnama', 'Eka', 'Semarang', 'eka@yahoo.com', '0816343434', 'Semarang', '1970-01-01', 'L', 'Protestan', '', 1);
INSERT INTO `mahasiswa` VALUES ('2017010005', 'Ida Bagus Perdana', 'Ida', 'Denpasar', 'idab@gmail.com', '081329443434', 'Denpasar', '1970-01-15', 'L', 'Hindu', '2017010005.jpg', 2);
INSERT INTO `mahasiswa` VALUES ('2017010012', 'Veronica Daru Dita Widieatni', 'Dita', 'Gondangan No. 48 Sardonoharjo Ngaglik Sleman', 'darudita@gmail.com', '08562943232', 'Yogyakarta', '1982-09-18', 'P', 'Katholik', '2017010012.jpeg', 1);

-- ----------------------------
-- Table structure for matakuliah
-- ----------------------------
DROP TABLE IF EXISTS `matakuliah`;
CREATE TABLE `matakuliah`  (
  `kode_matakuliah` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_matakuliah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sks` int(5) NOT NULL,
  `semester` int(10) NOT NULL,
  `jenis` enum('U','W','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_prodi` int(10) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of matakuliah
-- ----------------------------
INSERT INTO `matakuliah` VALUES ('FKB1001', 'SISTEM DIGITAL', 3, 1, 'W', 2);
INSERT INTO `matakuliah` VALUES ('FKB3001', 'PEMROGRAMAN WEB', 3, 3, 'U', 1);
INSERT INTO `matakuliah` VALUES ('FKB3002', 'PEMROGRAMAN JAVA DESKTOP', 3, 3, 'W', 2);
INSERT INTO `matakuliah` VALUES ('FKB3003', 'PEMROGRAMAN FRAMEWORK', 3, 3, 'W', 1);
INSERT INTO `matakuliah` VALUES ('FKB4004', 'JARINGAN KOMPUTER', 3, 3, 'W', 2);
INSERT INTO `matakuliah` VALUES ('FKB4012', 'PEMROGRAMAN WEB LANJUT', 3, 3, 'P', 2);
INSERT INTO `matakuliah` VALUES ('FKK1001', 'KALKULUS 1', 3, 1, 'W', 2);
INSERT INTO `matakuliah` VALUES ('FKK1002', 'ALGORITMA PEMROGRAMAN', 3, 1, 'W', 2);
INSERT INTO `matakuliah` VALUES ('FPB1001', 'PRAKTIKUM ALGORITMA PEMROGRAMAN', 1, 1, 'W', 2);
INSERT INTO `matakuliah` VALUES ('PKK1003', 'SISTEM BASIS DATA', 3, 3, 'W', 1);
INSERT INTO `matakuliah` VALUES ('UKK1004', 'PENGANTAR TEKNOLOGI INFORMASI', 2, 1, 'U', 8);
INSERT INTO `matakuliah` VALUES ('UPK1002', 'FISIKA DASAR', 3, 1, 'U', 1);
INSERT INTO `matakuliah` VALUES ('UPK1006', 'PANCASILA', 2, 1, 'U', 2);
INSERT INTO `matakuliah` VALUES ('UPK1010', 'BAHASA INGGRIS 1', 2, 1, 'U', 2);
INSERT INTO `matakuliah` VALUES ('UPK200X', 'PENDIDIKAN AGAMA 1', 2, 3, 'U', 1);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `main_menu` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` enum('admin','user') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'admin',
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Menu Utama', '#', '', '0', 'admin');
INSERT INTO `menu` VALUES (4, 'Mahasiswa', 'mahasiswa', 'fa fa-users', '12', 'user');
INSERT INTO `menu` VALUES (10, 'User', 'users', 'fa fa-user', '13', 'user');
INSERT INTO `menu` VALUES (11, 'Menu', 'menu', 'fa fa-eye', '13', 'admin');
INSERT INTO `menu` VALUES (12, 'SIS-AKADEMIK', '#', 'fa fa-graduation-cap', '0', 'admin');
INSERT INTO `menu` VALUES (13, 'SETING', '#', 'fa fa-gear', '0', 'admin');
INSERT INTO `menu` VALUES (18, 'Dosen', 'dosen', 'fa fa-group', '12', 'admin');
INSERT INTO `menu` VALUES (20, 'Jurusan', 'jurusan', 'fa fa-university', '12', 'admin');
INSERT INTO `menu` VALUES (21, 'Program Studi', 'prodi', 'fa fa-graduation-cap', '12', 'admin');
INSERT INTO `menu` VALUES (22, 'Mata Kuliah', 'matakuliah', 'fa fa-bookmark-o', '12', 'admin');
INSERT INTO `menu` VALUES (23, 'Tahun Akademik', 'thnakad', 'fa fa-ellipsis-v', '12', 'admin');
INSERT INTO `menu` VALUES (24, 'KRS', 'krs', 'fa fa-edit', '12', 'admin');
INSERT INTO `menu` VALUES (25, 'Input Nilai', 'nilai/inputNilai', 'fa fa-sort-numeric-asc', '12', 'admin');
INSERT INTO `menu` VALUES (26, 'KHS', 'nilai', 'fa fa-file-text-o', '12', 'admin');
INSERT INTO `menu` VALUES (27, 'Cetak Transkrip', 'nilai/buatTranskrip', 'fa fa-pencil-square-o', '12', 'admin');

-- ----------------------------
-- Table structure for prodi
-- ----------------------------
DROP TABLE IF EXISTS `prodi`;
CREATE TABLE `prodi`  (
  `id_prodi` int(10) NOT NULL AUTO_INCREMENT,
  `kode_prodi` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_prodi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_jurusan` int(10) NOT NULL,
  PRIMARY KEY (`id_prodi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prodi
-- ----------------------------
INSERT INTO `prodi` VALUES (1, 'SI', 'Sistem Informasi', 1);
INSERT INTO `prodi` VALUES (2, 'TI', 'Teknologi Informasi', 1);
INSERT INTO `prodi` VALUES (6, 'IK', 'Ilmu Komunikasi', 3);
INSERT INTO `prodi` VALUES (7, 'TKJ', 'Teknik Komputer Jaringan', 1);
INSERT INTO `prodi` VALUES (8, 'KA', 'Kompeterisasi Akuntasi', 1);

-- ----------------------------
-- Table structure for thnakad
-- ----------------------------
DROP TABLE IF EXISTS `thnakad`;
CREATE TABLE `thnakad`  (
  `id_thn_akad` int(10) NOT NULL AUTO_INCREMENT,
  `thn_akad` varchar(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `semester` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_thn_akad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thnakad
-- ----------------------------
INSERT INTO `thnakad` VALUES (1, '2014/2015', '1', 'N');
INSERT INTO `thnakad` VALUES (2, '2014/2015', '2', 'N');
INSERT INTO `thnakad` VALUES (3, '2015/2016', '1', 'N');
INSERT INTO `thnakad` VALUES (4, '2015/2016', '2', 'N');
INSERT INTO `thnakad` VALUES (5, '2016/2017', '1', 'N');
INSERT INTO `thnakad` VALUES (7, '2016/2017', '2', 'N');
INSERT INTO `thnakad` VALUES (8, '2018/2019', '1', 'N');
INSERT INTO `thnakad` VALUES (9, '2018/2019', '2', 'N');
INSERT INTO `thnakad` VALUES (13, '2019/2020', '1', 'N');
INSERT INTO `thnakad` VALUES (14, '2019/2020', '2', 'Y');

-- ----------------------------
-- Table structure for transkrip
-- ----------------------------
DROP TABLE IF EXISTS `transkrip`;
CREATE TABLE `transkrip`  (
  `id_transkrip` int(10) NOT NULL AUTO_INCREMENT,
  `nim` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_matakuliah` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilai` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_transkrip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transkrip
-- ----------------------------
INSERT INTO `transkrip` VALUES (1, '2017010012', 'FKB3001', 'A');
INSERT INTO `transkrip` VALUES (2, '2017010012', 'FKB3003', 'B');
INSERT INTO `transkrip` VALUES (3, '2017010012', 'FKB4012', 'B');
INSERT INTO `transkrip` VALUES (4, '2017010012', 'UPK200X', 'B');
INSERT INTO `transkrip` VALUES (5, '2017010003', 'FKB3001', 'B');
INSERT INTO `transkrip` VALUES (6, '2017010003', 'FKB3003', 'A');
INSERT INTO `transkrip` VALUES (7, '2017010003', 'FKB4004', '');
INSERT INTO `transkrip` VALUES (8, '2017010003', 'FKB4012', 'B');
INSERT INTO `transkrip` VALUES (9, '2017010003', 'PKK1003', '');
INSERT INTO `transkrip` VALUES (10, '2017010012', 'UPK1002', 'A');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` enum('admin','user') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'user',
  `blokir` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `id_sessions` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'irpan.budiana@gmail.com', 'admin', 'N', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `users` VALUES ('user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user1@gmail.com', '', 'N', '24c9e15e52afc47c225b757e7bee1f9d');

SET FOREIGN_KEY_CHECKS = 1;
