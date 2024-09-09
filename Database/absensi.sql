/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100422 (10.4.22-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : absensi

 Target Server Type    : MySQL
 Target Server Version : 100422 (10.4.22-MariaDB)
 File Encoding         : 65001

 Date: 09/09/2024 20:35:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_absensi
-- ----------------------------
DROP TABLE IF EXISTS `tb_absensi`;
CREATE TABLE `tb_absensi`  (
  `id_absensi` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `tanggal` datetime NULL DEFAULT NULL,
  `id_mapel` int NULL DEFAULT NULL,
  `kehadiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pokok_bahasan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `id_blok` int NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `id_sesi` int NULL DEFAULT NULL,
  `id_siswa` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_absensi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_absensi
-- ----------------------------
INSERT INTO `tb_absensi` VALUES (1, 7, '2024-09-02 00:00:00', 1, 'Sakit', 'demam', 'buat database', 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (2, 7, '2024-09-07 00:00:00', 1, 'Hadir', '', 'Buat DB', 1, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (3, 7, '2024-09-07 00:00:00', 4, 'Hadir', '', 'Buat DB', 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (4, 7, '2024-09-07 00:00:00', 5, 'Hadir', '', 'Buat KPK', 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (5, 7, '2024-09-07 00:00:00', 4, 'Hadir', '', 'Buat KPK', 1, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (6, 7, '2024-09-07 00:00:00', 3, 'Hadir', '', 'Buat Join', 1, 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (7, 7, '2024-09-07 00:00:00', 3, 'Hadir', '', 'Buat Left Join', 1, 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (8, 7, '2024-09-07 00:00:00', 3, 'Hadir', '', 'Buat Right Join', 1, 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (9, 7, '2024-09-07 00:00:00', 3, 'Hadir', '', 'Buat Right Join', 1, 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (10, 7, '2024-09-07 11:06:52', 3, 'Hadir', '', 'Buat Button', 1, 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (11, 1, '2024-09-07 11:14:34', 3, 'Hadir', '', 'Buat But', 1, 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (12, 1, '2024-09-07 11:16:05', 3, 'Hadir', '', 'Buat beda', 1, 4, 1, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (13, 1, '2024-09-07 11:16:06', 3, 'Hadir', '', 'Buat beda', 1, 4, 1, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (14, 1, '2024-09-07 11:16:06', 3, 'Hadir', '', 'Buat beda', 1, 4, 1, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (15, 1, '2024-09-07 11:16:07', 3, 'Hadir', '', 'Buat beda', 1, 4, 1, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (16, 1, '2024-09-07 11:16:08', 3, 'Hadir', '', 'Buat beda', 1, 4, 1, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (17, 1, '2024-09-07 11:16:08', 3, 'Hadir', '', 'Buat beda', 1, 4, 1, 12, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (18, 1, '2024-09-07 11:18:27', 1, 'Sakit', 'kurang tahu', 'pokok', 1, 1, 2, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (19, 1, '2024-09-07 11:21:22', 1, 'Sakit', 'iya cuy', 'mungkin', 1, 1, 2, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (20, 1, '2024-09-07 11:24:45', 1, 'Sakit', 'iya', 'masukkan pokok', 1, 1, 2, 12, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (21, 1, '2024-09-07 11:24:45', 1, 'Sakit', 'iya', 'masukkan pokok', 1, 1, 2, 12, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (22, 1, '2024-09-07 11:24:46', 1, 'Sakit', 'iya', 'masukkan pokok', 1, 1, 2, 12, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (23, 1, '2024-09-09 00:07:04', 1, 'Hadir', '', 'Buat Database', 1, 1, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (24, 1, '2024-09-09 00:08:14', 1, 'Hadir', '', 'Buat Web', 1, 1, 2, 18, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (25, 1, '2024-09-09 01:34:38', 1, 'Hadir', '', 'Buat Web', 1, 1, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (26, 4, '2024-09-09 05:20:11', 4, 'Hadir', '', 'Buat Past Tense', 1, 1, 1, 5, NULL, NULL, NULL, NULL);
INSERT INTO `tb_absensi` VALUES (27, 4, '2024-09-09 05:20:12', 4, 'Hadir', '', 'Buat Past Tense', 1, 1, 1, 5, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `id_activity` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` datetime NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1083 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (1, 1, 'User membuka Log Activity', '2024-09-06 10:34:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (2, 1, 'User Membuka Dashboard', '2024-09-06 10:41:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (3, 1, 'User Membuka Dashboard', '2024-09-06 10:42:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (4, 1, 'User Melakukan Log Out', '2024-09-06 10:42:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (5, 1, 'User ke Halaman Login', '2024-09-06 10:42:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (6, 1, 'User melakukan Login', '2024-09-06 11:11:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (7, 1, 'User Membuka Dashboard', '2024-09-06 11:11:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (8, 1, 'User ke Halaman Login', '2024-09-07 02:06:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (9, 1, 'User melakukan Login', '2024-09-07 02:06:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (10, 1, 'User Membuka Dashboard', '2024-09-07 02:06:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (11, 1, 'User Memilih Kelas', '2024-09-07 02:16:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (12, 1, 'User ke Halaman Login', '2024-09-07 02:22:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (13, 1, 'User melakukan Login', '2024-09-07 02:26:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (14, 1, 'User Membuka Dashboard', '2024-09-07 02:26:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (15, 1, 'User Memilih Kelas', '2024-09-07 02:26:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (16, 1, 'User Memilih Kelas', '2024-09-07 02:27:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (17, 1, 'User ke Halaman Login', '2024-09-07 02:34:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (18, 1, 'User melakukan Login', '2024-09-07 02:34:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (19, 1, 'User Membuka Dashboard', '2024-09-07 02:34:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (20, 1, 'User Memilih Kelas', '2024-09-07 02:34:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (21, 1, 'User ke Halaman Login', '2024-09-07 02:43:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (22, 1, 'User melakukan Login', '2024-09-07 02:43:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (23, 1, 'User melakukan Login', '2024-09-07 02:43:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (24, 1, 'User melakukan Login', '2024-09-07 02:43:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (25, 1, 'User Membuka Dashboard', '2024-09-07 02:43:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (26, 1, 'User Ingin Melakukan Absensi', '2024-09-07 02:45:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (27, 1, 'User Ingin Melakukan Absensi', '2024-09-07 02:46:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (28, 1, 'User Memilih Kelas', '2024-09-07 02:46:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (29, 1, 'User Ingin Melakukan Absensi', '2024-09-07 02:49:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (30, 1, 'User Memilih Kelas', '2024-09-07 02:50:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (31, 1, 'User Ingin Melakukan Absensi', '2024-09-07 02:50:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (32, 1, 'User Membuka Dashboard', '2024-09-07 02:51:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (33, 1, 'User Memilih Kelas', '2024-09-07 02:51:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (34, 1, 'User ke Halaman Login', '2024-09-07 02:58:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (35, 1, 'User ke Halaman Login', '2024-09-07 03:05:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (36, 1, 'User melakukan Login', '2024-09-07 03:07:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (37, 1, 'User Membuka Dashboard', '2024-09-07 03:07:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (38, 1, 'User Memilih Kelas', '2024-09-07 03:08:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (39, 1, 'User melakukan Login', '2024-09-07 03:08:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (40, 1, 'User Membuka Dashboard', '2024-09-07 03:08:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (41, 1, 'User Ingin Melakukan Absensi', '2024-09-07 03:08:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (42, 1, 'User Ingin Melakukan Absensi', '2024-09-07 03:09:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (43, 1, 'User Membuka Menu Jadwal', '2024-09-07 03:12:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (44, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 03:12:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (45, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 03:17:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (46, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 03:18:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (47, 1, 'User Membuka Menu Jadwal', '2024-09-07 03:18:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (48, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 03:19:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (49, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 03:20:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (50, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 03:20:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (51, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 03:20:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (52, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 03:20:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (53, 1, 'User Membuka Menu Jadwal', '2024-09-07 03:21:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (54, 1, 'User Membuka Menu Jadwal', '2024-09-07 03:24:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (55, 1, 'User ke Halaman Login', '2024-09-07 03:34:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (56, 1, 'User melakukan Login', '2024-09-07 03:34:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (57, 1, 'User Membuka Dashboard', '2024-09-07 03:34:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (58, 1, 'User Membuka Menu Jadwal', '2024-09-07 03:34:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (59, 1, 'User Membuka Menu Jadwal', '2024-09-07 03:36:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (60, 1, 'User Membuka Menu Jadwal', '2024-09-07 03:37:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (61, 1, 'User ke Halaman Login', '2024-09-07 03:38:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (62, 1, 'User ke Halaman Login', '2024-09-07 04:02:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (63, 1, 'User melakukan Login', '2024-09-07 04:02:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (64, 1, 'User Membuka Dashboard', '2024-09-07 04:02:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (65, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:02:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (66, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:03:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (67, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:07:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (68, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:12:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (69, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:13:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (70, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:13:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (71, 1, 'User ke Halaman Login', '2024-09-07 04:18:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (72, 1, 'User melakukan Login', '2024-09-07 04:23:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (73, 1, 'User Membuka Dashboard', '2024-09-07 04:23:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (74, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:23:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (75, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:23:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (76, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:25:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (77, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:25:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (78, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:26:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (79, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:26:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (80, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:26:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (81, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:27:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (82, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:27:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (83, 1, 'User ke Halaman Login', '2024-09-07 04:32:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (84, 1, 'User melakukan Login', '2024-09-07 04:34:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (85, 1, 'User Membuka Dashboard', '2024-09-07 04:34:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (86, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:34:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (87, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:35:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (88, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:35:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (89, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:35:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (90, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:37:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (91, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:37:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (92, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:37:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (93, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:37:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (94, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:37:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (95, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:38:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (96, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:38:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (97, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:43:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (98, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:43:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (99, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:43:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (100, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:43:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (101, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:44:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (102, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:45:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (103, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:45:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (104, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:45:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (105, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:45:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (106, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:49:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (107, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:49:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (108, 1, 'User Menghapus Jadwal', '2024-09-07 04:50:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (109, 1, 'User Menghapus Jadwal', '2024-09-07 04:50:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (110, 1, 'User Menghapus Jadwal', '2024-09-07 04:50:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (111, 1, 'User Menghapus Jadwal', '2024-09-07 04:51:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (112, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:51:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (113, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:51:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (114, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:51:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (115, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:52:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (116, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:52:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (117, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:52:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (118, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:52:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (119, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:53:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (120, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:53:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (121, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 04:54:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (122, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 04:54:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (123, 1, 'User Membuka Menu Mapel', '2024-09-07 04:54:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (124, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:54:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (125, 1, 'User Memilih Kelas', '2024-09-07 04:54:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (126, 1, 'User Membuka Menu Jadwal', '2024-09-07 04:59:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (127, 1, 'User Memilih Kelas', '2024-09-07 05:00:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (128, 1, 'User ke Halaman Login', '2024-09-07 05:28:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (129, 1, 'User ke Halaman Login', '2024-09-07 05:30:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (130, 1, 'User melakukan Login', '2024-09-07 05:30:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (131, 1, 'User Membuka Dashboard', '2024-09-07 05:30:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (132, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:32:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (133, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:32:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (134, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:34:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (135, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:34:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (136, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:34:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (137, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:34:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (138, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:35:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (139, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:35:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (140, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:37:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (141, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:38:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (142, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:38:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (143, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:43:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (144, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:45:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (145, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:45:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (146, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:46:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (147, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:46:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (148, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:46:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (149, 1, 'User Membuka Dashboard', '2024-09-07 05:53:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (150, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:53:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (151, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:53:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (152, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:54:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (153, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 05:54:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (154, 1, 'User Ingin Melakukan Absensi', '2024-09-07 05:54:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (155, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:05:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (156, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:05:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (157, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:06:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (158, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:06:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (159, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:07:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (160, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:08:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (161, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:09:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (162, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:10:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (163, 1, 'User Membuka Form Tambah User', '2024-09-07 06:10:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (164, 1, 'User Melakukan Tambah User', '2024-09-07 06:11:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (165, 1, 'User Membuka Menu User', '2024-09-07 06:11:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (166, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:11:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (167, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:11:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (168, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:11:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (169, 1, 'User Membuka Menu User', '2024-09-07 06:12:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (170, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:13:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (171, 1, 'User Membuka Menu Jadwal', '2024-09-07 06:13:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (172, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 06:13:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (173, 1, 'User Melakukan Tambah Jadwal', '2024-09-07 06:14:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (174, 1, 'User Membuka Form Tambah Jadwal', '2024-09-07 06:14:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (175, 1, 'User Membuka Menu Jadwal', '2024-09-07 06:14:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (176, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:14:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (177, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:14:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (178, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:15:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (179, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:17:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (180, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:21:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (181, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:24:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (182, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:24:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (183, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:24:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (184, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:24:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (185, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:28:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (186, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:28:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (187, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:39:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (188, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:39:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (189, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:39:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (190, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:39:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (191, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:42:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (192, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:42:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (193, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:44:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (194, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:45:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (195, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:46:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (196, 1, 'User Membuka Menu Jadwal', '2024-09-07 06:53:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (197, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:53:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (198, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:54:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (199, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:55:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (200, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:55:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (201, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 06:55:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (202, 1, 'User Ingin Melakukan Absensi', '2024-09-07 06:55:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (203, 1, 'User ke Halaman Login', '2024-09-07 07:00:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (204, 1, 'User melakukan Login', '2024-09-07 07:05:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (205, 1, 'User Membuka Dashboard', '2024-09-07 07:05:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (206, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:05:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (207, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:07:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (208, 1, 'User ke Halaman Login', '2024-09-07 07:07:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (209, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:08:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (210, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:09:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (211, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:09:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (212, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:10:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (213, 1, 'User ke Halaman Login', '2024-09-07 07:15:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (214, 1, 'User melakukan Login', '2024-09-07 07:19:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (215, 1, 'User Membuka Dashboard', '2024-09-07 07:19:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (216, 1, 'User Membuka Dashboard', '2024-09-07 07:41:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (217, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:41:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (218, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:41:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (219, 1, 'User ke Halaman Login', '2024-09-07 07:42:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (220, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:42:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (221, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:45:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (222, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:45:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (223, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:45:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (224, 1, 'User ke Halaman Login', '2024-09-07 07:51:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (225, 1, 'User melakukan Login', '2024-09-07 07:51:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (226, 1, 'User Membuka Dashboard', '2024-09-07 07:51:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (227, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:51:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (228, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:56:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (229, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:56:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (230, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:57:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (231, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:57:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (232, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 07:58:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (233, 1, 'User Ingin Melakukan Absensi', '2024-09-07 07:58:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (234, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:00:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (235, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:01:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (236, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:02:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (237, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:02:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (238, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:02:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (239, 1, 'User Membuka Menu Jadwal', '2024-09-07 08:02:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (240, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:03:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (241, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:03:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (242, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:06:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (243, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:06:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (244, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:07:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (245, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:12:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (246, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:12:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (247, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:12:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (248, 1, 'User Membuka Menu Jadwal', '2024-09-07 08:12:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (249, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:13:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (250, 1, 'User Membuka Menu Jadwal', '2024-09-07 08:28:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (251, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:28:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (252, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:28:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (253, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:29:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (254, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:29:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (255, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:31:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (256, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:31:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (257, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:43:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (258, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:43:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (259, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:43:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (260, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:43:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (261, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:44:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (262, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:45:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (263, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:47:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (264, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:51:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (265, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:51:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (266, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:51:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (267, 1, 'User Membuka Menu Jadwal', '2024-09-07 08:51:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (268, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:52:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (269, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:52:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (270, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:53:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (271, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:53:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (272, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:53:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (273, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:53:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (274, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:53:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (275, 1, 'User Membuka Menu Jadwal', '2024-09-07 08:54:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (276, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 08:54:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (277, 1, 'User Ingin Melakukan Absensi', '2024-09-07 08:54:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (278, 1, 'User ke Halaman Login', '2024-09-07 08:59:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (279, 1, 'User melakukan Login', '2024-09-07 09:06:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (280, 1, 'User Membuka Dashboard', '2024-09-07 09:06:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (281, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:06:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (282, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:06:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (283, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:07:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (284, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:07:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (285, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:09:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (286, 1, 'User ke Halaman Login', '2024-09-07 09:14:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (287, 1, 'User melakukan Login', '2024-09-07 09:16:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (288, 1, 'User Membuka Dashboard', '2024-09-07 09:16:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (289, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:17:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (290, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:18:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (291, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:27:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (292, 1, 'User Membuka Dashboard', '2024-09-07 09:27:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (293, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:28:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (294, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:29:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (295, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:42:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (296, 1, 'User Membuka Menu Jadwal', '2024-09-07 09:42:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (297, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:44:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (298, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:48:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (299, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:48:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (300, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:48:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (301, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:51:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (302, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:51:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (303, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:52:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (304, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:53:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (305, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:54:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (306, 1, 'User Melakukan Absensi Siswa', '2024-09-07 09:54:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (307, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:54:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (308, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 09:55:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (309, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:55:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (310, 1, 'User Melakukan Absensi Siswa', '2024-09-07 09:57:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (311, 1, 'User Ingin Melakukan Absensi', '2024-09-07 09:57:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (312, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:03:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (313, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:03:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (314, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:05:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (315, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:06:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (316, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:06:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (317, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:06:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (318, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:06:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (319, 1, 'User Melakukan Absensi Siswa', '2024-09-07 10:07:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (320, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:07:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (321, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:10:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (322, 1, 'User Membuka Menu Jadwal', '2024-09-07 10:10:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (323, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:10:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (324, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:11:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (325, 1, 'User Melakukan Absensi Siswa', '2024-09-07 10:11:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (326, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:11:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (327, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:12:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (328, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:12:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (329, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:12:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (330, 1, 'User Melakukan Absensi Siswa', '2024-09-07 10:13:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (331, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:13:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (332, 1, 'User ke Halaman Login', '2024-09-07 10:18:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (333, 1, 'User melakukan Login', '2024-09-07 10:20:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (334, 1, 'User Membuka Dashboard', '2024-09-07 10:20:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (335, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:20:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (336, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:21:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (337, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:21:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (338, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:21:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (339, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:21:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (340, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:22:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (341, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:22:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (342, 1, 'User Melakukan Absensi Siswa', '2024-09-07 10:23:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (343, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:23:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (344, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:23:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (345, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 10:23:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (346, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:24:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (347, 1, 'User Melakukan Absensi Siswa', '2024-09-07 10:24:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (348, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:24:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (349, 1, 'User Melakukan Absensi Siswa', '2024-09-07 10:25:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (350, 1, 'User Ingin Melakukan Absensi', '2024-09-07 10:25:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (351, 1, 'User Membuka Dashboard', '2024-09-07 10:27:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (352, 1, 'User Membuka Dashboard', '2024-09-07 10:37:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (353, 1, 'User Membuka Dashboard', '2024-09-07 10:40:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (354, 1, 'User Membuka Dashboard', '2024-09-07 10:42:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (355, 1, 'User Membuka Dashboard', '2024-09-07 10:50:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (356, 1, 'User Melakukan Log Out', '2024-09-07 10:50:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (357, NULL, 'User ke Halaman Login', '2024-09-07 10:50:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (358, NULL, 'User melakukan Login', '2024-09-07 10:50:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (359, 7, 'User Membuka Dashboard', '2024-09-07 10:50:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (360, 7, 'User Melakukan Log Out', '2024-09-07 10:51:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (361, NULL, 'User ke Halaman Login', '2024-09-07 10:51:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (362, NULL, 'User melakukan Login', '2024-09-07 10:51:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (363, 5, 'User Membuka Dashboard', '2024-09-07 10:51:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (364, 5, 'User Melakukan Log Out', '2024-09-07 10:51:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (365, NULL, 'User ke Halaman Login', '2024-09-07 10:51:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (366, NULL, 'User melakukan Login', '2024-09-07 10:52:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (367, NULL, 'User ke Halaman Login', '2024-09-07 10:52:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (368, NULL, 'User melakukan Login', '2024-09-07 10:53:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (369, 11, 'User Membuka Dashboard', '2024-09-07 10:53:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (370, 11, 'User Melakukan Log Out', '2024-09-07 10:53:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (371, NULL, 'User ke Halaman Login', '2024-09-07 10:53:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (372, NULL, 'User melakukan Login', '2024-09-07 10:54:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (373, 7, 'User Membuka Dashboard', '2024-09-07 10:55:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (374, 7, 'User Membuka Dashboard', '2024-09-07 10:57:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (375, 7, 'User Membuka Dashboard', '2024-09-07 10:58:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (376, 7, 'User Membuka Dashboard', '2024-09-07 10:59:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (377, 7, 'User Membuka Dashboard', '2024-09-07 10:59:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (378, 7, 'User Membuka Dashboard', '2024-09-07 11:00:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (379, 7, 'User Membuka Dashboard', '2024-09-07 11:01:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (380, 7, 'User Membuka Dashboard', '2024-09-07 11:02:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (381, 7, 'User Membuka Dashboard', '2024-09-07 11:03:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (382, 7, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 11:05:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (383, 7, 'User Ingin Melakukan Absensi', '2024-09-07 11:05:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (384, 7, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 11:06:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (385, 7, 'User Ingin Melakukan Absensi', '2024-09-07 11:06:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (386, 7, 'User Melakukan Absensi Siswa', '2024-09-07 11:06:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (387, 7, 'User Ingin Melakukan Absensi', '2024-09-07 11:06:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (388, 7, 'User ke Halaman Login', '2024-09-07 11:11:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (389, 7, 'User ke Halaman Login', '2024-09-07 11:13:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (390, 7, 'User melakukan Login', '2024-09-07 11:13:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (391, 7, 'User melakukan Login', '2024-09-07 11:13:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (392, 7, 'User Membuka Dashboard', '2024-09-07 11:13:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (393, 7, 'User Melakukan Log Out', '2024-09-07 11:13:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (394, NULL, 'User ke Halaman Login', '2024-09-07 11:13:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (395, NULL, 'User melakukan Login', '2024-09-07 11:14:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (396, 1, 'User Membuka Dashboard', '2024-09-07 11:14:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (397, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 11:14:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (398, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:14:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (399, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:14:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (400, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:14:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (401, 1, 'User ke Halaman Login', '2024-09-07 11:15:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (402, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:15:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (403, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:16:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (404, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:16:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (405, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:16:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (406, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:16:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (407, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:16:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (408, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:16:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (409, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:16:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (410, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:16:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (411, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:16:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (412, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:16:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (413, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:16:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (414, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:16:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (415, 1, 'User Membuka Dashboard', '2024-09-07 11:17:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (416, 1, 'User Melakukan Log Out', '2024-09-07 11:17:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (417, NULL, 'User ke Halaman Login', '2024-09-07 11:17:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (418, NULL, 'User melakukan Login', '2024-09-07 11:17:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (419, 1, 'User Membuka Dashboard', '2024-09-07 11:17:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (420, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-07 11:18:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (421, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:18:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (422, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:18:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (423, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:18:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (424, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:21:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (425, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:21:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (426, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:21:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (427, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:21:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (428, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:22:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (429, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:22:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (430, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:24:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (431, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:24:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (432, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:24:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (433, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:24:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (434, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:24:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (435, 1, 'User Melakukan Absensi Siswa', '2024-09-07 11:24:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (436, 1, 'User Ingin Melakukan Absensi', '2024-09-07 11:24:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (437, 1, 'User Melakukan Log Out', '2024-09-07 11:25:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (438, NULL, 'User ke Halaman Login', '2024-09-07 11:25:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (439, NULL, 'User melakukan Login', '2024-09-07 11:25:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (440, 12, 'User Membuka Dashboard', '2024-09-07 11:25:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (441, 12, 'User Membuka Dashboard', '2024-09-07 11:26:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (442, 12, 'User Membuka Dashboard', '2024-09-07 11:27:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (443, 12, 'User Membuka Dashboard', '2024-09-07 11:30:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (444, 12, 'User Membuka Dashboard', '2024-09-07 11:31:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (445, 12, 'User Membuka Dashboard', '2024-09-07 11:32:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (446, 12, 'User Membuka Dashboard', '2024-09-07 12:41:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (447, 12, 'User Melakukan Log Out', '2024-09-07 12:41:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (448, NULL, 'User ke Halaman Login', '2024-09-07 12:41:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (449, NULL, 'User melakukan Login', '2024-09-07 12:41:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (450, 1, 'User Membuka Dashboard', '2024-09-07 12:41:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (451, 1, 'User Melakukan Log Out', '2024-09-07 12:41:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (452, NULL, 'User ke Halaman Login', '2024-09-07 12:41:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (453, NULL, 'User ke Halaman Login', '2024-09-07 12:41:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (454, NULL, 'User melakukan Login', '2024-09-07 12:41:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (455, 12, 'User Membuka Dashboard', '2024-09-07 12:41:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (456, 12, 'User Melakukan Log Out', '2024-09-07 12:42:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (457, NULL, 'User ke Halaman Login', '2024-09-07 12:42:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (458, NULL, 'User ke Halaman Login', '2024-09-08 01:13:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (459, NULL, 'User melakukan Login', '2024-09-08 01:13:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (460, 1, 'User Membuka Dashboard', '2024-09-08 01:13:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (461, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-08 01:14:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (462, 1, 'User Membuka Menu User', '2024-09-08 01:14:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (463, 1, 'User Membuka Menu User', '2024-09-08 01:15:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (464, 1, 'User ke Halaman Login', '2024-09-08 01:20:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (465, 1, 'User melakukan Login', '2024-09-08 01:31:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (466, 1, 'User Membuka Dashboard', '2024-09-08 01:31:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (467, 1, 'User Membuka Dashboard', '2024-09-08 02:10:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (468, 1, 'User Membuka Menu User', '2024-09-08 02:10:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (469, 1, 'User melakukan Hapus User', '2024-09-08 02:10:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (470, 1, 'User Membuka Menu User', '2024-09-08 02:10:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (471, 1, 'User Membuka Menu User', '2024-09-08 02:11:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (472, 1, 'User Membuka Menu User', '2024-09-08 02:16:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (473, 1, 'User ke Halaman Login', '2024-09-08 02:37:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (474, 1, 'User melakukan Login', '2024-09-08 02:39:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (475, 1, 'User Membuka Dashboard', '2024-09-08 02:39:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (476, 1, 'User Membuka Menu User', '2024-09-08 02:39:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (477, 1, 'User Membuka Dashboard', '2024-09-08 02:43:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (478, 1, 'User Membuka Dashboard', '2024-09-08 02:43:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (479, 1, 'User Membuka Menu User', '2024-09-08 02:43:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (480, 1, 'User Membuka Dashboard', '2024-09-08 02:50:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (481, 1, 'User Membuka Menu User', '2024-09-08 02:50:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (482, 1, 'User Membuka Menu User', '2024-09-08 02:52:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (483, 1, 'User Membuka Menu User', '2024-09-08 02:56:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (484, 1, 'User Membuka Menu User', '2024-09-08 02:57:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (485, 1, 'User Membuka Menu User', '2024-09-08 02:58:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (486, 1, 'User Membuka Menu User', '2024-09-08 03:00:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (487, 1, 'User melakukan Hapus User', '2024-09-08 03:00:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (488, 1, 'User Membuka Menu User', '2024-09-08 03:00:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (489, 1, 'User Membuka Menu User', '2024-09-08 03:00:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (490, 1, 'User melakukan Hapus User', '2024-09-08 03:00:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (491, 1, 'User Membuka Menu User', '2024-09-08 03:00:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (492, 1, 'User Membuka Menu User', '2024-09-08 03:00:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (493, 1, 'User Membuka Menu User', '2024-09-08 03:01:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (494, 1, 'User melakukan Penghapusan Data User Permanen', '2024-09-08 03:01:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (495, 1, 'User Membuka Menu User', '2024-09-08 03:01:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (496, 1, 'User Membuka Menu User', '2024-09-08 03:04:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (497, 1, 'User Membuka Menu User', '2024-09-08 03:11:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (498, 1, 'User Membuka Menu User', '2024-09-08 03:13:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (499, 1, 'User Membuka Menu User', '2024-09-08 03:13:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (500, 1, 'User Membuka Menu User', '2024-09-08 03:14:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (501, 1, 'User Membuka Menu User', '2024-09-08 03:24:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (502, 1, 'User Membuka Menu User', '2024-09-08 03:24:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (503, 1, 'User Membuka Menu Kelas', '2024-09-08 03:25:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (504, 1, 'User Membuka Menu User', '2024-09-08 03:28:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (505, 1, 'User Membuka Form Tambah User', '2024-09-08 03:28:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (506, 1, 'User Melakukan Tambah User', '2024-09-08 03:29:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (507, 1, 'User Membuka Menu User', '2024-09-08 03:29:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (508, 1, 'User melakukan Hapus User', '2024-09-08 03:30:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (509, 1, 'User Membuka Menu User', '2024-09-08 03:30:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (510, 1, 'User Membuka Menu User', '2024-09-08 03:30:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (511, 1, 'User Membuka Menu User', '2024-09-08 03:30:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (512, 1, 'User Membuka Menu User', '2024-09-08 03:31:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (513, 1, 'User melakukan Hapus User', '2024-09-08 03:35:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (514, 1, 'User Membuka Menu User', '2024-09-08 03:35:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (515, 1, 'User Membuka Menu User', '2024-09-08 03:47:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (516, 1, 'User Membuka Menu Kelas', '2024-09-08 03:47:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (517, 1, 'User melakukan Hapus Kelas', '2024-09-08 03:48:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (518, 1, 'User Membuka Menu Kelas', '2024-09-08 03:48:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (519, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-08 03:48:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (520, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-08 03:49:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (521, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-08 03:49:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (522, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-08 03:50:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (523, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-08 03:50:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (524, 1, 'User melakukan Restore Kelas', '2024-09-08 03:51:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (525, 1, 'User Membuka Menu Kelas', '2024-09-08 03:51:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (526, 1, 'User melakukan Hapus Kelas', '2024-09-08 03:51:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (527, 1, 'User Membuka Menu Kelas', '2024-09-08 03:51:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (528, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-08 03:51:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (529, 1, 'User melakukan Penghapusan Data Kelas Permanen', '2024-09-08 03:51:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (530, 1, 'User Membuka Menu Kelas', '2024-09-08 03:51:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (531, 1, 'User Membuka Menu Kelas', '2024-09-08 03:51:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (532, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-08 04:06:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (533, 1, 'User Membuka Menu Mapel', '2024-09-08 04:06:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (534, 1, 'User Membuka Menu Mapel', '2024-09-08 04:10:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (535, 1, 'User melakukan Hapus Mapel', '2024-09-08 04:12:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (536, 1, 'User Membuka Menu Mapel', '2024-09-08 04:12:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (537, 1, 'User Membuka Menu Restore Hapus Mapel', '2024-09-08 04:12:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (538, 1, 'User melakukan Restore Mapel', '2024-09-08 04:12:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (539, 1, 'User Membuka Menu Mapel', '2024-09-08 04:12:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (540, 1, 'User melakukan Hapus Mapel', '2024-09-08 04:12:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (541, 1, 'User Membuka Menu Mapel', '2024-09-08 04:12:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (542, 1, 'User Membuka Menu Restore Hapus Mapel', '2024-09-08 04:12:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (543, 1, 'User melakukan Penghapusan Data Mapel Permanen', '2024-09-08 04:12:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (544, 1, 'User Membuka Menu Mapel', '2024-09-08 04:12:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (545, 1, 'User Membuka Menu Mapel', '2024-09-08 04:13:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (546, 1, 'User Membuka Menu Restore Hapus Mapel', '2024-09-08 04:19:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (547, 1, 'User ke Halaman Login', '2024-09-08 04:42:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (548, 1, 'User melakukan Login', '2024-09-08 04:43:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (549, 1, 'User Membuka Dashboard', '2024-09-08 04:43:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (550, 1, 'User Membuka Menu User', '2024-09-08 04:44:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (551, 1, 'User Melakukan Edit User', '2024-09-08 04:44:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (552, 1, 'User Membuka Menu User', '2024-09-08 04:44:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (553, 1, 'User Membuka Menu User', '2024-09-08 04:46:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (554, 1, 'User Melakukan Edit User', '2024-09-08 04:47:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (555, 1, 'User Membuka Menu User', '2024-09-08 04:47:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (556, 1, 'User Membuka Menu User', '2024-09-08 04:47:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (557, 1, 'User Membuka Menu User', '2024-09-08 04:51:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (558, 1, 'User Melakukan Edit User', '2024-09-08 04:51:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (559, 1, 'User Membuka Menu User', '2024-09-08 04:51:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (560, 1, 'User ke Halaman Login', '2024-09-08 04:58:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (561, 1, 'User ke Halaman Login', '2024-09-08 05:16:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (562, 1, 'User melakukan Login', '2024-09-08 05:16:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (563, 1, 'User Membuka Dashboard', '2024-09-08 05:16:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (564, 1, 'User Membuka Menu User', '2024-09-08 05:21:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (565, 1, 'User Melakukan Edit User', '2024-09-08 05:21:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (566, 1, 'User Melakukan Edit User', '2024-09-08 05:22:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (567, 1, 'User Membuka Menu User', '2024-09-08 05:22:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (568, 1, 'User Membuka Menu User', '2024-09-08 05:25:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (569, 1, 'User Membuka Menu User', '2024-09-08 05:26:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (570, 1, 'User Membuka Menu User', '2024-09-08 05:30:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (571, 1, 'User Melakukan Edit User', '2024-09-08 05:31:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (572, 1, 'User Membuka Menu User', '2024-09-08 05:31:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (573, 1, 'User ke Halaman Login', '2024-09-08 05:36:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (574, 1, 'User melakukan Login', '2024-09-08 05:49:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (575, 1, 'User Membuka Dashboard', '2024-09-08 05:49:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (576, 1, 'User Membuka Menu User', '2024-09-08 05:49:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (577, 1, 'User Melakukan Edit User', '2024-09-08 05:50:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (578, 1, 'User Membuka Menu User', '2024-09-08 05:50:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (579, 1, 'User Membuka Menu User', '2024-09-08 06:01:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (580, 1, 'User Membuka Menu User', '2024-09-08 06:02:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (581, 1, 'User Membuka Menu User', '2024-09-08 06:03:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (582, 1, 'User Melakukan Edit User', '2024-09-08 06:04:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (583, 1, 'User Membuka Menu User', '2024-09-08 06:04:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (584, 1, 'User Membuka Menu User', '2024-09-08 06:09:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (585, 1, 'User Membuka Menu User', '2024-09-08 06:09:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (586, 1, 'User Membuka Dashboard', '2024-09-08 06:09:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (587, 1, 'User Membuka Menu User', '2024-09-08 06:10:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (588, 1, 'User Melakukan Edit User', '2024-09-08 06:10:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (589, 1, 'User Membuka Menu User', '2024-09-08 06:10:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (590, 1, 'User Membuka Menu User', '2024-09-08 06:15:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (591, 1, 'User Membuka Dashboard', '2024-09-08 06:15:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (592, 1, 'User Membuka Menu Jadwal', '2024-09-08 06:18:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (593, 1, 'User Membuka Form Tambah Jadwal', '2024-09-08 06:18:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (594, 1, 'User Membuka Menu Mapel', '2024-09-08 06:18:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (595, 1, 'User Membuka Form Tambah Mapel', '2024-09-08 06:18:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (596, 1, 'User Membuka Menu Kelas', '2024-09-08 06:20:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (597, 1, 'User Membuka Form Tambah Kelas', '2024-09-08 06:20:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (598, 1, 'User Membuka Form Tambah Jadwal', '2024-09-08 06:20:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (599, 1, 'User Membuka Form Tambah Mapel', '2024-09-08 06:20:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (600, 1, 'User Membuka Form Tambah Jadwal', '2024-09-08 06:21:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (601, 1, 'User Membuka Form Tambah Mapel', '2024-09-08 06:21:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (602, 1, 'User Membuka Menu Mapel', '2024-09-08 06:22:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (603, 1, 'User Membuka Form Tambah Kelas', '2024-09-08 06:22:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (604, 1, 'User Membuka Form Tambah User', '2024-09-08 06:23:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (605, 1, 'User Membuka Form Tambah Mapel', '2024-09-08 06:23:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (606, 1, 'User Membuka Form Tambah Mapel', '2024-09-08 06:24:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (607, 1, 'User Melakukan Tambah Mapel', '2024-09-08 06:25:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (608, 1, 'User Membuka Menu Mapel', '2024-09-08 06:25:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (609, 1, 'User Membuka Menu Mapel', '2024-09-08 06:28:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (610, 1, 'User Membuka Menu Mapel', '2024-09-08 06:28:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (611, 1, 'User ke Halaman Login', '2024-09-08 06:59:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (612, 1, 'User melakukan Login', '2024-09-08 06:59:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (613, 1, 'User Membuka Dashboard', '2024-09-08 06:59:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (614, NULL, 'User ke Halaman Login', '2024-09-08 10:10:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (615, NULL, 'User melakukan Login', '2024-09-08 10:10:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (616, 1, 'User Membuka Dashboard', '2024-09-08 10:10:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (617, 1, 'User Membuka Menu User', '2024-09-08 10:10:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (618, 1, 'User Membuka Dashboard', '2024-09-08 10:11:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (619, NULL, 'User ke Halaman Login', '2024-09-08 12:25:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (620, NULL, 'User melakukan Login', '2024-09-08 12:25:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (621, 1, 'User Membuka Dashboard', '2024-09-08 12:25:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (622, 1, 'User Membuka Menu Setting', '2024-09-08 12:25:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (623, 1, 'User Melakukan Edit Setting', '2024-09-08 12:26:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (624, 1, 'User Membuka Menu Setting', '2024-09-08 12:26:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (625, 1, 'User Melakukan Log Out', '2024-09-08 12:26:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (626, NULL, 'User ke Halaman Login', '2024-09-08 12:26:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (627, NULL, 'User melakukan Login', '2024-09-08 12:27:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (628, 1, 'User Membuka Dashboard', '2024-09-08 12:27:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (629, 1, 'User Membuka Menu Profile', '2024-09-08 12:27:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (630, 1, 'User Membuka Dashboard', '2024-09-08 12:27:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (631, 1, 'User Membuka Menu User', '2024-09-08 12:27:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (632, 1, 'User Membuka Menu Jadwal', '2024-09-08 12:28:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (633, 1, 'User Membuka Dashboard', '2024-09-08 12:28:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (634, 1, 'User Membuka Dashboard', '2024-09-08 12:30:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (635, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-08 12:30:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (636, 1, 'User Ingin Melakukan Absensi', '2024-09-08 12:32:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (637, 1, 'User Ingin Melakukan Absensi', '2024-09-08 12:33:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (638, 1, 'User Ingin Melakukan Absensi', '2024-09-08 12:34:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (639, 1, 'User Membuka Menu Jadwal', '2024-09-08 12:36:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (640, 1, 'User Membuka Form Tambah Jadwal', '2024-09-08 12:38:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (641, 1, 'User Membuka Menu Mapel', '2024-09-08 12:42:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (642, 1, 'User melakukan Hapus Mapel', '2024-09-08 12:42:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (643, 1, 'User Membuka Menu Mapel', '2024-09-08 12:42:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (644, 1, 'User Membuka Form Tambah Mapel', '2024-09-08 12:43:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (645, 1, 'User Membuka Menu Kelas', '2024-09-08 12:45:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (646, 1, 'User Membuka Form Tambah Kelas', '2024-09-08 12:46:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (647, 1, 'User Membuka Menu User', '2024-09-08 12:47:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (648, 1, 'User Membuka Form Tambah User', '2024-09-08 12:47:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (649, 1, 'User Membuka Menu Restore Hapus User', '2024-09-08 12:48:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (650, 1, 'User Membuka Menu Restore Hapus Mapel', '2024-09-08 12:48:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (651, NULL, 'User ke Halaman Login', '2024-09-08 20:06:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (652, NULL, 'User melakukan Login', '2024-09-08 20:06:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (653, 1, 'User Membuka Dashboard', '2024-09-08 20:06:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (654, 1, 'User Membuka Dashboard', '2024-09-08 20:11:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (655, 1, 'User Membuka Menu User', '2024-09-08 20:12:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (656, 1, 'User Melakukan Edit User', '2024-09-08 20:12:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (657, 1, 'User Membuka Menu User', '2024-09-08 20:12:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (658, 1, 'User Membuka Menu User', '2024-09-08 20:14:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (659, 1, 'User Melakukan Edit User', '2024-09-08 20:14:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (660, 1, 'User Membuka Menu User', '2024-09-08 20:14:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (661, 1, 'User Melakukan Edit User', '2024-09-08 20:16:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (662, 1, 'User Melakukan Edit User', '2024-09-08 20:21:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (663, 1, 'User Melakukan Edit User', '2024-09-08 20:22:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (664, 1, 'User Melakukan Edit User', '2024-09-08 20:23:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (665, 1, 'User Membuka Menu User', '2024-09-08 20:23:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (666, 1, 'User Melakukan Edit User', '2024-09-08 20:24:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (667, 1, 'User Membuka Menu User', '2024-09-08 20:24:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (668, 1, 'User Membuka Menu User', '2024-09-08 20:24:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (669, 1, 'User ke Halaman Login', '2024-09-08 20:30:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (670, 1, 'User melakukan Login', '2024-09-08 20:31:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (671, 1, 'User Membuka Dashboard', '2024-09-08 20:31:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (672, 1, 'User Membuka Menu User', '2024-09-08 20:31:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (673, 1, 'User Membuka Menu User', '2024-09-08 20:34:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (674, 1, 'User Membuka Menu User', '2024-09-08 20:35:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (675, 1, 'User Membuka Menu User', '2024-09-08 20:36:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (676, 1, 'User Membuka Menu User', '2024-09-08 20:37:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (677, 1, 'User Membuka Menu User', '2024-09-08 20:38:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (678, 1, 'User ke Halaman Login', '2024-09-08 21:06:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (679, 1, 'User melakukan Login', '2024-09-08 21:21:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (680, 1, 'User Membuka Dashboard', '2024-09-08 21:21:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (681, 1, 'User Membuka Menu User', '2024-09-08 21:44:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (682, 1, 'User Membuka Menu User', '2024-09-08 21:45:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (683, 1, 'User Membuka Menu User', '2024-09-08 21:45:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (684, 1, 'User Membuka Dashboard', '2024-09-08 21:53:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (685, 1, 'User Membuka Menu User', '2024-09-08 21:53:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (686, 1, 'User Melakukan Edit User', '2024-09-08 21:53:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (687, 1, 'User Membuka Menu User', '2024-09-08 21:54:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (688, 1, 'User Membuka Menu User', '2024-09-08 21:54:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (689, 1, 'User melakukan Hapus User', '2024-09-08 21:54:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (690, 1, 'User Membuka Menu User', '2024-09-08 21:54:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (691, 1, 'User Membuka Menu User', '2024-09-08 21:55:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (692, 1, 'User Membuka Menu User', '2024-09-08 21:56:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (693, 1, 'User Membuka Menu User', '2024-09-08 22:02:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (694, 1, 'User Membuka Menu User', '2024-09-08 22:03:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (695, 1, 'User Membuka Form Tambah User', '2024-09-08 22:03:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (696, 1, 'User Melakukan Tambah User', '2024-09-08 22:04:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (697, 1, 'User Membuka Menu User', '2024-09-08 22:04:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (698, 1, 'User Melakukan Edit User', '2024-09-08 22:04:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (699, 1, 'User Membuka Menu User', '2024-09-08 22:04:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (700, 1, 'User Membuka Menu User', '2024-09-08 22:05:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (701, 1, 'User ke Halaman Login', '2024-09-08 22:10:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (702, 1, 'User melakukan Login', '2024-09-08 22:18:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (703, 1, 'User Membuka Dashboard', '2024-09-08 22:18:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (704, 1, 'User Membuka Menu Mapel', '2024-09-08 22:18:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (705, 1, 'User Melakukan Edit Mapel', '2024-09-08 22:18:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (706, 1, 'User Membuka Menu Mapel', '2024-09-08 22:19:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (707, 1, 'User Membuka Menu Restore Edit Mapel', '2024-09-08 22:19:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (708, 1, 'User Membuka Menu Mapel', '2024-09-08 22:49:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (709, 1, 'User Membuka Menu Mapel', '2024-09-08 22:49:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (710, 1, 'User Melakukan Edit Mapel', '2024-09-08 22:49:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (711, 1, 'User Membuka Menu Mapel', '2024-09-08 22:49:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (712, 1, 'User Membuka Menu Restore Edit Mapel', '2024-09-08 22:50:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (713, 1, 'User Membuka Menu Mapel', '2024-09-08 23:17:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (714, 1, 'User Membuka Menu User', '2024-09-08 23:17:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (715, 1, 'User Membuka Menu Restore Edit Mapel', '2024-09-08 23:18:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (716, 1, 'User Restore Data Mapel', '2024-09-08 23:18:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (717, 1, 'User Membuka Menu Mapel', '2024-09-08 23:18:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (718, 1, 'User Membuka Menu Mapel', '2024-09-08 23:19:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (719, 1, 'User Membuka Menu Restore Edit Mapel', '2024-09-09 00:05:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (720, 1, 'User Membuka Menu Kelas', '2024-09-09 00:06:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (721, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-09 00:06:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (722, 1, 'User Ingin Melakukan Absensi', '2024-09-09 00:06:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (723, 1, 'User Melakukan Absensi Siswa', '2024-09-09 00:07:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (724, 1, 'User Ingin Melakukan Absensi', '2024-09-09 00:07:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (725, 1, 'User Melakukan Absensi Siswa', '2024-09-09 00:08:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (726, 1, 'User Ingin Melakukan Absensi', '2024-09-09 00:08:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (727, 1, 'User Membuka Menu Kelas', '2024-09-09 00:09:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (728, 1, 'User ke Halaman Login', '2024-09-09 00:17:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (729, 1, 'User melakukan Login', '2024-09-09 00:24:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (730, 1, 'User Membuka Dashboard', '2024-09-09 00:24:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (731, 1, 'User Membuka Menu Kelas', '2024-09-09 00:24:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (732, 1, 'User Melakukan Edit Kelas', '2024-09-09 00:24:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (733, 1, 'User Membuka Menu Kelas', '2024-09-09 00:24:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (734, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-09 00:24:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (735, 1, 'User Membuka Menu Restore Edit Kelas', '2024-09-09 00:24:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (736, 1, 'User Restore Data Kelas', '2024-09-09 00:25:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (737, 1, 'User Membuka Menu Kelas', '2024-09-09 00:25:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (738, 1, 'User Membuka Menu Kelas', '2024-09-09 00:25:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (739, 1, 'User Membuka Menu Kelas', '2024-09-09 00:26:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (740, 1, 'User Membuka Menu Kelas', '2024-09-09 00:28:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (741, 1, 'User Membuka Dashboard', '2024-09-09 00:28:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (742, 1, 'User Melakukan Log Out', '2024-09-09 00:28:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (743, NULL, 'User ke Halaman Login', '2024-09-09 00:28:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (744, NULL, 'User melakukan Login', '2024-09-09 00:29:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (745, 2, 'User Membuka Dashboard', '2024-09-09 00:29:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (746, 2, 'User Membuka Dashboard', '2024-09-09 00:32:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (747, 2, 'User Membuka Dashboard', '2024-09-09 00:38:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (748, 2, 'User Membuka Dashboard', '2024-09-09 00:40:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (749, 2, 'User Membuka Menu Jadwal', '2024-09-09 00:40:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (750, 2, 'User Membuka Menu Jadwal', '2024-09-09 00:41:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (751, 2, 'User Melakukan Log Out', '2024-09-09 00:52:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (752, NULL, 'User ke Halaman Login', '2024-09-09 00:52:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (753, NULL, 'User ke Halaman Login', '2024-09-09 00:52:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (754, NULL, 'User melakukan Login', '2024-09-09 00:52:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (755, 1, 'User Membuka Dashboard', '2024-09-09 00:52:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (756, 1, 'User Membuka Menu Jadwal', '2024-09-09 00:52:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (757, 1, 'User ke Halaman Login', '2024-09-09 01:10:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (758, 1, 'User melakukan Login', '2024-09-09 01:10:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (759, 2, 'User Membuka Dashboard', '2024-09-09 01:10:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (760, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:11:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (761, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:13:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (762, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:13:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (763, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:14:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (764, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:14:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (765, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:16:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (766, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:17:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (767, 2, 'User Melakukan Log Out', '2024-09-09 01:17:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (768, NULL, 'User ke Halaman Login', '2024-09-09 01:17:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (769, NULL, 'User melakukan Login', '2024-09-09 01:18:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (770, 1, 'User Membuka Dashboard', '2024-09-09 01:18:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (771, 1, 'User Membuka Menu Jadwal', '2024-09-09 01:18:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (772, 1, 'User Membuka Menu Jadwal', '2024-09-09 01:18:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (773, 1, 'User Membuka Menu Jadwal', '2024-09-09 01:19:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (774, 1, 'User Menghapus Jadwal', '2024-09-09 01:19:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (775, 1, 'User Membuka Menu Jadwal', '2024-09-09 01:22:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (776, 1, 'User Membuka Form Tambah Jadwal', '2024-09-09 01:23:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (777, 1, 'User Melakukan Tambah Jadwal', '2024-09-09 01:23:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (778, 1, 'User Membuka Form Tambah Jadwal', '2024-09-09 01:23:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (779, 1, 'User Membuka Menu Jadwal', '2024-09-09 01:23:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (780, 1, 'User Menghapus Jadwal', '2024-09-09 01:24:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (781, 1, 'User Melakukan Log Out', '2024-09-09 01:24:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (782, NULL, 'User ke Halaman Login', '2024-09-09 01:24:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (783, NULL, 'User melakukan Login', '2024-09-09 01:24:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (784, 2, 'User Membuka Dashboard', '2024-09-09 01:24:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (785, 2, 'User Membuka Menu Jadwal', '2024-09-09 01:24:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (786, 2, 'User Melakukan Log Out', '2024-09-09 01:25:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (787, NULL, 'User ke Halaman Login', '2024-09-09 01:25:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (788, NULL, 'User melakukan Login', '2024-09-09 01:25:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (789, 3, 'User Membuka Dashboard', '2024-09-09 01:25:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (790, 3, 'User Membuka Menu Jadwal', '2024-09-09 01:25:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (791, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 01:26:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (792, 3, 'User Membuka Menu Mapel', '2024-09-09 01:26:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (793, 3, 'User Melakukan Log Out', '2024-09-09 01:27:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (794, NULL, 'User ke Halaman Login', '2024-09-09 01:27:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (795, NULL, 'User melakukan Login', '2024-09-09 01:27:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (796, 4, 'User Membuka Dashboard', '2024-09-09 01:27:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (797, 4, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-09 01:28:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (798, 4, 'User Ingin Melakukan Absensi', '2024-09-09 01:28:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (799, 4, 'User Membuka Menu Jadwal', '2024-09-09 01:28:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (800, 4, 'User Melakukan Log Out', '2024-09-09 01:28:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (801, NULL, 'User ke Halaman Login', '2024-09-09 01:29:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (802, NULL, 'User melakukan Login', '2024-09-09 01:29:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (803, 5, 'User Membuka Dashboard', '2024-09-09 01:29:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (804, 5, 'User Membuka Dashboard', '2024-09-09 01:30:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (805, 5, 'User mencoba Ke Halaman yang Dilarang', '2024-09-09 01:30:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (806, 5, 'User Membuka Dashboard', '2024-09-09 01:30:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (807, 5, 'User Membuka Dashboard', '2024-09-09 01:32:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (808, 5, 'User Melakukan Log Out', '2024-09-09 01:32:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (809, NULL, 'User ke Halaman Login', '2024-09-09 01:32:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (810, NULL, 'User melakukan Login', '2024-09-09 01:32:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (811, 1, 'User Membuka Dashboard', '2024-09-09 01:32:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (812, 1, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-09 01:34:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (813, 1, 'User Ingin Melakukan Absensi', '2024-09-09 01:34:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (814, 1, 'User Melakukan Absensi Siswa', '2024-09-09 01:34:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (815, 1, 'User Ingin Melakukan Absensi', '2024-09-09 01:34:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (816, 1, 'User Membuka Menu User', '2024-09-09 01:38:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (817, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 01:39:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (818, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 01:41:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (819, 1, 'User Membuka Menu Restore Edit Kelas', '2024-09-09 01:42:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (820, 1, 'User Membuka Menu Kelas', '2024-09-09 01:42:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (821, 1, 'User Melakukan Edit Kelas', '2024-09-09 01:42:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (822, 1, 'User Membuka Menu Kelas', '2024-09-09 01:42:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (823, 1, 'User Membuka Menu Restore Edit Kelas', '2024-09-09 01:42:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (824, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-09 01:43:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (825, 1, 'User Membuka Menu Kelas', '2024-09-09 01:43:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (826, 1, 'User melakukan Hapus Kelas', '2024-09-09 01:43:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (827, 1, 'User Membuka Menu Kelas', '2024-09-09 01:43:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (828, 1, 'User Membuka Menu Restore Hapus Kelas', '2024-09-09 01:43:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (829, 1, 'User Membuka Menu Restore Edit Mapel', '2024-09-09 01:44:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (830, 1, 'User Membuka Menu Mapel', '2024-09-09 01:44:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (831, 1, 'User Melakukan Edit Mapel', '2024-09-09 01:44:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (832, 1, 'User Membuka Menu Mapel', '2024-09-09 01:44:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (833, 1, 'User Membuka Menu Restore Edit Mapel', '2024-09-09 01:46:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (834, 1, 'User Membuka Menu Restore Hapus Mapel', '2024-09-09 01:47:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (835, 1, 'User membuka Log Activity', '2024-09-09 01:48:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (836, 1, 'User membuka Log Activity', '2024-09-09 01:49:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (837, 1, 'User Membuka Menu Setting', '2024-09-09 01:50:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (838, 1, 'User ke Halaman Login', '2024-09-09 01:57:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (839, 1, 'User melakukan Login', '2024-09-09 02:04:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (840, 1, 'User Membuka Dashboard', '2024-09-09 02:04:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (841, 1, 'User melakukan Login', '2024-09-09 02:04:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (842, 1, 'User Membuka Dashboard', '2024-09-09 02:04:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (843, NULL, 'User ke Halaman Login', '2024-09-09 04:44:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (844, NULL, 'User melakukan Login', '2024-09-09 04:44:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (845, 1, 'User Membuka Dashboard', '2024-09-09 04:44:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (846, 1, 'User ke Halaman Login', '2024-09-09 04:44:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (847, 1, 'User melakukan Login', '2024-09-09 04:44:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (848, 3, 'User Membuka Dashboard', '2024-09-09 04:44:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (849, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:45:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (850, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 04:46:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (851, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:46:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (852, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 04:46:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (853, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:46:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (854, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 04:47:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (855, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:47:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (856, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 04:48:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (857, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:48:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (858, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 04:48:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (859, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:48:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (860, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 04:49:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (861, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:49:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (862, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 04:50:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (863, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 04:50:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (864, 3, 'User Membuka Menu Jadwal', '2024-09-09 04:50:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (865, 3, 'User Membuka Form Tambah Mapel', '2024-09-09 04:52:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (866, 3, 'User Melakukan Tambah Mapel', '2024-09-09 04:52:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (867, 3, 'User Membuka Menu Mapel', '2024-09-09 04:52:16', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (868, 3, 'User Melakukan Edit Mapel', '2024-09-09 04:52:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (869, 3, 'User Membuka Menu Mapel', '2024-09-09 04:52:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (870, 3, 'User Membuka Form Tambah Kelas', '2024-09-09 04:52:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (871, 3, 'User Melakukan Tambah Kelas', '2024-09-09 04:52:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (872, 3, 'User Membuka Menu Kelas', '2024-09-09 04:52:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (873, 3, 'User Melakukan Edit Kelas', '2024-09-09 04:53:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (874, 3, 'User Membuka Menu Kelas', '2024-09-09 04:53:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (875, 3, 'User melakukan Hapus Kelas', '2024-09-09 04:53:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (876, 3, 'User Membuka Menu Kelas', '2024-09-09 04:53:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (877, 3, 'User Membuka Dashboard', '2024-09-09 04:53:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (878, 3, 'User Melakukan Log Out', '2024-09-09 04:53:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (879, NULL, 'User ke Halaman Login', '2024-09-09 04:53:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (880, NULL, 'User melakukan Login', '2024-09-09 04:53:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (881, 2, 'User Membuka Dashboard', '2024-09-09 04:53:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (882, 2, 'User Membuka Menu Jadwal', '2024-09-09 04:53:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (883, 2, 'User Melakukan Log Out', '2024-09-09 04:54:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (884, NULL, 'User ke Halaman Login', '2024-09-09 04:54:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (885, NULL, 'User melakukan Login', '2024-09-09 04:54:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (886, 4, 'User Membuka Dashboard', '2024-09-09 04:54:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (887, 4, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-09 04:54:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (888, 4, 'User Ingin Melakukan Absensi', '2024-09-09 04:54:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (889, 4, 'User Melakukan Log Out', '2024-09-09 04:55:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (890, NULL, 'User ke Halaman Login', '2024-09-09 04:55:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (891, NULL, 'User melakukan Login', '2024-09-09 04:55:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (892, 1, 'User Membuka Dashboard', '2024-09-09 04:55:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (893, 1, 'User Membuka Form Tambah User', '2024-09-09 04:55:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (894, 1, 'User Melakukan Tambah User', '2024-09-09 04:56:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (895, 1, 'User Membuka Menu User', '2024-09-09 04:56:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (896, 1, 'User Melakukan Log Out', '2024-09-09 04:56:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (897, NULL, 'User ke Halaman Login', '2024-09-09 04:56:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (898, NULL, 'User melakukan Login', '2024-09-09 04:56:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (899, 4, 'User Membuka Dashboard', '2024-09-09 04:56:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (900, 4, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-09 04:56:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (901, 4, 'User Ingin Melakukan Absensi', '2024-09-09 04:56:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (902, 4, 'User Membuka Menu Jadwal', '2024-09-09 04:57:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (903, 4, 'User Melakukan Log Out', '2024-09-09 04:58:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (904, NULL, 'User ke Halaman Login', '2024-09-09 04:58:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (905, NULL, 'User melakukan Login', '2024-09-09 04:58:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (906, 5, 'User Membuka Dashboard', '2024-09-09 04:58:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (907, 5, 'User Melakukan Log Out', '2024-09-09 04:59:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (908, NULL, 'User ke Halaman Login', '2024-09-09 04:59:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (909, NULL, 'User melakukan Login', '2024-09-09 04:59:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (910, 1, 'User Membuka Dashboard', '2024-09-09 04:59:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (911, 1, 'User Membuka Menu User', '2024-09-09 04:59:43', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (912, 1, 'User Melakukan Reset Password ke Default', '2024-09-09 05:00:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (913, 1, 'User Melakukan Reset Password ke Default', '2024-09-09 05:00:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (914, 1, 'User Membuka Menu User', '2024-09-09 05:00:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (915, 1, 'User Melakukan Log Out', '2024-09-09 05:00:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (916, NULL, 'User ke Halaman Login', '2024-09-09 05:00:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (917, NULL, 'User melakukan Login', '2024-09-09 05:00:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (918, 5, 'User Membuka Dashboard', '2024-09-09 05:00:23', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (919, 5, 'User Melakukan Log Out', '2024-09-09 05:00:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (920, NULL, 'User ke Halaman Login', '2024-09-09 05:00:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (921, NULL, 'User melakukan Login', '2024-09-09 05:00:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (922, 1, 'User Membuka Dashboard', '2024-09-09 05:00:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (923, 1, 'User Membuka Menu User', '2024-09-09 05:00:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (924, 1, 'User Membuka Menu User', '2024-09-09 05:01:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (925, 1, 'User Membuka Menu User', '2024-09-09 05:01:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (926, 1, 'User Melakukan Edit User', '2024-09-09 05:02:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (927, 1, 'User Membuka Menu User', '2024-09-09 05:02:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (928, 1, 'User Membuka Menu User', '2024-09-09 05:02:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (929, 1, 'User Restore Data User', '2024-09-09 05:02:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (930, 1, 'User Membuka Menu User', '2024-09-09 05:02:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (931, 1, 'User Membuka Menu Restore Edit Kelas', '2024-09-09 05:02:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (932, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 05:02:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (933, 1, 'User Membuka Menu User', '2024-09-09 05:02:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (934, 1, 'User melakukan Hapus User', '2024-09-09 05:02:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (935, 1, 'User Membuka Menu User', '2024-09-09 05:02:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (936, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 05:03:05', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (937, 1, 'User melakukan Hapus User', '2024-09-09 05:03:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (938, 1, 'User Membuka Menu User', '2024-09-09 05:03:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (939, 1, 'User Membuka Menu Profile', '2024-09-09 05:03:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (940, 1, 'User Mengedit Foto Profile', '2024-09-09 05:03:32', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (941, 1, 'User Membuka Menu Profile', '2024-09-09 05:03:33', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (942, 1, 'User Mengganti Password Lama ke Baru', '2024-09-09 05:03:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (943, 1, 'User Membuka Menu Profile', '2024-09-09 05:03:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (944, 1, 'User Melakukan Log Out', '2024-09-09 05:04:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (945, NULL, 'User ke Halaman Login', '2024-09-09 05:04:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (946, NULL, 'User melakukan Login', '2024-09-09 05:04:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (947, 1, 'User Membuka Dashboard', '2024-09-09 05:04:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (948, 1, 'User membuka Log Activity', '2024-09-09 05:04:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (949, 1, 'User Membuka Menu Setting', '2024-09-09 05:04:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (950, 1, 'User Melakukan Edit Setting', '2024-09-09 05:05:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (951, 1, 'User Membuka Menu Setting', '2024-09-09 05:05:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (952, 1, 'User Melakukan Edit Setting', '2024-09-09 05:05:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (953, 1, 'User Membuka Menu Setting', '2024-09-09 05:05:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (954, 1, 'User Membuka Menu Setting', '2024-09-09 05:07:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (955, 1, 'User Melakukan Edit Setting', '2024-09-09 05:07:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (956, 1, 'User Membuka Menu Setting', '2024-09-09 05:07:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (957, 1, 'User Membuka Menu Profile', '2024-09-09 05:07:38', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (958, 1, 'User Mengedit Foto Profile', '2024-09-09 05:07:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (959, 1, 'User Membuka Menu Profile', '2024-09-09 05:07:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (960, 1, 'User Melakukan Log Out', '2024-09-09 05:07:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (961, NULL, 'User ke Halaman Login', '2024-09-09 05:07:57', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (962, NULL, 'User melakukan Login', '2024-09-09 05:12:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (963, 3, 'User Membuka Dashboard', '2024-09-09 05:12:36', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (964, 3, 'User Membuka Menu Jadwal', '2024-09-09 05:12:44', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (965, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 05:12:49', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (966, 3, 'User Membuka Menu Mapel', '2024-09-09 05:12:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (967, 3, 'User Membuka Form Tambah Mapel', '2024-09-09 05:13:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (968, 3, 'User Membuka Menu Kelas', '2024-09-09 05:13:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (969, 3, 'User Membuka Form Tambah Kelas', '2024-09-09 05:13:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (970, 3, 'User Membuka Menu Jadwal', '2024-09-09 05:13:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (971, 3, 'User Menghapus Jadwal', '2024-09-09 05:13:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (972, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 05:13:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (973, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 05:14:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (974, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 05:14:31', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (975, 3, 'User Melakukan Tambah Jadwal', '2024-09-09 05:15:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (976, 3, 'User Membuka Form Tambah Jadwal', '2024-09-09 05:15:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (977, 3, 'User Membuka Menu Jadwal', '2024-09-09 05:15:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (978, 3, 'User Membuka Menu Mapel', '2024-09-09 05:15:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (979, 3, 'User Membuka Form Tambah Mapel', '2024-09-09 05:15:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (980, 3, 'User Melakukan Tambah Mapel', '2024-09-09 05:16:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (981, 3, 'User Membuka Menu Mapel', '2024-09-09 05:16:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (982, 3, 'User Melakukan Edit Mapel', '2024-09-09 05:16:26', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (983, 3, 'User Membuka Menu Mapel', '2024-09-09 05:16:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (984, 3, 'User Membuka Form Tambah Kelas', '2024-09-09 05:16:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (985, 3, 'User Melakukan Tambah Kelas', '2024-09-09 05:16:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (986, 3, 'User Membuka Menu Kelas', '2024-09-09 05:16:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (987, 3, 'User Melakukan Edit Kelas', '2024-09-09 05:17:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (988, 3, 'User Membuka Menu Kelas', '2024-09-09 05:17:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (989, 3, 'User Membuka Dashboard', '2024-09-09 05:17:17', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (990, 3, 'User Membuka Menu Profile', '2024-09-09 05:17:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (991, 3, 'User Melakukan Log Out', '2024-09-09 05:17:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (992, NULL, 'User ke Halaman Login', '2024-09-09 05:17:35', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (993, NULL, 'User melakukan Login', '2024-09-09 05:17:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (994, 2, 'User Membuka Dashboard', '2024-09-09 05:17:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (995, 2, 'User Membuka Menu Jadwal', '2024-09-09 05:17:53', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (996, 2, 'User Melakukan Log Out', '2024-09-09 05:18:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (997, NULL, 'User ke Halaman Login', '2024-09-09 05:18:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (998, NULL, 'User melakukan Login', '2024-09-09 05:18:21', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (999, 4, 'User Membuka Dashboard', '2024-09-09 05:18:22', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1000, 4, 'User Membuka Menu Jadwal', '2024-09-09 05:18:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1001, 4, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-09 05:18:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1002, 4, 'User Membuka Menu Jadwal', '2024-09-09 05:18:56', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1003, 4, 'User Memilih Kelas Untuk Melakukan Absensi', '2024-09-09 05:19:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1004, 4, 'User Ingin Melakukan Absensi', '2024-09-09 05:19:18', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1005, 4, 'User Melakukan Absensi Siswa', '2024-09-09 05:20:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1006, 4, 'User Ingin Melakukan Absensi', '2024-09-09 05:20:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1007, 4, 'User Melakukan Absensi Siswa', '2024-09-09 05:20:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1008, 4, 'User Ingin Melakukan Absensi', '2024-09-09 05:20:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1009, 4, 'User Melakukan Log Out', '2024-09-09 05:20:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1010, NULL, 'User ke Halaman Login', '2024-09-09 05:20:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1011, NULL, 'User melakukan Login', '2024-09-09 05:20:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1012, 5, 'User Membuka Dashboard', '2024-09-09 05:20:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1013, 5, 'User Melakukan Log Out', '2024-09-09 05:21:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1014, NULL, 'User ke Halaman Login', '2024-09-09 05:21:04', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1015, NULL, 'User melakukan Login', '2024-09-09 05:21:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1016, NULL, 'User ke Halaman Login', '2024-09-09 05:21:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1017, NULL, 'User melakukan Login', '2024-09-09 05:21:19', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1018, 1, 'User Membuka Dashboard', '2024-09-09 05:21:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1019, 1, 'User Membuka Menu User', '2024-09-09 05:21:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1020, 1, 'User Membuka Form Tambah User', '2024-09-09 05:21:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1021, 1, 'User Melakukan Tambah User', '2024-09-09 05:22:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1022, 1, 'User Membuka Menu User', '2024-09-09 05:22:25', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1023, 1, 'User Melakukan Edit User', '2024-09-09 05:22:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1024, 1, 'User Membuka Menu User', '2024-09-09 05:22:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1025, 1, 'User Membuka Menu User', '2024-09-09 05:23:01', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1026, 1, 'User Restore Data User', '2024-09-09 05:23:08', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1027, 1, 'User Membuka Menu User', '2024-09-09 05:23:09', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1028, 1, 'User melakukan Hapus User', '2024-09-09 05:23:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1029, 1, 'User Membuka Menu User', '2024-09-09 05:23:29', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1030, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 05:23:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1031, 1, 'User melakukan Hapus User', '2024-09-09 05:23:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1032, 1, 'User Membuka Menu User', '2024-09-09 05:23:48', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1033, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 05:24:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1034, 1, 'User melakukan Penghapusan Data User Permanen', '2024-09-09 05:24:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1035, 1, 'User Membuka Menu User', '2024-09-09 05:24:12', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1036, 1, 'User Melakukan Reset Password ke Default', '2024-09-09 05:24:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1037, 1, 'User Membuka Menu User', '2024-09-09 05:24:42', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1038, 1, 'User Melakukan Log Out', '2024-09-09 05:24:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1039, NULL, 'User ke Halaman Login', '2024-09-09 05:24:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1040, NULL, 'User melakukan Login', '2024-09-09 05:24:58', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1041, NULL, 'User ke Halaman Login', '2024-09-09 05:24:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1042, NULL, 'User melakukan Login', '2024-09-09 05:25:14', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1043, 21, 'User Membuka Dashboard', '2024-09-09 05:25:15', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1044, 21, 'User Melakukan Log Out', '2024-09-09 05:25:27', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1045, NULL, 'User ke Halaman Login', '2024-09-09 05:25:28', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1046, NULL, 'User melakukan Login', '2024-09-09 05:25:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1047, NULL, 'User ke Halaman Login', '2024-09-09 05:25:40', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1048, NULL, 'User melakukan Login', '2024-09-09 05:25:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1049, 1, 'User Membuka Dashboard', '2024-09-09 05:25:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1050, 1, 'User membuka Log Activity', '2024-09-09 05:26:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1051, 1, 'User Membuka Menu Setting', '2024-09-09 05:26:34', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1052, 1, 'User Melakukan Edit Setting', '2024-09-09 05:26:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1053, 1, 'User Membuka Menu Setting', '2024-09-09 05:26:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1054, 1, 'User Melakukan Edit Setting', '2024-09-09 05:27:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1055, 1, 'User Membuka Menu Setting', '2024-09-09 05:27:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1056, 1, 'User ke Halaman Login', '2024-09-09 05:32:10', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1057, 1, 'User melakukan Login', '2024-09-09 06:22:39', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1058, 1, 'User Membuka Dashboard', '2024-09-09 06:22:41', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1059, 1, 'User Membuka Menu Setting', '2024-09-09 06:22:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1060, 1, 'User Melakukan Edit Setting', '2024-09-09 06:23:06', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1061, 1, 'User Membuka Menu Setting', '2024-09-09 06:23:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1062, 1, 'User Membuka Menu Mapel', '2024-09-09 06:23:13', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1063, 1, 'User Membuka Menu Kelas', '2024-09-09 06:25:20', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1064, 1, 'User ke Halaman Login', '2024-09-09 06:30:24', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1065, 1, 'User melakukan Login', '2024-09-09 06:37:45', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1066, 1, 'User Membuka Dashboard', '2024-09-09 06:37:47', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1067, 1, 'User Membuka Menu Kelas', '2024-09-09 06:37:54', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1068, 1, 'User ke Halaman Login', '2024-09-09 06:43:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1069, 1, 'User ke Halaman Login', '2024-09-09 06:43:30', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1070, 1, 'User Membuka Dashboard', '2024-09-09 06:43:37', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1071, 1, 'User Membuka Menu User', '2024-09-09 06:43:46', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1072, 1, 'User ke Halaman Login', '2024-09-09 06:48:50', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1073, 1, 'User melakukan Login', '2024-09-09 06:55:51', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1074, 1, 'User Membuka Dashboard', '2024-09-09 06:55:52', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1075, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 06:55:55', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1076, 1, 'User Membuka Menu User', '2024-09-09 06:55:59', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1077, 1, 'User melakukan Hapus User', '2024-09-09 06:56:02', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1078, 1, 'User Membuka Menu User', '2024-09-09 06:56:03', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1079, 1, 'User Membuka Menu User', '2024-09-09 06:56:07', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1080, 1, 'User Membuka Menu Restore Hapus User', '2024-09-09 06:56:11', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1081, 1, 'User Membuka Menu User', '2024-09-09 07:03:00', '0000-00-00 00:00:00', NULL, NULL, NULL);
INSERT INTO `tb_activity` VALUES (1082, 1, 'User Membuka Dashboard', '2024-09-09 07:03:03', '0000-00-00 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_blok
-- ----------------------------
DROP TABLE IF EXISTS `tb_blok`;
CREATE TABLE `tb_blok`  (
  `id_blok` int NOT NULL AUTO_INCREMENT,
  `nama_blok` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_blok`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blok
-- ----------------------------
INSERT INTO `tb_blok` VALUES (1, 'Blok 1', NULL, NULL, NULL, NULL);
INSERT INTO `tb_blok` VALUES (2, 'Blok 2`', NULL, NULL, NULL, NULL);
INSERT INTO `tb_blok` VALUES (3, 'Blok 3', NULL, NULL, NULL, NULL);
INSERT INTO `tb_blok` VALUES (4, 'Blok 4', NULL, NULL, NULL, NULL);
INSERT INTO `tb_blok` VALUES (5, 'Blok 5', NULL, NULL, NULL, NULL);
INSERT INTO `tb_blok` VALUES (6, 'Blok 6', NULL, NULL, NULL, NULL);
INSERT INTO `tb_blok` VALUES (7, 'Blok 7', NULL, NULL, NULL, NULL);
INSERT INTO `tb_blok` VALUES (8, 'Blok 8', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_jadwal
-- ----------------------------
DROP TABLE IF EXISTS `tb_jadwal`;
CREATE TABLE `tb_jadwal`  (
  `id_jadwal` int NOT NULL AUTO_INCREMENT,
  `jam_mulai` time NULL DEFAULT NULL,
  `jam_selesai` time NULL DEFAULT NULL,
  `id_sesi` int NULL DEFAULT NULL,
  `id_user` int NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `id_blok` int NULL DEFAULT NULL,
  `id_mapel` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_jadwal
-- ----------------------------
INSERT INTO `tb_jadwal` VALUES (25, '07:30:00', '08:50:00', 1, 6, 2, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (26, '08:50:00', '10:10:00', 2, 4, 2, 1, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (27, '10:10:00', '10:40:00', 6, 0, 2, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (28, '10:40:00', '12:00:00', 3, 6, 2, 1, 3, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (29, '12:00:00', '12:30:00', 7, 0, 2, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (30, '12:30:00', '13:50:00', 4, 4, 2, 1, 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (31, '13:50:00', '15:10:00', 5, 6, 2, 1, 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (32, '07:30:00', '08:50:00', 1, 4, 1, 1, 4, NULL, NULL, NULL, NULL);
INSERT INTO `tb_jadwal` VALUES (33, '08:50:00', '10:10:00', 6, 0, 1, 1, 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_kelas
-- ----------------------------
DROP TABLE IF EXISTS `tb_kelas`;
CREATE TABLE `tb_kelas`  (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_kelas
-- ----------------------------
INSERT INTO `tb_kelas` VALUES (1, 'VII', NULL, NULL, NULL, NULL);
INSERT INTO `tb_kelas` VALUES (2, 'VIII', NULL, NULL, NULL, NULL);
INSERT INTO `tb_kelas` VALUES (3, 'IX', NULL, NULL, NULL, NULL);
INSERT INTO `tb_kelas` VALUES (4, 'X', NULL, NULL, NULL, NULL);
INSERT INTO `tb_kelas` VALUES (5, 'XI', NULL, NULL, NULL, NULL);
INSERT INTO `tb_kelas` VALUES (6, 'XII A', '2024-09-09 00:24:48', 1, '2024-09-09 01:43:39', 1);
INSERT INTO `tb_kelas` VALUES (9, 'VIII B', NULL, NULL, '2024-09-09 04:53:12', 3);
INSERT INTO `tb_kelas` VALUES (10, 'XII A', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_kelas_backup
-- ----------------------------
DROP TABLE IF EXISTS `tb_kelas_backup`;
CREATE TABLE `tb_kelas_backup`  (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  `backup_at` datetime NULL DEFAULT NULL,
  `backup_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_kelas_backup
-- ----------------------------
INSERT INTO `tb_kelas_backup` VALUES (6, 'XII', '2024-09-09 00:24:48', 1, NULL, NULL, '2024-09-09 01:42:29', 1);
INSERT INTO `tb_kelas_backup` VALUES (9, 'VIII A', NULL, NULL, NULL, NULL, '2024-09-09 04:53:04', 3);
INSERT INTO `tb_kelas_backup` VALUES (10, 'XII C', NULL, NULL, NULL, NULL, '2024-09-09 05:17:12', 3);

-- ----------------------------
-- Table structure for tb_mapel
-- ----------------------------
DROP TABLE IF EXISTS `tb_mapel`;
CREATE TABLE `tb_mapel`  (
  `id_mapel` int NOT NULL AUTO_INCREMENT,
  `mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_mapel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_mapel
-- ----------------------------
INSERT INTO `tb_mapel` VALUES (1, 'PBWEB', 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (2, 'PBO', 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (3, 'Basis Data', 6, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (4, 'English', 4, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (5, 'MTK', 4, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (6, 'PPKN', 4, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (7, 'Agama', 4, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (8, 'PENJAS', 6, '2024-09-08 22:49:54', 1, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (11, 'Arab', 4, NULL, NULL, '2024-09-08 12:42:47', 1);
INSERT INTO `tb_mapel` VALUES (12, 'IPA', 4, NULL, NULL, NULL, NULL);
INSERT INTO `tb_mapel` VALUES (13, 'Manage', 4, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_mapel_backup
-- ----------------------------
DROP TABLE IF EXISTS `tb_mapel_backup`;
CREATE TABLE `tb_mapel_backup`  (
  `id_mapel` int NOT NULL AUTO_INCREMENT,
  `mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_user` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  `backup_at` datetime NULL DEFAULT NULL,
  `backup_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_mapel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_mapel_backup
-- ----------------------------
INSERT INTO `tb_mapel_backup` VALUES (8, 'PENJASKES', 6, '2024-09-08 22:49:54', 1, NULL, NULL, '2024-09-09 01:44:47', 1);
INSERT INTO `tb_mapel_backup` VALUES (12, 'IPS', 6, NULL, NULL, NULL, NULL, '2024-09-09 04:52:32', 3);
INSERT INTO `tb_mapel_backup` VALUES (13, 'Manajemen', 4, NULL, NULL, NULL, NULL, '2024-09-09 05:16:26', 3);

-- ----------------------------
-- Table structure for tb_sesi
-- ----------------------------
DROP TABLE IF EXISTS `tb_sesi`;
CREATE TABLE `tb_sesi`  (
  `id_sesi` int NOT NULL AUTO_INCREMENT,
  `sesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_sesi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sesi
-- ----------------------------
INSERT INTO `tb_sesi` VALUES (1, '1', NULL, NULL, NULL, NULL);
INSERT INTO `tb_sesi` VALUES (2, '2', NULL, NULL, NULL, NULL);
INSERT INTO `tb_sesi` VALUES (3, '3', NULL, NULL, NULL, NULL);
INSERT INTO `tb_sesi` VALUES (4, '4', NULL, NULL, NULL, NULL);
INSERT INTO `tb_sesi` VALUES (5, '5', NULL, NULL, NULL, NULL);
INSERT INTO `tb_sesi` VALUES (6, 'ISTIRAHAT 1', NULL, NULL, NULL, NULL);
INSERT INTO `tb_sesi` VALUES (7, 'ISTIRAHAT 2', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_setting
-- ----------------------------
DROP TABLE IF EXISTS `tb_setting`;
CREATE TABLE `tb_setting`  (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `nama_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_dashboard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_tab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_setting
-- ----------------------------
INSERT INTO `tb_setting` VALUES (1, 'Absensi', 'logo with text_5.png', 'logo with text_1.png', 'logo with text_3.png', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', '6512bd43d9caa6e02c990b0a82652dca', '1', 'admin@gmail.com', '123', 'L', '1725876471_1443b2838deae81b58fd.png', NULL, '2024-09-09 05:03:57', 1, NULL, NULL);
INSERT INTO `tb_user` VALUES (2, 'kepsek', 'c4ca4238a0b923820dcc509a6f75849b', '2', 'kepsek@gmail.com', '1234', 'P', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (3, 'wali', 'c4ca4238a0b923820dcc509a6f75849b', '3', 'wali@gmail.com', '12345', 'L', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (4, 'guru', 'c4ca4238a0b923820dcc509a6f75849b', '4', 'guru@gmail.com', '123456', 'P', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (5, 'siswa', 'c4ca4238a0b923820dcc509a6f75849b', '5', 'siswa@gmail.com', '1234567', 'L', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (6, 'pak if', 'c4ca4238a0b923820dcc509a6f75849b', '4', 'pakif@gmail.com', '12345678', 'L', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (19, 'gas', 'e13dd027be0f2152ce387ac0ea83d863', '5', 'gas@gmail.com', '13579', 'L', 'avatar-3.png', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_user` VALUES (20, 'siswa baru', '122cdd6c3a6b1dff945fa56ff28e7e48', '5', 'siswabaru@gmail.com', '9384530', 'L', 'avatar-3.png', 2, '2024-09-09 05:02:00', 1, NULL, NULL);
INSERT INTO `tb_user` VALUES (21, 'siswi', 'c4ca4238a0b923820dcc509a6f75849b', '5', 'siswi@gmail.com', '1', 'P', 'avatar-3.png', 1, '2024-09-09 05:22:50', 1, '2024-09-09 06:56:02', 1);

-- ----------------------------
-- Table structure for tb_user_backup
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_backup`;
CREATE TABLE `tb_user_backup`  (
  `id_user` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  `delete_at` datetime NULL DEFAULT NULL,
  `delete_by` int NULL DEFAULT NULL,
  `backup_at` datetime NULL DEFAULT NULL,
  `backup_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_backup
-- ----------------------------
INSERT INTO `tb_user_backup` VALUES (19, 'gasss', 'e13dd027be0f2152ce387ac0ea83d863', '5', 'gasss@gmail.com', '13579', 'L', 'avatar-3.png', 1, NULL, NULL, NULL, NULL, '2024-09-08 22:04:58', 1);

SET FOREIGN_KEY_CHECKS = 1;
