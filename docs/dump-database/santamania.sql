/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : santamania

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 21/05/2018 17:47:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acl_permission_acl_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_permission_acl_role`;
CREATE TABLE `acl_permission_acl_role` (
  `acl_permission_id` int(10) unsigned NOT NULL,
  `acl_role_id` int(10) unsigned NOT NULL,
  KEY `acl_permission_acl_role_acl_permission_id_foreign` (`acl_permission_id`),
  KEY `acl_permission_acl_role_acl_role_id_foreign` (`acl_role_id`),
  CONSTRAINT `acl_permission_acl_role_acl_permission_id_foreign` FOREIGN KEY (`acl_permission_id`) REFERENCES `acl_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `acl_permission_acl_role_acl_role_id_foreign` FOREIGN KEY (`acl_role_id`) REFERENCES `acl_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of acl_permission_acl_role
-- ----------------------------
BEGIN;
INSERT INTO `acl_permission_acl_role` VALUES (1, 1);
INSERT INTO `acl_permission_acl_role` VALUES (2, 1);
INSERT INTO `acl_permission_acl_role` VALUES (3, 1);
INSERT INTO `acl_permission_acl_role` VALUES (4, 1);
INSERT INTO `acl_permission_acl_role` VALUES (5, 1);
INSERT INTO `acl_permission_acl_role` VALUES (6, 1);
INSERT INTO `acl_permission_acl_role` VALUES (7, 1);
INSERT INTO `acl_permission_acl_role` VALUES (8, 1);
INSERT INTO `acl_permission_acl_role` VALUES (9, 1);
INSERT INTO `acl_permission_acl_role` VALUES (10, 1);
INSERT INTO `acl_permission_acl_role` VALUES (11, 1);
INSERT INTO `acl_permission_acl_role` VALUES (12, 1);
INSERT INTO `acl_permission_acl_role` VALUES (13, 1);
INSERT INTO `acl_permission_acl_role` VALUES (14, 1);
INSERT INTO `acl_permission_acl_role` VALUES (15, 1);
INSERT INTO `acl_permission_acl_role` VALUES (16, 1);
INSERT INTO `acl_permission_acl_role` VALUES (17, 1);
INSERT INTO `acl_permission_acl_role` VALUES (18, 1);
INSERT INTO `acl_permission_acl_role` VALUES (19, 1);
INSERT INTO `acl_permission_acl_role` VALUES (20, 1);
INSERT INTO `acl_permission_acl_role` VALUES (21, 1);
INSERT INTO `acl_permission_acl_role` VALUES (22, 1);
INSERT INTO `acl_permission_acl_role` VALUES (23, 1);
INSERT INTO `acl_permission_acl_role` VALUES (24, 1);
INSERT INTO `acl_permission_acl_role` VALUES (25, 1);
INSERT INTO `acl_permission_acl_role` VALUES (26, 1);
INSERT INTO `acl_permission_acl_role` VALUES (27, 1);
INSERT INTO `acl_permission_acl_role` VALUES (28, 1);
INSERT INTO `acl_permission_acl_role` VALUES (29, 1);
INSERT INTO `acl_permission_acl_role` VALUES (30, 1);
INSERT INTO `acl_permission_acl_role` VALUES (31, 1);
INSERT INTO `acl_permission_acl_role` VALUES (32, 1);
INSERT INTO `acl_permission_acl_role` VALUES (33, 1);
INSERT INTO `acl_permission_acl_role` VALUES (34, 1);
INSERT INTO `acl_permission_acl_role` VALUES (35, 1);
INSERT INTO `acl_permission_acl_role` VALUES (36, 1);
INSERT INTO `acl_permission_acl_role` VALUES (37, 1);
INSERT INTO `acl_permission_acl_role` VALUES (38, 1);
INSERT INTO `acl_permission_acl_role` VALUES (39, 1);
INSERT INTO `acl_permission_acl_role` VALUES (40, 1);
INSERT INTO `acl_permission_acl_role` VALUES (41, 1);
INSERT INTO `acl_permission_acl_role` VALUES (42, 1);
INSERT INTO `acl_permission_acl_role` VALUES (43, 1);
INSERT INTO `acl_permission_acl_role` VALUES (44, 1);
INSERT INTO `acl_permission_acl_role` VALUES (45, 1);
INSERT INTO `acl_permission_acl_role` VALUES (46, 1);
INSERT INTO `acl_permission_acl_role` VALUES (47, 1);
INSERT INTO `acl_permission_acl_role` VALUES (48, 1);
INSERT INTO `acl_permission_acl_role` VALUES (49, 1);
INSERT INTO `acl_permission_acl_role` VALUES (50, 1);
INSERT INTO `acl_permission_acl_role` VALUES (51, 1);
INSERT INTO `acl_permission_acl_role` VALUES (52, 1);
INSERT INTO `acl_permission_acl_role` VALUES (53, 1);
COMMIT;

-- ----------------------------
-- Table structure for acl_permissions
-- ----------------------------
DROP TABLE IF EXISTS `acl_permissions`;
CREATE TABLE `acl_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of acl_permissions
-- ----------------------------
BEGIN;
INSERT INTO `acl_permissions` VALUES (1, 'home', 'Home', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (2, 'list_users', 'Listar Usuários', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (3, 'create_users', 'Criar Usuários', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (4, 'edit_users', 'Editar Usuários', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (5, 'show_users', 'Visualizar Usuários', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (6, 'delete_users', 'Deletar Usuários', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (7, 'list_product_categories', 'Listar Categoria de Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (8, 'create_product_categories', 'Criar Categoria de Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (9, 'edit_product_categories', 'Editar Categoria de Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (10, 'show_product_categories', 'Visualizar Categoria de Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (11, 'delete_product_categories', 'Deletar Categoria de Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (12, 'list_warehouses', 'Listar Locais de Armazenamento', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (13, 'create_warehouses', 'Criar Locais de Armazenamento', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (14, 'edit_warehouses', 'Editar Locais de Armazenamento', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (15, 'show_warehouses', 'Visualizar Locais de Armazenamento', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (16, 'delete_warehouses', 'Deletar Locais de Armazenamento', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (17, 'list_units_measures', 'Listar Unidades de Medida', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (18, 'create_units_measures', 'Criar Unidades de Medida', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (19, 'edit_units_measures', 'Editar Unidades de Medida', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (20, 'show_units_measures', 'Visualizar Unidades de Medida', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (21, 'delete_units_measures', 'Deletar Unidades de Medida', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (22, 'list_products', 'Listar Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (23, 'create_products', 'Criar Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (24, 'edit_products', 'Editar Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (25, 'show_products', 'Visualizar Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (26, 'delete_products', 'Deletar Produtos', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (27, 'list_productions', 'Listar Produção', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (28, 'create_productions', 'Criar Produção', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (29, 'edit_productions', 'Editar Produção', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (30, 'show_productions', 'Visualizar Produção', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (31, 'delete_productions', 'Deletar Produção', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (32, 'list_checklists', 'Listar Checklists', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (33, 'create_checklists', 'Criar Checklists', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (34, 'edit_checklists', 'Editar Checklists', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (35, 'show_checklists', 'Visualizar Checklists', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (36, 'close_checklists', 'Fechar Checklists', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (37, 'delete_checklists', 'Deletar Checklists', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (38, 'list_tasks', 'Listar Tarefas', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (39, 'create_tasks', 'Criar Tarefas', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (40, 'edit_tasks', 'Editar Tarefas', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (41, 'show_tasks', 'Visualizar Tarefas', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (42, 'finalize', 'Finalizar Tarefas', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (43, 'delete_tasks', 'Deletar Tarefas', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (44, 'list_acl_roles', 'Listar Perfis', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (45, 'create_acl_roles', 'Criar Perfis', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (46, 'edit_acl_roles', 'Editar Perfis', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (47, 'show_acl_roles', 'Visualizar Perfis', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (48, 'delete_acl_roles', 'Deletar Perfis', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (49, 'list_acl_permissions', 'Listar Permissões', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (50, 'create_acl_permissions', 'Criar Permissões', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (51, 'edit_acl_permissions', 'Editar Permissões', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (52, 'show_acl_permissions', 'Visualizar Permissões', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_permissions` VALUES (53, 'delete_acl_permissions', 'Deletar Permissões', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
COMMIT;

-- ----------------------------
-- Table structure for acl_role_user
-- ----------------------------
DROP TABLE IF EXISTS `acl_role_user`;
CREATE TABLE `acl_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `acl_role_id` int(10) unsigned NOT NULL,
  KEY `acl_role_user_user_id_foreign` (`user_id`),
  KEY `acl_role_user_acl_role_id_foreign` (`acl_role_id`),
  CONSTRAINT `acl_role_user_acl_role_id_foreign` FOREIGN KEY (`acl_role_id`) REFERENCES `acl_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `acl_role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of acl_role_user
-- ----------------------------
BEGIN;
INSERT INTO `acl_role_user` VALUES (1, 1);
INSERT INTO `acl_role_user` VALUES (2, 1);
COMMIT;

-- ----------------------------
-- Table structure for acl_roles
-- ----------------------------
DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE `acl_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of acl_roles
-- ----------------------------
BEGIN;
INSERT INTO `acl_roles` VALUES (1, 'admin', 'Administrador', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_roles` VALUES (2, 'gerente', 'Gerente de Produção', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_roles` VALUES (3, 'cozinheiro', 'Cozinheiro', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `acl_roles` VALUES (4, 'pizzaiolo', 'Pizzaiolo', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
COMMIT;

-- ----------------------------
-- Table structure for checklist_products
-- ----------------------------
DROP TABLE IF EXISTS `checklist_products`;
CREATE TABLE `checklist_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checklist_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `total` decimal(9,1) unsigned DEFAULT NULL,
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
  `total` decimal(9,1) unsigned NOT NULL,
  `difference` decimal(9,1) unsigned NOT NULL,
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
  `quantity` decimal(9,1) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (161, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (162, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (163, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (164, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (165, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (166, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (167, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (168, '2017_12_08_185627_create_product_categories_table', 1);
INSERT INTO `migrations` VALUES (169, '2017_12_09_034641_create_warehouses_table', 1);
INSERT INTO `migrations` VALUES (170, '2017_12_09_035229_create_units_measures_table', 1);
INSERT INTO `migrations` VALUES (171, '2017_12_09_070015_create_products_table', 1);
INSERT INTO `migrations` VALUES (172, '2017_12_11_031609_create_productions_table', 1);
INSERT INTO `migrations` VALUES (173, '2017_12_11_031610_create_checklists_table', 1);
INSERT INTO `migrations` VALUES (174, '2017_12_11_090606_create_checklist_products_table', 1);
INSERT INTO `migrations` VALUES (175, '2017_12_11_090644_create_checklist_warehouse_quantities_table', 1);
INSERT INTO `migrations` VALUES (176, '2017_12_16_122221_create_checklist_totals_table', 1);
INSERT INTO `migrations` VALUES (177, '2018_05_07_174844_create_product_daily_checklist_table', 1);
INSERT INTO `migrations` VALUES (178, '2018_05_08_163141_create_tasks_table', 1);
INSERT INTO `migrations` VALUES (179, '2018_05_20_191656_create_acl_roles_table', 1);
INSERT INTO `migrations` VALUES (180, '2018_05_20_191739_create_acl_permissions_table', 1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
BEGIN;
INSERT INTO `product_categories` VALUES (1, 'Molhos', 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_categories` VALUES (2, 'Prontos', 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_categories` VALUES (3, 'Diários Picados', 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_categories` VALUES (4, 'Industrializados', 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_categories` VALUES (5, 'Frios/Fatiados', 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_daily_checklist
-- ----------------------------
BEGIN;
INSERT INTO `product_daily_checklist` VALUES (1, 1, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (2, 2, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (3, 3, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (4, 4, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (5, 5, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (6, 6, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (7, 7, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (8, 8, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (9, 9, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (10, 10, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (11, 11, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (12, 12, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (13, 13, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (14, 14, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (15, 15, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (16, 16, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (17, 17, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (18, 18, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (19, 19, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (20, 20, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (21, 21, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (22, 22, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (23, 23, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (24, 24, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (25, 25, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (26, 26, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (27, 27, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (28, 28, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (29, 29, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (30, 30, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `product_daily_checklist` VALUES (31, 31, '[0,0,0]', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
COMMIT;

-- ----------------------------
-- Table structure for productions
-- ----------------------------
DROP TABLE IF EXISTS `productions`;
CREATE TABLE `productions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `quantity` decimal(9,1) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Strogonoff', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (2, 'Coração', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (3, 'Frango', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (4, 'Molho de Tomate', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (5, 'Molho Quatro Queijos', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (6, 'Filé Frito', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (7, 'Filé Molho de Cunhaque', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (8, 'Gaúcha', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (9, 'Carpaccio', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (10, 'Alho e Óleo', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (11, 'Carne Seca', 1, 1, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (12, 'Tomate Fatiado', 1, 2, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (13, 'Cebola Fatiada', 1, 2, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (14, 'Pimentão Fatiado', 1, 2, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (15, 'Cereja', 1, 2, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (16, 'Calabresa', 1, 4, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (17, 'Pepperone', 1, 4, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (18, 'Parmesão', 1, 4, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (19, 'Palmito', 1, 4, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (20, 'Azeitonas', 1, 4, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (21, 'Atum', 1, 4, 3, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (22, 'Milho', 1, 4, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (23, 'Champignon', 1, 4, 2, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (24, 'Bacon', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (25, 'Presunto', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (26, 'Lombo', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (27, 'Bahianinha', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (28, 'Provolone', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (29, 'Bolonha', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (30, 'Chester', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `products` VALUES (31, 'Califórnia', 1, 5, 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of units_measures
-- ----------------------------
BEGIN;
INSERT INTO `units_measures` VALUES (1, 'Quilograma', 'Kg', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `units_measures` VALUES (2, 'Balde', 'Bl', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `units_measures` VALUES (3, 'Unidade', 'Un', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
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
  `active` int(10) unsigned NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Admin', 'Admin', 'Admin Admin', 'admin@admin.com', '$2y$10$f8bvDgdqOpZegfXvqg1iH.jD9G0ujUW17/UPR8kgfJHvQgN8knwQy', 1, 'kTDuRoKiLW', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `users` VALUES (2, 'Marcelo', 'Corrêa', 'Marcelo Corrêa', 'marcelocorrea229@gmail.com', '$2y$10$hWB188.XCCXpGRp2VVzHxOW.DO9LHwHlVB48j1V2Bxu8P3gV7iW8y', 1, 'QDeleOcqAp', '2018-05-21 17:46:26', '2018-05-21 17:46:26');
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
INSERT INTO `warehouses` VALUES (1, 'Câmara Fria', 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
INSERT INTO `warehouses` VALUES (2, 'Geladeira Produção', 1, '2018-05-21 17:46:26', '2018-05-21 17:46:26');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
