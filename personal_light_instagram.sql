-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2025 at 02:30 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal_light_instagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('kroos@gmail.com|127.0.0.1', 'i:1;', 1744509173),
('kroos@gmail.com|127.0.0.1:timer', 'i:1744509173;', 1744509173);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'Voluptas neque dolorum aut molestiae.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(2, 19, 1, 'Quibusdam hic ut blanditiis dolore.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(3, 4, 2, 'Aut debitis exercitationem nobis qui explicabo.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(4, 6, 3, 'Reprehenderit quod nemo eligendi.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(5, 19, 3, 'Dolorem laboriosam suscipit.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(6, 2, 4, 'Quidem ab quis officiis vero.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(7, 12, 4, 'Dolor quis reiciendis voluptatum voluptatem.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(8, 3, 5, 'Dolor rerum harum eveniet.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(9, 19, 6, 'Amet omnis facilis.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(10, 4, 7, 'Et ut laborum blanditiis illum.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(11, 19, 7, 'Et quod libero voluptatem.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(12, 14, 8, 'Amet dicta ut voluptatibus inventore sed.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(13, 12, 9, 'Tenetur perferendis officia natus.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(14, 13, 9, 'Omnis et dolore sunt voluptas et.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(15, 13, 10, 'Odio non culpa nemo.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(16, 18, 10, 'Ut error error est quam.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(17, 19, 10, 'Omnis libero tenetur consequatur quos atque.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(18, 1, 11, 'Accusamus at eum aliquam praesentium aut.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(19, 11, 11, 'Voluptate alias possimus placeat.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(20, 1, 12, 'Repellendus voluptatum labore.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(21, 3, 12, 'Nesciunt deserunt facere qui itaque iusto.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(22, 19, 12, 'Magnam aut et.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(23, 2, 13, 'Enim eligendi labore minima.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(24, 3, 14, 'Voluptas eum sunt.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(25, 13, 15, 'Laudantium adipisci at.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(26, 21, 16, 'wow', '2025-04-12 18:23:14', '2025-04-12 18:23:14'),
(27, 21, 17, 'Keren', '2025-04-12 18:30:38', '2025-04-12 18:30:38'),
(28, 21, 18, 'Awesome', '2025-04-12 18:32:20', '2025-04-12 18:32:20'),
(29, 22, 20, 'Excellent', '2025-04-12 19:09:55', '2025-04-12 19:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(2, 6, 1, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(3, 16, 1, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(4, 2, 2, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(5, 4, 3, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(6, 2, 4, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(7, 17, 4, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(8, 18, 4, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(9, 2, 5, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(10, 4, 5, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(11, 6, 6, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(12, 6, 7, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(13, 20, 7, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(14, 9, 8, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(15, 15, 8, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(16, 10, 9, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(17, 13, 9, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(18, 12, 10, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(19, 20, 10, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(20, 9, 11, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(21, 2, 12, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(22, 6, 12, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(23, 8, 12, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(24, 5, 13, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(25, 11, 13, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(26, 19, 13, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(27, 14, 14, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(28, 3, 15, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(29, 5, 15, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(30, 19, 15, '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(31, 21, 18, '2025-04-12 18:50:07', '2025-04-12 18:50:07'),
(32, 21, 17, '2025-04-12 18:52:14', '2025-04-12 18:52:14'),
(33, 21, 16, '2025-04-12 18:52:18', '2025-04-12 18:52:18'),
(34, 22, 20, '2025-04-12 19:09:58', '2025-04-12 19:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_10_132317_add_profile_fields_to_users_table', 1),
(5, '2025_04_10_132724_create_posts_table', 1),
(6, '2025_04_12_235113_create_likes_table', 1),
(7, '2025_04_12_235322_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `caption` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `file_path`, `file_type`, `caption`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://via.placeholder.com/640x480.png/005522?text=esse', 'image', 'Omnis vero sunt est.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(2, 1, 'https://via.placeholder.com/640x480.png/00eebb?text=rerum', 'image', 'Natus aut dolor tempore consequuntur et quia quia.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(3, 1, 'https://via.placeholder.com/640x480.png/0011cc?text=assumenda', 'image', 'Earum dicta aliquam veritatis nulla natus dolorum.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(4, 2, 'https://via.placeholder.com/640x480.png/001155?text=nulla', 'image', 'Vel repellendus eos voluptatem sunt est optio consequatur.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(5, 2, 'https://via.placeholder.com/640x480.png/00bb11?text=consequatur', 'image', 'Voluptatem quod non et voluptatem alias.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(6, 2, 'https://via.placeholder.com/640x480.png/004411?text=error', 'image', 'Ratione ipsum repudiandae adipisci quia dolorem recusandae iure.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(7, 3, 'https://via.placeholder.com/640x480.png/006699?text=repellendus', 'image', 'Ut eveniet optio nostrum eaque cupiditate blanditiis voluptate quam.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(8, 3, 'https://via.placeholder.com/640x480.png/002200?text=odio', 'image', 'Maxime eaque est blanditiis ipsam dolores ad.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(9, 3, 'https://via.placeholder.com/640x480.png/00cc22?text=architecto', 'image', 'Enim voluptates ullam non necessitatibus veniam quasi optio.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(10, 4, 'https://via.placeholder.com/640x480.png/00ffdd?text=rerum', 'image', 'Pariatur reiciendis natus aut aut aut similique ea dignissimos.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(11, 4, 'https://via.placeholder.com/640x480.png/0077ee?text=distinctio', 'image', 'Rerum et quaerat est sint.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(12, 4, 'https://via.placeholder.com/640x480.png/00ff44?text=quia', 'image', 'Ratione voluptate et deserunt asperiores.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(13, 5, 'https://via.placeholder.com/640x480.png/0066ee?text=eum', 'image', 'Distinctio totam in earum.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(14, 5, 'https://via.placeholder.com/640x480.png/0033aa?text=molestiae', 'image', 'Ea laboriosam sit qui accusantium eligendi ut.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(15, 5, 'https://via.placeholder.com/640x480.png/0033aa?text=ut', 'image', 'Nobis quo voluptate fugiat adipisci.', '2025-04-12 17:33:14', '2025-04-12 17:33:14'),
(16, 21, 'posts/4IyRqqEsRGIysPC1XDljZ5w0ZBEUwOAibn2Il5uX.jpg', 'image', 'Toni Kroos menyapa pendukung real madrid seusai laga, antara real madrid vs sevilla. Toni Kroos menjadi kapten di laga tersebut menggantikan karim benzema yang ditarik keluar pada menit 50 karena cedera.', '2025-04-12 18:18:23', '2025-04-12 18:29:56'),
(17, 21, 'posts/KfAUMyla7GSZHSFvnH88W9mBqbH75jSnncQuDwB3.jpg', 'image', 'Toni Kroos menyapa pendukung real madrid seusai laga, antara real madrid vs sevilla. Toni Kroos menjadi kapten di laga tersebut menggantikan karim benzema yang ditarik keluar pada menit 50 karena cedera.', '2025-04-12 18:30:32', '2025-04-12 18:30:55'),
(18, 21, 'posts/TvawAGQh2mmhfUYRdM03PlLw3o0FtfK3G97Oq8px.png', 'image', 'Toni Kroos menyapa pendukung real madrid seusai laga, antara real madrid vs sevilla. Toni Kroos menjadi kapten di laga tersebut menggantikan karim benzema yang ditarik keluar pada menit 50 karena cedera.', '2025-04-12 18:31:42', '2025-04-12 18:31:42'),
(20, 22, 'posts/ysYSlk5er2fZaLoeSogY6JDCpZNb123gn1Uc1KWz.jpg', 'image', 'Karim Benzema beragama Islam. Ia lahir di Lyon, Prancis pada 19 Desember 1987 dari orang tua keturunan Aljazair. Benzema adalah Pemenang balon d\'or 2022 dan UEFA Best Player in Europe 2022.', '2025-04-12 19:09:30', '2025-04-12 19:09:30'),
(21, 22, 'posts/9J0qJbpWwT8cxOMsPLRMMXwIXD4dIA7joMapyrWH.jpg', 'image', 'Karim Benzema beragama Islam. Ia lahir di Lyon, Prancis pada 19 Desember 1987 dari orang tua keturunan Aljazair. Benzema adalah Pemenang balon d\'or 2022 dan UEFA Best Player in Europe 2022.', '2025-04-12 19:10:24', '2025-04-12 19:10:24'),
(22, 22, 'posts/rPSTa03yDgmLvVOeiIKyMQIZpIKQ3H6azxILsjkT.jpg', 'image', 'Karim Benzema beragama Islam. Ia lahir di Lyon, Prancis pada 19 Desember 1987 dari orang tua keturunan Aljazair. Benzema adalah Pemenang balon d\'or 2022 dan UEFA Best Player in Europe 2022.', '2025-04-12 19:10:44', '2025-04-12 19:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NmlTdJHdmyWFy4VT5Qach3Sp4KtNoDSbt0OkRI2v', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTF6bFQ2NXk1ajBOOFEwV2VkVktEVVlZUkpuQW16VEZuRnNua21rYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMjt9', 1744511321);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_profile` varchar(255) DEFAULT NULL,
  `bio` text,
  `feed_per_row` tinyint UNSIGNED NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_profile`, `bio`, `feed_per_row`) VALUES
(1, 'Candida Crona', 'oconnell.jeffry@example.com', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'DkGgcM6Oem', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(2, 'Carlee Beatty', 'sandra44@example.org', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'S6Ysbl4V6a', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(3, 'Dr. Van Marvin Sr.', 'vnienow@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'OtHn6DCDGA', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(4, 'Mr. Orville Bruen III', 'korey03@example.org', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', '2dN1MR6nhi', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(5, 'Daron Russel', 'noelia.glover@example.org', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'hHJtk1md9w', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(6, 'Rosalyn Williamson', 'fpurdy@example.com', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', '1lFMItyJgE', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(7, 'Tyrese Keebler', 'kilback.ruthe@example.org', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'TccVQbgsJt', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(8, 'Earline Kunde', 'zhaag@example.com', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'O5MuzcX51x', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(9, 'Ms. Ellie Walker DVM', 'lubowitz.dennis@example.org', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', '5NiP3B7Prv', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(10, 'Felton Ziemann', 'rmraz@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'htp2Ltra5F', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(11, 'Leo Lowe', 'abbigail.wolff@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'kZJcCZ6Bth', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(12, 'April Heller', 'bogisich.elfrieda@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'ZjxkqUPH32', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(13, 'Simeon Cronin', 'marilyne.heller@example.com', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', '0Fkifggf2B', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(14, 'Miss Beulah Harris II', 'cary92@example.com', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'eHB8uIS3Y3', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(15, 'Jazmyn Wisoky', 'tabitha14@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'C9xYG3qwgJ', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(16, 'Alec O\'Hara DVM', 'antone.beier@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'PJNT0KIBQV', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(17, 'Lourdes Stracke', 'fpollich@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'D2Lwz6ka1P', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(18, 'Terrance Jenkins', 'zkonopelski@example.org', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'ZEYvhGHkBl', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(19, 'Eudora Lesch Sr.', 'christa16@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'VwVgAbJBaS', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(20, 'Mr. Stanley Murphy', 'andrew.schiller@example.net', '2025-04-12 17:33:14', '$2y$12$LPOedKYF/dudvcgUZW1Y9.D3LpMCo7k28eifP6.0I4jo6kz.olTpe', 'PwUCzhHYEf', '2025-04-12 17:33:14', '2025-04-12 17:33:14', NULL, NULL, 3),
(21, 'Toni Kroos', 'kroos8@gmail.com', NULL, '$2y$12$NCR1aymuNSSFzkLJ56C7OOXVeqj.2ESJhcVBlRHkHH6m9HkcvphGe', NULL, '2025-04-12 17:51:02', '2025-04-12 18:52:33', '1744507696_tonikroosgermaneuro.jpg', 'Toni Kroos lahir 4 Januari 1990 di Greifswald, Jerman Timur adalah mantan pemain sepak bola Jerman yang bermain sebagai gelandang tengah. Toni Kroos berhasil menyandang gelar sebagai Playmaker Terbaik Dunia 2014 versi International Federation of Football History and Statistics (IFFHS). Informasi tambahan Toni Kroos adalah saudara lelaki dari Felix Kroos dan Toni Kroos adalah anak lelaki dari Roland Kroos.', 3),
(22, 'Karim Benzema', 'karim9@gmail.com', NULL, '$2y$12$sS9eXu1U7H0GFlmOOnwDY.jwpRQ2SX/2N/uLD7/SrSe7OoJWbeGii', NULL, '2025-04-12 18:55:44', '2025-04-12 19:03:27', '1744509807_profile-benzema.jpg', 'Karim Mostafa Benzema lahir 19 Desember 1987 di kota Lyon adalah seorang pemain sepak bola profesional Prancis yang saat ini bermain untuk klub Al-Ittihad di Liga Profesional Saudi dan mantan pemain Timnas Prancis. Dia bermain sebagai penyerang yang dapat difungsikan juga sebagai pemain sayap dan terkenal karena kemampuan teknik, gaya permainan, dan kemampuannya dalam mencetak gol. Ia dideskripsikan sebagai seorang \"penyerang bertalenta hebat\" yang \"tangguh dan mengagumkan\" dan \"seorang penuntas serangan yang efektif di kotak penalti.\"', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
