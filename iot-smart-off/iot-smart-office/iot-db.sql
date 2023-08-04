/*
 Navicat MySQL Data Transfer

 Source Server         : NC EU - Admin
 Source Server Type    : MySQL
 Source Server Version : 100520
 Source Host           : 127.0.0.1:5522
 Source Schema         : aquil3_smart_office_iot

 Target Server Type    : MySQL
 Target Server Version : 100520
 File Encoding         : 65001

 Date: 24/07/2023 01:09:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audits
-- ----------------------------
DROP TABLE IF EXISTS `audits`;
CREATE TABLE `audits`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auditable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `new_values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_agent` varchar(1023) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `audits_auditable_type_auditable_id_index`(`auditable_type`, `auditable_id`) USING BTREE,
  INDEX `audits_user_id_user_type_index`(`user_id`, `user_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audits
-- ----------------------------
INSERT INTO `audits` VALUES (1, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 3, '{\"auto\":\"1\"}', '{\"auto\":0}', 'https://iot.gdn.ma/admin/machines/3', '102.50.254.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', NULL, '2023-05-08 17:17:51', '2023-05-08 17:17:51');
INSERT INTO `audits` VALUES (2, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 3, '{\"auto\":\"0\"}', '{\"auto\":1}', 'https://iot.gdn.ma/admin/machines/3', '102.50.254.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', NULL, '2023-05-08 17:17:56', '2023-05-08 17:17:56');
INSERT INTO `audits` VALUES (3, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 1, '{\"auto\":\"0\"}', '{\"auto\":1}', 'https://iot.gdn.ma/admin/machines/1', '102.50.254.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', NULL, '2023-05-08 17:18:02', '2023-05-08 17:18:02');
INSERT INTO `audits` VALUES (4, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"50\"}', '{\"slider\":\"10\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 18:33:08', '2023-05-08 18:33:08');
INSERT INTO `audits` VALUES (5, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"value\":\"1\"}', '{\"value\":\"0\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', NULL, '2023-05-08 18:48:21', '2023-05-08 18:48:21');
INSERT INTO `audits` VALUES (6, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 3, '{\"slider\":\"10\"}', '{\"slider\":\"5\"}', 'https://iot.gdn.ma/admin/machines/3', '105.159.133.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:39:19', '2023-05-08 19:39:19');
INSERT INTO `audits` VALUES (7, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"5\"}', '{\"slider\":\"0\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:48:35', '2023-05-08 19:48:35');
INSERT INTO `audits` VALUES (8, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:50:16', '2023-05-08 19:50:16');
INSERT INTO `audits` VALUES (9, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\",\"slider\":\"0\"}', '{\"status\":1,\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:50:33', '2023-05-08 19:50:33');
INSERT INTO `audits` VALUES (10, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"50\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:50:45', '2023-05-08 19:50:45');
INSERT INTO `audits` VALUES (11, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"25\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:51:49', '2023-05-08 19:51:49');
INSERT INTO `audits` VALUES (12, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"75\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:52:00', '2023-05-08 19:52:00');
INSERT INTO `audits` VALUES (13, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:52:14', '2023-05-08 19:52:14');
INSERT INTO `audits` VALUES (14, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\",\"slider\":\"100\"}', '{\"status\":1,\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:52:50', '2023-05-08 19:52:50');
INSERT INTO `audits` VALUES (15, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"25\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:53:06', '2023-05-08 19:53:06');
INSERT INTO `audits` VALUES (16, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 19:53:17', '2023-05-08 19:53:17');
INSERT INTO `audits` VALUES (17, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\",\"slider\":\"50\"}', '{\"status\":1,\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', NULL, '2023-05-08 19:56:06', '2023-05-08 19:56:06');
INSERT INTO `audits` VALUES (18, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"100\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:00:39', '2023-05-08 20:00:39');
INSERT INTO `audits` VALUES (19, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:01:25', '2023-05-08 20:01:25');
INSERT INTO `audits` VALUES (20, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\",\"slider\":\"75\"}', '{\"status\":1,\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:01:33', '2023-05-08 20:01:33');
INSERT INTO `audits` VALUES (21, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"50\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:01:48', '2023-05-08 20:01:48');
INSERT INTO `audits` VALUES (22, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"75\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:02:03', '2023-05-08 20:02:03');
INSERT INTO `audits` VALUES (23, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"25\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:02:24', '2023-05-08 20:02:24');
INSERT INTO `audits` VALUES (24, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"100\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:02:36', '2023-05-08 20:02:36');
INSERT INTO `audits` VALUES (25, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"75\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:02:46', '2023-05-08 20:02:46');
INSERT INTO `audits` VALUES (26, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:03:28', '2023-05-08 20:03:28');
INSERT INTO `audits` VALUES (27, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"50\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:03:35', '2023-05-08 20:03:35');
INSERT INTO `audits` VALUES (28, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\"}', '{\"status\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.191.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-08 20:03:52', '2023-05-08 20:03:52');
INSERT INTO `audits` VALUES (29, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"25\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/3', '41.214.158.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 09:30:56', '2023-05-09 09:30:56');
INSERT INTO `audits` VALUES (30, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"50\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/3', '41.214.158.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 09:31:13', '2023-05-09 09:31:13');
INSERT INTO `audits` VALUES (31, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '41.214.158.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 09:31:22', '2023-05-09 09:31:22');
INSERT INTO `audits` VALUES (32, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\"}', '{\"status\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:17:24', '2023-05-09 11:17:24');
INSERT INTO `audits` VALUES (33, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:18:14', '2023-05-09 11:18:14');
INSERT INTO `audits` VALUES (34, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"100\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:18:25', '2023-05-09 11:18:25');
INSERT INTO `audits` VALUES (35, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\"}', '{\"status\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:18:31', '2023-05-09 11:18:31');
INSERT INTO `audits` VALUES (36, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"75\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:18:44', '2023-05-09 11:18:44');
INSERT INTO `audits` VALUES (37, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:19:04', '2023-05-09 11:19:04');
INSERT INTO `audits` VALUES (38, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\"}', '{\"status\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:19:14', '2023-05-09 11:19:14');
INSERT INTO `audits` VALUES (39, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:19:20', '2023-05-09 11:19:20');
INSERT INTO `audits` VALUES (40, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\",\"slider\":\"50\"}', '{\"status\":1,\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-09 11:19:29', '2023-05-09 11:19:29');
INSERT INTO `audits` VALUES (41, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"25\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', NULL, '2023-05-09 17:41:41', '2023-05-09 17:41:41');
INSERT INTO `audits` VALUES (42, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"100\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', NULL, '2023-05-09 17:42:08', '2023-05-09 17:42:08');
INSERT INTO `audits` VALUES (43, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"1\"}', '{\"status\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', NULL, '2023-05-09 17:42:28', '2023-05-09 17:42:28');
INSERT INTO `audits` VALUES (44, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"status\":\"0\"}', '{\"status\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.156.107', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', NULL, '2023-05-09 17:42:36', '2023-05-09 17:42:36');
INSERT INTO `audits` VALUES (45, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 1, '{\"auto\":\"1\"}', '{\"auto\":0}', 'https://iot.gdn.ma/admin/machines/1', '105.66.0.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 11:58:27', '2023-05-10 11:58:27');
INSERT INTO `audits` VALUES (46, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"auto\":\"1\"}', '{\"auto\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 13:40:14', '2023-05-10 13:40:14');
INSERT INTO `audits` VALUES (47, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"auto\":\"0\"}', '{\"auto\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 13:42:30', '2023-05-10 13:42:30');
INSERT INTO `audits` VALUES (48, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"slider\":\"75\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/3', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 13:47:08', '2023-05-10 13:47:08');
INSERT INTO `audits` VALUES (49, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"auto\":\"1\"}', '{\"auto\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 14:20:39', '2023-05-10 14:20:39');
INSERT INTO `audits` VALUES (50, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"auto\":\"0\"}', '{\"auto\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 14:20:47', '2023-05-10 14:20:47');
INSERT INTO `audits` VALUES (51, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"auto\":\"1\"}', '{\"auto\":0}', 'https://iot.gdn.ma/admin/machines/3', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 14:32:03', '2023-05-10 14:32:03');
INSERT INTO `audits` VALUES (52, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 3, '{\"auto\":\"0\"}', '{\"auto\":1}', 'https://iot.gdn.ma/admin/machines/3', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 14:33:26', '2023-05-10 14:33:26');
INSERT INTO `audits` VALUES (53, 'App\\Models\\User', 1, 'deleted', 'App\\Machine', 2, '{\"id\":\"2\",\"name\":\"lock\",\"mac\":\"FF:FF:FF:00:00:01\",\"user_id\":\"4\",\"auto\":\"1\",\"status\":\"1\",\"slider\":\"0\",\"value\":\"1\"}', '[]', 'https://iot.gdn.ma/admin/machines/2', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 17:59:35', '2023-05-10 17:59:35');
INSERT INTO `audits` VALUES (54, 'App\\Models\\User', 1, 'created', 'App\\Machine', 4, '[]', '{\"name\":\"lock\",\"mac\":\"FF:FF:FF:00:00:01\",\"user_id\":null,\"auto\":1,\"status\":1,\"slider\":\"0\",\"value\":\"1\",\"id\":4}', 'https://iot.gdn.ma/admin/machines', '196.115.197.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 18:14:25', '2023-05-10 18:14:25');
INSERT INTO `audits` VALUES (55, 'App\\Models\\User', 1, 'created', 'App\\Machine', 5, '[]', '{\"name\":null,\"mac\":\"FF:FF:FF:00:00:00\",\"user_id\":\"3\",\"auto\":1,\"status\":1,\"slider\":\"0\",\"value\":\"1\",\"id\":5}', 'https://iot.gdn.ma/admin/machines', '105.157.37.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 19:05:55', '2023-05-10 19:05:55');
INSERT INTO `audits` VALUES (56, 'App\\Models\\User', 3, 'updated', 'App\\Machine', 5, '{\"name\":null}', '{\"name\":\"Co2\"}', 'https://iot.gdn.ma/admin/machines/5', '105.157.37.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-10 19:08:35', '2023-05-10 19:08:35');
INSERT INTO `audits` VALUES (57, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 9, '{\"value\":\"1\"}', '{\"value\":\"0\"}', 'https://iot.gdn.ma/admin/machines/9', '105.156.2.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-11 21:24:50', '2023-05-11 21:24:50');
INSERT INTO `audits` VALUES (58, 'App\\Models\\User', 1, 'deleted', 'App\\Machine', 9, '{\"id\":\"9\",\"name\":\"Smart light\",\"mac\":\"FF:FF:FF:00:00:00\",\"user_id\":\"4\",\"state\":\"1\",\"slider\":\"0\",\"value\":\"0\",\"String\":null,\"Auto\":\"1\"}', '[]', 'https://iot.gdn.ma/admin/machines/9', '105.156.2.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-11 21:25:10', '2023-05-11 21:25:10');
INSERT INTO `audits` VALUES (59, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 12, '{\"value\":\"1\"}', '{\"value\":\"0\"}', 'https://iot.gdn.ma/admin/machines/12', '105.156.2.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-11 21:25:23', '2023-05-11 21:25:23');
INSERT INTO `audits` VALUES (60, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 13, '{\"value\":\"1\"}', '{\"value\":\"0.5\"}', 'https://iot.gdn.ma/admin/machines/13', '105.156.2.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-11 21:45:43', '2023-05-11 21:45:43');
INSERT INTO `audits` VALUES (61, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 13, '{\"value\":\"1\"}', '{\"value\":\"0\"}', 'https://iot.gdn.ma/admin/machines/13', '105.156.2.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-11 21:46:03', '2023-05-11 21:46:03');
INSERT INTO `audits` VALUES (62, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 11, '{\"value\":\"0\"}', '{\"value\":\"8\"}', 'https://iot.gdn.ma/admin/machines/11', '41.250.26.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-12 10:28:59', '2023-05-12 10:28:59');
INSERT INTO `audits` VALUES (63, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"value\":\"8\"}', '{\"value\":\"9\"}', 'https://iot.gdn.ma/admin/machines/11', '196.117.147.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-17 18:24:34', '2023-05-17 18:24:34');
INSERT INTO `audits` VALUES (64, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\"}', '{\"state\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 09:19:33', '2023-05-18 09:19:33');
INSERT INTO `audits` VALUES (65, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"50\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 09:19:43', '2023-05-18 09:19:43');
INSERT INTO `audits` VALUES (66, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 09:19:51', '2023-05-18 09:19:51');
INSERT INTO `audits` VALUES (67, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\",\"slider\":\"100\"}', '{\"state\":1,\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 09:20:04', '2023-05-18 09:20:04');
INSERT INTO `audits` VALUES (68, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"25\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', NULL, '2023-05-18 20:22:36', '2023-05-18 20:22:36');
INSERT INTO `audits` VALUES (69, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', NULL, '2023-05-18 20:23:03', '2023-05-18 20:23:03');
INSERT INTO `audits` VALUES (70, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', NULL, '2023-05-18 20:23:09', '2023-05-18 20:23:09');
INSERT INTO `audits` VALUES (71, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\"}', '{\"state\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', NULL, '2023-05-18 20:23:16', '2023-05-18 20:23:16');
INSERT INTO `audits` VALUES (72, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:05:52', '2023-05-18 21:05:52');
INSERT INTO `audits` VALUES (73, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\",\"slider\":\"25\"}', '{\"state\":1,\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:06:07', '2023-05-18 21:06:07');
INSERT INTO `audits` VALUES (74, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:06:16', '2023-05-18 21:06:16');
INSERT INTO `audits` VALUES (75, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"50\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:09:29', '2023-05-18 21:09:29');
INSERT INTO `audits` VALUES (76, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"25\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:12:11', '2023-05-18 21:12:11');
INSERT INTO `audits` VALUES (77, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:12:46', '2023-05-18 21:12:46');
INSERT INTO `audits` VALUES (78, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:13:00', '2023-05-18 21:13:00');
INSERT INTO `audits` VALUES (79, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\"}', '{\"state\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:13:07', '2023-05-18 21:13:07');
INSERT INTO `audits` VALUES (80, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"25\"}', '{\"slider\":\"70\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:13:19', '2023-05-18 21:13:19');
INSERT INTO `audits` VALUES (81, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"70\"}', '{\"slider\":\"15\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:13:28', '2023-05-18 21:13:28');
INSERT INTO `audits` VALUES (82, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"15\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:15:48', '2023-05-18 21:15:48');
INSERT INTO `audits` VALUES (83, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"10\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:16:03', '2023-05-18 21:16:03');
INSERT INTO `audits` VALUES (84, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"10\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:22:00', '2023-05-18 21:22:00');
INSERT INTO `audits` VALUES (85, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:22:12', '2023-05-18 21:22:12');
INSERT INTO `audits` VALUES (86, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:22:24', '2023-05-18 21:22:24');
INSERT INTO `audits` VALUES (87, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\",\"slider\":\"25\"}', '{\"state\":1,\"slider\":\"0\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:22:33', '2023-05-18 21:22:33');
INSERT INTO `audits` VALUES (88, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"0\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:22:54', '2023-05-18 21:22:54');
INSERT INTO `audits` VALUES (89, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"50\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:23:03', '2023-05-18 21:23:03');
INSERT INTO `audits` VALUES (90, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"75\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:23:10', '2023-05-18 21:23:10');
INSERT INTO `audits` VALUES (91, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"5\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:23:19', '2023-05-18 21:23:19');
INSERT INTO `audits` VALUES (92, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:23:34', '2023-05-18 21:23:34');
INSERT INTO `audits` VALUES (93, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\"}', '{\"state\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:23:41', '2023-05-18 21:23:41');
INSERT INTO `audits` VALUES (94, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"5\"}', '{\"slider\":\"0\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:23:47', '2023-05-18 21:23:47');
INSERT INTO `audits` VALUES (95, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"0\"}', '{\"slider\":\"55\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.130.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-18 21:23:57', '2023-05-18 21:23:57');
INSERT INTO `audits` VALUES (96, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"1\"}', '{\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.59.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-26 14:49:02', '2023-05-26 14:49:02');
INSERT INTO `audits` VALUES (97, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"0\"}', '{\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.59.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-26 19:44:22', '2023-05-26 19:44:22');
INSERT INTO `audits` VALUES (98, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"55\",\"Auto\":\"1\"}', '{\"slider\":\"35\",\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.59.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-26 20:07:12', '2023-05-26 20:07:12');
INSERT INTO `audits` VALUES (99, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"35\"}', '{\"slider\":\"90\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.59.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-05-26 20:07:25', '2023-05-26 20:07:25');
INSERT INTO `audits` VALUES (100, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"0\"}', '{\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:00:02', '2023-06-01 10:00:02');
INSERT INTO `audits` VALUES (101, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"1\"}', '{\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:08:17', '2023-06-01 10:08:17');
INSERT INTO `audits` VALUES (102, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"90\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:08:26', '2023-06-01 10:08:26');
INSERT INTO `audits` VALUES (103, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"75\"}', '{\"slider\":\"65\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:08:37', '2023-06-01 10:08:37');
INSERT INTO `audits` VALUES (104, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:08:51', '2023-06-01 10:08:51');
INSERT INTO `audits` VALUES (105, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\"}', '{\"state\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:08:57', '2023-06-01 10:08:57');
INSERT INTO `audits` VALUES (106, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"65\"}', '{\"slider\":\"10\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:09:09', '2023-06-01 10:09:09');
INSERT INTO `audits` VALUES (107, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"10\"}', '{\"slider\":\"75\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:10:06', '2023-06-01 10:10:06');
INSERT INTO `audits` VALUES (108, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"75\"}', '{\"slider\":\"25\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:10:20', '2023-06-01 10:10:20');
INSERT INTO `audits` VALUES (109, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"25\"}', '{\"slider\":\"70\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:13:17', '2023-06-01 10:13:17');
INSERT INTO `audits` VALUES (110, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"70\"}', '{\"slider\":\"40\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:13:31', '2023-06-01 10:13:31');
INSERT INTO `audits` VALUES (111, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"40\"}', '{\"slider\":\"95\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:13:38', '2023-06-01 10:13:38');
INSERT INTO `audits` VALUES (112, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:13:46', '2023-06-01 10:13:46');
INSERT INTO `audits` VALUES (113, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"0\"}', '{\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 10:13:52', '2023-06-01 10:13:52');
INSERT INTO `audits` VALUES (114, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\",\"slider\":\"95\",\"Auto\":\"1\"}', '{\"state\":1,\"slider\":\"50\",\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', NULL, '2023-06-01 10:19:20', '2023-06-01 10:19:20');
INSERT INTO `audits` VALUES (115, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"0\"}', '{\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', NULL, '2023-06-01 11:24:20', '2023-06-01 11:24:20');
INSERT INTO `audits` VALUES (116, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"50\",\"Auto\":\"1\"}', '{\"slider\":\"75\",\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.178.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', NULL, '2023-06-01 14:29:41', '2023-06-01 14:29:41');
INSERT INTO `audits` VALUES (117, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.180.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 13:07:43', '2023-06-02 13:07:43');
INSERT INTO `audits` VALUES (118, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\",\"slider\":\"75\"}', '{\"state\":1,\"slider\":\"40\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.180.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 13:07:53', '2023-06-02 13:07:53');
INSERT INTO `audits` VALUES (119, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"40\"}', '{\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.180.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 13:08:00', '2023-06-02 13:08:00');
INSERT INTO `audits` VALUES (120, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"0\"}', '{\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.180.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 13:08:08', '2023-06-02 13:08:08');
INSERT INTO `audits` VALUES (121, 'App\\Models\\User', 1, 'deleted', 'App\\Machine', 13, '{\"id\":\"13\",\"name\":\"Co2\",\"mac\":\"FF:FF:FF:00:00:00\",\"user_id\":\"3\",\"state\":\"0\",\"slider\":\"0\",\"value\":\"0\",\"String\":null,\"Auto\":\"1\"}', '[]', 'https://iot.gdn.ma/admin/machines/13', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:14:04', '2023-06-02 18:14:04');
INSERT INTO `audits` VALUES (122, 'App\\Models\\User', 1, 'deleted', 'App\\Machine', 12, '{\"id\":\"12\",\"name\":\"lock\",\"mac\":\"FF:FF:FF:00:00:01\",\"user_id\":\"3\",\"state\":\"0\",\"slider\":\"0\",\"value\":\"0\",\"String\":null,\"Auto\":\"1\"}', '[]', 'https://iot.gdn.ma/admin/machines/12', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:14:09', '2023-06-02 18:14:09');
INSERT INTO `audits` VALUES (123, 'App\\Models\\User', 1, 'created', 'App\\Machine', 14, '[]', '{\"name\":\"Light\",\"mac\":\"FF:FF:FF:00:00:00\",\"user_id\":\"4\",\"Auto\":1,\"state\":1,\"slider\":\"0\",\"value\":\"2\",\"String\":null,\"id\":14}', 'https://iot.gdn.ma/admin/machines', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:14:33', '2023-06-02 18:14:33');
INSERT INTO `audits` VALUES (124, 'App\\Models\\User', 1, 'deleted', 'App\\Machine', 14, '{\"id\":\"14\",\"name\":\"Light\",\"mac\":\"FF:FF:FF:00:00:00\",\"user_id\":\"4\",\"state\":\"1\",\"slider\":\"0\",\"value\":\"2\",\"String\":null,\"Auto\":\"1\"}', '[]', 'https://iot.gdn.ma/admin/machines/14', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:14:55', '2023-06-02 18:14:55');
INSERT INTO `audits` VALUES (125, 'App\\Models\\User', 1, 'created', 'App\\Machine', 15, '[]', '{\"name\":\"light\",\"mac\":\"E8:9F:6D:88:B7:03\",\"user_id\":\"4\",\"Auto\":0,\"state\":1,\"slider\":\"0\",\"value\":\"2\",\"String\":null,\"id\":15}', 'https://iot.gdn.ma/admin/machines', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:15:24', '2023-06-02 18:15:24');
INSERT INTO `audits` VALUES (126, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"slider_1\":null}', '{\"slider_1\":\"0\"}', 'https://iot.gdn.ma/admin/machines/15', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:19:13', '2023-06-02 18:19:13');
INSERT INTO `audits` VALUES (127, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"slider_1\":\"0\"}', '{\"slider_1\":\"2\"}', 'https://iot.gdn.ma/admin/machines/15', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:26:05', '2023-06-02 18:26:05');
INSERT INTO `audits` VALUES (128, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"slider_1\":\"2\"}', '{\"slider_1\":\"1\"}', 'https://iot.gdn.ma/admin/machines/15', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:26:37', '2023-06-02 18:26:37');
INSERT INTO `audits` VALUES (129, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"slider_1\":\"1\"}', '{\"slider_1\":\"2\"}', 'https://iot.gdn.ma/admin/machines/15', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:27:25', '2023-06-02 18:27:25');
INSERT INTO `audits` VALUES (130, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"slider_1\":\"2\"}', '{\"slider_1\":\"1\"}', 'https://iot.gdn.ma/admin/machines/15', '196.117.20.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-02 18:27:39', '2023-06-02 18:27:39');
INSERT INTO `audits` VALUES (131, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 11, '{\"value\":\"9\",\"slider_1\":null}', '{\"value\":\"2\",\"slider_1\":\"0\"}', 'https://iot.gdn.ma/admin/machines/11', '105.155.147.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-05 14:27:51', '2023-06-05 14:27:51');
INSERT INTO `audits` VALUES (132, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 15, '{\"name\":\"light\"}', '{\"name\":\"machine 2\"}', 'https://iot.gdn.ma/admin/machines/15', '105.155.147.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-05 14:28:13', '2023-06-05 14:28:13');
INSERT INTO `audits` VALUES (133, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 15, '{\"value\":\"2\"}', '{\"value\":\"1\"}', 'https://iot.gdn.ma/admin/machines/15', '105.155.147.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-05 14:28:49', '2023-06-05 14:28:49');
INSERT INTO `audits` VALUES (134, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 11, '{\"value\":\"2\"}', '{\"value\":\"4\"}', 'https://iot.gdn.ma/admin/machines/11', '105.155.147.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-05 14:29:00', '2023-06-05 14:29:00');
INSERT INTO `audits` VALUES (135, 'App\\Models\\User', 4, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"50\"}', 'https://iot.gdn.ma/admin/machines/11', '105.155.147.169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-05 14:29:25', '2023-06-05 14:29:25');
INSERT INTO `audits` VALUES (136, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"value\":\"4\"}', '{\"value\":\"2\"}', 'https://iot.gdn.ma/admin/machines/11', '105.66.130.189', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', NULL, '2023-06-05 21:03:17', '2023-06-05 21:03:17');
INSERT INTO `audits` VALUES (137, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"50\",\"Auto\":\"1\"}', '{\"slider\":\"40\",\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.118.28.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-07 18:44:21', '2023-06-07 18:44:21');
INSERT INTO `audits` VALUES (138, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"0\"}', '{\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.118.28.142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.4 Mobile/15E148 Safari/604.1', NULL, '2023-06-07 18:50:23', '2023-06-07 18:50:23');
INSERT INTO `audits` VALUES (139, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"40\",\"Auto\":\"1\"}', '{\"slider\":\"75\",\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.118.28.142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.4 Mobile/15E148 Safari/604.1', NULL, '2023-06-07 18:50:46', '2023-06-07 18:50:46');
INSERT INTO `audits` VALUES (140, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.118.28.142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.4 Mobile/15E148 Safari/604.1', NULL, '2023-06-07 18:50:57', '2023-06-07 18:50:57');
INSERT INTO `audits` VALUES (141, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\",\"slider\":\"75\"}', '{\"state\":1,\"slider\":\"10\"}', 'https://iot.gdn.ma/admin/machines/11', '196.118.28.142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_7_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.4 Mobile/15E148 Safari/604.1', NULL, '2023-06-07 18:51:11', '2023-06-07 18:51:11');
INSERT INTO `audits` VALUES (142, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\",\"slider\":\"10\"}', '{\"state\":0,\"slider\":\"70\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.181.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-08 13:21:25', '2023-06-08 13:21:25');
INSERT INTO `audits` VALUES (143, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"0\",\"slider\":\"70\"}', '{\"state\":1,\"slider\":\"100\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.181.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-08 13:21:39', '2023-06-08 13:21:39');
INSERT INTO `audits` VALUES (144, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"100\"}', '{\"slider\":\"10\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.181.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-08 13:26:52', '2023-06-08 13:26:52');
INSERT INTO `audits` VALUES (145, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"10\"}', '{\"slider\":\"45\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.181.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-08 13:27:00', '2023-06-08 13:27:00');
INSERT INTO `audits` VALUES (146, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"slider\":\"45\"}', '{\"slider\":\"60\"}', 'https://iot.gdn.ma/admin/machines/11', '196.115.181.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-08 13:27:09', '2023-06-08 13:27:09');
INSERT INTO `audits` VALUES (147, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/11', '196.115.181.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-08 13:27:15', '2023-06-08 13:27:15');
INSERT INTO `audits` VALUES (148, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 11, '{\"Auto\":\"0\"}', '{\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/11', '196.115.181.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-08 13:27:21', '2023-06-08 13:27:21');
INSERT INTO `audits` VALUES (149, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"slider\":\"0\",\"Auto\":\"0\"}', '{\"slider\":\"5\",\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/15', '41.251.156.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-14 20:19:51', '2023-06-14 20:19:51');
INSERT INTO `audits` VALUES (150, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"state\":\"1\",\"slider\":\"5\",\"value\":\"1\",\"Auto\":\"1\"}', '{\"state\":0,\"slider\":\"0\",\"value\":\"0\",\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/15', '41.92.13.195', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', NULL, '2023-06-14 20:24:50', '2023-06-14 20:24:50');
INSERT INTO `audits` VALUES (151, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 15, '{\"state\":\"0\",\"slider\":\"0\",\"value\":\"0\",\"Auto\":\"0\"}', '{\"state\":1,\"slider\":\"100\",\"value\":\"1\",\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/15', '41.251.156.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-06-14 20:31:35', '2023-06-14 20:31:35');
INSERT INTO `audits` VALUES (152, 'App\\Models\\User', 1, 'created', 'App\\Machine', 16, '[]', '{\"name\":\"qwertyu\",\"mac\":\"FF:FF:FF:00:00:00\",\"user_id\":\"6\",\"Auto\":1,\"state\":1,\"slider\":\"0\",\"value\":\"0\",\"id\":16}', 'https://iot.gdn.ma/admin/machines', '196.65.89.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-07-13 21:34:18', '2023-07-13 21:34:18');
INSERT INTO `audits` VALUES (153, 'App\\Models\\User', 6, 'updated', 'App\\Machine', 16, '{\"name\":\"qwertyu\"}', '{\"name\":\"Bola Dyal Garage\"}', 'https://iot.gdn.ma/admin/machines/16', '196.65.89.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-07-13 21:34:39', '2023-07-13 21:34:39');
INSERT INTO `audits` VALUES (154, 'App\\Models\\User', 6, 'updated', 'App\\Machine', 16, '{\"state\":\"1\"}', '{\"state\":0}', 'https://iot.gdn.ma/admin/machines/16', '196.65.89.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-07-13 21:35:21', '2023-07-13 21:35:21');
INSERT INTO `audits` VALUES (155, 'App\\Models\\User', 6, 'updated', 'App\\Machine', 16, '{\"slider\":\"0\",\"Auto\":\"1\"}', '{\"slider\":\"10\",\"Auto\":0}', 'https://iot.gdn.ma/admin/machines/16', '196.65.89.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-07-13 21:35:36', '2023-07-13 21:35:36');
INSERT INTO `audits` VALUES (156, 'App\\Models\\User', 1, 'updated', 'App\\Machine', 16, '{\"state\":\"0\",\"slider\":\"10\",\"value\":\"0\",\"Auto\":\"0\"}', '{\"state\":1,\"slider\":\"20\",\"value\":\"0.034\",\"Auto\":1}', 'https://iot.gdn.ma/admin/machines/16', '160.176.23.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2023-07-15 00:14:35', '2023-07-15 00:14:35');

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `data_rows_data_type_id_foreign`(`data_type_id`) USING BTREE,
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES (1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4);
INSERT INTO `data_rows` VALUES (5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5);
INSERT INTO `data_rows` VALUES (6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` VALUES (7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8);
INSERT INTO `data_rows` VALUES (9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10);
INSERT INTO `data_rows` VALUES (10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11);
INSERT INTO `data_rows` VALUES (11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12);
INSERT INTO `data_rows` VALUES (12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9);
INSERT INTO `data_rows` VALUES (29, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (31, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (32, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (33, 8, 'mac', 'text', 'Mac', 0, 1, 1, 0, 1, 1, '{\"default\":\"FF:FF:FF:00:00:00\"}', 3);
INSERT INTO `data_rows` VALUES (35, 8, 'machine_belongsto_user_relationship', 'relationship', 'utilisateur', 0, 1, 1, 0, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"audits\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5);
INSERT INTO `data_rows` VALUES (36, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` VALUES (37, 8, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 7);
INSERT INTO `data_rows` VALUES (38, 8, 'state', 'checkbox', 'State', 0, 1, 1, 1, 1, 1, '{\"on\":\"true\",\"off\":\"false\",\"checked\":true}', 9);
INSERT INTO `data_rows` VALUES (39, 8, 'slider', 'select_dropdown', 'Slider', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"0%\",\"5\":\"5%\",\"10\":\"10%\",\"15\":\"15%\",\"20\":\"20%\",\"25\":\"25%\",\"30\":\"30%\",\"35\":\"35%\",\"40\":\"40%\",\"45\":\"45%\",\"50\":\"50%\",\"55\":\"55%\",\"60\":\"60%\",\"65\":\"65%\",\"70\":\"70%\",\"75\":\"75%\",\"80\":\"80%\",\"85\":\"85%\",\"90\":\"90%\",\"95\":\"95%\",\"100\":\"100%\"}}', 10);
INSERT INTO `data_rows` VALUES (41, 8, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '{\"step\":0.001,\"min\":0,\"max\":500,\"default\":0}', 11);
INSERT INTO `data_rows` VALUES (42, 8, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 1, 0, '{}', 4);
INSERT INTO `data_rows` VALUES (45, 8, 'Auto', 'checkbox', 'Auto', 0, 1, 1, 1, 1, 1, '{\"on\":\"Automatique\",\"off\":\"Manuelle\",\"checked\":true}', 8);

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `data_types_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `data_types_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES (1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-04-28 23:14:17', '2023-05-10 20:21:54');
INSERT INTO `data_types` VALUES (2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `data_types` VALUES (3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `data_types` VALUES (8, 'machines', 'machines', 'Machine', 'Machines', 'voyager-params', 'App\\Machine', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-02 14:06:33', '2023-06-05 20:47:06');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for machines
-- ----------------------------
DROP TABLE IF EXISTS `machines`;
CREATE TABLE `machines`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mac` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT 0,
  `slider` int(11) NULL DEFAULT 0,
  `value` int(11) NULL DEFAULT 0,
  `Auto` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `machines_mac_index`(`mac`) USING BTREE,
  INDEX `machines_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of machines
-- ----------------------------
INSERT INTO `machines` VALUES (11, 'Smart light', 'e8:9f:6d:88:7f:29', 4, '2023-05-08 17:09:47', '2023-06-08 13:27:21', 0, 60, 2, 1);
INSERT INTO `machines` VALUES (15, 'machine 2', 'E8:9F:6D:88:B7:03', 4, '2023-06-02 18:15:24', '2023-06-14 20:31:35', 1, 100, 1, 1);
INSERT INTO `machines` VALUES (16, 'Bola Dyal Garage', 'FF:FF:FF:00:00:00', 6, '2023-07-13 21:34:18', '2023-07-15 00:14:35', 1, 20, 0, 1);

-- ----------------------------
-- Table structure for machines_old
-- ----------------------------
DROP TABLE IF EXISTS `machines_old`;
CREATE TABLE `machines_old`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `auto` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0,
  `slider` int(11) NULL DEFAULT 0,
  `value` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `machines_user_id_index`(`user_id`) USING BTREE,
  INDEX `machines_mac_index`(`mac`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of machines_old
-- ----------------------------
INSERT INTO `machines_old` VALUES (1, 'Smart light', 'FF:FF:FF:00:00:00', 3, '2023-05-03 21:49:16', '2023-05-10 11:58:27', 0, 1, 0, 1);
INSERT INTO `machines_old` VALUES (3, 'Smart light', 'e8:9f:6d:88:7f:29', 4, '2023-05-08 17:09:47', '2023-05-10 14:33:26', 1, 1, 50, 0);
INSERT INTO `machines_old` VALUES (4, 'lock', 'FF:FF:FF:00:00:01', NULL, '2023-05-10 18:14:25', '2023-05-10 18:14:25', 1, 1, 0, 1);
INSERT INTO `machines_old` VALUES (5, 'Co2', 'FF:FF:FF:00:00:00', 3, '2023-05-10 19:05:55', '2023-05-10 19:08:35', 1, 1, 0, 1);

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `parameters` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_items_menu_id_foreign`(`menu_id`) USING BTREE,
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES (1, 1, 'Dashboard', '', '_self', 'voyager-activity', '#000000', NULL, 1, '2023-04-28 23:14:17', '2023-05-06 15:55:49', 'voyager.dashboard', 'null');
INSERT INTO `menu_items` VALUES (2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 2, '2023-04-28 23:14:17', '2023-05-08 22:35:54', 'voyager.media.index', NULL);
INSERT INTO `menu_items` VALUES (3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-04-28 23:14:17', '2023-04-28 23:14:17', 'voyager.users.index', NULL);
INSERT INTO `menu_items` VALUES (4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-04-28 23:14:17', '2023-04-28 23:14:17', 'voyager.roles.index', NULL);
INSERT INTO `menu_items` VALUES (5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2023-04-28 23:14:17', '2023-05-08 22:30:24', NULL, NULL);
INSERT INTO `menu_items` VALUES (6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-04-28 23:14:17', '2023-05-08 22:35:54', 'voyager.menus.index', NULL);
INSERT INTO `menu_items` VALUES (7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 3, '2023-04-28 23:14:17', '2023-05-08 22:30:24', 'voyager.database.index', NULL);
INSERT INTO `menu_items` VALUES (8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2023-04-28 23:14:17', '2023-05-08 22:30:24', 'voyager.compass.index', NULL);
INSERT INTO `menu_items` VALUES (9, 1, 'BRAED Operations', '', '_self', 'voyager-edit', '#000000', 5, 5, '2023-04-28 23:14:17', '2023-05-09 00:00:02', 'voyager.bread.index', 'null');
INSERT INTO `menu_items` VALUES (10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2023-04-28 23:14:17', '2023-05-08 22:35:51', 'voyager.settings.index', NULL);
INSERT INTO `menu_items` VALUES (13, 1, 'Machines', '', '_self', 'voyager-params', '#000000', NULL, 5, '2023-05-02 14:06:33', '2023-05-08 22:30:24', 'voyager.machines.index', 'null');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menus_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'admin', '2023-04-28 23:14:17', '2023-04-28 23:14:17');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_01_000000_add_voyager_user_fields', 1);
INSERT INTO `migrations` VALUES (4, '2016_01_01_000000_create_data_types_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_05_19_173453_create_menu_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_10_21_190000_create_roles_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_10_21_190000_create_settings_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_11_30_135954_create_permission_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_11_30_141208_create_permission_role_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_12_26_201236_data_types__add__server_side', 1);
INSERT INTO `migrations` VALUES (11, '2017_01_13_000000_add_route_to_menu_items_table', 1);
INSERT INTO `migrations` VALUES (12, '2017_01_14_005015_create_translations_table', 1);
INSERT INTO `migrations` VALUES (13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1);
INSERT INTO `migrations` VALUES (14, '2017_03_06_000000_add_controller_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_04_21_000000_add_order_to_data_rows_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_07_05_210000_add_policyname_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (17, '2017_08_05_000000_add_group_to_settings_table', 1);
INSERT INTO `migrations` VALUES (18, '2017_11_26_013050_add_user_role_relationship', 1);
INSERT INTO `migrations` VALUES (19, '2017_11_26_015000_create_user_roles_table', 1);
INSERT INTO `migrations` VALUES (20, '2018_03_11_000000_add_user_settings', 1);
INSERT INTO `migrations` VALUES (21, '2018_03_14_000000_add_details_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (22, '2018_03_16_000000_make_settings_value_nullable', 1);
INSERT INTO `migrations` VALUES (23, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (24, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (25, '2023_02_05_001539_create_audits_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `permission_role_permission_id_index`(`permission_id`) USING BTREE,
  INDEX `permission_role_role_id_index`(`role_id`) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (1, 2);
INSERT INTO `permission_role` VALUES (1, 3);
INSERT INTO `permission_role` VALUES (2, 1);
INSERT INTO `permission_role` VALUES (2, 3);
INSERT INTO `permission_role` VALUES (3, 1);
INSERT INTO `permission_role` VALUES (3, 3);
INSERT INTO `permission_role` VALUES (4, 3);
INSERT INTO `permission_role` VALUES (5, 3);
INSERT INTO `permission_role` VALUES (6, 3);
INSERT INTO `permission_role` VALUES (7, 3);
INSERT INTO `permission_role` VALUES (8, 3);
INSERT INTO `permission_role` VALUES (9, 3);
INSERT INTO `permission_role` VALUES (10, 3);
INSERT INTO `permission_role` VALUES (11, 1);
INSERT INTO `permission_role` VALUES (11, 3);
INSERT INTO `permission_role` VALUES (12, 1);
INSERT INTO `permission_role` VALUES (12, 3);
INSERT INTO `permission_role` VALUES (13, 3);
INSERT INTO `permission_role` VALUES (14, 3);
INSERT INTO `permission_role` VALUES (15, 3);
INSERT INTO `permission_role` VALUES (16, 1);
INSERT INTO `permission_role` VALUES (16, 3);
INSERT INTO `permission_role` VALUES (17, 1);
INSERT INTO `permission_role` VALUES (17, 3);
INSERT INTO `permission_role` VALUES (18, 1);
INSERT INTO `permission_role` VALUES (18, 3);
INSERT INTO `permission_role` VALUES (19, 1);
INSERT INTO `permission_role` VALUES (19, 3);
INSERT INTO `permission_role` VALUES (20, 1);
INSERT INTO `permission_role` VALUES (20, 3);
INSERT INTO `permission_role` VALUES (21, 3);
INSERT INTO `permission_role` VALUES (22, 3);
INSERT INTO `permission_role` VALUES (23, 3);
INSERT INTO `permission_role` VALUES (24, 3);
INSERT INTO `permission_role` VALUES (25, 3);
INSERT INTO `permission_role` VALUES (36, 1);
INSERT INTO `permission_role` VALUES (36, 2);
INSERT INTO `permission_role` VALUES (36, 3);
INSERT INTO `permission_role` VALUES (37, 1);
INSERT INTO `permission_role` VALUES (37, 2);
INSERT INTO `permission_role` VALUES (37, 3);
INSERT INTO `permission_role` VALUES (38, 1);
INSERT INTO `permission_role` VALUES (38, 2);
INSERT INTO `permission_role` VALUES (38, 3);
INSERT INTO `permission_role` VALUES (39, 1);
INSERT INTO `permission_role` VALUES (39, 3);
INSERT INTO `permission_role` VALUES (40, 1);
INSERT INTO `permission_role` VALUES (40, 3);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permissions_key_index`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'browse_admin', NULL, '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (2, 'browse_bread', NULL, '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (3, 'browse_database', NULL, '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (4, 'browse_media', NULL, '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (5, 'browse_compass', NULL, '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (6, 'browse_menus', 'menus', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (7, 'read_menus', 'menus', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (8, 'edit_menus', 'menus', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (9, 'add_menus', 'menus', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (10, 'delete_menus', 'menus', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (11, 'browse_roles', 'roles', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (12, 'read_roles', 'roles', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (13, 'edit_roles', 'roles', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (14, 'add_roles', 'roles', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (15, 'delete_roles', 'roles', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (16, 'browse_users', 'users', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (17, 'read_users', 'users', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (18, 'edit_users', 'users', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (19, 'add_users', 'users', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (20, 'delete_users', 'users', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (21, 'browse_settings', 'settings', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (22, 'read_settings', 'settings', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (23, 'edit_settings', 'settings', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (24, 'add_settings', 'settings', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (25, 'delete_settings', 'settings', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `permissions` VALUES (36, 'browse_machines', 'machines', '2023-05-02 14:06:33', '2023-05-02 14:06:33');
INSERT INTO `permissions` VALUES (37, 'read_machines', 'machines', '2023-05-02 14:06:33', '2023-05-02 14:06:33');
INSERT INTO `permissions` VALUES (38, 'edit_machines', 'machines', '2023-05-02 14:06:33', '2023-05-02 14:06:33');
INSERT INTO `permissions` VALUES (39, 'add_machines', 'machines', '2023-05-02 14:06:33', '2023-05-02 14:06:33');
INSERT INTO `permissions` VALUES (40, 'delete_machines', 'machines', '2023-05-02 14:06:33', '2023-05-02 14:06:33');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'Administrator', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `roles` VALUES (2, 'user', 'Normal User', '2023-04-28 23:14:17', '2023-04-28 23:14:17');
INSERT INTO `roles` VALUES (3, 'super admin', 'Super Admin', '2023-05-11 22:43:29', '2023-05-11 22:43:29');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'site.title', 'Site Title', 'Smart ofiice', '', 'text', 1, 'Site');
INSERT INTO `settings` VALUES (2, 'site.description', 'Site Description', '.Welcome to Smart office credential', '', 'text', 2, 'Site');
INSERT INTO `settings` VALUES (3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site');
INSERT INTO `settings` VALUES (5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin');
INSERT INTO `settings` VALUES (6, 'admin.title', 'Admin Title', 'Smart office', '', 'text', 1, 'Admin');
INSERT INTO `settings` VALUES (7, 'admin.description', 'Admin Description', 'Bienvenue dans la configuration', '', 'text', 2, 'Admin');
INSERT INTO `settings` VALUES (8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin');
INSERT INTO `settings` VALUES (9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `translations_table_name_column_name_foreign_key_locale_unique`(`table_name`, `column_name`, `foreign_key`, `locale`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `user_roles_user_id_index`(`user_id`) USING BTREE,
  INDEX `user_roles_role_id_index`(`role_id`) USING BTREE,
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (5, 3);
INSERT INTO `user_roles` VALUES (6, 2);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'users/default.png',
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `settings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `users_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'Admin', 'admin@gmail.com', 'users\\May2023\\YSAwhcPmxB8AQPqDhugy.png', NULL, '$2y$10$qoL.BV.88x5.pOYlzaeTaeOMgibJd0Cawr1yUyHnETKxy3kpE4XcK', 'jipGSxw6Nn3iYwwVFQftdd8OI2HDDwGcJuHl8rIZX9EmvtZRZ3VthCmkcN95', '{\"locale\":\"en\"}', '2023-04-29 02:59:40', '2023-05-10 23:05:33');
INSERT INTO `users` VALUES (5, 3, 'Super Admin', 'superadmin@gmail.com', 'users/default.png', NULL, '$2y$10$WqjXdBshvxCfyEE8k.LUeuoWRBJUYnZ8.5Baz9RySWs7ZgWhKILzC', NULL, '{\"locale\":\"fr\"}', '2023-05-11 22:45:59', '2023-05-11 22:45:59');
INSERT INTO `users` VALUES (6, 2, 'Anas', 'a.fahi@gmail.com', 'users/default.png', NULL, '$2y$10$B4M8wCFxvBk4hagNtVl.GuVPmQzgohVMb8LvSCCrmzTPFuqS3LZ7.', NULL, '{\"locale\":\"fr\"}', '2023-07-13 21:33:19', '2023-07-13 21:33:19');

SET FOREIGN_KEY_CHECKS = 1;
