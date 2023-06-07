-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 10 2023 г., 12:01
-- Версия сервера: 8.0.29
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- База данных: `erer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `days`
--

CREATE TABLE `days` (
  `id` bigint UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fitnessDate` datetime DEFAULT NULL,
  `breathData` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moodData` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memoryData` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cogniData` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `launchDate` datetime DEFAULT NULL,
  `isActivity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2019_05_03_000001_create_customer_columns', 2),
(7, '2019_05_03_000002_create_subscriptions_table', 2),
(8, '2019_05_03_000003_create_subscription_items_table', 2),
(9, '2023_04_13_082338_create_plans_table', 3),
(10, '2023_05_03_100808_create_days_table', 4),
(11, '2023_05_08_145855_add_multiple_column_to_users', 5),
(12, '2023_05_08_150121_add_multiple_column_to_users', 6),
(13, '2023_05_08_150952_drop_users_table', 7),
(14, '2023_05_08_151026_create_users_table', 7),
(15, '2023_05_08_151334_drop_users_table', 8),
(17, '2023_05_08_151927_create_users_table', 9),
(18, '2023_05_10_080155_add_paid_to_days_table', 10),
(19, '2023_05_10_080406_add_columns_to_days_table', 11),
(20, '2023_05_10_080724_create_notes_table', 12),
(21, '2023_05_10_081256_create_days_table', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 28, 'myToken', 'e4479d338060881fbddbfa9a17c5bb6bd7e61186d59a3e41d428d62c3938496f', '[\"*\"]', NULL, NULL, '2023-03-31 03:57:47', '2023-03-31 03:57:47'),
(2, 'App\\Models\\User', 24, 'myToken', 'ac6d145e67405efeab1954992bedd0cd80f9fbfb5f8eb0cc353d5b4565e90f83', '[\"*\"]', NULL, NULL, '2023-03-31 04:15:15', '2023-03-31 04:15:15'),
(3, 'App\\Models\\User', 24, 'myToken', 'bd54531bad8a6c90d2985038117d35c30727941408a54cd57a4393400c2bde90', '[\"*\"]', NULL, NULL, '2023-03-31 04:18:01', '2023-03-31 04:18:01'),
(4, 'App\\Models\\User', 24, 'API token', '1fe872b5d8549ffe6e102dcd13af04a3245ea04f42fafabf0381967c3c3ae7c4', '[\"*\"]', NULL, NULL, '2023-03-31 05:16:42', '2023-03-31 05:16:42'),
(5, 'App\\Models\\User', 30, 'API token', 'a18f93ae67f560f88ab1b27b2ab0f8c0fc856befd2107a199a3a630de504569c', '[\"*\"]', NULL, NULL, '2023-04-13 04:05:49', '2023-04-13 04:05:49'),
(6, 'App\\Models\\User', 36, 'API token', 'de5c4695a098ef4b164e1953da58ea28b1dac0d86cb22c188d5c5dd2576c284c', '[\"*\"]', NULL, NULL, '2023-04-14 02:23:24', '2023-04-14 02:23:24'),
(7, 'App\\Models\\User', 37, 'API token', '7f20345f1ac611cbed5395909ac583c5a235b2fff3fa835b4cae19453929c7df', '[\"*\"]', NULL, NULL, '2023-04-14 03:13:30', '2023-04-14 03:13:30'),
(8, 'App\\Models\\User', 38, 'API token', '5be5af4acbdc5f442811d4ffecc109f66d1a32d4e443c31e6f331f7b4d5825bd', '[\"*\"]', NULL, NULL, '2023-04-14 03:15:25', '2023-04-14 03:15:25'),
(9, 'App\\Models\\User', 38, 'API token', '7b7b1d07c05ece61bcbf7cc8762b7d1dc7e74a008c92372795b83b4b63e401e7', '[\"*\"]', NULL, NULL, '2023-04-14 03:35:39', '2023-04-14 03:35:39'),
(10, 'App\\Models\\User', 38, 'API token', '626612b7a982f587bfbd2fe05c4bded7036cccc67dd802476fa34e0e06e89895', '[\"*\"]', NULL, NULL, '2023-04-14 03:40:52', '2023-04-14 03:40:52'),
(11, 'App\\Models\\User', 38, 'API token', '76931336fce6df5315fbf9acb8492784a1de2a478165675f2bbeb1fc38c945ee', '[\"*\"]', NULL, NULL, '2023-04-14 03:41:17', '2023-04-14 03:41:17'),
(12, 'App\\Models\\User', 38, 'API token', '30798d96506457ff887d3190efe29673a049e72b5114087ebb789931148910b9', '[\"*\"]', NULL, NULL, '2023-04-14 04:02:37', '2023-04-14 04:02:37'),
(13, 'App\\Models\\User', 38, 'API token', 'c0a9836ac8d31c592db95fd582bfd24488c4814f3b3652a7ca6030853218c836', '[\"*\"]', NULL, NULL, '2023-04-14 04:02:58', '2023-04-14 04:02:58'),
(14, 'App\\Models\\User', 38, 'API token', '68192ae859ee3daaabfa215b313169d46df219a712449b3b16bb71a4669e3537', '[\"*\"]', NULL, NULL, '2023-04-14 04:04:47', '2023-04-14 04:04:47'),
(15, 'App\\Models\\User', 38, 'API token', '1c6c621fe720b590c4c3cbf1d94e1a20649e0752d34760aa3fb40da6112aea06', '[\"*\"]', NULL, NULL, '2023-04-14 05:32:47', '2023-04-14 05:32:47'),
(16, 'App\\Models\\User', 38, 'API token', '71a910be438744b54a97c1aee1eba83d6798450f1cd75aea955ed30e9266457d', '[\"*\"]', NULL, NULL, '2023-04-14 05:47:36', '2023-04-14 05:47:36'),
(17, 'App\\Models\\User', 43, 'API token', '9f6a515413c32611ec220debbb494d5a1fad787f54ad6437ac59456f0c4ed2b2', '[\"*\"]', NULL, NULL, '2023-04-14 07:13:31', '2023-04-14 07:13:31'),
(18, 'App\\Models\\User', 43, 'API token', 'd5999631c3a0446635f777313b49695b05bbbcff3864a72c17484ac597a244a8', '[\"*\"]', '2023-04-21 04:49:12', NULL, '2023-04-14 07:13:53', '2023-04-21 04:49:12'),
(19, 'App\\Models\\User', 44, 'API token', 'f38dc8da3434cf45362996bfd93ff46541321030e9e66617ceb86815530ccd41', '[\"*\"]', '2023-04-21 08:43:36', NULL, '2023-04-19 04:24:25', '2023-04-21 08:43:36'),
(20, 'App\\Models\\User', 44, 'API token', 'd28718e67047f69376df757d2a40cf47bbd5bec65451292df5915886101e1b1c', '[\"*\"]', '2023-04-26 06:10:02', NULL, '2023-04-26 03:40:35', '2023-04-26 06:10:02'),
(21, 'App\\Models\\User', 45, 'API token', '39e05463ab5796cccc72db48845a057cc7020221aeac9cacff1d412a302f8e72', '[\"*\"]', '2023-04-26 06:10:31', NULL, '2023-04-26 04:32:22', '2023-04-26 06:10:31'),
(22, 'App\\Models\\User', 47, 'API token', 'f011ee85bb2f7baf064453969d95b983f29f48ffadbcbeb4d32dfda1b1518ea0', '[\"*\"]', '2023-04-26 06:53:49', NULL, '2023-04-26 06:51:30', '2023-04-26 06:53:49'),
(23, 'App\\Models\\User', 48, 'API token', '3cf2717bef1b5ec32613f3fd5d0a2fe4fa59198f5dc9fcb2fa81573ab0a0651d', '[\"*\"]', '2023-04-26 07:42:23', NULL, '2023-04-26 07:38:55', '2023-04-26 07:42:23'),
(24, 'App\\Models\\User', 48, 'API token', 'ce3b00c64b0052148f9b6fccc7f1cc98cf3f94c0ebfcada7a5bf9dd795e01c11', '[\"*\"]', '2023-05-03 04:12:49', NULL, '2023-05-03 04:12:36', '2023-05-03 04:12:49'),
(25, 'App\\Models\\User', 48, 'API token', '8f7181c87491e69d1a59bd5ecd5f7e4dc92248d2a6b4505f769b5038eaef0126', '[\"*\"]', NULL, NULL, '2023-05-03 04:14:19', '2023-05-03 04:14:19'),
(26, 'App\\Models\\User', 48, 'API token', '858b3ece6dd0660180c3bd45e51077d33968adf8f83bdd753c0b86cebe041a1d', '[\"*\"]', NULL, NULL, '2023-05-03 04:16:53', '2023-05-03 04:16:53'),
(27, 'App\\Models\\User', 48, 'API token', 'b23bc60143f4938f3ef7e6758c4ac35c5e8f564eee9706c148d9c12a84347e21', '[\"*\"]', '2023-05-03 06:25:18', NULL, '2023-05-03 04:19:45', '2023-05-03 06:25:18'),
(28, 'App\\Models\\User', 48, 'API token', 'e8906911600a92ff5e9ae110b555a234e22a41d605833d7473671c68729de0c4', '[\"*\"]', '2023-05-03 08:29:17', NULL, '2023-05-03 04:36:27', '2023-05-03 08:29:17'),
(29, 'App\\Models\\User', 48, 'API token', '3e859af70aa468058f1b0627dbfba13fd6dc45a44f8eccaa0a0f220bf485d465', '[\"*\"]', '2023-05-04 07:22:30', NULL, '2023-05-03 09:13:37', '2023-05-04 07:22:30'),
(30, 'App\\Models\\User', 48, 'API token', '8118772f9434d5e84706c8fdde1e8624032a855f39c673b0c1161c151623ff96', '[\"*\"]', '2023-05-04 04:30:06', NULL, '2023-05-04 03:53:08', '2023-05-04 04:30:06'),
(31, 'App\\Models\\User', 48, 'API token', 'f59210fe5edc3e16a7b21b5db77178f923dbc51ff8195d6c0d421f46dc1fb50e', '[\"*\"]', '2023-05-04 07:22:17', NULL, '2023-05-04 07:22:08', '2023-05-04 07:22:17'),
(32, 'App\\Models\\User', 1, 'API token', '4bae2e42eb1049a11903f545f92328ae89915d752a1d9d35fc709ff701c2a17b', '[\"*\"]', '2023-05-08 12:40:54', NULL, '2023-05-08 12:40:37', '2023-05-08 12:40:54'),
(33, 'App\\Models\\User', 7, 'API token', '97477f004c7b88a8979995a6fadfa9f8a33458a65d6da628e959a9cb2e447c30', '[\"*\"]', NULL, NULL, '2023-05-09 09:29:57', '2023-05-09 09:29:57'),
(34, 'App\\Models\\User', 7, 'API token', 'fb0a9be77823ef393bff7b133a007bd8d2590d8dffd68ceaa7f94d9d21a3c3fb', '[\"*\"]', '2023-05-09 12:00:19', NULL, '2023-05-09 09:30:18', '2023-05-09 12:00:19'),
(35, 'App\\Models\\User', 7, 'API token', 'eb2e111570068054be42c3408ee89c6efae05932f9b3d6c4d8dec3fbdfe37566', '[\"*\"]', NULL, NULL, '2023-05-10 04:43:05', '2023-05-10 04:43:05');

