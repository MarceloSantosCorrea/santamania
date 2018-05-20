/*
 Navicat Premium Data Transfer

 Source Server         : ovh.maximweb.com.br
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 144.217.94.167:3306
 Source Schema         : santamania

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 14/05/2018 14:08:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for checklist_products
-- ----------------------------
DROP TABLE IF EXISTS `checklist_products`;
CREATE TABLE `checklist_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checklist_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `total` int(10) unsigned DEFAULT NULL,
  `quantities` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklist_products_checklist_id_foreign` (`checklist_id`),
  KEY `checklist_products_product_id_foreign` (`product_id`),
  CONSTRAINT `checklist_products_checklist_id_foreign` FOREIGN KEY (`checklist_id`) REFERENCES `checklists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `checklist_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for checklist_totals
-- ----------------------------
DROP TABLE IF EXISTS `checklist_totals`;
CREATE TABLE `checklist_totals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checklist_id` int(10) unsigned NOT NULL,
  `checklist_product_id` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `difference` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklist_totals_checklist_id_foreign` (`checklist_id`),
  KEY `checklist_totals_checklist_product_id_foreign` (`checklist_product_id`),
  CONSTRAINT `checklist_totals_checklist_id_foreign` FOREIGN KEY (`checklist_id`) REFERENCES `checklists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `checklist_totals_checklist_product_id_foreign` FOREIGN KEY (`checklist_product_id`) REFERENCES `checklist_products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for checklist_warehouse_quantities
-- ----------------------------
DROP TABLE IF EXISTS `checklist_warehouse_quantities`;
CREATE TABLE `checklist_warehouse_quantities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(10) unsigned NOT NULL,
  `checklist_product_id` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checklist_warehouse_quantities_warehouse_id_foreign` (`warehouse_id`),
  KEY `checklist_warehouse_quantities_checklist_product_id_foreign` (`checklist_product_id`),
  CONSTRAINT `checklist_warehouse_quantities_checklist_product_id_foreign` FOREIGN KEY (`checklist_product_id`) REFERENCES `checklist_products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `checklist_warehouse_quantities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for checklists
-- ----------------------------
DROP TABLE IF EXISTS `checklists`;
CREATE TABLE `checklists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (81, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (82, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (83, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (84, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (85, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (86, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (87, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (88, '2017_12_08_185627_create_product_categories_table', 1);
INSERT INTO `migrations` VALUES (89, '2017_12_09_034641_create_warehouses_table', 1);
INSERT INTO `migrations` VALUES (90, '2017_12_09_035229_create_units_measures_table', 1);
INSERT INTO `migrations` VALUES (91, '2017_12_09_070015_create_products_table', 1);
INSERT INTO `migrations` VALUES (92, '2017_12_11_031609_create_productions_table', 1);
INSERT INTO `migrations` VALUES (93, '2017_12_11_031610_create_checklists_table', 1);
INSERT INTO `migrations` VALUES (94, '2017_12_11_090606_create_checklist_products_table', 1);
INSERT INTO `migrations` VALUES (95, '2017_12_11_090644_create_checklist_warehouse_quantities_table', 1);
INSERT INTO `migrations` VALUES (96, '2017_12_16_122221_create_checklist_totals_table', 1);
INSERT INTO `migrations` VALUES (98, '2018_05_07_174844_create_product_daily_checklist_table', 2);
INSERT INTO `migrations` VALUES (99, '2018_05_08_163141_create_tasks_table', 3);
COMMIT;

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
BEGIN;
INSERT INTO `oauth_access_tokens` VALUES ('35a9df1f04df12c74e9dd1852066f668fc7760b3bc57f95690642635b31c08651ae0c5e84b12e0f4', 2, 2, NULL, '[]', 0, '2018-04-17 23:08:58', '2018-04-17 23:08:58', '2019-04-17 23:08:58');
INSERT INTO `oauth_access_tokens` VALUES ('b54def0c49389f6d0a710194edfa2b8a9865dd8cfe3ffa52849dd09eaba2d988b9483770dfb9c256', 2, 2, NULL, '[]', 0, '2018-04-17 22:49:53', '2018-04-17 22:49:53', '2019-04-17 22:49:53');
COMMIT;

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
BEGIN;
INSERT INTO `oauth_clients` VALUES (1, NULL, 'LaravelHelloWorld Personal Access Client', 'aZdl2z1CnKVwKTg2alljUTQU06zTrr7tJbYEjKz8', 'http://localhost', 1, 0, 0, '2018-04-17 22:48:38', '2018-04-17 22:48:38');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'LaravelHelloWorld Password Grant Client', '6BCAqE1gDbac95vu50LiKsYwNrD6uRuNqu9i0ULQ', 'http://localhost', 0, 1, 0, '2018-04-17 22:48:38', '2018-04-17 22:48:38');
COMMIT;

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
BEGIN;
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2018-04-17 22:48:38', '2018-04-17 22:48:38');
COMMIT;

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
BEGIN;
INSERT INTO `oauth_refresh_tokens` VALUES ('275823d91ac9d1095ee1f4ccc77c2f35d41ee4f41d8a6bfd52f5fda90a66bad0b0d9c13979bfa5f5', '35a9df1f04df12c74e9dd1852066f668fc7760b3bc57f95690642635b31c08651ae0c5e84b12e0f4', 0, '2019-04-17 23:08:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('9d69f51a5ce116203849d380ef44e6eb4cbbacddb08ea01b7ef02875ee452ab4c31914e385ee56c3', 'b54def0c49389f6d0a710194edfa2b8a9865dd8cfe3ffa52849dd09eaba2d988b9483770dfb9c256', 0, '2019-04-17 22:49:53');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
BEGIN;
INSERT INTO `product_categories` VALUES (1, 'Fatiados', 1, '2018-04-17 22:47:15', '2018-04-17 22:47:15');
INSERT INTO `product_categories` VALUES (2, 'Congelados', 1, '2018-04-17 22:47:15', '2018-04-17 22:47:15');
INSERT INTO `product_categories` VALUES (3, 'Processados', 1, '2018-04-17 22:47:15', '2018-04-17 22:47:15');
INSERT INTO `product_categories` VALUES (4, 'Molhos', 1, '2018-05-01 21:49:38', '2018-05-01 21:49:38');
COMMIT;

-- ----------------------------
-- Table structure for product_daily_checklist
-- ----------------------------
DROP TABLE IF EXISTS `product_daily_checklist`;
CREATE TABLE `product_daily_checklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `days` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_daily_checklist_product_id_foreign` (`product_id`),
  CONSTRAINT `product_daily_checklist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_daily_checklist
-- ----------------------------
BEGIN;
INSERT INTO `product_daily_checklist` VALUES (1, 1, '[4,6,8]', '2018-05-08 11:05:06', '2018-05-08 23:50:21');
INSERT INTO `product_daily_checklist` VALUES (2, 2, '[4,5,5]', '2018-05-08 11:05:06', '2018-05-11 17:13:20');
INSERT INTO `product_daily_checklist` VALUES (3, 4, '[2,2,1]', '2018-05-08 11:05:06', '2018-05-08 23:50:21');
INSERT INTO `product_daily_checklist` VALUES (7, 11, '[0,0,0]', '2018-05-11 17:08:02', '2018-05-11 17:08:02');
COMMIT;

-- ----------------------------
-- Table structure for productions
-- ----------------------------
DROP TABLE IF EXISTS `productions`;
CREATE TABLE `productions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productions_product_id_foreign` (`product_id`),
  CONSTRAINT `productions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(10) unsigned NOT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `units_measure_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_category_id_foreign` (`product_category_id`),
  KEY `products_units_measure_id_foreign` (`units_measure_id`),
  CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_units_measure_id_foreign` FOREIGN KEY (`units_measure_id`) REFERENCES `units_measures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Strogonoff', 1, 2, 1, '2018-04-17 22:47:15', '2018-04-17 22:47:15');
INSERT INTO `products` VALUES (2, 'Frango', 1, 2, 2, '2018-04-26 01:35:55', '2018-04-26 01:35:55');
INSERT INTO `products` VALUES (4, 'Coração de Frango', 1, 4, 2, '2018-05-01 21:50:06', '2018-05-01 21:50:06');
INSERT INTO `products` VALUES (11, 'Molho de Tomate', 1, 4, 2, '2018-05-11 17:08:02', '2018-05-11 17:08:02');
COMMIT;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_product_id_foreign` (`product_id`),
  CONSTRAINT `tasks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for units_measures
-- ----------------------------
DROP TABLE IF EXISTS `units_measures`;
CREATE TABLE `units_measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of units_measures
-- ----------------------------
BEGIN;
INSERT INTO `units_measures` VALUES (1, 'Quilograma', 'Kg', '2018-04-17 22:47:15', '2018-04-17 22:47:15');
INSERT INTO `units_measures` VALUES (2, 'Balde', 'Bl', '2018-04-17 22:47:15', '2018-04-17 22:47:15');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `active` int(10) unsigned NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Admin', 'Admin', 'Admin Admin', 'admin@admin.com', '$2y$10$dudFySz5qR9ddVzMgjJ9XeeEv1p1Vud2ZUE6ucx5jDSXo6seokBjm', 1, 1, 'RQjBPdVgfOoSVkj0Fz1P19IQrPDR3teriKuGU2IsHOPXibQklx1JEKDdKtje', '2018-04-17 22:47:15', '2018-05-09 14:26:26');
INSERT INTO `users` VALUES (2, 'Marcelo', 'Corrêa', 'Marcelo Corrêa', 'marcelocorrea229@gmail.com', '$2y$10$4AOYHCA9ZaU/ovoOFMtpveKWPjCANNWC1i4o8L0cfVGyViyBgHBG.', 1, 1, '1kkuFJpmW4yHKnhBFzpwDauLw50QbI7cXW3PNFQBt65UmS46C7RBG6Tdgcuz', '2018-04-17 22:47:15', '2018-04-17 22:47:15');
COMMIT;

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
BEGIN;
INSERT INTO `warehouses` VALUES (1, 'Câmara Fria', 1, '2018-04-17 22:47:15', '2018-04-17 22:47:15');
INSERT INTO `warehouses` VALUES (2, 'Geladeira Produção', 1, '2018-04-17 22:47:15', '2018-04-17 22:47:15');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
