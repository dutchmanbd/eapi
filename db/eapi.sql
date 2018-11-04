-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2018 at 06:57 PM
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
-- Database: `eapi`
--
CREATE DATABASE IF NOT EXISTS `eapi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eapi`;

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
(3, '2018_11_02_144950_create_products_table', 1),
(4, '2018_11_02_145014_create_reviews_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

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
('15cbb20d08c1adeb24b59a8d1884bdc6dd56d917e7482d301ebdceb670af28870508f5b694e2b4fd', 1, 5, NULL, '[]', 0, '2018-11-03 02:18:47', '2018-11-03 02:18:47', '2019-11-03 08:18:47'),
('9f5b977be1bf2b5b0767aa8906d57e08c1e94f99d92f158a656a2b3c4b17cbb6dbefa05adc53850b', 1, 5, NULL, '[]', 0, '2018-11-03 01:51:27', '2018-11-03 01:51:27', '2019-11-03 07:51:27');

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
(1, NULL, 'Laravel Personal Access Client', '9vXrFvFY4ENeEFJM0KnqRfOB5pQdE7Sy0fiNCf1m', 'http://localhost', 1, 0, 0, '2018-11-03 00:26:07', '2018-11-03 00:26:07'),
(2, NULL, 'Laravel Password Grant Client', 'qbAjxz7b1bCWwv4WMximp159JvjJ2REFCM72ie8c', 'http://localhost', 0, 1, 0, '2018-11-03 00:26:07', '2018-11-03 00:26:07'),
(3, 1, 'test', 'dYmmZk4mhaS03JoyPGRSSdDjCXWM8M7pDUXjR3G0', 'http://localhost/callback', 0, 0, 0, '2018-11-03 01:31:05', '2018-11-03 01:31:05'),
(4, 2, 'Tarin', 'GRvO2O1MEN7R66zQBZXRqmKijsnAiZwLGE7fz2Y6', 'http://localhost/auth/callback', 0, 0, 0, '2018-11-03 01:38:05', '2018-11-03 01:38:05'),
(5, 1, 'password', 'Tb4E5n7ovayWTmrvA3W1OEjN3aBC4xz5dvSV9yYK', 'http://localhost', 0, 1, 0, '2018-11-03 01:43:15', '2018-11-03 01:43:15'),
(6, NULL, 'Laravel Password Grant Client', 'dSRbzY6WCZoahoPeZRZV4nJ9O5qLs08j4MBagrEr', 'http://localhost', 0, 1, 0, '2018-11-03 01:44:28', '2018-11-03 01:44:28');

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
(1, 1, '2018-11-03 00:26:07', '2018-11-03 00:26:07');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('431a91fc6ebefcd6c658c3375a56546f50311d60b149aed1f80198627c58bdaba6b1422374f6eda2', '9f5b977be1bf2b5b0767aa8906d57e08c1e94f99d92f158a656a2b3c4b17cbb6dbefa05adc53850b', 0, '2019-11-03 07:51:27'),
('4863511b82eaeef6699814395644325e182d5efebd3613d0a8e6214f2a1688b4712cf562ea61f046', '15cbb20d08c1adeb24b59a8d1884bdc6dd56d917e7482d301ebdceb670af28870508f5b694e2b4fd', 0, '2019-11-03 08:18:47');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'aperiam', 'Ullam maiores sunt temporibus ut rerum rem ut veniam. Unde minima sed maiores cum quis libero sint. Quaerat ab fugiat possimus aut aut qui.', 478, 7, 9, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(2, 'nemo', 'Dolorem voluptas laboriosam temporibus excepturi nihil numquam velit. Omnis explicabo sed et repellat sit officiis temporibus.', 800, 3, 6, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(3, 'et', 'Enim assumenda quia labore vero. Est nobis eum non. Aut eum aliquam sunt voluptas recusandae velit laudantium. Est aut debitis voluptas cumque nostrum fuga.', 428, 6, 2, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(4, 'ad', 'Debitis eligendi sint odio dolore. Enim dolores id consequatur autem ut esse fugit. Fugiat sunt sunt atque ipsam. Debitis harum aut et modi.', 652, 4, 18, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(5, 'id', 'Sed dolores voluptatibus dolores. Et id veniam recusandae occaecati quam enim debitis. Occaecati voluptates labore rem quidem est eius.', 662, 2, 13, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(6, 'ea', 'Esse quis minus corrupti earum est repellat magni. Et impedit voluptate natus amet error perspiciatis amet. Omnis reiciendis veniam explicabo voluptas sed.', 650, 3, 26, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(7, 'dolor', 'Sit eum fuga assumenda dicta omnis. Minima necessitatibus reiciendis dolorem vel aut omnis et. Sed eligendi aliquid quaerat exercitationem et autem. Ea earum quo voluptatibus commodi voluptatem quidem repudiandae nesciunt.', 345, 0, 18, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(8, 'reiciendis', 'In voluptates suscipit fugit non exercitationem ut. Et soluta illo dolores voluptatibus eveniet odio nisi. Qui dolor magnam ratione id eligendi maxime.', 930, 0, 29, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(9, 'delectus', 'Facere voluptatum ducimus eius autem quae voluptas. Laudantium dolores et non qui quaerat est. Omnis magni cumque quo vel ad eveniet voluptatum.', 559, 5, 20, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(10, 'sapiente', 'Qui saepe quod odio dolor. Impedit blanditiis non accusantium. Est dolor aliquid dignissimos esse ut amet. Consequatur est ullam sit eos aspernatur quasi rerum. Nisi ut ut voluptas.', 146, 2, 2, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(11, 'fugiat', 'Praesentium qui voluptas delectus perferendis nesciunt quos. Enim sit aut nam consequuntur. Voluptas voluptatem rerum corrupti exercitationem quia tempora quis.', 588, 2, 29, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(12, 'enim', 'Voluptatem magni porro dolorum repellendus aut eius. Et quisquam tempora sed necessitatibus. Sit et in aliquam maiores eos molestiae.', 260, 6, 17, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(13, 'et', 'Non voluptates est aut. Voluptate quis sint iusto. Ad voluptas aut est quia. Ut quia officia laborum ratione nesciunt nostrum at.', 817, 3, 3, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(14, 'est', 'Doloribus consequatur voluptatem qui. Quo consequuntur sed suscipit qui. Veritatis accusantium illum a voluptatibus harum id at rerum.', 538, 3, 22, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(15, 'at', 'Tempora eius quia delectus laborum voluptatem aliquid velit. Nesciunt eos aliquid distinctio officia quo. Accusantium laboriosam sint dolore consequatur ab aut officiis. Molestias voluptas vel dolor soluta dolorum magni.', 151, 0, 30, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(16, 'minima', 'Adipisci quibusdam cum maxime autem aut. Cupiditate dolorem veritatis minima ipsa ipsum.', 601, 2, 22, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(17, 'consequatur', 'Modi praesentium aut cumque enim quos et. Numquam neque rerum et nemo et. Laboriosam sapiente enim voluptatem alias. Debitis provident minus quos.', 442, 3, 8, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(18, 'error', 'Vitae quia et accusamus sit. Ullam voluptatem suscipit quis incidunt deleniti. Quia maxime itaque iusto culpa vitae. Est quidem sed vel sit eum voluptas.', 957, 2, 10, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(19, 'similique', 'Officiis consequatur quam eos iure dicta minima. Sunt qui saepe quod et officia. Aliquid reiciendis velit ut dolor. Repudiandae velit iste consectetur repellendus reiciendis earum consequuntur.', 702, 0, 12, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(20, 'unde', 'Occaecati nihil enim aliquam quam. Ut consectetur esse omnis aut odit voluptas. Neque consectetur optio dolor aut deserunt nulla velit velit. Non at eos placeat non quis.', 249, 0, 15, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(21, 'impedit', 'Debitis ut omnis occaecati impedit et similique. Odit qui ratione impedit tempore consequatur magnam itaque. Qui molestias fuga rerum corporis omnis repudiandae tenetur ut. Debitis quia consequatur ut temporibus error aut perferendis quae.', 209, 3, 7, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(22, 'impedit', 'Perferendis commodi aliquam ex quos voluptas. Culpa quam tenetur eveniet blanditiis dolorem exercitationem. Veritatis expedita pariatur odio quis. Sed officiis laboriosam ipsa temporibus qui est. Voluptatum alias soluta voluptatem id pariatur.', 174, 7, 6, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(23, 'veritatis', 'Ipsam fugit fugiat enim soluta itaque. Similique et alias iste sed magnam. Voluptatibus sint praesentium aperiam numquam porro.', 717, 9, 3, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(24, 'reprehenderit', 'Sint facere qui unde sequi nihil consequuntur. Nemo qui voluptatem impedit amet odio sequi. Odio earum incidunt quia. Dolores facilis adipisci sit nostrum voluptates sit omnis.', 406, 6, 2, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(25, 'sed', 'Cum odit quisquam dolor. Sed aut inventore magni similique voluptate vel. Illo qui et porro labore molestiae sunt. Voluptas saepe deleniti impedit dolorem qui consequuntur veniam.', 249, 2, 23, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(26, 'iure', 'Nam tempora vero nulla accusantium aut. Laborum ut nobis neque autem ut. Quibusdam sunt numquam ut quos est et qui.', 776, 1, 4, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(27, 'non', 'Voluptatem accusantium doloremque autem veritatis voluptatum ut et. Velit nobis dignissimos nisi nulla. Reiciendis deleniti iure optio beatae aliquam vitae dolorem.', 356, 4, 14, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(28, 'ex', 'Ipsam odit sequi porro tempora rerum suscipit rerum. Odit doloremque consequatur consequatur consequatur. Iste rerum facilis accusamus quidem placeat perspiciatis quia. Omnis doloremque autem eius voluptates molestiae voluptas consequatur.', 440, 9, 18, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(29, 'quae', 'Non et repellendus aliquam non qui aut. Cum atque similique debitis architecto consequatur cum. Voluptas reprehenderit accusantium vero. Provident occaecati eum dolor sed itaque corporis aut aperiam. Est animi excepturi omnis sapiente magni eos.', 451, 4, 6, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(30, 'natus', 'Incidunt aliquam sed corrupti consequatur sit occaecati. Voluptatibus necessitatibus totam voluptatibus pariatur. Sunt temporibus culpa iusto totam. Vel eos vitae iusto. Dolorem animi ut quisquam vitae.', 936, 2, 15, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(31, 'earum', 'Minus sed nesciunt quia sit et. Voluptatem et nihil exercitationem harum dolore eum atque sed. Animi debitis qui ut quia consectetur in.', 408, 4, 11, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(32, 'ipsum', 'Ipsam qui sed dolores fugiat eligendi. Atque hic repellat facere repudiandae iusto ullam. Recusandae quisquam ea sit.', 499, 0, 11, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(33, 'non', 'Quia et accusamus temporibus nobis dolore quaerat veritatis porro. Alias eius est eveniet necessitatibus. Ut quidem vitae est enim hic error.', 814, 2, 14, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(34, 'quo', 'Ea quasi maxime nemo iure odio repellat. Totam est blanditiis dolorem aut. Delectus deserunt velit fuga quos ex esse.', 375, 8, 12, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(35, 'provident', 'Cumque vitae et illo totam odio et. Velit suscipit aspernatur voluptas. Autem inventore nostrum sapiente quaerat neque qui consequatur. Est accusantium explicabo dolor quo.', 667, 1, 4, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(36, 'saepe', 'Ex maiores voluptatum quos sed sit recusandae aperiam. Enim suscipit ut numquam sequi at doloremque aut. Qui dolores reiciendis aut esse est harum. Ea maxime sint a unde maxime fuga corporis.', 554, 2, 22, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(37, 'numquam', 'Rem nam dolore omnis enim soluta. Debitis blanditiis omnis maxime reiciendis et ut. Dicta earum deleniti aut qui perferendis. Vero voluptatibus quo iure velit.', 938, 9, 15, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(39, 'architecto', 'A consequatur qui commodi ut aspernatur reprehenderit laboriosam. Omnis ipsa eum praesentium iusto consequatur et. Nihil exercitationem quasi sequi.', 303, 7, 11, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(40, 'qui', 'Delectus libero est recusandae sed. Ut quia natus et omnis aut odio consequatur sed. Unde quas numquam autem debitis. Ut placeat tempora quos expedita.', 600, 3, 11, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(41, 'et', 'Sed itaque eos veniam laboriosam est eos sit recusandae. Necessitatibus dolor voluptas incidunt omnis eos id.', 586, 4, 11, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(42, 'qui', 'Quo et et consequatur dolores et officiis. Eius amet ab rem quas assumenda maxime voluptatum et. Tenetur dolores dolor est. Aut eligendi enim earum quibusdam voluptatum autem cum.', 364, 7, 18, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(43, 'maxime', 'Unde blanditiis libero non maxime ut. Est et dolor non et facere labore earum.', 972, 9, 16, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(44, 'in', 'Magnam magni omnis ullam accusantium voluptas quisquam. Voluptatum quidem corrupti laboriosam veritatis.', 726, 7, 14, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(45, 'nihil', 'Aut aut dolores provident iusto natus. Nesciunt adipisci nihil ea odio non. Qui iusto vero doloremque et expedita maiores distinctio. Hic qui id non magnam ut voluptatem aut.', 865, 6, 9, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(46, 'commodi', 'Accusantium tempora aperiam provident in. Commodi quia illum non nihil quia maiores. Amet amet sapiente voluptates debitis laboriosam nulla reprehenderit. Dicta quidem tenetur veniam non. In quod atque nihil doloribus quasi.', 763, 2, 16, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(47, 'ad', 'Fuga aut qui doloremque modi minus. Voluptatibus architecto commodi tempore quasi autem consequuntur consequatur. Qui qui voluptas facere optio. A qui quidem nihil porro.', 150, 5, 11, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(48, 'sit', 'Temporibus et unde est voluptatibus quae reprehenderit. Aliquam impedit iusto natus saepe voluptatibus aspernatur. Labore omnis occaecati aliquam facilis rem quo.', 112, 1, 8, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(49, 'eum', 'Beatae voluptas libero sit perspiciatis animi sapiente debitis. Nulla est rerum consequatur maxime dolores sapiente. Tenetur autem et totam porro. Ducimus aut laudantium est tempora ratione qui enim.', 907, 2, 22, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(50, 'deleniti', 'Doloribus et eaque illo dolor molestiae quae rerum. Beatae ullam fugit deleniti hic eius. Pariatur eveniet animi et praesentium aut nemo est. Ratione aut quia sit nulla nobis sed. Ab ab quaerat beatae saepe.', 755, 6, 21, '2018-11-02 11:46:34', '2018-11-02 11:46:34'),
(51, 'aut', 'Et aliquid dolores veritatis rerum est. Corporis consequatur at quas iste id velit quos. Enim assumenda aut rerum vel et modi ullam expedita. Ex consequatur similique possimus illum necessitatibus officia.', 626, 2, 28, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(52, 'aut', 'Reiciendis quibusdam sit non ipsam non. Ad quo eveniet sed voluptate voluptas. Laboriosam quam dolore eum quas. Ratione voluptas et asperiores.', 857, 8, 2, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(53, 'aut', 'Quae illum unde quas consequatur repellat ab rem. Quae incidunt ipsam magnam in laudantium. Qui dolores occaecati perspiciatis dolorem alias aut. Eius eos aut provident fugit omnis.', 923, 1, 8, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(54, 'pariatur', 'Incidunt recusandae fugit voluptates deleniti deserunt voluptates. Eum accusantium architecto quod aut repudiandae neque dolorem praesentium. Est voluptas unde omnis eos quae aut tempore. Veniam qui inventore earum soluta tenetur sit.', 986, 9, 2, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(55, 'dolores', 'Non vel ut totam molestiae vitae libero. Autem sit dolorem porro est ipsam animi facilis.', 480, 4, 21, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(56, 'neque', 'Et voluptate temporibus repellendus harum reiciendis. Velit est ea quasi sapiente minus modi libero. Molestiae est omnis quisquam aliquid aut ut omnis.', 515, 8, 21, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(57, 'magnam', 'Soluta animi non est ut tempora consectetur perspiciatis. Nostrum laboriosam qui tempora similique ducimus quasi fugit ducimus. Voluptatem et velit natus.', 455, 4, 9, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(58, 'doloremque', 'Officia blanditiis nihil voluptatem beatae dolorem id quibusdam. Quia consectetur recusandae recusandae incidunt placeat aut. Sit quas alias vero delectus ullam consequatur qui.', 487, 5, 30, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(59, 'architecto', 'Ullam voluptatem error molestias quia veniam harum eum porro. Quasi voluptas fugit accusamus sunt placeat soluta praesentium. Accusantium ut maiores sit cumque. Dolorem et voluptate dolorum quia et.', 929, 3, 12, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(60, 'quos', 'Nulla porro quidem debitis blanditiis in. Voluptas rerum aut ratione atque. Quia ullam numquam et exercitationem. Sed rerum deserunt quas.', 847, 0, 4, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(61, 'dolores', 'Magni quidem molestiae amet qui. Dolor ut explicabo voluptate illo doloremque omnis aut. Odio non iste aut unde fuga. Est deserunt vitae accusamus qui est cumque.', 954, 5, 8, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(62, 'quae', 'Animi voluptas aspernatur est quia officia voluptas. Excepturi fuga natus facere nihil dolorem eveniet. Quo quo corporis soluta est molestiae. Voluptatem in delectus aut amet natus excepturi. Et numquam tempora asperiores fugit in aliquid qui.', 238, 9, 7, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(63, 'ut', 'Voluptatem doloribus in quam debitis quae laudantium. Inventore aut beatae vitae soluta maxime. Autem deleniti omnis repellendus porro.', 987, 2, 13, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(64, 'perspiciatis', 'Error iste natus perspiciatis mollitia quia labore similique. Ipsa modi non vitae quis similique eum. Amet aut tempora fuga quia et deleniti. Iure debitis repellendus quasi sunt consequatur dolore ut.', 244, 4, 7, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(65, 'veniam', 'Velit nihil debitis maxime molestiae. Et quis sint veniam aut. Dolore velit consequatur nihil quia nihil est ad. Odit repellat distinctio quas aliquid incidunt et.', 172, 5, 30, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(66, 'neque', 'Ea ut laboriosam nam veritatis. Quas et perspiciatis maxime molestiae corporis corporis deserunt expedita. Quia et minima sit quisquam.', 913, 8, 26, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(67, 'temporibus', 'Et expedita inventore delectus quo. Perferendis dolor corporis molestiae veritatis. Rerum animi perferendis cum sit et aut est. Ipsa aperiam qui id enim.', 935, 6, 29, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(68, 'minus', 'Quis dicta perferendis officiis consequuntur voluptatem tenetur adipisci qui. Consectetur doloribus dignissimos adipisci fugiat voluptatem quia. Magnam aut sit eius voluptates.', 863, 3, 24, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(69, 'ipsa', 'Sed fugiat quisquam quia magni. Beatae pariatur nobis omnis provident.', 380, 5, 23, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(70, 'ipsa', 'Itaque est voluptatem a. Architecto architecto corporis nostrum aliquam nihil accusamus odit. Fugit officiis est officia dicta eligendi. Quod dolorem eius amet harum ratione in ipsum.', 322, 7, 17, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(71, 'veniam', 'Consequatur quia assumenda omnis. Distinctio sequi et saepe voluptate et ut. Laboriosam culpa harum rerum quae architecto quasi omnis. Voluptatibus accusamus consectetur dolorum.', 998, 0, 4, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(72, 'fugit', 'Nemo occaecati impedit nihil minus amet. Consequatur rerum ullam sed reprehenderit molestiae dolores velit. Voluptatibus blanditiis ratione quo veniam aut molestiae ad eum. Dolor ut ipsum eos qui sit temporibus.', 689, 8, 27, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(73, 'illum', 'Mollitia cum est cumque error tempora blanditiis. Ut ipsam minima aspernatur. Sint quisquam officia consectetur a repellat.', 397, 5, 24, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(74, 'corrupti', 'Occaecati laudantium sunt autem dolores odio voluptas. Aut blanditiis est et ab illo. Praesentium sit repellendus sapiente quisquam blanditiis iure. Cum ab dolorum illum ab facere sed est.', 695, 0, 2, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(75, 'illum', 'Reiciendis ut et enim excepturi ut autem quia. Temporibus aliquid aut perspiciatis magnam molestiae fugiat.', 817, 6, 21, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(76, 'magni', 'Dicta quis velit est veniam id. Fuga totam officia modi a odio. Consequatur quo quod repellat consectetur officiis. Velit a accusantium doloremque atque.', 747, 4, 30, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(77, 'reiciendis', 'Dicta possimus consequuntur aut. Est non delectus et nihil velit aut mollitia perferendis. Suscipit id officiis aperiam dolor aspernatur veritatis. Animi deleniti ut consequuntur itaque harum pariatur corporis.', 558, 7, 9, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(78, 'et', 'Eum dolorem vel omnis quas. Magnam omnis dignissimos optio suscipit sit. Quidem nihil ab atque labore nihil magni vel. Voluptatem porro est quisquam beatae.', 226, 5, 24, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(79, 'et', 'Consequatur consequuntur consequatur veniam veritatis et itaque. Accusamus sint voluptatum odit et. Quidem et deleniti sint sed dolorem tenetur. Nulla in unde molestias ea possimus.', 163, 9, 3, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(80, 'sunt', 'Et quia est sint repellat ea quibusdam odit illum. Quasi vel dolore eligendi iusto vitae itaque. Vero expedita veniam veritatis et harum.', 611, 8, 21, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(81, 'corporis', 'Et accusamus quia a consectetur. Quae qui necessitatibus autem repellendus. Placeat laborum soluta voluptatum suscipit totam et. Tempora laboriosam dolorem quia odio aut et sed.', 944, 2, 2, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(82, 'aliquam', 'Molestiae atque officia quisquam vitae dolorem amet excepturi. Ipsum quas nihil est dignissimos natus voluptas. Numquam quidem quam provident perspiciatis eaque voluptatem. Debitis quasi et enim numquam debitis.', 917, 2, 7, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(83, 'accusamus', 'Non quam dolores sunt. Debitis adipisci aut vel beatae ab incidunt dolorem. In ea modi ad officiis ut et.', 241, 8, 28, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(84, 'aperiam', 'Quis voluptas rerum veritatis voluptate blanditiis non deserunt. Quidem pariatur qui asperiores maxime. Rerum incidunt autem quas dolore veritatis. Non ullam omnis voluptatem cumque.', 455, 0, 26, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(85, 'minus', 'Vel reiciendis molestiae blanditiis nostrum. Eaque et velit minima ut maiores voluptas. Totam similique laudantium sunt ut est non.', 212, 4, 18, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(86, 'tenetur', 'Debitis ut doloribus voluptas enim. Vel porro quia tempora non provident aspernatur. Dicta laudantium dicta sint dolor ut qui alias amet. Ut nihil consequatur accusamus unde.', 640, 3, 16, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(87, 'ratione', 'Asperiores earum velit alias sint nemo. Tempora ducimus cumque omnis expedita tenetur excepturi. Autem nulla ut illo ea quas velit.', 632, 4, 8, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(88, 'sed', 'Sit minus perferendis ratione dicta et. Reiciendis voluptates mollitia ex aliquid non laborum repellendus. Excepturi facere sed eos et dolores et.', 405, 1, 18, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(89, 'eligendi', 'Harum in eveniet iste consequatur molestias cumque incidunt. Laborum maiores nihil minima. Quis blanditiis adipisci aliquid quaerat culpa officia.', 733, 6, 29, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(90, 'cumque', 'Rerum minima iure aperiam eos. Animi est omnis quia repellat laboriosam aut.', 642, 7, 27, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(91, 'amet', 'Qui culpa non qui dolorum ut quia. Aut non incidunt est eius recusandae. Sit exercitationem nulla soluta sit. Laboriosam consectetur est odit soluta et sunt expedita.', 699, 0, 17, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(92, 'unde', 'Est error est molestiae omnis saepe. Laudantium qui et libero fugit. Et voluptatibus eligendi vitae blanditiis aperiam ut repellendus.', 923, 6, 6, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(93, 'sint', 'Voluptates et et cum autem. Non illum reprehenderit aperiam. Illo deleniti nisi inventore unde molestiae voluptas eaque.', 486, 0, 27, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(94, 'vitae', 'Est incidunt dolorem voluptatem debitis unde. Quis blanditiis recusandae assumenda quibusdam ipsum dolore. Odio assumenda mollitia voluptas.', 292, 2, 17, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(95, 'libero', 'Ipsa ipsam fugit esse et magni consequatur consequatur aut. Quae dignissimos cumque non nam qui. Commodi aut qui harum et aut. Et fugiat alias repudiandae quia facilis. Aspernatur earum omnis dolor consequatur laboriosam dolor.', 757, 0, 16, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(96, 'quos', 'Aspernatur harum non libero perferendis qui possimus facilis occaecati. Ut consequatur velit animi repellendus dolore vero aliquid. Voluptatibus ratione quo in velit dolor corrupti provident. Quia velit culpa eligendi. Illum ut perferendis quasi ea quae doloribus.', 971, 3, 8, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(97, 'nulla', 'Exercitationem non ut quidem animi ut accusantium. Dolores earum qui nesciunt quia cum repellat et. Ducimus quia non fugit consequatur.', 991, 1, 17, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(98, 'voluptatem', 'Ullam magnam reiciendis rerum dolorum aut qui eius. Placeat consequatur dolor possimus maxime adipisci nesciunt. Deserunt odio voluptatem non itaque fuga aperiam veritatis. Sed sapiente ratione reprehenderit non libero est.', 873, 7, 6, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(99, 'iure', 'Cum fugiat blanditiis labore itaque minus. Porro accusantium et omnis non nesciunt.', 127, 8, 5, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(100, 'eos', 'Consequatur qui eligendi aliquid iste est sit eveniet. Non laborum fuga dolores impedit ut eligendi eum. Quia odit soluta qui aut itaque ut. Quas error qui dolore voluptas sapiente quasi.', 176, 2, 2, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(101, 'Iphone X', 'The best ever phon with  face Id', 100, 10, 50, '2018-11-03 02:46:26', '2018-11-03 02:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 74, 'Lacy Satterfield', 'Perferendis eaque repellendus in accusantium iusto quis a. Libero veritatis aut ut incidunt modi. Neque laboriosam aut officia occaecati dolores quo. Dolores non corrupti assumenda velit. Unde sit voluptates architecto labore.', 5, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(2, 63, 'Mariam Emmerich', 'Commodi corporis aliquam libero earum et. Magnam nesciunt qui praesentium voluptas fugit. Facere facilis qui consequatur. Et aut qui architecto tempora aut.', 1, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(3, 73, 'Jamil Ruecker', 'Quam maiores molestiae ea totam fuga. Cum numquam consectetur odit reiciendis fugiat est. Fugiat aut voluptatem alias ab et qui vel est.', 1, '2018-11-02 11:47:52', '2018-11-02 11:47:52'),
(4, 24, 'Dr. Charity Botsford', 'Vero dolorem suscipit sit molestias non distinctio quis. A qui sit esse sunt voluptatum ut. Beatae architecto dolorem ad ut voluptas fugit reprehenderit qui.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(5, 17, 'Lia O\'Keefe', 'Nulla quo repudiandae consequatur voluptates libero quas. Optio sequi repellendus voluptatum in ut. Provident sunt aut veritatis voluptate aut. Quia quisquam laudantium quasi nemo eos esse quas. Necessitatibus harum sed natus nostrum labore sunt nihil aliquam.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(6, 86, 'Seamus Denesik', 'Aut ab numquam vel maiores perferendis. Ut voluptatem et nobis similique.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(7, 47, 'Shawn McGlynn', 'Sit voluptatem quis laborum sed consequatur temporibus. Qui rerum sint temporibus.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(8, 68, 'Floy Bergstrom DDS', 'Debitis non deserunt dignissimos dolores architecto. Aspernatur tenetur sint odit. Quaerat eos et voluptatem porro esse sequi aut. Blanditiis vitae velit adipisci molestiae. Nemo voluptate et ipsam non facere autem maxime.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(9, 93, 'Ms. Laurie Hane DVM', 'Facilis suscipit similique a recusandae id. Repudiandae eos veritatis quidem inventore non similique. A illo qui eius quis nostrum non.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(10, 45, 'Clarissa Walter', 'Totam ipsum consequatur accusantium commodi cum. Consequatur tenetur repellendus accusantium adipisci. Sit reprehenderit nesciunt quo occaecati aspernatur.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(11, 85, 'Ruben Hirthe', 'Doloribus dolores officiis nisi enim vitae necessitatibus. Et est et sunt sint quisquam repudiandae. Ut neque cum totam quasi quaerat in aliquam.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(12, 28, 'Guadalupe Medhurst', 'Cumque explicabo impedit et cumque qui fuga commodi nemo. Corporis dolorum et eaque temporibus quis numquam. Ipsum eius quia dolor quidem.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(13, 4, 'Madisyn Russel', 'Modi quae ad consectetur sit dolores similique qui. Dicta debitis sed sit. Dicta nesciunt porro repudiandae saepe aut nam eligendi. Repudiandae veritatis quam omnis animi soluta et ea ex.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(14, 86, 'Darian Stokes', 'Quis aperiam laboriosam qui tenetur ea. Quis voluptatem quis est amet non rerum. Necessitatibus quasi praesentium nihil aut. Tenetur quia autem sed eligendi quidem.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(15, 60, 'Ryleigh Kozey Jr.', 'Eligendi voluptas optio at et id numquam vitae. Aspernatur voluptatem ut magni maxime est ut. Id maiores autem quo quae maxime ipsa.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(16, 97, 'Clementina Schroeder DVM', 'Ut quos sed neque sed. Cupiditate est ipsum magnam distinctio aspernatur similique necessitatibus. Sed est dolores doloribus tenetur voluptatem in.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(17, 40, 'Mr. Abraham Friesen', 'Laborum facilis omnis odio vel vero at. In sed odio necessitatibus in id sunt magni amet. Ratione reprehenderit est accusantium ipsa. Minus perspiciatis illo provident.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(18, 21, 'Ladarius Reynolds DVM', 'Eius labore commodi iure rerum distinctio. Quam sapiente quod qui quae veniam ducimus id voluptates.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(19, 34, 'Prof. Eleanore VonRueden', 'Cumque quo at placeat. Fugit et placeat odio iste vero ipsam perspiciatis. Aspernatur totam libero dolores commodi ea.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(20, 81, 'Nyah Raynor', 'Id officia soluta est est expedita. Rem quia possimus ratione.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(21, 91, 'Elissa Cummings', 'Nemo harum voluptas dolorum sed voluptas officia. Sit sit ut quia cupiditate est qui. Officiis expedita nam et aliquid id sapiente vel maxime. Est id minus deserunt corporis quia.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(22, 61, 'Sheridan Ondricka', 'Animi est itaque ipsa natus adipisci eligendi perspiciatis autem. Nam totam nostrum beatae blanditiis possimus sed natus. Magnam perspiciatis perspiciatis ipsa quis ratione soluta.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(23, 66, 'Alvah Turner', 'Optio nobis odio voluptatibus perferendis magni incidunt impedit. Corporis hic dignissimos doloremque recusandae occaecati. Vel iste distinctio aliquam sint aut. Tempore ut dolorem repudiandae delectus saepe id doloribus sed.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(24, 81, 'Alivia Little V', 'Et ad non sed velit quaerat. Ipsa ad vel laudantium et inventore iusto a. Est non est est quo id dolor.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(25, 2, 'Dr. Eladio O\'Kon Jr.', 'Inventore labore provident sequi adipisci voluptatum qui non. Delectus eum voluptatem deserunt accusantium excepturi quasi. Iure sed magnam inventore magni. Accusamus consequatur sequi expedita fugiat reprehenderit ipsam asperiores.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(26, 31, 'Marcellus Williamson', 'Consequatur aut delectus corporis sequi. Quo laborum ea cupiditate sed eveniet ipsa. Quam repudiandae aut maxime aut alias iusto voluptas. Sequi dolor laborum aut animi omnis.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(27, 97, 'Lamont Denesik', 'Harum eligendi aspernatur et autem amet quidem. Et non sunt nobis fugiat quam quia voluptatem. Molestias eum hic et corrupti labore qui et. Et qui quam sed id recusandae.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(28, 37, 'Lesly Will Jr.', 'Aut alias qui voluptate aut aliquid ad vitae. Quo quia dolor omnis soluta ipsum. Eligendi quia laudantium magnam voluptates accusantium. Repellat soluta non molestias est perspiciatis excepturi voluptatum.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(29, 78, 'Aisha Littel Sr.', 'Est adipisci assumenda et ut. Molestias earum aliquam et odit qui. Omnis eum consequuntur tempora. Molestiae eos labore earum nulla.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(30, 75, 'Miss Heaven Howe', 'Nostrum magnam sunt reiciendis magni modi provident minima et. Nostrum et aut veniam dignissimos dolorum dolores ipsa nobis. Dolorum ut quasi aperiam sapiente.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(31, 76, 'Jermaine Tillman DDS', 'Ut minima id voluptate ducimus. Error ex enim quis eos veritatis distinctio.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(32, 9, 'Sedrick Lowe', 'Rem saepe earum quisquam rem voluptatibus. Ut quo error ut hic non consequatur voluptates ut.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(33, 48, 'Miss Jude McGlynn II', 'Modi quae ipsam repellat voluptas. Harum consequatur quis eius minus aut expedita. Et ipsam atque et consequuntur nostrum repellendus velit qui.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(34, 30, 'Dr. Serena Goodwin', 'Quia rerum consequatur et autem voluptas esse deserunt. Officia iusto laborum esse molestias est. Non officiis sit neque earum ut et accusantium. Aut odit necessitatibus quos perspiciatis commodi rerum.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(35, 55, 'Luisa Wuckert', 'Quia ut nihil natus ut aliquam eos ut. Magnam doloribus excepturi sed illo ipsam qui exercitationem quaerat.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(36, 45, 'Merle Thompson DDS', 'Fugit consectetur porro et. Dolores et recusandae omnis rerum quas.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(37, 40, 'Miss Lilliana Kessler DDS', 'Quia aut aut in odit voluptas. Qui reiciendis id sed cumque.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(38, 20, 'Ernesto Skiles', 'Molestiae quis voluptatem quis doloribus mollitia. Ut at aspernatur consequuntur amet et. Minima voluptatem quibusdam nihil facere inventore et.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(39, 82, 'Mr. Howell Stiedemann III', 'Sed dolorem dolore unde ex sapiente earum. Et nulla labore asperiores est. Assumenda dolore tempore molestiae voluptate veniam ut quo perferendis. Soluta aut odio fuga et assumenda.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(40, 32, 'Julie Balistreri', 'Odio sequi dolore odit eveniet voluptas corrupti ut. Sapiente ad earum quisquam molestiae et dignissimos voluptatum vitae. Incidunt earum reprehenderit dolor modi. Veritatis exercitationem enim assumenda nam non.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(41, 61, 'Tiffany DuBuque', 'Hic et vel qui modi ullam. A dolores numquam sit et cum nisi ducimus expedita. Voluptas quisquam facilis nesciunt voluptas adipisci. Illum nostrum mollitia aliquam est perferendis culpa sunt. Consequatur dolor voluptatum et saepe ut aspernatur.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(42, 48, 'Kasandra Lebsack', 'A vitae itaque assumenda dolore voluptatem. Repellendus asperiores odit sit incidunt ut. Ut exercitationem ullam quis aspernatur perferendis pariatur mollitia. Neque odit est cupiditate quae.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(43, 65, 'Lavern Schinner', 'Molestiae esse incidunt dolores et officiis et. Non repudiandae omnis ad numquam molestias quisquam reprehenderit explicabo. Rem corrupti est eaque repellat eos. Laudantium quo est neque expedita vel necessitatibus sed.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(44, 75, 'Prof. Nichole Beer', 'Qui qui fugiat est harum esse. Dicta reprehenderit placeat eum voluptas enim hic ut. Suscipit rerum maiores officia impedit. Nam in ab sit ut dolorum consequuntur magnam.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(45, 1, 'Deon Bahringer PhD', 'Rem blanditiis ea sequi fuga et dolor. Illo consequatur laudantium est sunt minus aperiam aut. Architecto itaque qui ex similique alias.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(46, 77, 'Ms. Felicity Bogisich Sr.', 'Earum pariatur ratione autem repudiandae libero. Rerum exercitationem id hic corrupti recusandae. Laboriosam suscipit amet est nesciunt quod eum praesentium. Harum quam est aut sint similique nihil iste.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(47, 22, 'Beth Dickinson', 'Rerum itaque dolores aut qui iure excepturi. Ut est accusantium iste a qui. Repudiandae rerum soluta modi excepturi odio dolore.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(48, 77, 'Miss Roxane Barrows', 'Blanditiis ut qui sit dolore unde accusamus natus. Ad quaerat sit laudantium ut sed quos delectus. Exercitationem dolorum et nesciunt voluptatem. Doloremque quis vel accusantium eius in in ut pariatur.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(49, 47, 'Berniece Blanda', 'Quaerat vel ullam consequuntur aut voluptas. Aspernatur et harum assumenda quibusdam voluptas provident. Mollitia in vel sit.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(50, 13, 'Daron Hills', 'Aperiam nam occaecati necessitatibus sed et quo. Qui quidem sint quod voluptatem vel exercitationem esse. Sed voluptas cupiditate iure.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(51, 35, 'Naomi Lindgren', 'Provident atque vel qui qui consectetur nam praesentium. Dolorem sed placeat odit alias. Quod laboriosam voluptatem autem nam dolores. Earum odio at aut aperiam est temporibus qui.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(52, 81, 'Mrs. Lolita Armstrong', 'Enim nam aut est quod nesciunt. Architecto debitis nihil est ab. Molestias facere sed maiores ut.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(53, 98, 'Dr. Heaven Macejkovic', 'Iure sint nihil repudiandae similique distinctio. Hic itaque vel magni illum dolor. Officia consequatur saepe unde quam est quis. Eum aut vitae unde porro.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(54, 97, 'Prof. Eleonore Goyette Jr.', 'Ratione autem recusandae sequi eum sit. Qui non aliquam veniam necessitatibus dolores. Commodi blanditiis quo aliquid et velit velit.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(55, 37, 'Justice Batz II', 'Sint quia repudiandae sed quia incidunt. Molestiae voluptatum similique cum sit suscipit ipsam. Temporibus aut reiciendis voluptas nobis cupiditate tempora.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(56, 98, 'Lamar Price', 'Dignissimos sequi cum excepturi porro facilis tempora quisquam dolor. Deserunt ipsa commodi quam possimus nemo. Doloremque laboriosam possimus aperiam quia. Labore vero et voluptate. Autem dolorem quia nulla quidem.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(57, 57, 'Cora Fay', 'Voluptatibus voluptatem eaque occaecati tempore qui ut et. Est sunt cum est eius rem excepturi accusantium. Provident error est eum. Voluptas quod quo quas a quia.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(58, 26, 'Prof. Heath Ernser III', 'Et corrupti rem rerum aut ad voluptatem. Quam animi nulla est molestiae laborum similique. Numquam ex nihil ad. Facere veritatis labore non dolores optio soluta. Dolorem commodi minima velit est quaerat.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(59, 11, 'Georgette Marvin', 'Non quos excepturi temporibus animi repudiandae voluptatem optio. Aut eveniet repellat ut distinctio. Ab excepturi et tempora voluptas. Nemo ut ducimus doloremque deserunt reiciendis quo.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(60, 90, 'Dr. Brielle Rempel', 'Aperiam dolore voluptatem odit voluptatem rem labore ut. Laudantium repellat est vel enim. Voluptates placeat optio nam est qui. Harum ipsum sed autem aut nobis est.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(61, 61, 'Antoinette Mayer III', 'Fugit pariatur culpa doloribus nemo et repellendus. Ducimus est quaerat molestias eum sunt provident. In temporibus consectetur cupiditate autem ipsam. Voluptas id enim pariatur dignissimos vitae vero.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(62, 49, 'Shanelle Kilback', 'Nemo non repudiandae facilis. Asperiores expedita ullam eos eos. Id aut sed delectus doloribus corrupti alias. Ut quidem aspernatur sunt a sit illum.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(63, 30, 'Ansel Vandervort', 'Hic quasi sint repudiandae molestiae pariatur. Aliquam in quasi ratione autem dicta qui. Sit voluptatibus delectus itaque cupiditate.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(64, 86, 'Leon Funk', 'Est aut alias deserunt perspiciatis cum numquam. Voluptas error et quia debitis. Asperiores id ut rerum.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(65, 55, 'Kariane Deckow', 'Temporibus non quod sit cum eos ea sit. Et et debitis quo. In doloribus doloribus eveniet fugit.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(66, 90, 'Constantin Parker', 'Omnis consequuntur officia ratione hic. Aut eligendi consectetur illo ratione. Est ipsa provident et rerum consequatur.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(67, 15, 'Devyn Ondricka', 'Omnis consequatur dolores nihil consectetur modi cum officiis. Consectetur ipsa saepe assumenda nostrum error placeat rerum.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(68, 9, 'Dariana Volkman', 'Impedit consequatur nobis voluptates qui fugiat. Quo sit maiores molestiae nemo corporis sint. Earum quia magnam ipsam eligendi.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(69, 54, 'Ms. Jalyn Cronin V', 'Nam id beatae sed ut. Fugit non aspernatur rem veritatis quos molestiae. Quia accusantium fugit necessitatibus qui sequi reprehenderit quo.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(70, 49, 'Mathilde Brekke III', 'Laboriosam nihil eius at perferendis amet. Similique et sequi assumenda odit porro nostrum. Ut aperiam qui beatae consequatur nam inventore. Dolorem dolor voluptatem eum nisi aut amet molestiae. Aut est et error alias enim nihil aut.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(71, 11, 'Korey Feest I', 'Quo ut aut distinctio qui culpa. Aut quia quia nostrum sint nostrum blanditiis ex. Molestiae non est aut velit recusandae eum natus.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(72, 15, 'Carli Rohan V', 'Ut et sit quo ut enim nemo. Molestiae qui repellendus perferendis optio et.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(73, 30, 'Trevion Harber', 'Aut vitae aperiam aut sit numquam et. Cum quod odio fugiat aperiam voluptas.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(74, 98, 'Adeline Von DVM', 'Molestiae consectetur ab aspernatur temporibus ut suscipit. Laboriosam et aut hic. Et sed enim est culpa qui reiciendis eaque.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(75, 68, 'Myrtie Blanda', 'Incidunt at in soluta excepturi explicabo. Omnis error aut vel ut commodi. Harum exercitationem quam voluptates est enim est aspernatur.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(76, 28, 'Mrs. Teresa Schamberger Jr.', 'Earum officia eos voluptatem inventore distinctio totam. Eius maiores ullam odio alias. Saepe ut perferendis quae impedit tempore libero sequi. Facere fugiat sit a architecto et aut dolor aliquid.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(77, 63, 'Samir McDermott', 'Voluptates quisquam illum sit nam incidunt. Voluptatibus est explicabo eius reiciendis. Molestiae maxime aut cupiditate vitae. Magnam nostrum eum ut et aliquam aliquid.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(78, 73, 'Mrs. Ressie Gaylord Jr.', 'Cupiditate provident commodi unde repellat et nulla error. Ipsa voluptas nihil quis sit quo quasi fuga. Et voluptas in minima.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(79, 20, 'Max Hettinger', 'Voluptatem nihil placeat tempora eos. Adipisci doloremque aut cum non. Voluptas occaecati hic consequuntur dolor in ut. Quia nihil qui aut facere sit doloribus voluptates.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(80, 46, 'Antwan Legros', 'Sapiente explicabo harum modi asperiores quam est. Asperiores maiores eveniet accusantium quia enim delectus ipsum. Minus quo impedit vel. Velit sint dolor iusto officia laudantium optio. Quisquam atque enim facere.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(81, 72, 'Mr. Skye Rempel MD', 'Ut impedit quae voluptatibus reprehenderit consequatur ea. Rerum quo corporis eligendi rerum ducimus aliquid ut. Quasi neque molestiae eos facilis quia sed consequatur minus. Voluptatem est recusandae voluptatum aut ab dolores voluptas.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(82, 6, 'Mauricio Ondricka', 'Esse sunt dignissimos sapiente placeat. Mollitia sit veritatis non aut nobis ratione. Minima et eum placeat fugiat velit blanditiis omnis.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(83, 3, 'Forest Osinski', 'Deserunt laudantium debitis error laborum consequatur qui esse. Quis fugiat vitae pariatur minima quo.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(84, 69, 'Prof. Donny Schuster Jr.', 'Quis mollitia qui atque rerum adipisci quia architecto harum. Ipsum voluptatum inventore nulla quae inventore quisquam. Itaque quis dolorum unde voluptates tempore.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(85, 48, 'Don Baumbach', 'Enim ea facilis necessitatibus eius quisquam iure delectus dolores. Doloremque nulla sed perferendis occaecati. Maxime cum hic assumenda labore. Magni facere odio autem enim similique mollitia.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(86, 90, 'Dr. Stefan Williamson DVM', 'In nisi cum rerum autem quasi. Quas optio sit consequatur atque corporis voluptates error. Consectetur ullam dolor autem ipsa veniam tenetur ratione nisi. Nulla hic dignissimos ut aperiam aliquid.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(87, 59, 'Kelley Bayer', 'Ducimus impedit ad debitis sed enim. Ut eum dolorem pariatur amet ut quo. Recusandae dolorem sed quaerat omnis. Ea nisi unde rerum sit maiores ut omnis. Eaque eos illo eum natus architecto.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(88, 7, 'Quentin Wintheiser', 'Necessitatibus sed qui possimus et. Asperiores iure necessitatibus ut quidem omnis inventore in. Et labore molestiae dolore et aut neque. Ea doloremque illum harum accusantium maxime.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(89, 57, 'Mr. Tremayne Marquardt Jr.', 'Iste inventore velit unde rerum ea nam aut. Placeat quibusdam debitis corporis nisi quaerat. Harum aut dolor eveniet odit odit aut exercitationem. Est reiciendis quibusdam eligendi voluptatem et.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(90, 16, 'Veronica Hilpert', 'Error repudiandae rerum voluptatem et corporis. Repudiandae ipsa voluptatibus vel in similique aperiam. Ullam dolorem vero natus unde sequi.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(91, 7, 'Jerome Huels', 'Deserunt odit sed culpa sed velit. Quam provident ut vel optio a saepe sed. Et dicta minus et id quaerat. Delectus quos doloremque itaque sunt et rerum. Qui magni eum nulla in explicabo.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(92, 91, 'Woodrow Heller', 'Explicabo quod velit sed. Dolorem error sunt dignissimos. Quidem tenetur quam optio aut dolores.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(93, 51, 'Elouise Hansen IV', 'Sequi molestias voluptatibus est accusamus. Et sit consectetur sit voluptates. Maxime dolores odio soluta enim deserunt dignissimos. Mollitia esse quod qui optio.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(94, 30, 'Amy Upton DDS', 'Reprehenderit et in commodi animi. Earum ipsa voluptatem optio voluptas. Architecto qui praesentium suscipit ut molestias error molestiae quidem.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(95, 88, 'Mrs. Stefanie Leuschke III', 'Et in quibusdam repellat. Distinctio quas nostrum sit possimus ipsam nihil quos.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(96, 17, 'Antoinette Haag', 'Quibusdam consectetur eligendi impedit. Ea odit sunt aliquam voluptatem minima aut cum. Aut sapiente at quia omnis dolorem.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(97, 28, 'Constantin Stark Jr.', 'Similique quos natus a qui et. Dignissimos quia repellendus in fuga laudantium. Sed vel dignissimos voluptates repudiandae. Dignissimos odio ut commodi quia libero iure molestiae.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(98, 28, 'Veronica Cassin', 'Molestiae impedit itaque impedit quaerat dolores molestiae a. Adipisci nesciunt facere laboriosam sit sed molestias. Qui autem facilis accusantium. Vel et quia veritatis doloribus error repellat sint.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(99, 65, 'Veda Bednar', 'Odio qui eveniet sapiente iste id dicta optio eius. Maxime vitae et et at excepturi accusantium dolores. Dolor qui illum reprehenderit vitae enim iusto et exercitationem.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(100, 46, 'Maeve Littel', 'Voluptas exercitationem molestiae vel. Aut ab quas et unde officiis. Non sapiente aut nisi totam et.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(101, 30, 'Ms. Tracy Becker', 'Quae impedit itaque voluptatem ut dicta sunt dolorum. Nobis qui est amet quia modi. Illo totam ab magni nam. Ex veritatis qui occaecati aut aut et occaecati. Quas ratione magni sequi quae occaecati qui.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(102, 61, 'Mr. Willy Buckridge DVM', 'Aspernatur praesentium fuga iste et dolor. Quod expedita nostrum expedita et et. Et aspernatur ut itaque consectetur veritatis dolorem delectus quisquam. Porro fuga voluptas numquam voluptas. Molestiae commodi dolor nisi rerum quo.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(103, 13, 'Prof. Harrison Stoltenberg V', 'Vel recusandae error placeat nostrum. Qui sunt consequuntur mollitia voluptates natus. Quasi corrupti placeat vero dolor animi soluta. Aut consequatur tempore quo ratione libero dolorem et.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(104, 41, 'Carmel Ernser IV', 'Vero modi ullam unde qui laudantium officiis molestiae a. Sapiente laudantium corrupti sequi voluptas. Porro ad est blanditiis. Sunt cum magnam consequatur consequatur.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(105, 65, 'Dr. Cleveland Windler', 'Et vitae consequatur quia et nemo itaque. Ducimus voluptatem vero consequatur. Occaecati suscipit quo et. Sit dolores quod dolor quia voluptas voluptatem.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(106, 53, 'Demario VonRueden', 'Officiis modi quas dignissimos eum. Adipisci eius culpa voluptas rerum assumenda ducimus. Aut ullam omnis non expedita. Odit similique et et vitae illum maiores rerum.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(107, 87, 'Dorris Gerlach', 'Harum quia quia molestiae qui ea. Sit quae ullam inventore vitae. Iusto perspiciatis repudiandae harum at. Sit aspernatur debitis voluptates qui ipsa.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(108, 91, 'Demetrius Brown', 'Et commodi et aut officia. Sit et culpa saepe quia fuga minima itaque. Excepturi ipsa autem qui rerum cumque aliquid nulla.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(109, 84, 'Nelda Kuhic', 'Et quis ab temporibus dolor omnis. Minus omnis quae esse accusantium.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(110, 33, 'Clovis Deckow', 'Totam laudantium eius animi dolores a. Velit asperiores est quis officia hic. Sed et ipsum voluptatum cupiditate et veniam quisquam.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(111, 37, 'Asia Ferry', 'Quia ad consectetur dolorem qui et odio. Aliquid doloribus nemo fugit ratione fugit officiis. Aut quaerat excepturi maxime eos maxime.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(112, 11, 'Filiberto Beahan', 'Delectus unde facilis et sint ducimus. Voluptates aut eos a doloribus maiores eveniet. Laborum doloribus minima possimus sint quos.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(113, 72, 'Mr. Lane Feest', 'Est fugiat dignissimos quod voluptatem sint iure dicta. Autem voluptatem a in aut. Est harum ipsa nihil alias commodi nihil. Aut at suscipit sed vero expedita.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(114, 27, 'Athena Berge', 'Laboriosam et velit molestias ipsa earum magnam voluptatem. Aut voluptas et consectetur eum reiciendis facilis. Minima odio minima voluptates animi sequi dolorum quia. Iste itaque culpa quia magnam corporis sit placeat quisquam.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(115, 13, 'Jaida McGlynn', 'Et quisquam consequatur fugit adipisci dolores temporibus et. Numquam enim fugiat incidunt aut porro. Quis perferendis molestiae tempora velit id. Deserunt quia quo ratione.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(116, 17, 'Mrs. Evalyn Littel', 'Dolore omnis doloremque eaque rem incidunt minima eum quos. Et est ducimus qui. Suscipit harum modi qui minima soluta enim eaque.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(117, 45, 'Arvel Cruickshank', 'Non numquam nostrum maxime dolorem consequuntur sint et. Eligendi fugiat alias non architecto. Ducimus placeat est deleniti. Velit dicta maiores ut maxime.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(118, 76, 'Jacques Wilkinson', 'At quia sit perferendis ut corporis aliquid. Qui ea odit dignissimos totam est voluptatem. Sint culpa aspernatur ipsam fuga ad. Quasi est porro nemo molestiae maiores quo nobis.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(119, 16, 'Jeramy Waelchi', 'Quas in natus nulla velit dolore libero necessitatibus corrupti. Quod dolores cum sint iure quis veniam nihil deserunt. Perferendis ducimus sed dolorem aperiam. Et voluptas molestias omnis sunt vel voluptas.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(120, 14, 'Gussie Prohaska IV', 'Veritatis libero sint facere autem architecto. Provident qui ducimus aliquid molestias nulla. Consequatur at nam iste maxime ut modi sunt. A at consequuntur eveniet culpa.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(121, 51, 'Irving Ortiz', 'Placeat velit sit nesciunt vel et. Voluptatibus deserunt fuga architecto libero sunt exercitationem. Porro eos consequatur nobis sint quos itaque.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(122, 86, 'Antonio Wilderman', 'Dolore eum ea atque aut. Provident corrupti voluptas placeat tempore suscipit.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(123, 4, 'Preston Hackett', 'Dolorem enim aperiam aliquam deleniti doloribus. Voluptate a officiis beatae repellendus vel dicta impedit. Ut dicta sit assumenda quas sunt impedit. Similique velit autem quisquam culpa.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(124, 34, 'Leatha D\'Amore', 'Est dolor sed id et omnis quis porro sequi. Quisquam quibusdam voluptas rerum sed. Hic nihil cum necessitatibus magnam. Vel nihil sequi accusamus in repudiandae recusandae. Sit incidunt non unde voluptates repellat inventore dolores.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(125, 64, 'Alfredo Wisoky', 'Numquam reprehenderit et facere quis. Debitis quis et corrupti architecto ullam. Laboriosam molestiae alias necessitatibus officia.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(126, 61, 'Curtis Gutkowski I', 'Facilis nulla qui sed est enim aut. Sequi officiis quidem autem earum est aperiam aut. Sed asperiores ut non sed.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(127, 23, 'Stephanie Kovacek', 'Corporis libero mollitia praesentium consectetur. Iure impedit unde perferendis suscipit. Aut quae et ab ut quaerat fugiat voluptas. Eos et atque libero consequatur sapiente fuga odio.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(128, 73, 'Dr. Mariano Pouros', 'Amet illo accusantium est voluptatibus omnis. Asperiores et molestias rerum nemo. Omnis et aut praesentium fuga quis.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(129, 88, 'Carolyn Lang', 'Cumque ratione soluta ratione rerum iure nam eos. Amet accusamus totam nam. Quo ut aliquid vero illum similique laudantium maiores perferendis. Et ut voluptatibus repellendus qui.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(130, 27, 'Mrs. Felicity Medhurst', 'Et ab suscipit rerum dolorum ut. Autem et illum rerum omnis. Facilis qui aut fugiat in deserunt. Quam ad quis similique ducimus odio.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(131, 60, 'Leonardo O\'Keefe', 'Ut ad consequatur et sint harum. Eum enim expedita distinctio et qui praesentium nemo. Hic esse incidunt dolorem omnis dolor labore voluptate voluptatum.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(132, 94, 'Miss Maudie Aufderhar II', 'Debitis soluta qui recusandae autem eum facere. Dolores atque eligendi quia est praesentium aliquid. Quia ea quo porro similique nulla ut aliquid.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(133, 29, 'Dillon Considine', 'Aut consequatur asperiores dolorem eum cupiditate architecto deserunt. Quisquam ab libero enim iure. Rerum deserunt perspiciatis itaque cum. Reiciendis quam fugiat quo laborum voluptatum quas.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(134, 75, 'Mr. Morton Walter Sr.', 'Dolorem molestiae animi quia fugit quo doloribus. Et sit rerum dignissimos dolores dolor odit cum. Cumque culpa itaque voluptatem. Earum perferendis repudiandae nisi ut.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(135, 77, 'Imani Feest', 'Quia ducimus quia quo. Modi fugiat accusantium totam et dolores odit. Eum voluptatem quibusdam vel perferendis.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(136, 67, 'Belle Watsica', 'Quia facere consequatur officiis magnam. Omnis quidem natus sequi vitae. Officia molestiae quia voluptas et qui. Consequatur et nulla dignissimos.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(137, 26, 'Alyce Considine', 'Iusto natus eveniet aut eum sapiente quasi. Officia illum deserunt dignissimos. Unde iusto rerum sit rerum. Placeat totam possimus voluptatem. Architecto non voluptas non quaerat.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(138, 76, 'Jarrell Beahan', 'Quaerat labore cumque ab autem officia recusandae. Dolor vel quod id nesciunt a culpa qui.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(139, 63, 'Cydney Wisoky', 'Quia laboriosam corrupti quo sed. Voluptas occaecati error eveniet qui sed nobis laudantium. Dolor ipsum quos a aut omnis consectetur. Dolore omnis voluptatem quo non mollitia nesciunt placeat.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(140, 39, 'Minnie Metz', 'Repudiandae deleniti non facilis quis. Consequatur et id fugiat non et eos. Eaque et totam fugit fuga ducimus. Est tempora ad soluta odio rem aut laudantium.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(141, 62, 'Fanny Gleason', 'Et minima et maxime natus. Molestiae quo hic labore porro. Doloribus tenetur eaque vitae hic rerum et.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(142, 64, 'Chanel Keeling Sr.', 'Reiciendis quisquam ad pariatur dolore. Deleniti aliquam accusantium id nisi magni nostrum adipisci. Id omnis molestiae est velit aperiam ea. Aspernatur est ullam facilis quidem.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(143, 58, 'Abe Kihn', 'Sed aut quis totam sequi corporis qui. Esse aspernatur et recusandae porro hic sint quis. Optio ullam exercitationem temporibus sed dicta. Quia harum repudiandae nulla at tenetur minus.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(144, 69, 'Gilbert Keeling', 'Qui fugit eligendi rerum veritatis sed debitis. Nihil magni officia et. Quibusdam non sint ab. Est omnis repellendus consequuntur eos dolorum tempore.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(145, 58, 'Shad Batz DVM', 'Quo aut quos nihil aliquid. Dignissimos qui quia optio sed. Nam natus enim consequatur est. Voluptas aperiam consequatur quaerat qui ipsum excepturi veritatis.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(146, 56, 'Earline Hansen', 'Nulla sed aut iusto maiores fugiat atque laborum vero. Qui occaecati magnam odit ex sed velit.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(147, 82, 'Samanta Aufderhar', 'Sequi at in molestiae et possimus inventore. Et sit molestiae blanditiis tenetur. Suscipit temporibus ex voluptates praesentium est qui.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(148, 60, 'Harold Lynch', 'Placeat mollitia dolor dolorem assumenda corrupti occaecati vel. Sit soluta dolore suscipit placeat enim incidunt impedit. Qui esse deserunt occaecati corporis exercitationem ipsa facere numquam. Facere quam repellat voluptatum rerum. Qui pariatur culpa fugit voluptas.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(149, 89, 'Dr. Laura Purdy', 'Deleniti assumenda omnis qui sit. Molestiae rerum vel mollitia eius. Mollitia inventore quia dignissimos earum quis porro. Voluptas sed incidunt in sint quisquam.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(150, 50, 'Cecil Tillman', 'Minima et nam id non deserunt illo ea. Accusamus sequi dolores impedit aliquam voluptatum. Reiciendis sed est aliquid repellendus et culpa similique.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(151, 42, 'Zoila Metz', 'Omnis maxime tempore sint perspiciatis est maiores. Ut sequi ea dolorem aut omnis facere sapiente. Qui ut corrupti consequatur nobis voluptatem rerum.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(152, 57, 'Dr. Elouise Hettinger', 'Quae delectus neque cumque ab sed. Aut et quo praesentium recusandae. Eaque et quis expedita magni qui expedita et. Et omnis consequatur voluptas ducimus.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(153, 65, 'Donavon Abshire', 'Architecto ea ipsam praesentium dicta accusamus exercitationem qui. Ad ut perspiciatis sed beatae iure. Itaque rerum rerum labore aspernatur.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(154, 39, 'Arjun Maggio', 'Alias perferendis voluptatibus ut debitis. Est omnis quo et expedita earum expedita repellat. Similique sed est consectetur.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(155, 53, 'Jordon Ankunding', 'Placeat consectetur ipsum beatae rerum voluptatem rerum voluptatem. Optio ea magni eaque veniam consequuntur dolorem similique. Amet sit omnis cumque impedit sunt omnis nobis delectus.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(156, 81, 'Kole Wilderman', 'Amet et possimus dignissimos quia placeat. Sunt voluptate occaecati velit cupiditate quibusdam dolor. Omnis consequatur id cum animi earum quis. Iure possimus sit laudantium nulla quia.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(157, 14, 'Adrain Veum', 'Autem ut vel est veritatis numquam ea. Doloribus inventore aliquam a illum quasi consequatur.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(158, 36, 'Sharon Keeling', 'Ratione quia quia modi quia. Rem aut iure impedit magnam tempore non quibusdam. Qui omnis ad ea harum molestias. Ut beatae ipsa dolores voluptatem iste voluptatem autem.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(159, 55, 'Dr. Jamey Blick', 'Adipisci quam similique accusantium repellendus aut. Delectus ipsa aperiam ipsa officiis laboriosam. Quis dicta omnis dolorum tempore id dicta. Qui aperiam est sed quam.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(160, 56, 'Camille Huels', 'Voluptatibus animi ab hic et. Blanditiis illo ipsam distinctio facere. Itaque voluptas quo et mollitia voluptatum. Voluptas consequatur aliquid et tempore.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(161, 91, 'Hermina Cole', 'Natus tenetur aut et velit commodi. Et in repellendus aperiam et nobis dolores. Repellendus qui nesciunt aut. Itaque eum harum praesentium iste cumque quia eius. Quibusdam laudantium commodi neque voluptatibus vitae voluptatem a.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(162, 42, 'Ahmad King', 'Officiis vel qui id sunt eum. Ut ipsa eum consequuntur dolores sequi dolores praesentium fuga. Quaerat et ipsum eos rerum reiciendis ut sit. Nemo incidunt beatae non est rem.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(163, 65, 'Myrna Windler', 'Nulla qui recusandae libero veritatis. Qui soluta at et itaque est.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(164, 37, 'Dorothy Funk', 'Tempore sunt atque nulla aut sunt qui repellat. Commodi ad vero officia voluptatem quia et sit. Magni nulla eius delectus voluptas voluptas quia quasi veniam. Fugit sed esse odio eveniet deleniti omnis.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(165, 41, 'Dr. Bridget Durgan Jr.', 'Voluptatem id beatae adipisci repudiandae maiores tempora. Nobis est sit sit sed sequi sed reprehenderit nostrum. Dolor sit sapiente minus ut. Minima libero tempore nobis eos sint omnis.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(166, 9, 'Dr. Melyssa Runolfsson', 'Dolores nesciunt voluptatem officia dicta. Et repellat consequatur delectus quisquam. Accusamus accusamus et dolorem amet molestiae.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(168, 6, 'Austin Ferry', 'Eligendi repudiandae eum quia possimus voluptatem. Vel ea reiciendis aut qui iste autem possimus. Quo dignissimos adipisci quia sint qui tenetur.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(169, 30, 'Maximo Treutel', 'Dicta et consequatur rem aperiam. Reiciendis aut dolor et reiciendis vero est. Asperiores et quis qui.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(170, 33, 'Sylvia Heller', 'Rerum delectus hic non ex sequi. Qui autem odio blanditiis voluptas. Inventore ab sunt dolores provident deleniti.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(171, 7, 'Gordon Pfannerstill', 'Et quos exercitationem ut quia. Reiciendis et soluta voluptas ea asperiores. Natus et illum tempora sed id tenetur iure impedit.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(172, 13, 'Amari Jast', 'Non sit est consequuntur in praesentium consequuntur. Id magnam voluptatem rem expedita. Vel dolorum sed in quia sit officia. Inventore sit ducimus voluptatem et.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(173, 62, 'Savannah Wiegand', 'Nemo non possimus qui ipsum nihil. Sed alias distinctio sed consequatur. Nisi accusamus qui perferendis aut est modi. Ut consectetur consectetur voluptas iusto. Iure vero atque et.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(174, 29, 'Prof. Braden Gutkowski', 'Itaque quam assumenda officiis officiis quidem. Et nihil quibusdam delectus aut provident qui. Et quas aspernatur doloremque temporibus dolorum. Qui dolores similique corporis est.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(175, 2, 'Tre Doyle', 'Illo impedit facere quo voluptatem est quaerat ut atque. Error earum pariatur culpa magnam voluptates. Non hic saepe sit voluptatem et consectetur explicabo. Sit perferendis sit distinctio.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(176, 83, 'Laverne Braun', 'Ipsum cupiditate ipsam eos est praesentium error excepturi. Dolorem sed placeat illo eos qui.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(177, 49, 'Mrs. Laurine Grady', 'Minima eum incidunt quaerat ad aut illo. Voluptate qui illo voluptatibus impedit modi. Aut voluptatum animi et ut modi. Soluta qui repellendus culpa et eum quos.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(178, 61, 'Mr. Mathew Ebert', 'Nesciunt et modi dicta optio dolor. Eaque sunt velit quod deserunt. Ducimus eligendi ipsa cumque illo.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(179, 18, 'Marilie Donnelly', 'Officiis qui illo aut quas qui vel suscipit. Quo vero dicta ad aliquid velit dolor dignissimos. Excepturi est tempora perspiciatis dolor deserunt ab.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(180, 56, 'Madaline Schaefer', 'Odit atque at ad. Tenetur optio rem dolorum eum magni dignissimos ipsum. Quae nihil ut autem aut voluptatibus et tempore. Optio veniam ad optio nemo consequuntur debitis.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(181, 62, 'Seth Rau III', 'Dolor doloremque et consequuntur aut dignissimos. Fugiat architecto laboriosam cupiditate maxime. Aliquam amet ipsa ut voluptas.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(182, 86, 'Claudine Hagenes Sr.', 'Omnis maxime provident incidunt ratione. Voluptatem velit tempora at natus illum. Non repellendus vero mollitia voluptatum laboriosam sint. Necessitatibus quod dignissimos quis perspiciatis nam et.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(183, 11, 'Mikayla Beier MD', 'Minima atque illo iusto ea possimus excepturi accusantium. In inventore hic maxime est atque sit quo. Quisquam optio officiis sit debitis delectus maiores voluptas. Est doloremque similique autem qui minima quae asperiores.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(184, 13, 'Mr. Norval Ullrich', 'Velit eius blanditiis velit distinctio nulla perspiciatis et. Doloribus consequatur deserunt inventore. Explicabo quia voluptatem maxime labore voluptatem iure debitis eum.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(185, 95, 'Maia Hilpert', 'Neque architecto animi qui et consequuntur quasi repudiandae reiciendis. Excepturi tenetur tempore corrupti corrupti et. Deleniti nemo et sint facere.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(186, 81, 'Lincoln Rempel', 'Possimus voluptatem enim fugiat aperiam sit ipsa aspernatur. Laboriosam et eos consequuntur aperiam. Autem vero id deleniti et voluptate temporibus. Rerum et tempora officiis odit quia.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(187, 68, 'Ari Feil', 'Rerum praesentium voluptas saepe in dignissimos. Quos ut eius accusamus. Illo id minima est neque quam velit illo.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(188, 41, 'Andreane Berge', 'Autem ipsa aut cupiditate consectetur qui nihil voluptates et. Eaque error dicta pariatur quis praesentium ea. Quo quasi ratione in qui. Aut dicta illo dolorem ipsam autem.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(189, 5, 'Kaitlyn Kub', 'Voluptatem et consequatur officia nulla consequatur magni molestias et. Assumenda iusto est inventore iure nulla molestias. Occaecati officiis sit dignissimos a magnam quia. Dicta nulla incidunt et ut odit hic incidunt.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(190, 34, 'Jessie Kohler', 'Exercitationem blanditiis tempora numquam repudiandae. Reiciendis at repellat quaerat nisi voluptatem recusandae voluptatem aut. Aut enim quam eaque vel eius nobis aliquam nisi. Vel eos sapiente est eveniet repellat libero vel.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(191, 41, 'Kaitlin Hettinger', 'Iusto praesentium iure eum minima fugit. Error dignissimos qui corporis quasi provident commodi odio est. Dolorem repudiandae corrupti laudantium velit rerum. Dolorum aspernatur neque molestias.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(192, 42, 'Dr. Alf Kozey IV', 'Ad ipsa possimus corrupti reiciendis nesciunt suscipit. Est eveniet eum laboriosam voluptas aut eligendi recusandae. Expedita maiores est tempora tempore ipsam laudantium.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(193, 27, 'Margaretta Koelpin', 'Fugiat sed eligendi vitae optio recusandae voluptates atque aliquam. Voluptas enim qui minima quo est laborum suscipit. Exercitationem temporibus perspiciatis consequatur.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(194, 17, 'Loma D\'Amore', 'Nesciunt nemo similique nemo ex et omnis. Tempore impedit perferendis quasi reiciendis id.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(195, 62, 'Sebastian McLaughlin DVM', 'Eveniet voluptas veritatis voluptatem eum. Sed quia mollitia dolor ipsa possimus et ullam esse. Non ut suscipit cum harum ut distinctio. Architecto qui incidunt quo sed voluptatem vitae earum.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(196, 59, 'Wilfredo Carroll', 'Delectus cum in quisquam omnis architecto voluptas. Ut possimus sint quidem fugit voluptatem illo illum deserunt. Repudiandae autem maxime magni omnis debitis. Nemo voluptate eius a eum eos velit iusto. Deleniti fugit culpa laborum.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(197, 48, 'Rachelle Keeling MD', 'Rerum et nihil qui culpa et labore voluptas. Facere totam temporibus eligendi eaque consectetur animi. Maiores neque qui quod sit autem unde. Fugiat magnam maxime animi voluptatem laudantium corrupti.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(198, 17, 'Bernice Johnston DVM', 'Reiciendis vel praesentium error cum aut vel. Quia asperiores et veritatis maiores dignissimos quas.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(199, 92, 'Adalberto Sawayn I', 'Accusantium temporibus delectus quis excepturi. Rerum veniam eum minus eaque voluptatum velit. Tempore dicta sit possimus enim sed ut. Aspernatur quo voluptas repellat vel quibusdam expedita.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(200, 40, 'Hulda Oberbrunner', 'Aut pariatur quaerat nihil qui quae voluptatem qui. Magni ipsa optio placeat qui sapiente ex optio. Voluptates ipsa fugiat vitae enim unde consectetur laborum aut. Et et autem est maiores doloremque doloremque quos.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(201, 34, 'Annabelle Buckridge', 'Accusamus corrupti quasi rerum. In laboriosam doloribus a sint culpa. Cupiditate quia voluptatem debitis dignissimos aliquam est tempora. Dolores et ad ad et. Est ea dolor odit error earum eum.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(202, 5, 'Felipa Jerde', 'Ipsum tempora iure sunt accusantium corporis tempore. Ad distinctio quis eos minima doloremque. Saepe itaque quis vitae omnis.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(203, 40, 'Mr. Delbert Koch', 'Tempora earum voluptas dignissimos dolor repellendus eum. Qui quisquam quos ut sit nemo consequatur. Hic in debitis consequatur eius nihil. Corrupti eligendi voluptatum nam expedita voluptates sint temporibus.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(204, 29, 'Loyce Cummerata', 'Ut et porro quaerat iure et. Rerum cum qui quis dolor rerum aut quas. Iure perferendis qui commodi animi aliquid exercitationem vel cum. Asperiores non exercitationem voluptas animi provident.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(205, 31, 'Vida Muller', 'Unde ipsa minus ipsum quo pariatur aut est. Molestiae mollitia quas ipsa fugit odit ducimus fugit. Expedita et explicabo quod hic ut.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(206, 71, 'Prof. Eloisa Jacobi', 'Enim officia odio rem non earum enim doloribus. Ut reiciendis perferendis adipisci dolores. Libero tempora sed neque rerum incidunt necessitatibus dolore.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(207, 48, 'Ms. Heloise Cummerata Jr.', 'Laboriosam accusamus quo dolorem et non adipisci expedita ducimus. Enim cumque et architecto voluptates. Laborum ipsa quibusdam qui ut sed. Id rerum velit est eum fugit cumque sint et. Qui ullam similique pariatur corrupti.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(208, 44, 'Elfrieda Bins', 'Dolor et ut velit est officia labore veniam. In corporis sequi impedit similique. In quisquam sequi optio fugiat aut veritatis debitis. Voluptatibus assumenda iste consequuntur harum.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(209, 86, 'Marcus Legros DVM', 'Ex in nam eligendi ea cum tenetur nobis. Qui ex commodi minus. Ullam occaecati vel ut.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(210, 26, 'Prof. Emmanuel Lynch', 'Ut similique corporis voluptatibus suscipit. Tempora omnis nihil aut voluptas laboriosam. Temporibus ipsum et voluptas suscipit magni aut.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(211, 68, 'Roxanne Zemlak Sr.', 'Placeat et mollitia consequatur nam dolorem perspiciatis. Unde necessitatibus iste voluptate temporibus earum voluptatum. Id quis omnis quia quo.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(213, 88, 'Prof. Liliana Gusikowski', 'Qui magnam voluptatibus non adipisci quia occaecati. Eum laborum dolor quaerat quibusdam nemo fugit. Accusantium praesentium et qui enim dignissimos. Mollitia dolores sed quia et eligendi ut rem quia.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(214, 66, 'Jennie Hintz IV', 'Eveniet explicabo animi error officiis veritatis. Delectus quibusdam tempore qui mollitia qui reiciendis. Mollitia quod enim quo ea libero quidem.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(215, 79, 'Myrl Marvin', 'Fugiat est tempore aperiam est sit magnam dignissimos minus. Ut blanditiis nemo magnam repudiandae assumenda. Illo consequuntur non asperiores mollitia vel. Quasi neque est deserunt accusamus repellat voluptatibus perferendis.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(216, 76, 'Mrs. Erika Dooley V', 'Ut possimus voluptas perspiciatis repudiandae consequatur perspiciatis recusandae. Officia aliquam fuga illo assumenda odit quasi odio. Dolorum inventore ipsum velit doloribus cupiditate quia.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(217, 95, 'Prof. Leila Lubowitz DVM', 'Eos vero officiis magnam omnis eos. Reiciendis totam hic alias aspernatur. Rem delectus placeat exercitationem impedit pariatur temporibus magni. Minus sit quae quo.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(218, 26, 'Jeromy Krajcik', 'Nisi consectetur quibusdam labore amet eligendi. Aut et deleniti sint tenetur non saepe officia. Sit est voluptatum qui et minima.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(219, 13, 'Mr. Markus Koepp I', 'Esse quis ut cum nostrum eos odio eaque. Quia iure temporibus aut molestiae. Reprehenderit laborum ducimus molestiae repudiandae.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(220, 82, 'Allie Hintz', 'Voluptates enim itaque rem vel quasi. Quia et qui hic fuga libero numquam odit. Maxime et quia et quas sunt est quam quae.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(221, 34, 'Eldora Watsica', 'Tempora voluptas tempora aut. Ipsa omnis asperiores dolor vitae autem aut. Vitae harum recusandae nihil perspiciatis.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(222, 21, 'Ms. Elinor Terry II', 'Odit aut accusamus veniam vero pariatur est. Autem repellendus cupiditate labore sed magni dolorem tempore. Quae ratione omnis nesciunt natus nisi distinctio dignissimos aperiam.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(223, 34, 'Idell Hirthe', 'Est doloremque et repellendus. Quaerat natus amet vel ad assumenda. Numquam numquam est quod et. Maiores eos quaerat ullam est quod ducimus illo.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(224, 40, 'Prof. Adrian Dickens II', 'Magni nisi voluptas laborum magni incidunt possimus perferendis. Enim voluptatem et vel inventore. Unde quo est enim sapiente ex nisi. Voluptatibus reiciendis pariatur ducimus voluptas non nobis.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(225, 57, 'Lucile Orn', 'Eius corrupti rerum quod ut tempora ipsam cumque quia. Voluptatem non at sit in aut numquam.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(226, 24, 'Delaney Hintz', 'Aliquam dignissimos et itaque est. Neque exercitationem commodi sed iusto. Nisi distinctio eum illo ad totam modi assumenda. Et consequuntur ipsum velit neque vitae quos.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(227, 18, 'Abdullah Schaden', 'Voluptas omnis consequatur voluptates dignissimos. Veritatis expedita quis maxime rem.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(228, 21, 'Crawford Okuneva', 'Corrupti aliquid in et et id quia. Tempore minus odio excepturi. Nesciunt totam totam aut excepturi et.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(229, 72, 'Miss Meggie Beier', 'Dolor soluta labore sed explicabo quia est. Adipisci quia deserunt quis assumenda voluptas. Dolorum dolores repellendus minima eaque quia aspernatur.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(230, 50, 'Shad Larson', 'Rem ducimus non sint error beatae et minus. Et odio accusamus eveniet nisi qui vel aspernatur non. Alias ad dignissimos at asperiores blanditiis velit. Fugit praesentium eligendi doloribus esse.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(231, 34, 'Carson Sauer', 'Ut tempore nostrum nemo sed temporibus vitae. Optio quibusdam est iure nobis debitis. Est quo vero iure qui velit sit.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(232, 75, 'Nick Denesik', 'Qui voluptates et accusantium maxime iure. Saepe accusamus accusantium aut et quo fugiat. Harum non totam nemo et consectetur. Ea odit et perspiciatis ea molestiae.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(233, 73, 'Justina Weissnat', 'Est dolor ipsum nemo est qui. Perspiciatis quaerat saepe quasi. Reiciendis nostrum ullam reprehenderit culpa aut. Quasi neque sunt facilis sed aliquid omnis vel commodi. Commodi explicabo delectus tenetur iste necessitatibus reprehenderit.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(234, 52, 'Mr. Reggie Toy', 'Aut aspernatur pariatur ut non eius aut. Iusto deleniti praesentium dignissimos est magni voluptas. Qui officiis eum et vitae qui quibusdam natus. Beatae laboriosam autem temporibus adipisci nihil.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(235, 66, 'Ethan Wisoky', 'In cupiditate nemo qui accusamus placeat in. Unde quaerat nisi in alias adipisci adipisci repellat. Recusandae sed debitis amet alias et facilis rem.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(236, 68, 'Lessie Jakubowski', 'Et quam sed officiis maiores. Aut aliquam neque deleniti rerum et iusto. Facere sunt magni dolore soluta animi quasi. Dignissimos temporibus odit nisi molestiae qui veritatis.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(237, 85, 'Beverly Lehner', 'Eius debitis enim eos saepe ut. Et consequatur sed doloribus nostrum. Mollitia voluptatem aut quaerat illum. Laborum illum corrupti veritatis aliquam dolores vel perferendis. Odit maxime vel sunt.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(238, 36, 'Christophe Jaskolski', 'Magni quia quasi omnis nesciunt id dolorem. Ullam eum fuga numquam ut quaerat. Quas numquam dolore non fugiat eum delectus.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(239, 71, 'Dr. Albertha Graham', 'Sapiente et tempore beatae nihil. Tempore exercitationem magni quisquam quaerat cupiditate. Nam cum perferendis delectus officiis omnis ipsum.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(240, 60, 'Prof. Ivah Quigley DDS', 'Eum maxime omnis tenetur laboriosam mollitia non. Quae esse blanditiis reiciendis. Rerum et sed quia iusto qui dolor nihil.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(241, 76, 'Julianne Nolan', 'Aliquam et deleniti non impedit consequatur eos. Eos sit aliquam veritatis enim. Similique magni architecto ducimus.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(242, 7, 'Derrick Durgan', 'Porro alias non sit nisi. Molestias sunt at consectetur minus ipsam dolor. At perspiciatis necessitatibus ullam commodi ea quia nihil.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(243, 54, 'Antone Lowe', 'Voluptates illo repellat sed id aut sit ut. Ex voluptatibus eaque iste praesentium. Rerum sed et quia delectus assumenda numquam.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(244, 53, 'Mrs. Hattie Flatley', 'Perspiciatis saepe ea veritatis minus. Ullam excepturi sequi odio qui. Et voluptas facilis enim facilis cupiditate expedita blanditiis. Pariatur in reiciendis sunt sunt omnis.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(245, 5, 'Desmond Christiansen', 'Accusamus rem sapiente labore aut libero soluta laboriosam. Consequatur autem maxime veritatis. Sit doloremque neque itaque fuga velit eligendi molestias qui. Sit quibusdam modi quae voluptas provident excepturi qui.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(246, 6, 'Josefa Waters', 'Provident perspiciatis vel atque earum. Qui perspiciatis repellendus atque labore. Nisi non asperiores culpa praesentium ut aliquid sunt.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(248, 73, 'Mrs. Destany Rath IV', 'Dolor ut ad ratione harum dolorem id. Est dignissimos et sit sunt saepe. Quidem necessitatibus accusamus animi.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(249, 100, 'Johnpaul Metz', 'Pariatur excepturi quas dolorem velit esse omnis perspiciatis. Consequatur suscipit illum exercitationem quisquam ut. Explicabo molestiae eos corrupti ipsa totam.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(250, 84, 'Ines Hickle', 'Ex est quidem quas. Nemo ut et veritatis est et dolorum dolore corrupti. Iure nulla doloremque dolorem molestiae velit voluptas. Dolorem ut magnam quis reprehenderit suscipit eum.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(251, 67, 'Charles Willms', 'Quod tempore ut et excepturi in possimus. Magnam nostrum nemo beatae nesciunt nihil ea.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(252, 35, 'Shania Green', 'Assumenda perspiciatis quo qui porro. Delectus omnis fuga accusantium eum architecto magnam. Ea sint voluptatibus veritatis est et rerum. Dolor sint ut maiores eos et odio deserunt.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(254, 29, 'Ms. Felicia Rippin', 'Amet voluptatem neque quas sint sequi. Inventore voluptas ut veniam qui quis vel. Occaecati illum labore corrupti eum expedita quam. Porro et qui vel culpa. Rerum fugiat quod porro numquam.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(255, 79, 'Emanuel Zulauf', 'Eos adipisci praesentium porro enim aut. Ut molestiae veniam veniam rem. Consequatur omnis sit minima iste et nisi enim odit. Deserunt dolorem ullam incidunt sit aspernatur asperiores sunt.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(256, 82, 'Ansley Lemke', 'Ut laboriosam dolor earum qui. Autem nihil repellat ex autem sequi explicabo est. Tempora saepe dolorum magnam in. Quae et veritatis aut.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(257, 85, 'Rhoda Schulist', 'Itaque ea doloremque sed aut praesentium aut reprehenderit. Quis qui modi qui autem in aut amet eos. Molestiae aliquid est voluptatem.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(258, 65, 'Alison Wiza', 'In sit ipsum et voluptas dolorem laudantium eligendi. Hic repudiandae nam sit voluptatibus omnis. Maxime nisi voluptas numquam in aperiam vero ut.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(259, 74, 'Fatima McDermott', 'Laboriosam est et quae voluptatem est qui. Eum excepturi repudiandae aut. Officiis perferendis ut voluptatem sint quisquam voluptas.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(260, 74, 'Eunice Kuphal', 'Magni molestias earum magnam veritatis molestiae. In ea animi aut sunt. Deleniti impedit et aliquid aut.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(261, 19, 'Brandt O\'Reilly', 'Possimus est corrupti id rerum quia laborum aut. Quia rerum soluta voluptate accusamus quo deserunt molestiae. Aperiam officiis aut fugiat ullam autem laboriosam qui.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(262, 71, 'Billie Medhurst', 'Et amet cum asperiores voluptatem cumque. Blanditiis et perferendis modi. Deleniti molestiae alias nihil tempora sit quibusdam.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(263, 46, 'Asha Beier', 'Et nihil aperiam cupiditate omnis. Nihil qui ut maxime aperiam dolorum nostrum in. Tempora temporibus odit delectus dolorem. Nostrum vitae nihil vel.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(264, 73, 'Prof. Joanne Gulgowski II', 'Laudantium dignissimos ducimus placeat commodi eaque. Nemo laboriosam in consequatur tempora quia consequuntur. Voluptatibus itaque quo eligendi illo inventore. Quisquam ut consequatur consequatur. Qui qui aspernatur et assumenda veniam.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(265, 56, 'Mara Mante', 'Dolores numquam commodi aut. Exercitationem hic fuga soluta qui. Quidem et dolorem omnis dolorem quo debitis.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(266, 12, 'Eusebio Carter', 'Ut ratione et corrupti unde aut totam ea sed. Ex et et repellendus. Dolores blanditiis voluptate doloremque nemo aspernatur minus. Doloremque debitis quis facere omnis quaerat est est.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(267, 74, 'Prof. Kim Bergnaum MD', 'Quos inventore qui accusamus dolorem. Nemo excepturi eum rerum eligendi. Ut earum modi eveniet dolorem sapiente.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(268, 71, 'Dr. Cheyanne Mills II', 'Quas asperiores quaerat nihil temporibus ipsa. Nostrum et repudiandae ad et doloribus optio hic. Ullam qui laboriosam ab iure quam. Animi aut expedita quia et. Dolorem cum est alias corrupti hic pariatur.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(269, 83, 'Hope Reilly', 'Facere harum sapiente nesciunt quam eos. Ipsam dolor deserunt tempora hic debitis voluptas cupiditate. A minima voluptatum aut saepe.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(270, 95, 'Earlene Braun IV', 'Libero molestiae quod soluta deleniti dolores est ea blanditiis. Amet numquam aut ratione perspiciatis quo. Explicabo nostrum autem eum sit consectetur quisquam eum. Voluptatibus excepturi qui sequi consectetur.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(271, 30, 'William Pfannerstill V', 'Quae aut occaecati non voluptatibus. In ipsa dignissimos nobis repellendus. Ut minus vel asperiores facere quae quam deleniti. Consectetur incidunt at excepturi nulla.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(272, 54, 'Mrs. Viviane VonRueden PhD', 'Aspernatur quia ea perferendis eveniet quam hic exercitationem. Modi cumque magni dolore voluptatibus. Reiciendis sed consequatur maiores. Exercitationem culpa eligendi sit earum expedita consequuntur tempora. Aut ut in quia in fugit adipisci delectus quo.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(273, 72, 'Mack Runolfsdottir', 'Suscipit reprehenderit voluptas vel voluptas sed. Architecto molestiae et soluta eos necessitatibus in maxime non. Sequi corporis non doloremque aut qui aut nisi. Minima sunt ut rerum qui ducimus qui provident.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(274, 81, 'Mr. Reginald McCullough', 'Sit cum laborum est iste soluta possimus. Sint aperiam nihil reprehenderit. Commodi est repellendus illum provident ut maxime.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(275, 74, 'Golda Bechtelar V', 'Deserunt fuga quia dolor optio dolores hic. Dicta earum ea a dolorum. Sint ut sapiente quo veritatis.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(276, 37, 'Miss Amya Friesen Jr.', 'Quas natus minima qui facere quia tenetur. Natus atque unde consectetur dolores error quas temporibus. Quia omnis est maiores sit assumenda. Amet accusamus ut veniam dolor saepe consequatur quis.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(277, 32, 'Loyal Senger', 'Beatae inventore corrupti ab a nisi illum alias. Consequatur repellendus et esse qui suscipit officia. Sed omnis nihil eos est excepturi quasi omnis nulla. Odio ut voluptas laborum et omnis inventore eligendi illo.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(278, 36, 'Genesis Sawayn DVM', 'Praesentium sequi earum recusandae error quis. Reprehenderit ut qui quo aspernatur reprehenderit. Et quae ut suscipit repellendus et cumque. Nihil dolor quis perferendis totam velit autem.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(279, 24, 'Ms. Beaulah Hansen III', 'Minus ut velit accusantium tenetur neque accusantium dolorum tempore. Et ea qui quam voluptas illo sed sapiente non. Earum necessitatibus deleniti ratione accusantium. Veritatis neque iure assumenda sed consectetur ea atque.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(280, 1, 'Dr. Kaley Lubowitz DDS', 'Odit cumque omnis corrupti error excepturi consequuntur eum. Atque illo molestiae qui corrupti. Quas ducimus saepe ut eum rerum ut. Aut tenetur laboriosam id est.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(281, 40, 'Fernando Roberts', 'Numquam ut impedit blanditiis. Assumenda enim nobis modi odit aperiam placeat quis doloribus. Fuga distinctio odit vel error eveniet dolor. Voluptatem odio quisquam non suscipit.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(282, 60, 'Brandon Jakubowski DVM', 'Iure a quia animi quia sed quaerat. Aspernatur accusamus totam necessitatibus qui. Aut assumenda itaque aut recusandae voluptatem occaecati quaerat.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(283, 34, 'Bruce Adams', 'Dolorem ea ab odit eos. Eos ipsam magnam porro tenetur exercitationem dolores tempora et. Minima est sint aperiam repellendus necessitatibus animi aut eius. Numquam quia dignissimos nihil qui. Sed odio quo et veniam nam itaque.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(284, 32, 'Mrs. Rosalia Predovic', 'Eius molestiae harum tempore qui eveniet veniam aut. Enim nobis quasi asperiores excepturi cupiditate at ipsum asperiores. Eligendi quas quas sunt itaque veritatis.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(285, 34, 'Clarabelle Buckridge', 'Nostrum expedita non vel laudantium et. Molestiae quis dignissimos quis voluptatem eum nobis dolore. Aut cum qui consequatur natus possimus est quaerat.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(286, 78, 'Prof. Darrick Tremblay', 'Nesciunt in sit aut nobis et blanditiis deserunt necessitatibus. Fuga laborum quis est quis pariatur. Illo asperiores et occaecati laborum praesentium ut.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(287, 9, 'Hillard Reilly', 'Voluptatem odio vel illum error est. Eaque consectetur sapiente eos est reprehenderit. Provident qui magnam ut necessitatibus vel non fugiat.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(288, 93, 'Dr. Nathen Purdy DDS', 'Dolorum commodi accusantium aut et in tenetur. Voluptate blanditiis ut quas labore neque atque. Ut accusamus et temporibus aliquam. Quod et quam omnis aliquam dolorum.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(289, 8, 'Mrs. Desiree Fay', 'Repellat sed sunt sed est mollitia et odio est. Eos assumenda autem rem culpa laboriosam enim.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(290, 58, 'Mr. Jerrell Kling', 'Omnis voluptatum et molestiae a animi. Tempore vel nihil voluptates.', 2, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(291, 24, 'Ed Jones', 'Nihil qui quisquam reiciendis et autem explicabo eveniet. Similique id quia rerum modi quia. Et tempore voluptatem quidem.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(292, 39, 'Oscar Grady IV', 'Blanditiis omnis ea dignissimos. Suscipit quisquam iure rerum aut recusandae laboriosam sint. Omnis at et praesentium cum.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(293, 52, 'Prof. Raven Bednar', 'Rerum voluptatem non quaerat a. Dolorem cumque fugit tenetur et quasi aut est. Doloribus architecto aliquid aut tempore quas ipsa. Error repudiandae architecto et eaque debitis libero nulla.', 1, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(294, 73, 'Zetta Bogan', 'Et occaecati quo fugit et. Consequuntur exercitationem tempore atque enim veritatis est. Natus quo et ipsam vero labore.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(295, 18, 'Aurelie Leannon MD', 'Minus possimus maxime aut nostrum omnis et. Aut et eos sed culpa veniam a. Repellat quo modi magni aut fugit. Voluptatibus et odio voluptate et.', 5, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(296, 17, 'Mrs. Elnora Wehner Jr.', 'Aut quia et ut sint. Unde perferendis esse et et aut quisquam. Fugit dolorem hic sit eum consequatur.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(297, 97, 'Kenya Nicolas', 'Consequuntur animi amet in. Error libero perspiciatis qui amet illum praesentium consequatur. Facere aperiam perspiciatis quas quos voluptates aut distinctio. Autem consequatur nisi ad quisquam.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(298, 34, 'Justice Rice', 'Qui ducimus non cumque aut perspiciatis eveniet dolores. Magni similique quis natus molestias accusamus est. Nesciunt nihil iste minima quia repellendus.', 4, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(299, 83, 'Danny Will Jr.', 'Est voluptates provident voluptatem ipsa quia optio quidem explicabo. Omnis praesentium incidunt ad dolorem ut officia. Sunt autem aspernatur qui beatae iste tempore. Voluptatem quis aliquid impedit autem ipsa dolorum consequatur.', 0, '2018-11-02 11:47:53', '2018-11-02 11:47:53'),
(300, 19, 'Prof. Jacinto Rutherford', 'Aut perspiciatis beatae modi eaque rerum. Tempore ex ut vel molestias quidem. Velit ab maiores pariatur nobis. Et id molestiae voluptate quaerat inventore omnis aliquam ratione.', 3, '2018-11-02 11:47:53', '2018-11-02 11:47:53');

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
(1, 'Jewel Rana', 'zxdmjr@gmail.com', NULL, '$2y$10$QdYbDyPRWq/gtQcJsQYjXuezmQf7.vWu2nE/qXFre4Mo8YtlnyKFm', 's4qEAaT17DPlIRACZIaz3HmqtXYv2ZTs9oR4bfF7t3Bsox8Zv3Zg6WwFhiSA', '2018-11-03 00:46:14', '2018-11-03 00:46:14'),
(2, 'Tarin', 'tarin@gmail.com', NULL, '$2y$10$NpQJwfC13xWXtG5sE04g.uRaL8kFJ2Oj0Fvt/YS7vwMbrl5IH/M1K', 'N3TnaQfNEoTabEneL1m0b8NDYN5L3CsswTmU4qLrYxsrZMrk2d4droD9rEvD', '2018-11-03 01:37:02', '2018-11-03 01:37:02');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"eapi\",\"table\":\"products\"},{\"db\":\"eapi\",\"table\":\"oauth_clients\"},{\"db\":\"eapi\",\"table\":\"users\"},{\"db\":\"eapi\",\"table\":\"reviews\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-11-04 16:31:31', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
