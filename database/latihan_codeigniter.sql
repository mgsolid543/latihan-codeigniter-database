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

 Date: 12/04/2020 13:15:17
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
INSERT INTO `mahasiswa` VALUES ('2017010012', 'Veronica Daru Dita Widieatni', 'Dita', 'Gondangan No. 48 Sardonoharjo Ngaglik Sleman', 'darudita@gmail.com', '08562943232', 'Yogyakarta', '1982-09-18', 'P', 'Katholik', '2017010012.jpg', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Menu Utama', '#', '', '0', 'admin');
INSERT INTO `menu` VALUES (4, 'Mahasiswa', 'mahasiswa', 'fa fa-users', '12', 'user');
INSERT INTO `menu` VALUES (10, 'User', 'users', 'fa fa-user', '13', 'user');
INSERT INTO `menu` VALUES (11, 'Menu', 'menu', 'fa fa-eye', '13', 'admin');
INSERT INTO `menu` VALUES (12, 'SIS-AKADEMIK', '#', 'fa fa-graduation-cap', '0', 'admin');
INSERT INTO `menu` VALUES (13, 'SETING', '#', 'fa fa-gear', '0', 'admin');
INSERT INTO `menu` VALUES (14, 'INFO KAMPUS', '#', 'fa fa-globe', '0', 'admin');
INSERT INTO `menu` VALUES (18, 'Dosen', 'dosen', 'fa fa-group', '12', 'admin');
INSERT INTO `menu` VALUES (20, 'Jurusan', 'jurusan', 'fa fa-university', '12', 'admin');
INSERT INTO `menu` VALUES (21, 'Program Studi', 'prodi', 'fa fa-camera-retro', '12', 'admin');

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
INSERT INTO `users` VALUES ('admin', '827ccb0eea8a706c4c34a16891f84e7b', 'irpan.budiana@gmail.com', 'admin', 'N', '827ccb0eea8a706c4c34a16891f84e7b');
INSERT INTO `users` VALUES ('user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user1@gmail.com', '', 'N', '24c9e15e52afc47c225b757e7bee1f9d');

SET FOREIGN_KEY_CHECKS = 1;
