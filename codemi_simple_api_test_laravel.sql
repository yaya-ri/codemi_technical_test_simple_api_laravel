-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2018 at 05:19 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codemi_simple_api_test_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_time` datetime NOT NULL,
  `room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_name`, `class_time`, `room`, `created_at`, `updated_at`) VALUES
('1e7626791c124a05b6feffbd880351e5', 'php', '2018-12-14 00:00:00', '1d', '2018-12-13 19:09:57', '2018-12-13 19:09:57'),
('92542bb70abd4fcdadc813da15fedc08', 'golang', '2018-12-14 00:00:00', '1a', '2018-12-13 19:14:53', '2018-12-13 19:14:53'),
('f8ef197918794471a9513d8caebb32e0', 'angular js', '2018-12-14 00:00:00', '1d', '2018-12-13 19:08:17', '2018-12-13 19:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_12_13_124846_create_classes_table', 1),
(9, '2018_12_13_125036_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3a15f5eaea718c4a8be6bbf67c2087c2094103d73c9dad2f79f58b38dea93b0895d8e054dd02948c', 6, 3, 'MyApp', '[]', 0, '2018-12-13 19:51:30', '2018-12-13 19:51:30', '2019-12-14 02:51:30'),
('4d74ca1b1f293ca77395d80f8a0a91356e2c8b886bf691f598cf579d1f4a4b4dc256443cc94a2f55', 6, 3, 'MyApp', '[]', 0, '2018-12-13 19:07:19', '2018-12-13 19:07:19', '2019-12-14 02:07:19'),
('b8142db08ade622e8c71f6a8f847edb94a3150c1cbb5462ca92281415d2b45376e6fa010b91456e5', 1, 3, 'MyApp', '[]', 0, '2018-12-13 19:07:06', '2018-12-13 19:07:06', '2019-12-14 02:07:06'),
('ff68abf7d56441848f3df89f6cb8354371b80d1fbeb6f232edb755f5d6d825e7c8567d26aafca41a', 1, 3, 'MyApp', '[]', 0, '2018-12-13 19:11:40', '2018-12-13 19:11:40', '2019-12-14 02:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'smn9MXZHrOfqhiQhzzbKCk1GeU9g0JSM2tzsMcDI', 'http://localhost', 1, 0, 0, '2018-12-13 19:06:31', '2018-12-13 19:06:31'),
(2, NULL, 'Laravel Password Grant Client', 'jXCrZOryVTcwpe8wXVrdKr3grmdILwz0BKTD64mF', 'http://localhost', 0, 1, 0, '2018-12-13 19:06:31', '2018-12-13 19:06:31'),
(3, NULL, 'Laravel Personal Access Client', 'jL05LxG8InL0YdUPpYd4S9RQLjIPqNl9Ti4Uq6cK', 'http://localhost', 1, 0, 0, '2018-12-13 19:06:40', '2018-12-13 19:06:40'),
(4, NULL, 'Laravel Password Grant Client', 'pR1Gqjwrlk2O7VffbihCNVfauNHX6BSq812giZRz', 'http://localhost', 0, 1, 0, '2018-12-13 19:06:40', '2018-12-13 19:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-12-13 19:06:31', '2018-12-13 19:06:31'),
(2, 3, '2018-12-13 19:06:40', '2018-12-13 19:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `class_id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
('0b0c52604a534781886b53394d66d877', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:51:56', '2018-12-13 19:51:56'),
('2ceac1e4c6b34a72852e1182eb652c70', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:16:01', '2018-12-13 19:16:01'),
('4a7fbd55ba1642e899ae9701696f3ab0', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:52:03', '2018-12-13 19:52:03'),
('55c97190f25d4d5a860a0a4f005e7062', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:51:52', '2018-12-13 19:51:52'),
('5fa1b067b4a245d1b086bb553ddea6af', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:51:55', '2018-12-13 19:51:55'),
('7d4e742232724439bd40fec877bd51e7', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:51:54', '2018-12-13 19:51:54'),
('87dd07d8e11744dd897c5a13cfcb6497', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:52:22', '2018-12-13 19:52:22'),
('9399ed0a22c94bf28c8bad92d34c7d0c', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:50:57', '2018-12-13 19:50:57'),
('94e346992be8472b91e135448cd2fed1', '92542bb70abd4fcdadc813da15fedc08', 'toni', '082748374895', '2018-12-13 19:15:52', '2018-12-13 19:15:52'),
('abf01d3cc0524b6dbf84d0f2a535d0a0', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:51:01', '2018-12-13 19:51:01'),
('df814af3967c4070a291138dba8d7d45', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:52:09', '2018-12-13 19:52:09'),
('eb4ff5978a67457f86fb0fe88eca1d3e', '92542bb70abd4fcdadc813da15fedc08', 'deni', '082748374895', '2018-12-13 19:51:53', '2018-12-13 19:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yaya', 'yaya.rizqi@gmail.com', NULL, '$2y$10$AqXgNIeskkn9solxUnwAA.b1IbxK8jLjvjRe/A2jVC/UqKbpBaS6a', NULL, '2018-12-13 19:00:19', '2018-12-13 19:00:19'),
(5, 'yaya_aye', 'yaya.rizqi.isnanda@gmail.com', NULL, '$2y$10$pYVZ0P2R/19O7ddZXkO3AeVVfXoLQKTwzu2Uo/W57mvNC5dsRNO/u', NULL, '2018-12-13 19:03:46', '2018-12-13 19:03:46'),
(6, 'yaya_aye', 'yaya@gmail.com', NULL, '$2y$10$p6oMr4W5tfz8MuSQRxr7HONf2IaPTSAuJ07gSo.AXLM03krUxsfWC', NULL, '2018-12-13 19:07:19', '2018-12-13 19:07:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