-- --------------------------------------------------------

--
-- Структура таблицы `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plans`
--

INSERT INTO `plans` (`id`, `name`, `slug`, `stripe_plan`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Business Plan', 'business-plan', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 10, 'Business Plan', '2023-04-13 06:35:57', '2023-04-13 06:35:57'),
(2, 'Premium', 'premium', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 20, 'Premium', '2023-04-13 06:35:57', '2023-04-13 06:35:57');

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 31, '2', 'sub_1MwN9zAd5BfwNdqTy3W3hwUU', 'active', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, NULL, NULL, '2023-04-13 07:13:48', '2023-04-13 07:13:50'),
(2, 31, '2', 'sub_1MwNBBAd5BfwNdqTsxvCgSGt', 'active', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, NULL, NULL, '2023-04-13 07:15:02', '2023-04-13 07:15:04'),
(3, 31, '1', 'sub_1MwNaDAd5BfwNdqTaz3Vtn2o', 'active', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, NULL, NULL, '2023-04-13 07:40:54', '2023-04-13 07:40:56'),
(4, 34, '2', 'sub_1MwOm1Ad5BfwNdqTYPXISNTm', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-20 08:57:06', NULL, '2023-04-13 08:57:10', '2023-04-13 08:57:10'),
(5, 43, '1', 'sub_1Mwk8zAd5BfwNdqTR8BolZAP', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-21 07:46:15', NULL, '2023-04-14 07:46:18', '2023-04-14 07:46:18'),
(6, 43, '1', 'sub_1Mwk9mAd5BfwNdqThMNtqg4D', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-21 07:47:04', NULL, '2023-04-14 07:47:07', '2023-04-14 07:47:07'),
(7, 43, '1', 'sub_1MwkAMAd5BfwNdqTZL2h1PaA', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-21 07:47:40', NULL, '2023-04-14 07:47:43', '2023-04-14 07:47:43'),
(8, 43, '2', 'sub_1MyYQmAd5BfwNdqTvIotI68K', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 07:40:07', NULL, '2023-04-19 07:40:09', '2023-04-19 07:40:09'),
(9, 43, '2', 'sub_1MyYSKAd5BfwNdqTmuzLdpr1', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 07:41:43', NULL, '2023-04-19 07:41:44', '2023-04-19 07:41:44'),
(10, 44, '2', 'sub_1MyYTUAd5BfwNdqThGwrOYrf', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 07:42:54', NULL, '2023-04-19 07:42:56', '2023-04-19 07:42:56'),
(11, 44, '2', 'sub_1MzEiYAd5BfwNdqT4axKWkxg', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-28 04:49:17', NULL, '2023-04-21 04:49:19', '2023-04-21 04:49:19'),
(12, 44, '2', 'sub_1MzElJAd5BfwNdqTJcDoeqAa', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-28 04:52:08', NULL, '2023-04-21 04:52:10', '2023-04-21 04:52:10'),
(13, 44, '2', 'sub_1MzEoVAd5BfwNdqTDqQNgbod', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-28 04:55:26', NULL, '2023-04-21 04:55:28', '2023-04-21 04:55:28'),
(14, 44, '2', 'sub_1MzExIAd5BfwNdqTCMrLnMBv', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-28 05:04:31', NULL, '2023-04-21 05:04:32', '2023-04-21 05:04:32'),
(15, 44, '2', 'sub_1MzEy0Ad5BfwNdqTUKbMKHxD', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-28 05:05:15', NULL, '2023-04-21 05:05:17', '2023-04-21 05:05:17'),
(16, 44, '2', 'sub_1MzIJWAd5BfwNdqT9dsWLEzH', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-28 08:39:41', NULL, '2023-04-21 08:39:43', '2023-04-21 08:39:43'),
(17, 44, '2', 'sub_1MzINIAd5BfwNdqTFtVUVH94', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-28 08:43:36', NULL, '2023-04-21 08:43:37', '2023-04-21 08:43:37'),
(18, 44, '2', 'sub_1N123RAd5BfwNdqTNIqQc4gh', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 03:42:15', NULL, '2023-04-26 03:42:19', '2023-04-26 03:42:19'),
(19, 43, '1', 'sub_1N14UmAd5BfwNdqTwLV0hXA4', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-05-03 06:18:38', NULL, '2023-04-26 06:18:42', '2023-04-26 06:18:42'),
(20, 43, '2', 'sub_1N14X1Ad5BfwNdqTXDlAPG0K', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 06:20:57', NULL, '2023-04-26 06:21:00', '2023-04-26 06:21:00'),
(21, 43, '1', 'sub_1N14YTAd5BfwNdqTncOAmFqU', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-05-03 06:22:27', NULL, '2023-04-26 06:22:30', '2023-04-26 06:22:30'),
(22, 43, '1', 'sub_1N14iCAd5BfwNdqT29NipHBP', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-05-03 06:32:30', NULL, '2023-04-26 06:32:33', '2023-04-26 06:32:33'),
(23, 43, '2', 'sub_1N14s9Ad5BfwNdqToL8MVsN5', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 06:42:48', NULL, '2023-04-26 06:42:51', '2023-04-26 06:42:51'),
(24, 47, '2', 'sub_1N152nAd5BfwNdqTahTnmMBT', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 06:53:49', NULL, '2023-04-26 06:53:50', '2023-04-26 06:53:50'),
(25, 47, '1', 'sub_1N154DAd5BfwNdqT2qRegpwb', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-05-03 06:55:15', NULL, '2023-04-26 06:55:18', '2023-04-26 06:55:18'),
(26, 48, '1', 'sub_1N15luAd5BfwNdqTqRIpm2Ip', 'trialing', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-05-03 07:40:24', NULL, '2023-04-26 07:40:27', '2023-04-26 07:40:27'),
(27, 48, '2', 'sub_1N16JEAd5BfwNdqTuxfB9O7Q', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 08:14:50', NULL, '2023-04-26 08:14:53', '2023-04-26 08:14:53'),
(28, 48, '2', 'sub_1N16KrAd5BfwNdqTBo9f6mnq', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 08:16:31', NULL, '2023-04-26 08:16:34', '2023-04-26 08:16:34'),
(29, 48, '2', 'sub_1N16MVAd5BfwNdqTBiAD72Zf', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 08:18:13', NULL, '2023-04-26 08:18:16', '2023-04-26 08:18:16'),
(30, 48, '2', 'sub_1N16QKAd5BfwNdqT7Na7CNM9', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-26 08:22:10', NULL, '2023-04-26 08:22:13', '2023-04-26 08:22:13'),
(31, 48, '2', 'sub_1N3ZyqAd5BfwNdqTZaKPZ0ZT', 'trialing', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-06-02 04:20:03', NULL, '2023-05-03 04:20:06', '2023-05-03 04:20:06');

-- --------------------------------------------------------

--
-- Структура таблицы `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subscription_items`
--

INSERT INTO `subscription_items` (`id`, `subscription_id`, `stripe_id`, `stripe_product`, `stripe_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 'si_NhmjdIw5qxu8zA', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-13 07:13:48', '2023-04-13 07:13:48'),
(2, 2, 'si_NhmkdXQS8js79H', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-13 07:15:02', '2023-04-13 07:15:02'),
(3, 3, 'si_NhnAw0qJ6Xwubm', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-13 07:40:54', '2023-04-13 07:40:54'),
(4, 4, 'si_NhoO2D2a40M7ty', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-13 08:57:10', '2023-04-13 08:57:10'),
(5, 5, 'si_NiATfG2sG506XO', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-14 07:46:18', '2023-04-14 07:46:18'),
(6, 6, 'si_NiAU2g8pVzpHDn', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-14 07:47:07', '2023-04-14 07:47:07'),
(7, 7, 'si_NiAVSuGfHuFdM6', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-14 07:47:43', '2023-04-14 07:47:43'),
(8, 8, 'si_Nk2Vdeqw8Be4b5', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-19 07:40:09', '2023-04-19 07:40:09'),
(9, 9, 'si_Nk2XXI1OWquAtS', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-19 07:41:44', '2023-04-19 07:41:44'),
(10, 10, 'si_Nk2YEGqarqqNwe', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-19 07:42:56', '2023-04-19 07:42:56'),
(11, 11, 'si_NkkCYTsGHKmDda', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-21 04:49:19', '2023-04-21 04:49:19'),
(12, 12, 'si_NkkF7YxCrNnJ7P', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-21 04:52:10', '2023-04-21 04:52:10'),
(13, 13, 'si_NkkJxfg5Y8wRQt', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-21 04:55:28', '2023-04-21 04:55:28'),
(14, 14, 'si_NkkS5T9RXc1HA9', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-21 05:04:32', '2023-04-21 05:04:32'),
(15, 15, 'si_NkkSUHcBsiWwNM', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-21 05:05:17', '2023-04-21 05:05:17'),
(16, 16, 'si_Nknvfkz0GNqfpz', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-21 08:39:43', '2023-04-21 08:39:43'),
(17, 17, 'si_NknzCvkP2l480f', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-21 08:43:37', '2023-04-21 08:43:37'),
(18, 18, 'si_NmbFppAiRvzAgv', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 03:42:19', '2023-04-26 03:42:19'),
(19, 19, 'si_Nmdmp3XVQWd4Xr', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-26 06:18:42', '2023-04-26 06:18:42'),
(20, 20, 'si_NmdoxT2eSGaY8J', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 06:21:00', '2023-04-26 06:21:00'),
(21, 21, 'si_NmdqIbXxU0iHLU', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-26 06:22:30', '2023-04-26 06:22:30'),
(22, 22, 'si_Nme0ohz9wUcpj4', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-26 06:32:33', '2023-04-26 06:32:33'),
(23, 23, 'si_NmeA7LCVa11nkF', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 06:42:51', '2023-04-26 06:42:51'),
(24, 24, 'si_NmeLmsEbtrtr1M', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 06:53:50', '2023-04-26 06:53:50'),
(25, 25, 'si_NmeMZxjc6Pk0Jj', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-26 06:55:18', '2023-04-26 06:55:18'),
(26, 26, 'si_Nmf6365Bl19wBm', 'prod_NhktKswr10EXrF', 'price_1MwLO8Ad5BfwNdqTY2jfObqF', 1, '2023-04-26 07:40:27', '2023-04-26 07:40:27'),
(27, 27, 'si_NmfeOTWVazrv6B', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 08:14:53', '2023-04-26 08:14:53'),
(28, 28, 'si_NmfgPtRGq4rRMR', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 08:16:34', '2023-04-26 08:16:34'),
(29, 29, 'si_NmfhJr1ug3hbpq', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 08:18:16', '2023-04-26 08:18:16'),
(30, 30, 'si_Nmfluoqia1FPHG', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-04-26 08:22:13', '2023-04-26 08:22:13'),
(31, 31, 'si_NpERpoYzqi6Lag', 'prod_Nhm5Iejw0lxkyB', 'price_1MwMXYAd5BfwNdqTvXzZAsQw', 1, '2023-05-03 04:20:06', '2023-05-03 04:20:06');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `deviceId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `nickname`, `uuid`, `email`, `email_verified_at`, `deviceId`, `payment`, `birthDate`, `gender`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'coldunbushido', 'dasdadd', 'dadad#1391', '4844d3bd-8c65-4f16-ab16-56d392c6034a', 'marlen@gmail.com', '2023-05-09 09:30:14', '1', NULL, NULL, 'male', '$2y$10$BuSJa3F3cb2E8VppMVDThe9WQtD50wEtk.ib9I50AkYnKyL901PkO', 'user', NULL, '2023-05-09 09:29:21', '2023-05-09 11:09:00'),
(9, 'coldun', 'dasdadd', 'dadad#1392', '86223799-9bc6-4c30-b5db-67f9fab63b25', 'mardsdlen@gmail.com', NULL, '1', NULL, NULL, 'male', '$2y$10$NvQp2W.jlZdc6TzZhqXwPOJVnbwHnkLgoict4PJe5KPwI3UGxo.pO', 'user', NULL, '2023-05-09 11:03:58', '2023-05-09 11:03:58');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Индексы таблицы `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nickname_unique` (`nickname`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
