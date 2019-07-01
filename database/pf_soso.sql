/*
 Navicat MySQL Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : pf_soso

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 28/06/2019 16:06:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '系统管理', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, '管理员管理', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, '用户管理', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色管理', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限管理', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单管理', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 1, 0, '前台系统管理', 'fa-bars', 'reception_system', NULL, '2019-06-28 07:18:57', '2019-06-28 07:20:39');
INSERT INTO `admin_menu` VALUES (9, 1, 0, '模块管理', 'fa-bars', 'modules', NULL, '2019-06-28 07:22:00', '2019-06-28 07:22:00');
INSERT INTO `admin_menu` VALUES (10, 0, 0, '搜索管理', 'fa-anchor', NULL, NULL, '2019-06-28 07:45:38', '2019-06-28 07:46:00');
INSERT INTO `admin_menu` VALUES (11, 10, 0, '搜索引擎管理', 'fa-bars', 'module/engine', NULL, '2019-06-28 07:46:22', '2019-06-28 07:47:35');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:08:47', '2019-06-28 07:08:47');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:08:51', '2019-06-28 07:08:51');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:09:17', '2019-06-28 07:09:17');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$yUK.FYGbMnPh6PnrwjBCO.\\/pO1Vku6aLthVn5lcPmdKBGtp22xxX.\",\"password_confirmation\":\"$2y$10$yUK.FYGbMnPh6PnrwjBCO.\\/pO1Vku6aLthVn5lcPmdKBGtp22xxX.\",\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\"}', '2019-06-28 07:10:11', '2019-06-28 07:10:11');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-28 07:10:12', '2019-06-28 07:10:12');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-28 07:11:36', '2019-06-28 07:11:36');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:11:43', '2019-06-28 07:11:43');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:11:50', '2019-06-28 07:11:50');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:12:48', '2019-06-28 07:12:48');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:12:51', '2019-06-28 07:12:51');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"pfinal\",\"password\":\"$2y$10$yUK.FYGbMnPh6PnrwjBCO.\\/pO1Vku6aLthVn5lcPmdKBGtp22xxX.\",\"password_confirmation\":\"$2y$10$yUK.FYGbMnPh6PnrwjBCO.\\/pO1Vku6aLthVn5lcPmdKBGtp22xxX.\",\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\"}', '2019-06-28 07:13:01', '2019-06-28 07:13:01');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-06-28 07:13:01', '2019-06-28 07:13:01');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:13:05', '2019-06-28 07:13:05');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:13:35', '2019-06-28 07:13:35');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:14:04', '2019-06-28 07:14:04');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:14:15', '2019-06-28 07:14:15');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:14:18', '2019-06-28 07:14:18');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:15:38', '2019-06-28 07:15:38');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:15:41', '2019-06-28 07:15:41');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:48', '2019-06-28 07:15:48');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:53', '2019-06-28 07:15:53');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:55', '2019-06-28 07:15:55');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:56', '2019-06-28 07:15:56');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:57', '2019-06-28 07:15:57');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:58', '2019-06-28 07:15:58');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:59', '2019-06-28 07:15:59');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:15:59', '2019-06-28 07:15:59');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:17:51', '2019-06-28 07:17:51');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:17:53', '2019-06-28 07:17:53');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:17:54', '2019-06-28 07:17:54');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:17:55', '2019-06-28 07:17:55');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:18:00', '2019-06-28 07:18:00');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:18:06', '2019-06-28 07:18:06');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u524d\\u53f0\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"web\",\"roles\":[null],\"permission\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\"}', '2019-06-28 07:18:57', '2019-06-28 07:18:57');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:18:57', '2019-06-28 07:18:57');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:19:00', '2019-06-28 07:19:00');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:19:01', '2019-06-28 07:19:01');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:19:02', '2019-06-28 07:19:02');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:19:03', '2019-06-28 07:19:03');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-28 07:20:00', '2019-06-28 07:20:00');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:20:17', '2019-06-28 07:20:17');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:20:20', '2019-06-28 07:20:20');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u524d\\u53f0\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"reception_system\",\"roles\":[null],\"permission\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\\/auth\\/menu\"}', '2019-06-28 07:20:39', '2019-06-28 07:20:39');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:20:40', '2019-06-28 07:20:40');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:20:48', '2019-06-28 07:20:48');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:20:52', '2019-06-28 07:20:52');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:21:44', '2019-06-28 07:21:44');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"1\",\"title\":\"\\u6a21\\u5757\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"modules\",\"roles\":[null],\"permission\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\"}', '2019-06-28 07:22:00', '2019-06-28 07:22:00');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:22:00', '2019-06-28 07:22:00');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:22:04', '2019-06-28 07:22:04');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/modules', 'GET', '127.0.0.1', '[]', '2019-06-28 07:23:23', '2019-06-28 07:23:23');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:23:30', '2019-06-28 07:23:30');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/modules', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:23:32', '2019-06-28 07:23:32');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/reception_system', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:23:33', '2019-06-28 07:23:33');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-28 07:27:25', '2019-06-28 07:27:25');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFSoSo\\u641c\\u7d22\",\"keywords\":\"PFinal, \\u641c\\u7d22\\u5f15\\u64ce,\\u641c\\u7d22\\u5f15\\u64ce\\u5408\\u96c6\",\"description\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\"}', '2019-06-28 07:28:56', '2019-06-28 07:28:56');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-28 07:28:56', '2019-06-28 07:28:56');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFSoSo\\u641c\\u7d22\",\"keywords\":\"PFinal, \\u641c\\u7d22\\u5f15\\u64ce,\\u641c\\u7d22\\u5f15\\u64ce\\u5408\\u96c6\",\"description\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\"}', '2019-06-28 07:29:58', '2019-06-28 07:29:58');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-28 07:29:58', '2019-06-28 07:29:58');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/reception_system/config_up', 'POST', '127.0.0.1', '{\"title\":\"PFSoSo\\u641c\\u7d22\",\"keywords\":\"PFinal, \\u641c\\u7d22\\u5f15\\u64ce,\\u641c\\u7d22\\u5f15\\u64ce\\u5408\\u96c6\",\"description\":\"PFSoSo\\u4e00\\u4e2a\\u6781\\u7b80\\u5b9e\\u7528\\u7684\\u641c\\u7d22\\u5f15\\u64ce\\u5408\\u96c6\",\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\"}', '2019-06-28 07:31:13', '2019-06-28 07:31:13');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/reception_system', 'GET', '127.0.0.1', '[]', '2019-06-28 07:31:13', '2019-06-28 07:31:13');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/modules', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:31:29', '2019-06-28 07:31:29');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/modules', 'GET', '127.0.0.1', '[]', '2019-06-28 07:32:04', '2019-06-28 07:32:04');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/modules/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:32:09', '2019-06-28 07:32:09');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/modules', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:32:13', '2019-06-28 07:32:13');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/modules/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:32:16', '2019-06-28 07:32:16');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/modules', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:32:18', '2019-06-28 07:32:18');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/modules/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:32:20', '2019-06-28 07:32:20');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/modules', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:32:21', '2019-06-28 07:32:21');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/modules', 'GET', '127.0.0.1', '[]', '2019-06-28 07:34:01', '2019-06-28 07:34:01');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/modules', 'GET', '127.0.0.1', '[]', '2019-06-28 07:35:54', '2019-06-28 07:35:54');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/modules/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:35:57', '2019-06-28 07:35:57');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/modules', 'POST', '127.0.0.1', '{\"title\":\"\\u641c\\u7d22\\u5f15\\u64ce\\u7ba1\\u7406\",\"name\":\"Engine\",\"version\":\"vBeta0.002\",\"package\":\"vBeta0.002\",\"local\":\"1\",\"status\":\"0\",\"is_nav\":\"0\",\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\\/modules\"}', '2019-06-28 07:36:20', '2019-06-28 07:36:20');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:37:18', '2019-06-28 07:37:18');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/modules', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:37:24', '2019-06-28 07:37:24');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:45:22', '2019-06-28 07:45:22');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u641c\\u7d22\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\"}', '2019-06-28 07:45:38', '2019-06-28 07:45:38');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:45:38', '2019-06-28 07:45:38');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:45:44', '2019-06-28 07:45:44');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:45:50', '2019-06-28 07:45:50');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u641c\\u7d22\\u7ba1\\u7406\",\"icon\":\"fa-anchor\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\\/auth\\/menu\"}', '2019-06-28 07:46:00', '2019-06-28 07:46:00');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:46:00', '2019-06-28 07:46:00');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:46:06', '2019-06-28 07:46:06');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u641c\\u7d22\\u5f15\\u64ce\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"engine\",\"roles\":[null],\"permission\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\"}', '2019-06-28 07:46:22', '2019-06-28 07:46:22');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:46:22', '2019-06-28 07:46:22');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:46:26', '2019-06-28 07:46:26');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-06-28 07:47:19', '2019-06-28 07:47:19');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:47:26', '2019-06-28 07:47:26');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 07:47:29', '2019-06-28 07:47:29');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u641c\\u7d22\\u5f15\\u64ce\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"module\\/engine\",\"roles\":[null],\"permission\":null,\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\\/auth\\/menu\"}', '2019-06-28 07:47:35', '2019-06-28 07:47:35');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:47:35', '2019-06-28 07:47:35');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-06-28 07:47:41', '2019-06-28 07:47:41');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/module/engine', 'GET', '127.0.0.1', '[]', '2019-06-28 07:49:25', '2019-06-28 07:49:25');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/module/engine', 'GET', '127.0.0.1', '[]', '2019-06-28 07:49:37', '2019-06-28 07:49:37');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/module/engine', 'GET', '127.0.0.1', '[]', '2019-06-28 07:54:46', '2019-06-28 07:54:46');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 07:55:56', '2019-06-28 07:55:56');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 07:56:27', '2019-06-28 07:56:27');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 07:57:36', '2019-06-28 07:57:36');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 07:59:10', '2019-06-28 07:59:10');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 07:59:22', '2019-06-28 07:59:22');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 07:59:37', '2019-06-28 07:59:37');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 08:02:00', '2019-06-28 08:02:00');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/module/engine', 'GET', '127.0.0.1', '[]', '2019-06-28 08:02:42', '2019-06-28 08:02:42');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-06-28 08:02:48', '2019-06-28 08:02:48');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/module/engine', 'POST', '127.0.0.1', '{\"name\":\"\\u767e\\u5ea6\",\"api\":\"https:\\/\\/www.baidu.com\\/baidu?word=\",\"status\":\"0\",\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\\/module\\/engine\"}', '2019-06-28 08:04:46', '2019-06-28 08:04:46');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 08:04:47', '2019-06-28 08:04:47');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/module/engine/create', 'GET', '127.0.0.1', '[]', '2019-06-28 08:05:15', '2019-06-28 08:05:15');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/module/engine', 'POST', '127.0.0.1', '{\"name\":\"\\u767e\\u5ea6\",\"api\":\"https:\\/\\/www.baidu.com\\/baidu?word=\",\"statue\":\"0\",\"_token\":\"rx4tvN24ElIalyMOI8ciFanCFJpt34tgRDeSygdw\",\"_previous_\":\"http:\\/\\/dev.pf_soso.com\\/admin\\/module\\/engine\"}', '2019-06-28 08:05:22', '2019-06-28 08:05:22');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/module/engine', 'GET', '127.0.0.1', '[]', '2019-06-28 08:05:23', '2019-06-28 08:05:23');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, '超级管理员', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, '', '系统管理', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, '登陆', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, '用户管理', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, '操作日志', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2019-06-28 07:08:37', '2019-06-28 07:08:37');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$yUK.FYGbMnPh6PnrwjBCO./pO1Vku6aLthVn5lcPmdKBGtp22xxX.', 'pfinal', 'images/timg (1).jpg', NULL, '2019-06-28 07:08:37', '2019-06-28 07:13:01');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告名称',
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告标识',
  `position` int(11) NOT NULL COMMENT '广告位置',
  `status` tinyint(4) NOT NULL COMMENT '广告状态',
  `redirect_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '跳转连接',
  `desc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `position_id`(`position`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for banner_position
-- ----------------------------
DROP TABLE IF EXISTS `banner_position`;
CREATE TABLE `banner_position`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置名称',
  `position_sn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置标识',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for engine
-- ----------------------------
DROP TABLE IF EXISTS `engine`;
CREATE TABLE `engine`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '搜索引擎管理',
  `api` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '搜索引擎url',
  `statue` tinyint(4) NOT NULL DEFAULT 1 COMMENT '上线或者下线',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engine
-- ----------------------------
INSERT INTO `engine` VALUES (1, '百度', 'https://www.baidu.com/baidu?word=', 0, '2019-06-28 08:05:22', '2019-06-28 08:05:22');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_06_10_080312_create_table_system_config', 1);
INSERT INTO `migrations` VALUES (5, '2019_06_10_081908_create_table_template_pack', 1);
INSERT INTO `migrations` VALUES (6, '2019_06_11_032432_create_table_modules', 1);
INSERT INTO `migrations` VALUES (7, '2019_06_17_051034_create_table_banner', 1);
INSERT INTO `migrations` VALUES (8, '2019_06_17_055004_create_table_banner_postion', 1);
INSERT INTO `migrations` VALUES (9, '2019_06_28_074140_create_table_engine', 2);

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块名称',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块标识',
  `version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '版本号',
  `local` tinyint(4) NOT NULL COMMENT '本地模块',
  `is_nav` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否显示导航',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否上线',
  `package` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块配置',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `modules_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES (1, '搜索引擎管理', 'Engine', 'vBeta0.002', 1, 0, 0, 'vBeta0.002', '2019-06-28 07:36:21', '2019-06-28 07:36:21');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PFinal社区' COMMENT '网站标题',
  `keywords` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PFinal社区' COMMENT '网站关键字',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pfinalClub 致力于提供优质PHP中文学习资源,Laravel、Yii、ThinkPHP等框架学习资源、中文视频教程、项目实战教程' COMMENT '站点描述',
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.jpg' COMMENT '站点logo',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_config_template_id_index`(`template_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES (1, 'PFSoSo搜索', 'PFinal, 搜索引擎,搜索引擎合集', 'PFSoSo一个极简实用的搜索引擎合集', 'logo/2019-06-28-07-31-13-5d15c24151352.ico', 0, NULL, '2019-06-28 07:31:13');

-- ----------------------------
-- Table structure for template_pack
-- ----------------------------
DROP TABLE IF EXISTS `template_pack`;
CREATE TABLE `template_pack`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板名称',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板标识',
  `local` tinyint(4) NOT NULL COMMENT '本地模板',
  `package` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板配置',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
