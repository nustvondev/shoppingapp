-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 04:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-01-08 17:33:52.301000', '2023-01-08 17:33:52.301000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-01-08 17:33:52.446000', '2023-01-08 17:33:52.446000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-01-08 17:33:52.491000', '2023-01-08 17:33:52.491000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-01-08 17:33:52.503000', '2023-01-08 17:33:52.503000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-01-08 17:33:52.515000', '2023-01-08 17:33:52.515000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-01-08 17:33:52.528000', '2023-01-08 17:33:52.528000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-01-08 17:33:52.544000', '2023-01-08 17:33:52.544000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-01-08 17:33:52.559000', '2023-01-08 17:33:52.559000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-01-08 17:33:52.575000', '2023-01-08 17:33:52.575000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-01-08 17:33:52.588000', '2023-01-08 17:33:52.588000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-01-08 17:33:52.601000', '2023-01-08 17:33:52.601000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-01-08 17:33:52.625000', '2023-01-08 17:33:52.625000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-01-08 17:33:52.676000', '2023-01-08 17:33:52.676000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-01-08 17:33:52.687000', '2023-01-08 17:33:52.687000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-01-08 17:33:52.699000', '2023-01-08 17:33:52.699000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-01-08 17:33:52.711000', '2023-01-08 17:33:52.711000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-01-08 17:33:52.723000', '2023-01-08 17:33:52.723000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-01-08 17:33:52.735000', '2023-01-08 17:33:52.735000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-01-08 17:33:52.749000', '2023-01-08 17:33:52.749000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-01-08 17:33:52.762000', '2023-01-08 17:33:52.762000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-01-08 17:33:52.774000', '2023-01-08 17:33:52.774000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-01-08 17:33:52.794000', '2023-01-08 17:33:52.794000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-01-08 17:33:52.813000', '2023-01-08 17:33:52.813000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-01-08 17:33:52.848000', '2023-01-08 17:33:52.848000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-01-08 17:33:52.867000', '2023-01-08 17:33:52.867000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-01-08 17:33:52.886000', '2023-01-08 17:33:52.886000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-01-08 17:33:52.907000', '2023-01-08 17:33:52.907000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-01-08 17:33:52.927000', '2023-01-08 17:33:52.927000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-01-08 17:33:52.939000', '2023-01-08 17:33:52.939000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-01-08 17:33:52.954000', '2023-01-08 17:33:52.954000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-01-08 17:33:52.965000', '2023-01-08 17:33:52.965000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-01-08 17:33:52.976000', '2023-01-08 17:33:52.976000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-01-08 17:33:52.985000', '2023-01-08 17:33:52.985000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-01-08 17:33:52.996000', '2023-01-08 17:33:52.996000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-01-08 17:33:53.007000', '2023-01-08 17:33:53.007000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-01-08 17:33:53.016000', '2023-01-08 17:33:53.016000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-01-08 17:33:53.027000', '2023-01-08 17:33:53.027000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-01-08 17:33:53.036000', '2023-01-08 17:33:53.036000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-01-08 17:33:53.047000', '2023-01-08 17:33:53.047000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-01-08 17:33:53.057000', '2023-01-08 17:33:53.057000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-01-08 17:33:53.064000', '2023-01-08 17:33:53.064000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-01-08 17:33:53.074000', '2023-01-08 17:33:53.074000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-01-08 17:33:53.081000', '2023-01-08 17:33:53.081000', NULL, NULL),
(44, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2023-01-08 17:33:53.091000', '2023-01-08 17:33:53.091000', NULL, NULL),
(45, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2023-01-08 17:33:53.100000', '2023-01-08 17:33:53.100000', NULL, NULL),
(46, 'admin::webhooks.create', NULL, '{}', '[]', '2023-01-08 17:33:53.111000', '2023-01-08 17:33:53.111000', NULL, NULL),
(47, 'admin::webhooks.read', NULL, '{}', '[]', '2023-01-08 17:33:53.122000', '2023-01-08 17:33:53.122000', NULL, NULL),
(48, 'admin::webhooks.update', NULL, '{}', '[]', '2023-01-08 17:33:53.131000', '2023-01-08 17:33:53.131000', NULL, NULL),
(49, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-01-08 17:33:53.140000', '2023-01-08 17:33:53.140000', NULL, NULL),
(50, 'admin::users.create', NULL, '{}', '[]', '2023-01-08 17:33:53.149000', '2023-01-08 17:33:53.149000', NULL, NULL),
(51, 'admin::users.read', NULL, '{}', '[]', '2023-01-08 17:33:53.157000', '2023-01-08 17:33:53.157000', NULL, NULL),
(52, 'admin::users.update', NULL, '{}', '[]', '2023-01-08 17:33:53.165000', '2023-01-08 17:33:53.165000', NULL, NULL),
(53, 'admin::users.delete', NULL, '{}', '[]', '2023-01-08 17:33:53.175000', '2023-01-08 17:33:53.175000', NULL, NULL),
(54, 'admin::roles.create', NULL, '{}', '[]', '2023-01-08 17:33:53.185000', '2023-01-08 17:33:53.185000', NULL, NULL),
(55, 'admin::roles.read', NULL, '{}', '[]', '2023-01-08 17:33:53.195000', '2023-01-08 17:33:53.195000', NULL, NULL),
(56, 'admin::roles.update', NULL, '{}', '[]', '2023-01-08 17:33:53.208000', '2023-01-08 17:33:53.208000', NULL, NULL),
(57, 'admin::roles.delete', NULL, '{}', '[]', '2023-01-08 17:33:53.218000', '2023-01-08 17:33:53.218000', NULL, NULL),
(58, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-01-08 17:33:53.230000', '2023-01-08 17:33:53.230000', NULL, NULL),
(59, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-01-08 17:33:53.241000', '2023-01-08 17:33:53.241000', NULL, NULL),
(60, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-01-08 17:33:53.249000', '2023-01-08 17:33:53.249000', NULL, NULL),
(61, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-01-08 17:33:53.366000', '2023-01-08 17:33:53.366000', NULL, NULL),
(62, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-01-08 17:33:53.383000', '2023-01-08 17:33:53.383000', NULL, NULL),
(63, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-01-08 17:33:53.394000', '2023-01-08 17:33:53.394000', NULL, NULL),
(64, 'admin::project-settings.update', NULL, '{}', '[]', '2023-01-08 17:33:53.408000', '2023-01-08 17:33:53.408000', NULL, NULL),
(65, 'admin::project-settings.read', NULL, '{}', '[]', '2023-01-08 17:33:53.418000', '2023-01-08 17:33:53.418000', NULL, NULL),
(69, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2023-01-08 18:16:09.868000', '2023-01-08 18:16:09.868000', NULL, NULL),
(70, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2023-01-08 18:16:09.884000', '2023-01-08 18:16:09.884000', NULL, NULL),
(74, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2023-01-08 18:17:47.789000', '2023-01-08 18:17:47.789000', NULL, NULL),
(75, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2023-01-08 18:17:47.798000', '2023-01-08 18:17:47.798000', NULL, NULL),
(79, 'plugin::content-manager.explorer.delete', 'api::sub-category.sub-category', '{}', '[]', '2023-01-08 18:18:47.569000', '2023-01-08 18:18:47.569000', NULL, NULL),
(80, 'plugin::content-manager.explorer.publish', 'api::sub-category.sub-category', '{}', '[]', '2023-01-08 18:18:47.655000', '2023-01-08 18:18:47.655000', NULL, NULL),
(90, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\":[\"title\",\"desc\",\"img\",\"products\",\"sub_categories\"]}', '[]', '2023-01-08 19:25:01.740000', '2023-01-08 19:25:01.740000', NULL, NULL),
(91, 'plugin::content-manager.explorer.create', 'api::sub-category.sub-category', '{\"fields\":[\"title\",\"products\",\"categories\"]}', '[]', '2023-01-08 19:25:01.754000', '2023-01-08 19:25:01.754000', NULL, NULL),
(92, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\":[\"title\",\"desc\",\"img\",\"products\",\"sub_categories\"]}', '[]', '2023-01-08 19:25:01.764000', '2023-01-08 19:25:01.764000', NULL, NULL),
(93, 'plugin::content-manager.explorer.read', 'api::sub-category.sub-category', '{\"fields\":[\"title\",\"products\",\"categories\"]}', '[]', '2023-01-08 19:25:01.777000', '2023-01-08 19:25:01.777000', NULL, NULL),
(94, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\":[\"title\",\"desc\",\"img\",\"products\",\"sub_categories\"]}', '[]', '2023-01-08 19:25:01.788000', '2023-01-08 19:25:01.788000', NULL, NULL),
(95, 'plugin::content-manager.explorer.update', 'api::sub-category.sub-category', '{\"fields\":[\"title\",\"products\",\"categories\"]}', '[]', '2023-01-08 19:25:01.797000', '2023-01-08 19:25:01.797000', NULL, NULL),
(96, 'plugin::content-manager.explorer.create', 'api::product.product', '{\"fields\":[\"title\",\"desc\",\"img\",\"img2\",\"price\",\"isNew\",\"categories\",\"sub_categories\",\"type\"]}', '[]', '2023-01-08 20:40:38.178000', '2023-01-08 20:40:38.178000', NULL, NULL),
(97, 'plugin::content-manager.explorer.read', 'api::product.product', '{\"fields\":[\"title\",\"desc\",\"img\",\"img2\",\"price\",\"isNew\",\"categories\",\"sub_categories\",\"type\"]}', '[]', '2023-01-08 20:40:38.189000', '2023-01-08 20:40:38.189000', NULL, NULL),
(98, 'plugin::content-manager.explorer.update', 'api::product.product', '{\"fields\":[\"title\",\"desc\",\"img\",\"img2\",\"price\",\"isNew\",\"categories\",\"sub_categories\",\"type\"]}', '[]', '2023-01-08 20:40:38.198000', '2023-01-08 20:40:38.198000', NULL, NULL),
(99, 'plugin::content-manager.explorer.create', 'api::order.order', '{\"fields\":[\"email\",\"stripeId\",\"products\"]}', '[]', '2023-01-17 00:26:38.405000', '2023-01-17 00:26:38.405000', NULL, NULL),
(100, 'plugin::content-manager.explorer.read', 'api::order.order', '{\"fields\":[\"email\",\"stripeId\",\"products\"]}', '[]', '2023-01-17 00:26:38.487000', '2023-01-17 00:26:38.487000', NULL, NULL),
(101, 'plugin::content-manager.explorer.update', 'api::order.order', '{\"fields\":[\"email\",\"stripeId\",\"products\"]}', '[]', '2023-01-17 00:26:38.513000', '2023-01-17 00:26:38.513000', NULL, NULL),
(102, 'plugin::content-manager.explorer.delete', 'api::order.order', '{}', '[]', '2023-01-17 00:26:38.526000', '2023-01-17 00:26:38.526000', NULL, NULL),
(103, 'plugin::content-manager.explorer.publish', 'api::order.order', '{}', '[]', '2023-01-17 00:26:38.536000', '2023-01-17 00:26:38.536000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(69, 69, 1, 57),
(70, 70, 1, 58),
(74, 74, 1, 62),
(75, 75, 1, 63),
(79, 79, 1, 67),
(80, 80, 1, 68),
(90, 90, 1, 77),
(91, 91, 1, 78),
(92, 92, 1, 79),
(93, 93, 1, 80),
(94, 94, 1, 81),
(95, 95, 1, 82),
(96, 96, 1, 83),
(97, 97, 1, 84),
(98, 98, 1, 85),
(99, 99, 1, 86),
(100, 100, 1, 87),
(101, 101, 1, 88),
(102, 102, 1, 89),
(103, 103, 1, 90);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-01-08 17:33:52.215000', '2023-01-08 17:33:52.215000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-01-08 17:33:52.251000', '2023-01-08 17:33:52.251000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-01-08 17:33:52.268000', '2023-01-08 17:33:52.268000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Nguyen Huu', 'Hoa', NULL, 'hoahuunguyen.dev@gmail.com', '$2a$10$b35M7CPM2sMYdndU3CynCu3zX2cNsoR3iJup9EOuv76OYnrl5gtd.', NULL, NULL, 1, 0, NULL, '2023-01-08 17:41:22.306000', '2023-01-08 17:41:22.306000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` int(10) UNSIGNED DEFAULT NULL,
  `user_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `desc`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'nam', 'thời trang nam', '2023-01-08 19:59:28.652000', '2023-01-08 20:06:01.838000', '2023-01-08 19:59:30.205000', 1, 1),
(2, 'nữ', 'thời trang nữ', '2023-01-08 20:05:44.097000', '2023-01-08 20:05:45.256000', '2023-01-08 20:05:45.251000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'a5dcaaacd9fc8262e1199e305ce4ef5d.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_a5dcaaacd9fc8262e1199e305ce4ef5d.jfif\",\"hash\":\"thumbnail_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":5.39,\"url\":\"/uploads/thumbnail_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5.jfif\"},\"small\":{\"name\":\"small_a5dcaaacd9fc8262e1199e305ce4ef5d.jfif\",\"hash\":\"small_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":27.92,\"url\":\"/uploads/small_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5.jfif\"},\"large\":{\"name\":\"large_a5dcaaacd9fc8262e1199e305ce4ef5d.jfif\",\"hash\":\"large_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":75.34,\"url\":\"/uploads/large_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5.jfif\"},\"medium\":{\"name\":\"medium_a5dcaaacd9fc8262e1199e305ce4ef5d.jfif\",\"hash\":\"medium_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":49.07,\"url\":\"/uploads/medium_a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5.jfif\"}}', 'a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5', '.jfif', 'image/jpeg', '77.33', '/uploads/a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5.jfif', NULL, 'local', NULL, '/', '2023-01-08 19:57:08.067000', '2023-01-08 19:57:08.067000', 1, 1),
(2, '91872edf5ea6e831ad5ca66b9be76b8f.jfif', NULL, NULL, 930, 930, '{\"thumbnail\":{\"name\":\"thumbnail_91872edf5ea6e831ad5ca66b9be76b8f.jfif\",\"hash\":\"thumbnail_91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.68,\"url\":\"/uploads/thumbnail_91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837.jfif\"},\"medium\":{\"name\":\"medium_91872edf5ea6e831ad5ca66b9be76b8f.jfif\",\"hash\":\"medium_91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":25.97,\"url\":\"/uploads/medium_91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837.jfif\"},\"small\":{\"name\":\"small_91872edf5ea6e831ad5ca66b9be76b8f.jfif\",\"hash\":\"small_91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":12.6,\"url\":\"/uploads/small_91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837.jfif\"}}', '91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837', '.jfif', 'image/jpeg', '38.11', '/uploads/91872edf5ea6e831ad5ca66b9be76b8f_8d6e236837.jfif', NULL, 'local', NULL, '/', '2023-01-08 19:57:30.981000', '2023-01-08 19:57:30.981000', 1, 1),
(3, '7e67c1a5aca4963f87d9c788fd3d6e0b.jfif', NULL, NULL, 800, 800, '{\"thumbnail\":{\"name\":\"thumbnail_7e67c1a5aca4963f87d9c788fd3d6e0b.jfif\",\"hash\":\"thumbnail_7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.51,\"url\":\"/uploads/thumbnail_7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b.jfif\"},\"medium\":{\"name\":\"medium_7e67c1a5aca4963f87d9c788fd3d6e0b.jfif\",\"hash\":\"medium_7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":69.86,\"url\":\"/uploads/medium_7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b.jfif\"},\"small\":{\"name\":\"small_7e67c1a5aca4963f87d9c788fd3d6e0b.jfif\",\"hash\":\"small_7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":29.74,\"url\":\"/uploads/small_7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b.jfif\"}}', '7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b', '.jfif', 'image/jpeg', '80.94', '/uploads/7e67c1a5aca4963f87d9c788fd3d6e0b_aa2a3d4d0b.jfif', NULL, 'local', NULL, '/', '2023-01-08 20:05:35.590000', '2023-01-08 20:14:22.762000', 1, 1),
(4, 'eda23d81f901b97f0c1fe2178ab7be7d.jfif', NULL, NULL, 800, 800, '{\"thumbnail\":{\"name\":\"thumbnail_eda23d81f901b97f0c1fe2178ab7be7d.jfif\",\"hash\":\"thumbnail_eda23d81f901b97f0c1fe2178ab7be7d_4038081643\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.31,\"url\":\"/uploads/thumbnail_eda23d81f901b97f0c1fe2178ab7be7d_4038081643.jfif\"},\"small\":{\"name\":\"small_eda23d81f901b97f0c1fe2178ab7be7d.jfif\",\"hash\":\"small_eda23d81f901b97f0c1fe2178ab7be7d_4038081643\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":36,\"url\":\"/uploads/small_eda23d81f901b97f0c1fe2178ab7be7d_4038081643.jfif\"},\"medium\":{\"name\":\"medium_eda23d81f901b97f0c1fe2178ab7be7d.jfif\",\"hash\":\"medium_eda23d81f901b97f0c1fe2178ab7be7d_4038081643\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":77.44,\"url\":\"/uploads/medium_eda23d81f901b97f0c1fe2178ab7be7d_4038081643.jfif\"}}', 'eda23d81f901b97f0c1fe2178ab7be7d_4038081643', '.jfif', 'image/jpeg', '88.82', '/uploads/eda23d81f901b97f0c1fe2178ab7be7d_4038081643.jfif', NULL, 'local', NULL, '/', '2023-01-08 20:05:35.599000', '2023-01-08 20:05:35.599000', 1, 1),
(5, '0d2beb107fe892931ace18ac6f1bd1ee.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_0d2beb107fe892931ace18ac6f1bd1ee.jfif\",\"hash\":\"thumbnail_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":1.72,\"url\":\"/uploads/thumbnail_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed.jfif\"},\"large\":{\"name\":\"large_0d2beb107fe892931ace18ac6f1bd1ee.jfif\",\"hash\":\"large_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":37.3,\"url\":\"/uploads/large_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed.jfif\"},\"medium\":{\"name\":\"medium_0d2beb107fe892931ace18ac6f1bd1ee.jfif\",\"hash\":\"medium_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":19.79,\"url\":\"/uploads/medium_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed.jfif\"},\"small\":{\"name\":\"small_0d2beb107fe892931ace18ac6f1bd1ee.jfif\",\"hash\":\"small_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":9.19,\"url\":\"/uploads/small_0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed.jfif\"}}', '0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed', '.jfif', 'image/jpeg', '40.13', '/uploads/0d2beb107fe892931ace18ac6f1bd1ee_e6e23358ed.jfif', NULL, 'local', NULL, '/', '2023-01-08 20:16:34.300000', '2023-01-08 20:16:34.300000', 1, 1),
(6, 'c3c99871ec33e7fd18baa67fe446e893.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_c3c99871ec33e7fd18baa67fe446e893.jfif\",\"hash\":\"thumbnail_c3c99871ec33e7fd18baa67fe446e893_47756206f6\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":6.59,\"url\":\"/uploads/thumbnail_c3c99871ec33e7fd18baa67fe446e893_47756206f6.jfif\"},\"small\":{\"name\":\"small_c3c99871ec33e7fd18baa67fe446e893.jfif\",\"hash\":\"small_c3c99871ec33e7fd18baa67fe446e893_47756206f6\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":59.91,\"url\":\"/uploads/small_c3c99871ec33e7fd18baa67fe446e893_47756206f6.jfif\"},\"medium\":{\"name\":\"medium_c3c99871ec33e7fd18baa67fe446e893.jfif\",\"hash\":\"medium_c3c99871ec33e7fd18baa67fe446e893_47756206f6\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":130.87,\"url\":\"/uploads/medium_c3c99871ec33e7fd18baa67fe446e893_47756206f6.jfif\"},\"large\":{\"name\":\"large_c3c99871ec33e7fd18baa67fe446e893.jfif\",\"hash\":\"large_c3c99871ec33e7fd18baa67fe446e893_47756206f6\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":221.69,\"url\":\"/uploads/large_c3c99871ec33e7fd18baa67fe446e893_47756206f6.jfif\"}}', 'c3c99871ec33e7fd18baa67fe446e893_47756206f6', '.jfif', 'image/jpeg', '231.37', '/uploads/c3c99871ec33e7fd18baa67fe446e893_47756206f6.jfif', NULL, 'local', NULL, '/', '2023-01-08 20:16:34.464000', '2023-01-08 20:16:34.464000', 1, 1),
(7, '52958ea13586a4c3348b790443ff7d1c.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_52958ea13586a4c3348b790443ff7d1c.jfif\",\"hash\":\"thumbnail_52958ea13586a4c3348b790443ff7d1c_92e140572d\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.58,\"url\":\"/uploads/thumbnail_52958ea13586a4c3348b790443ff7d1c_92e140572d.jfif\"},\"large\":{\"name\":\"large_52958ea13586a4c3348b790443ff7d1c.jfif\",\"hash\":\"large_52958ea13586a4c3348b790443ff7d1c_92e140572d\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":89.15,\"url\":\"/uploads/large_52958ea13586a4c3348b790443ff7d1c_92e140572d.jfif\"},\"small\":{\"name\":\"small_52958ea13586a4c3348b790443ff7d1c.jfif\",\"hash\":\"small_52958ea13586a4c3348b790443ff7d1c_92e140572d\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":27.29,\"url\":\"/uploads/small_52958ea13586a4c3348b790443ff7d1c_92e140572d.jfif\"},\"medium\":{\"name\":\"medium_52958ea13586a4c3348b790443ff7d1c.jfif\",\"hash\":\"medium_52958ea13586a4c3348b790443ff7d1c_92e140572d\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":54.67,\"url\":\"/uploads/medium_52958ea13586a4c3348b790443ff7d1c_92e140572d.jfif\"}}', '52958ea13586a4c3348b790443ff7d1c_92e140572d', '.jfif', 'image/jpeg', '93.70', '/uploads/52958ea13586a4c3348b790443ff7d1c_92e140572d.jfif', NULL, 'local', NULL, '/', '2023-01-10 16:19:26.278000', '2023-01-10 16:19:26.278000', 1, 1),
(8, '583fa3ab9dd036ee4c72654b127a45dd.jfif', NULL, NULL, 960, 960, '{\"thumbnail\":{\"name\":\"thumbnail_583fa3ab9dd036ee4c72654b127a45dd.jfif\",\"hash\":\"thumbnail_583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.68,\"url\":\"/uploads/thumbnail_583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9.jfif\"},\"medium\":{\"name\":\"medium_583fa3ab9dd036ee4c72654b127a45dd.jfif\",\"hash\":\"medium_583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":61.55,\"url\":\"/uploads/medium_583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9.jfif\"},\"small\":{\"name\":\"small_583fa3ab9dd036ee4c72654b127a45dd.jfif\",\"hash\":\"small_583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":25.07,\"url\":\"/uploads/small_583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9.jfif\"}}', '583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9', '.jfif', 'image/jpeg', '105.19', '/uploads/583fa3ab9dd036ee4c72654b127a45dd_09f91b55d9.jfif', NULL, 'local', NULL, '/', '2023-01-10 16:19:26.294000', '2023-01-10 16:19:34.550000', 1, 1),
(9, '4ba8782b642419e2d03f38e6533d350c.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_4ba8782b642419e2d03f38e6533d350c.jfif\",\"hash\":\"thumbnail_4ba8782b642419e2d03f38e6533d350c_2fc11751f7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.81,\"url\":\"/uploads/thumbnail_4ba8782b642419e2d03f38e6533d350c_2fc11751f7.jfif\"},\"small\":{\"name\":\"small_4ba8782b642419e2d03f38e6533d350c.jfif\",\"hash\":\"small_4ba8782b642419e2d03f38e6533d350c_2fc11751f7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":34.8,\"url\":\"/uploads/small_4ba8782b642419e2d03f38e6533d350c_2fc11751f7.jfif\"},\"large\":{\"name\":\"large_4ba8782b642419e2d03f38e6533d350c.jfif\",\"hash\":\"large_4ba8782b642419e2d03f38e6533d350c_2fc11751f7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":120.09,\"url\":\"/uploads/large_4ba8782b642419e2d03f38e6533d350c_2fc11751f7.jfif\"},\"medium\":{\"name\":\"medium_4ba8782b642419e2d03f38e6533d350c.jfif\",\"hash\":\"medium_4ba8782b642419e2d03f38e6533d350c_2fc11751f7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":72.37,\"url\":\"/uploads/medium_4ba8782b642419e2d03f38e6533d350c_2fc11751f7.jfif\"}}', '4ba8782b642419e2d03f38e6533d350c_2fc11751f7', '.jfif', 'image/jpeg', '127.15', '/uploads/4ba8782b642419e2d03f38e6533d350c_2fc11751f7.jfif', NULL, 'local', NULL, '/', '2023-01-10 16:31:07.036000', '2023-01-10 16:31:07.036000', 1, 1),
(10, 'f1f1f1b8f6fefa9a9a01022ac77484af.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_f1f1f1b8f6fefa9a9a01022ac77484af.jfif\",\"hash\":\"thumbnail_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.75,\"url\":\"/uploads/thumbnail_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7.jfif\"},\"large\":{\"name\":\"large_f1f1f1b8f6fefa9a9a01022ac77484af.jfif\",\"hash\":\"large_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":127.42,\"url\":\"/uploads/large_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7.jfif\"},\"medium\":{\"name\":\"medium_f1f1f1b8f6fefa9a9a01022ac77484af.jfif\",\"hash\":\"medium_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":75.34,\"url\":\"/uploads/medium_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7.jfif\"},\"small\":{\"name\":\"small_f1f1f1b8f6fefa9a9a01022ac77484af.jfif\",\"hash\":\"small_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":35.21,\"url\":\"/uploads/small_f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7.jfif\"}}', 'f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7', '.jfif', 'image/jpeg', '135.65', '/uploads/f1f1f1b8f6fefa9a9a01022ac77484af_7166aefdd7.jfif', NULL, 'local', NULL, '/', '2023-01-10 16:31:07.068000', '2023-01-10 16:31:07.068000', 1, 1),
(11, 'sg-11134201-22110-wfe3g6cv73jv96.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_sg-11134201-22110-wfe3g6cv73jv96.jfif\",\"hash\":\"thumbnail_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.16,\"url\":\"/uploads/thumbnail_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0.jfif\"},\"large\":{\"name\":\"large_sg-11134201-22110-wfe3g6cv73jv96.jfif\",\"hash\":\"large_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":30.13,\"url\":\"/uploads/large_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0.jfif\"},\"medium\":{\"name\":\"medium_sg-11134201-22110-wfe3g6cv73jv96.jfif\",\"hash\":\"medium_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":18.81,\"url\":\"/uploads/medium_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0.jfif\"},\"small\":{\"name\":\"small_sg-11134201-22110-wfe3g6cv73jv96.jfif\",\"hash\":\"small_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":10.11,\"url\":\"/uploads/small_sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0.jfif\"}}', 'sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0', '.jfif', 'image/jpeg', '31.81', '/uploads/sg_11134201_22110_wfe3g6cv73jv96_93c7d012e0.jfif', NULL, 'local', NULL, '/', '2023-01-10 16:34:45.342000', '2023-01-10 16:34:45.342000', 1, 1),
(12, 'sg-11134201-22110-r4omaynq73jv7a.jfif', NULL, NULL, 1024, 1024, '{\"thumbnail\":{\"name\":\"thumbnail_sg-11134201-22110-r4omaynq73jv7a.jfif\",\"hash\":\"thumbnail_sg_11134201_22110_r4omaynq73jv7a_816f0d168b\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.39,\"url\":\"/uploads/thumbnail_sg_11134201_22110_r4omaynq73jv7a_816f0d168b.jfif\"},\"medium\":{\"name\":\"medium_sg-11134201-22110-r4omaynq73jv7a.jfif\",\"hash\":\"medium_sg_11134201_22110_r4omaynq73jv7a_816f0d168b\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":39.48,\"url\":\"/uploads/medium_sg_11134201_22110_r4omaynq73jv7a_816f0d168b.jfif\"},\"large\":{\"name\":\"large_sg-11134201-22110-r4omaynq73jv7a.jfif\",\"hash\":\"large_sg_11134201_22110_r4omaynq73jv7a_816f0d168b\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":66.79,\"url\":\"/uploads/large_sg_11134201_22110_r4omaynq73jv7a_816f0d168b.jfif\"},\"small\":{\"name\":\"small_sg-11134201-22110-r4omaynq73jv7a.jfif\",\"hash\":\"small_sg_11134201_22110_r4omaynq73jv7a_816f0d168b\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":20.48,\"url\":\"/uploads/small_sg_11134201_22110_r4omaynq73jv7a_816f0d168b.jfif\"}}', 'sg_11134201_22110_r4omaynq73jv7a_816f0d168b', '.jfif', 'image/jpeg', '70.73', '/uploads/sg_11134201_22110_r4omaynq73jv7a_816f0d168b.jfif', NULL, 'local', NULL, '/', '2023-01-10 16:34:45.359000', '2023-01-10 16:34:45.359000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(4, 4, 2, 'api::category.category', 'img', 1),
(5, 1, 1, 'api::category.category', 'img', 1),
(22, 1, 1, 'api::product.product', 'img', 1),
(23, 2, 1, 'api::product.product', 'img2', 1),
(24, 5, 3, 'api::product.product', 'img', 1),
(25, 6, 3, 'api::product.product', 'img2', 1),
(30, 7, 4, 'api::product.product', 'img', 1),
(31, 8, 4, 'api::product.product', 'img2', 1),
(32, 9, 5, 'api::product.product', 'img', 1),
(33, 10, 5, 'api::product.product', 'img2', 1),
(36, 4, 2, 'api::product.product', 'img', 1),
(37, 3, 2, 'api::product.product', 'img2', 1),
(38, 12, 6, 'api::product.product', 'img', 1),
(39, 11, 6, 'api::product.product', 'img2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-01-08 17:33:51.807000', '2023-01-08 17:33:51.807000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `stripe_id` longtext DEFAULT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`products`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `stripe_id`, `products`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, NULL, 'cs_test_a1p8xdM8PqUQDJ6ahVgTSGe8a236VDCuvc0rCLTyuh7vfpfT4yk3uqFBly', '[{\"id\":2,\"title\":\"Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng\",\"desc\":\"Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng, nhà em bán cả set gồm áo và quần đó ạ, mua 1 được 2 nha các nàng.\\n- Phân loại: Kẻ Xanh, Kẻ Xanh Lá, Kẻ Nâu\\n- Chất liệu: Áo: Đũi Xốp; Quần: Thun Lạnh Dày dặn mặc mát\",\"price\":105000,\"img\":\"/uploads/eda23d81f901b97f0c1fe2178ab7be7d_4038081643.jfif\",\"quantity\":1}]', '2023-01-17 00:50:14.197000', '2023-01-17 00:50:14.197000', '2023-01-17 00:50:14.193000', NULL, NULL),
(2, NULL, 'cs_test_a1CTgUHNYzvEoC77H8xLaMx4va5HbGdJLCTJUHXKANl0vrDWHoI9NAULPY', '[{\"id\":2,\"title\":\"Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng\",\"desc\":\"Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng, nhà em bán cả set gồm áo và quần đó ạ, mua 1 được 2 nha các nàng.\\n- Phân loại: Kẻ Xanh, Kẻ Xanh Lá, Kẻ Nâu\\n- Chất liệu: Áo: Đũi Xốp; Quần: Thun Lạnh Dày dặn mặc mát\",\"price\":105000,\"img\":\"/uploads/eda23d81f901b97f0c1fe2178ab7be7d_4038081643.jfif\",\"quantity\":1}]', '2023-01-17 00:51:45.390000', '2023-01-17 00:51:45.390000', '2023-01-17 00:51:45.385000', NULL, NULL),
(3, NULL, 'cs_test_a189HVOKQ9SxnIz3F48OnYxzdSzNk23kmfZ0CqCUsgoHBBJspO1LdbIUTX', '[{\"id\":2,\"title\":\"Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng\",\"desc\":\"Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng, nhà em bán cả set gồm áo và quần đó ạ, mua 1 được 2 nha các nàng.\\n- Phân loại: Kẻ Xanh, Kẻ Xanh Lá, Kẻ Nâu\\n- Chất liệu: Áo: Đũi Xốp; Quần: Thun Lạnh Dày dặn mặc mát\",\"price\":105000,\"img\":\"/uploads/eda23d81f901b97f0c1fe2178ab7be7d_4038081643.jfif\",\"quantity\":1}]', '2023-01-17 00:54:28.349000', '2023-01-17 00:54:28.349000', '2023-01-17 00:54:28.340000', NULL, NULL),
(4, NULL, 'cs_test_b1ouyISZu4N9v4BCRS9FSJFas5Y6QXUeS0u1w4CXfZrehSfGTi4tIlmpY3', '[{\"id\":1,\"title\":\"Áo Polo thể thao nam ProMax-S1 Logo thương hiệu Coolmate\",\"desc\":\"Coolmate đã cho ra mắt rất nhiều sản phẩm áo thể thao với nhiều chất liệu: maxcool, quickdry,... và với mục tiêu tập trung vào chất liệu để đem đến cho khách hàng những chiếc áo tốt bắt nguồn từ chất liệu, chiếc áo Polo thể thao nam Promax-S1 đã được ra mắt vào đúng thời điểm mùa hè này để đảm bảo khách hàng nhà Coolmate luôn được thoải mái, dễ chịu mà vẫn lịch sự trong bất kỳ trường hợp nào.\",\"price\":329000,\"img\":\"/uploads/a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5.jfif\",\"quantity\":5},{\"id\":4,\"title\":\"Áo sơ mi trắng nam AKUBA tay dài\",\"desc\":\"Áo sơ mi trắng nam AKUBA tay dài công sở dáng ôm, vải lụa không nhăn, thấm hút mồ hôi tốt 01AB2044\",\"price\":389000,\"img\":\"/uploads/52958ea13586a4c3348b790443ff7d1c_92e140572d.jfif\",\"quantity\":4}]', '2023-01-17 01:00:29.831000', '2023-01-17 01:00:29.831000', '2023-01-17 01:00:29.830000', NULL, NULL),
(5, NULL, 'cs_test_b1UcDJ8CUgRehAg9jAdwrPe8ZvdWArNtYVwdGHQ6iFzVrBAUHEfWsrGYwX', '[{\"id\":4,\"title\":\"Áo sơ mi trắng nam AKUBA tay dài\",\"desc\":\"Áo sơ mi trắng nam AKUBA tay dài công sở dáng ôm, vải lụa không nhăn, thấm hút mồ hôi tốt 01AB2044\",\"price\":389000,\"img\":\"/uploads/52958ea13586a4c3348b790443ff7d1c_92e140572d.jfif\",\"quantity\":3},{\"id\":1,\"title\":\"Áo Polo thể thao nam ProMax-S1 Logo thương hiệu Coolmate\",\"desc\":\"Coolmate đã cho ra mắt rất nhiều sản phẩm áo thể thao với nhiều chất liệu: maxcool, quickdry,... và với mục tiêu tập trung vào chất liệu để đem đến cho khách hàng những chiếc áo tốt bắt nguồn từ chất liệu, chiếc áo Polo thể thao nam Promax-S1 đã được ra mắt vào đúng thời điểm mùa hè này để đảm bảo khách hàng nhà Coolmate luôn được thoải mái, dễ chịu mà vẫn lịch sự trong bất kỳ trường hợp nào.\",\"price\":329000,\"img\":\"/uploads/a5dcaaacd9fc8262e1199e305ce4ef5d_ce61591ab5.jfif\",\"quantity\":31}]', '2023-01-17 09:02:38.300000', '2023-01-17 09:02:38.300000', '2023-01-17 09:02:38.293000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `desc`, `price`, `is_new`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `type`) VALUES
(1, 'Áo Polo thể thao nam ProMax-S1 Logo thương hiệu Coolmate', 'Coolmate đã cho ra mắt rất nhiều sản phẩm áo thể thao với nhiều chất liệu: maxcool, quickdry,... và với mục tiêu tập trung vào chất liệu để đem đến cho khách hàng những chiếc áo tốt bắt nguồn từ chất liệu, chiếc áo Polo thể thao nam Promax-S1 đã được ra mắt vào đúng thời điểm mùa hè này để đảm bảo khách hàng nhà Coolmate luôn được thoải mái, dễ chịu mà vẫn lịch sự trong bất kỳ trường hợp nào.', '329000.00', 0, '2023-01-08 19:58:23.720000', '2023-01-10 13:15:13.946000', '2023-01-08 20:10:14.315000', 1, 1, 'trending'),
(2, 'Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng', 'Set áo babydoll, Bộ áo kẻ chất đũi xốp kèm quần short trắng, nhà em bán cả set gồm áo và quần đó ạ, mua 1 được 2 nha các nàng.\n- Phân loại: Kẻ Xanh, Kẻ Xanh Lá, Kẻ Nâu\n- Chất liệu: Áo: Đũi Xốp; Quần: Thun Lạnh Dày dặn mặc mát', '105000.00', 0, '2023-01-08 20:14:46.790000', '2023-01-10 16:35:52.926000', '2023-01-08 20:14:48.664000', 1, 1, 'trending'),
(3, 'Nón lưỡi trai Stussy stock low cap pro (chính hãng)', 'Tất cả sản phẩm tại Gladly đều là chính hãng và có sẵn, Size Âu cân nhắc giảm xuống 1 size so với size châu Á', '850000.00', 0, '2023-01-08 20:17:11.518000', '2023-01-10 13:15:22.357000', '2023-01-08 20:17:14.974000', 1, 1, 'normal'),
(4, 'Áo sơ mi trắng nam AKUBA tay dài', 'Áo sơ mi trắng nam AKUBA tay dài công sở dáng ôm, vải lụa không nhăn, thấm hút mồ hôi tốt 01AB2044', '389000.00', 1, '2023-01-10 16:20:05.397000', '2023-01-10 16:22:03.061000', '2023-01-10 16:22:03.052000', 1, 1, 'trending'),
(5, ' Áo Dài Cách Tân Thiết Kế Tinh Tế Cao Cấp NORICK', '????  THÔNG TIN CHI TIẾT\nTên sản phẩm : Áo Dài Cách Tân Thiết Kế Tinh Tế Cao Cấp NORICK\n???? Đường may tinh tế \n???? Xuất xứ: Việt Nam\n????Thương Hiệu :NORICK', '499000.00', 1, '2023-01-10 16:31:38.720000', '2023-01-10 16:31:40.124000', '2023-01-10 16:31:40.118000', 1, 1, 'trending'),
(6, 'Váy Ba Lỗ Cổ U Xoè Nữ BUSY Thun Gân Co Giãn Ôm Sát VCU3', '- Chất liệu: Thun gân co giãn 4 chiều\n- Chi tiết: Thiết kế ba lỗ cổ U cực kì dễ mặc, ôm sát thên trên và xòe nhẹ phía dưới tôn dáng.\n- Chiều dài váy khoảng 120cm với size S, độ dài các size chênh nhau 1cm.', '850000.00', 0, '2023-01-10 16:35:08.892000', '2023-01-10 16:36:26.187000', '2023-01-10 16:35:10.223000', 1, 1, 'featured');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_links`
--

CREATE TABLE `products_categories_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_order` int(10) UNSIGNED DEFAULT NULL,
  `product_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_categories_links`
--

INSERT INTO `products_categories_links` (`id`, `product_id`, `category_id`, `category_order`, `product_order`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 1, 1),
(3, 3, 1, 1, 2),
(4, 3, 2, 2, 2),
(5, 4, 1, 1, 3),
(6, 5, 2, 1, 3),
(7, 6, 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_sub_categories_links`
--

CREATE TABLE `products_sub_categories_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_order` int(10) UNSIGNED DEFAULT NULL,
  `product_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_sub_categories_links`
--

INSERT INTO `products_sub_categories_links` (`id`, `product_id`, `sub_category_id`, `sub_category_order`, `product_order`) VALUES
(1, 1, 2, 0, 0),
(2, 2, 3, 0, 0),
(3, 3, 1, 0, 0),
(5, 4, 4, 1, 1),
(6, 5, 5, 1, 1),
(7, 6, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(2, 'myAPI', '', 'custom', 'b3304e931af002305046955abc1190183d0ec74b90e46991d9f8eaccec6b7b73b164001c3cc76a40ffbea3951effd9cb9f26c3d29ded9682386a910fcbddc0b7', '2023-01-17 09:03:44.098000', NULL, NULL, '2023-01-09 00:23:39.474000', '2023-01-17 09:03:44.098000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_token_permissions`
--

INSERT INTO `strapi_api_token_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'api::category.category.find', '2023-01-08 20:31:52.629000', '2023-01-08 20:31:52.629000', NULL, NULL),
(2, 'api::category.category.findOne', '2023-01-08 20:31:52.629000', '2023-01-08 20:31:52.629000', NULL, NULL),
(3, 'api::sub-category.sub-category.find', '2023-01-08 20:31:52.629000', '2023-01-08 20:31:52.629000', NULL, NULL),
(4, 'api::sub-category.sub-category.findOne', '2023-01-08 20:31:52.629000', '2023-01-08 20:31:52.629000', NULL, NULL),
(5, 'api::category.category.find', '2023-01-09 00:23:39.486000', '2023-01-09 00:23:39.486000', NULL, NULL),
(6, 'api::category.category.findOne', '2023-01-09 00:23:39.486000', '2023-01-09 00:23:39.486000', NULL, NULL),
(7, 'api::product.product.findOne', '2023-01-09 00:23:39.486000', '2023-01-09 00:23:39.486000', NULL, NULL),
(8, 'api::sub-category.sub-category.find', '2023-01-09 00:23:39.486000', '2023-01-09 00:23:39.486000', NULL, NULL),
(9, 'api::sub-category.sub-category.findOne', '2023-01-09 00:23:39.486000', '2023-01-09 00:23:39.486000', NULL, NULL),
(10, 'api::product.product.find', '2023-01-09 00:23:39.486000', '2023-01-09 00:23:39.486000', NULL, NULL),
(11, 'api::order.order.create', '2023-01-17 00:49:01.289000', '2023-01-17 00:49:01.289000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

INSERT INTO `strapi_api_token_permissions_token_links` (`id`, `api_token_permission_id`, `api_token_id`, `api_token_permission_order`) VALUES
(5, 5, 2, 1),
(6, 6, 2, 1),
(7, 7, 2, 2),
(8, 10, 2, 2),
(9, 9, 2, 3),
(10, 8, 2, 3),
(11, 11, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"desc\":{\"type\":\"text\"},\"img\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::sub-category.sub-category\",\"mappedBy\":\"categories\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"desc\":{\"type\":\"text\"},\"img\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::sub-category.sub-category\",\"mappedBy\":\"categories\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::order.order\":{\"kind\":\"collectionType\",\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"order\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"stripeId\":{\"type\":\"text\"},\"products\":{\"type\":\"json\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"order\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"stripeId\":{\"type\":\"text\"},\"products\":{\"type\":\"json\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order\",\"connection\":\"default\",\"uid\":\"api::order.order\",\"apiName\":\"order\",\"globalId\":\"Order\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"desc\":{\"type\":\"text\"},\"img\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"img2\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"price\":{\"type\":\"decimal\"},\"isNew\":{\"type\":\"boolean\",\"default\":false},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::sub-category.sub-category\",\"inversedBy\":\"products\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"trending\",\"normal\",\"featured\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"desc\":{\"type\":\"text\"},\"img\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"img2\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"price\":{\"type\":\"decimal\"},\"isNew\":{\"type\":\"boolean\",\"default\":false},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"sub_categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::sub-category.sub-category\",\"inversedBy\":\"products\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"trending\",\"normal\",\"featured\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"api::sub-category.sub-category\":{\"kind\":\"collectionType\",\"collectionName\":\"sub_categories\",\"info\":{\"singularName\":\"sub-category\",\"pluralName\":\"sub-categories\",\"displayName\":\"subCategory\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"sub_categories\"},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"sub_categories\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sub_categories\",\"info\":{\"singularName\":\"sub-category\",\"pluralName\":\"sub-categories\",\"displayName\":\"subCategory\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"sub_categories\"},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"sub_categories\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"sub-category\",\"connection\":\"default\",\"uid\":\"api::sub-category.sub-category\",\"apiName\":\"sub-category\",\"globalId\":\"SubCategory\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(7, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(14, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(15, 'plugin_upload_metrics', '{\"weeklySchedule\":\"37 24 22 * * 1\",\"lastWeeklyUpdate\":1673882677074}', 'object', NULL, NULL),
(16, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(17, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(19, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(20, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"uid\":\"api::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"desc\":{\"edit\":{\"label\":\"desc\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"desc\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"img2\":{\"edit\":{\"label\":\"img2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img2\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"isNew\":{\"edit\":{\"label\":\"isNew\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isNew\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"sub_categories\":{\"edit\":{\"label\":\"sub_categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sub_categories\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"desc\",\"img\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"desc\",\"size\":6}],[{\"name\":\"img\",\"size\":6},{\"name\":\"img2\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"isNew\",\"size\":4}],[{\"name\":\"categories\",\"size\":6},{\"name\":\"sub_categories\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"desc\":{\"edit\":{\"label\":\"desc\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"desc\",\"searchable\":true,\"sortable\":true}},\"img\":{\"edit\":{\"label\":\"img\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"img\",\"searchable\":false,\"sortable\":false}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"sub_categories\":{\"edit\":{\"label\":\"sub_categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"sub_categories\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"desc\",\"img\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"desc\",\"size\":6}],[{\"name\":\"img\",\"size\":6},{\"name\":\"products\",\"size\":6}],[{\"name\":\"sub_categories\",\"size\":6}]]}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::sub-category.sub-category', '{\"uid\":\"api::sub-category.sub-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"products\",\"size\":6}],[{\"name\":\"categories\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::order.order', '{\"uid\":\"api::order.order\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"email\",\"defaultSortBy\":\"email\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"stripeId\":{\"edit\":{\"label\":\"stripeId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stripeId\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"email\",\"stripeId\",\"createdAt\"],\"edit\":[[{\"name\":\"email\",\"size\":6},{\"name\":\"stripeId\",\"size\":6}],[{\"name\":\"products\",\"size\":12}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(9, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"desc\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orders\",\"indexes\":[{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stripe_id\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"products\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"desc\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_new\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"sub_categories\",\"indexes\":[{\"name\":\"sub_categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sub_categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sub_categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"sub_categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_categories_links\",\"indexes\":[{\"name\":\"products_categories_links_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_categories_links_inv_fk\",\"columns\":[\"category_id\"]},{\"name\":\"products_categories_links_unique\",\"columns\":[\"product_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"products_categories_links_order_fk\",\"columns\":[\"category_order\"]},{\"name\":\"products_categories_links_order_inv_fk\",\"columns\":[\"product_order\"]}],\"foreignKeys\":[{\"name\":\"products_categories_links_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_categories_links_inv_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_sub_categories_links\",\"indexes\":[{\"name\":\"products_sub_categories_links_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_sub_categories_links_inv_fk\",\"columns\":[\"sub_category_id\"]},{\"name\":\"products_sub_categories_links_unique\",\"columns\":[\"product_id\",\"sub_category_id\"],\"type\":\"unique\"},{\"name\":\"products_sub_categories_links_order_fk\",\"columns\":[\"sub_category_order\"]},{\"name\":\"products_sub_categories_links_order_inv_fk\",\"columns\":[\"product_order\"]}],\"foreignKeys\":[{\"name\":\"products_sub_categories_links_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_sub_categories_links_inv_fk\",\"columns\":[\"sub_category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sub_categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"sub_category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"sub_category_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"sub_categories_categories_links\",\"indexes\":[{\"name\":\"sub_categories_categories_links_fk\",\"columns\":[\"sub_category_id\"]},{\"name\":\"sub_categories_categories_links_inv_fk\",\"columns\":[\"category_id\"]},{\"name\":\"sub_categories_categories_links_unique\",\"columns\":[\"sub_category_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"sub_categories_categories_links_order_fk\",\"columns\":[\"category_order\"]},{\"name\":\"sub_categories_categories_links_order_inv_fk\",\"columns\":[\"sub_category_order\"]}],\"foreignKeys\":[{\"name\":\"sub_categories_categories_links_fk\",\"columns\":[\"sub_category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sub_categories\",\"onDelete\":\"CASCADE\"},{\"name\":\"sub_categories_categories_links_inv_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"sub_category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"sub_category_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-01-17 00:31:40', '8d8164ab03c50d06fb10f3a55776bf6d');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'nón', '2023-01-08 20:06:53.466000', '2023-01-08 20:06:59.350000', '2023-01-08 20:06:59.345000', 1, 1),
(2, 'Áo Polo', '2023-01-08 20:08:36.220000', '2023-01-08 20:08:37.719000', '2023-01-08 20:08:37.716000', 1, 1),
(3, 'babydoll', '2023-01-08 20:09:30.860000', '2023-01-08 20:09:32.115000', '2023-01-08 20:09:32.109000', 1, 1),
(4, 'Áo Sơ Mi', '2023-01-10 16:20:53.675000', '2023-01-10 16:21:48.558000', '2023-01-10 16:21:48.551000', 1, 1),
(5, 'Đồ truyền thống', '2023-01-10 16:29:50.989000', '2023-01-10 16:29:51.859000', '2023-01-10 16:29:51.853000', 1, 1),
(6, 'Đầm/Váy', '2023-01-10 16:33:43.323000', '2023-01-10 16:33:45.017000', '2023-01-10 16:33:45.013000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories_categories_links`
--

CREATE TABLE `sub_categories_categories_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_order` int(10) UNSIGNED DEFAULT NULL,
  `sub_category_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories_categories_links`
--

INSERT INTO `sub_categories_categories_links` (`id`, `sub_category_id`, `category_id`, `category_order`, `sub_category_order`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 2, 1),
(3, 2, 1, 1, 2),
(4, 3, 2, 1, 2),
(5, 4, 1, 1, 3),
(6, 5, 2, 1, 3),
(7, 6, 2, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-01-08 17:33:51.725000', '2023-01-08 17:33:51.725000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-01-08 17:33:51.725000', '2023-01-08 17:33:51.725000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-01-08 17:33:51.745000', '2023-01-08 17:33:51.745000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-01-08 17:33:51.745000', '2023-01-08 17:33:51.745000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-01-08 17:33:51.745000', '2023-01-08 17:33:51.745000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-01-08 17:33:51.745000', '2023-01-08 17:33:51.745000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-01-08 17:33:51.745000', '2023-01-08 17:33:51.745000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-01-08 17:33:51.745000', '2023-01-08 17:33:51.745000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-01-08 17:33:51.745000', '2023-01-08 17:33:51.745000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 3, 2, 1),
(4, 7, 2, 1),
(5, 6, 2, 1),
(6, 4, 2, 1),
(7, 5, 2, 1),
(8, 8, 2, 2),
(9, 9, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-01-08 17:33:51.702000', '2023-01-08 17:33:51.702000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-01-08 17:33:51.711000', '2023-01-08 17:33:51.711000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_created_by_id_fk` (`created_by_id`),
  ADD KEY `orders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_categories_links_unique` (`product_id`,`category_id`),
  ADD KEY `products_categories_links_fk` (`product_id`),
  ADD KEY `products_categories_links_inv_fk` (`category_id`),
  ADD KEY `products_categories_links_order_fk` (`category_order`),
  ADD KEY `products_categories_links_order_inv_fk` (`product_order`);

--
-- Indexes for table `products_sub_categories_links`
--
ALTER TABLE `products_sub_categories_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sub_categories_links_unique` (`product_id`,`sub_category_id`),
  ADD KEY `products_sub_categories_links_fk` (`product_id`),
  ADD KEY `products_sub_categories_links_inv_fk` (`sub_category_id`),
  ADD KEY `products_sub_categories_links_order_fk` (`sub_category_order`),
  ADD KEY `products_sub_categories_links_order_inv_fk` (`product_order`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `sub_categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `sub_categories_categories_links`
--
ALTER TABLE `sub_categories_categories_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_categories_links_unique` (`sub_category_id`,`category_id`),
  ADD KEY `sub_categories_categories_links_fk` (`sub_category_id`),
  ADD KEY `sub_categories_categories_links_inv_fk` (`category_id`),
  ADD KEY `sub_categories_categories_links_order_fk` (`category_order`),
  ADD KEY `sub_categories_categories_links_order_inv_fk` (`sub_category_order`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_sub_categories_links`
--
ALTER TABLE `products_sub_categories_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories_categories_links`
--
ALTER TABLE `sub_categories_categories_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_categories_links`
--
ALTER TABLE `products_categories_links`
  ADD CONSTRAINT `products_categories_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_sub_categories_links`
--
ALTER TABLE `products_sub_categories_links`
  ADD CONSTRAINT `products_sub_categories_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_categories_links_inv_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sub_categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sub_categories_categories_links`
--
ALTER TABLE `sub_categories_categories_links`
  ADD CONSTRAINT `sub_categories_categories_links_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_categories_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
