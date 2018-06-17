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

 Date: 16/06/2018 13:44:33
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
INSERT INTO `acl_permission_acl_role` VALUES (1, 2);
INSERT INTO `acl_permission_acl_role` VALUES (27, 2);
INSERT INTO `acl_permission_acl_role` VALUES (28, 2);
INSERT INTO `acl_permission_acl_role` VALUES (29, 2);
INSERT INTO `acl_permission_acl_role` VALUES (30, 2);
INSERT INTO `acl_permission_acl_role` VALUES (32, 2);
INSERT INTO `acl_permission_acl_role` VALUES (33, 2);
INSERT INTO `acl_permission_acl_role` VALUES (34, 2);
INSERT INTO `acl_permission_acl_role` VALUES (35, 2);
INSERT INTO `acl_permission_acl_role` VALUES (36, 2);
INSERT INTO `acl_permission_acl_role` VALUES (38, 2);
INSERT INTO `acl_permission_acl_role` VALUES (39, 2);
INSERT INTO `acl_permission_acl_role` VALUES (40, 2);
INSERT INTO `acl_permission_acl_role` VALUES (41, 2);
INSERT INTO `acl_permission_acl_role` VALUES (42, 2);
INSERT INTO `acl_permission_acl_role` VALUES (1, 3);
INSERT INTO `acl_permission_acl_role` VALUES (27, 3);
INSERT INTO `acl_permission_acl_role` VALUES (28, 3);
INSERT INTO `acl_permission_acl_role` VALUES (29, 3);
INSERT INTO `acl_permission_acl_role` VALUES (30, 3);
INSERT INTO `acl_permission_acl_role` VALUES (38, 3);
INSERT INTO `acl_permission_acl_role` VALUES (41, 3);
INSERT INTO `acl_permission_acl_role` VALUES (42, 3);
INSERT INTO `acl_permission_acl_role` VALUES (1, 4);
INSERT INTO `acl_permission_acl_role` VALUES (27, 4);
INSERT INTO `acl_permission_acl_role` VALUES (28, 4);
INSERT INTO `acl_permission_acl_role` VALUES (32, 4);
INSERT INTO `acl_permission_acl_role` VALUES (33, 4);
INSERT INTO `acl_permission_acl_role` VALUES (34, 4);
INSERT INTO `acl_permission_acl_role` VALUES (35, 4);
INSERT INTO `acl_permission_acl_role` VALUES (36, 4);
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
INSERT INTO `acl_permissions` VALUES (1, 'home', 'Home', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (2, 'list_users', 'Listar Usuários', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (3, 'create_users', 'Criar Usuários', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (4, 'edit_users', 'Editar Usuários', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (5, 'show_users', 'Visualizar Usuários', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (6, 'delete_users', 'Deletar Usuários', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (7, 'list_product_categories', 'Listar Categoria de Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (8, 'create_product_categories', 'Criar Categoria de Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (9, 'edit_product_categories', 'Editar Categoria de Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (10, 'show_product_categories', 'Visualizar Categoria de Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (11, 'delete_product_categories', 'Deletar Categoria de Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (12, 'list_warehouses', 'Listar Locais de Armazenamento', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (13, 'create_warehouses', 'Criar Locais de Armazenamento', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (14, 'edit_warehouses', 'Editar Locais de Armazenamento', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (15, 'show_warehouses', 'Visualizar Locais de Armazenamento', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (16, 'delete_warehouses', 'Deletar Locais de Armazenamento', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (17, 'list_units_measures', 'Listar Unidades de Medida', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (18, 'create_units_measures', 'Criar Unidades de Medida', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (19, 'edit_units_measures', 'Editar Unidades de Medida', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (20, 'show_units_measures', 'Visualizar Unidades de Medida', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (21, 'delete_units_measures', 'Deletar Unidades de Medida', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (22, 'list_products', 'Listar Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (23, 'create_products', 'Criar Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (24, 'edit_products', 'Editar Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (25, 'show_products', 'Visualizar Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (26, 'delete_products', 'Deletar Produtos', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (27, 'list_productions', 'Listar Produção', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (28, 'create_productions', 'Criar Produção', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (29, 'edit_productions', 'Editar Produção', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (30, 'show_productions', 'Visualizar Produção', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (31, 'delete_productions', 'Deletar Produção', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (32, 'list_checklists', 'Listar Checklists', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (33, 'create_checklists', 'Criar Checklists', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (34, 'edit_checklists', 'Editar Checklists', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (35, 'show_checklists', 'Visualizar Checklists', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (36, 'close_checklists', 'Fechar Checklists', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (37, 'delete_checklists', 'Deletar Checklists', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (38, 'list_tasks', 'Listar Tarefas', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (39, 'create_tasks', 'Criar Tarefas', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (40, 'edit_tasks', 'Editar Tarefas', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (41, 'show_tasks', 'Visualizar Tarefas', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (42, 'finalize', 'Finalizar Tarefas', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (43, 'delete_tasks', 'Deletar Tarefas', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (44, 'list_acl_roles', 'Listar Perfis', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (45, 'create_acl_roles', 'Criar Perfis', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (46, 'edit_acl_roles', 'Editar Perfis', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (47, 'show_acl_roles', 'Visualizar Perfis', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (48, 'delete_acl_roles', 'Deletar Perfis', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (49, 'list_acl_permissions', 'Listar Permissões', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (50, 'create_acl_permissions', 'Criar Permissões', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (51, 'edit_acl_permissions', 'Editar Permissões', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (52, 'show_acl_permissions', 'Visualizar Permissões', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_permissions` VALUES (53, 'delete_acl_permissions', 'Deletar Permissões', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
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
INSERT INTO `acl_role_user` VALUES (2, 1);
INSERT INTO `acl_role_user` VALUES (3, 3);
INSERT INTO `acl_role_user` VALUES (5, 4);
INSERT INTO `acl_role_user` VALUES (1, 1);
INSERT INTO `acl_role_user` VALUES (4, 1);
INSERT INTO `acl_role_user` VALUES (4, 4);
INSERT INTO `acl_role_user` VALUES (6, 4);
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
INSERT INTO `acl_roles` VALUES (1, 'admin', 'Administrador', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_roles` VALUES (2, 'gerente', 'Gerente de Produção', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_roles` VALUES (3, 'cozinheiro', 'Cozinheiro', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `acl_roles` VALUES (4, 'pizzaiolo', 'Pizzaiolo', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=851 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of checklist_products
-- ----------------------------
BEGIN;
INSERT INTO `checklist_products` VALUES (230, 8, 1, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-28 23:15:05', '2018-05-28 23:15:05');
INSERT INTO `checklist_products` VALUES (231, 8, 2, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-28 23:15:32', '2018-05-28 23:15:32');
INSERT INTO `checklist_products` VALUES (232, 8, 3, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-28 23:16:19', '2018-05-28 23:16:19');
INSERT INTO `checklist_products` VALUES (233, 8, 4, 16.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-28 23:16:36', '2018-05-28 23:16:36');
INSERT INTO `checklist_products` VALUES (234, 8, 5, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-28 23:16:57', '2018-05-28 23:16:57');
INSERT INTO `checklist_products` VALUES (235, 8, 6, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-28 23:17:14', '2018-05-28 23:17:14');
INSERT INTO `checklist_products` VALUES (236, 8, 7, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-28 23:17:35', '2018-05-28 23:17:35');
INSERT INTO `checklist_products` VALUES (237, 8, 8, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-28 23:17:56', '2018-05-28 23:17:56');
INSERT INTO `checklist_products` VALUES (238, 8, 9, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:18:20', '2018-05-28 23:18:20');
INSERT INTO `checklist_products` VALUES (239, 8, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:19:23', '2018-05-28 23:19:23');
INSERT INTO `checklist_products` VALUES (240, 8, 11, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:20:34', '2018-05-28 23:20:34');
INSERT INTO `checklist_products` VALUES (241, 8, 12, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-28 23:20:51', '2018-05-28 23:20:51');
INSERT INTO `checklist_products` VALUES (242, 8, 13, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-28 23:21:07', '2018-05-28 23:21:07');
INSERT INTO `checklist_products` VALUES (243, 8, 14, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-28 23:21:24', '2018-05-28 23:21:24');
INSERT INTO `checklist_products` VALUES (244, 8, 15, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:21:44', '2018-05-28 23:21:44');
INSERT INTO `checklist_products` VALUES (245, 8, 16, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-28 23:22:07', '2018-05-28 23:22:07');
INSERT INTO `checklist_products` VALUES (246, 8, 17, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-05-28 23:24:56', '2018-05-28 23:24:56');
INSERT INTO `checklist_products` VALUES (247, 8, 18, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-28 23:25:56', '2018-05-28 23:25:56');
INSERT INTO `checklist_products` VALUES (248, 8, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:26:13', '2018-05-28 23:26:13');
INSERT INTO `checklist_products` VALUES (249, 8, 20, 5.5, '[{\"warehouse_id\":1,\"quantity\":\"2.0\"},{\"warehouse_id\":2,\"quantity\":\"3.5\"}]', '2018-05-28 23:27:41', '2018-05-28 23:27:54');
INSERT INTO `checklist_products` VALUES (250, 8, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-05-28 23:28:21', '2018-05-28 23:28:21');
INSERT INTO `checklist_products` VALUES (251, 8, 22, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-28 23:28:32', '2018-05-28 23:28:32');
INSERT INTO `checklist_products` VALUES (252, 8, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:28:48', '2018-05-28 23:28:48');
INSERT INTO `checklist_products` VALUES (253, 8, 24, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"11\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-28 23:30:00', '2018-05-28 23:30:00');
INSERT INTO `checklist_products` VALUES (254, 8, 25, 17.0, '[{\"warehouse_id\":1,\"quantity\":\"14\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-28 23:30:30', '2018-05-28 23:30:30');
INSERT INTO `checklist_products` VALUES (255, 8, 26, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"5.0\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-05-28 23:31:00', '2018-05-28 23:33:16');
INSERT INTO `checklist_products` VALUES (256, 8, 27, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-28 23:31:30', '2018-05-28 23:31:30');
INSERT INTO `checklist_products` VALUES (257, 8, 28, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-28 23:31:47', '2018-05-28 23:31:47');
INSERT INTO `checklist_products` VALUES (258, 8, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-05-28 23:32:00', '2018-05-28 23:32:00');
INSERT INTO `checklist_products` VALUES (259, 8, 30, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:32:13', '2018-05-28 23:32:13');
INSERT INTO `checklist_products` VALUES (260, 8, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-28 23:32:50', '2018-05-28 23:32:50');
INSERT INTO `checklist_products` VALUES (261, 9, 1, 19.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"7\"}]', '2018-05-29 23:56:10', '2018-05-29 23:56:10');
INSERT INTO `checklist_products` VALUES (262, 9, 2, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-29 23:56:41', '2018-05-29 23:56:41');
INSERT INTO `checklist_products` VALUES (263, 9, 3, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-29 23:56:59', '2018-05-29 23:56:59');
INSERT INTO `checklist_products` VALUES (264, 9, 4, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-29 23:57:14', '2018-05-29 23:57:14');
INSERT INTO `checklist_products` VALUES (265, 9, 5, 6.5, '[{\"warehouse_id\":1,\"quantity\":\"2.5\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-05-29 23:57:35', '2018-05-29 23:57:43');
INSERT INTO `checklist_products` VALUES (266, 9, 6, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-29 23:58:11', '2018-05-29 23:58:11');
INSERT INTO `checklist_products` VALUES (267, 9, 7, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-29 23:59:07', '2018-05-29 23:59:07');
INSERT INTO `checklist_products` VALUES (268, 9, 8, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-29 23:59:22', '2018-05-29 23:59:22');
INSERT INTO `checklist_products` VALUES (269, 9, 9, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-29 23:59:38', '2018-05-29 23:59:38');
INSERT INTO `checklist_products` VALUES (270, 9, 10, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-29 23:59:51', '2018-05-29 23:59:51');
INSERT INTO `checklist_products` VALUES (271, 9, 11, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-30 00:00:53', '2018-05-30 00:00:53');
INSERT INTO `checklist_products` VALUES (272, 9, 12, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-05-30 00:01:07', '2018-05-30 00:01:07');
INSERT INTO `checklist_products` VALUES (273, 9, 13, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-30 00:01:27', '2018-05-30 00:01:27');
INSERT INTO `checklist_products` VALUES (274, 9, 14, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-30 00:01:54', '2018-05-30 00:01:54');
INSERT INTO `checklist_products` VALUES (275, 9, 15, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-30 00:02:04', '2018-05-30 00:02:04');
INSERT INTO `checklist_products` VALUES (276, 9, 16, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"7\"}]', '2018-05-30 00:02:23', '2018-05-30 00:18:51');
INSERT INTO `checklist_products` VALUES (277, 9, 17, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-05-30 00:03:43', '2018-05-30 00:04:14');
INSERT INTO `checklist_products` VALUES (278, 9, 18, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-30 00:04:39', '2018-05-30 00:04:39');
INSERT INTO `checklist_products` VALUES (279, 9, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-30 00:05:01', '2018-05-30 00:05:01');
INSERT INTO `checklist_products` VALUES (280, 9, 20, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-30 00:05:24', '2018-05-30 00:05:24');
INSERT INTO `checklist_products` VALUES (281, 9, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-05-30 00:05:42', '2018-05-30 00:05:42');
INSERT INTO `checklist_products` VALUES (282, 9, 22, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-30 00:06:00', '2018-05-30 00:06:00');
INSERT INTO `checklist_products` VALUES (283, 9, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-30 00:06:09', '2018-05-30 00:06:09');
INSERT INTO `checklist_products` VALUES (284, 9, 24, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-30 00:06:26', '2018-05-30 00:06:26');
INSERT INTO `checklist_products` VALUES (285, 9, 25, 14.5, '[{\"warehouse_id\":1,\"quantity\":\"10.0\"},{\"warehouse_id\":2,\"quantity\":\"4.5\"}]', '2018-05-30 00:07:09', '2018-05-30 00:07:19');
INSERT INTO `checklist_products` VALUES (286, 9, 26, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-30 00:07:36', '2018-05-30 00:07:36');
INSERT INTO `checklist_products` VALUES (287, 9, 27, 16.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-05-30 00:07:59', '2018-05-30 00:07:59');
INSERT INTO `checklist_products` VALUES (288, 9, 28, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-05-30 00:08:58', '2018-05-30 00:08:58');
INSERT INTO `checklist_products` VALUES (289, 9, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-05-30 00:09:09', '2018-05-30 00:09:09');
INSERT INTO `checklist_products` VALUES (290, 9, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-30 00:09:22', '2018-05-30 00:09:22');
INSERT INTO `checklist_products` VALUES (291, 9, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-30 00:09:40', '2018-05-30 00:09:40');
INSERT INTO `checklist_products` VALUES (294, 11, 1, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:26:36', '2018-05-31 20:26:36');
INSERT INTO `checklist_products` VALUES (295, 11, 2, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-05-31 20:27:23', '2018-05-31 20:56:38');
INSERT INTO `checklist_products` VALUES (296, 11, 3, 21.0, '[{\"warehouse_id\":1,\"quantity\":\"19\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-31 20:27:56', '2018-05-31 20:27:56');
INSERT INTO `checklist_products` VALUES (297, 11, 4, 16.0, '[{\"warehouse_id\":1,\"quantity\":\"15\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:28:23', '2018-05-31 20:28:23');
INSERT INTO `checklist_products` VALUES (298, 11, 5, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"2.5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-31 20:29:14', '2018-05-31 20:29:14');
INSERT INTO `checklist_products` VALUES (299, 11, 6, 11.5, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-05-31 20:29:48', '2018-05-31 20:29:48');
INSERT INTO `checklist_products` VALUES (300, 11, 7, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-05-31 20:30:55', '2018-05-31 20:30:55');
INSERT INTO `checklist_products` VALUES (301, 11, 8, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-31 20:31:20', '2018-05-31 20:31:20');
INSERT INTO `checklist_products` VALUES (302, 11, 9, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:31:34', '2018-05-31 20:31:34');
INSERT INTO `checklist_products` VALUES (303, 11, 10, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-05-31 20:32:05', '2018-05-31 20:57:09');
INSERT INTO `checklist_products` VALUES (304, 11, 11, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:32:36', '2018-05-31 20:32:36');
INSERT INTO `checklist_products` VALUES (305, 11, 12, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-31 20:32:57', '2018-05-31 20:32:57');
INSERT INTO `checklist_products` VALUES (306, 11, 13, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:33:24', '2018-05-31 20:33:24');
INSERT INTO `checklist_products` VALUES (307, 11, 14, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-31 20:33:41', '2018-05-31 20:33:41');
INSERT INTO `checklist_products` VALUES (308, 11, 15, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:33:53', '2018-05-31 20:33:53');
INSERT INTO `checklist_products` VALUES (309, 11, 16, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3.5\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-05-31 20:40:59', '2018-05-31 20:48:25');
INSERT INTO `checklist_products` VALUES (310, 11, 17, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-05-31 20:41:13', '2018-05-31 20:57:31');
INSERT INTO `checklist_products` VALUES (311, 11, 18, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-05-31 20:42:09', '2018-05-31 20:46:26');
INSERT INTO `checklist_products` VALUES (312, 11, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-05-31 20:42:38', '2018-05-31 20:45:46');
INSERT INTO `checklist_products` VALUES (313, 11, 20, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-05-31 20:43:01', '2018-05-31 20:43:45');
INSERT INTO `checklist_products` VALUES (314, 11, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-05-31 20:44:33', '2018-05-31 20:44:33');
INSERT INTO `checklist_products` VALUES (315, 11, 22, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-05-31 20:45:13', '2018-05-31 20:45:13');
INSERT INTO `checklist_products` VALUES (316, 11, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:45:30', '2018-05-31 20:45:30');
INSERT INTO `checklist_products` VALUES (317, 11, 24, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-05-31 20:49:27', '2018-05-31 20:50:23');
INSERT INTO `checklist_products` VALUES (318, 11, 25, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-31 20:53:08', '2018-05-31 20:53:08');
INSERT INTO `checklist_products` VALUES (319, 11, 26, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-31 20:53:44', '2018-05-31 20:53:44');
INSERT INTO `checklist_products` VALUES (320, 11, 27, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-05-31 20:54:16', '2018-05-31 20:54:16');
INSERT INTO `checklist_products` VALUES (321, 11, 28, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-05-31 20:54:45', '2018-05-31 20:54:45');
INSERT INTO `checklist_products` VALUES (322, 11, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-05-31 20:54:59', '2018-05-31 20:54:59');
INSERT INTO `checklist_products` VALUES (323, 11, 30, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-05-31 20:55:20', '2018-05-31 20:55:20');
INSERT INTO `checklist_products` VALUES (324, 11, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-05-31 20:55:42', '2018-05-31 20:55:42');
INSERT INTO `checklist_products` VALUES (325, 12, 1, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:34:54', '2018-06-02 01:34:54');
INSERT INTO `checklist_products` VALUES (326, 12, 2, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-02 01:35:32', '2018-06-02 01:35:32');
INSERT INTO `checklist_products` VALUES (327, 12, 3, 18.0, '[{\"warehouse_id\":1,\"quantity\":\"16\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-02 01:36:08', '2018-06-02 01:36:08');
INSERT INTO `checklist_products` VALUES (328, 12, 4, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"11\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:36:47', '2018-06-02 01:36:47');
INSERT INTO `checklist_products` VALUES (329, 12, 5, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:37:14', '2018-06-02 01:37:14');
INSERT INTO `checklist_products` VALUES (330, 12, 6, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:37:38', '2018-06-02 01:37:38');
INSERT INTO `checklist_products` VALUES (331, 12, 7, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:38:02', '2018-06-02 01:38:02');
INSERT INTO `checklist_products` VALUES (332, 12, 8, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:38:31', '2018-06-02 01:38:31');
INSERT INTO `checklist_products` VALUES (333, 12, 9, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:38:56', '2018-06-02 01:38:56');
INSERT INTO `checklist_products` VALUES (334, 12, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:39:33', '2018-06-02 01:39:33');
INSERT INTO `checklist_products` VALUES (335, 12, 11, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:40:08', '2018-06-02 01:40:08');
INSERT INTO `checklist_products` VALUES (336, 12, 12, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:40:55', '2018-06-02 01:40:55');
INSERT INTO `checklist_products` VALUES (337, 12, 13, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-02 01:41:24', '2018-06-02 01:57:16');
INSERT INTO `checklist_products` VALUES (338, 12, 14, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:41:50', '2018-06-02 01:41:50');
INSERT INTO `checklist_products` VALUES (339, 12, 15, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:42:07', '2018-06-02 01:42:07');
INSERT INTO `checklist_products` VALUES (340, 12, 16, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:44:20', '2018-06-02 01:44:20');
INSERT INTO `checklist_products` VALUES (341, 12, 17, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-02 01:44:39', '2018-06-02 01:44:39');
INSERT INTO `checklist_products` VALUES (342, 12, 18, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:45:40', '2018-06-02 01:45:40');
INSERT INTO `checklist_products` VALUES (343, 12, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:50:22', '2018-06-02 01:50:22');
INSERT INTO `checklist_products` VALUES (344, 12, 20, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:51:08', '2018-06-02 01:51:08');
INSERT INTO `checklist_products` VALUES (345, 12, 21, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-02 01:51:25', '2018-06-02 01:51:25');
INSERT INTO `checklist_products` VALUES (346, 12, 22, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:51:50', '2018-06-02 01:51:50');
INSERT INTO `checklist_products` VALUES (347, 12, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:52:04', '2018-06-02 01:52:04');
INSERT INTO `checklist_products` VALUES (348, 12, 24, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:52:41', '2018-06-02 01:52:41');
INSERT INTO `checklist_products` VALUES (349, 12, 25, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-02 01:53:13', '2018-06-02 01:53:13');
INSERT INTO `checklist_products` VALUES (350, 12, 26, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-02 01:53:38', '2018-06-02 01:53:38');
INSERT INTO `checklist_products` VALUES (351, 12, 27, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 01:53:57', '2018-06-02 01:53:57');
INSERT INTO `checklist_products` VALUES (352, 12, 28, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-02 01:54:26', '2018-06-02 02:00:32');
INSERT INTO `checklist_products` VALUES (353, 12, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:54:40', '2018-06-02 01:54:40');
INSERT INTO `checklist_products` VALUES (354, 12, 30, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:55:02', '2018-06-02 01:55:02');
INSERT INTO `checklist_products` VALUES (355, 12, 31, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 01:55:45', '2018-06-02 01:55:45');
INSERT INTO `checklist_products` VALUES (356, 13, 1, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"14\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:02:10', '2018-06-02 02:02:10');
INSERT INTO `checklist_products` VALUES (357, 13, 2, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-02 02:02:34', '2018-06-02 02:02:34');
INSERT INTO `checklist_products` VALUES (358, 13, 3, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"14\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:03:11', '2018-06-02 02:03:11');
INSERT INTO `checklist_products` VALUES (359, 13, 4, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:03:53', '2018-06-02 02:03:53');
INSERT INTO `checklist_products` VALUES (360, 13, 5, 6.5, '[{\"warehouse_id\":1,\"quantity\":\"6.5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:04:20', '2018-06-02 02:04:20');
INSERT INTO `checklist_products` VALUES (361, 13, 6, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:04:43', '2018-06-02 02:04:43');
INSERT INTO `checklist_products` VALUES (362, 13, 7, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"3.5\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-02 02:05:13', '2018-06-02 02:31:02');
INSERT INTO `checklist_products` VALUES (363, 13, 8, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-02 02:05:40', '2018-06-02 02:05:40');
INSERT INTO `checklist_products` VALUES (364, 13, 9, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:05:56', '2018-06-02 02:05:56');
INSERT INTO `checklist_products` VALUES (365, 13, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:06:25', '2018-06-02 02:06:25');
INSERT INTO `checklist_products` VALUES (366, 13, 11, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-02 02:06:51', '2018-06-02 02:07:14');
INSERT INTO `checklist_products` VALUES (367, 13, 12, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4.0\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-02 02:07:34', '2018-06-02 02:16:20');
INSERT INTO `checklist_products` VALUES (368, 13, 13, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:08:04', '2018-06-02 02:08:04');
INSERT INTO `checklist_products` VALUES (369, 13, 14, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2.0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:08:29', '2018-06-02 02:37:04');
INSERT INTO `checklist_products` VALUES (370, 13, 15, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:08:43', '2018-06-02 02:08:43');
INSERT INTO `checklist_products` VALUES (371, 13, 16, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"9.5\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-02 02:13:21', '2018-06-02 02:13:21');
INSERT INTO `checklist_products` VALUES (372, 13, 17, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\".5\"}]', '2018-06-02 02:13:48', '2018-06-02 02:13:48');
INSERT INTO `checklist_products` VALUES (373, 13, 18, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:14:25', '2018-06-02 02:39:46');
INSERT INTO `checklist_products` VALUES (374, 13, 19, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-02 02:14:50', '2018-06-02 02:15:20');
INSERT INTO `checklist_products` VALUES (375, 13, 20, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-02 02:15:45', '2018-06-02 02:15:45');
INSERT INTO `checklist_products` VALUES (376, 13, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6.0\"}]', '2018-06-02 02:16:01', '2018-06-02 02:47:08');
INSERT INTO `checklist_products` VALUES (377, 13, 22, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-02 02:16:44', '2018-06-02 03:06:26');
INSERT INTO `checklist_products` VALUES (378, 13, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:16:58', '2018-06-02 02:16:58');
INSERT INTO `checklist_products` VALUES (379, 13, 24, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-02 02:18:03', '2018-06-02 02:18:03');
INSERT INTO `checklist_products` VALUES (380, 13, 25, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-02 02:18:53', '2018-06-02 02:18:53');
INSERT INTO `checklist_products` VALUES (381, 13, 26, 5.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-02 02:19:33', '2018-06-02 02:19:33');
INSERT INTO `checklist_products` VALUES (382, 13, 27, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-02 02:19:53', '2018-06-02 02:19:53');
INSERT INTO `checklist_products` VALUES (383, 13, 28, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-02 02:20:22', '2018-06-02 02:20:22');
INSERT INTO `checklist_products` VALUES (384, 13, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:20:35', '2018-06-02 02:20:35');
INSERT INTO `checklist_products` VALUES (385, 13, 30, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:20:51', '2018-06-02 03:07:25');
INSERT INTO `checklist_products` VALUES (386, 13, 31, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-02 02:21:12', '2018-06-02 03:08:31');
INSERT INTO `checklist_products` VALUES (387, 14, 1, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-04 13:17:03', '2018-06-04 13:17:03');
INSERT INTO `checklist_products` VALUES (388, 14, 2, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 13:17:16', '2018-06-04 13:17:16');
INSERT INTO `checklist_products` VALUES (389, 14, 3, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-04 13:17:37', '2018-06-04 13:17:37');
INSERT INTO `checklist_products` VALUES (390, 14, 4, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 13:17:51', '2018-06-04 13:17:51');
INSERT INTO `checklist_products` VALUES (391, 14, 5, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"1.5\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-04 13:18:38', '2018-06-04 13:18:38');
INSERT INTO `checklist_products` VALUES (392, 14, 6, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:18:52', '2018-06-04 13:18:52');
INSERT INTO `checklist_products` VALUES (393, 14, 7, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"1.5\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-04 13:19:22', '2018-06-04 13:42:29');
INSERT INTO `checklist_products` VALUES (394, 14, 8, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-04 13:19:40', '2018-06-04 13:19:40');
INSERT INTO `checklist_products` VALUES (395, 14, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 13:20:08', '2018-06-04 13:20:08');
INSERT INTO `checklist_products` VALUES (396, 14, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 13:20:42', '2018-06-04 13:20:42');
INSERT INTO `checklist_products` VALUES (397, 14, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:21:59', '2018-06-04 13:21:59');
INSERT INTO `checklist_products` VALUES (398, 14, 12, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4.0\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-04 13:23:49', '2018-06-04 13:29:11');
INSERT INTO `checklist_products` VALUES (399, 14, 13, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-04 13:25:31', '2018-06-04 13:25:31');
INSERT INTO `checklist_products` VALUES (400, 14, 14, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:27:15', '2018-06-04 13:27:15');
INSERT INTO `checklist_products` VALUES (401, 14, 15, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 13:29:24', '2018-06-04 13:29:24');
INSERT INTO `checklist_products` VALUES (402, 14, 16, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 13:34:15', '2018-06-04 13:34:15');
INSERT INTO `checklist_products` VALUES (403, 14, 17, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\".5\"}]', '2018-06-04 13:34:43', '2018-06-04 13:34:43');
INSERT INTO `checklist_products` VALUES (404, 14, 18, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:35:05', '2018-06-04 13:35:05');
INSERT INTO `checklist_products` VALUES (405, 14, 19, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-04 13:35:27', '2018-06-04 13:35:27');
INSERT INTO `checklist_products` VALUES (406, 14, 20, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-04 13:36:43', '2018-06-04 13:36:43');
INSERT INTO `checklist_products` VALUES (407, 14, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-04 13:37:05', '2018-06-04 13:37:05');
INSERT INTO `checklist_products` VALUES (408, 14, 22, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4.0\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-04 13:37:26', '2018-06-04 13:49:06');
INSERT INTO `checklist_products` VALUES (409, 14, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 13:37:53', '2018-06-04 13:37:53');
INSERT INTO `checklist_products` VALUES (410, 14, 24, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:38:52', '2018-06-04 13:38:52');
INSERT INTO `checklist_products` VALUES (411, 14, 25, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:39:32', '2018-06-04 13:39:32');
INSERT INTO `checklist_products` VALUES (412, 14, 26, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:40:05', '2018-06-04 13:40:05');
INSERT INTO `checklist_products` VALUES (413, 14, 27, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-04 13:40:22', '2018-06-04 13:40:22');
INSERT INTO `checklist_products` VALUES (414, 14, 28, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 13:40:53', '2018-06-04 13:40:53');
INSERT INTO `checklist_products` VALUES (415, 14, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 13:41:05', '2018-06-04 13:41:05');
INSERT INTO `checklist_products` VALUES (416, 14, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3.0\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-04 13:41:36', '2018-06-04 13:51:19');
INSERT INTO `checklist_products` VALUES (417, 14, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3.0\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-04 13:41:53', '2018-06-04 14:00:04');
INSERT INTO `checklist_products` VALUES (418, 15, 1, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 14:11:47', '2018-06-04 14:11:47');
INSERT INTO `checklist_products` VALUES (419, 15, 2, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 14:59:50', '2018-06-04 14:59:50');
INSERT INTO `checklist_products` VALUES (420, 15, 3, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 15:00:06', '2018-06-04 15:00:06');
INSERT INTO `checklist_products` VALUES (421, 15, 4, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 15:00:28', '2018-06-04 15:00:28');
INSERT INTO `checklist_products` VALUES (422, 15, 5, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:01:09', '2018-06-04 15:01:09');
INSERT INTO `checklist_products` VALUES (423, 15, 6, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:01:29', '2018-06-04 15:01:29');
INSERT INTO `checklist_products` VALUES (424, 15, 7, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:01:52', '2018-06-04 15:01:52');
INSERT INTO `checklist_products` VALUES (425, 15, 8, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 15:02:05', '2018-06-04 15:02:05');
INSERT INTO `checklist_products` VALUES (426, 15, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:02:21', '2018-06-04 15:02:21');
INSERT INTO `checklist_products` VALUES (427, 15, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 15:02:48', '2018-06-04 15:02:48');
INSERT INTO `checklist_products` VALUES (428, 15, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 15:03:14', '2018-06-04 15:03:14');
INSERT INTO `checklist_products` VALUES (429, 15, 12, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 15:03:31', '2018-06-04 15:03:31');
INSERT INTO `checklist_products` VALUES (430, 15, 13, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:03:49', '2018-06-04 15:03:49');
INSERT INTO `checklist_products` VALUES (431, 15, 14, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 15:04:10', '2018-06-04 15:04:10');
INSERT INTO `checklist_products` VALUES (432, 15, 15, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 15:04:27', '2018-06-04 15:04:27');
INSERT INTO `checklist_products` VALUES (433, 15, 16, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 15:08:23', '2018-06-04 15:08:23');
INSERT INTO `checklist_products` VALUES (434, 15, 17, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 15:08:38', '2018-06-04 15:08:38');
INSERT INTO `checklist_products` VALUES (435, 15, 18, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 15:09:10', '2018-06-04 15:09:10');
INSERT INTO `checklist_products` VALUES (436, 15, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:09:22', '2018-06-04 15:09:22');
INSERT INTO `checklist_products` VALUES (437, 15, 20, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-04 15:09:49', '2018-06-04 15:09:49');
INSERT INTO `checklist_products` VALUES (438, 15, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-04 15:10:03', '2018-06-04 15:10:03');
INSERT INTO `checklist_products` VALUES (439, 15, 22, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:10:17', '2018-06-04 15:10:17');
INSERT INTO `checklist_products` VALUES (440, 15, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:10:27', '2018-06-04 15:10:27');
INSERT INTO `checklist_products` VALUES (441, 15, 24, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-04 15:10:53', '2018-06-04 15:10:53');
INSERT INTO `checklist_products` VALUES (442, 15, 25, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-04 15:11:15', '2018-06-04 15:11:15');
INSERT INTO `checklist_products` VALUES (443, 15, 26, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-04 15:11:51', '2018-06-04 15:11:51');
INSERT INTO `checklist_products` VALUES (444, 15, 27, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-04 15:12:27', '2018-06-04 15:12:27');
INSERT INTO `checklist_products` VALUES (445, 15, 28, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:12:47', '2018-06-04 15:12:47');
INSERT INTO `checklist_products` VALUES (446, 15, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-04 15:13:00', '2018-06-04 15:13:00');
INSERT INTO `checklist_products` VALUES (447, 15, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:13:32', '2018-06-04 15:13:32');
INSERT INTO `checklist_products` VALUES (448, 15, 31, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-04 15:13:47', '2018-06-04 15:13:47');
INSERT INTO `checklist_products` VALUES (449, 16, 1, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-05 13:06:11', '2018-06-05 13:06:11');
INSERT INTO `checklist_products` VALUES (450, 16, 2, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-05 13:06:32', '2018-06-05 13:06:32');
INSERT INTO `checklist_products` VALUES (451, 16, 3, 24.0, '[{\"warehouse_id\":1,\"quantity\":\"22\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:06:59', '2018-06-05 13:06:59');
INSERT INTO `checklist_products` VALUES (452, 16, 4, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-05 13:07:44', '2018-06-05 13:07:44');
INSERT INTO `checklist_products` VALUES (453, 16, 5, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:09:30', '2018-06-05 13:09:30');
INSERT INTO `checklist_products` VALUES (454, 16, 6, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-05 13:09:50', '2018-06-05 13:09:50');
INSERT INTO `checklist_products` VALUES (455, 16, 7, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:10:21', '2018-06-05 13:10:21');
INSERT INTO `checklist_products` VALUES (456, 16, 8, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:10:38', '2018-06-05 13:10:38');
INSERT INTO `checklist_products` VALUES (457, 16, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:11:12', '2018-06-05 13:11:12');
INSERT INTO `checklist_products` VALUES (458, 16, 10, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-05 13:11:38', '2018-06-05 13:11:38');
INSERT INTO `checklist_products` VALUES (459, 16, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:13:37', '2018-06-05 13:13:37');
INSERT INTO `checklist_products` VALUES (460, 16, 12, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-05 13:13:57', '2018-06-05 13:13:57');
INSERT INTO `checklist_products` VALUES (461, 16, 13, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:14:17', '2018-06-05 13:14:17');
INSERT INTO `checklist_products` VALUES (462, 16, 14, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:14:33', '2018-06-05 13:14:33');
INSERT INTO `checklist_products` VALUES (463, 16, 15, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-05 13:15:11', '2018-06-05 13:19:08');
INSERT INTO `checklist_products` VALUES (464, 16, 16, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-05 13:15:44', '2018-06-05 13:15:44');
INSERT INTO `checklist_products` VALUES (465, 16, 17, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-05 13:18:38', '2018-06-05 13:18:38');
INSERT INTO `checklist_products` VALUES (466, 16, 18, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:20:08', '2018-06-05 13:20:08');
INSERT INTO `checklist_products` VALUES (467, 16, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1.0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:21:43', '2018-06-05 13:38:37');
INSERT INTO `checklist_products` VALUES (468, 16, 20, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-05 13:22:21', '2018-06-05 13:22:21');
INSERT INTO `checklist_products` VALUES (469, 16, 21, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:23:47', '2018-06-05 13:23:47');
INSERT INTO `checklist_products` VALUES (470, 16, 22, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:25:40', '2018-06-05 13:25:40');
INSERT INTO `checklist_products` VALUES (471, 16, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:25:53', '2018-06-05 13:25:53');
INSERT INTO `checklist_products` VALUES (472, 16, 24, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:26:18', '2018-06-05 13:26:18');
INSERT INTO `checklist_products` VALUES (473, 16, 25, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:26:55', '2018-06-05 13:53:39');
INSERT INTO `checklist_products` VALUES (474, 16, 26, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-05 13:27:15', '2018-06-05 14:05:50');
INSERT INTO `checklist_products` VALUES (475, 16, 27, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:28:24', '2018-06-05 13:28:24');
INSERT INTO `checklist_products` VALUES (476, 16, 28, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-05 13:28:52', '2018-06-05 14:18:59');
INSERT INTO `checklist_products` VALUES (477, 16, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-05 13:29:04', '2018-06-05 13:29:04');
INSERT INTO `checklist_products` VALUES (478, 16, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:29:28', '2018-06-05 13:29:28');
INSERT INTO `checklist_products` VALUES (479, 16, 31, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-05 13:29:51', '2018-06-05 13:29:51');
INSERT INTO `checklist_products` VALUES (480, 17, 1, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-06 16:17:01', '2018-06-06 16:17:01');
INSERT INTO `checklist_products` VALUES (481, 17, 2, 6.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"3.5\"}]', '2018-06-06 16:17:42', '2018-06-06 16:17:42');
INSERT INTO `checklist_products` VALUES (482, 17, 3, 22.5, '[{\"warehouse_id\":1,\"quantity\":\"20\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-06 16:18:10', '2018-06-06 16:18:10');
INSERT INTO `checklist_products` VALUES (483, 17, 4, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-06 16:20:22', '2018-06-06 16:20:22');
INSERT INTO `checklist_products` VALUES (484, 17, 5, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-06 16:21:31', '2018-06-06 16:21:31');
INSERT INTO `checklist_products` VALUES (485, 17, 6, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-06 16:21:56', '2018-06-06 16:21:56');
INSERT INTO `checklist_products` VALUES (486, 17, 7, 0.5, '[{\"warehouse_id\":1,\"quantity\":\".5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-06 16:26:10', '2018-06-06 16:26:10');
INSERT INTO `checklist_products` VALUES (487, 17, 8, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:26:40', '2018-06-06 16:26:40');
INSERT INTO `checklist_products` VALUES (488, 17, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-06 16:26:56', '2018-06-06 16:26:56');
INSERT INTO `checklist_products` VALUES (489, 17, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-06 16:27:12', '2018-06-06 16:39:25');
INSERT INTO `checklist_products` VALUES (490, 17, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:27:41', '2018-06-06 16:27:41');
INSERT INTO `checklist_products` VALUES (491, 17, 12, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-06 16:28:02', '2018-06-06 16:28:02');
INSERT INTO `checklist_products` VALUES (492, 17, 13, 8.5, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-06 16:28:29', '2018-06-06 16:28:29');
INSERT INTO `checklist_products` VALUES (493, 17, 14, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:28:46', '2018-06-06 16:28:46');
INSERT INTO `checklist_products` VALUES (494, 17, 15, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-06 16:28:57', '2018-06-06 16:28:57');
INSERT INTO `checklist_products` VALUES (495, 17, 16, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-06 16:29:33', '2018-06-06 16:29:33');
INSERT INTO `checklist_products` VALUES (496, 17, 17, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-06 16:29:49', '2018-06-06 16:29:49');
INSERT INTO `checklist_products` VALUES (497, 17, 18, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:30:07', '2018-06-06 16:30:07');
INSERT INTO `checklist_products` VALUES (498, 17, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:30:22', '2018-06-06 16:30:22');
INSERT INTO `checklist_products` VALUES (499, 17, 20, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:30:40', '2018-06-06 16:30:40');
INSERT INTO `checklist_products` VALUES (500, 17, 21, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:31:07', '2018-06-06 16:31:07');
INSERT INTO `checklist_products` VALUES (501, 17, 22, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-06 16:31:34', '2018-06-06 16:31:34');
INSERT INTO `checklist_products` VALUES (502, 17, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-06 16:31:48', '2018-06-06 16:31:48');
INSERT INTO `checklist_products` VALUES (503, 17, 24, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:32:11', '2018-06-06 16:32:11');
INSERT INTO `checklist_products` VALUES (504, 17, 25, 8.5, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-06 16:32:45', '2018-06-06 16:43:48');
INSERT INTO `checklist_products` VALUES (505, 17, 26, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-06 16:33:00', '2018-06-06 16:33:00');
INSERT INTO `checklist_products` VALUES (506, 17, 27, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-06 16:33:17', '2018-06-06 16:33:17');
INSERT INTO `checklist_products` VALUES (507, 17, 28, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-06 16:33:58', '2018-06-06 16:47:32');
INSERT INTO `checklist_products` VALUES (508, 17, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-06 16:34:08', '2018-06-06 16:34:08');
INSERT INTO `checklist_products` VALUES (509, 17, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-06 16:34:21', '2018-06-06 16:34:21');
INSERT INTO `checklist_products` VALUES (510, 17, 31, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\".5\"}]', '2018-06-06 16:34:48', '2018-06-06 16:34:48');
INSERT INTO `checklist_products` VALUES (511, 18, 1, 16.0, '[{\"warehouse_id\":1,\"quantity\":\"15\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:09:04', '2018-06-09 13:09:04');
INSERT INTO `checklist_products` VALUES (512, 18, 2, 5.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"3.5\"}]', '2018-06-09 13:11:59', '2018-06-09 13:11:59');
INSERT INTO `checklist_products` VALUES (513, 18, 3, 22.5, '[{\"warehouse_id\":1,\"quantity\":\"20\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-09 13:12:27', '2018-06-09 13:12:27');
INSERT INTO `checklist_products` VALUES (514, 18, 4, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"11\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:12:42', '2018-06-09 13:12:42');
INSERT INTO `checklist_products` VALUES (515, 18, 5, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-09 13:15:40', '2018-06-11 13:44:05');
INSERT INTO `checklist_products` VALUES (516, 18, 6, 6.5, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-09 13:16:28', '2018-06-09 13:16:28');
INSERT INTO `checklist_products` VALUES (517, 18, 7, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"3.5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-09 13:17:12', '2018-06-11 13:59:36');
INSERT INTO `checklist_products` VALUES (518, 18, 8, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-09 13:17:27', '2018-06-09 13:17:27');
INSERT INTO `checklist_products` VALUES (519, 18, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:18:24', '2018-06-09 13:18:24');
INSERT INTO `checklist_products` VALUES (520, 18, 10, 2.5, '[{\"warehouse_id\":1,\"quantity\":\"2.5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-09 13:19:13', '2018-06-11 14:12:33');
INSERT INTO `checklist_products` VALUES (521, 18, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:19:32', '2018-06-09 13:19:32');
INSERT INTO `checklist_products` VALUES (522, 18, 12, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:19:51', '2018-06-09 13:19:51');
INSERT INTO `checklist_products` VALUES (523, 18, 13, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:20:06', '2018-06-09 13:20:06');
INSERT INTO `checklist_products` VALUES (524, 18, 14, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:21:02', '2018-06-09 13:21:02');
INSERT INTO `checklist_products` VALUES (525, 18, 15, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:21:13', '2018-06-09 13:21:13');
INSERT INTO `checklist_products` VALUES (526, 18, 16, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:21:33', '2018-06-09 13:21:33');
INSERT INTO `checklist_products` VALUES (527, 18, 17, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:21:48', '2018-06-09 13:21:48');
INSERT INTO `checklist_products` VALUES (528, 18, 18, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-09 13:23:15', '2018-06-09 13:23:15');
INSERT INTO `checklist_products` VALUES (529, 18, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:24:52', '2018-06-09 13:24:52');
INSERT INTO `checklist_products` VALUES (530, 18, 20, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-09 13:25:15', '2018-06-09 13:25:15');
INSERT INTO `checklist_products` VALUES (531, 18, 21, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:25:37', '2018-06-09 13:25:37');
INSERT INTO `checklist_products` VALUES (532, 18, 22, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-09 13:26:24', '2018-06-09 13:26:24');
INSERT INTO `checklist_products` VALUES (533, 18, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:27:03', '2018-06-09 13:27:03');
INSERT INTO `checklist_products` VALUES (534, 18, 24, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:27:49', '2018-06-09 13:27:49');
INSERT INTO `checklist_products` VALUES (535, 18, 25, 7.5, '[{\"warehouse_id\":1,\"quantity\":\"5.0\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-09 13:28:13', '2018-06-11 14:30:52');
INSERT INTO `checklist_products` VALUES (536, 18, 26, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:28:35', '2018-06-09 13:28:35');
INSERT INTO `checklist_products` VALUES (537, 18, 27, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-09 13:28:54', '2018-06-09 13:28:54');
INSERT INTO `checklist_products` VALUES (538, 18, 28, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:29:21', '2018-06-09 13:29:21');
INSERT INTO `checklist_products` VALUES (539, 18, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-09 13:29:31', '2018-06-09 13:29:31');
INSERT INTO `checklist_products` VALUES (540, 18, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:29:48', '2018-06-09 13:29:48');
INSERT INTO `checklist_products` VALUES (541, 18, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:30:43', '2018-06-09 13:30:43');
INSERT INTO `checklist_products` VALUES (542, 18, 32, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-09 13:40:46', '2018-06-09 13:40:46');
INSERT INTO `checklist_products` VALUES (543, 18, 33, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-09 13:41:05', '2018-06-09 13:41:05');
INSERT INTO `checklist_products` VALUES (544, 18, 34, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\".5\"}]', '2018-06-09 13:41:21', '2018-06-09 13:41:21');
INSERT INTO `checklist_products` VALUES (545, 19, 1, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"10\"}]', '2018-06-11 14:45:00', '2018-06-11 14:45:00');
INSERT INTO `checklist_products` VALUES (546, 19, 2, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:45:27', '2018-06-11 14:45:27');
INSERT INTO `checklist_products` VALUES (547, 19, 3, 18.0, '[{\"warehouse_id\":1,\"quantity\":\"14\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-11 14:46:20', '2018-06-11 14:46:20');
INSERT INTO `checklist_products` VALUES (548, 19, 4, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:47:08', '2018-06-11 14:47:08');
INSERT INTO `checklist_products` VALUES (549, 19, 5, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:47:35', '2018-06-11 14:47:35');
INSERT INTO `checklist_products` VALUES (550, 19, 6, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:47:58', '2018-06-11 14:47:58');
INSERT INTO `checklist_products` VALUES (551, 19, 7, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:48:17', '2018-06-11 14:48:17');
INSERT INTO `checklist_products` VALUES (552, 19, 8, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 14:49:39', '2018-06-11 14:49:39');
INSERT INTO `checklist_products` VALUES (553, 19, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:49:56', '2018-06-11 14:49:56');
INSERT INTO `checklist_products` VALUES (554, 19, 10, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 14:50:18', '2018-06-11 14:50:18');
INSERT INTO `checklist_products` VALUES (555, 19, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:50:38', '2018-06-11 14:50:38');
INSERT INTO `checklist_products` VALUES (556, 19, 12, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:51:18', '2018-06-11 14:51:18');
INSERT INTO `checklist_products` VALUES (557, 19, 13, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:51:37', '2018-06-11 14:51:37');
INSERT INTO `checklist_products` VALUES (558, 19, 14, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:51:55', '2018-06-11 14:51:55');
INSERT INTO `checklist_products` VALUES (559, 19, 15, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:52:12', '2018-06-11 14:52:12');
INSERT INTO `checklist_products` VALUES (560, 19, 16, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 14:52:41', '2018-06-11 14:52:41');
INSERT INTO `checklist_products` VALUES (561, 19, 17, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:53:38', '2018-06-11 14:53:38');
INSERT INTO `checklist_products` VALUES (562, 19, 18, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 14:53:59', '2018-06-11 14:53:59');
INSERT INTO `checklist_products` VALUES (563, 19, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:54:54', '2018-06-11 14:54:54');
INSERT INTO `checklist_products` VALUES (564, 19, 20, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:55:12', '2018-06-11 14:55:12');
INSERT INTO `checklist_products` VALUES (565, 19, 22, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:55:38', '2018-06-11 14:55:38');
INSERT INTO `checklist_products` VALUES (566, 19, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-11 14:56:51', '2018-06-11 14:56:51');
INSERT INTO `checklist_products` VALUES (567, 19, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 14:57:17', '2018-06-11 14:57:17');
INSERT INTO `checklist_products` VALUES (568, 19, 24, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"10\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:57:40', '2018-06-11 14:57:40');
INSERT INTO `checklist_products` VALUES (569, 19, 25, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 14:57:57', '2018-06-11 14:57:57');
INSERT INTO `checklist_products` VALUES (570, 19, 26, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:58:14', '2018-06-11 14:58:14');
INSERT INTO `checklist_products` VALUES (571, 19, 27, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 14:59:33', '2018-06-11 14:59:33');
INSERT INTO `checklist_products` VALUES (572, 19, 28, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:00:07', '2018-06-11 15:00:07');
INSERT INTO `checklist_products` VALUES (573, 19, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:00:24', '2018-06-11 15:00:24');
INSERT INTO `checklist_products` VALUES (574, 19, 30, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:00:39', '2018-06-11 15:00:39');
INSERT INTO `checklist_products` VALUES (575, 19, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:01:04', '2018-06-11 15:01:04');
INSERT INTO `checklist_products` VALUES (576, 19, 32, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:06:53', '2018-06-11 15:06:53');
INSERT INTO `checklist_products` VALUES (577, 19, 33, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-11 15:07:10', '2018-06-11 15:07:26');
INSERT INTO `checklist_products` VALUES (578, 19, 34, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-11 15:07:44', '2018-06-11 15:07:44');
INSERT INTO `checklist_products` VALUES (579, 20, 1, 21.0, '[{\"warehouse_id\":1,\"quantity\":\"18\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:08:39', '2018-06-11 15:08:39');
INSERT INTO `checklist_products` VALUES (580, 20, 2, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:09:35', '2018-06-11 15:09:35');
INSERT INTO `checklist_products` VALUES (581, 20, 3, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"14\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:10:01', '2018-06-11 15:10:01');
INSERT INTO `checklist_products` VALUES (582, 20, 4, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:10:21', '2018-06-11 15:10:21');
INSERT INTO `checklist_products` VALUES (583, 20, 5, 5.5, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\".5\"}]', '2018-06-11 15:10:53', '2018-06-11 15:10:53');
INSERT INTO `checklist_products` VALUES (584, 20, 6, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:11:10', '2018-06-11 15:11:10');
INSERT INTO `checklist_products` VALUES (585, 20, 7, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:11:34', '2018-06-11 15:11:34');
INSERT INTO `checklist_products` VALUES (586, 20, 8, 10.5, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-11 15:12:00', '2018-06-11 15:12:00');
INSERT INTO `checklist_products` VALUES (587, 20, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:12:12', '2018-06-11 15:12:12');
INSERT INTO `checklist_products` VALUES (588, 20, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:12:28', '2018-06-11 15:12:28');
INSERT INTO `checklist_products` VALUES (589, 20, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:12:41', '2018-06-11 15:12:41');
INSERT INTO `checklist_products` VALUES (590, 20, 12, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:12:59', '2018-06-11 15:12:59');
INSERT INTO `checklist_products` VALUES (591, 20, 13, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:13:46', '2018-06-11 15:13:46');
INSERT INTO `checklist_products` VALUES (592, 20, 14, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-11 15:14:23', '2018-06-11 15:14:23');
INSERT INTO `checklist_products` VALUES (593, 20, 16, 11.5, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"3.5\"}]', '2018-06-11 15:15:30', '2018-06-11 15:15:30');
INSERT INTO `checklist_products` VALUES (594, 20, 15, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:16:10', '2018-06-11 15:16:10');
INSERT INTO `checklist_products` VALUES (595, 20, 17, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0.5\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-11 15:16:35', '2018-06-11 15:16:35');
INSERT INTO `checklist_products` VALUES (596, 20, 18, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-11 15:19:35', '2018-06-11 15:19:35');
INSERT INTO `checklist_products` VALUES (597, 20, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:20:31', '2018-06-11 15:20:31');
INSERT INTO `checklist_products` VALUES (598, 20, 20, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:20:54', '2018-06-11 15:20:54');
INSERT INTO `checklist_products` VALUES (599, 20, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-11 15:21:51', '2018-06-11 15:21:51');
INSERT INTO `checklist_products` VALUES (600, 20, 22, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:22:14', '2018-06-11 15:22:14');
INSERT INTO `checklist_products` VALUES (601, 20, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:23:03', '2018-06-11 15:23:03');
INSERT INTO `checklist_products` VALUES (602, 20, 24, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:23:29', '2018-06-11 15:23:29');
INSERT INTO `checklist_products` VALUES (603, 20, 25, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:23:59', '2018-06-11 15:23:59');
INSERT INTO `checklist_products` VALUES (604, 20, 26, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:24:25', '2018-06-11 15:24:25');
INSERT INTO `checklist_products` VALUES (605, 20, 27, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:24:56', '2018-06-11 15:24:56');
INSERT INTO `checklist_products` VALUES (606, 20, 28, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:25:12', '2018-06-11 15:25:12');
INSERT INTO `checklist_products` VALUES (607, 20, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:25:30', '2018-06-11 15:25:30');
INSERT INTO `checklist_products` VALUES (608, 20, 30, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:25:44', '2018-06-11 15:25:44');
INSERT INTO `checklist_products` VALUES (609, 20, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:25:59', '2018-06-11 15:25:59');
INSERT INTO `checklist_products` VALUES (610, 20, 32, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:26:19', '2018-06-11 15:26:19');
INSERT INTO `checklist_products` VALUES (611, 20, 33, 2.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-11 15:26:48', '2018-06-11 15:26:48');
INSERT INTO `checklist_products` VALUES (612, 20, 34, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-11 15:27:39', '2018-06-11 15:27:39');
INSERT INTO `checklist_products` VALUES (613, 21, 1, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:28:29', '2018-06-11 15:28:29');
INSERT INTO `checklist_products` VALUES (614, 21, 2, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:28:42', '2018-06-11 15:28:42');
INSERT INTO `checklist_products` VALUES (615, 21, 3, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:29:22', '2018-06-11 15:29:22');
INSERT INTO `checklist_products` VALUES (616, 21, 4, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-06-11 15:29:38', '2018-06-11 15:30:08');
INSERT INTO `checklist_products` VALUES (617, 21, 5, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:30:27', '2018-06-11 15:30:27');
INSERT INTO `checklist_products` VALUES (618, 21, 6, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:30:46', '2018-06-11 15:30:46');
INSERT INTO `checklist_products` VALUES (619, 21, 7, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:31:03', '2018-06-11 15:31:03');
INSERT INTO `checklist_products` VALUES (620, 21, 8, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-11 15:32:02', '2018-06-11 15:32:02');
INSERT INTO `checklist_products` VALUES (621, 21, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:32:14', '2018-06-11 15:32:14');
INSERT INTO `checklist_products` VALUES (622, 21, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:32:42', '2018-06-11 15:32:42');
INSERT INTO `checklist_products` VALUES (623, 21, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:33:06', '2018-06-11 15:33:06');
INSERT INTO `checklist_products` VALUES (624, 21, 12, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-11 15:33:33', '2018-06-11 15:33:33');
INSERT INTO `checklist_products` VALUES (625, 21, 13, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:34:17', '2018-06-11 15:34:17');
INSERT INTO `checklist_products` VALUES (626, 21, 14, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:34:33', '2018-06-11 15:34:33');
INSERT INTO `checklist_products` VALUES (627, 21, 15, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:34:50', '2018-06-11 15:34:50');
INSERT INTO `checklist_products` VALUES (628, 21, 16, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:35:07', '2018-06-11 15:35:07');
INSERT INTO `checklist_products` VALUES (629, 21, 17, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0.5\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-11 15:39:10', '2018-06-11 15:39:10');
INSERT INTO `checklist_products` VALUES (630, 21, 18, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:39:27', '2018-06-11 15:39:27');
INSERT INTO `checklist_products` VALUES (631, 21, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:39:40', '2018-06-11 15:39:40');
INSERT INTO `checklist_products` VALUES (632, 21, 20, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:39:55', '2018-06-11 15:39:55');
INSERT INTO `checklist_products` VALUES (633, 21, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:40:13', '2018-06-11 15:40:13');
INSERT INTO `checklist_products` VALUES (634, 21, 22, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:40:28', '2018-06-11 15:40:28');
INSERT INTO `checklist_products` VALUES (635, 21, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:40:43', '2018-06-11 15:40:43');
INSERT INTO `checklist_products` VALUES (636, 21, 24, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:41:00', '2018-06-11 15:41:00');
INSERT INTO `checklist_products` VALUES (637, 21, 25, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:41:40', '2018-06-11 15:41:40');
INSERT INTO `checklist_products` VALUES (638, 21, 26, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:42:01', '2018-06-11 15:42:01');
INSERT INTO `checklist_products` VALUES (639, 21, 27, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-11 15:42:41', '2018-06-11 15:42:41');
INSERT INTO `checklist_products` VALUES (640, 21, 28, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:43:30', '2018-06-11 15:43:30');
INSERT INTO `checklist_products` VALUES (641, 21, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:43:42', '2018-06-11 15:43:42');
INSERT INTO `checklist_products` VALUES (642, 21, 30, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:44:13', '2018-06-11 15:44:13');
INSERT INTO `checklist_products` VALUES (643, 21, 31, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:44:26', '2018-06-11 15:44:26');
INSERT INTO `checklist_products` VALUES (644, 21, 32, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:44:43', '2018-06-11 15:44:43');
INSERT INTO `checklist_products` VALUES (645, 21, 33, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:45:01', '2018-06-11 15:45:01');
INSERT INTO `checklist_products` VALUES (646, 21, 34, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:45:16', '2018-06-11 15:45:39');
INSERT INTO `checklist_products` VALUES (647, 22, 1, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:46:33', '2018-06-11 15:46:33');
INSERT INTO `checklist_products` VALUES (648, 22, 2, 8.5, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-11 15:46:47', '2018-06-11 15:46:47');
INSERT INTO `checklist_products` VALUES (649, 22, 3, 18.0, '[{\"warehouse_id\":1,\"quantity\":\"15\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:47:07', '2018-06-11 15:47:07');
INSERT INTO `checklist_products` VALUES (650, 22, 4, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:47:25', '2018-06-11 15:47:25');
INSERT INTO `checklist_products` VALUES (651, 22, 5, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:47:41', '2018-06-11 15:47:41');
INSERT INTO `checklist_products` VALUES (652, 22, 6, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-11 15:47:58', '2018-06-11 15:47:58');
INSERT INTO `checklist_products` VALUES (653, 22, 7, 1.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-11 15:48:22', '2018-06-11 15:48:22');
INSERT INTO `checklist_products` VALUES (654, 22, 8, 4.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-11 15:49:03', '2018-06-11 15:49:03');
INSERT INTO `checklist_products` VALUES (655, 22, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:49:16', '2018-06-11 15:49:16');
INSERT INTO `checklist_products` VALUES (656, 22, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:49:35', '2018-06-11 15:49:35');
INSERT INTO `checklist_products` VALUES (657, 22, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:49:58', '2018-06-11 15:49:58');
INSERT INTO `checklist_products` VALUES (658, 22, 12, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:50:14', '2018-06-11 15:50:14');
INSERT INTO `checklist_products` VALUES (659, 22, 13, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:50:43', '2018-06-11 15:50:43');
INSERT INTO `checklist_products` VALUES (660, 22, 14, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:51:03', '2018-06-11 15:51:03');
INSERT INTO `checklist_products` VALUES (661, 22, 15, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:51:15', '2018-06-11 15:51:15');
INSERT INTO `checklist_products` VALUES (662, 22, 16, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"1.5\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-11 15:51:41', '2018-06-11 15:51:41');
INSERT INTO `checklist_products` VALUES (663, 22, 17, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0.5\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-11 15:53:59', '2018-06-11 15:53:59');
INSERT INTO `checklist_products` VALUES (664, 22, 18, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:54:13', '2018-06-11 15:54:13');
INSERT INTO `checklist_products` VALUES (665, 22, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:55:11', '2018-06-11 15:55:11');
INSERT INTO `checklist_products` VALUES (666, 22, 20, 5.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"3.5\"}]', '2018-06-11 15:55:43', '2018-06-11 15:55:43');
INSERT INTO `checklist_products` VALUES (667, 22, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-11 15:55:58', '2018-06-11 15:55:58');
INSERT INTO `checklist_products` VALUES (668, 22, 22, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:56:10', '2018-06-11 15:56:10');
INSERT INTO `checklist_products` VALUES (669, 22, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:56:22', '2018-06-11 15:56:22');
INSERT INTO `checklist_products` VALUES (670, 22, 24, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:56:42', '2018-06-11 15:56:42');
INSERT INTO `checklist_products` VALUES (671, 22, 25, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-11 15:56:58', '2018-06-11 15:56:58');
INSERT INTO `checklist_products` VALUES (672, 22, 26, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:57:15', '2018-06-11 15:57:15');
INSERT INTO `checklist_products` VALUES (673, 22, 27, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-11 15:57:31', '2018-06-11 15:57:31');
INSERT INTO `checklist_products` VALUES (674, 22, 28, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-11 15:57:44', '2018-06-11 15:57:44');
INSERT INTO `checklist_products` VALUES (675, 22, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:57:55', '2018-06-11 15:57:55');
INSERT INTO `checklist_products` VALUES (676, 22, 30, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-11 15:58:13', '2018-06-11 15:58:13');
INSERT INTO `checklist_products` VALUES (677, 22, 31, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 15:58:45', '2018-06-11 15:58:45');
INSERT INTO `checklist_products` VALUES (678, 22, 32, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-11 15:59:14', '2018-06-11 15:59:14');
INSERT INTO `checklist_products` VALUES (679, 22, 33, 2.5, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-11 16:01:01', '2018-06-11 16:01:01');
INSERT INTO `checklist_products` VALUES (680, 22, 34, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-11 16:01:34', '2018-06-11 16:01:34');
INSERT INTO `checklist_products` VALUES (681, 23, 1, 21.0, '[{\"warehouse_id\":1,\"quantity\":\"18\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 20:33:11', '2018-06-14 20:33:11');
INSERT INTO `checklist_products` VALUES (682, 23, 2, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 20:33:24', '2018-06-14 20:33:24');
INSERT INTO `checklist_products` VALUES (683, 23, 3, 17.0, '[{\"warehouse_id\":1,\"quantity\":\"14\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 20:33:39', '2018-06-14 20:33:39');
INSERT INTO `checklist_products` VALUES (684, 23, 4, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:34:47', '2018-06-14 20:34:47');
INSERT INTO `checklist_products` VALUES (685, 23, 5, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:35:02', '2018-06-14 20:35:02');
INSERT INTO `checklist_products` VALUES (686, 23, 6, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:35:24', '2018-06-14 20:35:24');
INSERT INTO `checklist_products` VALUES (687, 23, 7, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:37:08', '2018-06-14 20:37:08');
INSERT INTO `checklist_products` VALUES (688, 23, 8, 8.5, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3.5\"}]', '2018-06-14 20:38:10', '2018-06-14 20:38:10');
INSERT INTO `checklist_products` VALUES (689, 23, 9, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:39:10', '2018-06-14 20:39:29');
INSERT INTO `checklist_products` VALUES (690, 23, 10, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-14 20:39:50', '2018-06-14 20:39:50');
INSERT INTO `checklist_products` VALUES (691, 23, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:40:05', '2018-06-14 20:40:05');
INSERT INTO `checklist_products` VALUES (692, 23, 12, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 20:40:27', '2018-06-14 20:40:27');
INSERT INTO `checklist_products` VALUES (693, 23, 13, 5.5, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-14 20:41:21', '2018-06-14 20:41:21');
INSERT INTO `checklist_products` VALUES (694, 23, 14, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 20:41:36', '2018-06-14 20:41:36');
INSERT INTO `checklist_products` VALUES (695, 23, 15, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:41:48', '2018-06-14 20:41:48');
INSERT INTO `checklist_products` VALUES (696, 23, 16, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"10.5\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-14 20:46:22', '2018-06-14 20:46:22');
INSERT INTO `checklist_products` VALUES (697, 23, 17, 2.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\".5\"}]', '2018-06-14 20:49:03', '2018-06-14 20:49:03');
INSERT INTO `checklist_products` VALUES (698, 23, 18, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:49:41', '2018-06-14 20:49:41');
INSERT INTO `checklist_products` VALUES (699, 23, 19, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:50:05', '2018-06-14 20:50:05');
INSERT INTO `checklist_products` VALUES (700, 23, 20, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 20:51:10', '2018-06-14 20:51:10');
INSERT INTO `checklist_products` VALUES (701, 23, 21, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 20:51:25', '2018-06-14 20:51:25');
INSERT INTO `checklist_products` VALUES (702, 23, 22, 8.5, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-14 20:52:39', '2018-06-14 20:52:39');
INSERT INTO `checklist_products` VALUES (703, 23, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:52:50', '2018-06-14 20:52:50');
INSERT INTO `checklist_products` VALUES (704, 23, 24, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 20:53:07', '2018-06-14 20:53:07');
INSERT INTO `checklist_products` VALUES (705, 23, 25, 22.0, '[{\"warehouse_id\":1,\"quantity\":\"20\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:53:34', '2018-06-14 20:53:34');
INSERT INTO `checklist_products` VALUES (706, 23, 26, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:53:48', '2018-06-14 20:53:48');
INSERT INTO `checklist_products` VALUES (707, 23, 27, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"11\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 20:54:03', '2018-06-14 20:54:03');
INSERT INTO `checklist_products` VALUES (708, 23, 28, 18.0, '[{\"warehouse_id\":1,\"quantity\":\"16\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:54:22', '2018-06-14 20:54:22');
INSERT INTO `checklist_products` VALUES (709, 23, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-14 20:54:36', '2018-06-14 20:54:36');
INSERT INTO `checklist_products` VALUES (710, 23, 30, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:54:53', '2018-06-14 20:54:53');
INSERT INTO `checklist_products` VALUES (711, 23, 31, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:55:13', '2018-06-14 20:55:13');
INSERT INTO `checklist_products` VALUES (712, 23, 32, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 20:55:31', '2018-06-14 20:55:31');
INSERT INTO `checklist_products` VALUES (713, 23, 33, 1.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-14 20:55:57', '2018-06-14 20:55:57');
INSERT INTO `checklist_products` VALUES (714, 23, 34, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:56:10', '2018-06-14 20:56:10');
INSERT INTO `checklist_products` VALUES (715, 24, 1, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-06-14 20:57:07', '2018-06-14 20:57:07');
INSERT INTO `checklist_products` VALUES (716, 24, 2, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:57:26', '2018-06-14 20:57:26');
INSERT INTO `checklist_products` VALUES (717, 24, 3, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 20:57:40', '2018-06-14 20:57:40');
INSERT INTO `checklist_products` VALUES (718, 24, 4, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:58:03', '2018-06-14 20:58:03');
INSERT INTO `checklist_products` VALUES (719, 24, 5, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 20:58:19', '2018-06-14 20:58:19');
INSERT INTO `checklist_products` VALUES (720, 24, 6, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:58:41', '2018-06-14 20:58:41');
INSERT INTO `checklist_products` VALUES (721, 24, 7, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:58:54', '2018-06-14 20:58:54');
INSERT INTO `checklist_products` VALUES (722, 24, 8, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-14 20:59:10', '2018-06-14 20:59:10');
INSERT INTO `checklist_products` VALUES (723, 24, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 20:59:33', '2018-06-14 20:59:33');
INSERT INTO `checklist_products` VALUES (724, 24, 10, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 20:59:46', '2018-06-14 20:59:46');
INSERT INTO `checklist_products` VALUES (725, 24, 11, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:00:00', '2018-06-14 21:00:00');
INSERT INTO `checklist_products` VALUES (726, 24, 12, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-14 21:00:13', '2018-06-14 21:00:13');
INSERT INTO `checklist_products` VALUES (727, 24, 13, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-14 21:00:43', '2018-06-14 21:01:01');
INSERT INTO `checklist_products` VALUES (728, 24, 14, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 21:01:12', '2018-06-14 21:01:12');
INSERT INTO `checklist_products` VALUES (729, 24, 15, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 21:01:51', '2018-06-14 23:35:24');
INSERT INTO `checklist_products` VALUES (730, 24, 16, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-06-14 21:02:08', '2018-06-14 21:02:08');
INSERT INTO `checklist_products` VALUES (731, 24, 17, 2.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-14 21:02:21', '2018-06-14 21:02:21');
INSERT INTO `checklist_products` VALUES (732, 24, 18, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-14 21:03:58', '2018-06-14 21:03:58');
INSERT INTO `checklist_products` VALUES (733, 24, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:06:01', '2018-06-14 21:06:01');
INSERT INTO `checklist_products` VALUES (734, 24, 20, 7.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"4.5\"}]', '2018-06-14 21:06:19', '2018-06-14 21:06:19');
INSERT INTO `checklist_products` VALUES (735, 24, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-14 21:06:55', '2018-06-14 21:06:55');
INSERT INTO `checklist_products` VALUES (736, 24, 22, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:07:11', '2018-06-14 21:07:11');
INSERT INTO `checklist_products` VALUES (737, 24, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:07:21', '2018-06-14 21:07:21');
INSERT INTO `checklist_products` VALUES (738, 24, 24, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"9\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 21:07:38', '2018-06-14 21:07:38');
INSERT INTO `checklist_products` VALUES (739, 24, 25, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-14 21:08:25', '2018-06-14 21:08:25');
INSERT INTO `checklist_products` VALUES (740, 24, 26, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-14 21:08:43', '2018-06-14 21:08:43');
INSERT INTO `checklist_products` VALUES (741, 24, 27, 13.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"5\"}]', '2018-06-14 21:08:59', '2018-06-14 21:08:59');
INSERT INTO `checklist_products` VALUES (742, 24, 28, 12.5, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"6.5\"}]', '2018-06-14 21:09:18', '2018-06-14 21:09:18');
INSERT INTO `checklist_products` VALUES (743, 24, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-14 21:09:41', '2018-06-14 21:09:41');
INSERT INTO `checklist_products` VALUES (744, 24, 30, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-14 21:09:59', '2018-06-14 21:09:59');
INSERT INTO `checklist_products` VALUES (745, 24, 31, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:10:19', '2018-06-14 21:10:19');
INSERT INTO `checklist_products` VALUES (746, 24, 32, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:10:36', '2018-06-14 21:10:36');
INSERT INTO `checklist_products` VALUES (747, 24, 33, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:10:49', '2018-06-14 21:10:49');
INSERT INTO `checklist_products` VALUES (748, 24, 34, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:11:00', '2018-06-14 21:11:00');
INSERT INTO `checklist_products` VALUES (749, 25, 1, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:12:56', '2018-06-14 21:12:56');
INSERT INTO `checklist_products` VALUES (750, 25, 2, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:13:11', '2018-06-14 21:13:11');
INSERT INTO `checklist_products` VALUES (751, 25, 3, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:13:35', '2018-06-14 21:13:35');
INSERT INTO `checklist_products` VALUES (752, 25, 4, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"14\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:13:52', '2018-06-14 21:13:52');
INSERT INTO `checklist_products` VALUES (753, 25, 5, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 21:14:40', '2018-06-14 21:14:40');
INSERT INTO `checklist_products` VALUES (754, 25, 6, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:14:56', '2018-06-14 21:14:56');
INSERT INTO `checklist_products` VALUES (755, 25, 7, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:15:17', '2018-06-14 21:15:17');
INSERT INTO `checklist_products` VALUES (756, 25, 8, 10.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 21:15:35', '2018-06-14 21:15:35');
INSERT INTO `checklist_products` VALUES (757, 25, 9, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:15:54', '2018-06-14 21:15:54');
INSERT INTO `checklist_products` VALUES (758, 25, 10, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:16:53', '2018-06-14 21:16:53');
INSERT INTO `checklist_products` VALUES (759, 25, 11, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:17:14', '2018-06-14 21:17:14');
INSERT INTO `checklist_products` VALUES (760, 25, 12, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:17:31', '2018-06-14 21:17:31');
INSERT INTO `checklist_products` VALUES (761, 25, 13, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:18:05', '2018-06-14 21:18:05');
INSERT INTO `checklist_products` VALUES (762, 25, 14, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:18:28', '2018-06-14 21:18:28');
INSERT INTO `checklist_products` VALUES (763, 25, 15, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-14 21:18:54', '2018-06-14 21:18:54');
INSERT INTO `checklist_products` VALUES (764, 25, 17, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:27:35', '2018-06-14 21:27:35');
INSERT INTO `checklist_products` VALUES (765, 25, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:29:08', '2018-06-14 21:29:08');
INSERT INTO `checklist_products` VALUES (766, 25, 20, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:29:49', '2018-06-14 21:29:49');
INSERT INTO `checklist_products` VALUES (767, 25, 21, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-06-14 21:30:03', '2018-06-14 21:30:03');
INSERT INTO `checklist_products` VALUES (768, 25, 22, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:31:22', '2018-06-14 21:31:22');
INSERT INTO `checklist_products` VALUES (769, 25, 23, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:31:38', '2018-06-14 21:31:38');
INSERT INTO `checklist_products` VALUES (770, 25, 24, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:32:01', '2018-06-14 21:32:01');
INSERT INTO `checklist_products` VALUES (771, 25, 25, 20.0, '[{\"warehouse_id\":1,\"quantity\":\"16\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:32:30', '2018-06-14 21:32:30');
INSERT INTO `checklist_products` VALUES (772, 25, 26, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:32:49', '2018-06-14 21:32:49');
INSERT INTO `checklist_products` VALUES (773, 25, 27, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:33:07', '2018-06-14 21:33:07');
INSERT INTO `checklist_products` VALUES (774, 25, 28, 21.0, '[{\"warehouse_id\":1,\"quantity\":\"17.0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 21:33:35', '2018-06-14 21:34:01');
INSERT INTO `checklist_products` VALUES (775, 25, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-14 21:34:13', '2018-06-14 21:34:13');
INSERT INTO `checklist_products` VALUES (776, 25, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-14 21:34:40', '2018-06-14 21:34:40');
INSERT INTO `checklist_products` VALUES (777, 25, 31, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:34:58', '2018-06-14 21:34:58');
INSERT INTO `checklist_products` VALUES (778, 25, 32, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 21:35:16', '2018-06-14 21:35:16');
INSERT INTO `checklist_products` VALUES (779, 25, 34, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 21:35:52', '2018-06-14 21:35:52');
INSERT INTO `checklist_products` VALUES (780, 26, 1, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"3.0\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-14 22:34:31', '2018-06-14 22:58:02');
INSERT INTO `checklist_products` VALUES (781, 26, 2, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"2.0\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-14 22:35:56', '2018-06-14 23:00:49');
INSERT INTO `checklist_products` VALUES (782, 26, 3, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5.0\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:36:46', '2018-06-14 23:01:08');
INSERT INTO `checklist_products` VALUES (783, 26, 4, 14.0, '[{\"warehouse_id\":1,\"quantity\":\"11\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:37:08', '2018-06-14 23:02:24');
INSERT INTO `checklist_products` VALUES (784, 26, 5, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-14 22:38:51', '2018-06-14 23:02:48');
INSERT INTO `checklist_products` VALUES (785, 26, 6, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:39:35', '2018-06-14 23:03:47');
INSERT INTO `checklist_products` VALUES (786, 26, 7, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-14 22:40:04', '2018-06-14 23:49:30');
INSERT INTO `checklist_products` VALUES (787, 26, 8, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"6\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:40:31', '2018-06-14 23:05:15');
INSERT INTO `checklist_products` VALUES (788, 26, 9, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:41:09', '2018-06-14 23:58:16');
INSERT INTO `checklist_products` VALUES (789, 26, 10, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-14 22:41:52', '2018-06-14 23:06:09');
INSERT INTO `checklist_products` VALUES (790, 26, 11, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:42:15', '2018-06-14 23:06:40');
INSERT INTO `checklist_products` VALUES (791, 26, 12, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-14 22:42:45', '2018-06-14 23:07:20');
INSERT INTO `checklist_products` VALUES (792, 26, 13, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"2.0\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:43:08', '2018-06-14 23:09:26');
INSERT INTO `checklist_products` VALUES (793, 26, 14, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-14 22:43:24', '2018-06-14 23:09:38');
INSERT INTO `checklist_products` VALUES (794, 26, 15, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:43:50', '2018-06-14 23:09:55');
INSERT INTO `checklist_products` VALUES (795, 26, 16, 19.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"11.0\"}]', '2018-06-14 22:45:19', '2018-06-14 23:10:57');
INSERT INTO `checklist_products` VALUES (796, 26, 17, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:45:32', '2018-06-14 23:11:16');
INSERT INTO `checklist_products` VALUES (797, 26, 18, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:45:58', '2018-06-14 23:15:55');
INSERT INTO `checklist_products` VALUES (798, 26, 19, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-14 22:46:21', '2018-06-14 22:46:21');
INSERT INTO `checklist_products` VALUES (799, 26, 20, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:47:22', '2018-06-14 23:13:02');
INSERT INTO `checklist_products` VALUES (800, 26, 21, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"5.0\"}]', '2018-06-14 22:47:45', '2018-06-14 23:17:14');
INSERT INTO `checklist_products` VALUES (801, 26, 22, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:48:02', '2018-06-14 23:14:22');
INSERT INTO `checklist_products` VALUES (802, 26, 23, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 22:49:35', '2018-06-14 22:49:35');
INSERT INTO `checklist_products` VALUES (803, 26, 24, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-14 22:50:47', '2018-06-14 23:19:44');
INSERT INTO `checklist_products` VALUES (804, 26, 25, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:51:07', '2018-06-14 23:20:28');
INSERT INTO `checklist_products` VALUES (805, 26, 26, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:51:25', '2018-06-14 23:21:55');
INSERT INTO `checklist_products` VALUES (806, 26, 27, 12.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-14 22:51:53', '2018-06-14 23:22:37');
INSERT INTO `checklist_products` VALUES (807, 26, 28, 17.0, '[{\"warehouse_id\":1,\"quantity\":\"16\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:52:16', '2018-06-14 23:23:46');
INSERT INTO `checklist_products` VALUES (808, 26, 29, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 22:52:34', '2018-06-14 22:52:34');
INSERT INTO `checklist_products` VALUES (809, 26, 30, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-14 22:52:55', '2018-06-14 23:24:49');
INSERT INTO `checklist_products` VALUES (810, 26, 31, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:53:24', '2018-06-14 23:25:06');
INSERT INTO `checklist_products` VALUES (811, 26, 32, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-14 22:53:49', '2018-06-14 23:25:25');
INSERT INTO `checklist_products` VALUES (812, 26, 33, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-14 22:54:19', '2018-06-14 23:25:39');
INSERT INTO `checklist_products` VALUES (813, 26, 34, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-14 22:54:29', '2018-06-14 22:54:29');
INSERT INTO `checklist_products` VALUES (814, 25, 16, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-06-14 23:36:34', '2018-06-14 23:36:34');
INSERT INTO `checklist_products` VALUES (815, 25, 18, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"6\"}]', '2018-06-14 23:39:38', '2018-06-14 23:39:38');
INSERT INTO `checklist_products` VALUES (816, 25, 33, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-14 23:40:59', '2018-06-14 23:40:59');
INSERT INTO `checklist_products` VALUES (817, 27, 1, 16.5, '[{\"warehouse_id\":1,\"quantity\":\"16\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-15 22:59:03', '2018-06-15 23:23:41');
INSERT INTO `checklist_products` VALUES (818, 27, 2, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-15 22:59:50', '2018-06-15 23:30:31');
INSERT INTO `checklist_products` VALUES (819, 27, 3, 17.0, '[{\"warehouse_id\":1,\"quantity\":\"13\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-15 23:00:10', '2018-06-15 23:21:28');
INSERT INTO `checklist_products` VALUES (820, 27, 4, 11.5, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"3.5\"}]', '2018-06-15 23:00:32', '2018-06-15 23:31:07');
INSERT INTO `checklist_products` VALUES (821, 27, 5, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-15 23:01:21', '2018-06-15 23:20:53');
INSERT INTO `checklist_products` VALUES (822, 27, 6, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-15 23:01:45', '2018-06-15 23:25:20');
INSERT INTO `checklist_products` VALUES (823, 27, 7, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-15 23:02:53', '2018-06-15 23:31:50');
INSERT INTO `checklist_products` VALUES (824, 27, 8, 7.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-15 23:03:39', '2018-06-15 23:32:03');
INSERT INTO `checklist_products` VALUES (825, 27, 9, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-15 23:04:21', '2018-06-15 23:39:52');
INSERT INTO `checklist_products` VALUES (826, 27, 10, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-15 23:05:01', '2018-06-15 23:28:40');
INSERT INTO `checklist_products` VALUES (827, 27, 11, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"1.0\"}]', '2018-06-15 23:07:15', '2018-06-15 23:32:25');
INSERT INTO `checklist_products` VALUES (828, 27, 12, 8.0, '[{\"warehouse_id\":1,\"quantity\":\"5\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-15 23:07:42', '2018-06-15 23:30:07');
INSERT INTO `checklist_products` VALUES (829, 27, 13, 6.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-15 23:08:06', '2018-06-15 23:29:15');
INSERT INTO `checklist_products` VALUES (830, 27, 14, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-15 23:08:25', '2018-06-15 23:30:20');
INSERT INTO `checklist_products` VALUES (831, 27, 15, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"4\"},{\"warehouse_id\":2,\"quantity\":\"0.0\"}]', '2018-06-15 23:09:29', '2018-06-15 23:32:44');
INSERT INTO `checklist_products` VALUES (832, 27, 16, 5.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"5.0\"}]', '2018-06-15 23:09:51', '2018-06-15 23:10:02');
INSERT INTO `checklist_products` VALUES (833, 27, 17, 1.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-15 23:11:07', '2018-06-15 23:11:07');
INSERT INTO `checklist_products` VALUES (834, 27, 18, 3.0, '[{\"warehouse_id\":1,\"quantity\":\"0.0\"},{\"warehouse_id\":2,\"quantity\":\"3\"}]', '2018-06-15 23:11:54', '2018-06-15 23:13:34');
INSERT INTO `checklist_products` VALUES (835, 27, 19, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-15 23:12:31', '2018-06-15 23:12:31');
INSERT INTO `checklist_products` VALUES (836, 27, 20, 5.5, '[{\"warehouse_id\":1,\"quantity\":\"3\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-15 23:12:44', '2018-06-15 23:33:08');
INSERT INTO `checklist_products` VALUES (837, 27, 21, 2.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2\"}]', '2018-06-15 23:13:13', '2018-06-15 23:13:13');
INSERT INTO `checklist_products` VALUES (838, 27, 22, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"4\"}]', '2018-06-15 23:13:45', '2018-06-15 23:13:45');
INSERT INTO `checklist_products` VALUES (839, 27, 23, 0.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-15 23:13:58', '2018-06-15 23:13:58');
INSERT INTO `checklist_products` VALUES (840, 27, 24, 9.0, '[{\"warehouse_id\":1,\"quantity\":\"7\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-15 23:14:18', '2018-06-15 23:36:15');
INSERT INTO `checklist_products` VALUES (841, 27, 25, 16.0, '[{\"warehouse_id\":1,\"quantity\":\"12\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-15 23:14:54', '2018-06-15 23:34:17');
INSERT INTO `checklist_products` VALUES (842, 27, 26, 18.0, '[{\"warehouse_id\":1,\"quantity\":\"16\"},{\"warehouse_id\":2,\"quantity\":\"2.0\"}]', '2018-06-15 23:15:39', '2018-06-15 23:36:01');
INSERT INTO `checklist_products` VALUES (843, 27, 27, 11.0, '[{\"warehouse_id\":1,\"quantity\":\"8\"},{\"warehouse_id\":2,\"quantity\":\"3.0\"}]', '2018-06-15 23:15:50', '2018-06-15 23:36:37');
INSERT INTO `checklist_products` VALUES (844, 27, 28, 15.0, '[{\"warehouse_id\":1,\"quantity\":\"11\"},{\"warehouse_id\":2,\"quantity\":\"4.0\"}]', '2018-06-15 23:16:40', '2018-06-15 23:36:56');
INSERT INTO `checklist_products` VALUES (845, 27, 29, 0.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"0\"}]', '2018-06-15 23:16:50', '2018-06-15 23:16:50');
INSERT INTO `checklist_products` VALUES (846, 27, 30, 2.5, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-15 23:17:03', '2018-06-15 23:17:03');
INSERT INTO `checklist_products` VALUES (847, 27, 31, 4.0, '[{\"warehouse_id\":1,\"quantity\":\"3.5\"},{\"warehouse_id\":2,\"quantity\":\"0.5\"}]', '2018-06-15 23:17:29', '2018-06-15 23:37:26');
INSERT INTO `checklist_products` VALUES (848, 27, 32, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"1\"},{\"warehouse_id\":2,\"quantity\":\"2.5\"}]', '2018-06-15 23:18:14', '2018-06-15 23:37:58');
INSERT INTO `checklist_products` VALUES (849, 27, 33, 3.5, '[{\"warehouse_id\":1,\"quantity\":\"2\"},{\"warehouse_id\":2,\"quantity\":\"1.5\"}]', '2018-06-15 23:19:06', '2018-06-15 23:38:12');
INSERT INTO `checklist_products` VALUES (850, 27, 34, 1.0, '[{\"warehouse_id\":1,\"quantity\":\"0\"},{\"warehouse_id\":2,\"quantity\":\"1\"}]', '2018-06-15 23:19:25', '2018-06-15 23:19:25');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=2854 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of checklist_totals
-- ----------------------------
BEGIN;
INSERT INTO `checklist_totals` VALUES (304, 8, 230, 12.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (305, 8, 231, 6.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (306, 8, 232, 12.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (307, 8, 233, 16.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (308, 8, 234, 8.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (309, 8, 235, 11.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (310, 8, 236, 6.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (311, 8, 237, 8.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (312, 8, 238, 3.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (313, 8, 239, 1.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (314, 8, 240, 3.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (315, 8, 241, 7.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (316, 8, 242, 5.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (317, 8, 243, 4.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (318, 8, 244, 1.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (319, 8, 245, 2.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (320, 8, 246, 0.5, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (321, 8, 247, 3.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (322, 8, 248, 1.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (323, 8, 249, 5.5, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (324, 8, 250, 6.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (325, 8, 251, 3.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (326, 8, 252, 1.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (327, 8, 253, 14.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (328, 8, 254, 17.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (329, 8, 255, 9.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (330, 8, 256, 10.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (331, 8, 257, 15.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (332, 8, 258, 0.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (333, 8, 259, 4.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (334, 8, 260, 3.0, 0.0, '2018-05-28 23:33:21', '2018-05-28 23:33:21');
INSERT INTO `checklist_totals` VALUES (335, 9, 261, 19.0, 3.0, '2018-05-30 00:10:58', '2018-05-30 00:10:58');
INSERT INTO `checklist_totals` VALUES (336, 9, 262, 12.0, 2.0, '2018-05-30 00:10:58', '2018-05-30 00:10:58');
INSERT INTO `checklist_totals` VALUES (337, 9, 263, 9.0, 3.0, '2018-05-30 00:10:58', '2018-05-30 00:10:58');
INSERT INTO `checklist_totals` VALUES (338, 9, 264, 15.0, 3.0, '2018-05-30 00:10:58', '2018-05-30 00:10:58');
INSERT INTO `checklist_totals` VALUES (339, 9, 265, 6.5, 1.5, '2018-05-30 00:10:58', '2018-05-30 00:10:58');
INSERT INTO `checklist_totals` VALUES (340, 9, 266, 8.0, 3.0, '2018-05-30 00:10:58', '2018-05-30 00:10:58');
INSERT INTO `checklist_totals` VALUES (341, 9, 267, 6.0, 0.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (342, 9, 268, 5.0, 3.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (343, 9, 269, 3.0, 0.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (344, 9, 270, 2.0, 0.5, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (345, 9, 271, 3.0, 0.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (346, 9, 272, 5.0, 3.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (347, 9, 273, 5.0, 3.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (348, 9, 274, 3.0, 1.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (349, 9, 275, 1.0, 0.0, '2018-05-30 00:10:59', '2018-05-30 00:10:59');
INSERT INTO `checklist_totals` VALUES (485, 9, 276, 7.0, 0.0, '2018-05-30 23:59:57', '2018-05-30 23:59:57');
INSERT INTO `checklist_totals` VALUES (486, 9, 277, 0.5, 0.0, '2018-05-30 23:59:57', '2018-05-30 23:59:57');
INSERT INTO `checklist_totals` VALUES (504, 9, 278, 4.0, 0.0, '2018-05-31 00:01:25', '2018-05-31 00:01:25');
INSERT INTO `checklist_totals` VALUES (523, 9, 279, 2.0, 0.0, '2018-05-31 00:02:40', '2018-05-31 00:02:40');
INSERT INTO `checklist_totals` VALUES (524, 9, 280, 9.0, 0.5, '2018-05-31 00:02:40', '2018-05-31 00:02:40');
INSERT INTO `checklist_totals` VALUES (525, 9, 281, 6.0, 0.0, '2018-05-31 00:02:40', '2018-05-31 00:02:40');
INSERT INTO `checklist_totals` VALUES (547, 9, 282, 4.0, 0.0, '2018-05-31 00:03:31', '2018-05-31 00:03:31');
INSERT INTO `checklist_totals` VALUES (548, 9, 283, 1.0, 0.0, '2018-05-31 00:03:31', '2018-05-31 00:03:31');
INSERT INTO `checklist_totals` VALUES (549, 9, 284, 12.0, 2.0, '2018-05-31 00:03:31', '2018-05-31 00:03:31');
INSERT INTO `checklist_totals` VALUES (550, 9, 285, 14.5, 2.5, '2018-05-31 00:03:31', '2018-05-31 00:03:31');
INSERT INTO `checklist_totals` VALUES (551, 9, 286, 8.0, 1.0, '2018-05-31 00:03:31', '2018-05-31 00:03:31');
INSERT INTO `checklist_totals` VALUES (630, 9, 287, 16.0, 0.0, '2018-05-31 00:09:45', '2018-05-31 00:09:45');
INSERT INTO `checklist_totals` VALUES (631, 9, 288, 11.0, 4.0, '2018-05-31 00:09:45', '2018-05-31 00:09:45');
INSERT INTO `checklist_totals` VALUES (632, 9, 289, 0.0, 0.0, '2018-05-31 00:09:45', '2018-05-31 00:09:45');
INSERT INTO `checklist_totals` VALUES (633, 9, 290, 3.0, 1.0, '2018-05-31 00:09:45', '2018-05-31 00:09:45');
INSERT INTO `checklist_totals` VALUES (634, 9, 291, 3.0, 0.0, '2018-05-31 00:09:45', '2018-05-31 00:09:45');
INSERT INTO `checklist_totals` VALUES (635, 11, 294, 13.0, 6.0, '2018-05-31 20:56:06', '2018-05-31 20:56:06');
INSERT INTO `checklist_totals` VALUES (637, 11, 295, 11.0, 1.0, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (638, 11, 296, 21.0, 3.0, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (639, 11, 297, 16.0, 4.0, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (640, 11, 298, 4.5, 2.0, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (641, 11, 299, 11.5, 2.5, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (642, 11, 300, 4.5, 1.5, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (643, 11, 301, 8.0, 3.0, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (644, 11, 302, 3.0, 0.0, '2018-05-31 20:56:41', '2018-05-31 20:56:41');
INSERT INTO `checklist_totals` VALUES (654, 11, 303, 3.0, 0.5, '2018-05-31 20:57:11', '2018-05-31 20:57:11');
INSERT INTO `checklist_totals` VALUES (655, 11, 304, 2.0, 1.0, '2018-05-31 20:57:11', '2018-05-31 20:57:11');
INSERT INTO `checklist_totals` VALUES (656, 11, 305, 7.0, 2.0, '2018-05-31 20:57:11', '2018-05-31 20:57:11');
INSERT INTO `checklist_totals` VALUES (657, 11, 306, 6.0, 3.0, '2018-05-31 20:57:11', '2018-05-31 20:57:11');
INSERT INTO `checklist_totals` VALUES (658, 11, 307, 5.0, 0.0, '2018-05-31 20:57:11', '2018-05-31 20:57:11');
INSERT INTO `checklist_totals` VALUES (659, 11, 308, 1.0, 0.0, '2018-05-31 20:57:11', '2018-05-31 20:57:11');
INSERT INTO `checklist_totals` VALUES (660, 11, 309, 5.0, 5.5, '2018-05-31 20:57:11', '2018-05-31 20:57:11');
INSERT INTO `checklist_totals` VALUES (677, 11, 310, 0.5, 0.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (678, 11, 311, 3.0, 5.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (679, 11, 312, 1.0, 2.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (680, 11, 313, 8.0, 1.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (681, 11, 314, 6.0, 6.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (682, 11, 315, 3.0, 4.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (683, 11, 316, 1.0, 1.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (684, 11, 317, 9.0, 3.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (685, 11, 318, 12.0, 2.5, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (686, 11, 319, 7.0, 1.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (687, 11, 320, 15.0, 1.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (688, 11, 321, 6.0, 5.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (689, 11, 322, 0.0, 0.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (690, 11, 323, 2.0, 1.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (691, 11, 324, 3.0, 0.0, '2018-05-31 20:57:33', '2018-05-31 20:57:33');
INSERT INTO `checklist_totals` VALUES (692, 12, 325, 7.0, 6.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (693, 12, 326, 9.0, 2.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (694, 12, 327, 18.0, 3.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (695, 12, 328, 12.0, 4.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (696, 12, 329, 1.0, 3.5, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (697, 12, 330, 6.0, 5.5, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (698, 12, 331, 1.0, 3.5, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (699, 12, 332, 3.0, 5.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (700, 12, 333, 3.0, 0.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (701, 12, 334, 1.0, 2.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (702, 12, 335, 2.0, 0.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (703, 12, 336, 3.0, 4.0, '2018-06-02 01:55:54', '2018-06-02 01:55:54');
INSERT INTO `checklist_totals` VALUES (716, 12, 337, 6.0, 0.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (717, 12, 338, 3.0, 2.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (718, 12, 339, 1.0, 0.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (719, 12, 340, 6.0, 5.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (720, 12, 341, 0.5, 0.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (721, 12, 342, 4.0, 3.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (722, 12, 343, 1.0, 0.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (723, 12, 344, 5.0, 3.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (724, 12, 345, 5.0, 2.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (725, 12, 346, 0.0, 7.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (726, 12, 347, 1.0, 0.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (727, 12, 348, 6.0, 3.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (728, 12, 349, 10.0, 2.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (729, 12, 350, 6.0, 1.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (730, 12, 351, 13.0, 2.0, '2018-06-02 01:57:21', '2018-06-02 01:57:21');
INSERT INTO `checklist_totals` VALUES (758, 12, 352, 6.0, 0.0, '2018-06-02 02:00:36', '2018-06-02 02:00:36');
INSERT INTO `checklist_totals` VALUES (759, 12, 353, 0.0, 0.0, '2018-06-02 02:00:36', '2018-06-02 02:00:36');
INSERT INTO `checklist_totals` VALUES (760, 12, 354, 0.0, 2.0, '2018-06-02 02:00:36', '2018-06-02 02:00:36');
INSERT INTO `checklist_totals` VALUES (761, 12, 355, 0.0, 3.0, '2018-06-02 02:00:36', '2018-06-02 02:00:36');
INSERT INTO `checklist_totals` VALUES (762, 13, 356, 14.0, 7.0, '2018-06-02 02:21:16', '2018-06-02 02:21:16');
INSERT INTO `checklist_totals` VALUES (763, 13, 357, 9.0, 0.0, '2018-06-02 02:21:16', '2018-06-02 02:21:16');
INSERT INTO `checklist_totals` VALUES (764, 13, 358, 14.0, 4.0, '2018-06-02 02:21:16', '2018-06-02 02:21:16');
INSERT INTO `checklist_totals` VALUES (765, 13, 359, 13.0, 5.0, '2018-06-02 02:21:16', '2018-06-02 02:21:16');
INSERT INTO `checklist_totals` VALUES (766, 13, 360, 6.5, 1.0, '2018-06-02 02:21:16', '2018-06-02 02:21:16');
INSERT INTO `checklist_totals` VALUES (767, 13, 361, 6.0, 0.0, '2018-06-02 02:21:16', '2018-06-02 02:21:16');
INSERT INTO `checklist_totals` VALUES (792, 13, 362, 4.5, 0.0, '2018-06-02 02:31:07', '2018-06-02 02:31:07');
INSERT INTO `checklist_totals` VALUES (793, 13, 363, 9.0, 0.0, '2018-06-02 02:31:07', '2018-06-02 02:31:07');
INSERT INTO `checklist_totals` VALUES (794, 13, 364, 3.0, 0.0, '2018-06-02 02:31:07', '2018-06-02 02:31:07');
INSERT INTO `checklist_totals` VALUES (795, 13, 365, 1.0, 0.0, '2018-06-02 02:31:07', '2018-06-02 02:31:07');
INSERT INTO `checklist_totals` VALUES (796, 13, 366, 2.0, 0.0, '2018-06-02 02:31:07', '2018-06-02 02:31:07');
INSERT INTO `checklist_totals` VALUES (797, 13, 367, 7.0, 0.0, '2018-06-02 02:31:07', '2018-06-02 02:31:07');
INSERT INTO `checklist_totals` VALUES (798, 13, 368, 5.0, 5.0, '2018-06-02 02:31:07', '2018-06-02 02:31:07');
INSERT INTO `checklist_totals` VALUES (825, 13, 369, 3.0, 0.0, '2018-06-02 02:37:07', '2018-06-02 02:37:07');
INSERT INTO `checklist_totals` VALUES (826, 13, 370, 1.0, 0.0, '2018-06-02 02:37:07', '2018-06-02 02:37:07');
INSERT INTO `checklist_totals` VALUES (827, 13, 371, 10.0, 5.5, '2018-06-02 02:37:07', '2018-06-02 02:37:07');
INSERT INTO `checklist_totals` VALUES (828, 13, 372, 0.5, 0.0, '2018-06-02 02:37:07', '2018-06-02 02:37:07');
INSERT INTO `checklist_totals` VALUES (880, 13, 373, 4.0, 1.0, '2018-06-02 02:39:59', '2018-06-02 02:39:59');
INSERT INTO `checklist_totals` VALUES (881, 13, 374, 3.0, 0.0, '2018-06-02 02:39:59', '2018-06-02 02:39:59');
INSERT INTO `checklist_totals` VALUES (882, 13, 375, 5.0, 0.0, '2018-06-02 02:39:59', '2018-06-02 02:39:59');
INSERT INTO `checklist_totals` VALUES (983, 13, 376, 6.0, 0.0, '2018-06-02 02:48:19', '2018-06-02 02:48:19');
INSERT INTO `checklist_totals` VALUES (1173, 13, 377, 0.0, 1.0, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1174, 13, 378, 1.0, 0.0, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1175, 13, 379, 6.0, 5.0, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1176, 13, 380, 8.0, 2.0, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1177, 13, 381, 5.5, 0.5, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1178, 13, 382, 13.0, 0.0, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1179, 13, 383, 15.0, 2.0, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1180, 13, 384, 0.0, 0.0, '2018-06-02 03:06:30', '2018-06-02 03:06:30');
INSERT INTO `checklist_totals` VALUES (1239, 13, 385, 0.0, 2.0, '2018-06-02 03:07:32', '2018-06-02 03:07:32');
INSERT INTO `checklist_totals` VALUES (1269, 13, 385, 0.0, 2.0, '2018-06-02 03:08:34', '2018-06-02 03:08:34');
INSERT INTO `checklist_totals` VALUES (1270, 13, 386, 0.0, 0.0, '2018-06-02 03:08:34', '2018-06-02 03:08:34');
INSERT INTO `checklist_totals` VALUES (1271, 14, 387, 8.0, 6.0, '2018-06-04 13:41:56', '2018-06-04 13:41:56');
INSERT INTO `checklist_totals` VALUES (1272, 14, 388, 5.0, 4.0, '2018-06-04 13:41:56', '2018-06-04 13:41:56');
INSERT INTO `checklist_totals` VALUES (1273, 14, 389, 10.0, 4.0, '2018-06-04 13:41:56', '2018-06-04 13:41:56');
INSERT INTO `checklist_totals` VALUES (1274, 14, 390, 7.0, 6.0, '2018-06-04 13:41:56', '2018-06-04 13:41:56');
INSERT INTO `checklist_totals` VALUES (1275, 14, 391, 4.5, 2.0, '2018-06-04 13:41:56', '2018-06-04 13:41:56');
INSERT INTO `checklist_totals` VALUES (1276, 14, 392, 7.0, 5.0, '2018-06-04 13:41:56', '2018-06-04 13:41:56');
INSERT INTO `checklist_totals` VALUES (1277, 14, 387, 8.0, 6.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1278, 14, 388, 5.0, 4.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1279, 14, 389, 10.0, 4.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1280, 14, 390, 7.0, 6.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1281, 14, 391, 4.5, 2.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1282, 14, 392, 7.0, 5.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1283, 14, 393, 4.5, 0.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1284, 14, 394, 7.0, 2.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1285, 14, 395, 2.0, 1.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1286, 14, 396, 1.0, 1.5, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1287, 14, 397, 4.0, 0.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1288, 14, 398, 8.0, 2.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1289, 14, 399, 4.5, 4.5, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1290, 14, 400, 5.0, 0.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1291, 14, 401, 1.0, 0.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1292, 14, 402, 9.0, 10.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1293, 14, 403, 0.5, 0.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1294, 14, 404, 5.0, 2.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1295, 14, 405, 3.0, 0.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1296, 14, 406, 8.0, 1.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1297, 14, 407, 6.0, 3.0, '2018-06-04 13:42:31', '2018-06-04 13:42:31');
INSERT INTO `checklist_totals` VALUES (1298, 14, 387, 8.0, 6.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1299, 14, 388, 5.0, 4.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1300, 14, 389, 10.0, 4.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1301, 14, 390, 7.0, 6.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1302, 14, 391, 4.5, 2.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1303, 14, 392, 7.0, 5.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1304, 14, 393, 4.5, 0.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1305, 14, 394, 7.0, 2.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1306, 14, 395, 2.0, 1.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1307, 14, 396, 1.0, 1.5, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1308, 14, 397, 4.0, 0.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1309, 14, 398, 8.0, 2.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1310, 14, 399, 4.5, 4.5, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1311, 14, 400, 5.0, 0.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1312, 14, 401, 1.0, 0.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1313, 14, 402, 9.0, 10.0, '2018-06-04 13:44:56', '2018-06-04 13:44:56');
INSERT INTO `checklist_totals` VALUES (1314, 14, 403, 0.5, 0.0, '2018-06-04 13:44:57', '2018-06-04 13:44:57');
INSERT INTO `checklist_totals` VALUES (1315, 14, 404, 5.0, 2.0, '2018-06-04 13:44:57', '2018-06-04 13:44:57');
INSERT INTO `checklist_totals` VALUES (1316, 14, 405, 3.0, 0.0, '2018-06-04 13:44:57', '2018-06-04 13:44:57');
INSERT INTO `checklist_totals` VALUES (1317, 14, 406, 8.0, 1.0, '2018-06-04 13:44:57', '2018-06-04 13:44:57');
INSERT INTO `checklist_totals` VALUES (1318, 14, 407, 6.0, 3.0, '2018-06-04 13:44:57', '2018-06-04 13:44:57');
INSERT INTO `checklist_totals` VALUES (1319, 14, 387, 8.0, 6.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1320, 14, 388, 5.0, 4.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1321, 14, 389, 10.0, 4.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1322, 14, 390, 7.0, 6.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1323, 14, 391, 4.5, 2.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1324, 14, 392, 7.0, 5.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1325, 14, 393, 4.5, 0.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1326, 14, 394, 7.0, 2.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1327, 14, 395, 2.0, 1.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1328, 14, 396, 1.0, 1.5, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1329, 14, 397, 4.0, 0.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1330, 14, 398, 8.0, 2.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1331, 14, 399, 4.5, 4.5, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1332, 14, 400, 5.0, 0.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1333, 14, 401, 1.0, 0.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1334, 14, 402, 9.0, 10.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1335, 14, 403, 0.5, 0.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1336, 14, 404, 5.0, 2.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1337, 14, 405, 3.0, 0.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1338, 14, 406, 8.0, 1.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1339, 14, 407, 6.0, 3.0, '2018-06-04 13:45:20', '2018-06-04 13:45:20');
INSERT INTO `checklist_totals` VALUES (1340, 14, 387, 8.0, 6.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1341, 14, 388, 5.0, 4.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1342, 14, 389, 10.0, 4.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1343, 14, 390, 7.0, 6.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1344, 14, 391, 4.5, 2.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1345, 14, 392, 7.0, 5.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1346, 14, 393, 4.5, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1347, 14, 394, 7.0, 2.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1348, 14, 395, 2.0, 1.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1349, 14, 396, 1.0, 1.5, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1350, 14, 397, 4.0, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1351, 14, 398, 8.0, 2.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1352, 14, 399, 4.5, 4.5, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1353, 14, 400, 5.0, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1354, 14, 401, 1.0, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1355, 14, 402, 9.0, 10.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1356, 14, 403, 0.5, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1357, 14, 404, 5.0, 2.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1358, 14, 405, 3.0, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1359, 14, 406, 8.0, 1.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1360, 14, 407, 6.0, 3.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1361, 14, 408, 4.0, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1362, 14, 409, 1.0, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1363, 14, 410, 12.0, 1.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1364, 14, 411, 5.0, 3.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1365, 14, 412, 8.0, 2.5, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1366, 14, 413, 11.0, 2.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1367, 14, 414, 9.0, 6.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1368, 14, 415, 0.0, 0.0, '2018-06-04 13:49:09', '2018-06-04 13:49:09');
INSERT INTO `checklist_totals` VALUES (1369, 14, 387, 8.0, 6.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1370, 14, 388, 5.0, 4.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1371, 14, 389, 10.0, 4.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1372, 14, 390, 7.0, 6.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1373, 14, 391, 4.5, 2.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1374, 14, 392, 7.0, 5.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1375, 14, 393, 4.5, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1376, 14, 394, 7.0, 2.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1377, 14, 395, 2.0, 1.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1378, 14, 396, 1.0, 1.5, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1379, 14, 397, 4.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1380, 14, 398, 8.0, 2.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1381, 14, 399, 4.5, 4.5, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1382, 14, 400, 5.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1383, 14, 401, 1.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1384, 14, 402, 9.0, 10.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1385, 14, 403, 0.5, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1386, 14, 404, 5.0, 2.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1387, 14, 405, 3.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1388, 14, 406, 8.0, 1.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1389, 14, 407, 6.0, 3.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1390, 14, 408, 4.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1391, 14, 409, 1.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1392, 14, 410, 12.0, 1.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1393, 14, 411, 5.0, 3.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1394, 14, 412, 8.0, 2.5, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1395, 14, 413, 11.0, 2.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1396, 14, 414, 9.0, 6.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1397, 14, 415, 0.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1398, 14, 416, 3.0, 0.0, '2018-06-04 13:51:23', '2018-06-04 13:51:23');
INSERT INTO `checklist_totals` VALUES (1399, 14, 387, 8.0, 6.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1400, 14, 388, 5.0, 4.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1401, 14, 389, 10.0, 4.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1402, 14, 390, 7.0, 6.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1403, 14, 391, 4.5, 2.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1404, 14, 392, 7.0, 5.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1405, 14, 393, 4.5, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1406, 14, 394, 7.0, 2.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1407, 14, 395, 2.0, 1.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1408, 14, 396, 1.0, 1.5, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1409, 14, 397, 4.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1410, 14, 398, 8.0, 2.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1411, 14, 399, 4.5, 4.5, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1412, 14, 400, 5.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1413, 14, 401, 1.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1414, 14, 402, 9.0, 10.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1415, 14, 403, 0.5, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1416, 14, 404, 5.0, 2.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1417, 14, 405, 3.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1418, 14, 406, 8.0, 1.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1419, 14, 407, 6.0, 3.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1420, 14, 408, 4.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1421, 14, 409, 1.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1422, 14, 410, 12.0, 1.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1423, 14, 411, 5.0, 3.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1424, 14, 412, 8.0, 2.5, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1425, 14, 413, 11.0, 2.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1426, 14, 414, 9.0, 6.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1427, 14, 415, 0.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1428, 14, 416, 3.0, 0.0, '2018-06-04 13:54:46', '2018-06-04 13:54:46');
INSERT INTO `checklist_totals` VALUES (1429, 14, 387, 8.0, 6.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1430, 14, 388, 5.0, 4.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1431, 14, 389, 10.0, 4.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1432, 14, 390, 7.0, 6.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1433, 14, 391, 4.5, 2.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1434, 14, 392, 7.0, 5.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1435, 14, 393, 4.5, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1436, 14, 394, 7.0, 2.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1437, 14, 395, 2.0, 1.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1438, 14, 396, 1.0, 1.5, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1439, 14, 397, 4.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1440, 14, 398, 8.0, 2.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1441, 14, 399, 4.5, 4.5, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1442, 14, 400, 5.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1443, 14, 401, 1.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1444, 14, 402, 9.0, 10.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1445, 14, 403, 0.5, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1446, 14, 404, 5.0, 2.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1447, 14, 405, 3.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1448, 14, 406, 8.0, 1.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1449, 14, 407, 6.0, 3.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1450, 14, 408, 4.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1451, 14, 409, 1.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1452, 14, 410, 12.0, 1.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1453, 14, 411, 5.0, 3.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1454, 14, 412, 8.0, 2.5, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1455, 14, 413, 11.0, 2.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1456, 14, 414, 9.0, 6.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1457, 14, 415, 0.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1458, 14, 416, 3.0, 0.0, '2018-06-04 13:58:23', '2018-06-04 13:58:23');
INSERT INTO `checklist_totals` VALUES (1459, 14, 387, 8.0, 6.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1460, 14, 388, 5.0, 4.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1461, 14, 389, 10.0, 4.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1462, 14, 390, 7.0, 6.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1463, 14, 391, 4.5, 2.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1464, 14, 392, 7.0, 5.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1465, 14, 393, 4.5, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1466, 14, 394, 7.0, 2.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1467, 14, 395, 2.0, 1.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1468, 14, 396, 1.0, 1.5, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1469, 14, 397, 4.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1470, 14, 398, 8.0, 2.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1471, 14, 399, 4.5, 4.5, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1472, 14, 400, 5.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1473, 14, 401, 1.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1474, 14, 402, 9.0, 10.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1475, 14, 403, 0.5, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1476, 14, 404, 5.0, 2.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1477, 14, 405, 3.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1478, 14, 406, 8.0, 1.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1479, 14, 407, 6.0, 3.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1480, 14, 408, 4.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1481, 14, 409, 1.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1482, 14, 410, 12.0, 1.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1483, 14, 411, 5.0, 3.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1484, 14, 412, 8.0, 2.5, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1485, 14, 413, 11.0, 2.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1486, 14, 414, 9.0, 6.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1487, 14, 415, 0.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1488, 14, 416, 3.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1489, 14, 417, 3.0, 0.0, '2018-06-04 14:00:08', '2018-06-04 14:00:08');
INSERT INTO `checklist_totals` VALUES (1490, 15, 418, 14.0, 5.0, '2018-06-04 15:13:49', '2018-06-04 15:13:49');
INSERT INTO `checklist_totals` VALUES (1491, 15, 419, 8.0, 2.0, '2018-06-04 15:13:49', '2018-06-04 15:13:49');
INSERT INTO `checklist_totals` VALUES (1492, 15, 420, 7.0, 3.0, '2018-06-04 15:13:49', '2018-06-04 15:13:49');
INSERT INTO `checklist_totals` VALUES (1493, 15, 421, 9.0, 4.0, '2018-06-04 15:13:49', '2018-06-04 15:13:49');
INSERT INTO `checklist_totals` VALUES (1494, 15, 422, 3.0, 1.5, '2018-06-04 15:13:49', '2018-06-04 15:13:49');
INSERT INTO `checklist_totals` VALUES (1495, 15, 423, 4.0, 3.0, '2018-06-04 15:13:49', '2018-06-04 15:13:49');
INSERT INTO `checklist_totals` VALUES (1496, 15, 424, 3.0, 1.5, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1497, 15, 425, 5.0, 2.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1498, 15, 426, 2.0, 0.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1499, 15, 427, 1.0, 0.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1500, 15, 428, 4.0, 0.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1501, 15, 429, 6.0, 2.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1502, 15, 430, 5.0, 2.5, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1503, 15, 431, 4.0, 1.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1504, 15, 432, 0.0, 1.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1505, 15, 433, 4.0, 9.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1506, 15, 434, 0.0, 0.5, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1507, 15, 435, 2.0, 5.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1508, 15, 436, 1.0, 2.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1509, 15, 437, 7.0, 1.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1510, 15, 438, 6.0, 2.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1511, 15, 439, 3.0, 3.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1512, 15, 440, 1.0, 0.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1513, 15, 441, 9.0, 3.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1514, 15, 442, 4.0, 1.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1515, 15, 443, 7.0, 1.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1516, 15, 444, 10.0, 1.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1517, 15, 445, 7.0, 18.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1518, 15, 446, 0.0, 0.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1519, 15, 447, 3.0, 0.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1520, 15, 448, 2.0, 1.0, '2018-06-04 15:13:50', '2018-06-04 15:13:50');
INSERT INTO `checklist_totals` VALUES (1521, 16, 449, 12.0, 2.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1522, 16, 450, 7.0, 1.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1523, 16, 451, 24.0, 2.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1524, 16, 452, 13.0, 1.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1525, 16, 453, 2.0, 1.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1526, 16, 454, 9.0, 1.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1527, 16, 455, 3.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1528, 16, 456, 9.0, 2.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1529, 16, 457, 2.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1530, 16, 458, 0.0, 1.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1531, 16, 459, 4.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1532, 16, 460, 8.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1533, 16, 461, 6.0, 2.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1534, 16, 462, 4.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1535, 16, 463, 3.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1536, 16, 464, 4.0, 4.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1537, 16, 465, 1.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1538, 16, 466, 4.0, 0.0, '2018-06-05 13:36:04', '2018-06-05 13:36:04');
INSERT INTO `checklist_totals` VALUES (1575, 16, 467, 2.0, 0.0, '2018-06-05 13:38:40', '2018-06-05 13:38:40');
INSERT INTO `checklist_totals` VALUES (1576, 16, 468, 7.0, 0.0, '2018-06-05 13:38:40', '2018-06-05 13:38:40');
INSERT INTO `checklist_totals` VALUES (1577, 16, 469, 3.0, 5.0, '2018-06-05 13:38:40', '2018-06-05 13:38:40');
INSERT INTO `checklist_totals` VALUES (1578, 16, 470, 3.0, 2.0, '2018-06-05 13:38:40', '2018-06-05 13:38:40');
INSERT INTO `checklist_totals` VALUES (1579, 16, 471, 1.0, 0.0, '2018-06-05 13:38:40', '2018-06-05 13:38:40');
INSERT INTO `checklist_totals` VALUES (1580, 16, 472, 7.0, 2.0, '2018-06-05 13:38:40', '2018-06-05 13:38:40');
INSERT INTO `checklist_totals` VALUES (1701, 16, 473, 10.0, 0.0, '2018-06-05 13:53:41', '2018-06-05 13:53:41');
INSERT INTO `checklist_totals` VALUES (1727, 16, 474, 12.0, 0.0, '2018-06-05 14:05:53', '2018-06-05 14:05:53');
INSERT INTO `checklist_totals` VALUES (1728, 16, 475, 9.0, 1.0, '2018-06-05 14:05:53', '2018-06-05 14:05:53');
INSERT INTO `checklist_totals` VALUES (1864, 16, 476, 14.0, 1.0, '2018-06-05 14:19:16', '2018-06-05 14:19:16');
INSERT INTO `checklist_totals` VALUES (1865, 16, 477, 0.0, 0.0, '2018-06-05 14:19:16', '2018-06-05 14:19:16');
INSERT INTO `checklist_totals` VALUES (1866, 16, 478, 3.0, 0.0, '2018-06-05 14:19:16', '2018-06-05 14:19:16');
INSERT INTO `checklist_totals` VALUES (1867, 16, 479, 2.0, 0.0, '2018-06-05 14:19:16', '2018-06-05 14:19:16');
INSERT INTO `checklist_totals` VALUES (1868, 17, 480, 8.0, 4.0, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1869, 17, 481, 6.5, 0.5, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1870, 17, 482, 22.5, 1.5, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1871, 17, 483, 10.0, 3.0, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1872, 17, 484, 7.0, 3.0, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1873, 17, 485, 8.0, 1.0, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1874, 17, 486, 0.5, 2.5, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1875, 17, 487, 7.0, 2.0, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1876, 17, 488, 2.0, 0.0, '2018-06-06 16:37:29', '2018-06-06 16:37:29');
INSERT INTO `checklist_totals` VALUES (1895, 17, 489, 1.0, 0.5, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1896, 17, 490, 4.0, 0.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1897, 17, 491, 7.0, 1.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1898, 17, 492, 8.5, 1.5, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1899, 17, 493, 6.0, 0.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1900, 17, 494, 3.0, 0.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1901, 17, 495, 4.5, 2.5, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1902, 17, 496, 1.0, 0.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1903, 17, 497, 2.0, 2.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1904, 17, 498, 2.0, 0.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1905, 17, 499, 6.0, 1.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1906, 17, 500, 2.0, 1.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1907, 17, 501, 3.5, 1.5, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1908, 17, 502, 1.0, 1.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1909, 17, 503, 5.0, 2.0, '2018-06-06 16:39:27', '2018-06-06 16:39:27');
INSERT INTO `checklist_totals` VALUES (1958, 17, 504, 8.5, 1.5, '2018-06-06 16:43:50', '2018-06-06 16:43:50');
INSERT INTO `checklist_totals` VALUES (1959, 17, 505, 12.0, 0.0, '2018-06-06 16:43:50', '2018-06-06 16:43:50');
INSERT INTO `checklist_totals` VALUES (1960, 17, 506, 8.0, 1.0, '2018-06-06 16:43:50', '2018-06-06 16:43:50');
INSERT INTO `checklist_totals` VALUES (2015, 17, 507, 13.0, 1.0, '2018-06-06 16:47:34', '2018-06-06 16:47:34');
INSERT INTO `checklist_totals` VALUES (2016, 17, 508, 0.0, 0.0, '2018-06-06 16:47:34', '2018-06-06 16:47:34');
INSERT INTO `checklist_totals` VALUES (2017, 17, 509, 3.0, 0.0, '2018-06-06 16:47:34', '2018-06-06 16:47:34');
INSERT INTO `checklist_totals` VALUES (2018, 17, 510, 3.5, 0.5, '2018-06-06 16:47:34', '2018-06-06 16:47:34');
INSERT INTO `checklist_totals` VALUES (2019, 18, 511, 16.0, 4.0, '2018-06-09 13:41:36', '2018-06-09 13:41:36');
INSERT INTO `checklist_totals` VALUES (2020, 18, 512, 5.5, 1.0, '2018-06-09 13:41:36', '2018-06-09 13:41:36');
INSERT INTO `checklist_totals` VALUES (2021, 18, 513, 22.5, 0.0, '2018-06-09 13:41:36', '2018-06-09 13:41:36');
INSERT INTO `checklist_totals` VALUES (2022, 18, 514, 12.0, 3.0, '2018-06-09 13:41:36', '2018-06-09 13:41:36');
INSERT INTO `checklist_totals` VALUES (2059, 18, 515, 7.0, 0.0, '2018-06-11 13:44:09', '2018-06-11 13:44:09');
INSERT INTO `checklist_totals` VALUES (2060, 18, 516, 6.5, 1.5, '2018-06-11 13:44:09', '2018-06-11 13:44:09');
INSERT INTO `checklist_totals` VALUES (2103, 18, 517, 3.5, 0.0, '2018-06-11 13:59:42', '2018-06-11 13:59:42');
INSERT INTO `checklist_totals` VALUES (2104, 18, 518, 7.0, 2.0, '2018-06-11 13:59:42', '2018-06-11 13:59:42');
INSERT INTO `checklist_totals` VALUES (2105, 18, 519, 2.0, 0.0, '2018-06-11 13:59:42', '2018-06-11 13:59:42');
INSERT INTO `checklist_totals` VALUES (2196, 18, 520, 2.5, 0.5, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2197, 18, 521, 4.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2198, 18, 522, 8.0, 1.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2199, 18, 523, 6.0, 2.5, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2200, 18, 524, 6.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2201, 18, 525, 3.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2202, 18, 526, 4.0, 3.5, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2203, 18, 527, 1.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2204, 18, 528, 4.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2205, 18, 529, 2.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2206, 18, 530, 6.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2207, 18, 531, 2.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2208, 18, 532, 3.5, 2.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2209, 18, 533, 1.0, 0.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2210, 18, 534, 1.0, 4.0, '2018-06-11 14:12:36', '2018-06-11 14:12:36');
INSERT INTO `checklist_totals` VALUES (2562, 18, 535, 7.5, 1.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2563, 18, 536, 11.0, 1.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2564, 18, 537, 8.0, 0.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2565, 18, 538, 12.0, 1.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2566, 18, 539, 0.0, 0.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2567, 18, 540, 3.0, 0.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2568, 18, 541, 3.0, 0.5, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2569, 18, 542, 4.0, 0.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2570, 18, 543, 3.0, 0.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2571, 18, 544, 0.5, 0.0, '2018-06-13 19:18:30', '2018-06-13 19:18:30');
INSERT INTO `checklist_totals` VALUES (2572, 19, 545, 12.0, 4.0, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2573, 19, 546, 1.0, 4.5, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2574, 19, 547, 18.0, 4.5, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2575, 19, 548, 11.0, 1.0, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2576, 19, 549, 7.0, 0.0, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2577, 19, 550, 2.0, 4.5, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2578, 19, 551, 2.0, 1.5, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2579, 19, 552, 6.0, 1.0, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2580, 19, 553, 2.0, 0.0, '2018-06-13 19:18:35', '2018-06-13 19:18:35');
INSERT INTO `checklist_totals` VALUES (2581, 19, 554, 3.0, 0.5, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2582, 19, 555, 4.0, 0.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2583, 19, 556, 5.0, 3.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2584, 19, 557, 4.0, 2.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2585, 19, 558, 4.0, 2.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2586, 19, 559, 3.0, 0.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2587, 19, 560, 7.0, 4.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2588, 19, 561, 1.0, 0.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2589, 19, 562, 5.0, 4.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2590, 19, 563, 1.0, 1.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2591, 19, 564, 4.0, 2.0, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2592, 19, 565, 5.0, 1.5, '2018-06-14 22:55:59', '2018-06-14 22:55:59');
INSERT INTO `checklist_totals` VALUES (2593, 19, 566, 6.0, 1.0, '2018-06-14 22:58:59', '2018-06-14 22:58:59');
INSERT INTO `checklist_totals` VALUES (2594, 19, 567, 1.0, 0.0, '2018-06-14 22:58:59', '2018-06-14 22:58:59');
INSERT INTO `checklist_totals` VALUES (2595, 19, 568, 12.0, 0.0, '2018-06-14 23:00:32', '2018-06-14 23:00:32');
INSERT INTO `checklist_totals` VALUES (2596, 19, 569, 11.0, 7.5, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2597, 19, 570, 10.0, 1.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2598, 19, 571, 7.0, 1.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2599, 19, 572, 2.0, 10.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2600, 19, 573, 0.0, 0.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2601, 19, 574, 6.0, 0.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2602, 19, 575, 3.0, 0.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2603, 19, 576, 4.0, 0.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2604, 19, 577, 3.0, 0.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2605, 19, 578, 0.5, 0.0, '2018-06-14 23:02:28', '2018-06-14 23:02:28');
INSERT INTO `checklist_totals` VALUES (2606, 20, 579, 21.0, 7.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2607, 20, 580, 5.0, 2.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2608, 20, 581, 14.0, 4.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2609, 20, 582, 7.0, 7.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2610, 20, 583, 5.5, 1.5, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2611, 20, 584, 6.0, 0.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2612, 20, 585, 4.0, 1.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2613, 20, 586, 10.5, 2.5, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2614, 20, 587, 2.0, 0.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2615, 20, 588, 1.0, 2.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2616, 20, 589, 4.0, 0.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2617, 20, 590, 6.0, 3.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2618, 20, 591, 5.0, 3.0, '2018-06-14 23:02:38', '2018-06-14 23:02:38');
INSERT INTO `checklist_totals` VALUES (2619, 20, 592, 4.5, 0.5, '2018-06-14 23:03:38', '2018-06-14 23:03:38');
INSERT INTO `checklist_totals` VALUES (2620, 20, 593, 11.5, 3.5, '2018-06-14 23:03:38', '2018-06-14 23:03:38');
INSERT INTO `checklist_totals` VALUES (2621, 20, 594, 3.0, 0.0, '2018-06-14 23:03:38', '2018-06-14 23:03:38');
INSERT INTO `checklist_totals` VALUES (2622, 20, 595, 1.0, 0.5, '2018-06-14 23:03:38', '2018-06-14 23:03:38');
INSERT INTO `checklist_totals` VALUES (2623, 20, 596, 6.0, 1.0, '2018-06-14 23:03:38', '2018-06-14 23:03:38');
INSERT INTO `checklist_totals` VALUES (2624, 20, 597, 2.0, 0.0, '2018-06-14 23:03:38', '2018-06-14 23:03:38');
INSERT INTO `checklist_totals` VALUES (2625, 20, 598, 8.0, 0.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2626, 20, 599, 6.0, 1.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2627, 20, 600, 5.0, 3.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2628, 20, 601, 1.0, 0.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2629, 20, 602, 8.0, 4.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2630, 20, 603, 5.0, 6.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2631, 20, 604, 10.0, 0.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2632, 20, 605, 6.0, 1.0, '2018-06-14 23:04:49', '2018-06-14 23:04:49');
INSERT INTO `checklist_totals` VALUES (2633, 20, 606, 10.0, 0.0, '2018-06-14 23:06:18', '2018-06-14 23:06:18');
INSERT INTO `checklist_totals` VALUES (2634, 20, 607, 0.0, 0.0, '2018-06-14 23:06:18', '2018-06-14 23:06:18');
INSERT INTO `checklist_totals` VALUES (2635, 20, 608, 6.0, 0.0, '2018-06-14 23:06:18', '2018-06-14 23:06:18');
INSERT INTO `checklist_totals` VALUES (2636, 20, 609, 3.0, 0.0, '2018-06-14 23:06:18', '2018-06-14 23:06:18');
INSERT INTO `checklist_totals` VALUES (2637, 20, 610, 3.0, 1.0, '2018-06-14 23:06:18', '2018-06-14 23:06:18');
INSERT INTO `checklist_totals` VALUES (2638, 20, 611, 2.5, 0.5, '2018-06-14 23:06:18', '2018-06-14 23:06:18');
INSERT INTO `checklist_totals` VALUES (2639, 20, 612, 0.5, 0.0, '2018-06-14 23:06:18', '2018-06-14 23:06:18');
INSERT INTO `checklist_totals` VALUES (2640, 21, 613, 8.0, 13.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2641, 21, 614, 4.0, 1.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2642, 21, 615, 8.0, 6.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2643, 21, 616, 10.0, 7.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2644, 21, 617, 10.0, 3.5, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2645, 21, 618, 4.0, 5.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2646, 21, 619, 3.0, 3.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2647, 21, 620, 8.0, 2.5, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2648, 21, 621, 2.0, 0.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2649, 21, 622, 1.0, 1.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2650, 21, 623, 4.0, 0.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2651, 21, 624, 7.0, 3.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2652, 21, 625, 4.0, 5.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2653, 21, 626, 5.0, 0.5, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2654, 21, 627, 3.0, 0.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2655, 21, 628, 10.0, 9.5, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2656, 21, 629, 1.0, 0.5, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2657, 21, 630, 6.0, 6.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2658, 21, 631, 2.0, 1.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2659, 21, 632, 6.0, 2.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2660, 21, 633, 6.0, 4.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2661, 21, 634, 5.0, 3.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2662, 21, 635, 1.0, 0.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2663, 21, 636, 3.0, 5.0, '2018-06-14 23:06:22', '2018-06-14 23:06:22');
INSERT INTO `checklist_totals` VALUES (2664, 21, 637, 6.0, 0.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2665, 21, 638, 8.0, 2.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2666, 21, 639, 4.0, 2.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2667, 21, 640, 7.0, 9.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2668, 21, 641, 0.0, 0.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2669, 21, 642, 1.0, 5.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2670, 21, 643, 1.0, 2.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2671, 21, 644, 3.0, 0.0, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2672, 21, 645, 2.0, 0.5, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2673, 21, 646, 0.0, 0.5, '2018-06-14 23:07:20', '2018-06-14 23:07:20');
INSERT INTO `checklist_totals` VALUES (2674, 22, 647, 7.0, 1.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2675, 22, 648, 8.5, 1.5, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2676, 22, 649, 18.0, 2.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2677, 22, 650, 9.0, 4.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2678, 22, 651, 7.0, 3.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2679, 22, 652, 0.5, 5.5, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2680, 22, 653, 1.5, 1.5, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2681, 22, 654, 4.5, 3.5, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2682, 22, 655, 2.0, 0.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2683, 22, 656, 1.0, 0.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2684, 22, 657, 4.0, 0.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2685, 22, 658, 7.0, 2.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2686, 22, 659, 4.0, 4.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2687, 22, 660, 5.0, 0.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2688, 22, 661, 2.0, 1.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2689, 22, 662, 4.0, 7.5, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2690, 22, 663, 1.0, 0.5, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2691, 22, 664, 3.0, 4.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2692, 22, 665, 1.0, 1.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2693, 22, 666, 5.5, 4.5, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2694, 22, 667, 6.0, 2.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2695, 22, 668, 3.0, 4.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2696, 22, 669, 1.0, 0.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2697, 22, 670, 1.0, 2.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2698, 22, 671, 3.0, 3.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2699, 22, 672, 6.0, 2.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2700, 22, 673, 4.0, 0.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2701, 22, 674, 5.0, 2.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2702, 22, 675, 0.0, 0.0, '2018-06-14 23:07:25', '2018-06-14 23:07:25');
INSERT INTO `checklist_totals` VALUES (2703, 22, 676, 4.0, 0.0, '2018-06-14 23:08:18', '2018-06-14 23:08:18');
INSERT INTO `checklist_totals` VALUES (2704, 22, 677, 1.0, 0.0, '2018-06-14 23:08:18', '2018-06-14 23:08:18');
INSERT INTO `checklist_totals` VALUES (2705, 22, 678, 3.0, 0.0, '2018-06-14 23:08:18', '2018-06-14 23:08:18');
INSERT INTO `checklist_totals` VALUES (2706, 22, 679, 2.5, 0.5, '2018-06-14 23:09:09', '2018-06-14 23:09:09');
INSERT INTO `checklist_totals` VALUES (2707, 22, 680, 1.0, 0.0, '2018-06-14 23:09:09', '2018-06-14 23:09:09');
INSERT INTO `checklist_totals` VALUES (2708, 23, 681, 21.0, 2.0, '2018-06-14 23:09:13', '2018-06-14 23:09:13');
INSERT INTO `checklist_totals` VALUES (2709, 23, 682, 7.0, 1.5, '2018-06-14 23:09:13', '2018-06-14 23:09:13');
INSERT INTO `checklist_totals` VALUES (2710, 23, 683, 17.0, 1.0, '2018-06-14 23:09:13', '2018-06-14 23:09:13');
INSERT INTO `checklist_totals` VALUES (2711, 23, 684, 9.0, 4.0, '2018-06-14 23:09:13', '2018-06-14 23:09:13');
INSERT INTO `checklist_totals` VALUES (2712, 23, 685, 6.0, 1.0, '2018-06-14 23:09:13', '2018-06-14 23:09:13');
INSERT INTO `checklist_totals` VALUES (2713, 23, 686, 1.0, 3.5, '2018-06-14 23:09:13', '2018-06-14 23:09:13');
INSERT INTO `checklist_totals` VALUES (2714, 23, 687, 5.0, 0.5, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2715, 23, 688, 8.5, 3.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2716, 23, 689, 1.0, 1.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2717, 23, 690, 0.0, 3.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2718, 23, 691, 4.0, 0.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2719, 23, 692, 3.0, 6.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2720, 23, 693, 5.5, 2.5, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2721, 23, 694, 4.0, 1.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2722, 23, 695, 4.0, 1.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2723, 23, 696, 12.0, 2.5, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2724, 23, 697, 2.5, 0.5, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2725, 23, 698, 7.0, 1.0, '2018-06-14 23:19:35', '2018-06-14 23:19:35');
INSERT INTO `checklist_totals` VALUES (2726, 23, 699, 3.0, 1.0, '2018-06-14 23:21:56', '2018-06-14 23:21:56');
INSERT INTO `checklist_totals` VALUES (2727, 23, 700, 9.0, 0.5, '2018-06-14 23:21:56', '2018-06-14 23:21:56');
INSERT INTO `checklist_totals` VALUES (2728, 23, 701, 8.0, 2.0, '2018-06-14 23:21:56', '2018-06-14 23:21:56');
INSERT INTO `checklist_totals` VALUES (2729, 23, 702, 8.5, 0.5, '2018-06-14 23:21:56', '2018-06-14 23:21:56');
INSERT INTO `checklist_totals` VALUES (2730, 23, 703, 1.0, 0.0, '2018-06-14 23:21:56', '2018-06-14 23:21:56');
INSERT INTO `checklist_totals` VALUES (2731, 23, 704, 4.0, 2.0, '2018-06-14 23:21:56', '2018-06-14 23:21:56');
INSERT INTO `checklist_totals` VALUES (2732, 23, 705, 22.0, 0.0, '2018-06-14 23:23:30', '2018-06-14 23:23:30');
INSERT INTO `checklist_totals` VALUES (2733, 23, 706, 11.0, 1.0, '2018-06-14 23:23:30', '2018-06-14 23:23:30');
INSERT INTO `checklist_totals` VALUES (2734, 23, 707, 15.0, 0.0, '2018-06-14 23:23:30', '2018-06-14 23:23:30');
INSERT INTO `checklist_totals` VALUES (2735, 23, 708, 18.0, 3.0, '2018-06-14 23:23:30', '2018-06-14 23:23:30');
INSERT INTO `checklist_totals` VALUES (2736, 23, 709, 0.0, 0.0, '2018-06-14 23:23:30', '2018-06-14 23:23:30');
INSERT INTO `checklist_totals` VALUES (2737, 23, 710, 4.0, 0.0, '2018-06-14 23:23:30', '2018-06-14 23:23:30');
INSERT INTO `checklist_totals` VALUES (2738, 23, 711, 1.0, 2.0, '2018-06-14 23:23:30', '2018-06-14 23:23:30');
INSERT INTO `checklist_totals` VALUES (2739, 23, 712, 4.0, 0.0, '2018-06-14 23:25:03', '2018-06-14 23:25:03');
INSERT INTO `checklist_totals` VALUES (2740, 23, 713, 1.5, 1.0, '2018-06-14 23:25:03', '2018-06-14 23:25:03');
INSERT INTO `checklist_totals` VALUES (2741, 23, 714, 1.0, 0.0, '2018-06-14 23:25:03', '2018-06-14 23:25:03');
INSERT INTO `checklist_totals` VALUES (2742, 24, 715, 12.0, 9.0, '2018-06-14 23:25:06', '2018-06-14 23:25:06');
INSERT INTO `checklist_totals` VALUES (2743, 24, 716, 2.0, 5.0, '2018-06-14 23:25:06', '2018-06-14 23:25:06');
INSERT INTO `checklist_totals` VALUES (2744, 24, 717, 9.0, 8.0, '2018-06-14 23:25:07', '2018-06-14 23:25:07');
INSERT INTO `checklist_totals` VALUES (2745, 24, 718, 14.0, 5.0, '2018-06-14 23:25:07', '2018-06-14 23:25:07');
INSERT INTO `checklist_totals` VALUES (2746, 24, 719, 4.0, 2.0, '2018-06-14 23:25:07', '2018-06-14 23:25:07');
INSERT INTO `checklist_totals` VALUES (2747, 24, 720, 2.0, 4.0, '2018-06-14 23:25:07', '2018-06-14 23:25:07');
INSERT INTO `checklist_totals` VALUES (2748, 24, 721, 5.0, 2.0, '2018-06-14 23:25:07', '2018-06-14 23:25:07');
INSERT INTO `checklist_totals` VALUES (2749, 24, 722, 12.0, 3.5, '2018-06-14 23:25:07', '2018-06-14 23:25:07');
INSERT INTO `checklist_totals` VALUES (2750, 24, 723, 2.0, 0.0, '2018-06-14 23:26:01', '2018-06-14 23:26:01');
INSERT INTO `checklist_totals` VALUES (2751, 24, 724, 2.0, 0.0, '2018-06-14 23:27:42', '2018-06-14 23:27:42');
INSERT INTO `checklist_totals` VALUES (2752, 24, 725, 4.0, 0.0, '2018-06-14 23:27:42', '2018-06-14 23:27:42');
INSERT INTO `checklist_totals` VALUES (2753, 24, 726, 9.0, 0.0, '2018-06-14 23:29:31', '2018-06-14 23:29:31');
INSERT INTO `checklist_totals` VALUES (2754, 24, 727, 2.0, 7.5, '2018-06-14 23:29:31', '2018-06-14 23:29:31');
INSERT INTO `checklist_totals` VALUES (2755, 24, 728, 5.0, 0.0, '2018-06-14 23:29:31', '2018-06-14 23:29:31');
INSERT INTO `checklist_totals` VALUES (2756, 24, 729, 4.0, 0.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2757, 24, 730, 6.0, 6.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2758, 24, 731, 2.5, 0.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2759, 24, 732, 6.0, 7.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2760, 24, 733, 2.0, 1.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2761, 24, 734, 7.5, 1.5, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2762, 24, 735, 6.0, 2.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2763, 24, 736, 4.0, 4.5, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2764, 24, 737, 1.0, 0.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2765, 24, 738, 12.0, 1.0, '2018-06-14 23:35:28', '2018-06-14 23:35:28');
INSERT INTO `checklist_totals` VALUES (2766, 24, 739, 13.0, 9.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2767, 24, 740, 10.0, 1.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2768, 24, 741, 13.0, 2.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2769, 24, 742, 12.5, 5.5, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2770, 24, 743, 0.0, 0.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2771, 24, 744, 0.0, 4.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2772, 24, 745, 3.0, 0.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2773, 24, 746, 3.0, 1.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2774, 24, 747, 4.0, 0.5, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2775, 24, 748, 1.0, 0.0, '2018-06-14 23:35:29', '2018-06-14 23:35:29');
INSERT INTO `checklist_totals` VALUES (2776, 25, 749, 8.0, 4.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2777, 25, 750, 6.0, 0.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2778, 25, 751, 9.0, 0.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2779, 25, 752, 15.0, 2.5, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2780, 25, 753, 3.0, 1.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2781, 25, 754, 5.0, 2.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2782, 25, 755, 1.0, 4.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2783, 25, 756, 10.0, 2.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2784, 25, 757, 1.0, 1.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2785, 25, 758, 2.0, 0.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2786, 25, 759, 2.0, 2.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2787, 25, 760, 8.0, 1.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2788, 25, 761, 6.0, 0.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2789, 25, 762, 3.0, 2.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2790, 25, 763, 4.0, 0.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2791, 25, 764, 4.0, 1.5, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2792, 25, 765, 1.0, 1.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2793, 25, 766, 7.0, 0.5, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2794, 25, 767, 6.0, 0.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2795, 25, 768, 2.0, 2.0, '2018-06-14 23:41:07', '2018-06-14 23:41:07');
INSERT INTO `checklist_totals` VALUES (2796, 25, 769, 2.0, 0.0, '2018-06-14 23:42:21', '2018-06-14 23:42:21');
INSERT INTO `checklist_totals` VALUES (2797, 25, 770, 8.0, 4.0, '2018-06-14 23:42:21', '2018-06-14 23:42:21');
INSERT INTO `checklist_totals` VALUES (2798, 25, 771, 20.0, 0.0, '2018-06-14 23:43:12', '2018-06-14 23:43:12');
INSERT INTO `checklist_totals` VALUES (2799, 25, 772, 9.0, 1.0, '2018-06-14 23:43:12', '2018-06-14 23:43:12');
INSERT INTO `checklist_totals` VALUES (2800, 25, 773, 12.0, 1.0, '2018-06-14 23:43:12', '2018-06-14 23:43:12');
INSERT INTO `checklist_totals` VALUES (2801, 25, 774, 21.0, 1.5, '2018-06-14 23:43:12', '2018-06-14 23:43:12');
INSERT INTO `checklist_totals` VALUES (2802, 25, 775, 0.0, 0.0, '2018-06-14 23:43:12', '2018-06-14 23:43:12');
INSERT INTO `checklist_totals` VALUES (2803, 25, 776, 3.0, 0.0, '2018-06-14 23:44:10', '2018-06-14 23:44:10');
INSERT INTO `checklist_totals` VALUES (2804, 25, 777, 4.0, 0.0, '2018-06-14 23:45:18', '2018-06-14 23:45:18');
INSERT INTO `checklist_totals` VALUES (2805, 25, 778, 2.0, 1.0, '2018-06-14 23:45:18', '2018-06-14 23:45:18');
INSERT INTO `checklist_totals` VALUES (2806, 25, 779, 1.0, 0.0, '2018-06-14 23:45:18', '2018-06-14 23:45:18');
INSERT INTO `checklist_totals` VALUES (2807, 25, 814, 6.0, 0.0, '2018-06-14 23:45:18', '2018-06-14 23:45:18');
INSERT INTO `checklist_totals` VALUES (2808, 25, 815, 6.0, 0.0, '2018-06-14 23:45:18', '2018-06-14 23:45:18');
INSERT INTO `checklist_totals` VALUES (2809, 25, 816, 4.0, 0.0, '2018-06-14 23:45:18', '2018-06-14 23:45:18');
INSERT INTO `checklist_totals` VALUES (2810, 26, 780, 5.0, 3.0, '2018-06-14 23:45:25', '2018-06-14 23:45:25');
INSERT INTO `checklist_totals` VALUES (2811, 26, 781, 6.0, 0.0, '2018-06-14 23:45:25', '2018-06-14 23:45:25');
INSERT INTO `checklist_totals` VALUES (2812, 26, 782, 8.0, 1.0, '2018-06-14 23:45:25', '2018-06-14 23:45:25');
INSERT INTO `checklist_totals` VALUES (2813, 26, 783, 14.0, 1.0, '2018-06-14 23:45:25', '2018-06-14 23:45:25');
INSERT INTO `checklist_totals` VALUES (2814, 26, 784, 2.0, 1.0, '2018-06-14 23:45:25', '2018-06-14 23:45:25');
INSERT INTO `checklist_totals` VALUES (2815, 26, 785, 4.0, 1.0, '2018-06-14 23:45:25', '2018-06-14 23:45:25');
INSERT INTO `checklist_totals` VALUES (2816, 26, 786, 2.0, 0.0, '2018-06-14 23:49:38', '2018-06-14 23:49:38');
INSERT INTO `checklist_totals` VALUES (2817, 26, 787, 9.0, 1.0, '2018-06-14 23:49:38', '2018-06-14 23:49:38');
INSERT INTO `checklist_totals` VALUES (2818, 26, 788, 3.0, 0.0, '2018-06-14 23:51:34', '2018-06-14 23:51:34');
INSERT INTO `checklist_totals` VALUES (2819, 26, 789, 1.0, 1.0, '2018-06-14 23:51:34', '2018-06-14 23:51:34');
INSERT INTO `checklist_totals` VALUES (2820, 26, 790, 2.0, 0.0, '2018-06-14 23:51:34', '2018-06-14 23:51:34');
INSERT INTO `checklist_totals` VALUES (2821, 26, 791, 8.0, 0.0, '2018-06-14 23:51:34', '2018-06-14 23:51:34');
INSERT INTO `checklist_totals` VALUES (2822, 26, 792, 5.0, 1.0, '2018-06-14 23:51:34', '2018-06-14 23:51:34');
INSERT INTO `checklist_totals` VALUES (2823, 26, 793, 4.0, 0.0, '2018-06-14 23:52:43', '2018-06-14 23:52:43');
INSERT INTO `checklist_totals` VALUES (2824, 26, 794, 5.0, 0.0, '2018-06-14 23:54:38', '2018-06-14 23:54:38');
INSERT INTO `checklist_totals` VALUES (2825, 26, 795, 19.0, 0.0, '2018-06-14 23:55:49', '2018-06-14 23:55:49');
INSERT INTO `checklist_totals` VALUES (2826, 26, 796, 3.0, 1.0, '2018-06-14 23:55:49', '2018-06-14 23:55:49');
INSERT INTO `checklist_totals` VALUES (2827, 26, 797, 1.0, 9.0, '2018-06-14 23:55:49', '2018-06-14 23:55:49');
INSERT INTO `checklist_totals` VALUES (2828, 26, 798, 2.0, 0.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2829, 26, 799, 6.0, 1.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2830, 26, 800, 5.0, 2.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2831, 26, 801, 1.0, 5.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2832, 26, 802, 1.0, 1.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2833, 26, 803, 7.0, 1.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2834, 26, 804, 15.0, 5.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2835, 26, 805, 8.0, 1.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2836, 26, 806, 12.0, 0.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2837, 26, 807, 17.0, 4.0, '2018-06-14 23:56:49', '2018-06-14 23:56:49');
INSERT INTO `checklist_totals` VALUES (2838, 26, 808, 1.0, 0.0, '2018-06-14 23:57:37', '2018-06-14 23:57:37');
INSERT INTO `checklist_totals` VALUES (2839, 26, 809, 3.0, 0.0, '2018-06-14 23:57:37', '2018-06-14 23:57:37');
INSERT INTO `checklist_totals` VALUES (2840, 26, 788, 1.0, 2.0, '2018-06-14 23:58:42', '2018-06-14 23:58:42');
INSERT INTO `checklist_totals` VALUES (2841, 26, 810, 5.0, 0.5, '2018-06-14 23:58:42', '2018-06-14 23:58:42');
INSERT INTO `checklist_totals` VALUES (2842, 26, 788, 1.0, 0.0, '2018-06-15 00:00:18', '2018-06-15 00:00:18');
INSERT INTO `checklist_totals` VALUES (2843, 26, 811, 3.0, 0.0, '2018-06-15 00:03:11', '2018-06-15 00:03:11');
INSERT INTO `checklist_totals` VALUES (2844, 26, 812, 4.0, 0.0, '2018-06-15 00:03:12', '2018-06-15 00:03:12');
INSERT INTO `checklist_totals` VALUES (2845, 26, 813, 1.0, 0.0, '2018-06-15 00:03:12', '2018-06-15 00:03:12');
INSERT INTO `checklist_totals` VALUES (2846, 27, 817, 16.5, 4.5, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
INSERT INTO `checklist_totals` VALUES (2847, 27, 818, 4.0, 2.0, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
INSERT INTO `checklist_totals` VALUES (2848, 27, 819, 17.0, 4.0, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
INSERT INTO `checklist_totals` VALUES (2849, 27, 820, 11.5, 4.5, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
INSERT INTO `checklist_totals` VALUES (2850, 27, 821, 8.0, 1.0, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
INSERT INTO `checklist_totals` VALUES (2851, 27, 822, 4.0, 3.0, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
INSERT INTO `checklist_totals` VALUES (2852, 27, 823, 3.5, 0.5, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
INSERT INTO `checklist_totals` VALUES (2853, 27, 824, 7.0, 2.0, '2018-06-15 23:38:23', '2018-06-15 23:38:23');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=1701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of checklist_warehouse_quantities
-- ----------------------------
BEGIN;
INSERT INTO `checklist_warehouse_quantities` VALUES (459, 1, 230, 7.0, '2018-05-28 23:15:05', '2018-05-28 23:15:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (460, 2, 230, 5.0, '2018-05-28 23:15:05', '2018-05-28 23:15:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (461, 1, 231, 2.0, '2018-05-28 23:15:32', '2018-05-28 23:15:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (462, 2, 231, 4.0, '2018-05-28 23:15:32', '2018-05-28 23:15:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (463, 1, 232, 8.0, '2018-05-28 23:16:19', '2018-05-28 23:16:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (464, 2, 232, 4.0, '2018-05-28 23:16:19', '2018-05-28 23:16:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (465, 1, 233, 12.0, '2018-05-28 23:16:36', '2018-05-28 23:16:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (466, 2, 233, 4.0, '2018-05-28 23:16:36', '2018-05-28 23:16:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (467, 1, 234, 5.0, '2018-05-28 23:16:57', '2018-05-28 23:16:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (468, 2, 234, 3.0, '2018-05-28 23:16:57', '2018-05-28 23:16:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (469, 1, 235, 7.0, '2018-05-28 23:17:14', '2018-05-28 23:17:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (470, 2, 235, 4.0, '2018-05-28 23:17:14', '2018-05-28 23:17:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (471, 1, 236, 4.0, '2018-05-28 23:17:35', '2018-05-28 23:17:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (472, 2, 236, 2.0, '2018-05-28 23:17:35', '2018-05-28 23:17:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (473, 1, 237, 4.0, '2018-05-28 23:17:56', '2018-05-28 23:17:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (474, 2, 237, 4.0, '2018-05-28 23:17:56', '2018-05-28 23:17:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (475, 1, 238, 2.0, '2018-05-28 23:18:20', '2018-05-28 23:18:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (476, 2, 238, 1.0, '2018-05-28 23:18:20', '2018-05-28 23:18:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (477, 1, 239, 0.0, '2018-05-28 23:19:23', '2018-05-28 23:19:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (478, 2, 239, 1.0, '2018-05-28 23:19:23', '2018-05-28 23:19:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (479, 1, 240, 2.0, '2018-05-28 23:20:34', '2018-05-28 23:20:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (480, 2, 240, 1.0, '2018-05-28 23:20:34', '2018-05-28 23:20:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (481, 1, 241, 3.0, '2018-05-28 23:20:51', '2018-05-28 23:20:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (482, 2, 241, 4.0, '2018-05-28 23:20:51', '2018-05-28 23:20:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (483, 1, 242, 1.0, '2018-05-28 23:21:07', '2018-05-28 23:21:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (484, 2, 242, 4.0, '2018-05-28 23:21:07', '2018-05-28 23:21:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (485, 1, 243, 2.0, '2018-05-28 23:21:24', '2018-05-28 23:21:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (486, 2, 243, 2.0, '2018-05-28 23:21:24', '2018-05-28 23:21:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (487, 1, 244, 0.0, '2018-05-28 23:21:44', '2018-05-28 23:21:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (488, 2, 244, 1.0, '2018-05-28 23:21:44', '2018-05-28 23:21:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (489, 1, 245, 0.0, '2018-05-28 23:22:07', '2018-05-28 23:22:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (490, 2, 245, 2.0, '2018-05-28 23:22:07', '2018-05-28 23:22:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (491, 1, 246, 0.0, '2018-05-28 23:24:56', '2018-05-28 23:24:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (492, 2, 246, 0.5, '2018-05-28 23:24:56', '2018-05-28 23:24:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (493, 1, 247, 0.0, '2018-05-28 23:25:56', '2018-05-28 23:25:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (494, 2, 247, 3.0, '2018-05-28 23:25:56', '2018-05-28 23:25:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (495, 1, 248, 0.0, '2018-05-28 23:26:13', '2018-05-28 23:26:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (496, 2, 248, 1.0, '2018-05-28 23:26:13', '2018-05-28 23:26:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (497, 1, 249, 2.0, '2018-05-28 23:27:41', '2018-05-28 23:27:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (498, 2, 249, 3.5, '2018-05-28 23:27:41', '2018-05-28 23:27:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (499, 1, 250, 0.0, '2018-05-28 23:28:21', '2018-05-28 23:28:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (500, 2, 250, 6.0, '2018-05-28 23:28:21', '2018-05-28 23:28:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (501, 1, 251, 0.0, '2018-05-28 23:28:32', '2018-05-28 23:28:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (502, 2, 251, 3.0, '2018-05-28 23:28:32', '2018-05-28 23:28:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (503, 1, 252, 0.0, '2018-05-28 23:28:48', '2018-05-28 23:28:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (504, 2, 252, 1.0, '2018-05-28 23:28:48', '2018-05-28 23:28:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (505, 1, 253, 11.0, '2018-05-28 23:30:00', '2018-05-28 23:30:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (506, 2, 253, 3.0, '2018-05-28 23:30:00', '2018-05-28 23:30:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (507, 1, 254, 14.0, '2018-05-28 23:30:30', '2018-05-28 23:30:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (508, 2, 254, 3.0, '2018-05-28 23:30:30', '2018-05-28 23:30:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (509, 1, 255, 5.0, '2018-05-28 23:31:00', '2018-05-28 23:31:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (510, 2, 255, 4.0, '2018-05-28 23:31:00', '2018-05-28 23:31:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (511, 1, 256, 7.0, '2018-05-28 23:31:30', '2018-05-28 23:31:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (512, 2, 256, 3.0, '2018-05-28 23:31:30', '2018-05-28 23:31:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (513, 1, 257, 10.0, '2018-05-28 23:31:47', '2018-05-28 23:31:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (514, 2, 257, 5.0, '2018-05-28 23:31:47', '2018-05-28 23:31:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (515, 1, 258, 0.0, '2018-05-28 23:32:00', '2018-05-28 23:32:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (516, 2, 258, 0.0, '2018-05-28 23:32:00', '2018-05-28 23:32:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (517, 1, 259, 3.0, '2018-05-28 23:32:13', '2018-05-28 23:32:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (518, 2, 259, 1.0, '2018-05-28 23:32:13', '2018-05-28 23:32:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (519, 1, 260, 2.0, '2018-05-28 23:32:50', '2018-05-28 23:32:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (520, 2, 260, 1.0, '2018-05-28 23:32:50', '2018-05-28 23:32:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (521, 1, 261, 12.0, '2018-05-29 23:56:10', '2018-05-29 23:56:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (522, 2, 261, 7.0, '2018-05-29 23:56:10', '2018-05-29 23:56:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (523, 1, 262, 7.0, '2018-05-29 23:56:41', '2018-05-29 23:56:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (524, 2, 262, 5.0, '2018-05-29 23:56:41', '2018-05-29 23:56:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (525, 1, 263, 4.0, '2018-05-29 23:56:59', '2018-05-29 23:56:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (526, 2, 263, 5.0, '2018-05-29 23:56:59', '2018-05-29 23:56:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (527, 1, 264, 10.0, '2018-05-29 23:57:14', '2018-05-29 23:57:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (528, 2, 264, 5.0, '2018-05-29 23:57:14', '2018-05-29 23:57:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (529, 1, 265, 2.5, '2018-05-29 23:57:35', '2018-05-29 23:57:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (530, 2, 265, 4.0, '2018-05-29 23:57:35', '2018-05-29 23:57:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (531, 1, 266, 3.0, '2018-05-29 23:58:11', '2018-05-29 23:58:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (532, 2, 266, 5.0, '2018-05-29 23:58:11', '2018-05-29 23:58:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (533, 1, 267, 3.0, '2018-05-29 23:59:07', '2018-05-29 23:59:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (534, 2, 267, 3.0, '2018-05-29 23:59:07', '2018-05-29 23:59:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (535, 1, 268, 0.0, '2018-05-29 23:59:22', '2018-05-29 23:59:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (536, 2, 268, 5.0, '2018-05-29 23:59:22', '2018-05-29 23:59:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (537, 1, 269, 2.0, '2018-05-29 23:59:38', '2018-05-29 23:59:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (538, 2, 269, 1.0, '2018-05-29 23:59:38', '2018-05-29 23:59:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (539, 1, 270, 0.0, '2018-05-29 23:59:51', '2018-05-29 23:59:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (540, 2, 270, 2.0, '2018-05-29 23:59:51', '2018-05-29 23:59:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (541, 1, 271, 1.0, '2018-05-30 00:00:53', '2018-05-30 00:00:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (542, 2, 271, 2.0, '2018-05-30 00:00:53', '2018-05-30 00:00:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (543, 1, 272, 0.0, '2018-05-30 00:01:07', '2018-05-30 00:01:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (544, 2, 272, 5.0, '2018-05-30 00:01:07', '2018-05-30 00:01:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (545, 1, 273, 1.0, '2018-05-30 00:01:27', '2018-05-30 00:01:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (546, 2, 273, 4.0, '2018-05-30 00:01:27', '2018-05-30 00:01:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (547, 1, 274, 1.0, '2018-05-30 00:01:54', '2018-05-30 00:01:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (548, 2, 274, 2.0, '2018-05-30 00:01:54', '2018-05-30 00:01:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (549, 1, 275, 0.0, '2018-05-30 00:02:04', '2018-05-30 00:02:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (550, 2, 275, 1.0, '2018-05-30 00:02:04', '2018-05-30 00:02:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (551, 1, 276, 0.0, '2018-05-30 00:02:23', '2018-05-30 00:02:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (552, 2, 276, 7.0, '2018-05-30 00:02:23', '2018-05-30 00:18:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (553, 1, 277, 0.0, '2018-05-30 00:03:43', '2018-05-30 00:03:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (554, 2, 277, 0.5, '2018-05-30 00:03:43', '2018-05-30 00:04:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (555, 1, 278, 0.0, '2018-05-30 00:04:39', '2018-05-30 00:04:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (556, 2, 278, 4.0, '2018-05-30 00:04:39', '2018-05-30 00:04:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (557, 1, 279, 0.0, '2018-05-30 00:05:01', '2018-05-30 00:05:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (558, 2, 279, 2.0, '2018-05-30 00:05:01', '2018-05-30 00:05:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (559, 1, 280, 5.0, '2018-05-30 00:05:24', '2018-05-30 00:05:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (560, 2, 280, 4.0, '2018-05-30 00:05:24', '2018-05-30 00:05:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (561, 1, 281, 0.0, '2018-05-30 00:05:42', '2018-05-30 00:05:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (562, 2, 281, 6.0, '2018-05-30 00:05:42', '2018-05-30 00:05:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (563, 1, 282, 0.0, '2018-05-30 00:06:00', '2018-05-30 00:06:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (564, 2, 282, 4.0, '2018-05-30 00:06:00', '2018-05-30 00:06:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (565, 1, 283, 0.0, '2018-05-30 00:06:09', '2018-05-30 00:06:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (566, 2, 283, 1.0, '2018-05-30 00:06:09', '2018-05-30 00:06:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (567, 1, 284, 8.0, '2018-05-30 00:06:26', '2018-05-30 00:06:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (568, 2, 284, 4.0, '2018-05-30 00:06:26', '2018-05-30 00:06:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (569, 1, 285, 10.0, '2018-05-30 00:07:09', '2018-05-30 00:07:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (570, 2, 285, 4.5, '2018-05-30 00:07:09', '2018-05-30 00:07:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (571, 1, 286, 4.0, '2018-05-30 00:07:36', '2018-05-30 00:07:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (572, 2, 286, 4.0, '2018-05-30 00:07:36', '2018-05-30 00:07:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (573, 1, 287, 12.0, '2018-05-30 00:07:59', '2018-05-30 00:07:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (574, 2, 287, 4.0, '2018-05-30 00:07:59', '2018-05-30 00:07:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (575, 1, 288, 5.0, '2018-05-30 00:08:58', '2018-05-30 00:08:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (576, 2, 288, 6.0, '2018-05-30 00:08:58', '2018-05-30 00:08:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (577, 1, 289, 0.0, '2018-05-30 00:09:09', '2018-05-30 00:09:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (578, 2, 289, 0.0, '2018-05-30 00:09:09', '2018-05-30 00:09:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (579, 1, 290, 2.0, '2018-05-30 00:09:22', '2018-05-30 00:09:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (580, 2, 290, 1.0, '2018-05-30 00:09:22', '2018-05-30 00:09:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (581, 1, 291, 1.0, '2018-05-30 00:09:40', '2018-05-30 00:09:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (582, 2, 291, 2.0, '2018-05-30 00:09:40', '2018-05-30 00:09:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (587, 1, 294, 12.0, '2018-05-31 20:26:36', '2018-05-31 20:26:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (588, 2, 294, 1.0, '2018-05-31 20:26:36', '2018-05-31 20:26:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (589, 1, 295, 7.0, '2018-05-31 20:27:23', '2018-05-31 20:56:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (590, 2, 295, 4.0, '2018-05-31 20:27:23', '2018-05-31 20:27:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (591, 1, 296, 19.0, '2018-05-31 20:27:56', '2018-05-31 20:27:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (592, 2, 296, 2.0, '2018-05-31 20:27:56', '2018-05-31 20:27:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (593, 1, 297, 15.0, '2018-05-31 20:28:23', '2018-05-31 20:28:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (594, 2, 297, 1.0, '2018-05-31 20:28:23', '2018-05-31 20:28:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (595, 1, 298, 2.5, '2018-05-31 20:29:14', '2018-05-31 20:29:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (596, 2, 298, 2.0, '2018-05-31 20:29:14', '2018-05-31 20:29:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (597, 1, 299, 9.0, '2018-05-31 20:29:48', '2018-05-31 20:29:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (598, 2, 299, 2.5, '2018-05-31 20:29:48', '2018-05-31 20:29:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (599, 1, 300, 3.0, '2018-05-31 20:30:55', '2018-05-31 20:30:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (600, 2, 300, 1.5, '2018-05-31 20:30:55', '2018-05-31 20:30:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (601, 1, 301, 6.0, '2018-05-31 20:31:20', '2018-05-31 20:31:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (602, 2, 301, 2.0, '2018-05-31 20:31:20', '2018-05-31 20:31:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (603, 1, 302, 2.0, '2018-05-31 20:31:34', '2018-05-31 20:31:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (604, 2, 302, 1.0, '2018-05-31 20:31:34', '2018-05-31 20:31:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (605, 1, 303, 1.0, '2018-05-31 20:32:05', '2018-05-31 20:57:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (606, 2, 303, 2.0, '2018-05-31 20:32:05', '2018-05-31 20:32:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (607, 1, 304, 1.0, '2018-05-31 20:32:36', '2018-05-31 20:32:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (608, 2, 304, 1.0, '2018-05-31 20:32:36', '2018-05-31 20:32:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (609, 1, 305, 4.0, '2018-05-31 20:32:57', '2018-05-31 20:32:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (610, 2, 305, 3.0, '2018-05-31 20:32:57', '2018-05-31 20:32:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (611, 1, 306, 5.0, '2018-05-31 20:33:24', '2018-05-31 20:33:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (612, 2, 306, 1.0, '2018-05-31 20:33:24', '2018-05-31 20:33:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (613, 1, 307, 3.0, '2018-05-31 20:33:41', '2018-05-31 20:33:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (614, 2, 307, 2.0, '2018-05-31 20:33:41', '2018-05-31 20:33:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (615, 1, 308, 0.0, '2018-05-31 20:33:53', '2018-05-31 20:33:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (616, 2, 308, 1.0, '2018-05-31 20:33:53', '2018-05-31 20:33:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (617, 1, 309, 3.5, '2018-05-31 20:40:59', '2018-05-31 20:48:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (618, 2, 309, 1.5, '2018-05-31 20:40:59', '2018-05-31 20:40:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (619, 1, 310, 0.0, '2018-05-31 20:41:13', '2018-05-31 20:41:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (620, 2, 310, 0.5, '2018-05-31 20:41:13', '2018-05-31 20:57:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (621, 1, 311, 3.0, '2018-05-31 20:42:09', '2018-05-31 20:46:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (622, 2, 311, 0.0, '2018-05-31 20:42:09', '2018-05-31 20:46:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (623, 1, 312, 0.0, '2018-05-31 20:42:38', '2018-05-31 20:42:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (624, 2, 312, 1.0, '2018-05-31 20:42:38', '2018-05-31 20:42:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (625, 1, 313, 5.0, '2018-05-31 20:43:01', '2018-05-31 20:43:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (626, 2, 313, 3.0, '2018-05-31 20:43:01', '2018-05-31 20:43:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (627, 1, 314, 0.0, '2018-05-31 20:44:33', '2018-05-31 20:44:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (628, 2, 314, 6.0, '2018-05-31 20:44:33', '2018-05-31 20:44:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (629, 1, 315, 3.0, '2018-05-31 20:45:13', '2018-05-31 20:45:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (630, 2, 315, 0.0, '2018-05-31 20:45:13', '2018-05-31 20:45:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (631, 1, 316, 0.0, '2018-05-31 20:45:30', '2018-05-31 20:45:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (632, 2, 316, 1.0, '2018-05-31 20:45:30', '2018-05-31 20:45:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (633, 1, 317, 7.0, '2018-05-31 20:49:27', '2018-05-31 20:50:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (634, 2, 317, 2.0, '2018-05-31 20:49:27', '2018-05-31 20:49:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (635, 1, 318, 10.0, '2018-05-31 20:53:08', '2018-05-31 20:53:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (636, 2, 318, 2.0, '2018-05-31 20:53:08', '2018-05-31 20:53:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (637, 1, 319, 4.0, '2018-05-31 20:53:44', '2018-05-31 20:53:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (638, 2, 319, 3.0, '2018-05-31 20:53:44', '2018-05-31 20:53:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (639, 1, 320, 12.0, '2018-05-31 20:54:16', '2018-05-31 20:54:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (640, 2, 320, 3.0, '2018-05-31 20:54:16', '2018-05-31 20:54:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (641, 1, 321, 5.0, '2018-05-31 20:54:45', '2018-05-31 20:54:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (642, 2, 321, 1.0, '2018-05-31 20:54:45', '2018-05-31 20:54:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (643, 1, 322, 0.0, '2018-05-31 20:54:59', '2018-05-31 20:54:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (644, 2, 322, 0.0, '2018-05-31 20:54:59', '2018-05-31 20:54:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (645, 1, 323, 2.0, '2018-05-31 20:55:20', '2018-05-31 20:55:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (646, 2, 323, 0.0, '2018-05-31 20:55:20', '2018-05-31 20:55:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (647, 1, 324, 1.0, '2018-05-31 20:55:42', '2018-05-31 20:55:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (648, 2, 324, 2.0, '2018-05-31 20:55:42', '2018-05-31 20:55:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (649, 1, 325, 7.0, '2018-06-02 01:34:54', '2018-06-02 01:34:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (650, 2, 325, 0.0, '2018-06-02 01:34:54', '2018-06-02 01:34:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (651, 1, 326, 7.0, '2018-06-02 01:35:32', '2018-06-02 01:35:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (652, 2, 326, 2.0, '2018-06-02 01:35:32', '2018-06-02 01:35:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (653, 1, 327, 16.0, '2018-06-02 01:36:08', '2018-06-02 01:36:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (654, 2, 327, 2.0, '2018-06-02 01:36:08', '2018-06-02 01:36:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (655, 1, 328, 11.0, '2018-06-02 01:36:47', '2018-06-02 01:36:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (656, 2, 328, 1.0, '2018-06-02 01:36:47', '2018-06-02 01:36:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (657, 1, 329, 1.0, '2018-06-02 01:37:14', '2018-06-02 01:37:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (658, 2, 329, 0.0, '2018-06-02 01:37:14', '2018-06-02 01:37:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (659, 1, 330, 6.0, '2018-06-02 01:37:38', '2018-06-02 01:37:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (660, 2, 330, 0.0, '2018-06-02 01:37:38', '2018-06-02 01:37:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (661, 1, 331, 1.0, '2018-06-02 01:38:02', '2018-06-02 01:38:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (662, 2, 331, 0.0, '2018-06-02 01:38:02', '2018-06-02 01:38:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (663, 1, 332, 3.0, '2018-06-02 01:38:31', '2018-06-02 01:38:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (664, 2, 332, 0.0, '2018-06-02 01:38:31', '2018-06-02 01:38:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (665, 1, 333, 2.0, '2018-06-02 01:38:56', '2018-06-02 01:38:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (666, 2, 333, 1.0, '2018-06-02 01:38:56', '2018-06-02 01:38:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (667, 1, 334, 0.0, '2018-06-02 01:39:33', '2018-06-02 01:39:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (668, 2, 334, 1.0, '2018-06-02 01:39:33', '2018-06-02 01:39:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (669, 1, 335, 1.0, '2018-06-02 01:40:08', '2018-06-02 01:40:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (670, 2, 335, 1.0, '2018-06-02 01:40:08', '2018-06-02 01:40:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (671, 1, 336, 3.0, '2018-06-02 01:40:55', '2018-06-02 01:40:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (672, 2, 336, 0.0, '2018-06-02 01:40:55', '2018-06-02 01:40:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (673, 1, 337, 4.0, '2018-06-02 01:41:24', '2018-06-02 01:57:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (674, 2, 337, 2.0, '2018-06-02 01:41:24', '2018-06-02 01:57:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (675, 1, 338, 3.0, '2018-06-02 01:41:50', '2018-06-02 01:41:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (676, 2, 338, 0.0, '2018-06-02 01:41:50', '2018-06-02 01:41:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (677, 1, 339, 0.0, '2018-06-02 01:42:07', '2018-06-02 01:42:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (678, 2, 339, 1.0, '2018-06-02 01:42:07', '2018-06-02 01:42:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (679, 1, 340, 6.0, '2018-06-02 01:44:20', '2018-06-02 01:44:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (680, 2, 340, 0.0, '2018-06-02 01:44:20', '2018-06-02 01:44:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (681, 1, 341, 0.0, '2018-06-02 01:44:39', '2018-06-02 01:44:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (682, 2, 341, 0.5, '2018-06-02 01:44:39', '2018-06-02 01:44:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (683, 1, 342, 4.0, '2018-06-02 01:45:40', '2018-06-02 01:45:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (684, 2, 342, 0.0, '2018-06-02 01:45:40', '2018-06-02 01:45:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (685, 1, 343, 0.0, '2018-06-02 01:50:22', '2018-06-02 01:50:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (686, 2, 343, 1.0, '2018-06-02 01:50:22', '2018-06-02 01:50:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (687, 1, 344, 5.0, '2018-06-02 01:51:08', '2018-06-02 01:51:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (688, 2, 344, 0.0, '2018-06-02 01:51:08', '2018-06-02 01:51:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (689, 1, 345, 0.0, '2018-06-02 01:51:25', '2018-06-02 01:51:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (690, 2, 345, 5.0, '2018-06-02 01:51:25', '2018-06-02 01:51:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (691, 1, 346, 0.0, '2018-06-02 01:51:50', '2018-06-02 01:51:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (692, 2, 346, 0.0, '2018-06-02 01:51:50', '2018-06-02 01:51:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (693, 1, 347, 0.0, '2018-06-02 01:52:04', '2018-06-02 01:52:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (694, 2, 347, 1.0, '2018-06-02 01:52:04', '2018-06-02 01:52:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (695, 1, 348, 6.0, '2018-06-02 01:52:41', '2018-06-02 01:52:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (696, 2, 348, 0.0, '2018-06-02 01:52:41', '2018-06-02 01:52:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (697, 1, 349, 7.0, '2018-06-02 01:53:13', '2018-06-02 01:53:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (698, 2, 349, 3.0, '2018-06-02 01:53:13', '2018-06-02 01:53:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (699, 1, 350, 3.0, '2018-06-02 01:53:38', '2018-06-02 01:53:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (700, 2, 350, 3.0, '2018-06-02 01:53:38', '2018-06-02 01:53:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (701, 1, 351, 12.0, '2018-06-02 01:53:57', '2018-06-02 01:53:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (702, 2, 351, 1.0, '2018-06-02 01:53:57', '2018-06-02 01:53:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (703, 1, 352, 6.0, '2018-06-02 01:54:26', '2018-06-02 02:00:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (704, 2, 352, 0.0, '2018-06-02 01:54:26', '2018-06-02 01:54:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (705, 1, 353, 0.0, '2018-06-02 01:54:40', '2018-06-02 01:54:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (706, 2, 353, 0.0, '2018-06-02 01:54:40', '2018-06-02 01:54:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (707, 1, 354, 0.0, '2018-06-02 01:55:02', '2018-06-02 01:55:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (708, 2, 354, 0.0, '2018-06-02 01:55:02', '2018-06-02 01:55:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (709, 1, 355, 0.0, '2018-06-02 01:55:45', '2018-06-02 01:55:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (710, 2, 355, 0.0, '2018-06-02 01:55:45', '2018-06-02 01:55:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (711, 1, 356, 14.0, '2018-06-02 02:02:10', '2018-06-02 02:02:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (712, 2, 356, 0.0, '2018-06-02 02:02:10', '2018-06-02 02:02:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (713, 1, 357, 5.0, '2018-06-02 02:02:34', '2018-06-02 02:02:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (714, 2, 357, 4.0, '2018-06-02 02:02:34', '2018-06-02 02:02:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (715, 1, 358, 14.0, '2018-06-02 02:03:11', '2018-06-02 02:03:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (716, 2, 358, 0.0, '2018-06-02 02:03:11', '2018-06-02 02:03:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (717, 1, 359, 12.0, '2018-06-02 02:03:53', '2018-06-02 02:03:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (718, 2, 359, 1.0, '2018-06-02 02:03:53', '2018-06-02 02:03:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (719, 1, 360, 6.5, '2018-06-02 02:04:20', '2018-06-02 02:04:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (720, 2, 360, 0.0, '2018-06-02 02:04:20', '2018-06-02 02:04:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (721, 1, 361, 5.0, '2018-06-02 02:04:43', '2018-06-02 02:04:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (722, 2, 361, 1.0, '2018-06-02 02:04:43', '2018-06-02 02:04:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (723, 1, 362, 3.5, '2018-06-02 02:05:13', '2018-06-02 02:31:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (724, 2, 362, 1.0, '2018-06-02 02:05:13', '2018-06-02 02:05:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (725, 1, 363, 7.0, '2018-06-02 02:05:40', '2018-06-02 02:05:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (726, 2, 363, 2.0, '2018-06-02 02:05:40', '2018-06-02 02:05:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (727, 1, 364, 2.0, '2018-06-02 02:05:56', '2018-06-02 02:05:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (728, 2, 364, 1.0, '2018-06-02 02:05:56', '2018-06-02 02:05:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (729, 1, 365, 1.0, '2018-06-02 02:06:25', '2018-06-02 02:06:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (730, 2, 365, 0.0, '2018-06-02 02:06:25', '2018-06-02 02:06:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (731, 1, 366, 1.0, '2018-06-02 02:06:51', '2018-06-02 02:07:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (732, 2, 366, 1.0, '2018-06-02 02:06:51', '2018-06-02 02:06:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (733, 1, 367, 4.0, '2018-06-02 02:07:34', '2018-06-02 02:07:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (734, 2, 367, 3.0, '2018-06-02 02:07:34', '2018-06-02 02:07:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (735, 1, 368, 4.0, '2018-06-02 02:08:04', '2018-06-02 02:08:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (736, 2, 368, 1.0, '2018-06-02 02:08:04', '2018-06-02 02:08:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (737, 1, 369, 2.0, '2018-06-02 02:08:29', '2018-06-02 02:08:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (738, 2, 369, 1.0, '2018-06-02 02:08:29', '2018-06-02 02:37:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (739, 1, 370, 0.0, '2018-06-02 02:08:43', '2018-06-02 02:08:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (740, 2, 370, 1.0, '2018-06-02 02:08:43', '2018-06-02 02:08:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (741, 1, 371, 9.5, '2018-06-02 02:13:21', '2018-06-02 02:13:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (742, 2, 371, 0.5, '2018-06-02 02:13:21', '2018-06-02 02:13:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (743, 1, 372, 0.0, '2018-06-02 02:13:48', '2018-06-02 02:13:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (744, 2, 372, 0.5, '2018-06-02 02:13:48', '2018-06-02 02:13:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (745, 1, 373, 4.0, '2018-06-02 02:14:25', '2018-06-02 02:39:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (746, 2, 373, 0.0, '2018-06-02 02:14:25', '2018-06-02 02:39:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (747, 1, 374, 2.0, '2018-06-02 02:14:50', '2018-06-02 02:15:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (748, 2, 374, 1.0, '2018-06-02 02:14:50', '2018-06-02 02:14:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (749, 1, 375, 3.0, '2018-06-02 02:15:45', '2018-06-02 02:15:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (750, 2, 375, 2.0, '2018-06-02 02:15:45', '2018-06-02 02:15:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (751, 1, 376, 0.0, '2018-06-02 02:16:01', '2018-06-02 02:47:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (752, 2, 376, 6.0, '2018-06-02 02:16:01', '2018-06-02 02:41:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (753, 1, 377, 0.0, '2018-06-02 02:16:44', '2018-06-02 03:06:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (754, 2, 377, 0.0, '2018-06-02 02:16:44', '2018-06-02 03:05:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (755, 1, 378, 0.0, '2018-06-02 02:16:58', '2018-06-02 02:16:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (756, 2, 378, 1.0, '2018-06-02 02:16:58', '2018-06-02 02:16:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (757, 1, 379, 5.0, '2018-06-02 02:18:03', '2018-06-02 02:18:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (758, 2, 379, 1.0, '2018-06-02 02:18:03', '2018-06-02 02:18:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (759, 1, 380, 4.0, '2018-06-02 02:18:53', '2018-06-02 02:18:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (760, 2, 380, 4.0, '2018-06-02 02:18:53', '2018-06-02 02:18:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (761, 1, 381, 3.0, '2018-06-02 02:19:33', '2018-06-02 02:19:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (762, 2, 381, 2.5, '2018-06-02 02:19:33', '2018-06-02 02:19:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (763, 1, 382, 10.0, '2018-06-02 02:19:53', '2018-06-02 02:19:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (764, 2, 382, 3.0, '2018-06-02 02:19:53', '2018-06-02 02:19:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (765, 1, 383, 12.0, '2018-06-02 02:20:22', '2018-06-02 02:20:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (766, 2, 383, 3.0, '2018-06-02 02:20:22', '2018-06-02 02:20:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (767, 1, 384, 0.0, '2018-06-02 02:20:35', '2018-06-02 02:20:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (768, 2, 384, 0.0, '2018-06-02 02:20:35', '2018-06-02 02:20:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (769, 1, 385, 0.0, '2018-06-02 02:20:51', '2018-06-02 03:07:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (770, 2, 385, 0.0, '2018-06-02 02:20:51', '2018-06-02 03:07:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (771, 1, 386, 0.0, '2018-06-02 02:21:12', '2018-06-02 02:21:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (772, 2, 386, 0.0, '2018-06-02 02:21:12', '2018-06-02 03:08:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (773, 1, 387, 4.0, '2018-06-04 13:17:03', '2018-06-04 13:17:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (774, 2, 387, 4.0, '2018-06-04 13:17:03', '2018-06-04 13:17:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (775, 1, 388, 5.0, '2018-06-04 13:17:16', '2018-06-04 13:17:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (776, 2, 388, 0.0, '2018-06-04 13:17:16', '2018-06-04 13:17:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (777, 1, 389, 6.0, '2018-06-04 13:17:37', '2018-06-04 13:17:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (778, 2, 389, 4.0, '2018-06-04 13:17:37', '2018-06-04 13:17:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (779, 1, 390, 6.0, '2018-06-04 13:17:51', '2018-06-04 13:17:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (780, 2, 390, 1.0, '2018-06-04 13:17:51', '2018-06-04 13:17:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (781, 1, 391, 1.5, '2018-06-04 13:18:38', '2018-06-04 13:18:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (782, 2, 391, 3.0, '2018-06-04 13:18:38', '2018-06-04 13:18:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (783, 1, 392, 5.0, '2018-06-04 13:18:52', '2018-06-04 13:18:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (784, 2, 392, 2.0, '2018-06-04 13:18:52', '2018-06-04 13:18:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (785, 1, 393, 1.5, '2018-06-04 13:19:22', '2018-06-04 13:42:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (786, 2, 393, 3.0, '2018-06-04 13:19:22', '2018-06-04 13:19:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (787, 1, 394, 3.0, '2018-06-04 13:19:40', '2018-06-04 13:19:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (788, 2, 394, 4.0, '2018-06-04 13:19:40', '2018-06-04 13:19:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (789, 1, 395, 2.0, '2018-06-04 13:20:08', '2018-06-04 13:20:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (790, 2, 395, 0.0, '2018-06-04 13:20:08', '2018-06-04 13:20:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (791, 1, 396, 1.0, '2018-06-04 13:20:42', '2018-06-04 13:20:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (792, 2, 396, 0.0, '2018-06-04 13:20:42', '2018-06-04 13:20:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (793, 1, 397, 2.0, '2018-06-04 13:21:59', '2018-06-04 13:21:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (794, 2, 397, 2.0, '2018-06-04 13:21:59', '2018-06-04 13:21:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (795, 1, 398, 4.0, '2018-06-04 13:23:49', '2018-06-04 13:27:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (796, 2, 398, 4.0, '2018-06-04 13:23:49', '2018-06-04 13:23:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (797, 1, 399, 4.0, '2018-06-04 13:25:31', '2018-06-04 13:25:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (798, 2, 399, 0.5, '2018-06-04 13:25:31', '2018-06-04 13:25:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (799, 1, 400, 3.0, '2018-06-04 13:27:15', '2018-06-04 13:27:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (800, 2, 400, 2.0, '2018-06-04 13:27:15', '2018-06-04 13:27:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (801, 1, 401, 0.0, '2018-06-04 13:29:24', '2018-06-04 13:29:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (802, 2, 401, 1.0, '2018-06-04 13:29:24', '2018-06-04 13:29:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (803, 1, 402, 9.0, '2018-06-04 13:34:15', '2018-06-04 13:34:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (804, 2, 402, 0.0, '2018-06-04 13:34:15', '2018-06-04 13:34:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (805, 1, 403, 0.0, '2018-06-04 13:34:43', '2018-06-04 13:34:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (806, 2, 403, 0.5, '2018-06-04 13:34:43', '2018-06-04 13:34:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (807, 1, 404, 3.0, '2018-06-04 13:35:05', '2018-06-04 13:35:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (808, 2, 404, 2.0, '2018-06-04 13:35:05', '2018-06-04 13:35:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (809, 1, 405, 0.0, '2018-06-04 13:35:27', '2018-06-04 13:35:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (810, 2, 405, 3.0, '2018-06-04 13:35:27', '2018-06-04 13:35:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (811, 1, 406, 5.0, '2018-06-04 13:36:43', '2018-06-04 13:36:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (812, 2, 406, 3.0, '2018-06-04 13:36:43', '2018-06-04 13:36:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (813, 1, 407, 3.0, '2018-06-04 13:37:05', '2018-06-04 13:37:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (814, 2, 407, 3.0, '2018-06-04 13:37:05', '2018-06-04 13:37:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (815, 1, 408, 4.0, '2018-06-04 13:37:26', '2018-06-04 13:45:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (816, 2, 408, 0.0, '2018-06-04 13:37:26', '2018-06-04 13:45:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (817, 1, 409, 0.0, '2018-06-04 13:37:53', '2018-06-04 13:37:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (818, 2, 409, 1.0, '2018-06-04 13:37:53', '2018-06-04 13:37:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (819, 1, 410, 10.0, '2018-06-04 13:38:52', '2018-06-04 13:38:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (820, 2, 410, 2.0, '2018-06-04 13:38:52', '2018-06-04 13:38:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (821, 1, 411, 3.0, '2018-06-04 13:39:32', '2018-06-04 13:39:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (822, 2, 411, 2.0, '2018-06-04 13:39:32', '2018-06-04 13:39:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (823, 1, 412, 6.0, '2018-06-04 13:40:05', '2018-06-04 13:40:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (824, 2, 412, 2.0, '2018-06-04 13:40:05', '2018-06-04 13:40:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (825, 1, 413, 8.0, '2018-06-04 13:40:22', '2018-06-04 13:40:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (826, 2, 413, 3.0, '2018-06-04 13:40:22', '2018-06-04 13:40:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (827, 1, 414, 7.0, '2018-06-04 13:40:53', '2018-06-04 13:40:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (828, 2, 414, 2.0, '2018-06-04 13:40:53', '2018-06-04 13:40:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (829, 1, 415, 0.0, '2018-06-04 13:41:05', '2018-06-04 13:41:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (830, 2, 415, 0.0, '2018-06-04 13:41:05', '2018-06-04 13:41:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (831, 1, 416, 3.0, '2018-06-04 13:41:36', '2018-06-04 13:41:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (832, 2, 416, 0.0, '2018-06-04 13:41:36', '2018-06-04 13:41:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (833, 1, 417, 3.0, '2018-06-04 13:41:53', '2018-06-04 13:54:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (834, 2, 417, 0.0, '2018-06-04 13:41:53', '2018-06-04 13:54:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (835, 1, 418, 12.0, '2018-06-04 14:11:47', '2018-06-04 14:11:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (836, 2, 418, 2.0, '2018-06-04 14:11:47', '2018-06-04 14:11:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (837, 1, 419, 7.0, '2018-06-04 14:59:50', '2018-06-04 14:59:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (838, 2, 419, 1.0, '2018-06-04 14:59:50', '2018-06-04 14:59:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (839, 1, 420, 5.0, '2018-06-04 15:00:06', '2018-06-04 15:00:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (840, 2, 420, 2.0, '2018-06-04 15:00:06', '2018-06-04 15:00:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (841, 1, 421, 9.0, '2018-06-04 15:00:28', '2018-06-04 15:00:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (842, 2, 421, 0.0, '2018-06-04 15:00:28', '2018-06-04 15:00:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (843, 1, 422, 2.0, '2018-06-04 15:01:09', '2018-06-04 15:01:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (844, 2, 422, 1.0, '2018-06-04 15:01:09', '2018-06-04 15:01:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (845, 1, 423, 3.0, '2018-06-04 15:01:29', '2018-06-04 15:01:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (846, 2, 423, 1.0, '2018-06-04 15:01:29', '2018-06-04 15:01:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (847, 1, 424, 2.0, '2018-06-04 15:01:52', '2018-06-04 15:01:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (848, 2, 424, 1.0, '2018-06-04 15:01:52', '2018-06-04 15:01:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (849, 1, 425, 3.0, '2018-06-04 15:02:05', '2018-06-04 15:02:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (850, 2, 425, 2.0, '2018-06-04 15:02:05', '2018-06-04 15:02:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (851, 1, 426, 1.0, '2018-06-04 15:02:21', '2018-06-04 15:02:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (852, 2, 426, 1.0, '2018-06-04 15:02:21', '2018-06-04 15:02:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (853, 1, 427, 1.0, '2018-06-04 15:02:48', '2018-06-04 15:02:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (854, 2, 427, 0.0, '2018-06-04 15:02:48', '2018-06-04 15:02:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (855, 1, 428, 2.0, '2018-06-04 15:03:14', '2018-06-04 15:03:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (856, 2, 428, 2.0, '2018-06-04 15:03:14', '2018-06-04 15:03:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (857, 1, 429, 4.0, '2018-06-04 15:03:31', '2018-06-04 15:03:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (858, 2, 429, 2.0, '2018-06-04 15:03:31', '2018-06-04 15:03:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (859, 1, 430, 4.0, '2018-06-04 15:03:49', '2018-06-04 15:03:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (860, 2, 430, 1.0, '2018-06-04 15:03:49', '2018-06-04 15:03:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (861, 1, 431, 2.0, '2018-06-04 15:04:10', '2018-06-04 15:04:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (862, 2, 431, 2.0, '2018-06-04 15:04:10', '2018-06-04 15:04:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (863, 1, 432, 0.0, '2018-06-04 15:04:27', '2018-06-04 15:04:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (864, 2, 432, 0.0, '2018-06-04 15:04:27', '2018-06-04 15:04:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (865, 1, 433, 4.0, '2018-06-04 15:08:23', '2018-06-04 15:08:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (866, 2, 433, 0.0, '2018-06-04 15:08:23', '2018-06-04 15:08:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (867, 1, 434, 0.0, '2018-06-04 15:08:38', '2018-06-04 15:08:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (868, 2, 434, 0.0, '2018-06-04 15:08:38', '2018-06-04 15:08:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (869, 1, 435, 2.0, '2018-06-04 15:09:10', '2018-06-04 15:09:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (870, 2, 435, 0.0, '2018-06-04 15:09:10', '2018-06-04 15:09:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (871, 1, 436, 0.0, '2018-06-04 15:09:22', '2018-06-04 15:09:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (872, 2, 436, 1.0, '2018-06-04 15:09:22', '2018-06-04 15:09:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (873, 1, 437, 4.0, '2018-06-04 15:09:49', '2018-06-04 15:09:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (874, 2, 437, 3.0, '2018-06-04 15:09:49', '2018-06-04 15:09:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (875, 1, 438, 2.0, '2018-06-04 15:10:03', '2018-06-04 15:10:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (876, 2, 438, 4.0, '2018-06-04 15:10:03', '2018-06-04 15:10:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (877, 1, 439, 2.0, '2018-06-04 15:10:17', '2018-06-04 15:10:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (878, 2, 439, 1.0, '2018-06-04 15:10:17', '2018-06-04 15:10:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (879, 1, 440, 0.0, '2018-06-04 15:10:27', '2018-06-04 15:10:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (880, 2, 440, 1.0, '2018-06-04 15:10:27', '2018-06-04 15:10:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (881, 1, 441, 7.0, '2018-06-04 15:10:53', '2018-06-04 15:10:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (882, 2, 441, 2.0, '2018-06-04 15:10:53', '2018-06-04 15:10:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (883, 1, 442, 0.0, '2018-06-04 15:11:15', '2018-06-04 15:11:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (884, 2, 442, 4.0, '2018-06-04 15:11:15', '2018-06-04 15:11:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (885, 1, 443, 4.0, '2018-06-04 15:11:51', '2018-06-04 15:11:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (886, 2, 443, 3.0, '2018-06-04 15:11:51', '2018-06-04 15:11:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (887, 1, 444, 6.0, '2018-06-04 15:12:27', '2018-06-04 15:12:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (888, 2, 444, 4.0, '2018-06-04 15:12:27', '2018-06-04 15:12:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (889, 1, 445, 6.0, '2018-06-04 15:12:47', '2018-06-04 15:12:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (890, 2, 445, 1.0, '2018-06-04 15:12:47', '2018-06-04 15:12:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (891, 1, 446, 0.0, '2018-06-04 15:13:00', '2018-06-04 15:13:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (892, 2, 446, 0.0, '2018-06-04 15:13:00', '2018-06-04 15:13:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (893, 1, 447, 2.0, '2018-06-04 15:13:32', '2018-06-04 15:13:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (894, 2, 447, 1.0, '2018-06-04 15:13:32', '2018-06-04 15:13:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (895, 1, 448, 1.0, '2018-06-04 15:13:47', '2018-06-04 15:13:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (896, 2, 448, 1.0, '2018-06-04 15:13:47', '2018-06-04 15:13:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (897, 1, 449, 9.0, '2018-06-05 13:06:11', '2018-06-05 13:06:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (898, 2, 449, 3.0, '2018-06-05 13:06:11', '2018-06-05 13:06:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (899, 1, 450, 4.0, '2018-06-05 13:06:32', '2018-06-05 13:06:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (900, 2, 450, 3.0, '2018-06-05 13:06:32', '2018-06-05 13:06:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (901, 1, 451, 22.0, '2018-06-05 13:06:59', '2018-06-05 13:06:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (902, 2, 451, 2.0, '2018-06-05 13:06:59', '2018-06-05 13:06:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (903, 1, 452, 10.0, '2018-06-05 13:07:44', '2018-06-05 13:07:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (904, 2, 452, 3.0, '2018-06-05 13:07:44', '2018-06-05 13:07:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (905, 1, 453, 0.0, '2018-06-05 13:09:30', '2018-06-05 13:09:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (906, 2, 453, 2.0, '2018-06-05 13:09:30', '2018-06-05 13:09:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (907, 1, 454, 6.0, '2018-06-05 13:09:50', '2018-06-05 13:09:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (908, 2, 454, 3.0, '2018-06-05 13:09:50', '2018-06-05 13:09:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (909, 1, 455, 2.0, '2018-06-05 13:10:21', '2018-06-05 13:10:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (910, 2, 455, 1.0, '2018-06-05 13:10:21', '2018-06-05 13:10:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (911, 1, 456, 7.0, '2018-06-05 13:10:38', '2018-06-05 13:10:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (912, 2, 456, 2.0, '2018-06-05 13:10:38', '2018-06-05 13:10:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (913, 1, 457, 1.0, '2018-06-05 13:11:12', '2018-06-05 13:11:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (914, 2, 457, 1.0, '2018-06-05 13:11:12', '2018-06-05 13:11:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (915, 1, 458, 0.0, '2018-06-05 13:11:38', '2018-06-05 13:11:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (916, 2, 458, 0.0, '2018-06-05 13:11:38', '2018-06-05 13:11:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (917, 1, 459, 2.0, '2018-06-05 13:13:37', '2018-06-05 13:13:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (918, 2, 459, 2.0, '2018-06-05 13:13:37', '2018-06-05 13:13:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (919, 1, 460, 4.0, '2018-06-05 13:13:57', '2018-06-05 13:13:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (920, 2, 460, 4.0, '2018-06-05 13:13:57', '2018-06-05 13:13:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (921, 1, 461, 4.0, '2018-06-05 13:14:17', '2018-06-05 13:14:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (922, 2, 461, 2.0, '2018-06-05 13:14:17', '2018-06-05 13:14:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (923, 1, 462, 2.0, '2018-06-05 13:14:33', '2018-06-05 13:14:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (924, 2, 462, 2.0, '2018-06-05 13:14:33', '2018-06-05 13:14:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (925, 1, 463, 2.0, '2018-06-05 13:15:11', '2018-06-05 13:19:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (926, 2, 463, 1.0, '2018-06-05 13:15:11', '2018-06-05 13:15:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (927, 1, 464, 4.0, '2018-06-05 13:15:44', '2018-06-05 13:15:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (928, 2, 464, 0.0, '2018-06-05 13:15:44', '2018-06-05 13:15:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (929, 1, 465, 1.0, '2018-06-05 13:18:38', '2018-06-05 13:18:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (930, 2, 465, 0.0, '2018-06-05 13:18:38', '2018-06-05 13:18:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (931, 1, 466, 2.0, '2018-06-05 13:20:08', '2018-06-05 13:20:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (932, 2, 466, 2.0, '2018-06-05 13:20:08', '2018-06-05 13:20:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (933, 1, 467, 1.0, '2018-06-05 13:21:43', '2018-06-05 13:38:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (934, 2, 467, 1.0, '2018-06-05 13:21:43', '2018-06-05 13:38:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (935, 1, 468, 4.0, '2018-06-05 13:22:21', '2018-06-05 13:22:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (936, 2, 468, 3.0, '2018-06-05 13:22:21', '2018-06-05 13:22:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (937, 1, 469, 2.0, '2018-06-05 13:23:47', '2018-06-05 13:23:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (938, 2, 469, 1.0, '2018-06-05 13:23:47', '2018-06-05 13:23:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (939, 1, 470, 2.0, '2018-06-05 13:25:40', '2018-06-05 13:25:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (940, 2, 470, 1.0, '2018-06-05 13:25:40', '2018-06-05 13:25:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (941, 1, 471, 0.0, '2018-06-05 13:25:53', '2018-06-05 13:25:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (942, 2, 471, 1.0, '2018-06-05 13:25:53', '2018-06-05 13:25:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (943, 1, 472, 6.0, '2018-06-05 13:26:18', '2018-06-05 13:26:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (944, 2, 472, 1.0, '2018-06-05 13:26:18', '2018-06-05 13:26:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (945, 1, 473, 9.0, '2018-06-05 13:26:55', '2018-06-05 13:53:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (946, 2, 473, 1.0, '2018-06-05 13:26:55', '2018-06-05 13:53:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (947, 1, 474, 8.0, '2018-06-05 13:27:15', '2018-06-05 14:05:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (948, 2, 474, 4.0, '2018-06-05 13:27:15', '2018-06-05 13:27:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (949, 1, 475, 7.0, '2018-06-05 13:28:24', '2018-06-05 13:28:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (950, 2, 475, 2.0, '2018-06-05 13:28:24', '2018-06-05 13:28:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (951, 1, 476, 12.0, '2018-06-05 13:28:52', '2018-06-05 14:18:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (952, 2, 476, 2.0, '2018-06-05 13:28:52', '2018-06-05 14:18:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (953, 1, 477, 0.0, '2018-06-05 13:29:04', '2018-06-05 13:29:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (954, 2, 477, 0.0, '2018-06-05 13:29:04', '2018-06-05 13:29:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (955, 1, 478, 2.0, '2018-06-05 13:29:28', '2018-06-05 13:29:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (956, 2, 478, 1.0, '2018-06-05 13:29:28', '2018-06-05 13:29:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (957, 1, 479, 1.0, '2018-06-05 13:29:51', '2018-06-05 13:29:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (958, 2, 479, 1.0, '2018-06-05 13:29:51', '2018-06-05 13:29:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (959, 1, 480, 7.0, '2018-06-06 16:17:01', '2018-06-06 16:17:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (960, 2, 480, 1.0, '2018-06-06 16:17:01', '2018-06-06 16:17:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (961, 1, 481, 3.0, '2018-06-06 16:17:42', '2018-06-06 16:17:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (962, 2, 481, 3.5, '2018-06-06 16:17:42', '2018-06-06 16:17:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (963, 1, 482, 20.0, '2018-06-06 16:18:10', '2018-06-06 16:18:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (964, 2, 482, 2.5, '2018-06-06 16:18:10', '2018-06-06 16:18:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (965, 1, 483, 9.0, '2018-06-06 16:20:22', '2018-06-06 16:20:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (966, 2, 483, 1.0, '2018-06-06 16:20:22', '2018-06-06 16:20:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (967, 1, 484, 6.0, '2018-06-06 16:21:31', '2018-06-06 16:21:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (968, 2, 484, 1.0, '2018-06-06 16:21:31', '2018-06-06 16:21:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (969, 1, 485, 4.0, '2018-06-06 16:21:56', '2018-06-06 16:21:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (970, 2, 485, 4.0, '2018-06-06 16:21:56', '2018-06-06 16:21:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (971, 1, 486, 0.5, '2018-06-06 16:26:10', '2018-06-06 16:26:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (972, 2, 486, 0.0, '2018-06-06 16:26:10', '2018-06-06 16:26:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (973, 1, 487, 5.0, '2018-06-06 16:26:40', '2018-06-06 16:26:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (974, 2, 487, 2.0, '2018-06-06 16:26:40', '2018-06-06 16:26:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (975, 1, 488, 1.0, '2018-06-06 16:26:56', '2018-06-06 16:26:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (976, 2, 488, 1.0, '2018-06-06 16:26:56', '2018-06-06 16:26:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (977, 1, 489, 0.0, '2018-06-06 16:27:12', '2018-06-06 16:39:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (978, 2, 489, 1.0, '2018-06-06 16:27:12', '2018-06-06 16:27:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (979, 1, 490, 2.0, '2018-06-06 16:27:41', '2018-06-06 16:27:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (980, 2, 490, 2.0, '2018-06-06 16:27:41', '2018-06-06 16:27:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (981, 1, 491, 4.0, '2018-06-06 16:28:02', '2018-06-06 16:28:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (982, 2, 491, 3.0, '2018-06-06 16:28:02', '2018-06-06 16:28:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (983, 1, 492, 6.0, '2018-06-06 16:28:29', '2018-06-06 16:28:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (984, 2, 492, 2.5, '2018-06-06 16:28:29', '2018-06-06 16:28:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (985, 1, 493, 4.0, '2018-06-06 16:28:46', '2018-06-06 16:28:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (986, 2, 493, 2.0, '2018-06-06 16:28:46', '2018-06-06 16:28:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (987, 1, 494, 2.0, '2018-06-06 16:28:57', '2018-06-06 16:28:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (988, 2, 494, 1.0, '2018-06-06 16:28:57', '2018-06-06 16:28:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (989, 1, 495, 3.0, '2018-06-06 16:29:33', '2018-06-06 16:29:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (990, 2, 495, 1.5, '2018-06-06 16:29:33', '2018-06-06 16:29:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (991, 1, 496, 0.0, '2018-06-06 16:29:49', '2018-06-06 16:29:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (992, 2, 496, 1.0, '2018-06-06 16:29:49', '2018-06-06 16:29:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (993, 1, 497, 0.0, '2018-06-06 16:30:07', '2018-06-06 16:30:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (994, 2, 497, 2.0, '2018-06-06 16:30:07', '2018-06-06 16:30:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (995, 1, 498, 0.0, '2018-06-06 16:30:22', '2018-06-06 16:30:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (996, 2, 498, 2.0, '2018-06-06 16:30:22', '2018-06-06 16:30:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (997, 1, 499, 4.0, '2018-06-06 16:30:40', '2018-06-06 16:30:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (998, 2, 499, 2.0, '2018-06-06 16:30:40', '2018-06-06 16:30:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (999, 1, 500, 0.0, '2018-06-06 16:31:07', '2018-06-06 16:31:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1000, 2, 500, 2.0, '2018-06-06 16:31:07', '2018-06-06 16:31:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1001, 1, 501, 2.0, '2018-06-06 16:31:34', '2018-06-06 16:31:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1002, 2, 501, 1.5, '2018-06-06 16:31:34', '2018-06-06 16:31:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1003, 1, 502, 1.0, '2018-06-06 16:31:48', '2018-06-06 16:31:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1004, 2, 502, 0.0, '2018-06-06 16:31:48', '2018-06-06 16:31:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1005, 1, 503, 3.0, '2018-06-06 16:32:11', '2018-06-06 16:32:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1006, 2, 503, 2.0, '2018-06-06 16:32:11', '2018-06-06 16:32:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1007, 1, 504, 7.0, '2018-06-06 16:32:45', '2018-06-06 16:43:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1008, 2, 504, 1.5, '2018-06-06 16:32:45', '2018-06-06 16:32:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (1009, 1, 505, 9.0, '2018-06-06 16:33:00', '2018-06-06 16:33:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1010, 2, 505, 3.0, '2018-06-06 16:33:00', '2018-06-06 16:33:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1011, 1, 506, 6.0, '2018-06-06 16:33:17', '2018-06-06 16:33:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1012, 2, 506, 2.0, '2018-06-06 16:33:17', '2018-06-06 16:33:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1013, 1, 507, 10.0, '2018-06-06 16:33:58', '2018-06-06 16:47:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (1014, 2, 507, 3.0, '2018-06-06 16:33:58', '2018-06-06 16:33:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1015, 1, 508, 0.0, '2018-06-06 16:34:08', '2018-06-06 16:34:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1016, 2, 508, 0.0, '2018-06-06 16:34:08', '2018-06-06 16:34:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1017, 1, 509, 2.0, '2018-06-06 16:34:21', '2018-06-06 16:34:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1018, 2, 509, 1.0, '2018-06-06 16:34:21', '2018-06-06 16:34:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1019, 1, 510, 3.0, '2018-06-06 16:34:48', '2018-06-06 16:34:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1020, 2, 510, 0.5, '2018-06-06 16:34:48', '2018-06-06 16:34:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1021, 1, 511, 15.0, '2018-06-09 13:09:04', '2018-06-09 13:09:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (1022, 2, 511, 1.0, '2018-06-09 13:09:04', '2018-06-09 13:09:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (1023, 1, 512, 2.0, '2018-06-09 13:11:59', '2018-06-09 13:11:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1024, 2, 512, 3.5, '2018-06-09 13:11:59', '2018-06-09 13:11:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1025, 1, 513, 20.0, '2018-06-09 13:12:27', '2018-06-09 13:12:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1026, 2, 513, 2.5, '2018-06-09 13:12:27', '2018-06-09 13:12:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1027, 1, 514, 11.0, '2018-06-09 13:12:42', '2018-06-09 13:12:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1028, 2, 514, 1.0, '2018-06-09 13:12:42', '2018-06-09 13:12:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1029, 1, 515, 5.0, '2018-06-09 13:15:40', '2018-06-11 13:44:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1030, 2, 515, 2.0, '2018-06-09 13:15:40', '2018-06-11 13:42:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (1031, 1, 516, 5.0, '2018-06-09 13:16:28', '2018-06-09 13:16:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1032, 2, 516, 1.5, '2018-06-09 13:16:28', '2018-06-09 13:16:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1033, 1, 517, 3.5, '2018-06-09 13:17:12', '2018-06-11 13:59:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1034, 2, 517, 0.0, '2018-06-09 13:17:12', '2018-06-11 13:59:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1035, 1, 518, 4.0, '2018-06-09 13:17:27', '2018-06-09 13:17:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1036, 2, 518, 3.0, '2018-06-09 13:17:27', '2018-06-09 13:17:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1037, 1, 519, 1.0, '2018-06-09 13:18:24', '2018-06-09 13:18:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1038, 2, 519, 1.0, '2018-06-09 13:18:24', '2018-06-09 13:18:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1039, 1, 520, 2.5, '2018-06-09 13:19:13', '2018-06-11 14:11:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1040, 2, 520, 0.0, '2018-06-09 13:19:13', '2018-06-11 14:12:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1041, 1, 521, 2.0, '2018-06-09 13:19:32', '2018-06-09 13:19:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (1042, 2, 521, 2.0, '2018-06-09 13:19:32', '2018-06-09 13:19:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (1043, 1, 522, 6.0, '2018-06-09 13:19:51', '2018-06-09 13:19:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1044, 2, 522, 2.0, '2018-06-09 13:19:51', '2018-06-09 13:19:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1045, 1, 523, 4.0, '2018-06-09 13:20:06', '2018-06-09 13:20:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1046, 2, 523, 2.0, '2018-06-09 13:20:06', '2018-06-09 13:20:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1047, 1, 524, 4.0, '2018-06-09 13:21:02', '2018-06-09 13:21:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1048, 2, 524, 2.0, '2018-06-09 13:21:02', '2018-06-09 13:21:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1049, 1, 525, 2.0, '2018-06-09 13:21:13', '2018-06-09 13:21:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1050, 2, 525, 1.0, '2018-06-09 13:21:13', '2018-06-09 13:21:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1051, 1, 526, 3.0, '2018-06-09 13:21:33', '2018-06-09 13:21:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1052, 2, 526, 1.0, '2018-06-09 13:21:33', '2018-06-09 13:21:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1053, 1, 527, 0.0, '2018-06-09 13:21:48', '2018-06-09 13:21:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1054, 2, 527, 1.0, '2018-06-09 13:21:48', '2018-06-09 13:21:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1055, 1, 528, 4.0, '2018-06-09 13:23:15', '2018-06-09 13:23:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1056, 2, 528, 0.0, '2018-06-09 13:23:15', '2018-06-09 13:23:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1057, 1, 529, 0.0, '2018-06-09 13:24:52', '2018-06-09 13:24:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (1058, 2, 529, 2.0, '2018-06-09 13:24:52', '2018-06-09 13:24:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (1059, 1, 530, 3.0, '2018-06-09 13:25:15', '2018-06-09 13:25:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1060, 2, 530, 3.0, '2018-06-09 13:25:15', '2018-06-09 13:25:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1061, 1, 531, 0.0, '2018-06-09 13:25:37', '2018-06-09 13:25:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (1062, 2, 531, 2.0, '2018-06-09 13:25:37', '2018-06-09 13:25:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (1063, 1, 532, 2.0, '2018-06-09 13:26:24', '2018-06-09 13:26:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1064, 2, 532, 1.5, '2018-06-09 13:26:24', '2018-06-09 13:26:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1065, 1, 533, 0.0, '2018-06-09 13:27:03', '2018-06-09 13:27:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1066, 2, 533, 1.0, '2018-06-09 13:27:03', '2018-06-09 13:27:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1067, 1, 534, 0.0, '2018-06-09 13:27:49', '2018-06-09 13:27:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1068, 2, 534, 1.0, '2018-06-09 13:27:49', '2018-06-09 13:27:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1069, 1, 535, 5.0, '2018-06-09 13:28:13', '2018-06-11 14:27:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1070, 2, 535, 2.5, '2018-06-09 13:28:13', '2018-06-11 14:27:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1071, 1, 536, 9.0, '2018-06-09 13:28:35', '2018-06-09 13:28:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1072, 2, 536, 2.0, '2018-06-09 13:28:35', '2018-06-09 13:28:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1073, 1, 537, 5.0, '2018-06-09 13:28:54', '2018-06-09 13:28:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1074, 2, 537, 3.0, '2018-06-09 13:28:54', '2018-06-09 13:28:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1075, 1, 538, 10.0, '2018-06-09 13:29:21', '2018-06-09 13:29:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1076, 2, 538, 2.0, '2018-06-09 13:29:21', '2018-06-09 13:29:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1077, 1, 539, 0.0, '2018-06-09 13:29:31', '2018-06-09 13:29:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1078, 2, 539, 0.0, '2018-06-09 13:29:31', '2018-06-09 13:29:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1079, 1, 540, 2.0, '2018-06-09 13:29:48', '2018-06-09 13:29:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1080, 2, 540, 1.0, '2018-06-09 13:29:48', '2018-06-09 13:29:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1081, 1, 541, 2.0, '2018-06-09 13:30:43', '2018-06-09 13:30:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1082, 2, 541, 1.0, '2018-06-09 13:30:43', '2018-06-09 13:30:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1083, 1, 542, 2.0, '2018-06-09 13:40:46', '2018-06-09 13:40:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1084, 2, 542, 2.0, '2018-06-09 13:40:46', '2018-06-09 13:40:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1085, 1, 543, 2.0, '2018-06-09 13:41:05', '2018-06-09 13:41:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1086, 2, 543, 1.0, '2018-06-09 13:41:05', '2018-06-09 13:41:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1087, 1, 544, 0.0, '2018-06-09 13:41:21', '2018-06-09 13:41:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1088, 2, 544, 0.5, '2018-06-09 13:41:21', '2018-06-09 13:41:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1089, 1, 545, 2.0, '2018-06-11 14:45:00', '2018-06-11 14:45:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1090, 2, 545, 10.0, '2018-06-11 14:45:00', '2018-06-11 14:45:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1091, 1, 546, 0.0, '2018-06-11 14:45:27', '2018-06-11 14:45:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1092, 2, 546, 1.0, '2018-06-11 14:45:27', '2018-06-11 14:45:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1093, 1, 547, 14.0, '2018-06-11 14:46:20', '2018-06-11 14:46:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (1094, 2, 547, 4.0, '2018-06-11 14:46:20', '2018-06-11 14:46:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (1095, 1, 548, 10.0, '2018-06-11 14:47:08', '2018-06-11 14:47:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1096, 2, 548, 1.0, '2018-06-11 14:47:08', '2018-06-11 14:47:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1097, 1, 549, 5.0, '2018-06-11 14:47:35', '2018-06-11 14:47:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1098, 2, 549, 2.0, '2018-06-11 14:47:35', '2018-06-11 14:47:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1099, 1, 550, 0.0, '2018-06-11 14:47:58', '2018-06-11 14:47:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1100, 2, 550, 2.0, '2018-06-11 14:47:58', '2018-06-11 14:47:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1101, 1, 551, 0.0, '2018-06-11 14:48:17', '2018-06-11 14:48:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1102, 2, 551, 2.0, '2018-06-11 14:48:17', '2018-06-11 14:48:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1103, 1, 552, 3.0, '2018-06-11 14:49:39', '2018-06-11 14:49:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1104, 2, 552, 3.0, '2018-06-11 14:49:39', '2018-06-11 14:49:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1105, 1, 553, 1.0, '2018-06-11 14:49:56', '2018-06-11 14:49:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1106, 2, 553, 1.0, '2018-06-11 14:49:56', '2018-06-11 14:49:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1107, 1, 554, 3.0, '2018-06-11 14:50:18', '2018-06-11 14:50:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (1108, 2, 554, 0.0, '2018-06-11 14:50:18', '2018-06-11 14:50:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (1109, 1, 555, 2.0, '2018-06-11 14:50:38', '2018-06-11 14:50:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1110, 2, 555, 2.0, '2018-06-11 14:50:38', '2018-06-11 14:50:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1111, 1, 556, 3.0, '2018-06-11 14:51:18', '2018-06-11 14:51:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (1112, 2, 556, 2.0, '2018-06-11 14:51:18', '2018-06-11 14:51:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (1113, 1, 557, 2.0, '2018-06-11 14:51:37', '2018-06-11 14:51:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (1114, 2, 557, 2.0, '2018-06-11 14:51:37', '2018-06-11 14:51:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (1115, 1, 558, 3.0, '2018-06-11 14:51:55', '2018-06-11 14:51:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1116, 2, 558, 1.0, '2018-06-11 14:51:55', '2018-06-11 14:51:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1117, 1, 559, 2.0, '2018-06-11 14:52:12', '2018-06-11 14:52:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1118, 2, 559, 1.0, '2018-06-11 14:52:12', '2018-06-11 14:52:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1119, 1, 560, 7.0, '2018-06-11 14:52:41', '2018-06-11 14:52:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1120, 2, 560, 0.0, '2018-06-11 14:52:41', '2018-06-11 14:52:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1121, 1, 561, 0.0, '2018-06-11 14:53:38', '2018-06-11 14:53:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1122, 2, 561, 1.0, '2018-06-11 14:53:38', '2018-06-11 14:53:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1123, 1, 562, 5.0, '2018-06-11 14:53:59', '2018-06-11 14:53:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1124, 2, 562, 0.0, '2018-06-11 14:53:59', '2018-06-11 14:53:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1125, 1, 563, 0.0, '2018-06-11 14:54:54', '2018-06-11 14:54:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1126, 2, 563, 1.0, '2018-06-11 14:54:54', '2018-06-11 14:54:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1127, 1, 564, 3.0, '2018-06-11 14:55:12', '2018-06-11 14:55:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1128, 2, 564, 1.0, '2018-06-11 14:55:12', '2018-06-11 14:55:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1129, 1, 565, 3.0, '2018-06-11 14:55:38', '2018-06-11 14:55:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1130, 2, 565, 2.0, '2018-06-11 14:55:38', '2018-06-11 14:55:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1131, 1, 566, 1.0, '2018-06-11 14:56:51', '2018-06-11 14:56:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1132, 2, 566, 5.0, '2018-06-11 14:56:51', '2018-06-11 14:56:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1133, 1, 567, 0.0, '2018-06-11 14:57:17', '2018-06-11 14:57:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1134, 2, 567, 1.0, '2018-06-11 14:57:17', '2018-06-11 14:57:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1135, 1, 568, 10.0, '2018-06-11 14:57:40', '2018-06-11 14:57:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1136, 2, 568, 2.0, '2018-06-11 14:57:40', '2018-06-11 14:57:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1137, 1, 569, 8.0, '2018-06-11 14:57:57', '2018-06-11 14:57:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1138, 2, 569, 3.0, '2018-06-11 14:57:57', '2018-06-11 14:57:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1139, 1, 570, 8.0, '2018-06-11 14:58:14', '2018-06-11 14:58:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1140, 2, 570, 2.0, '2018-06-11 14:58:14', '2018-06-11 14:58:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1141, 1, 571, 5.0, '2018-06-11 14:59:33', '2018-06-11 14:59:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1142, 2, 571, 2.0, '2018-06-11 14:59:33', '2018-06-11 14:59:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1143, 1, 572, 1.0, '2018-06-11 15:00:07', '2018-06-11 15:00:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1144, 2, 572, 1.0, '2018-06-11 15:00:07', '2018-06-11 15:00:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1145, 1, 573, 0.0, '2018-06-11 15:00:24', '2018-06-11 15:00:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1146, 2, 573, 0.0, '2018-06-11 15:00:24', '2018-06-11 15:00:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1147, 1, 574, 5.0, '2018-06-11 15:00:39', '2018-06-11 15:00:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1148, 2, 574, 1.0, '2018-06-11 15:00:39', '2018-06-11 15:00:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1149, 1, 575, 2.0, '2018-06-11 15:01:04', '2018-06-11 15:01:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (1150, 2, 575, 1.0, '2018-06-11 15:01:04', '2018-06-11 15:01:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (1151, 1, 576, 2.0, '2018-06-11 15:06:53', '2018-06-11 15:06:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1152, 2, 576, 2.0, '2018-06-11 15:06:53', '2018-06-11 15:06:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1153, 1, 577, 2.0, '2018-06-11 15:07:10', '2018-06-11 15:07:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (1154, 2, 577, 1.0, '2018-06-11 15:07:10', '2018-06-11 15:07:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1155, 1, 578, 0.0, '2018-06-11 15:07:44', '2018-06-11 15:07:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1156, 2, 578, 0.5, '2018-06-11 15:07:44', '2018-06-11 15:07:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1157, 1, 579, 18.0, '2018-06-11 15:08:39', '2018-06-11 15:08:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1158, 2, 579, 3.0, '2018-06-11 15:08:39', '2018-06-11 15:08:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1159, 1, 580, 5.0, '2018-06-11 15:09:35', '2018-06-11 15:09:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1160, 2, 580, 0.0, '2018-06-11 15:09:35', '2018-06-11 15:09:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1161, 1, 581, 14.0, '2018-06-11 15:10:01', '2018-06-11 15:10:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1162, 2, 581, 0.0, '2018-06-11 15:10:01', '2018-06-11 15:10:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1163, 1, 582, 6.0, '2018-06-11 15:10:21', '2018-06-11 15:10:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1164, 2, 582, 1.0, '2018-06-11 15:10:21', '2018-06-11 15:10:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1165, 1, 583, 5.0, '2018-06-11 15:10:53', '2018-06-11 15:10:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1166, 2, 583, 0.5, '2018-06-11 15:10:53', '2018-06-11 15:10:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1167, 1, 584, 6.0, '2018-06-11 15:11:10', '2018-06-11 15:11:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1168, 2, 584, 0.0, '2018-06-11 15:11:10', '2018-06-11 15:11:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1169, 1, 585, 4.0, '2018-06-11 15:11:34', '2018-06-11 15:11:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1170, 2, 585, 0.0, '2018-06-11 15:11:34', '2018-06-11 15:11:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1171, 1, 586, 9.0, '2018-06-11 15:12:00', '2018-06-11 15:12:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1172, 2, 586, 1.5, '2018-06-11 15:12:00', '2018-06-11 15:12:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1173, 1, 587, 1.0, '2018-06-11 15:12:12', '2018-06-11 15:12:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1174, 2, 587, 1.0, '2018-06-11 15:12:12', '2018-06-11 15:12:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1175, 1, 588, 0.0, '2018-06-11 15:12:28', '2018-06-11 15:12:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1176, 2, 588, 1.0, '2018-06-11 15:12:28', '2018-06-11 15:12:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1177, 1, 589, 2.0, '2018-06-11 15:12:41', '2018-06-11 15:12:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1178, 2, 589, 2.0, '2018-06-11 15:12:41', '2018-06-11 15:12:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1179, 1, 590, 4.0, '2018-06-11 15:12:59', '2018-06-11 15:12:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1180, 2, 590, 2.0, '2018-06-11 15:12:59', '2018-06-11 15:12:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1181, 1, 591, 5.0, '2018-06-11 15:13:46', '2018-06-11 15:13:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1182, 2, 591, 0.0, '2018-06-11 15:13:46', '2018-06-11 15:13:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1183, 1, 592, 3.0, '2018-06-11 15:14:23', '2018-06-11 15:14:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (1184, 2, 592, 1.5, '2018-06-11 15:14:23', '2018-06-11 15:14:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (1185, 1, 593, 8.0, '2018-06-11 15:15:30', '2018-06-11 15:15:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1186, 2, 593, 3.5, '2018-06-11 15:15:30', '2018-06-11 15:15:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1187, 1, 594, 2.0, '2018-06-11 15:16:10', '2018-06-11 15:16:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1188, 2, 594, 1.0, '2018-06-11 15:16:10', '2018-06-11 15:16:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1189, 1, 595, 0.5, '2018-06-11 15:16:35', '2018-06-11 15:16:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1190, 2, 595, 0.5, '2018-06-11 15:16:35', '2018-06-11 15:16:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1191, 1, 596, 2.0, '2018-06-11 15:19:35', '2018-06-11 15:19:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1192, 2, 596, 4.0, '2018-06-11 15:19:35', '2018-06-11 15:19:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1193, 1, 597, 1.0, '2018-06-11 15:20:31', '2018-06-11 15:20:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1194, 2, 597, 1.0, '2018-06-11 15:20:31', '2018-06-11 15:20:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1195, 1, 598, 5.0, '2018-06-11 15:20:54', '2018-06-11 15:20:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1196, 2, 598, 3.0, '2018-06-11 15:20:54', '2018-06-11 15:20:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1197, 1, 599, 1.0, '2018-06-11 15:21:51', '2018-06-11 15:21:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1198, 2, 599, 5.0, '2018-06-11 15:21:51', '2018-06-11 15:21:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1199, 1, 600, 3.0, '2018-06-11 15:22:14', '2018-06-11 15:22:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1200, 2, 600, 2.0, '2018-06-11 15:22:14', '2018-06-11 15:22:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1201, 1, 601, 0.0, '2018-06-11 15:23:03', '2018-06-11 15:23:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1202, 2, 601, 1.0, '2018-06-11 15:23:03', '2018-06-11 15:23:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1203, 1, 602, 7.0, '2018-06-11 15:23:29', '2018-06-11 15:23:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1204, 2, 602, 1.0, '2018-06-11 15:23:29', '2018-06-11 15:23:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1205, 1, 603, 4.0, '2018-06-11 15:23:59', '2018-06-11 15:23:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1206, 2, 603, 1.0, '2018-06-11 15:23:59', '2018-06-11 15:23:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1207, 1, 604, 8.0, '2018-06-11 15:24:25', '2018-06-11 15:24:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1208, 2, 604, 2.0, '2018-06-11 15:24:25', '2018-06-11 15:24:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1209, 1, 605, 5.0, '2018-06-11 15:24:56', '2018-06-11 15:24:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1210, 2, 605, 1.0, '2018-06-11 15:24:56', '2018-06-11 15:24:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1211, 1, 606, 8.0, '2018-06-11 15:25:12', '2018-06-11 15:25:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1212, 2, 606, 2.0, '2018-06-11 15:25:12', '2018-06-11 15:25:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1213, 1, 607, 0.0, '2018-06-11 15:25:30', '2018-06-11 15:25:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1214, 2, 607, 0.0, '2018-06-11 15:25:30', '2018-06-11 15:25:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1215, 1, 608, 5.0, '2018-06-11 15:25:44', '2018-06-11 15:25:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1216, 2, 608, 1.0, '2018-06-11 15:25:44', '2018-06-11 15:25:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1217, 1, 609, 2.0, '2018-06-11 15:25:59', '2018-06-11 15:25:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1218, 2, 609, 1.0, '2018-06-11 15:25:59', '2018-06-11 15:25:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1219, 1, 610, 2.0, '2018-06-11 15:26:19', '2018-06-11 15:26:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1220, 2, 610, 1.0, '2018-06-11 15:26:19', '2018-06-11 15:26:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1221, 1, 611, 2.0, '2018-06-11 15:26:48', '2018-06-11 15:26:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1222, 2, 611, 0.5, '2018-06-11 15:26:48', '2018-06-11 15:26:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1223, 1, 612, 0.0, '2018-06-11 15:27:39', '2018-06-11 15:27:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1224, 2, 612, 0.5, '2018-06-11 15:27:39', '2018-06-11 15:27:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1225, 1, 613, 6.0, '2018-06-11 15:28:29', '2018-06-11 15:28:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1226, 2, 613, 2.0, '2018-06-11 15:28:29', '2018-06-11 15:28:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1227, 1, 614, 2.0, '2018-06-11 15:28:42', '2018-06-11 15:28:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1228, 2, 614, 2.0, '2018-06-11 15:28:42', '2018-06-11 15:28:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1229, 1, 615, 5.0, '2018-06-11 15:29:23', '2018-06-11 15:29:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (1230, 2, 615, 3.0, '2018-06-11 15:29:23', '2018-06-11 15:29:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (1231, 1, 616, 4.0, '2018-06-11 15:29:38', '2018-06-11 15:30:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1232, 2, 616, 6.0, '2018-06-11 15:29:38', '2018-06-11 15:30:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1233, 1, 617, 8.0, '2018-06-11 15:30:27', '2018-06-11 15:30:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1234, 2, 617, 2.0, '2018-06-11 15:30:27', '2018-06-11 15:30:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1235, 1, 618, 3.0, '2018-06-11 15:30:46', '2018-06-11 15:30:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1236, 2, 618, 1.0, '2018-06-11 15:30:46', '2018-06-11 15:30:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1237, 1, 619, 1.0, '2018-06-11 15:31:03', '2018-06-11 15:31:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1238, 2, 619, 2.0, '2018-06-11 15:31:03', '2018-06-11 15:31:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1239, 1, 620, 3.0, '2018-06-11 15:32:02', '2018-06-11 15:32:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1240, 2, 620, 5.0, '2018-06-11 15:32:02', '2018-06-11 15:32:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1241, 1, 621, 1.0, '2018-06-11 15:32:14', '2018-06-11 15:32:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1242, 2, 621, 1.0, '2018-06-11 15:32:14', '2018-06-11 15:32:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1243, 1, 622, 1.0, '2018-06-11 15:32:42', '2018-06-11 15:32:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1244, 2, 622, 0.0, '2018-06-11 15:32:42', '2018-06-11 15:32:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1245, 1, 623, 2.0, '2018-06-11 15:33:06', '2018-06-11 15:33:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1246, 2, 623, 2.0, '2018-06-11 15:33:06', '2018-06-11 15:33:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1247, 1, 624, 3.0, '2018-06-11 15:33:33', '2018-06-11 15:33:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1248, 2, 624, 4.0, '2018-06-11 15:33:33', '2018-06-11 15:33:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1249, 1, 625, 3.0, '2018-06-11 15:34:17', '2018-06-11 15:34:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1250, 2, 625, 1.0, '2018-06-11 15:34:17', '2018-06-11 15:34:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1251, 1, 626, 2.0, '2018-06-11 15:34:33', '2018-06-11 15:34:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1252, 2, 626, 3.0, '2018-06-11 15:34:33', '2018-06-11 15:34:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1253, 1, 627, 2.0, '2018-06-11 15:34:50', '2018-06-11 15:34:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1254, 2, 627, 1.0, '2018-06-11 15:34:50', '2018-06-11 15:34:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1255, 1, 628, 8.0, '2018-06-11 15:35:07', '2018-06-11 15:35:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1256, 2, 628, 2.0, '2018-06-11 15:35:07', '2018-06-11 15:35:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1257, 1, 629, 0.5, '2018-06-11 15:39:10', '2018-06-11 15:39:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1258, 2, 629, 0.5, '2018-06-11 15:39:10', '2018-06-11 15:39:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1259, 1, 630, 6.0, '2018-06-11 15:39:27', '2018-06-11 15:39:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1260, 2, 630, 0.0, '2018-06-11 15:39:27', '2018-06-11 15:39:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1261, 1, 631, 1.0, '2018-06-11 15:39:40', '2018-06-11 15:39:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1262, 2, 631, 1.0, '2018-06-11 15:39:40', '2018-06-11 15:39:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1263, 1, 632, 4.0, '2018-06-11 15:39:55', '2018-06-11 15:39:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1264, 2, 632, 2.0, '2018-06-11 15:39:55', '2018-06-11 15:39:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1265, 1, 633, 4.0, '2018-06-11 15:40:13', '2018-06-11 15:40:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1266, 2, 633, 2.0, '2018-06-11 15:40:13', '2018-06-11 15:40:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1267, 1, 634, 3.0, '2018-06-11 15:40:28', '2018-06-11 15:40:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1268, 2, 634, 2.0, '2018-06-11 15:40:28', '2018-06-11 15:40:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1269, 1, 635, 0.0, '2018-06-11 15:40:43', '2018-06-11 15:40:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1270, 2, 635, 1.0, '2018-06-11 15:40:43', '2018-06-11 15:40:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1271, 1, 636, 3.0, '2018-06-11 15:41:00', '2018-06-11 15:41:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1272, 2, 636, 0.0, '2018-06-11 15:41:00', '2018-06-11 15:41:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1273, 1, 637, 5.0, '2018-06-11 15:41:40', '2018-06-11 15:41:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1274, 2, 637, 1.0, '2018-06-11 15:41:40', '2018-06-11 15:41:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1275, 1, 638, 6.0, '2018-06-11 15:42:01', '2018-06-11 15:42:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1276, 2, 638, 2.0, '2018-06-11 15:42:01', '2018-06-11 15:42:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1277, 1, 639, 0.0, '2018-06-11 15:42:41', '2018-06-11 15:42:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1278, 2, 639, 4.0, '2018-06-11 15:42:41', '2018-06-11 15:42:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1279, 1, 640, 6.0, '2018-06-11 15:43:30', '2018-06-11 15:43:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1280, 2, 640, 1.0, '2018-06-11 15:43:30', '2018-06-11 15:43:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1281, 1, 641, 0.0, '2018-06-11 15:43:42', '2018-06-11 15:43:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1282, 2, 641, 0.0, '2018-06-11 15:43:42', '2018-06-11 15:43:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1283, 1, 642, 0.0, '2018-06-11 15:44:13', '2018-06-11 15:44:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1284, 2, 642, 1.0, '2018-06-11 15:44:13', '2018-06-11 15:44:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1285, 1, 643, 0.0, '2018-06-11 15:44:26', '2018-06-11 15:44:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (1286, 2, 643, 1.0, '2018-06-11 15:44:26', '2018-06-11 15:44:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (1287, 1, 644, 2.0, '2018-06-11 15:44:43', '2018-06-11 15:44:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1288, 2, 644, 1.0, '2018-06-11 15:44:43', '2018-06-11 15:44:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1289, 1, 645, 1.0, '2018-06-11 15:45:01', '2018-06-11 15:45:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1290, 2, 645, 1.0, '2018-06-11 15:45:01', '2018-06-11 15:45:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1291, 1, 646, 0.0, '2018-06-11 15:45:16', '2018-06-11 15:45:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (1292, 2, 646, 0.0, '2018-06-11 15:45:16', '2018-06-11 15:45:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1293, 1, 647, 5.0, '2018-06-11 15:46:33', '2018-06-11 15:46:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1294, 2, 647, 2.0, '2018-06-11 15:46:33', '2018-06-11 15:46:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1295, 1, 648, 7.0, '2018-06-11 15:46:47', '2018-06-11 15:46:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (1296, 2, 648, 1.5, '2018-06-11 15:46:47', '2018-06-11 15:46:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (1297, 1, 649, 15.0, '2018-06-11 15:47:07', '2018-06-11 15:47:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1298, 2, 649, 3.0, '2018-06-11 15:47:07', '2018-06-11 15:47:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1299, 1, 650, 7.0, '2018-06-11 15:47:25', '2018-06-11 15:47:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1300, 2, 650, 2.0, '2018-06-11 15:47:25', '2018-06-11 15:47:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1301, 1, 651, 6.0, '2018-06-11 15:47:41', '2018-06-11 15:47:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1302, 2, 651, 1.0, '2018-06-11 15:47:41', '2018-06-11 15:47:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1303, 1, 652, 0.0, '2018-06-11 15:47:58', '2018-06-11 15:47:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1304, 2, 652, 0.5, '2018-06-11 15:47:58', '2018-06-11 15:47:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1305, 1, 653, 0.0, '2018-06-11 15:48:22', '2018-06-11 15:48:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1306, 2, 653, 1.5, '2018-06-11 15:48:22', '2018-06-11 15:48:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1307, 1, 654, 3.0, '2018-06-11 15:49:03', '2018-06-11 15:49:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1308, 2, 654, 1.5, '2018-06-11 15:49:03', '2018-06-11 15:49:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1309, 1, 655, 1.0, '2018-06-11 15:49:16', '2018-06-11 15:49:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (1310, 2, 655, 1.0, '2018-06-11 15:49:16', '2018-06-11 15:49:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (1311, 1, 656, 1.0, '2018-06-11 15:49:35', '2018-06-11 15:49:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1312, 2, 656, 0.0, '2018-06-11 15:49:35', '2018-06-11 15:49:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1313, 1, 657, 2.0, '2018-06-11 15:49:58', '2018-06-11 15:49:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1314, 2, 657, 2.0, '2018-06-11 15:49:58', '2018-06-11 15:49:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1315, 1, 658, 5.0, '2018-06-11 15:50:14', '2018-06-11 15:50:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1316, 2, 658, 2.0, '2018-06-11 15:50:14', '2018-06-11 15:50:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1317, 1, 659, 3.0, '2018-06-11 15:50:43', '2018-06-11 15:50:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1318, 2, 659, 1.0, '2018-06-11 15:50:43', '2018-06-11 15:50:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1319, 1, 660, 2.0, '2018-06-11 15:51:03', '2018-06-11 15:51:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1320, 2, 660, 3.0, '2018-06-11 15:51:03', '2018-06-11 15:51:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1321, 1, 661, 1.0, '2018-06-11 15:51:15', '2018-06-11 15:51:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1322, 2, 661, 1.0, '2018-06-11 15:51:15', '2018-06-11 15:51:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1323, 1, 662, 1.5, '2018-06-11 15:51:41', '2018-06-11 15:51:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1324, 2, 662, 2.5, '2018-06-11 15:51:41', '2018-06-11 15:51:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1325, 1, 663, 0.5, '2018-06-11 15:53:59', '2018-06-11 15:53:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1326, 2, 663, 0.5, '2018-06-11 15:53:59', '2018-06-11 15:53:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1327, 1, 664, 0.0, '2018-06-11 15:54:13', '2018-06-11 15:54:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1328, 2, 664, 3.0, '2018-06-11 15:54:13', '2018-06-11 15:54:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1329, 1, 665, 0.0, '2018-06-11 15:55:11', '2018-06-11 15:55:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1330, 2, 665, 1.0, '2018-06-11 15:55:11', '2018-06-11 15:55:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1331, 1, 666, 2.0, '2018-06-11 15:55:43', '2018-06-11 15:55:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1332, 2, 666, 3.5, '2018-06-11 15:55:43', '2018-06-11 15:55:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1333, 1, 667, 2.0, '2018-06-11 15:55:58', '2018-06-11 15:55:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1334, 2, 667, 4.0, '2018-06-11 15:55:58', '2018-06-11 15:55:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1335, 1, 668, 2.0, '2018-06-11 15:56:10', '2018-06-11 15:56:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1336, 2, 668, 1.0, '2018-06-11 15:56:10', '2018-06-11 15:56:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1337, 1, 669, 0.0, '2018-06-11 15:56:22', '2018-06-11 15:56:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1338, 2, 669, 1.0, '2018-06-11 15:56:22', '2018-06-11 15:56:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1339, 1, 670, 0.0, '2018-06-11 15:56:42', '2018-06-11 15:56:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1340, 2, 670, 1.0, '2018-06-11 15:56:42', '2018-06-11 15:56:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1341, 1, 671, 0.0, '2018-06-11 15:56:58', '2018-06-11 15:56:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1342, 2, 671, 3.0, '2018-06-11 15:56:58', '2018-06-11 15:56:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1343, 1, 672, 4.0, '2018-06-11 15:57:15', '2018-06-11 15:57:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1344, 2, 672, 2.0, '2018-06-11 15:57:15', '2018-06-11 15:57:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1345, 1, 673, 0.0, '2018-06-11 15:57:31', '2018-06-11 15:57:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1346, 2, 673, 4.0, '2018-06-11 15:57:31', '2018-06-11 15:57:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1347, 1, 674, 0.0, '2018-06-11 15:57:44', '2018-06-11 15:57:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1348, 2, 674, 5.0, '2018-06-11 15:57:44', '2018-06-11 15:57:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1349, 1, 675, 0.0, '2018-06-11 15:57:55', '2018-06-11 15:57:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1350, 2, 675, 0.0, '2018-06-11 15:57:55', '2018-06-11 15:57:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1351, 1, 676, 4.0, '2018-06-11 15:58:13', '2018-06-11 15:58:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1352, 2, 676, 0.0, '2018-06-11 15:58:13', '2018-06-11 15:58:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1353, 1, 677, 0.0, '2018-06-11 15:58:45', '2018-06-11 15:58:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (1354, 2, 677, 1.0, '2018-06-11 15:58:45', '2018-06-11 15:58:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (1355, 1, 678, 1.0, '2018-06-11 15:59:14', '2018-06-11 15:59:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1356, 2, 678, 2.0, '2018-06-11 15:59:14', '2018-06-11 15:59:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1357, 1, 679, 1.0, '2018-06-11 16:01:01', '2018-06-11 16:01:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1358, 2, 679, 1.5, '2018-06-11 16:01:01', '2018-06-11 16:01:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1359, 1, 680, 0.0, '2018-06-11 16:01:34', '2018-06-11 16:01:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1360, 2, 680, 1.0, '2018-06-11 16:01:34', '2018-06-11 16:01:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1361, 1, 681, 18.0, '2018-06-14 20:33:11', '2018-06-14 20:33:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1362, 2, 681, 3.0, '2018-06-14 20:33:11', '2018-06-14 20:33:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1363, 1, 682, 4.0, '2018-06-14 20:33:24', '2018-06-14 20:33:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1364, 2, 682, 3.0, '2018-06-14 20:33:24', '2018-06-14 20:33:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1365, 1, 683, 14.0, '2018-06-14 20:33:39', '2018-06-14 20:33:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1366, 2, 683, 3.0, '2018-06-14 20:33:39', '2018-06-14 20:33:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1367, 1, 684, 7.0, '2018-06-14 20:34:47', '2018-06-14 20:34:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (1368, 2, 684, 2.0, '2018-06-14 20:34:47', '2018-06-14 20:34:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (1369, 1, 685, 4.0, '2018-06-14 20:35:02', '2018-06-14 20:35:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1370, 2, 685, 2.0, '2018-06-14 20:35:02', '2018-06-14 20:35:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1371, 1, 686, 0.0, '2018-06-14 20:35:24', '2018-06-14 20:35:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1372, 2, 686, 1.0, '2018-06-14 20:35:24', '2018-06-14 20:35:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1373, 1, 687, 3.0, '2018-06-14 20:37:08', '2018-06-14 20:37:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1374, 2, 687, 2.0, '2018-06-14 20:37:08', '2018-06-14 20:37:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1375, 1, 688, 5.0, '2018-06-14 20:38:10', '2018-06-14 20:38:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1376, 2, 688, 3.5, '2018-06-14 20:38:10', '2018-06-14 20:38:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1377, 1, 689, 0.0, '2018-06-14 20:39:10', '2018-06-14 20:39:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1378, 2, 689, 1.0, '2018-06-14 20:39:10', '2018-06-14 20:39:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1379, 1, 690, 0.0, '2018-06-14 20:39:50', '2018-06-14 20:39:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1380, 2, 690, 0.0, '2018-06-14 20:39:50', '2018-06-14 20:39:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1381, 1, 691, 2.0, '2018-06-14 20:40:05', '2018-06-14 20:40:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1382, 2, 691, 2.0, '2018-06-14 20:40:05', '2018-06-14 20:40:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1383, 1, 692, 0.0, '2018-06-14 20:40:27', '2018-06-14 20:40:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1384, 2, 692, 3.0, '2018-06-14 20:40:27', '2018-06-14 20:40:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1385, 1, 693, 4.0, '2018-06-14 20:41:21', '2018-06-14 20:41:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1386, 2, 693, 1.5, '2018-06-14 20:41:21', '2018-06-14 20:41:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1387, 1, 694, 1.0, '2018-06-14 20:41:36', '2018-06-14 20:41:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1388, 2, 694, 3.0, '2018-06-14 20:41:36', '2018-06-14 20:41:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1389, 1, 695, 3.0, '2018-06-14 20:41:48', '2018-06-14 20:41:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1390, 2, 695, 1.0, '2018-06-14 20:41:48', '2018-06-14 20:41:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1391, 1, 696, 10.5, '2018-06-14 20:46:22', '2018-06-14 20:46:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1392, 2, 696, 1.5, '2018-06-14 20:46:22', '2018-06-14 20:46:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1393, 1, 697, 2.0, '2018-06-14 20:49:03', '2018-06-14 20:49:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1394, 2, 697, 0.5, '2018-06-14 20:49:03', '2018-06-14 20:49:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1395, 1, 698, 5.0, '2018-06-14 20:49:41', '2018-06-14 20:49:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1396, 2, 698, 2.0, '2018-06-14 20:49:41', '2018-06-14 20:49:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1397, 1, 699, 1.0, '2018-06-14 20:50:05', '2018-06-14 20:50:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1398, 2, 699, 2.0, '2018-06-14 20:50:05', '2018-06-14 20:50:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1399, 1, 700, 6.0, '2018-06-14 20:51:10', '2018-06-14 20:51:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1400, 2, 700, 3.0, '2018-06-14 20:51:10', '2018-06-14 20:51:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1401, 1, 701, 4.0, '2018-06-14 20:51:25', '2018-06-14 20:51:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1402, 2, 701, 4.0, '2018-06-14 20:51:25', '2018-06-14 20:51:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1403, 1, 702, 6.0, '2018-06-14 20:52:39', '2018-06-14 20:52:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1404, 2, 702, 2.5, '2018-06-14 20:52:39', '2018-06-14 20:52:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1405, 1, 703, 0.0, '2018-06-14 20:52:50', '2018-06-14 20:52:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1406, 2, 703, 1.0, '2018-06-14 20:52:50', '2018-06-14 20:52:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1407, 1, 704, 0.0, '2018-06-14 20:53:07', '2018-06-14 20:53:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1408, 2, 704, 4.0, '2018-06-14 20:53:07', '2018-06-14 20:53:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1409, 1, 705, 20.0, '2018-06-14 20:53:34', '2018-06-14 20:53:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1410, 2, 705, 2.0, '2018-06-14 20:53:34', '2018-06-14 20:53:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1411, 1, 706, 9.0, '2018-06-14 20:53:48', '2018-06-14 20:53:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1412, 2, 706, 2.0, '2018-06-14 20:53:48', '2018-06-14 20:53:48');
INSERT INTO `checklist_warehouse_quantities` VALUES (1413, 1, 707, 11.0, '2018-06-14 20:54:03', '2018-06-14 20:54:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1414, 2, 707, 4.0, '2018-06-14 20:54:03', '2018-06-14 20:54:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1415, 1, 708, 16.0, '2018-06-14 20:54:22', '2018-06-14 20:54:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1416, 2, 708, 2.0, '2018-06-14 20:54:22', '2018-06-14 20:54:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1417, 1, 709, 0.0, '2018-06-14 20:54:36', '2018-06-14 20:54:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1418, 2, 709, 0.0, '2018-06-14 20:54:36', '2018-06-14 20:54:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1419, 1, 710, 3.0, '2018-06-14 20:54:53', '2018-06-14 20:54:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1420, 2, 710, 1.0, '2018-06-14 20:54:53', '2018-06-14 20:54:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1421, 1, 711, 0.0, '2018-06-14 20:55:13', '2018-06-14 20:55:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1422, 2, 711, 1.0, '2018-06-14 20:55:13', '2018-06-14 20:55:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1423, 1, 712, 1.0, '2018-06-14 20:55:31', '2018-06-14 20:55:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1424, 2, 712, 3.0, '2018-06-14 20:55:31', '2018-06-14 20:55:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1425, 1, 713, 0.0, '2018-06-14 20:55:57', '2018-06-14 20:55:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1426, 2, 713, 1.5, '2018-06-14 20:55:57', '2018-06-14 20:55:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1427, 1, 714, 0.0, '2018-06-14 20:56:10', '2018-06-14 20:56:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1428, 2, 714, 1.0, '2018-06-14 20:56:10', '2018-06-14 20:56:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1429, 1, 715, 6.0, '2018-06-14 20:57:07', '2018-06-14 20:57:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1430, 2, 715, 6.0, '2018-06-14 20:57:07', '2018-06-14 20:57:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1431, 1, 716, 0.0, '2018-06-14 20:57:26', '2018-06-14 20:57:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (1432, 2, 716, 2.0, '2018-06-14 20:57:26', '2018-06-14 20:57:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (1433, 1, 717, 5.0, '2018-06-14 20:57:40', '2018-06-14 20:57:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1434, 2, 717, 4.0, '2018-06-14 20:57:40', '2018-06-14 20:57:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1435, 1, 718, 12.0, '2018-06-14 20:58:03', '2018-06-14 20:58:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1436, 2, 718, 2.0, '2018-06-14 20:58:03', '2018-06-14 20:58:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1437, 1, 719, 0.0, '2018-06-14 20:58:19', '2018-06-14 20:58:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1438, 2, 719, 4.0, '2018-06-14 20:58:19', '2018-06-14 20:58:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1439, 1, 720, 0.0, '2018-06-14 20:58:41', '2018-06-14 20:58:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1440, 2, 720, 2.0, '2018-06-14 20:58:41', '2018-06-14 20:58:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1441, 1, 721, 3.0, '2018-06-14 20:58:54', '2018-06-14 20:58:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1442, 2, 721, 2.0, '2018-06-14 20:58:54', '2018-06-14 20:58:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1443, 1, 722, 7.0, '2018-06-14 20:59:10', '2018-06-14 20:59:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1444, 2, 722, 5.0, '2018-06-14 20:59:10', '2018-06-14 20:59:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1445, 1, 723, 0.0, '2018-06-14 20:59:33', '2018-06-14 20:59:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1446, 2, 723, 2.0, '2018-06-14 20:59:33', '2018-06-14 20:59:33');
INSERT INTO `checklist_warehouse_quantities` VALUES (1447, 1, 724, 1.0, '2018-06-14 20:59:46', '2018-06-14 20:59:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1448, 2, 724, 1.0, '2018-06-14 20:59:46', '2018-06-14 20:59:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1449, 1, 725, 2.0, '2018-06-14 21:00:00', '2018-06-14 21:00:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1450, 2, 725, 2.0, '2018-06-14 21:00:00', '2018-06-14 21:00:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1451, 1, 726, 4.0, '2018-06-14 21:00:13', '2018-06-14 21:00:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1452, 2, 726, 5.0, '2018-06-14 21:00:13', '2018-06-14 21:00:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1453, 1, 727, 0.0, '2018-06-14 21:00:44', '2018-06-14 21:01:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1454, 2, 727, 2.0, '2018-06-14 21:00:44', '2018-06-14 21:00:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1455, 1, 728, 2.0, '2018-06-14 21:01:12', '2018-06-14 21:01:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1456, 2, 728, 3.0, '2018-06-14 21:01:12', '2018-06-14 21:01:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1457, 1, 729, 3.0, '2018-06-14 21:01:51', '2018-06-14 23:35:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1458, 2, 729, 1.0, '2018-06-14 21:01:51', '2018-06-14 21:01:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1459, 1, 730, 0.0, '2018-06-14 21:02:08', '2018-06-14 21:02:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1460, 2, 730, 6.0, '2018-06-14 21:02:08', '2018-06-14 21:02:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1461, 1, 731, 0.0, '2018-06-14 21:02:21', '2018-06-14 21:02:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1462, 2, 731, 2.5, '2018-06-14 21:02:21', '2018-06-14 21:02:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1463, 1, 732, 6.0, '2018-06-14 21:03:58', '2018-06-14 21:03:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1464, 2, 732, 0.0, '2018-06-14 21:03:58', '2018-06-14 21:03:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1465, 1, 733, 0.0, '2018-06-14 21:06:01', '2018-06-14 21:06:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1466, 2, 733, 2.0, '2018-06-14 21:06:01', '2018-06-14 21:06:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1467, 1, 734, 3.0, '2018-06-14 21:06:19', '2018-06-14 21:06:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1468, 2, 734, 4.5, '2018-06-14 21:06:19', '2018-06-14 21:06:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1469, 1, 735, 1.0, '2018-06-14 21:06:55', '2018-06-14 21:06:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1470, 2, 735, 5.0, '2018-06-14 21:06:55', '2018-06-14 21:06:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1471, 1, 736, 0.0, '2018-06-14 21:07:11', '2018-06-14 21:07:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1472, 2, 736, 4.0, '2018-06-14 21:07:11', '2018-06-14 21:07:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1473, 1, 737, 0.0, '2018-06-14 21:07:21', '2018-06-14 21:07:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1474, 2, 737, 1.0, '2018-06-14 21:07:21', '2018-06-14 21:07:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1475, 1, 738, 9.0, '2018-06-14 21:07:38', '2018-06-14 21:07:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1476, 2, 738, 3.0, '2018-06-14 21:07:38', '2018-06-14 21:07:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1477, 1, 739, 8.0, '2018-06-14 21:08:25', '2018-06-14 21:08:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1478, 2, 739, 5.0, '2018-06-14 21:08:25', '2018-06-14 21:08:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1479, 1, 740, 5.0, '2018-06-14 21:08:43', '2018-06-14 21:08:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1480, 2, 740, 5.0, '2018-06-14 21:08:43', '2018-06-14 21:08:43');
INSERT INTO `checklist_warehouse_quantities` VALUES (1481, 1, 741, 8.0, '2018-06-14 21:08:59', '2018-06-14 21:08:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1482, 2, 741, 5.0, '2018-06-14 21:08:59', '2018-06-14 21:08:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1483, 1, 742, 6.0, '2018-06-14 21:09:18', '2018-06-14 21:09:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (1484, 2, 742, 6.5, '2018-06-14 21:09:18', '2018-06-14 21:09:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (1485, 1, 743, 0.0, '2018-06-14 21:09:41', '2018-06-14 21:09:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1486, 2, 743, 0.0, '2018-06-14 21:09:41', '2018-06-14 21:09:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1487, 1, 744, 0.0, '2018-06-14 21:09:59', '2018-06-14 21:09:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1488, 2, 744, 0.0, '2018-06-14 21:09:59', '2018-06-14 21:09:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1489, 1, 745, 2.0, '2018-06-14 21:10:19', '2018-06-14 21:10:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1490, 2, 745, 1.0, '2018-06-14 21:10:19', '2018-06-14 21:10:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1491, 1, 746, 1.0, '2018-06-14 21:10:36', '2018-06-14 21:10:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1492, 2, 746, 2.0, '2018-06-14 21:10:36', '2018-06-14 21:10:36');
INSERT INTO `checklist_warehouse_quantities` VALUES (1493, 1, 747, 3.0, '2018-06-14 21:10:49', '2018-06-14 21:10:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1494, 2, 747, 1.0, '2018-06-14 21:10:49', '2018-06-14 21:10:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1495, 1, 748, 0.0, '2018-06-14 21:11:00', '2018-06-14 21:11:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1496, 2, 748, 1.0, '2018-06-14 21:11:00', '2018-06-14 21:11:00');
INSERT INTO `checklist_warehouse_quantities` VALUES (1497, 1, 749, 6.0, '2018-06-14 21:12:56', '2018-06-14 21:12:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1498, 2, 749, 2.0, '2018-06-14 21:12:56', '2018-06-14 21:12:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1499, 1, 750, 4.0, '2018-06-14 21:13:11', '2018-06-14 21:13:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1500, 2, 750, 2.0, '2018-06-14 21:13:11', '2018-06-14 21:13:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1501, 1, 751, 5.0, '2018-06-14 21:13:35', '2018-06-14 21:13:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1502, 2, 751, 4.0, '2018-06-14 21:13:35', '2018-06-14 21:13:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1503, 1, 752, 14.0, '2018-06-14 21:13:52', '2018-06-14 21:13:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (1504, 2, 752, 1.0, '2018-06-14 21:13:52', '2018-06-14 21:13:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (1505, 1, 753, 0.0, '2018-06-14 21:14:40', '2018-06-14 21:14:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1506, 2, 753, 3.0, '2018-06-14 21:14:40', '2018-06-14 21:14:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1507, 1, 754, 4.0, '2018-06-14 21:14:56', '2018-06-14 21:14:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1508, 2, 754, 1.0, '2018-06-14 21:14:56', '2018-06-14 21:14:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1509, 1, 755, 0.0, '2018-06-14 21:15:17', '2018-06-14 21:15:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1510, 2, 755, 1.0, '2018-06-14 21:15:17', '2018-06-14 21:15:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1511, 1, 756, 7.0, '2018-06-14 21:15:35', '2018-06-14 21:15:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1512, 2, 756, 3.0, '2018-06-14 21:15:35', '2018-06-14 21:15:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1513, 1, 757, 0.0, '2018-06-14 21:15:54', '2018-06-14 21:15:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1514, 2, 757, 1.0, '2018-06-14 21:15:54', '2018-06-14 21:15:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1515, 1, 758, 1.0, '2018-06-14 21:16:53', '2018-06-14 21:16:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1516, 2, 758, 1.0, '2018-06-14 21:16:53', '2018-06-14 21:16:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1517, 1, 759, 1.0, '2018-06-14 21:17:14', '2018-06-14 21:17:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1518, 2, 759, 1.0, '2018-06-14 21:17:14', '2018-06-14 21:17:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1519, 1, 760, 4.0, '2018-06-14 21:17:31', '2018-06-14 21:17:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1520, 2, 760, 4.0, '2018-06-14 21:17:31', '2018-06-14 21:17:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1521, 1, 761, 4.0, '2018-06-14 21:18:05', '2018-06-14 21:18:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1522, 2, 761, 2.0, '2018-06-14 21:18:05', '2018-06-14 21:18:05');
INSERT INTO `checklist_warehouse_quantities` VALUES (1523, 1, 762, 2.0, '2018-06-14 21:18:28', '2018-06-14 21:18:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1524, 2, 762, 1.0, '2018-06-14 21:18:28', '2018-06-14 21:18:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1525, 1, 763, 4.0, '2018-06-14 21:18:54', '2018-06-14 21:18:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1526, 2, 763, 0.0, '2018-06-14 21:18:54', '2018-06-14 21:18:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1527, 1, 764, 3.0, '2018-06-14 21:27:35', '2018-06-14 21:27:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1528, 2, 764, 1.0, '2018-06-14 21:27:35', '2018-06-14 21:27:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1529, 1, 765, 0.0, '2018-06-14 21:29:08', '2018-06-14 21:29:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1530, 2, 765, 1.0, '2018-06-14 21:29:08', '2018-06-14 21:29:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1531, 1, 766, 3.0, '2018-06-14 21:29:49', '2018-06-14 21:29:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1532, 2, 766, 4.0, '2018-06-14 21:29:49', '2018-06-14 21:29:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1533, 1, 767, 0.0, '2018-06-14 21:30:03', '2018-06-14 21:30:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1534, 2, 767, 6.0, '2018-06-14 21:30:03', '2018-06-14 21:30:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1535, 1, 768, 0.0, '2018-06-14 21:31:22', '2018-06-14 21:31:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1536, 2, 768, 2.0, '2018-06-14 21:31:22', '2018-06-14 21:31:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1537, 1, 769, 1.0, '2018-06-14 21:31:38', '2018-06-14 21:31:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1538, 2, 769, 1.0, '2018-06-14 21:31:38', '2018-06-14 21:31:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1539, 1, 770, 7.0, '2018-06-14 21:32:01', '2018-06-14 21:32:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1540, 2, 770, 1.0, '2018-06-14 21:32:01', '2018-06-14 21:32:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1541, 1, 771, 16.0, '2018-06-14 21:32:30', '2018-06-14 21:32:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1542, 2, 771, 4.0, '2018-06-14 21:32:30', '2018-06-14 21:32:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1543, 1, 772, 5.0, '2018-06-14 21:32:49', '2018-06-14 21:32:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1544, 2, 772, 4.0, '2018-06-14 21:32:49', '2018-06-14 21:32:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1545, 1, 773, 8.0, '2018-06-14 21:33:07', '2018-06-14 21:33:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1546, 2, 773, 4.0, '2018-06-14 21:33:07', '2018-06-14 21:33:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1547, 1, 774, 17.0, '2018-06-14 21:33:35', '2018-06-14 21:33:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1548, 2, 774, 4.0, '2018-06-14 21:33:35', '2018-06-14 21:34:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1549, 1, 775, 0.0, '2018-06-14 21:34:13', '2018-06-14 21:34:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1550, 2, 775, 0.0, '2018-06-14 21:34:13', '2018-06-14 21:34:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1551, 1, 776, 0.0, '2018-06-14 21:34:40', '2018-06-14 21:34:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1552, 2, 776, 3.0, '2018-06-14 21:34:40', '2018-06-14 21:34:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1553, 1, 777, 2.0, '2018-06-14 21:34:58', '2018-06-14 21:34:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1554, 2, 777, 2.0, '2018-06-14 21:34:58', '2018-06-14 21:34:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1555, 1, 778, 0.0, '2018-06-14 21:35:16', '2018-06-14 21:35:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (1556, 2, 778, 2.0, '2018-06-14 21:35:16', '2018-06-14 21:35:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1557, 1, 779, 0.0, '2018-06-14 21:35:52', '2018-06-14 21:35:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (1558, 2, 779, 1.0, '2018-06-14 21:35:52', '2018-06-14 21:35:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (1559, 1, 780, 3.0, '2018-06-14 22:34:31', '2018-06-14 22:56:23');
INSERT INTO `checklist_warehouse_quantities` VALUES (1560, 2, 780, 2.0, '2018-06-14 22:34:31', '2018-06-14 22:35:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1561, 1, 781, 2.0, '2018-06-14 22:35:56', '2018-06-14 22:58:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1562, 2, 781, 4.0, '2018-06-14 22:35:56', '2018-06-14 22:35:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1563, 1, 782, 5.0, '2018-06-14 22:36:46', '2018-06-14 22:59:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1564, 2, 782, 3.0, '2018-06-14 22:36:46', '2018-06-14 22:36:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1565, 1, 783, 11.0, '2018-06-14 22:37:08', '2018-06-14 23:02:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1566, 2, 783, 3.0, '2018-06-14 22:37:08', '2018-06-14 22:37:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1567, 1, 784, 0.0, '2018-06-14 22:38:51', '2018-06-14 22:38:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1568, 2, 784, 2.0, '2018-06-14 22:38:51', '2018-06-14 22:38:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1569, 1, 785, 1.0, '2018-06-14 22:39:35', '2018-06-14 23:03:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (1570, 2, 785, 3.0, '2018-06-14 22:39:35', '2018-06-14 22:39:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1571, 1, 786, 0.0, '2018-06-14 22:40:04', '2018-06-14 23:49:30');
INSERT INTO `checklist_warehouse_quantities` VALUES (1572, 2, 786, 2.0, '2018-06-14 22:40:04', '2018-06-14 22:40:04');
INSERT INTO `checklist_warehouse_quantities` VALUES (1573, 1, 787, 6.0, '2018-06-14 22:40:31', '2018-06-14 23:05:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1574, 2, 787, 3.0, '2018-06-14 22:40:31', '2018-06-14 22:40:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1575, 1, 788, 0.0, '2018-06-14 22:41:09', '2018-06-14 23:58:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (1576, 2, 788, 1.0, '2018-06-14 22:41:09', '2018-06-14 23:50:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1577, 1, 789, 1.0, '2018-06-14 22:41:52', '2018-06-14 23:06:09');
INSERT INTO `checklist_warehouse_quantities` VALUES (1578, 2, 789, 0.0, '2018-06-14 22:41:52', '2018-06-14 22:41:52');
INSERT INTO `checklist_warehouse_quantities` VALUES (1579, 1, 790, 1.0, '2018-06-14 22:42:15', '2018-06-14 23:06:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1580, 2, 790, 1.0, '2018-06-14 22:42:15', '2018-06-14 22:42:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1581, 1, 791, 4.0, '2018-06-14 22:42:45', '2018-06-14 23:07:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (1582, 2, 791, 4.0, '2018-06-14 22:42:45', '2018-06-14 22:42:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (1583, 1, 792, 2.0, '2018-06-14 22:43:08', '2018-06-14 23:08:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1584, 2, 792, 3.0, '2018-06-14 22:43:08', '2018-06-14 22:43:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1585, 1, 793, 2.0, '2018-06-14 22:43:24', '2018-06-14 23:09:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1586, 2, 793, 2.0, '2018-06-14 22:43:24', '2018-06-14 22:43:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1587, 1, 794, 4.0, '2018-06-14 22:43:50', '2018-06-14 23:09:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1588, 2, 794, 1.0, '2018-06-14 22:43:50', '2018-06-14 22:43:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1589, 1, 795, 8.0, '2018-06-14 22:45:19', '2018-06-14 23:10:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1590, 2, 795, 11.0, '2018-06-14 22:45:19', '2018-06-14 22:45:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1591, 1, 796, 0.0, '2018-06-14 22:45:32', '2018-06-14 22:45:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (1592, 2, 796, 3.0, '2018-06-14 22:45:32', '2018-06-14 22:45:32');
INSERT INTO `checklist_warehouse_quantities` VALUES (1593, 1, 797, 0.0, '2018-06-14 22:45:58', '2018-06-14 23:15:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1594, 2, 797, 1.0, '2018-06-14 22:45:58', '2018-06-14 22:45:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1595, 1, 798, 0.0, '2018-06-14 22:46:21', '2018-06-14 22:46:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1596, 2, 798, 2.0, '2018-06-14 22:46:21', '2018-06-14 22:46:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1597, 1, 799, 3.0, '2018-06-14 22:47:22', '2018-06-14 23:13:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1598, 2, 799, 3.0, '2018-06-14 22:47:22', '2018-06-14 22:47:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1599, 1, 800, 0.0, '2018-06-14 22:47:45', '2018-06-14 23:17:14');
INSERT INTO `checklist_warehouse_quantities` VALUES (1600, 2, 800, 5.0, '2018-06-14 22:47:45', '2018-06-14 22:47:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (1601, 1, 801, 0.0, '2018-06-14 22:48:02', '2018-06-14 23:14:22');
INSERT INTO `checklist_warehouse_quantities` VALUES (1602, 2, 801, 1.0, '2018-06-14 22:48:02', '2018-06-14 22:48:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1603, 1, 802, 0.0, '2018-06-14 22:49:35', '2018-06-14 22:49:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1604, 2, 802, 1.0, '2018-06-14 22:49:35', '2018-06-14 22:49:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1605, 1, 803, 5.0, '2018-06-14 22:50:47', '2018-06-14 23:19:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1606, 2, 803, 2.0, '2018-06-14 22:50:47', '2018-06-14 22:50:47');
INSERT INTO `checklist_warehouse_quantities` VALUES (1607, 1, 804, 12.0, '2018-06-14 22:51:07', '2018-06-14 23:20:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1608, 2, 804, 3.0, '2018-06-14 22:51:07', '2018-06-14 22:51:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1609, 1, 805, 5.0, '2018-06-14 22:51:26', '2018-06-14 23:21:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1610, 2, 805, 3.0, '2018-06-14 22:51:26', '2018-06-14 22:51:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (1611, 1, 806, 8.0, '2018-06-14 22:51:53', '2018-06-14 23:22:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1612, 2, 806, 4.0, '2018-06-14 22:51:53', '2018-06-14 22:51:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1613, 1, 807, 16.0, '2018-06-14 22:52:16', '2018-06-14 23:23:46');
INSERT INTO `checklist_warehouse_quantities` VALUES (1614, 2, 807, 1.0, '2018-06-14 22:52:16', '2018-06-14 22:52:16');
INSERT INTO `checklist_warehouse_quantities` VALUES (1615, 1, 808, 0.0, '2018-06-14 22:52:35', '2018-06-14 22:52:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1616, 2, 808, 1.0, '2018-06-14 22:52:35', '2018-06-14 22:52:35');
INSERT INTO `checklist_warehouse_quantities` VALUES (1617, 1, 809, 0.0, '2018-06-14 22:52:55', '2018-06-14 22:52:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1618, 2, 809, 3.0, '2018-06-14 22:52:55', '2018-06-14 22:52:55');
INSERT INTO `checklist_warehouse_quantities` VALUES (1619, 1, 810, 4.0, '2018-06-14 22:53:24', '2018-06-14 23:25:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1620, 2, 810, 1.0, '2018-06-14 22:53:24', '2018-06-14 22:53:24');
INSERT INTO `checklist_warehouse_quantities` VALUES (1621, 1, 811, 1.0, '2018-06-14 22:53:49', '2018-06-14 23:25:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1622, 2, 811, 2.0, '2018-06-14 22:53:49', '2018-06-14 22:53:49');
INSERT INTO `checklist_warehouse_quantities` VALUES (1623, 1, 812, 3.0, '2018-06-14 22:54:19', '2018-06-14 23:25:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1624, 2, 812, 1.0, '2018-06-14 22:54:19', '2018-06-14 22:54:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1625, 1, 813, 0.0, '2018-06-14 22:54:29', '2018-06-14 22:54:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1626, 2, 813, 1.0, '2018-06-14 22:54:29', '2018-06-14 22:54:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1627, 1, 814, 0.0, '2018-06-14 23:36:34', '2018-06-14 23:36:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1628, 2, 814, 6.0, '2018-06-14 23:36:34', '2018-06-14 23:36:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1629, 1, 815, 0.0, '2018-06-14 23:39:38', '2018-06-14 23:39:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1630, 2, 815, 6.0, '2018-06-14 23:39:38', '2018-06-14 23:39:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1631, 1, 816, 0.0, '2018-06-14 23:40:59', '2018-06-14 23:40:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1632, 2, 816, 4.0, '2018-06-14 23:40:59', '2018-06-14 23:40:59');
INSERT INTO `checklist_warehouse_quantities` VALUES (1633, 1, 817, 16.0, '2018-06-15 22:59:03', '2018-06-15 23:23:41');
INSERT INTO `checklist_warehouse_quantities` VALUES (1634, 2, 817, 0.5, '2018-06-15 22:59:03', '2018-06-15 22:59:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (1635, 1, 818, 2.0, '2018-06-15 22:59:50', '2018-06-15 23:30:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1636, 2, 818, 2.0, '2018-06-15 22:59:50', '2018-06-15 23:15:19');
INSERT INTO `checklist_warehouse_quantities` VALUES (1637, 1, 819, 13.0, '2018-06-15 23:00:10', '2018-06-15 23:21:28');
INSERT INTO `checklist_warehouse_quantities` VALUES (1638, 2, 819, 4.0, '2018-06-15 23:00:10', '2018-06-15 23:00:10');
INSERT INTO `checklist_warehouse_quantities` VALUES (1639, 1, 820, 8.0, '2018-06-15 23:00:32', '2018-06-15 23:31:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1640, 2, 820, 3.5, '2018-06-15 23:00:32', '2018-06-15 23:06:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1641, 1, 821, 7.0, '2018-06-15 23:01:21', '2018-06-15 23:20:53');
INSERT INTO `checklist_warehouse_quantities` VALUES (1642, 2, 821, 1.0, '2018-06-15 23:01:21', '2018-06-15 23:01:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1643, 1, 822, 3.0, '2018-06-15 23:01:45', '2018-06-15 23:25:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (1644, 2, 822, 1.0, '2018-06-15 23:01:45', '2018-06-15 23:03:11');
INSERT INTO `checklist_warehouse_quantities` VALUES (1645, 1, 823, 3.0, '2018-06-15 23:02:53', '2018-06-15 23:31:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1646, 2, 823, 0.5, '2018-06-15 23:02:53', '2018-06-15 23:06:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1647, 1, 824, 5.0, '2018-06-15 23:03:39', '2018-06-15 23:32:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1648, 2, 824, 2.0, '2018-06-15 23:03:39', '2018-06-15 23:03:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1649, 1, 825, 0.0, '2018-06-15 23:04:21', '2018-06-15 23:04:21');
INSERT INTO `checklist_warehouse_quantities` VALUES (1650, 2, 825, 2.0, '2018-06-15 23:04:21', '2018-06-15 23:18:38');
INSERT INTO `checklist_warehouse_quantities` VALUES (1651, 1, 826, 2.0, '2018-06-15 23:05:01', '2018-06-15 23:28:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1652, 2, 826, 0.0, '2018-06-15 23:05:01', '2018-06-15 23:05:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1653, 1, 827, 1.0, '2018-06-15 23:07:15', '2018-06-15 23:32:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1654, 2, 827, 1.0, '2018-06-15 23:07:15', '2018-06-15 23:07:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1655, 1, 828, 5.0, '2018-06-15 23:07:42', '2018-06-15 23:30:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1656, 2, 828, 3.0, '2018-06-15 23:07:42', '2018-06-15 23:07:42');
INSERT INTO `checklist_warehouse_quantities` VALUES (1657, 1, 829, 4.0, '2018-06-15 23:08:06', '2018-06-15 23:29:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1658, 2, 829, 2.0, '2018-06-15 23:08:06', '2018-06-15 23:08:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1659, 1, 830, 2.0, '2018-06-15 23:08:25', '2018-06-15 23:30:20');
INSERT INTO `checklist_warehouse_quantities` VALUES (1660, 2, 830, 1.5, '2018-06-15 23:08:25', '2018-06-15 23:08:57');
INSERT INTO `checklist_warehouse_quantities` VALUES (1661, 1, 831, 4.0, '2018-06-15 23:09:29', '2018-06-15 23:32:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1662, 2, 831, 0.0, '2018-06-15 23:09:29', '2018-06-15 23:09:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1663, 1, 832, 0.0, '2018-06-15 23:09:51', '2018-06-15 23:10:02');
INSERT INTO `checklist_warehouse_quantities` VALUES (1664, 2, 832, 5.0, '2018-06-15 23:09:51', '2018-06-15 23:09:51');
INSERT INTO `checklist_warehouse_quantities` VALUES (1665, 1, 833, 0.0, '2018-06-15 23:11:07', '2018-06-15 23:11:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1666, 2, 833, 1.5, '2018-06-15 23:11:07', '2018-06-15 23:11:07');
INSERT INTO `checklist_warehouse_quantities` VALUES (1667, 1, 834, 0.0, '2018-06-15 23:11:54', '2018-06-15 23:11:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1668, 2, 834, 3.0, '2018-06-15 23:11:54', '2018-06-15 23:13:34');
INSERT INTO `checklist_warehouse_quantities` VALUES (1669, 1, 835, 0.0, '2018-06-15 23:12:31', '2018-06-15 23:12:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1670, 2, 835, 1.0, '2018-06-15 23:12:31', '2018-06-15 23:12:31');
INSERT INTO `checklist_warehouse_quantities` VALUES (1671, 1, 836, 3.0, '2018-06-15 23:12:44', '2018-06-15 23:33:08');
INSERT INTO `checklist_warehouse_quantities` VALUES (1672, 2, 836, 2.5, '2018-06-15 23:12:44', '2018-06-15 23:12:44');
INSERT INTO `checklist_warehouse_quantities` VALUES (1673, 1, 837, 0.0, '2018-06-15 23:13:13', '2018-06-15 23:13:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1674, 2, 837, 2.0, '2018-06-15 23:13:13', '2018-06-15 23:13:13');
INSERT INTO `checklist_warehouse_quantities` VALUES (1675, 1, 838, 0.0, '2018-06-15 23:13:45', '2018-06-15 23:13:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (1676, 2, 838, 4.0, '2018-06-15 23:13:45', '2018-06-15 23:13:45');
INSERT INTO `checklist_warehouse_quantities` VALUES (1677, 1, 839, 0.0, '2018-06-15 23:13:58', '2018-06-15 23:13:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1678, 2, 839, 0.5, '2018-06-15 23:13:58', '2018-06-15 23:13:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1679, 1, 840, 7.0, '2018-06-15 23:14:18', '2018-06-15 23:36:15');
INSERT INTO `checklist_warehouse_quantities` VALUES (1680, 2, 840, 2.0, '2018-06-15 23:14:18', '2018-06-15 23:14:18');
INSERT INTO `checklist_warehouse_quantities` VALUES (1681, 1, 841, 12.0, '2018-06-15 23:14:54', '2018-06-15 23:34:17');
INSERT INTO `checklist_warehouse_quantities` VALUES (1682, 2, 841, 4.0, '2018-06-15 23:14:54', '2018-06-15 23:14:54');
INSERT INTO `checklist_warehouse_quantities` VALUES (1683, 1, 842, 16.0, '2018-06-15 23:15:39', '2018-06-15 23:36:01');
INSERT INTO `checklist_warehouse_quantities` VALUES (1684, 2, 842, 2.0, '2018-06-15 23:15:39', '2018-06-15 23:15:39');
INSERT INTO `checklist_warehouse_quantities` VALUES (1685, 1, 843, 8.0, '2018-06-15 23:15:50', '2018-06-15 23:36:37');
INSERT INTO `checklist_warehouse_quantities` VALUES (1686, 2, 843, 3.0, '2018-06-15 23:15:50', '2018-06-15 23:16:27');
INSERT INTO `checklist_warehouse_quantities` VALUES (1687, 1, 844, 11.0, '2018-06-15 23:16:40', '2018-06-15 23:36:56');
INSERT INTO `checklist_warehouse_quantities` VALUES (1688, 2, 844, 4.0, '2018-06-15 23:16:40', '2018-06-15 23:16:40');
INSERT INTO `checklist_warehouse_quantities` VALUES (1689, 1, 845, 0.0, '2018-06-15 23:16:50', '2018-06-15 23:16:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1690, 2, 845, 0.0, '2018-06-15 23:16:50', '2018-06-15 23:16:50');
INSERT INTO `checklist_warehouse_quantities` VALUES (1691, 1, 846, 0.0, '2018-06-15 23:17:03', '2018-06-15 23:17:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1692, 2, 846, 2.5, '2018-06-15 23:17:03', '2018-06-15 23:17:03');
INSERT INTO `checklist_warehouse_quantities` VALUES (1693, 1, 847, 3.5, '2018-06-15 23:17:29', '2018-06-15 23:37:26');
INSERT INTO `checklist_warehouse_quantities` VALUES (1694, 2, 847, 0.5, '2018-06-15 23:17:29', '2018-06-15 23:17:29');
INSERT INTO `checklist_warehouse_quantities` VALUES (1695, 1, 848, 1.0, '2018-06-15 23:18:14', '2018-06-15 23:37:58');
INSERT INTO `checklist_warehouse_quantities` VALUES (1696, 2, 848, 2.5, '2018-06-15 23:18:14', '2018-06-15 23:18:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1697, 1, 849, 2.0, '2018-06-15 23:19:06', '2018-06-15 23:38:12');
INSERT INTO `checklist_warehouse_quantities` VALUES (1698, 2, 849, 1.5, '2018-06-15 23:19:06', '2018-06-15 23:19:06');
INSERT INTO `checklist_warehouse_quantities` VALUES (1699, 1, 850, 0.0, '2018-06-15 23:19:25', '2018-06-15 23:19:25');
INSERT INTO `checklist_warehouse_quantities` VALUES (1700, 2, 850, 1.0, '2018-06-15 23:19:25', '2018-06-15 23:19:25');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of checklists
-- ----------------------------
BEGIN;
INSERT INTO `checklists` VALUES (8, '2018-05-28', 0, '2018-05-28 22:00:24', '2018-05-28 23:33:21');
INSERT INTO `checklists` VALUES (9, '2018-05-29', 0, '2018-05-29 23:55:53', '2018-05-31 00:09:45');
INSERT INTO `checklists` VALUES (11, '2018-05-30', 0, '2018-05-31 01:08:08', '2018-05-31 20:57:33');
INSERT INTO `checklists` VALUES (12, '2018-05-31', 0, '2018-06-02 01:33:57', '2018-06-02 02:00:36');
INSERT INTO `checklists` VALUES (13, '2018-06-01', 0, '2018-06-02 02:01:36', '2018-06-02 03:08:34');
INSERT INTO `checklists` VALUES (14, '2018-06-02', 0, '2018-06-04 13:15:27', '2018-06-04 14:00:08');
INSERT INTO `checklists` VALUES (15, '2018-06-03', 0, '2018-06-04 14:01:29', '2018-06-04 15:13:50');
INSERT INTO `checklists` VALUES (16, '2018-06-04', 0, '2018-06-05 13:05:48', '2018-06-05 14:19:16');
INSERT INTO `checklists` VALUES (17, '2018-06-05', 0, '2018-06-06 16:00:48', '2018-06-06 16:47:34');
INSERT INTO `checklists` VALUES (18, '2018-06-06', 0, '2018-06-09 13:08:17', '2018-06-13 19:18:30');
INSERT INTO `checklists` VALUES (19, '2018-06-07', 0, '2018-06-11 14:34:59', '2018-06-14 23:02:28');
INSERT INTO `checklists` VALUES (20, '2018-06-08', 0, '2018-06-11 15:08:06', '2018-06-14 23:06:18');
INSERT INTO `checklists` VALUES (21, '2018-06-09', 0, '2018-06-11 15:27:59', '2018-06-14 23:07:20');
INSERT INTO `checklists` VALUES (22, '2018-06-10', 0, '2018-06-11 15:46:01', '2018-06-14 23:09:09');
INSERT INTO `checklists` VALUES (23, '2018-06-11', 0, '2018-06-14 20:31:06', '2018-06-14 23:25:03');
INSERT INTO `checklists` VALUES (24, '2018-06-12', 0, '2018-06-14 20:31:14', '2018-06-14 23:35:29');
INSERT INTO `checklists` VALUES (25, '2018-06-13', 0, '2018-06-14 20:31:30', '2018-06-14 23:45:18');
INSERT INTO `checklists` VALUES (26, '2018-06-14', 0, '2018-06-14 22:33:45', '2018-06-15 00:03:12');
INSERT INTO `checklists` VALUES (27, '2018-06-15', 1, '2018-06-15 22:55:46', '2018-06-15 22:55:46');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (261, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (262, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (263, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (264, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (265, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (266, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (267, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (268, '2017_12_08_185627_create_product_categories_table', 1);
INSERT INTO `migrations` VALUES (269, '2017_12_09_034641_create_warehouses_table', 1);
INSERT INTO `migrations` VALUES (270, '2017_12_09_035229_create_units_measures_table', 1);
INSERT INTO `migrations` VALUES (271, '2017_12_09_070015_create_products_table', 1);
INSERT INTO `migrations` VALUES (272, '2017_12_11_031609_create_productions_table', 1);
INSERT INTO `migrations` VALUES (273, '2017_12_11_031610_create_checklists_table', 1);
INSERT INTO `migrations` VALUES (274, '2017_12_11_090606_create_checklist_products_table', 1);
INSERT INTO `migrations` VALUES (275, '2017_12_11_090644_create_checklist_warehouse_quantities_table', 1);
INSERT INTO `migrations` VALUES (276, '2017_12_16_122221_create_checklist_totals_table', 1);
INSERT INTO `migrations` VALUES (277, '2018_05_07_174844_create_product_daily_checklist_table', 1);
INSERT INTO `migrations` VALUES (278, '2018_05_08_163141_create_tasks_table', 1);
INSERT INTO `migrations` VALUES (279, '2018_05_20_191656_create_acl_roles_table', 1);
INSERT INTO `migrations` VALUES (280, '2018_05_20_191739_create_acl_permissions_table', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
BEGIN;
INSERT INTO `product_categories` VALUES (1, 'Molhos', 1, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `product_categories` VALUES (2, 'Prontos', 1, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `product_categories` VALUES (3, 'Industrializados', 1, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `product_categories` VALUES (4, 'Frios/Fatiados', 1, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_daily_checklist
-- ----------------------------
BEGIN;
INSERT INTO `product_daily_checklist` VALUES (1, 1, '[9,7,13]', '2018-05-21 17:51:53', '2018-06-14 23:25:06');
INSERT INTO `product_daily_checklist` VALUES (2, 2, '[5,2,4]', '2018-05-21 17:51:53', '2018-06-14 23:25:06');
INSERT INTO `product_daily_checklist` VALUES (3, 3, '[8,4,6]', '2018-05-21 17:51:53', '2018-06-14 23:25:07');
INSERT INTO `product_daily_checklist` VALUES (4, 4, '[5,7,7]', '2018-05-21 17:51:53', '2018-06-14 23:25:07');
INSERT INTO `product_daily_checklist` VALUES (5, 5, '[3.5,3,3.5]', '2018-05-21 17:51:53', '2018-06-14 23:07:25');
INSERT INTO `product_daily_checklist` VALUES (6, 6, '[5.5,5.5,5]', '2018-05-21 17:51:53', '2018-06-14 23:07:25');
INSERT INTO `product_daily_checklist` VALUES (7, 7, '[4,1.5,3]', '2018-05-21 17:51:53', '2018-06-14 23:41:07');
INSERT INTO `product_daily_checklist` VALUES (8, 8, '[5,3.5,2.5]', '2018-05-21 17:51:53', '2018-06-14 23:07:25');
INSERT INTO `product_daily_checklist` VALUES (9, 9, '[2,0,1]', '2018-05-21 17:51:53', '2018-06-14 23:58:42');
INSERT INTO `product_daily_checklist` VALUES (10, 10, '[3,2,1.5]', '2018-05-21 17:51:53', '2018-06-14 23:19:35');
INSERT INTO `product_daily_checklist` VALUES (11, 11, '[2,0,0]', '2018-05-21 17:51:53', '2018-06-14 23:41:07');
INSERT INTO `product_daily_checklist` VALUES (12, 12, '[6,3,3]', '2018-05-21 17:51:53', '2018-06-14 23:19:35');
INSERT INTO `product_daily_checklist` VALUES (13, 13, '[7.5,5,5]', '2018-05-21 17:51:53', '2018-06-14 23:29:31');
INSERT INTO `product_daily_checklist` VALUES (14, 14, '[2,1,0.5]', '2018-05-21 17:51:53', '2018-06-14 23:06:22');
INSERT INTO `product_daily_checklist` VALUES (15, 15, '[1,1,0]', '2018-05-21 17:51:53', '2018-06-14 23:19:35');
INSERT INTO `product_daily_checklist` VALUES (16, 16, '[6,9,10]', '2018-05-21 17:51:53', '2018-06-14 23:35:28');
INSERT INTO `product_daily_checklist` VALUES (17, 17, '[1.5,0.5,0.5]', '2018-05-21 17:51:53', '2018-06-14 23:41:07');
INSERT INTO `product_daily_checklist` VALUES (18, 18, '[9,5,6]', '2018-05-21 17:51:53', '2018-06-14 23:55:49');
INSERT INTO `product_daily_checklist` VALUES (19, 19, '[2,2,1]', '2018-05-21 17:51:53', '2018-06-14 23:06:22');
INSERT INTO `product_daily_checklist` VALUES (20, 20, '[3,4.5,2]', '2018-05-21 17:51:53', '2018-06-14 23:07:25');
INSERT INTO `product_daily_checklist` VALUES (21, 21, '[6,2,4]', '2018-05-21 17:51:53', '2018-06-14 23:06:22');
INSERT INTO `product_daily_checklist` VALUES (22, 22, '[7,4,3]', '2018-05-21 17:51:53', '2018-06-14 23:07:25');
INSERT INTO `product_daily_checklist` VALUES (23, 23, '[1,0,0]', '2018-05-21 17:51:53', '2018-05-31 20:57:33');
INSERT INTO `product_daily_checklist` VALUES (24, 24, '[4,5,5]', '2018-05-21 17:51:53', '2018-06-14 23:06:22');
INSERT INTO `product_daily_checklist` VALUES (25, 25, '[9,6,3]', '2018-05-21 17:51:53', '2018-06-14 23:35:28');
INSERT INTO `product_daily_checklist` VALUES (26, 26, '[1,2,2.5]', '2018-05-21 17:51:53', '2018-06-14 23:07:25');
INSERT INTO `product_daily_checklist` VALUES (27, 27, '[2,1,2]', '2018-05-21 17:51:53', '2018-06-04 15:13:50');
INSERT INTO `product_daily_checklist` VALUES (28, 28, '[10,18,9]', '2018-05-21 17:51:53', '2018-06-14 23:07:20');
INSERT INTO `product_daily_checklist` VALUES (29, 29, '[0,0,0]', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `product_daily_checklist` VALUES (30, 30, '[4,2,5]', '2018-05-21 17:51:53', '2018-06-14 23:35:29');
INSERT INTO `product_daily_checklist` VALUES (31, 31, '[3,1,2]', '2018-05-21 17:51:53', '2018-06-14 23:07:20');
INSERT INTO `product_daily_checklist` VALUES (32, 32, '[1,1,0]', '2018-06-09 13:34:27', '2018-06-14 23:35:29');
INSERT INTO `product_daily_checklist` VALUES (33, 33, '[1,0.5,0.5]', '2018-06-09 13:35:41', '2018-06-14 23:25:03');
INSERT INTO `product_daily_checklist` VALUES (34, 34, '[0,0,0.5]', '2018-06-09 13:38:17', '2018-06-14 23:07:20');
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
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of productions
-- ----------------------------
BEGIN;
INSERT INTO `productions` VALUES (33, '2018-05-28', 2.0, 30, '2018-05-28 15:00:20', '2018-05-28 15:00:20');
INSERT INTO `productions` VALUES (34, '2018-05-28', 8.0, 25, '2018-05-28 15:00:40', '2018-05-28 15:00:40');
INSERT INTO `productions` VALUES (35, '2018-05-28', 8.0, 24, '2018-05-28 15:49:04', '2018-05-28 15:49:04');
INSERT INTO `productions` VALUES (36, '2018-05-28', 14.0, 27, '2018-05-28 15:49:41', '2018-05-28 15:49:41');
INSERT INTO `productions` VALUES (37, '2018-05-28', 5.0, 1, '2018-05-28 18:38:00', '2018-05-28 18:38:00');
INSERT INTO `productions` VALUES (38, '2018-05-28', 2.0, 8, '2018-05-28 18:38:32', '2018-05-28 18:38:32');
INSERT INTO `productions` VALUES (39, '2018-05-28', 5.0, 4, '2018-05-28 18:40:21', '2018-05-28 18:40:21');
INSERT INTO `productions` VALUES (40, '2018-05-28', 2.0, 12, '2018-05-28 18:40:43', '2018-05-28 18:40:43');
INSERT INTO `productions` VALUES (41, '2018-05-28', 2.0, 13, '2018-05-28 18:41:02', '2018-05-28 18:41:02');
INSERT INTO `productions` VALUES (42, '2018-05-28', 6.0, 6, '2018-05-28 18:41:19', '2018-05-28 18:41:19');
INSERT INTO `productions` VALUES (43, '2018-05-28', 5.0, 26, '2018-05-28 23:13:09', '2018-05-28 23:13:09');
INSERT INTO `productions` VALUES (44, '2018-05-29', 4.0, 20, '2018-05-29 17:34:23', '2018-05-29 17:34:23');
INSERT INTO `productions` VALUES (45, '2018-05-29', 10.0, 1, '2018-05-29 19:00:32', '2018-05-29 19:00:32');
INSERT INTO `productions` VALUES (46, '2018-05-29', 8.0, 2, '2018-05-29 19:00:53', '2018-05-29 19:00:53');
INSERT INTO `productions` VALUES (47, '2018-05-29', 1.0, 12, '2018-05-29 19:03:44', '2018-05-29 19:03:44');
INSERT INTO `productions` VALUES (48, '2018-05-29', 1.5, 10, '2018-05-29 20:11:04', '2018-05-29 20:11:04');
INSERT INTO `productions` VALUES (49, '2018-05-29', 3.0, 13, '2018-05-29 20:12:50', '2018-05-29 20:12:50');
INSERT INTO `productions` VALUES (50, '2018-05-29', 2.0, 4, '2018-05-29 20:13:11', '2018-05-29 20:13:11');
INSERT INTO `productions` VALUES (51, '2018-05-30', 6.0, 6, '2018-05-30 20:33:19', '2018-05-30 20:33:19');
INSERT INTO `productions` VALUES (52, '2018-05-30', 15.0, 3, '2018-05-30 20:33:42', '2018-05-30 20:33:42');
INSERT INTO `productions` VALUES (53, '2018-05-30', 6.0, 8, '2018-05-30 20:34:03', '2018-05-30 20:34:03');
INSERT INTO `productions` VALUES (54, '2018-05-30', 5.0, 4, '2018-05-30 20:34:24', '2018-05-30 20:34:24');
INSERT INTO `productions` VALUES (55, '2018-05-30', 4.0, 12, '2018-05-30 20:34:49', '2018-05-30 20:34:49');
INSERT INTO `productions` VALUES (56, '2018-05-30', 4.0, 13, '2018-05-30 20:35:02', '2018-05-30 20:35:02');
INSERT INTO `productions` VALUES (57, '2018-05-30', 2.0, 14, '2018-05-30 20:35:19', '2018-05-30 20:35:19');
INSERT INTO `productions` VALUES (58, '2018-05-30', 1.5, 10, '2018-05-30 20:35:44', '2018-05-30 20:35:44');
INSERT INTO `productions` VALUES (59, '2018-05-29', 5.0, 16, '2018-05-30 23:59:43', '2018-05-30 23:59:43');
INSERT INTO `productions` VALUES (60, '2018-05-29', 1.0, 18, '2018-05-31 00:01:19', '2018-05-31 00:01:19');
INSERT INTO `productions` VALUES (61, '2018-05-29', 1.0, 19, '2018-05-31 00:02:34', '2018-05-31 00:02:34');
INSERT INTO `productions` VALUES (62, '2018-05-29', 1.0, 22, '2018-05-31 00:03:24', '2018-05-31 00:03:24');
INSERT INTO `productions` VALUES (63, '2018-05-29', 6.0, 27, '2018-05-31 00:09:11', '2018-05-31 00:09:40');
INSERT INTO `productions` VALUES (64, '2018-05-30', 3.5, 16, '2018-05-31 20:36:42', '2018-05-31 20:36:42');
INSERT INTO `productions` VALUES (65, '2018-05-30', 0.0, 17, '2018-05-31 20:37:14', '2018-05-31 20:47:36');
INSERT INTO `productions` VALUES (66, '2018-05-30', 4.0, 18, '2018-05-31 20:38:23', '2018-05-31 20:38:23');
INSERT INTO `productions` VALUES (67, '2018-05-30', 1.0, 19, '2018-05-31 20:38:53', '2018-05-31 20:38:53');
INSERT INTO `productions` VALUES (68, '2018-05-30', 6.0, 21, '2018-05-31 20:39:19', '2018-05-31 20:39:19');
INSERT INTO `productions` VALUES (69, '2018-05-30', 3.0, 22, '2018-05-31 20:39:49', '2018-05-31 20:39:49');
INSERT INTO `productions` VALUES (70, '2018-05-30', 1.0, 23, '2018-05-31 20:40:26', '2018-05-31 20:40:26');
INSERT INTO `productions` VALUES (71, '2018-06-01', 4.0, 13, '2018-06-01 19:23:43', '2018-06-01 19:23:43');
INSERT INTO `productions` VALUES (72, '2018-06-01', 4.0, 12, '2018-06-01 19:24:23', '2018-06-01 19:24:23');
INSERT INTO `productions` VALUES (73, '2018-06-01', 6.0, 8, '2018-06-01 19:26:04', '2018-06-01 19:26:04');
INSERT INTO `productions` VALUES (74, '2018-06-01', 3.5, 7, '2018-06-01 19:26:48', '2018-06-01 19:26:48');
INSERT INTO `productions` VALUES (75, '2018-06-01', 11.0, 28, '2018-06-01 19:42:24', '2018-06-01 19:42:24');
INSERT INTO `productions` VALUES (76, '2018-06-01', 5.0, 24, '2018-06-01 19:42:44', '2018-06-01 19:42:44');
INSERT INTO `productions` VALUES (77, '2018-06-01', 2.0, 30, '2018-06-01 19:43:04', '2018-06-01 19:43:04');
INSERT INTO `productions` VALUES (78, '2018-06-01', 6.5, 5, '2018-06-01 20:38:54', '2018-06-01 20:38:54');
INSERT INTO `productions` VALUES (79, '2018-06-01', 14.0, 1, '2018-06-01 20:39:25', '2018-06-01 20:39:25');
INSERT INTO `productions` VALUES (80, '2018-06-01', 6.0, 4, '2018-06-01 20:39:42', '2018-06-01 20:39:42');
INSERT INTO `productions` VALUES (81, '2018-05-31', 6.0, 16, '2018-06-02 01:46:47', '2018-06-02 01:46:47');
INSERT INTO `productions` VALUES (82, '2018-05-31', 4.0, 18, '2018-06-02 01:47:32', '2018-06-02 01:47:32');
INSERT INTO `productions` VALUES (83, '2018-05-31', 1.0, 21, '2018-06-02 01:48:39', '2018-06-02 01:48:39');
INSERT INTO `productions` VALUES (84, '2018-05-31', 3.0, 22, '2018-06-02 01:49:29', '2018-06-02 03:01:04');
INSERT INTO `productions` VALUES (85, '2018-06-01', 9.5, 16, '2018-06-02 02:09:33', '2018-06-02 02:09:33');
INSERT INTO `productions` VALUES (86, '2018-06-01', 1.0, 18, '2018-06-02 02:10:45', '2018-06-02 02:10:45');
INSERT INTO `productions` VALUES (87, '2018-06-01', 2.0, 19, '2018-06-02 02:11:14', '2018-06-02 02:11:14');
INSERT INTO `productions` VALUES (89, '2018-05-31', 2.0, 14, '2018-06-02 02:34:58', '2018-06-02 02:34:58');
INSERT INTO `productions` VALUES (90, '2018-06-01', 1.0, 21, '2018-06-02 02:47:50', '2018-06-02 02:47:50');
INSERT INTO `productions` VALUES (91, '2018-06-01', 1.0, 22, '2018-06-02 02:59:16', '2018-06-02 02:59:16');
INSERT INTO `productions` VALUES (92, '2018-06-02', 6.0, 6, '2018-06-02 18:40:33', '2018-06-02 18:40:33');
INSERT INTO `productions` VALUES (93, '2018-06-02', 1.5, 10, '2018-06-02 18:40:58', '2018-06-02 18:40:58');
INSERT INTO `productions` VALUES (94, '2018-06-02', 2.0, 14, '2018-06-02 18:41:18', '2018-06-02 18:41:18');
INSERT INTO `productions` VALUES (95, '2018-06-02', 4.0, 13, '2018-06-02 18:41:38', '2018-06-02 18:41:38');
INSERT INTO `productions` VALUES (96, '2018-06-02', 3.0, 12, '2018-06-02 18:41:56', '2018-06-02 18:41:56');
INSERT INTO `productions` VALUES (97, '2018-06-02', 2.0, 11, '2018-06-02 18:42:14', '2018-06-02 18:42:14');
INSERT INTO `productions` VALUES (98, '2018-06-03', 16.0, 28, '2018-06-03 16:35:56', '2018-06-03 16:35:56');
INSERT INTO `productions` VALUES (99, '2018-06-03', 0.0, 3, '2018-06-03 16:42:04', '2018-06-03 16:45:27');
INSERT INTO `productions` VALUES (100, '2018-06-03', 6.0, 4, '2018-06-03 16:42:22', '2018-06-03 16:42:22');
INSERT INTO `productions` VALUES (101, '2018-06-03', 11.0, 1, '2018-06-03 16:42:36', '2018-06-03 16:42:36');
INSERT INTO `productions` VALUES (102, '2018-06-03', 3.0, 13, '2018-06-03 16:43:01', '2018-06-03 16:43:01');
INSERT INTO `productions` VALUES (103, '2018-06-03', 5.0, 2, '2018-06-03 16:46:14', '2018-06-03 16:46:14');
INSERT INTO `productions` VALUES (104, '2018-06-02', 7.0, 24, '2018-06-04 13:13:36', '2018-06-04 13:13:36');
INSERT INTO `productions` VALUES (105, '2018-06-02', 3.0, 31, '2018-06-04 13:14:16', '2018-06-04 13:58:54');
INSERT INTO `productions` VALUES (106, '2018-06-02', 4.0, 20, '2018-06-04 13:14:47', '2018-06-04 13:14:47');
INSERT INTO `productions` VALUES (107, '2018-06-02', 5.0, 26, '2018-06-04 13:15:08', '2018-06-04 13:15:08');
INSERT INTO `productions` VALUES (108, '2018-06-02', 9.0, 16, '2018-06-04 13:30:21', '2018-06-04 13:30:21');
INSERT INTO `productions` VALUES (109, '2018-06-02', 3.0, 18, '2018-06-04 13:31:54', '2018-06-04 13:31:54');
INSERT INTO `productions` VALUES (110, '2018-06-02', 3.0, 21, '2018-06-04 13:32:56', '2018-06-04 13:32:56');
INSERT INTO `productions` VALUES (111, '2018-06-02', 4.0, 22, '2018-06-04 13:33:26', '2018-06-04 13:48:49');
INSERT INTO `productions` VALUES (112, '2018-06-02', 3.0, 30, '2018-06-04 13:51:00', '2018-06-04 13:51:00');
INSERT INTO `productions` VALUES (113, '2018-06-03', 4.0, 16, '2018-06-04 15:05:56', '2018-06-04 15:05:56');
INSERT INTO `productions` VALUES (114, '2018-06-03', 2.0, 18, '2018-06-04 15:06:24', '2018-06-04 15:06:24');
INSERT INTO `productions` VALUES (115, '2018-06-03', 2.0, 21, '2018-06-04 15:07:29', '2018-06-04 15:07:29');
INSERT INTO `productions` VALUES (116, '2018-06-03', 2.0, 22, '2018-06-04 15:07:49', '2018-06-04 15:07:49');
INSERT INTO `productions` VALUES (117, '2018-06-04', 3.0, 15, '2018-06-04 16:21:52', '2018-06-04 16:21:52');
INSERT INTO `productions` VALUES (118, '2018-06-04', 10.0, 25, '2018-06-04 16:27:52', '2018-06-06 16:42:29');
INSERT INTO `productions` VALUES (119, '2018-06-04', 5.0, 26, '2018-06-04 16:28:08', '2018-06-04 16:28:08');
INSERT INTO `productions` VALUES (120, '2018-06-04', 19.0, 3, '2018-06-04 20:25:49', '2018-06-04 20:25:49');
INSERT INTO `productions` VALUES (121, '2018-06-04', 6.0, 6, '2018-06-04 20:26:16', '2018-06-04 20:26:16');
INSERT INTO `productions` VALUES (122, '2018-06-04', 6.0, 8, '2018-06-04 20:26:36', '2018-06-04 20:26:36');
INSERT INTO `productions` VALUES (123, '2018-06-04', 2.0, 12, '2018-06-04 20:27:09', '2018-06-04 20:27:09');
INSERT INTO `productions` VALUES (124, '2018-06-04', 3.0, 13, '2018-06-04 20:27:30', '2018-06-04 20:27:30');
INSERT INTO `productions` VALUES (125, '2018-06-04', 5.0, 4, '2018-06-04 20:27:44', '2018-06-04 20:27:44');
INSERT INTO `productions` VALUES (126, '2018-06-04', 4.0, 16, '2018-06-05 13:31:31', '2018-06-05 13:31:31');
INSERT INTO `productions` VALUES (127, '2018-06-04', 1.0, 17, '2018-06-05 13:31:57', '2018-06-05 13:31:57');
INSERT INTO `productions` VALUES (128, '2018-06-04', 2.0, 18, '2018-06-05 13:34:42', '2018-06-05 13:34:42');
INSERT INTO `productions` VALUES (129, '2018-06-04', 2.0, 21, '2018-06-05 13:35:16', '2018-06-05 13:35:16');
INSERT INTO `productions` VALUES (130, '2018-06-04', 2.0, 22, '2018-06-05 13:35:37', '2018-06-05 13:35:37');
INSERT INTO `productions` VALUES (131, '2018-06-04', 1.0, 19, '2018-06-05 13:37:35', '2018-06-05 13:37:35');
INSERT INTO `productions` VALUES (132, '2018-06-04', 12.0, 28, '2018-06-05 14:10:44', '2018-06-06 16:45:35');
INSERT INTO `productions` VALUES (133, '2018-06-05', 2.0, 31, '2018-06-05 18:50:49', '2018-06-05 18:50:49');
INSERT INTO `productions` VALUES (134, '2018-06-05', 8.0, 5, '2018-06-05 19:09:48', '2018-06-05 19:09:48');
INSERT INTO `productions` VALUES (135, '2018-06-05', 4.0, 13, '2018-06-05 19:10:08', '2018-06-05 19:10:08');
INSERT INTO `productions` VALUES (136, '2018-06-05', 2.0, 14, '2018-06-05 19:10:24', '2018-06-05 19:10:24');
INSERT INTO `productions` VALUES (137, '2018-06-05', 1.5, 10, '2018-06-05 19:10:50', '2018-06-05 19:10:50');
INSERT INTO `productions` VALUES (138, '2018-06-05', 3.0, 16, '2018-06-06 16:35:29', '2018-06-06 16:35:29');
INSERT INTO `productions` VALUES (139, '2018-06-05', 2.0, 22, '2018-06-06 16:36:07', '2018-06-06 16:36:07');
INSERT INTO `productions` VALUES (140, '2018-06-05', 1.0, 23, '2018-06-06 16:36:47', '2018-06-06 16:36:47');
INSERT INTO `productions` VALUES (141, '2018-06-06', 5.0, 4, '2018-06-06 21:00:19', '2018-06-06 21:00:19');
INSERT INTO `productions` VALUES (142, '2018-06-06', 2.0, 8, '2018-06-06 21:00:38', '2018-06-06 21:00:38');
INSERT INTO `productions` VALUES (143, '2018-06-06', 12.0, 1, '2018-06-06 21:00:59', '2018-06-06 21:00:59');
INSERT INTO `productions` VALUES (144, '2018-06-06', 2.0, 12, '2018-06-06 21:01:38', '2018-06-06 21:01:38');
INSERT INTO `productions` VALUES (145, '2018-06-07', 11.0, 24, '2018-06-07 17:48:25', '2018-06-14 23:00:23');
INSERT INTO `productions` VALUES (146, '2018-06-07', 3.0, 30, '2018-06-07 17:49:06', '2018-06-07 17:49:06');
INSERT INTO `productions` VALUES (147, '2018-06-08', 4.0, 12, '2018-06-08 21:20:27', '2018-06-08 21:20:27');
INSERT INTO `productions` VALUES (148, '2018-06-08', 4.0, 13, '2018-06-08 21:20:58', '2018-06-08 21:20:58');
INSERT INTO `productions` VALUES (149, '2018-06-08', 16.0, 1, '2018-06-08 21:21:19', '2018-06-08 21:21:19');
INSERT INTO `productions` VALUES (150, '2018-06-08', 7.0, 8, '2018-06-08 21:21:39', '2018-06-08 21:21:39');
INSERT INTO `productions` VALUES (151, '2018-06-08', 4.0, 6, '2018-06-08 21:22:00', '2018-06-08 21:22:00');
INSERT INTO `productions` VALUES (152, '2018-06-08', 3.0, 7, '2018-06-08 21:22:49', '2018-06-08 21:22:49');
INSERT INTO `productions` VALUES (153, '2018-06-08', 3.0, 4, '2018-06-08 21:23:12', '2018-06-08 21:23:12');
INSERT INTO `productions` VALUES (154, '2018-06-08', 6.0, 2, '2018-06-08 21:23:36', '2018-06-08 21:23:36');
INSERT INTO `productions` VALUES (155, '2018-06-06', 3.0, 16, '2018-06-09 13:31:29', '2018-06-09 13:31:29');
INSERT INTO `productions` VALUES (156, '2018-06-06', 2.0, 18, '2018-06-09 13:32:00', '2018-06-09 13:32:00');
INSERT INTO `productions` VALUES (157, '2018-06-06', 2.0, 22, '2018-06-09 13:32:38', '2018-06-09 13:32:38');
INSERT INTO `productions` VALUES (158, '2018-06-06', 4.0, 32, '2018-06-09 13:37:16', '2018-06-09 13:37:16');
INSERT INTO `productions` VALUES (159, '2018-06-06', 3.0, 33, '2018-06-09 13:37:41', '2018-06-09 13:37:41');
INSERT INTO `productions` VALUES (160, '2018-06-06', 0.5, 34, '2018-06-09 13:38:36', '2018-06-09 13:38:36');
INSERT INTO `productions` VALUES (161, '2018-06-09', 10.0, 4, '2018-06-09 21:14:31', '2018-06-09 21:14:31');
INSERT INTO `productions` VALUES (162, '2018-06-09', 4.0, 12, '2018-06-09 21:14:51', '2018-06-09 21:14:51');
INSERT INTO `productions` VALUES (163, '2018-06-09', 1.0, 10, '2018-06-09 21:15:17', '2018-06-09 21:15:17');
INSERT INTO `productions` VALUES (164, '2018-06-09', 4.0, 13, '2018-06-09 21:15:37', '2018-06-09 21:15:37');
INSERT INTO `productions` VALUES (165, '2018-06-09', 1.0, 14, '2018-06-09 21:16:10', '2018-06-09 21:16:10');
INSERT INTO `productions` VALUES (166, '2018-06-09', 8.0, 5, '2018-06-09 21:16:26', '2018-06-09 21:16:26');
INSERT INTO `productions` VALUES (167, '2018-06-09', 3.0, 6, '2018-06-09 21:16:42', '2018-06-09 21:16:42');
INSERT INTO `productions` VALUES (168, '2018-06-09', 2.0, 7, '2018-06-09 21:17:20', '2018-06-09 21:17:20');
INSERT INTO `productions` VALUES (169, '2018-06-10', 3.0, 4, '2018-06-10 20:39:15', '2018-06-10 20:39:15');
INSERT INTO `productions` VALUES (170, '2018-06-10', 2.0, 6, '2018-06-10 20:39:33', '2018-06-10 20:39:33');
INSERT INTO `productions` VALUES (171, '2018-06-10', 6.0, 2, '2018-06-10 20:39:47', '2018-06-10 20:39:47');
INSERT INTO `productions` VALUES (172, '2018-06-10', 12.0, 3, '2018-06-10 20:40:01', '2018-06-10 20:40:01');
INSERT INTO `productions` VALUES (173, '2018-06-10', 4.0, 13, '2018-06-10 20:40:18', '2018-06-10 20:40:18');
INSERT INTO `productions` VALUES (174, '2018-06-10', 2.0, 12, '2018-06-10 20:41:15', '2018-06-10 20:41:15');
INSERT INTO `productions` VALUES (175, '2018-06-10', 1.0, 34, '2018-06-10 20:41:51', '2018-06-10 20:41:51');
INSERT INTO `productions` VALUES (176, '2018-06-10', 4.0, 20, '2018-06-10 22:50:42', '2018-06-10 22:50:42');
INSERT INTO `productions` VALUES (178, '2018-06-06', 3.0, 7, '2018-06-11 13:54:39', '2018-06-11 13:58:28');
INSERT INTO `productions` VALUES (179, '2018-06-06', 2.0, 10, '2018-06-11 14:11:10', '2018-06-11 14:11:10');
INSERT INTO `productions` VALUES (180, '2018-06-07', 7.0, 16, '2018-06-11 14:53:06', '2018-06-11 14:53:06');
INSERT INTO `productions` VALUES (181, '2018-06-07', 5.0, 18, '2018-06-11 14:54:22', '2018-06-11 14:54:22');
INSERT INTO `productions` VALUES (182, '2018-06-07', 3.0, 22, '2018-06-11 14:55:58', '2018-06-11 14:55:58');
INSERT INTO `productions` VALUES (183, '2018-06-07', 5.0, 21, '2018-06-11 14:56:21', '2018-06-14 22:58:49');
INSERT INTO `productions` VALUES (184, '2018-06-08', 8.0, 16, '2018-06-11 15:14:52', '2018-06-11 15:14:52');
INSERT INTO `productions` VALUES (185, '2018-06-08', 0.5, 17, '2018-06-11 15:17:18', '2018-06-11 15:17:18');
INSERT INTO `productions` VALUES (186, '2018-06-08', 2.0, 18, '2018-06-11 15:17:59', '2018-06-11 15:19:09');
INSERT INTO `productions` VALUES (187, '2018-06-08', 1.0, 19, '2018-06-11 15:20:06', '2018-06-11 15:20:06');
INSERT INTO `productions` VALUES (188, '2018-06-08', 1.0, 21, '2018-06-11 15:21:19', '2018-06-11 15:21:19');
INSERT INTO `productions` VALUES (189, '2018-06-08', 3.0, 22, '2018-06-11 15:22:40', '2018-06-11 15:22:40');
INSERT INTO `productions` VALUES (190, '2018-06-09', 8.0, 16, '2018-06-11 15:35:34', '2018-06-11 15:35:34');
INSERT INTO `productions` VALUES (191, '2018-06-09', 0.5, 17, '2018-06-11 15:36:00', '2018-06-11 15:36:00');
INSERT INTO `productions` VALUES (192, '2018-06-09', 6.0, 18, '2018-06-11 15:36:26', '2018-06-11 15:36:26');
INSERT INTO `productions` VALUES (193, '2018-06-09', 1.0, 19, '2018-06-11 15:36:52', '2018-06-11 15:36:52');
INSERT INTO `productions` VALUES (194, '2018-06-09', 4.0, 21, '2018-06-11 15:37:18', '2018-06-11 15:37:18');
INSERT INTO `productions` VALUES (195, '2018-06-09', 3.0, 22, '2018-06-11 15:37:42', '2018-06-11 15:37:42');
INSERT INTO `productions` VALUES (196, '2018-06-09', 6.0, 28, '2018-06-11 15:38:34', '2018-06-11 15:38:34');
INSERT INTO `productions` VALUES (197, '2018-06-10', 1.5, 16, '2018-06-11 15:52:04', '2018-06-11 15:52:04');
INSERT INTO `productions` VALUES (198, '2018-06-10', 0.5, 17, '2018-06-11 15:52:31', '2018-06-11 15:52:31');
INSERT INTO `productions` VALUES (199, '2018-06-10', 2.0, 21, '2018-06-11 15:53:05', '2018-06-11 15:53:05');
INSERT INTO `productions` VALUES (200, '2018-06-10', 2.0, 22, '2018-06-11 15:53:30', '2018-06-11 15:53:30');
INSERT INTO `productions` VALUES (201, '2018-06-10', 1.0, 18, '2018-06-11 15:54:39', '2018-06-11 15:54:39');
INSERT INTO `productions` VALUES (202, '2018-06-11', 2.0, 10, '2018-06-11 21:07:13', '2018-06-11 21:07:13');
INSERT INTO `productions` VALUES (203, '2018-06-11', 2.0, 12, '2018-06-11 21:07:46', '2018-06-11 21:07:46');
INSERT INTO `productions` VALUES (204, '2018-06-11', 4.0, 13, '2018-06-11 21:08:03', '2018-06-11 21:08:03');
INSERT INTO `productions` VALUES (205, '2018-06-11', 16.0, 1, '2018-06-11 21:08:22', '2018-06-11 21:08:22');
INSERT INTO `productions` VALUES (206, '2018-06-11', 7.0, 8, '2018-06-11 21:08:40', '2018-06-11 21:08:40');
INSERT INTO `productions` VALUES (207, '2018-06-11', 4.0, 6, '2018-06-11 21:09:01', '2018-06-11 21:09:01');
INSERT INTO `productions` VALUES (208, '2018-06-11', 4.0, 7, '2018-06-11 21:14:00', '2018-06-14 23:19:27');
INSERT INTO `productions` VALUES (209, '2018-06-11', 4.0, 4, '2018-06-11 21:14:38', '2018-06-11 21:14:38');
INSERT INTO `productions` VALUES (210, '2018-06-11', 3.0, 15, '2018-06-11 21:26:08', '2018-06-11 21:26:08');
INSERT INTO `productions` VALUES (211, '2018-06-11', 4.0, 20, '2018-06-11 21:26:35', '2018-06-11 21:26:35');
INSERT INTO `productions` VALUES (212, '2018-06-11', 2.0, 31, '2018-06-11 21:26:59', '2018-06-11 21:26:59');
INSERT INTO `productions` VALUES (213, '2018-06-11', 16.0, 28, '2018-06-11 21:27:30', '2018-06-11 21:27:30');
INSERT INTO `productions` VALUES (214, '2018-06-11', 11.0, 27, '2018-06-11 21:27:55', '2018-06-11 21:27:55');
INSERT INTO `productions` VALUES (215, '2018-06-11', 19.0, 25, '2018-06-11 21:28:19', '2018-06-14 23:23:23');
INSERT INTO `productions` VALUES (216, '2018-06-11', 6.0, 26, '2018-06-11 21:28:41', '2018-06-11 21:28:41');
INSERT INTO `productions` VALUES (217, '2018-06-11', 5.0, 24, '2018-06-11 21:29:17', '2018-06-11 21:29:17');
INSERT INTO `productions` VALUES (218, '2018-06-12', 2.0, 31, '2018-06-12 13:43:01', '2018-06-12 13:43:01');
INSERT INTO `productions` VALUES (219, '2018-06-12', 6.0, 12, '2018-06-12 20:29:43', '2018-06-14 23:29:25');
INSERT INTO `productions` VALUES (220, '2018-06-12', 4.0, 13, '2018-06-12 20:30:01', '2018-06-12 20:30:01');
INSERT INTO `productions` VALUES (221, '2018-06-12', 1.0, 14, '2018-06-12 20:31:06', '2018-06-12 20:31:06');
INSERT INTO `productions` VALUES (222, '2018-06-12', 7.0, 8, '2018-06-12 20:31:25', '2018-06-12 20:31:25');
INSERT INTO `productions` VALUES (223, '2018-06-12', 5.0, 6, '2018-06-12 20:31:52', '2018-06-12 20:31:52');
INSERT INTO `productions` VALUES (224, '2018-06-12', 2.0, 7, '2018-06-12 20:32:09', '2018-06-12 20:32:09');
INSERT INTO `productions` VALUES (225, '2018-06-12', 3.0, 33, '2018-06-12 20:33:30', '2018-06-12 20:33:30');
INSERT INTO `productions` VALUES (226, '2018-06-12', 2.0, 10, '2018-06-12 20:33:49', '2018-06-14 23:27:34');
INSERT INTO `productions` VALUES (227, '2018-06-12', 10.0, 4, '2018-06-12 20:34:11', '2018-06-12 20:34:11');
INSERT INTO `productions` VALUES (228, '2018-06-13', 10.0, 28, '2018-06-13 12:04:44', '2018-06-13 12:04:44');
INSERT INTO `productions` VALUES (229, '2018-06-13', 7.0, 25, '2018-06-13 20:23:35', '2018-06-14 23:43:06');
INSERT INTO `productions` VALUES (230, '2018-06-13', 4.0, 13, '2018-06-13 21:15:31', '2018-06-13 21:15:31');
INSERT INTO `productions` VALUES (231, '2018-06-13', 5.0, 6, '2018-06-13 21:16:08', '2018-06-13 21:16:08');
INSERT INTO `productions` VALUES (232, '2018-06-13', 4.0, 2, '2018-06-13 21:16:50', '2018-06-13 21:16:50');
INSERT INTO `productions` VALUES (233, '2018-06-13', 3.5, 4, '2018-06-13 21:17:26', '2018-06-13 21:17:26');
INSERT INTO `productions` VALUES (234, '2018-06-11', 10.5, 16, '2018-06-14 20:46:58', '2018-06-14 20:46:58');
INSERT INTO `productions` VALUES (235, '2018-06-11', 2.0, 17, '2018-06-14 20:47:38', '2018-06-14 20:47:38');
INSERT INTO `productions` VALUES (236, '2018-06-11', 5.0, 18, '2018-06-14 20:48:01', '2018-06-14 20:48:01');
INSERT INTO `productions` VALUES (237, '2018-06-11', 3.0, 19, '2018-06-14 20:50:25', '2018-06-14 23:21:04');
INSERT INTO `productions` VALUES (238, '2018-06-11', 4.0, 21, '2018-06-14 20:51:49', '2018-06-14 20:51:49');
INSERT INTO `productions` VALUES (239, '2018-06-11', 6.0, 22, '2018-06-14 20:52:16', '2018-06-14 20:52:16');
INSERT INTO `productions` VALUES (240, '2018-06-12', 6.0, 18, '2018-06-14 21:05:40', '2018-06-14 21:05:40');
INSERT INTO `productions` VALUES (241, '2018-06-12', 9.0, 24, '2018-06-14 21:08:04', '2018-06-14 21:08:04');
INSERT INTO `productions` VALUES (242, '2018-06-13', 3.0, 17, '2018-06-14 21:28:07', '2018-06-14 21:28:07');
INSERT INTO `productions` VALUES (243, '2018-06-07', 1.0, 10, '2018-06-14 22:55:50', '2018-06-14 22:55:50');
INSERT INTO `productions` VALUES (244, '2018-06-07', 11.0, 25, '2018-06-14 23:02:15', '2018-06-14 23:02:15');
INSERT INTO `productions` VALUES (245, '2018-06-08', 1.0, 14, '2018-06-14 23:03:30', '2018-06-14 23:03:30');
INSERT INTO `productions` VALUES (246, '2018-06-08', 4.0, 20, '2018-06-14 23:04:29', '2018-06-14 23:04:29');
INSERT INTO `productions` VALUES (247, '2018-06-08', 8.0, 28, '2018-06-14 23:06:10', '2018-06-14 23:06:10');
INSERT INTO `productions` VALUES (248, '2018-06-09', 1.0, 25, '2018-06-14 23:07:12', '2018-06-14 23:07:12');
INSERT INTO `productions` VALUES (249, '2018-06-10', 3.0, 30, '2018-06-14 23:08:09', '2018-06-14 23:08:09');
INSERT INTO `productions` VALUES (250, '2018-06-10', 1.0, 33, '2018-06-14 23:09:02', '2018-06-14 23:09:02');
INSERT INTO `productions` VALUES (251, '2018-06-14', 4.0, 18, '2018-06-14 23:16:36', '2018-06-14 23:16:36');
INSERT INTO `productions` VALUES (252, '2018-06-14', 1.0, 21, '2018-06-14 23:17:49', '2018-06-14 23:17:49');
INSERT INTO `productions` VALUES (253, '2018-06-14', 4.0, 22, '2018-06-14 23:19:08', '2018-06-14 23:19:08');
INSERT INTO `productions` VALUES (254, '2018-06-11', 1.0, 32, '2018-06-14 23:24:56', '2018-06-14 23:24:56');
INSERT INTO `productions` VALUES (255, '2018-06-12', 1.0, 9, '2018-06-14 23:25:53', '2018-06-14 23:25:53');
INSERT INTO `productions` VALUES (256, '2018-06-13', 1.0, 23, '2018-06-14 23:42:05', '2018-06-14 23:42:05');
INSERT INTO `productions` VALUES (257, '2018-06-13', 3.0, 30, '2018-06-14 23:44:03', '2018-06-14 23:44:03');
INSERT INTO `productions` VALUES (258, '2018-06-13', 1.0, 31, '2018-06-14 23:45:07', '2018-06-14 23:45:07');
INSERT INTO `productions` VALUES (259, '2018-06-14', 1.0, 7, '2018-06-14 23:49:12', '2018-06-14 23:49:12');
INSERT INTO `productions` VALUES (261, '2018-06-14', 1.0, 14, '2018-06-14 23:52:29', '2018-06-14 23:52:29');
INSERT INTO `productions` VALUES (262, '2018-06-14', 1.0, 15, '2018-06-14 23:54:31', '2018-06-14 23:54:31');
INSERT INTO `productions` VALUES (263, '2018-06-14', 13.0, 16, '2018-06-14 23:55:43', '2018-06-14 23:55:43');
INSERT INTO `productions` VALUES (264, '2018-06-14', 1.0, 19, '2018-06-14 23:56:42', '2018-06-14 23:56:42');
INSERT INTO `productions` VALUES (265, '2018-06-14', 1.0, 29, '2018-06-14 23:57:28', '2018-06-14 23:57:28');
INSERT INTO `productions` VALUES (266, '2018-06-14', 1.5, 31, '2018-06-14 23:58:36', '2018-06-14 23:58:36');
INSERT INTO `productions` VALUES (267, '2018-06-14', 1.0, 32, '2018-06-15 00:02:20', '2018-06-15 00:03:05');
INSERT INTO `productions` VALUES (268, '2018-06-15', 4.0, 13, '2018-06-15 21:15:34', '2018-06-15 21:15:34');
INSERT INTO `productions` VALUES (269, '2018-06-15', 2.0, 12, '2018-06-15 21:16:03', '2018-06-15 21:16:03');
INSERT INTO `productions` VALUES (270, '2018-06-15', 2.0, 10, '2018-06-15 21:16:29', '2018-06-15 21:16:29');
INSERT INTO `productions` VALUES (271, '2018-06-15', 16.0, 1, '2018-06-15 21:16:53', '2018-06-15 21:16:53');
INSERT INTO `productions` VALUES (272, '2018-06-15', 3.0, 6, '2018-06-15 21:17:11', '2018-06-15 21:17:11');
INSERT INTO `productions` VALUES (273, '2018-06-15', 2.0, 7, '2018-06-15 21:17:32', '2018-06-15 21:17:32');
INSERT INTO `productions` VALUES (274, '2018-06-15', 2.0, 4, '2018-06-15 21:17:56', '2018-06-15 21:17:56');
INSERT INTO `productions` VALUES (275, '2018-06-15', 7.0, 5, '2018-06-15 21:18:27', '2018-06-15 21:18:27');
INSERT INTO `productions` VALUES (276, '2018-06-15', 13.0, 3, '2018-06-15 21:19:16', '2018-06-15 21:19:16');
INSERT INTO `productions` VALUES (277, '2018-06-16', 4.0, 16, '2018-06-15 23:56:04', '2018-06-15 23:56:04');
INSERT INTO `productions` VALUES (278, '2018-06-16', 3.0, 18, '2018-06-15 23:56:20', '2018-06-15 23:56:20');
INSERT INTO `productions` VALUES (279, '2018-06-16', 2.0, 21, '2018-06-15 23:57:37', '2018-06-15 23:57:37');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Strogonoff', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-31 03:15:59');
INSERT INTO `products` VALUES (2, 'Coração', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (3, 'Frango', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (4, 'Molho de Tomate', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (5, 'Molho Quatro Queijos', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (6, 'Filé Frito', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (7, 'Filé Molho de Cunhaque', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (8, 'Gaúcha', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (9, 'Carpaccio', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (10, 'Alho e Óleo', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (11, 'Carne Seca', 1, 1, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (12, 'Tomate Fatiado', 1, 2, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (13, 'Cebola Fatiada', 1, 2, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (14, 'Pimentão Fatiado', 1, 2, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (15, 'Cereja', 1, 2, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (16, 'Calabresa', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (17, 'Pepperone', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (18, 'Parmesão', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (19, 'Palmito', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (20, 'Azeitonas', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (21, 'Atum', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (22, 'Milho', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (23, 'Champignon', 1, 3, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (24, 'Bacon', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (25, 'Presunto', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (26, 'Lombo', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (27, 'Bahianinha', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (28, 'Provolone', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (29, 'Bolonha', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (30, 'Chester', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (31, 'Califórnia', 1, 4, 2, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `products` VALUES (32, 'Xixo gaúcho', 1, 1, 2, '2018-06-09 13:34:27', '2018-06-09 13:35:12');
INSERT INTO `products` VALUES (33, 'Picanha', 1, 1, 2, '2018-06-09 13:35:41', '2018-06-09 13:35:41');
INSERT INTO `products` VALUES (34, 'Cebola caramelizada', 1, 1, 2, '2018-06-09 13:38:17', '2018-06-09 13:38:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `units_measures` VALUES (1, 'Quilograma', 'Kl', '2018-05-21 17:51:53', '2018-05-27 23:16:51');
INSERT INTO `units_measures` VALUES (2, 'Balde', 'Bl', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `units_measures` VALUES (3, 'Unidade', 'Un', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Henrique', 'Watthier', 'Henrique Watthier', 'henrique', '$2y$10$LF5bronOBlkfHToZWTWnv.a8wUfkXUoNgwa6OflkjQqddp.Z6fmLa', 1, 'mXYI7e6ZiGYS5WSZcShFz9o0LGXf3P4hsSQ39qdKgJAd15vwoQoFXrK4uOJA', '2018-05-21 17:51:53', '2018-05-23 21:20:57');
INSERT INTO `users` VALUES (2, 'Marcelo', 'Corrêa', 'Marcelo Corrêa', 'marcelocorrea229@gmail.com', '$2y$10$FbVWXwZm.9vJguhZKQ7H.uA1aA5oHHm7lau/cf0GBlgfXHrCQwnce', 1, 'GWB42KydKpjuIIwmuGyUjwXzKzxsXckEifzm7JTdYEN6yUS0SCuQlKXidpnO', '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `users` VALUES (3, 'Margarete', 'de Souza Chaves', 'Margarete de Souza Chaves', 'margarete', '$2y$10$Y/dWdEgqsBnGBbMmhH4aQOw0t9H9CShXccKVXgLR05nRr5xsYD9hW', 1, 'yIqwr5H41buYLWsnkl5F8aMwa3kvON9mz3altu7OWzLOKz4Y5zExkxsM2l4S', '2018-05-21 18:29:25', '2018-05-21 18:29:25');
INSERT INTO `users` VALUES (4, 'Fabricio', 'Escobar Buss', 'Fabricio Escobar Buss', 'fabricio', '$2y$10$epKXPgZ11l6vmmnYfls4xux7rwOC4CmGfnhBLR/fXxyWmaz3SrgfC', 1, 'fsuBmqdIRFAcyHciPyteKEuNw4KoXle8UsFV454lKyH0RODN1afH6PMPbEnq', '2018-05-21 18:37:21', '2018-05-23 21:22:09');
INSERT INTO `users` VALUES (5, 'Luiz', 'Dirceu Vieira dos Santos Jr', 'Luiz Dirceu Vieira dos Santos Jr', 'luiz', '$2y$10$3bw.BHAAvT8evwUOAnNm7OhG.O4iwHWOZ41.HsrOzrYqT0aQ2uJLS', 1, 'rvEKdw6gFSDAz04xdO4a9hKIs48MFQ5u2jHQDzx5XVeP6tTP8OXhmYxvKgWl', '2018-05-21 18:38:20', '2018-05-21 18:38:20');
INSERT INTO `users` VALUES (6, 'Tiago', 'Moreira', 'Tiago Moreira', 'andersontiago.radiologia@gmail.com', '$2y$10$5CEcRCzVUponiP/pP5G19eJ31YuYWgw1zPlMEV26lGGmI2kbtECc6', 1, 'MEYjHfdHP3inkeowFmjiSjv5QCDyGDoGOqAb26MP578yAv6pYyvP0OsAXNDD', '2018-06-14 22:30:45', '2018-06-14 22:30:45');
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
INSERT INTO `warehouses` VALUES (1, 'Câmara Fria', 1, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
INSERT INTO `warehouses` VALUES (2, 'Geladeira Produção', 1, '2018-05-21 17:51:53', '2018-05-21 17:51:53');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
