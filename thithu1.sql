-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2024 at 08:51 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thithu1`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_art` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `developer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_year` int NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `cover_art`, `developer`, `release_year`, `genre`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Quia ut iure aut beatae.', 'https://via.placeholder.com/640x480.png/0055ff?text=voluptas', 'Omnis labore nobis.', 2024, 'Santiago', NULL, '2024-08-09 03:39:39', '2024-08-09 03:39:39'),
(2, 'Non rem inventore sed.', 'https://via.placeholder.com/640x480.png/00ffaa?text=unde', 'Tempore non ut.', 2023, 'Blaze', NULL, '2024-08-09 03:39:39', '2024-08-09 03:39:39'),
(3, 'Qui aut qui tempore.', 'https://via.placeholder.com/640x480.png/005588?text=accusantium', 'Aliquid animi eius.', 2024, 'Mellie', NULL, '2024-08-09 03:39:39', '2024-08-09 03:39:39'),
(4, 'Aut quia odit ea.', 'https://via.placeholder.com/640x480.png/00aadd?text=est', 'Qui voluptas sit.', 2023, 'Patrick', NULL, '2024-08-09 03:39:39', '2024-08-09 03:39:39'),
(5, 'Voluptas qui eos fuga.', 'https://via.placeholder.com/640x480.png/0044dd?text=dolor', 'Voluptatem sed.', 2020, 'Karine', NULL, '2024-08-09 03:39:39', '2024-08-09 03:39:39'),
(6, 'Omnis ut iusto est.', 'images/UwSRjVgX7MkZSmEkqUk1Mh534VRiF6wvx1q2b0pN.jpg', 'Nisi qui ratione.', 2024, 'Fae', NULL, '2024-08-09 03:39:39', '2024-08-09 03:47:01'),
(7, 'Eos qui est in ullam.', 'https://via.placeholder.com/640x480.png/0044ff?text=repellat', 'Esse molestiae.', 2020, 'Arjun', NULL, '2024-08-09 03:39:39', '2024-08-09 03:39:39'),
(8, 'Quod quis ipsam ea.', 'images/T5W7RmVkUNDevEC5huq8tbhAixH2N33FHeloesD3.jpg', 'Quia voluptatibus.', 2023, 'Cecilia', NULL, '2024-08-09 03:39:39', '2024-08-09 03:46:36'),
(9, 'Odio at et neque rerum.', 'images/MzpFhq41r0zFwve6k9XaYS4qVeTkLh4w2dba9pfK.png', 'Ex quo soluta quia.', 2023, 'Ewald', '2024-08-09 04:31:21', '2024-08-09 03:39:39', '2024-08-09 04:31:21'),
(10, 'Optio aut quia quam.', '', 'Nostrum neque vitae.', 2022, 'Kiana', '2024-08-09 03:47:36', '2024-08-09 03:39:39', '2024-08-09 03:47:36'),
(11, 'Test2', 'images/8euax08accV7lPr7qkI6wiOMYckDBxHBPN7tQfPm.png', 'Test2', 2023, 'Test2', NULL, '2024-08-09 04:23:56', '2024-08-09 09:11:02'),
(12, 'Test3', 'images/mbfYRehxMwNKl9zlTVzoc8qdbVF12Pm6b3NPcska.png', 'Test3', 2004, 'Test3', '2024-08-09 11:26:00', '2024-08-09 04:27:20', '2024-08-09 11:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_08_09_023433_create_games_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
